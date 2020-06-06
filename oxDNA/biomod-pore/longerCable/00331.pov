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
	<23.972059, 35.207943, 35.310650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171545, 35.133217, 34.972092>,  <24.291237, 35.088383, 34.768955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171545, 35.133217, 34.972092>,  <23.972059, 35.207943, 35.310650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.171545, 35.133217, 34.972092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225698, -0.914822, 0.334906,
		-0.836866, -0.358052, -0.414071,
		0.498715, -0.186816, -0.846394,
		24.321159, 35.077171, 34.718174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.835104, 34.510727, 35.029217>,  <23.972059, 35.207943, 35.310650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.835104, 34.510727, 35.029217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.175255, 34.550373, 34.822514>,  <24.379345, 34.574162, 34.698494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.175255, 34.550373, 34.822514>,  <23.835104, 34.510727, 35.029217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.175255, 34.550373, 34.822514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228698, -0.954104, 0.193347,
		-0.473873, -0.282598, -0.834016,
		0.850377, 0.099116, -0.516754,
		24.430368, 34.580109, 34.667488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.906740, 34.109669, 34.323559>,  <23.835104, 34.510727, 35.029217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.906740, 34.109669, 34.323559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239883, 34.131248, 34.543900>,  <24.439770, 34.144196, 34.676105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239883, 34.131248, 34.543900>,  <23.906740, 34.109669, 34.323559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239883, 34.131248, 34.543900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038038, -0.998464, 0.040271,
		0.552178, -0.012587, -0.833631,
		0.832858, 0.053947, 0.550851,
		24.489740, 34.147434, 34.709156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.179783, 33.468670, 34.269512>,  <23.906740, 34.109669, 34.323559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.179783, 33.468670, 34.269512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474558, 33.614376, 34.497280>,  <24.651423, 33.701801, 34.633942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474558, 33.614376, 34.497280>,  <24.179783, 33.468670, 34.269512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474558, 33.614376, 34.497280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381412, -0.919549, 0.094634,
		0.558078, 0.147443, -0.816584,
		0.736936, 0.364268, 0.569416,
		24.695639, 33.723656, 34.668106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855221, 33.253944, 34.006184>,  <24.179783, 33.468670, 34.269512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855221, 33.253944, 34.006184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.873829, 33.300419, 34.403038>,  <24.884993, 33.328304, 34.641151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.873829, 33.300419, 34.403038>,  <24.855221, 33.253944, 34.006184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.873829, 33.300419, 34.403038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444754, -0.891745, 0.083578,
		0.894444, 0.437369, -0.093158,
		0.046519, 0.116188, 0.992137,
		24.887785, 33.335274, 34.700680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495262, 32.938362, 34.286411>,  <24.855221, 33.253944, 34.006184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495262, 32.938362, 34.286411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200527, 32.948093, 34.556664>,  <25.023685, 32.953930, 34.718815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200527, 32.948093, 34.556664>,  <25.495262, 32.938362, 34.286411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200527, 32.948093, 34.556664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064324, -0.992297, 0.105875,
		0.673004, 0.121472, 0.729596,
		-0.736836, 0.024324, 0.675633,
		24.979477, 32.955391, 34.759354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813992, 32.625980, 34.838818>,  <25.495262, 32.938362, 34.286411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813992, 32.625980, 34.838818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417240, 32.576336, 34.827660>,  <25.179190, 32.546551, 34.820965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417240, 32.576336, 34.827660>,  <25.813992, 32.625980, 34.838818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417240, 32.576336, 34.827660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126892, -0.980745, -0.148453,
		-0.008936, -0.150787, 0.988526,
		-0.991876, -0.124109, -0.027898,
		25.119677, 32.539104, 34.819290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814295, 32.090641, 35.352684>,  <25.813992, 32.625980, 34.838818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.814295, 32.090641, 35.352684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533476, 32.045734, 35.071392>,  <25.364985, 32.018791, 34.902618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533476, 32.045734, 35.071392>,  <25.814295, 32.090641, 35.352684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533476, 32.045734, 35.071392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302125, -0.941175, -0.151364,
		-0.644866, -0.318727, 0.694666,
		-0.702046, -0.112267, -0.703227,
		25.322863, 32.012054, 34.860424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463518, 31.557432, 35.537605>,  <25.814295, 32.090641, 35.352684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463518, 31.557432, 35.537605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.406395, 31.590124, 35.143059>,  <25.372122, 31.609739, 34.906330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.406395, 31.590124, 35.143059>,  <25.463518, 31.557432, 35.537605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.406395, 31.590124, 35.143059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593606, -0.790380, -0.151434,
		-0.791983, -0.607142, 0.064362,
		-0.142812, 0.081727, -0.986370,
		25.363552, 31.614643, 34.847149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107250, 30.907583, 35.356403>,  <25.463518, 31.557432, 35.537605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107250, 30.907583, 35.356403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252380, 31.066460, 35.019215>,  <25.339458, 31.161785, 34.816902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252380, 31.066460, 35.019215>,  <25.107250, 30.907583, 35.356403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.252380, 31.066460, 35.019215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501920, -0.845475, -0.182340,
		-0.785133, -0.356945, -0.506120,
		0.362827, 0.397193, -0.842968,
		25.361229, 31.185617, 34.766323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751610, 30.472435, 34.808586>,  <25.107250, 30.907583, 35.356403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751610, 30.472435, 34.808586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076012, 30.627426, 34.633255>,  <25.270653, 30.720421, 34.528057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076012, 30.627426, 34.633255>,  <24.751610, 30.472435, 34.808586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076012, 30.627426, 34.633255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364249, -0.920724, -0.139965,
		-0.457815, -0.046150, -0.887849,
		0.811004, 0.387476, -0.438332,
		25.319313, 30.743670, 34.501755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862152, 30.129313, 34.046669>,  <24.751610, 30.472435, 34.808586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862152, 30.129313, 34.046669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181683, 30.265760, 34.244869>,  <25.373400, 30.347630, 34.363789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181683, 30.265760, 34.244869>,  <24.862152, 30.129313, 34.046669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181683, 30.265760, 34.244869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484388, -0.853172, -0.193560,
		0.356718, 0.394634, -0.846768,
		0.798824, 0.341118, 0.495498,
		25.421329, 30.368095, 34.393520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547152, 29.899582, 33.742016>,  <24.862152, 30.129313, 34.046669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547152, 29.899582, 33.742016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650871, 29.979469, 34.119984>,  <25.713104, 30.027403, 34.346764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650871, 29.979469, 34.119984>,  <25.547152, 29.899582, 33.742016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650871, 29.979469, 34.119984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586748, -0.809707, 0.010129,
		0.767131, 0.551803, -0.327143,
		0.259301, 0.199720, 0.944920,
		25.728661, 30.039385, 34.403461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606937, 29.554607, 34.415462>,  <25.547152, 29.899582, 33.742016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606937, 29.554607, 34.415462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905485, 29.731039, 34.216110>,  <26.084614, 29.836897, 34.096500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905485, 29.731039, 34.216110>,  <25.606937, 29.554607, 34.415462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905485, 29.731039, 34.216110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441831, 0.888407, 0.124576,
		0.497711, 0.127220, 0.857962,
		0.746370, 0.441077, -0.498380,
		26.129396, 29.863361, 34.066597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218376, 30.105343, 34.808147>,  <25.606937, 29.554607, 34.415462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218376, 30.105343, 34.808147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127493, 30.181398, 34.426105>,  <26.072962, 30.227032, 34.196880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127493, 30.181398, 34.426105>,  <26.218376, 30.105343, 34.808147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127493, 30.181398, 34.426105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423632, 0.863799, 0.272739,
		0.876876, 0.466582, -0.115715,
		-0.227210, 0.190138, -0.955104,
		26.059330, 30.238440, 34.139576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604506, 30.736477, 34.540062>,  <26.218376, 30.105343, 34.808147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604506, 30.736477, 34.540062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262936, 30.662117, 34.345638>,  <26.057995, 30.617500, 34.228985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262936, 30.662117, 34.345638>,  <26.604506, 30.736477, 34.540062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262936, 30.662117, 34.345638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352921, 0.893283, 0.278373,
		0.382441, 0.409250, -0.828404,
		-0.853924, -0.185900, -0.486061,
		26.006758, 30.606346, 34.199821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426823, 31.330692, 34.120003>,  <26.604506, 30.736477, 34.540062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426823, 31.330692, 34.120003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084671, 31.133522, 34.183693>,  <25.879379, 31.015221, 34.221905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084671, 31.133522, 34.183693>,  <26.426823, 31.330692, 34.120003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084671, 31.133522, 34.183693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478963, 0.869690, 0.119306,
		-0.197281, 0.025791, -0.980007,
		-0.855379, -0.492924, 0.159221,
		25.828056, 30.985645, 34.231461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899517, 31.622227, 33.668945>,  <26.426823, 31.330692, 34.120003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899517, 31.622227, 33.668945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739218, 31.474180, 34.004185>,  <25.643038, 31.385351, 34.205330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739218, 31.474180, 34.004185>,  <25.899517, 31.622227, 33.668945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739218, 31.474180, 34.004185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546796, 0.830611, 0.105354,
		-0.735130, -0.416050, -0.535244,
		-0.400747, -0.370118, 0.838102,
		25.618994, 31.363144, 34.255615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236744, 31.764748, 33.602859>,  <25.899517, 31.622227, 33.668945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236744, 31.764748, 33.602859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273558, 31.705414, 33.996719>,  <25.295647, 31.669813, 34.233036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273558, 31.705414, 33.996719>,  <25.236744, 31.764748, 33.602859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273558, 31.705414, 33.996719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694565, 0.699001, 0.170224,
		-0.713519, -0.699567, -0.038695,
		0.092036, -0.148334, 0.984645,
		25.301168, 31.660913, 34.292114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591991, 31.809343, 33.856304>,  <25.236744, 31.764748, 33.602859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591991, 31.809343, 33.856304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808592, 31.849684, 34.190155>,  <24.938553, 31.873888, 34.390465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808592, 31.849684, 34.190155>,  <24.591991, 31.809343, 33.856304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.808592, 31.849684, 34.190155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592506, 0.750087, 0.293780,
		-0.596416, -0.653605, 0.465927,
		0.541502, 0.100849, 0.834629,
		24.971043, 31.879938, 34.440544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.061769, 31.973852, 34.231159>,  <24.591991, 31.809343, 33.856304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.061769, 31.973852, 34.231159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.396471, 32.098530, 34.411243>,  <24.597292, 32.173336, 34.519295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.396471, 32.098530, 34.411243>,  <24.061769, 31.973852, 34.231159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.396471, 32.098530, 34.411243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481972, 0.809464, 0.335367,
		-0.259897, -0.497609, 0.827550,
		0.836753, 0.311695, 0.450211,
		24.647497, 32.192039, 34.546307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.783085, 32.375938, 34.718380>,  <24.061769, 31.973852, 34.231159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.783085, 32.375938, 34.718380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178677, 32.429035, 34.744602>,  <24.416031, 32.460896, 34.760338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178677, 32.429035, 34.744602>,  <23.783085, 32.375938, 34.718380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178677, 32.429035, 34.744602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146361, 0.809882, 0.568040,
		0.022311, -0.571375, 0.820386,
		0.988979, 0.132746, 0.065558,
		24.475370, 32.468861, 34.764271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.936411, 32.505379, 35.486900>,  <23.783085, 32.375938, 34.718380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.936411, 32.505379, 35.486900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183422, 32.673103, 35.220718>,  <24.331629, 32.773739, 35.061008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183422, 32.673103, 35.220718>,  <23.936411, 32.505379, 35.486900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183422, 32.673103, 35.220718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074983, 0.873578, 0.480873,
		0.782965, -0.247056, 0.570903,
		0.617531, 0.419315, -0.665456,
		24.368681, 32.798897, 35.021080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430141, 33.077789, 35.650543>,  <23.936411, 32.505379, 35.486900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430141, 33.077789, 35.650543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.758467, 33.060303, 35.422737>,  <24.955462, 33.049812, 35.286053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.758467, 33.060303, 35.422737>,  <24.430141, 33.077789, 35.650543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.758467, 33.060303, 35.422737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053434, 0.986819, -0.152754,
		0.568689, 0.155814, 0.807660,
		0.820815, -0.043713, -0.569519,
		25.004711, 33.047188, 35.251881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929474, 33.532711, 35.939907>,  <24.430141, 33.077789, 35.650543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929474, 33.532711, 35.939907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975584, 33.496620, 35.544216>,  <25.003250, 33.474968, 35.306801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975584, 33.496620, 35.544216>,  <24.929474, 33.532711, 35.939907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975584, 33.496620, 35.544216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243107, 0.963019, -0.116161,
		0.963126, 0.253879, 0.089076,
		0.115273, -0.090223, -0.989228,
		25.010166, 33.469555, 35.247448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334743, 34.083725, 35.675823>,  <24.929474, 33.532711, 35.939907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334743, 34.083725, 35.675823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171082, 33.954128, 35.334621>,  <25.072886, 33.876369, 35.129898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171082, 33.954128, 35.334621>,  <25.334743, 34.083725, 35.675823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171082, 33.954128, 35.334621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156194, 0.945908, -0.284362,
		0.898998, 0.016887, -0.437628,
		-0.409153, -0.323995, -0.853007,
		25.048336, 33.856930, 35.078720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683737, 34.438896, 35.087906>,  <25.334743, 34.083725, 35.675823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683737, 34.438896, 35.087906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304291, 34.349571, 34.998230>,  <25.076622, 34.295979, 34.944424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304291, 34.349571, 34.998230>,  <25.683737, 34.438896, 35.087906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304291, 34.349571, 34.998230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158586, 0.948608, -0.273849,
		0.273822, -0.224224, -0.935278,
		-0.948616, -0.223308, -0.224191,
		25.019707, 34.282578, 34.930973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701321, 34.677132, 34.451653>,  <25.683737, 34.438896, 35.087906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701321, 34.677132, 34.451653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345018, 34.665833, 34.633091>,  <25.131237, 34.659054, 34.741955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345018, 34.665833, 34.633091>,  <25.701321, 34.677132, 34.451653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345018, 34.665833, 34.633091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126560, 0.974006, -0.187869,
		-0.436501, -0.224753, -0.871179,
		-0.890758, -0.028252, 0.453599,
		25.077791, 34.657356, 34.769169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164469, 35.284756, 34.404411>,  <25.701321, 34.677132, 34.451653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164469, 35.284756, 34.404411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553942, 35.227074, 34.475002>,  <26.787626, 35.192463, 34.517357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553942, 35.227074, 34.475002>,  <26.164469, 35.284756, 34.404411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553942, 35.227074, 34.475002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214938, -0.323572, 0.921468,
		-0.075775, -0.935150, -0.346052,
		0.973683, -0.144204, 0.176481,
		26.846046, 35.183811, 34.527946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384907, 34.635696, 34.770405>,  <26.164469, 35.284756, 34.404411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384907, 34.635696, 34.770405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676094, 34.887138, 34.879894>,  <26.850807, 35.038002, 34.945587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676094, 34.887138, 34.879894>,  <26.384907, 34.635696, 34.770405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676094, 34.887138, 34.879894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097461, -0.300304, 0.948851,
		0.678648, -0.717411, -0.157348,
		0.727968, 0.628601, 0.273720,
		26.894485, 35.075718, 34.962009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023720, 34.327343, 35.029484>,  <26.384907, 34.635696, 34.770405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023720, 34.327343, 35.029484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007402, 34.692276, 35.192451>,  <26.997612, 34.911236, 35.290230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007402, 34.692276, 35.192451>,  <27.023720, 34.327343, 35.029484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007402, 34.692276, 35.192451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100277, -0.401959, 0.910150,
		0.994123, 0.077984, -0.075088,
		-0.040794, 0.912331, 0.407417,
		26.995165, 34.965977, 35.314678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524443, 34.213451, 35.590084>,  <27.023720, 34.327343, 35.029484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524443, 34.213451, 35.590084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319799, 34.540924, 35.694408>,  <27.197014, 34.737408, 35.757004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319799, 34.540924, 35.694408>,  <27.524443, 34.213451, 35.590084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319799, 34.540924, 35.694408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081621, -0.255867, 0.963260,
		0.855334, 0.514098, 0.064082,
		-0.511607, 0.818679, 0.260814,
		27.166317, 34.786530, 35.772652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773560, 34.388199, 36.188263>,  <27.524443, 34.213451, 35.590084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773560, 34.388199, 36.188263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430737, 34.594273, 36.185844>,  <27.225042, 34.717918, 36.184395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430737, 34.594273, 36.185844>,  <27.773560, 34.388199, 36.188263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430737, 34.594273, 36.185844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100429, -0.155549, 0.982710,
		0.505339, 0.842845, 0.185054,
		-0.857057, 0.515186, -0.006042,
		27.173620, 34.748829, 36.184032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886955, 34.851318, 36.776264>,  <27.773560, 34.388199, 36.188263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886955, 34.851318, 36.776264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496012, 34.822929, 36.696537>,  <27.261446, 34.805897, 36.648701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496012, 34.822929, 36.696537>,  <27.886955, 34.851318, 36.776264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496012, 34.822929, 36.696537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187668, -0.144252, 0.971582,
		-0.097705, 0.986993, 0.127668,
		-0.977361, -0.070970, -0.199321,
		27.202803, 34.801640, 36.636742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487230, 35.205624, 37.313133>,  <27.886955, 34.851318, 36.776264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487230, 35.205624, 37.313133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260990, 34.924335, 37.140816>,  <27.125246, 34.755562, 37.037426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260990, 34.924335, 37.140816>,  <27.487230, 35.205624, 37.313133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260990, 34.924335, 37.140816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286563, -0.322234, 0.902246,
		-0.773291, 0.633759, -0.019260,
		-0.565600, -0.703217, -0.430792,
		27.091311, 34.713371, 37.011578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903490, 35.184414, 37.587086>,  <27.487230, 35.205624, 37.313133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903490, 35.184414, 37.587086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966082, 34.811157, 37.457623>,  <27.003635, 34.587204, 37.379944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966082, 34.811157, 37.457623>,  <26.903490, 35.184414, 37.587086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966082, 34.811157, 37.457623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381713, -0.359369, 0.851557,
		-0.910939, -0.009704, -0.412427,
		0.156477, -0.933145, -0.323659,
		27.013025, 34.531212, 37.360523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718946, 35.822548, 37.046570>,  <26.903490, 35.184414, 37.587086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718946, 35.822548, 37.046570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719797, 36.150898, 36.818130>,  <26.720308, 36.347908, 36.681068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719797, 36.150898, 36.818130>,  <26.718946, 35.822548, 37.046570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719797, 36.150898, 36.818130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971824, -0.132911, -0.194661,
		-0.235698, 0.555421, 0.797467,
		0.002127, 0.820879, -0.571098,
		26.720434, 36.397163, 36.646801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177637, 35.751629, 37.526951>,  <26.718946, 35.822548, 37.046570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177637, 35.751629, 37.526951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270245, 35.370613, 37.447884>,  <26.325809, 35.142006, 37.400444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270245, 35.370613, 37.447884>,  <26.177637, 35.751629, 37.526951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270245, 35.370613, 37.447884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020544, -0.207934, 0.977927,
		-0.972614, -0.222345, -0.067709,
		0.231517, -0.952537, -0.197672,
		26.339699, 35.084850, 37.388580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672453, 35.410091, 37.819138>,  <26.177637, 35.751629, 37.526951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672453, 35.410091, 37.819138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955008, 35.128342, 37.791225>,  <26.124540, 34.959290, 37.774479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955008, 35.128342, 37.791225>,  <25.672453, 35.410091, 37.819138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955008, 35.128342, 37.791225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163620, -0.258408, 0.952079,
		-0.688655, -0.661119, -0.297787,
		0.706387, -0.704377, -0.069782,
		26.166924, 34.917030, 37.770290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.373882, 34.874397, 38.159283>,  <25.672453, 35.410091, 37.819138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.373882, 34.874397, 38.159283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770531, 34.822746, 38.157970>,  <26.008520, 34.791756, 38.157181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770531, 34.822746, 38.157970>,  <25.373882, 34.874397, 38.159283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770531, 34.822746, 38.157970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039893, -0.330333, 0.943021,
		-0.122852, -0.934991, -0.332716,
		0.991623, -0.129125, -0.003283,
		26.068018, 34.784008, 38.156986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735106, 34.959057, 38.744724>,  <25.373882, 34.874397, 38.159283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735106, 34.959057, 38.744724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004278, 34.678829, 38.839691>,  <26.165783, 34.510693, 38.896671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004278, 34.678829, 38.839691>,  <25.735106, 34.959057, 38.744724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004278, 34.678829, 38.839691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240866, -0.095938, -0.965805,
		0.699389, 0.707107, 0.104183,
		0.672933, -0.700568, 0.237416,
		26.206158, 34.468658, 38.910915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453159, 35.130196, 38.485214>,  <25.735106, 34.959057, 38.744724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453159, 35.130196, 38.485214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364037, 34.740391, 38.495689>,  <26.310562, 34.506508, 38.501972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364037, 34.740391, 38.495689>,  <26.453159, 35.130196, 38.485214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364037, 34.740391, 38.495689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136443, -0.057768, -0.988962,
		0.965267, -0.216776, 0.145836,
		-0.222808, -0.974511, 0.026184,
		26.297194, 34.448036, 38.503544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067526, 34.677902, 38.168602>,  <26.453159, 35.130196, 38.485214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067526, 34.677902, 38.168602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694164, 34.543839, 38.117336>,  <26.470148, 34.463398, 38.086578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694164, 34.543839, 38.117336>,  <27.067526, 34.677902, 38.168602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694164, 34.543839, 38.117336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134743, 0.003643, -0.990874,
		0.332571, -0.942153, 0.041760,
		-0.933403, -0.335163, -0.128160,
		26.414143, 34.443291, 38.078888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129982, 34.003597, 37.771828>,  <27.067526, 34.677902, 38.168602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129982, 34.003597, 37.771828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837414, 34.275749, 37.753441>,  <26.661873, 34.439041, 37.742409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837414, 34.275749, 37.753441>,  <27.129982, 34.003597, 37.771828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837414, 34.275749, 37.753441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209852, 0.160437, -0.964480,
		-0.648836, -0.715085, -0.260126,
		-0.731419, 0.680378, -0.045965,
		26.617989, 34.479862, 37.739651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676670, 33.838730, 37.168461>,  <27.129982, 34.003597, 37.771828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676670, 33.838730, 37.168461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595127, 34.225563, 37.229389>,  <26.546202, 34.457661, 37.265945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595127, 34.225563, 37.229389>,  <26.676670, 33.838730, 37.168461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595127, 34.225563, 37.229389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140597, 0.182895, -0.973027,
		-0.968853, -0.176942, -0.173253,
		-0.203857, 0.967079, 0.152321,
		26.533970, 34.515686, 37.275085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348011, 34.077835, 36.570477>,  <26.676670, 33.838730, 37.168461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348011, 34.077835, 36.570477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498194, 34.398251, 36.756966>,  <26.588305, 34.590500, 36.868858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498194, 34.398251, 36.756966>,  <26.348011, 34.077835, 36.570477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498194, 34.398251, 36.756966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223711, 0.409824, -0.884306,
		-0.899436, 0.436318, -0.025330,
		0.375458, 0.801043, 0.466220,
		26.610830, 34.638565, 36.896832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947989, 34.693298, 36.412964>,  <26.348011, 34.077835, 36.570477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947989, 34.693298, 36.412964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337627, 34.753994, 36.480034>,  <26.571411, 34.790409, 36.520275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337627, 34.753994, 36.480034>,  <25.947989, 34.693298, 36.412964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337627, 34.753994, 36.480034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095903, 0.394289, -0.913968,
		-0.204793, 0.906373, 0.369524,
		0.974096, 0.151736, 0.167672,
		26.629856, 34.799515, 36.530334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047352, 35.388348, 36.314049>,  <25.947989, 34.693298, 36.412964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047352, 35.388348, 36.314049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385397, 35.181576, 36.259552>,  <26.588224, 35.057510, 36.226852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385397, 35.181576, 36.259552>,  <26.047352, 35.388348, 36.314049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385397, 35.181576, 36.259552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182591, 0.518654, -0.835259,
		0.502438, 0.681012, 0.532709,
		0.845113, -0.516934, -0.136245,
		26.638931, 35.026497, 36.218678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432945, 35.861855, 35.936779>,  <26.047352, 35.388348, 36.314049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432945, 35.861855, 35.936779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673452, 35.543667, 35.906559>,  <26.817757, 35.352757, 35.888428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673452, 35.543667, 35.906559>,  <26.432945, 35.861855, 35.936779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673452, 35.543667, 35.906559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319830, 0.326231, -0.889540,
		0.732246, 0.510691, 0.450567,
		0.601269, -0.795467, -0.075547,
		26.853832, 35.305027, 35.883896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147635, 36.103481, 35.710457>,  <26.432945, 35.861855, 35.936779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147635, 36.103481, 35.710457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137362, 35.721302, 35.592842>,  <27.131197, 35.491993, 35.522274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137362, 35.721302, 35.592842>,  <27.147635, 36.103481, 35.710457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137362, 35.721302, 35.592842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258491, 0.277780, -0.925214,
		0.965672, -0.099767, 0.239841,
		-0.025683, -0.955450, -0.294034,
		27.129656, 35.434666, 35.504631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797628, 36.002930, 35.294857>,  <27.147635, 36.103481, 35.710457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797628, 36.002930, 35.294857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518736, 35.731743, 35.201706>,  <27.351400, 35.569031, 35.145813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518736, 35.731743, 35.201706>,  <27.797628, 36.002930, 35.294857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518736, 35.731743, 35.201706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169026, 0.160225, -0.972501,
		0.696633, -0.717422, 0.002879,
		-0.697232, -0.677963, -0.232881,
		27.309566, 35.528355, 35.131840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766289, 36.891941, 35.190533>,  <27.797628, 36.002930, 35.294857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766289, 36.891941, 35.190533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096533, 36.779156, 35.386028>,  <28.294680, 36.711483, 35.503326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096533, 36.779156, 35.386028>,  <27.766289, 36.891941, 35.190533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096533, 36.779156, 35.386028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511956, 0.010205, -0.858951,
		0.237205, 0.959371, 0.152778,
		0.825612, -0.281963, 0.488735,
		28.344217, 36.694569, 35.532650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339878, 37.224918, 34.854458>,  <27.766289, 36.891941, 35.190533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339878, 37.224918, 34.854458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478081, 36.888000, 35.019947>,  <28.561001, 36.685848, 35.119240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478081, 36.888000, 35.019947>,  <28.339878, 37.224918, 34.854458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478081, 36.888000, 35.019947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611972, -0.131992, -0.779787,
		0.711419, 0.522607, 0.469857,
		0.345504, -0.842295, 0.413723,
		28.581732, 36.635311, 35.144062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098700, 37.216385, 34.825001>,  <28.339878, 37.224918, 34.854458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098700, 37.216385, 34.825001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959213, 36.842705, 34.855118>,  <28.875521, 36.618496, 34.873188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959213, 36.842705, 34.855118>,  <29.098700, 37.216385, 34.825001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959213, 36.842705, 34.855118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692345, -0.310917, -0.651145,
		0.631708, -0.174937, 0.755210,
		-0.348717, -0.934199, 0.075292,
		28.854597, 36.562447, 34.877705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575815, 36.721264, 35.151016>,  <29.098700, 37.216385, 34.825001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575815, 36.721264, 35.151016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347401, 36.488762, 34.919136>,  <29.210352, 36.349258, 34.780006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347401, 36.488762, 34.919136>,  <29.575815, 36.721264, 35.151016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347401, 36.488762, 34.919136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777558, -0.156481, -0.609030,
		0.263291, -0.798532, 0.541318,
		-0.571036, -0.581258, -0.579704,
		29.176090, 36.314384, 34.745224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754557, 36.002827, 35.083790>,  <29.575815, 36.721264, 35.151016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754557, 36.002827, 35.083790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595879, 36.099663, 34.729610>,  <29.500671, 36.157764, 34.517101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595879, 36.099663, 34.729610>,  <29.754557, 36.002827, 35.083790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595879, 36.099663, 34.729610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809408, -0.362755, -0.461809,
		-0.433003, -0.899889, -0.052050,
		-0.396695, 0.242094, -0.885451,
		29.476870, 36.172291, 34.463974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898998, 35.439316, 34.608604>,  <29.754557, 36.002827, 35.083790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898998, 35.439316, 34.608604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831173, 35.778835, 34.408291>,  <29.790478, 35.982548, 34.288105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831173, 35.778835, 34.408291>,  <29.898998, 35.439316, 34.608604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831173, 35.778835, 34.408291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743529, -0.223336, -0.630306,
		-0.646848, -0.479223, -0.593240,
		-0.169565, 0.848803, -0.500780,
		29.780304, 36.033478, 34.258057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937798, 35.381744, 33.800789>,  <29.898998, 35.439316, 34.608604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937798, 35.381744, 33.800789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063999, 35.742023, 33.920258>,  <30.139721, 35.958191, 33.991940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063999, 35.742023, 33.920258>,  <29.937798, 35.381744, 33.800789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063999, 35.742023, 33.920258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586990, 0.062058, -0.807212,
		-0.745586, 0.429998, -0.509120,
		0.315504, 0.900695, 0.298674,
		30.158651, 36.012234, 34.009861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832832, 35.990700, 33.353725>,  <29.937798, 35.381744, 33.800789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832832, 35.990700, 33.353725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171204, 36.002827, 33.566700>,  <30.374228, 36.010101, 33.694485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171204, 36.002827, 33.566700>,  <29.832832, 35.990700, 33.353725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171204, 36.002827, 33.566700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532767, -0.003603, -0.846254,
		-0.023736, 0.999534, -0.019198,
		0.845929, 0.030314, 0.532433,
		30.424982, 36.011921, 33.726429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249540, 36.509899, 33.048122>,  <29.832832, 35.990700, 33.353725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249540, 36.509899, 33.048122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478024, 36.216812, 33.196095>,  <30.615114, 36.040958, 33.284878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478024, 36.216812, 33.196095>,  <30.249540, 36.509899, 33.048122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478024, 36.216812, 33.196095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461583, -0.085929, -0.882926,
		0.678722, 0.675088, 0.289125,
		0.571208, -0.732716, 0.369931,
		30.649385, 35.996998, 33.307076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854773, 36.759632, 32.740849>,  <30.249540, 36.509899, 33.048122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854773, 36.759632, 32.740849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810961, 36.367168, 32.677189>,  <30.784674, 36.131691, 32.638992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810961, 36.367168, 32.677189>,  <30.854773, 36.759632, 32.740849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810961, 36.367168, 32.677189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101321, 0.148257, -0.983745,
		0.988806, -0.123874, 0.083173,
		-0.109530, -0.981160, -0.159149,
		30.778101, 36.072819, 32.629444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506525, 36.411900, 32.809799>,  <30.854773, 36.759632, 32.740849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506525, 36.411900, 32.809799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746799, 36.409149, 32.490017>,  <31.890965, 36.407497, 32.298149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746799, 36.409149, 32.490017>,  <31.506525, 36.411900, 32.809799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746799, 36.409149, 32.490017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527028, -0.748526, 0.402431,
		-0.601179, -0.663070, -0.446006,
		0.600687, -0.006875, -0.799455,
		31.927006, 36.407085, 32.250179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503727, 35.730804, 32.581520>,  <31.506525, 36.411900, 32.809799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503727, 35.730804, 32.581520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838696, 35.944794, 32.536743>,  <32.039677, 36.073189, 32.509876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838696, 35.944794, 32.536743>,  <31.503727, 35.730804, 32.581520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838696, 35.944794, 32.536743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532178, -0.751423, 0.390065,
		0.124557, -0.386223, -0.913957,
		0.837420, 0.534973, -0.111945,
		32.089920, 36.105286, 32.503159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944178, 35.275143, 32.530670>,  <31.503727, 35.730804, 32.581520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944178, 35.275143, 32.530670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218346, 35.562626, 32.577415>,  <32.382847, 35.735115, 32.605461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218346, 35.562626, 32.577415>,  <31.944178, 35.275143, 32.530670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218346, 35.562626, 32.577415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685082, -0.690896, 0.230924,
		0.246705, -0.078221, -0.965929,
		0.685419, 0.718710, 0.116860,
		32.423973, 35.778240, 32.612473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553898, 35.104847, 32.163746>,  <31.944178, 35.275143, 32.530670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553898, 35.104847, 32.163746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659866, 35.336212, 32.472355>,  <32.723446, 35.475033, 32.657520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659866, 35.336212, 32.472355>,  <32.553898, 35.104847, 32.163746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659866, 35.336212, 32.472355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666365, -0.688140, 0.287090,
		0.696975, 0.438061, -0.567740,
		0.264922, 0.578417, 0.771525,
		32.739342, 35.509739, 32.703812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267544, 34.944599, 32.291405>,  <32.553898, 35.104847, 32.163746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267544, 34.944599, 32.291405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097389, 35.070518, 32.630802>,  <32.995296, 35.146069, 32.834442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097389, 35.070518, 32.630802>,  <33.267544, 34.944599, 32.291405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097389, 35.070518, 32.630802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528343, -0.674816, 0.515243,
		0.734777, 0.667477, 0.120739,
		-0.425390, 0.314797, 0.848496,
		32.969772, 35.164959, 32.885349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952522, 35.256935, 32.414215>,  <33.267544, 34.944599, 32.291405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952522, 35.256935, 32.414215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065842, 35.637028, 32.466064>,  <34.133831, 35.865082, 32.497173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065842, 35.637028, 32.466064>,  <33.952522, 35.256935, 32.414215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065842, 35.637028, 32.466064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518437, -0.038033, -0.854270,
		-0.806826, 0.309210, -0.503410,
		0.283295, 0.950233, 0.129620,
		34.150829, 35.922096, 32.504951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931477, 35.564743, 31.717812>,  <33.952522, 35.256935, 32.414215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931477, 35.564743, 31.717812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182884, 35.785831, 31.936705>,  <34.333729, 35.918484, 32.068039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182884, 35.785831, 31.936705>,  <33.931477, 35.564743, 31.717812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182884, 35.785831, 31.936705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578361, 0.138310, -0.803971,
		-0.520059, 0.821808, -0.232742,
		0.628520, 0.552722, 0.547231,
		34.371441, 35.951649, 32.100872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921730, 36.233845, 31.539555>,  <33.931477, 35.564743, 31.717812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921730, 36.233845, 31.539555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272350, 36.091682, 31.669380>,  <34.482723, 36.006386, 31.747274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272350, 36.091682, 31.669380>,  <33.921730, 36.233845, 31.539555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272350, 36.091682, 31.669380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392117, 0.136287, -0.909764,
		0.279098, 0.924725, 0.258822,
		0.876555, -0.355402, 0.324563,
		34.535316, 35.985062, 31.766748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425030, 36.667751, 31.221844>,  <33.921730, 36.233845, 31.539555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425030, 36.667751, 31.221844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650597, 36.359238, 31.339903>,  <34.785938, 36.174129, 31.410738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650597, 36.359238, 31.339903>,  <34.425030, 36.667751, 31.221844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650597, 36.359238, 31.339903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533976, 0.067912, -0.842768,
		0.629970, 0.632857, 0.450144,
		0.563922, -0.771284, 0.295148,
		34.819775, 36.127853, 31.428448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120850, 36.924191, 31.105825>,  <34.425030, 36.667751, 31.221844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120850, 36.924191, 31.105825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147713, 36.525204, 31.115225>,  <35.163830, 36.285812, 31.120865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147713, 36.525204, 31.115225>,  <35.120850, 36.924191, 31.105825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147713, 36.525204, 31.115225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432440, 0.007874, -0.901628,
		0.899158, 0.070712, 0.431873,
		0.067157, -0.997466, 0.023498,
		35.167858, 36.225964, 31.122274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781361, 36.765110, 30.816946>,  <35.120850, 36.924191, 31.105825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781361, 36.765110, 30.816946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579853, 36.421333, 30.782143>,  <35.458950, 36.215065, 30.761261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579853, 36.421333, 30.782143>,  <35.781361, 36.765110, 30.816946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579853, 36.421333, 30.782143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166147, 0.002442, -0.986098,
		0.847709, -0.511223, 0.141564,
		-0.503770, -0.859444, -0.087008,
		35.428722, 36.163502, 30.756041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304249, 36.394402, 30.525700>,  <35.781361, 36.765110, 30.816946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304249, 36.394402, 30.525700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963100, 36.190552, 30.480276>,  <35.758411, 36.068241, 30.453022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963100, 36.190552, 30.480276>,  <36.304249, 36.394402, 30.525700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963100, 36.190552, 30.480276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237647, -0.185234, -0.953526,
		0.464905, -0.840221, 0.279091,
		-0.852870, -0.509625, -0.113560,
		35.707241, 36.037663, 30.446209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472504, 35.734180, 30.391287>,  <36.304249, 36.394402, 30.525700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472504, 35.734180, 30.391287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122063, 35.812401, 30.215015>,  <35.911797, 35.859333, 30.109253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122063, 35.812401, 30.215015>,  <36.472504, 35.734180, 30.391287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122063, 35.812401, 30.215015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426130, -0.113436, -0.897522,
		-0.225504, -0.974110, 0.016050,
		-0.876106, 0.195556, -0.440678,
		35.859230, 35.871067, 30.082811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570118, 35.590008, 29.737770>,  <36.472504, 35.734180, 30.391287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570118, 35.590008, 29.737770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225517, 35.790806, 29.707241>,  <36.018757, 35.911285, 29.688923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225517, 35.790806, 29.707241>,  <36.570118, 35.590008, 29.737770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225517, 35.790806, 29.707241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152432, 0.112308, -0.981912,
		-0.484340, -0.857550, -0.173273,
		-0.861498, 0.501992, -0.076323,
		35.967068, 35.941402, 29.684343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263153, 35.351887, 29.129335>,  <36.570118, 35.590008, 29.737770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263153, 35.351887, 29.129335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054531, 35.689564, 29.178850>,  <35.929359, 35.892170, 29.208559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054531, 35.689564, 29.178850>,  <36.263153, 35.351887, 29.129335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054531, 35.689564, 29.178850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058902, 0.180360, -0.981835,
		-0.851185, -0.504786, -0.143791,
		-0.521551, 0.844193, 0.123787,
		35.898067, 35.942822, 29.215986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798958, 35.413628, 28.544777>,  <36.263153, 35.351887, 29.129335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798958, 35.413628, 28.544777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820904, 35.784119, 28.693953>,  <35.834072, 36.006413, 28.783459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820904, 35.784119, 28.693953>,  <35.798958, 35.413628, 28.544777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820904, 35.784119, 28.693953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101362, 0.376740, -0.920757,
		-0.993335, 0.012719, 0.114556,
		0.054869, 0.926232, 0.372939,
		35.837364, 36.061989, 28.805834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350445, 35.787868, 28.131029>,  <35.798958, 35.413628, 28.544777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350445, 35.787868, 28.131029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557629, 36.086506, 28.298033>,  <35.681938, 36.265690, 28.398235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557629, 36.086506, 28.298033>,  <35.350445, 35.787868, 28.131029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557629, 36.086506, 28.298033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162705, 0.565164, -0.808775,
		-0.839787, 0.350983, 0.414208,
		0.517962, 0.746593, 0.417511,
		35.713017, 36.310482, 28.423286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912811, 36.399868, 28.034861>,  <35.350445, 35.787868, 28.131029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912811, 36.399868, 28.034861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298340, 36.498676, 28.074934>,  <35.529655, 36.557961, 28.098978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298340, 36.498676, 28.074934>,  <34.912811, 36.399868, 28.034861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298340, 36.498676, 28.074934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058907, 0.563920, -0.823726,
		-0.259973, 0.788019, 0.558067,
		0.963817, 0.247021, 0.100184,
		35.587486, 36.572784, 28.104990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940998, 37.057209, 27.872414>,  <34.912811, 36.399868, 28.034861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940998, 37.057209, 27.872414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331100, 36.988541, 27.816690>,  <35.565163, 36.947342, 27.783257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331100, 36.988541, 27.816690>,  <34.940998, 37.057209, 27.872414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331100, 36.988541, 27.816690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017809, 0.567074, -0.823474,
		0.220361, 0.805579, 0.549985,
		0.975256, -0.171667, -0.139307,
		35.623676, 36.937042, 27.774899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239880, 37.686577, 27.805214>,  <34.940998, 37.057209, 27.872414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239880, 37.686577, 27.805214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502548, 37.440765, 27.630341>,  <35.660149, 37.293278, 27.525415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502548, 37.440765, 27.630341>,  <35.239880, 37.686577, 27.805214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502548, 37.440765, 27.630341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065949, 0.624256, -0.778431,
		0.751286, 0.482343, 0.450460,
		0.656674, -0.614531, -0.437185,
		35.699551, 37.256405, 27.499186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668324, 38.117252, 27.469875>,  <35.239880, 37.686577, 27.805214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668324, 38.117252, 27.469875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741680, 37.764824, 27.295481>,  <35.785694, 37.553368, 27.190844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741680, 37.764824, 27.295481>,  <35.668324, 38.117252, 27.469875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741680, 37.764824, 27.295481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087002, 0.456314, -0.885555,
		0.979182, 0.124476, 0.160341,
		0.183396, -0.881069, -0.435984,
		35.796700, 37.500504, 27.164686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210270, 38.342724, 27.111235>,  <35.668324, 38.117252, 27.469875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210270, 38.342724, 27.111235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090710, 38.004768, 26.933773>,  <36.018974, 37.801994, 26.827297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090710, 38.004768, 26.933773>,  <36.210270, 38.342724, 27.111235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090710, 38.004768, 26.933773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204055, 0.397566, -0.894596,
		0.932212, -0.357925, 0.053570,
		-0.298901, -0.844885, -0.443652,
		36.001038, 37.751305, 26.800678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635605, 38.323792, 26.506350>,  <36.210270, 38.342724, 27.111235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635605, 38.323792, 26.506350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317989, 38.089024, 26.443066>,  <36.127419, 37.948166, 26.405096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317989, 38.089024, 26.443066>,  <36.635605, 38.323792, 26.506350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317989, 38.089024, 26.443066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103475, 0.386982, -0.916263,
		0.598993, -0.711179, -0.368010,
		-0.794041, -0.586915, -0.158210,
		36.079777, 37.912949, 26.395603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714584, 38.053532, 25.865921>,  <36.635605, 38.323792, 26.506350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714584, 38.053532, 25.865921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321827, 38.035946, 25.939619>,  <36.086170, 38.025394, 25.983839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321827, 38.035946, 25.939619>,  <36.714584, 38.053532, 25.865921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321827, 38.035946, 25.939619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185784, 0.413236, -0.891471,
		-0.036942, -0.909562, -0.413923,
		-0.981896, -0.043968, 0.184247,
		36.027260, 38.022755, 25.994894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378830, 37.675236, 25.314850>,  <36.714584, 38.053532, 25.865921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378830, 37.675236, 25.314850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075554, 37.877903, 25.479013>,  <35.893589, 37.999504, 25.577511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075554, 37.877903, 25.479013>,  <36.378830, 37.675236, 25.314850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075554, 37.877903, 25.479013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289305, 0.302670, -0.908126,
		-0.584335, -0.807267, -0.082901,
		-0.758192, 0.506666, 0.410407,
		35.848095, 38.029903, 25.602135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874218, 37.676945, 24.842804>,  <36.378830, 37.675236, 25.314850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874218, 37.676945, 24.842804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687244, 37.946888, 25.071215>,  <35.575062, 38.108852, 25.208261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687244, 37.946888, 25.071215>,  <35.874218, 37.676945, 24.842804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687244, 37.946888, 25.071215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472804, 0.354948, -0.806516,
		-0.746969, -0.646977, 0.153161,
		-0.467434, 0.674857, 0.571029,
		35.547016, 38.149345, 25.242523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225975, 37.479248, 24.808168>,  <35.874218, 37.676945, 24.842804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225975, 37.479248, 24.808168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267097, 37.871231, 24.876423>,  <35.291771, 38.106422, 24.917376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267097, 37.871231, 24.876423>,  <35.225975, 37.479248, 24.808168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267097, 37.871231, 24.876423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597636, 0.197981, -0.776939,
		-0.795150, -0.022108, 0.606010,
		0.102802, 0.979956, 0.170637,
		35.297939, 38.165218, 24.927614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720009, 37.709415, 24.398586>,  <35.225975, 37.479248, 24.808168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720009, 37.709415, 24.398586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861809, 38.075420, 24.475609>,  <34.946888, 38.295025, 24.521822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861809, 38.075420, 24.475609>,  <34.720009, 37.709415, 24.398586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861809, 38.075420, 24.475609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631233, 0.386113, -0.672653,
		-0.689835, 0.116909, 0.714465,
		0.354503, 0.915013, 0.192557,
		34.968159, 38.349926, 24.533377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159698, 38.120270, 24.625355>,  <34.720009, 37.709415, 24.398586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159698, 38.120270, 24.625355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456432, 38.339294, 24.470514>,  <34.634472, 38.470711, 24.377609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456432, 38.339294, 24.470514>,  <34.159698, 38.120270, 24.625355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456432, 38.339294, 24.470514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648844, 0.440341, -0.620565,
		-0.169342, 0.711529, 0.681946,
		0.741839, 0.547564, -0.387103,
		34.678986, 38.503563, 24.354383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815426, 38.700134, 24.566647>,  <34.159698, 38.120270, 24.625355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815426, 38.700134, 24.566647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137074, 38.720707, 24.329750>,  <34.330063, 38.733051, 24.187613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137074, 38.720707, 24.329750>,  <33.815426, 38.700134, 24.566647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137074, 38.720707, 24.329750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556173, 0.416873, -0.718949,
		0.209916, 0.907509, 0.363818,
		0.804119, 0.051427, -0.592240,
		34.378307, 38.736134, 24.152079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002880, 39.392521, 24.445560>,  <33.815426, 38.700134, 24.566647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002880, 39.392521, 24.445560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137783, 39.175087, 24.138111>,  <34.218723, 39.044628, 23.953642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137783, 39.175087, 24.138111>,  <34.002880, 39.392521, 24.445560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137783, 39.175087, 24.138111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479094, 0.603720, -0.637174,
		0.810388, 0.583131, -0.056819,
		0.337254, -0.543580, -0.768623,
		34.238960, 39.012012, 23.907524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952110, 39.874809, 23.945457>,  <34.002880, 39.392521, 24.445560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952110, 39.874809, 23.945457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022053, 39.535542, 23.745443>,  <34.064018, 39.331982, 23.625435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022053, 39.535542, 23.745443>,  <33.952110, 39.874809, 23.945457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022053, 39.535542, 23.745443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306434, 0.435758, -0.846294,
		0.935693, 0.301211, -0.183711,
		0.174860, -0.848167, -0.500037,
		34.074512, 39.281090, 23.595432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404556, 40.048832, 23.448040>,  <33.952110, 39.874809, 23.945457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404556, 40.048832, 23.448040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228065, 39.711243, 23.326038>,  <34.122169, 39.508690, 23.252836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228065, 39.711243, 23.326038>,  <34.404556, 40.048832, 23.448040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228065, 39.711243, 23.326038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095206, 0.381985, -0.919251,
		0.892329, -0.376564, -0.248895,
		-0.441231, -0.843971, -0.305005,
		34.095695, 39.458050, 23.234537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798435, 39.850845, 22.849792>,  <34.404556, 40.048832, 23.448040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798435, 39.850845, 22.849792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440388, 39.672596, 22.844353>,  <34.225559, 39.565647, 22.841089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440388, 39.672596, 22.844353>,  <34.798435, 39.850845, 22.849792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440388, 39.672596, 22.844353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207122, 0.442669, -0.872436,
		0.394792, -0.778119, -0.488540,
		-0.895120, -0.445618, -0.013596,
		34.171852, 39.538910, 22.840273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717411, 39.694935, 22.062946>,  <34.798435, 39.850845, 22.849792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717411, 39.694935, 22.062946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351246, 39.666519, 22.221422>,  <34.131546, 39.649471, 22.316507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351246, 39.666519, 22.221422>,  <34.717411, 39.694935, 22.062946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351246, 39.666519, 22.221422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307247, 0.759187, -0.573790,
		-0.260021, -0.646985, -0.716798,
		-0.915417, -0.071037, 0.396189,
		34.076622, 39.645206, 22.340279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262558, 39.639542, 21.509642>,  <34.717411, 39.694935, 22.062946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262558, 39.639542, 21.509642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035431, 39.749454, 21.820017>,  <33.899155, 39.815403, 22.006241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035431, 39.749454, 21.820017>,  <34.262558, 39.639542, 21.509642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035431, 39.749454, 21.820017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464163, 0.671602, -0.577498,
		-0.679804, -0.688076, -0.253807,
		-0.567820, 0.274777, 0.775936,
		33.865086, 39.831886, 22.052797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639107, 39.743488, 21.180447>,  <34.262558, 39.639542, 21.509642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639107, 39.743488, 21.180447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628372, 39.955013, 21.519772>,  <33.621933, 40.081928, 21.723368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628372, 39.955013, 21.519772>,  <33.639107, 39.743488, 21.180447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628372, 39.955013, 21.519772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438036, 0.756588, -0.485489,
		-0.898557, -0.384620, 0.211338,
		-0.026833, 0.528813, 0.848314,
		33.620323, 40.113659, 21.774265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961910, 39.762913, 21.244078>,  <33.639107, 39.743488, 21.180447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961910, 39.762913, 21.244078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181389, 40.050297, 21.415075>,  <33.313076, 40.222729, 21.517673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181389, 40.050297, 21.415075>,  <32.961910, 39.762913, 21.244078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181389, 40.050297, 21.415075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384365, 0.670885, -0.634174,
		-0.742429, 0.183652, 0.644260,
		0.548692, 0.718460, 0.427495,
		33.345997, 40.265835, 21.543324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554523, 40.348572, 21.035561>,  <32.961910, 39.762913, 21.244078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554523, 40.348572, 21.035561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868290, 40.530087, 21.204685>,  <33.056549, 40.638996, 21.306160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868290, 40.530087, 21.204685>,  <32.554523, 40.348572, 21.035561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868290, 40.530087, 21.204685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205779, 0.833493, -0.512782,
		-0.585101, 0.315230, 0.747186,
		0.784418, 0.453784, 0.422810,
		33.103615, 40.666222, 21.331528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341999, 41.089489, 21.265835>,  <32.554523, 40.348572, 21.035561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341999, 41.089489, 21.265835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739502, 41.131653, 21.251183>,  <32.978004, 41.156952, 21.242392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739502, 41.131653, 21.251183>,  <32.341999, 41.089489, 21.265835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739502, 41.131653, 21.251183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110572, 0.885886, -0.450532,
		-0.015039, 0.451769, 0.892008,
		0.993754, 0.105407, -0.036630,
		33.037628, 41.163277, 21.240194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429619, 41.699409, 21.399303>,  <32.341999, 41.089489, 21.265835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429619, 41.699409, 21.399303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783283, 41.623867, 21.228378>,  <32.995483, 41.578541, 21.125824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783283, 41.623867, 21.228378>,  <32.429619, 41.699409, 21.399303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783283, 41.623867, 21.228378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011967, 0.905201, -0.424816,
		0.467031, 0.380719, 0.798082,
		0.884160, -0.188852, -0.427313,
		33.048531, 41.567211, 21.100183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922379, 42.267796, 21.590223>,  <32.429619, 41.699409, 21.399303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922379, 42.267796, 21.590223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034092, 42.116810, 21.237061>,  <33.101120, 42.026218, 21.025162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034092, 42.116810, 21.237061>,  <32.922379, 42.267796, 21.590223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034092, 42.116810, 21.237061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116177, 0.899457, -0.421284,
		0.953155, 0.220230, 0.207350,
		0.279281, -0.377460, -0.882908,
		33.117878, 42.003571, 20.972189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368530, 42.780743, 21.278587>,  <32.922379, 42.267796, 21.590223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368530, 42.780743, 21.278587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233551, 42.559994, 20.973545>,  <33.152565, 42.427544, 20.790520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233551, 42.559994, 20.973545>,  <33.368530, 42.780743, 21.278587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233551, 42.559994, 20.973545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095259, 0.825984, -0.555586,
		0.936514, -0.114834, -0.331294,
		-0.337443, -0.551873, -0.762606,
		33.132317, 42.394432, 20.744762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804432, 42.984898, 20.755428>,  <33.368530, 42.780743, 21.278587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804432, 42.984898, 20.755428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490028, 42.809017, 20.581596>,  <33.301388, 42.703491, 20.477297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490028, 42.809017, 20.581596>,  <33.804432, 42.984898, 20.755428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490028, 42.809017, 20.581596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037312, 0.735416, -0.676588,
		0.617091, -0.515588, -0.594448,
		-0.786007, -0.439697, -0.434581,
		33.254227, 42.677109, 20.451221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919979, 43.103924, 20.140837>,  <33.804432, 42.984898, 20.755428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919979, 43.103924, 20.140837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542103, 42.979259, 20.099989>,  <33.315376, 42.904461, 20.075480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542103, 42.979259, 20.099989>,  <33.919979, 43.103924, 20.140837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542103, 42.979259, 20.099989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150383, 0.688351, -0.709618,
		0.291454, -0.655012, -0.697147,
		-0.944690, -0.311660, -0.102119,
		33.258698, 42.885761, 20.069353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882236, 42.963329, 19.454023>,  <33.919979, 43.103924, 20.140837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882236, 42.963329, 19.454023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505157, 43.000538, 19.582188>,  <33.278908, 43.022861, 19.659086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505157, 43.000538, 19.582188>,  <33.882236, 42.963329, 19.454023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505157, 43.000538, 19.582188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158678, 0.719785, -0.675818,
		-0.293491, -0.687936, -0.663782,
		-0.942700, 0.093019, 0.320411,
		33.222347, 43.028442, 19.678310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561432, 42.991917, 18.898401>,  <33.882236, 42.963329, 19.454023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561432, 42.991917, 18.898401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343910, 43.182365, 19.174829>,  <33.213398, 43.296635, 19.340687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343910, 43.182365, 19.174829>,  <33.561432, 42.991917, 18.898401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343910, 43.182365, 19.174829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234581, 0.704413, -0.669906,
		-0.805757, -0.526413, -0.271376,
		-0.543808, 0.476122, 0.691072,
		33.180767, 43.325203, 19.382151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912544, 43.099331, 18.588963>,  <33.561432, 42.991917, 18.898401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912544, 43.099331, 18.588963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939651, 43.371582, 18.880756>,  <32.955917, 43.534931, 19.055834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939651, 43.371582, 18.880756>,  <32.912544, 43.099331, 18.588963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939651, 43.371582, 18.880756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347391, 0.701512, -0.622254,
		-0.935268, -0.211246, 0.283988,
		0.067772, 0.680629, 0.729487,
		32.959984, 43.575771, 19.099602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389786, 43.417397, 18.440422>,  <32.912544, 43.099331, 18.588963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389786, 43.417397, 18.440422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573273, 43.679642, 18.680336>,  <32.683365, 43.836990, 18.824286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573273, 43.679642, 18.680336>,  <32.389786, 43.417397, 18.440422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573273, 43.679642, 18.680336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318628, 0.751469, -0.577729,
		-0.829490, 0.073906, 0.553611,
		0.458719, 0.655616, 0.599787,
		32.710888, 43.876328, 18.860271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876425, 43.943966, 18.642117>,  <32.389786, 43.417397, 18.440422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876425, 43.943966, 18.642117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250755, 44.080910, 18.675625>,  <32.475353, 44.163074, 18.695730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250755, 44.080910, 18.675625>,  <31.876425, 43.943966, 18.642117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250755, 44.080910, 18.675625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249350, 0.811066, -0.529147,
		-0.249104, 0.474301, 0.844385,
		0.935827, 0.342360, 0.083772,
		32.531502, 44.183617, 18.700756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152702, 43.872135, 17.954983>,  <31.876425, 43.943966, 18.642117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152702, 43.872135, 17.954983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423637, 44.092136, 18.150415>,  <32.586197, 44.224136, 18.267675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423637, 44.092136, 18.150415>,  <32.152702, 43.872135, 17.954983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423637, 44.092136, 18.150415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505805, -0.830417, 0.233599,
		0.534208, 0.088903, -0.840665,
		0.677335, 0.550003, 0.488584,
		32.626839, 44.257137, 18.296991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766788, 43.645092, 17.719173>,  <32.152702, 43.872135, 17.954983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766788, 43.645092, 17.719173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788071, 43.772633, 18.097698>,  <32.800842, 43.849155, 18.324812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788071, 43.772633, 18.097698>,  <32.766788, 43.645092, 17.719173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788071, 43.772633, 18.097698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521994, -0.816751, 0.245846,
		0.851288, 0.480887, -0.209897,
		0.053209, 0.318850, 0.946310,
		32.804035, 43.868286, 18.381592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767742, 44.380219, 17.627811>,  <32.766788, 43.645092, 17.719173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767742, 44.380219, 17.627811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769428, 44.777126, 17.677423>,  <32.770439, 45.015270, 17.707191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769428, 44.777126, 17.677423>,  <32.767742, 44.380219, 17.627811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769428, 44.777126, 17.677423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005794, -0.124006, 0.992265,
		0.999974, -0.004901, 0.005227,
		0.004215, 0.992270, 0.124032,
		32.770695, 45.074806, 17.714632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351082, 44.497536, 18.026295>,  <32.767742, 44.380219, 17.627811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351082, 44.497536, 18.026295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081264, 44.788586, 18.076164>,  <32.919373, 44.963215, 18.106087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081264, 44.788586, 18.076164>,  <33.351082, 44.497536, 18.026295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081264, 44.788586, 18.076164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206771, 0.024097, 0.978093,
		0.708684, 0.685548, -0.166707,
		-0.674547, 0.727628, 0.124674,
		32.878899, 45.006874, 18.113567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718132, 45.124287, 18.308401>,  <33.351082, 44.497536, 18.026295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718132, 45.124287, 18.308401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340897, 45.086239, 18.435863>,  <33.114555, 45.063412, 18.512341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340897, 45.086239, 18.435863>,  <33.718132, 45.124287, 18.308401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340897, 45.086239, 18.435863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316915, 0.033305, 0.947869,
		-0.100771, 0.994909, -0.001266,
		-0.943086, -0.095117, 0.318657,
		33.057972, 45.057705, 18.531460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679810, 45.634991, 18.832438>,  <33.718132, 45.124287, 18.308401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679810, 45.634991, 18.832438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432529, 45.328621, 18.903074>,  <33.284161, 45.144798, 18.945456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432529, 45.328621, 18.903074>,  <33.679810, 45.634991, 18.832438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432529, 45.328621, 18.903074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236064, 0.033376, 0.971164,
		-0.749736, 0.642058, 0.160175,
		-0.618198, -0.765929, 0.176590,
		33.247070, 45.098843, 18.956051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217693, 45.687183, 19.391802>,  <33.679810, 45.634991, 18.832438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217693, 45.687183, 19.391802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950958, 45.487907, 19.613478>,  <32.790916, 45.368340, 19.746483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950958, 45.487907, 19.613478>,  <33.217693, 45.687183, 19.391802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950958, 45.487907, 19.613478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582186, 0.115935, 0.804748,
		-0.465171, 0.859279, 0.212731,
		-0.666840, -0.498195, 0.554190,
		32.750908, 45.338448, 19.779736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373764, 45.993813, 20.000648>,  <33.217693, 45.687183, 19.391802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373764, 45.993813, 20.000648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113140, 45.696861, 20.063072>,  <32.956768, 45.518692, 20.100527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113140, 45.696861, 20.063072>,  <33.373764, 45.993813, 20.000648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113140, 45.696861, 20.063072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338250, -0.100171, 0.935709,
		-0.679014, 0.662455, 0.316375,
		-0.651557, -0.742374, 0.156058,
		32.917671, 45.474148, 20.109890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977516, 46.204292, 20.612814>,  <33.373764, 45.993813, 20.000648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977516, 46.204292, 20.612814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009548, 45.812805, 20.537233>,  <33.028767, 45.577915, 20.491884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009548, 45.812805, 20.537233>,  <32.977516, 46.204292, 20.612814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009548, 45.812805, 20.537233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455405, -0.132697, 0.880339,
		-0.886675, -0.156545, 0.435086,
		0.080078, -0.978716, -0.188951,
		33.033573, 45.519192, 20.480549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777637, 45.851986, 21.213097>,  <32.977516, 46.204292, 20.612814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777637, 45.851986, 21.213097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966534, 45.566166, 21.006636>,  <33.079872, 45.394676, 20.882759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966534, 45.566166, 21.006636>,  <32.777637, 45.851986, 21.213097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966534, 45.566166, 21.006636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325655, -0.402705, 0.855440,
		-0.819111, -0.572057, 0.042524,
		0.472236, -0.714548, -0.516153,
		33.108204, 45.351803, 20.851789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497307, 45.117516, 21.383602>,  <32.777637, 45.851986, 21.213097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497307, 45.117516, 21.383602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875965, 45.088455, 21.258009>,  <33.103161, 45.071018, 21.182653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875965, 45.088455, 21.258009>,  <32.497307, 45.117516, 21.383602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875965, 45.088455, 21.258009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233445, -0.517097, 0.823477,
		-0.222186, -0.852838, -0.472547,
		0.946645, -0.072652, -0.313982,
		33.159958, 45.066658, 21.163815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809258, 44.428322, 21.654499>,  <32.497307, 45.117516, 21.383602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809258, 44.428322, 21.654499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142567, 44.615475, 21.536686>,  <33.342552, 44.727764, 21.465998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142567, 44.615475, 21.536686>,  <32.809258, 44.428322, 21.654499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142567, 44.615475, 21.536686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527063, -0.511415, 0.678719,
		0.166928, -0.720795, -0.672748,
		0.833270, 0.467878, -0.294535,
		33.392548, 44.755836, 21.448326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338676, 43.921989, 21.452023>,  <32.809258, 44.428322, 21.654499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338676, 43.921989, 21.452023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537827, 44.252117, 21.558582>,  <33.657318, 44.450195, 21.622519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537827, 44.252117, 21.558582>,  <33.338676, 43.921989, 21.452023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537827, 44.252117, 21.558582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478518, -0.517614, 0.709293,
		0.723286, -0.225661, -0.652637,
		0.497874, 0.825320, 0.266400,
		33.687187, 44.499714, 21.638502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908264, 43.726086, 21.421335>,  <33.338676, 43.921989, 21.452023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908264, 43.726086, 21.421335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958031, 44.045883, 21.656395>,  <33.987892, 44.237762, 21.797430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958031, 44.045883, 21.656395>,  <33.908264, 43.726086, 21.421335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958031, 44.045883, 21.656395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535082, -0.552814, 0.638815,
		0.835588, 0.234961, -0.496574,
		0.124416, 0.799494, 0.587648,
		33.995354, 44.285732, 21.832689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648830, 43.686775, 21.837540>,  <33.908264, 43.726086, 21.421335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648830, 43.686775, 21.837540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425873, 43.954647, 22.033840>,  <34.292099, 44.115372, 22.151621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425873, 43.954647, 22.033840>,  <34.648830, 43.686775, 21.837540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425873, 43.954647, 22.033840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353849, -0.343100, 0.870099,
		0.751066, 0.658642, -0.045723,
		-0.557397, 0.669681, 0.490751,
		34.258656, 44.155552, 22.181065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080486, 43.889286, 22.356646>,  <34.648830, 43.686775, 21.837540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080486, 43.889286, 22.356646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730915, 44.021294, 22.499380>,  <34.521172, 44.100498, 22.585020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730915, 44.021294, 22.499380>,  <35.080486, 43.889286, 22.356646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730915, 44.021294, 22.499380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242363, -0.340490, 0.908475,
		0.421314, 0.880428, 0.217580,
		-0.873931, 0.330020, 0.356836,
		34.468735, 44.120300, 22.606430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164005, 44.062355, 23.156206>,  <35.080486, 43.889286, 22.356646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164005, 44.062355, 23.156206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767002, 44.051716, 23.108513>,  <34.528801, 44.045334, 23.079897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767002, 44.051716, 23.108513>,  <35.164005, 44.062355, 23.156206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767002, 44.051716, 23.108513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107736, -0.269546, 0.956942,
		-0.057590, 0.962620, 0.264662,
		-0.992510, -0.026596, -0.119232,
		34.469250, 44.043736, 23.072742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837429, 44.490852, 23.698414>,  <35.164005, 44.062355, 23.156206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837429, 44.490852, 23.698414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593136, 44.202251, 23.567913>,  <34.446560, 44.029091, 23.489613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593136, 44.202251, 23.567913>,  <34.837429, 44.490852, 23.698414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593136, 44.202251, 23.567913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076552, -0.356288, 0.931235,
		-0.788127, 0.593712, 0.162365,
		-0.610734, -0.721502, -0.326250,
		34.409916, 43.985802, 23.470037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256741, 44.546043, 24.075373>,  <34.837429, 44.490852, 23.698414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256741, 44.546043, 24.075373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234669, 44.167217, 23.948868>,  <34.221428, 43.939922, 23.872965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234669, 44.167217, 23.948868>,  <34.256741, 44.546043, 24.075373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234669, 44.167217, 23.948868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050568, -0.313687, 0.948179,
		-0.997195, 0.068310, -0.030583,
		-0.055176, -0.947066, -0.316262,
		34.218117, 43.883099, 23.853989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851112, 44.352970, 24.537664>,  <34.256741, 44.546043, 24.075373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851112, 44.352970, 24.537664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028000, 44.029942, 24.381577>,  <34.134132, 43.836124, 24.287924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028000, 44.029942, 24.381577>,  <33.851112, 44.352970, 24.537664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028000, 44.029942, 24.381577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006633, -0.432114, 0.901795,
		-0.896882, -0.401380, -0.185732,
		0.442220, -0.807572, -0.390218,
		34.160667, 43.787670, 24.264511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510555, 43.883148, 24.899509>,  <33.851112, 44.352970, 24.537664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510555, 43.883148, 24.899509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844616, 43.720745, 24.751089>,  <34.045052, 43.623302, 24.662037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844616, 43.720745, 24.751089>,  <33.510555, 43.883148, 24.899509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844616, 43.720745, 24.751089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132976, -0.505556, 0.852485,
		-0.533709, -0.761292, -0.368223,
		0.835148, -0.406014, -0.371053,
		34.095161, 43.598942, 24.639774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470165, 43.211857, 25.159138>,  <33.510555, 43.883148, 24.899509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470165, 43.211857, 25.159138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847813, 43.285801, 25.049984>,  <34.074402, 43.330166, 24.984491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847813, 43.285801, 25.049984>,  <33.470165, 43.211857, 25.159138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847813, 43.285801, 25.049984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327976, -0.444791, 0.833422,
		0.032689, -0.876350, -0.480565,
		0.944120, 0.184858, -0.272882,
		34.131050, 43.341259, 24.968119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813873, 42.501587, 25.126865>,  <33.470165, 43.211857, 25.159138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813873, 42.501587, 25.126865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135635, 42.738590, 25.144106>,  <34.328693, 42.880795, 25.154449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135635, 42.738590, 25.144106>,  <33.813873, 42.501587, 25.126865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135635, 42.738590, 25.144106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346747, -0.527183, 0.775786,
		0.482385, -0.609103, -0.629522,
		0.804407, 0.592513, 0.043101,
		34.376957, 42.916344, 25.157036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402309, 42.136459, 24.975811>,  <33.813873, 42.501587, 25.126865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402309, 42.136459, 24.975811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563881, 42.429737, 25.194632>,  <34.660824, 42.605705, 25.325924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563881, 42.429737, 25.194632>,  <34.402309, 42.136459, 24.975811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563881, 42.429737, 25.194632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235236, -0.661146, 0.712426,
		0.884028, -0.159083, -0.439530,
		0.403928, 0.733198, 0.547049,
		34.685059, 42.649696, 25.358746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127468, 42.093033, 25.071314>,  <34.402309, 42.136459, 24.975811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127468, 42.093033, 25.071314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994041, 42.300812, 25.385996>,  <34.913986, 42.425480, 25.574806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994041, 42.300812, 25.385996>,  <35.127468, 42.093033, 25.071314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994041, 42.300812, 25.385996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287480, -0.738707, 0.609645,
		0.897824, 0.429520, 0.097077,
		-0.333567, 0.519447, 0.786707,
		34.893970, 42.456646, 25.622007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636612, 42.009521, 25.541880>,  <35.127468, 42.093033, 25.071314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636612, 42.009521, 25.541880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315914, 42.120937, 25.753397>,  <35.123497, 42.187786, 25.880308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315914, 42.120937, 25.753397>,  <35.636612, 42.009521, 25.541880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315914, 42.120937, 25.753397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255917, -0.639554, 0.724898,
		0.540107, 0.716509, 0.441474,
		-0.801742, 0.278542, 0.528795,
		35.075390, 42.204498, 25.912035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935543, 41.902603, 26.168331>,  <35.636612, 42.009521, 25.541880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935543, 41.902603, 26.168331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547871, 41.950611, 26.254385>,  <35.315266, 41.979416, 26.306017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547871, 41.950611, 26.254385>,  <35.935543, 41.902603, 26.168331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547871, 41.950611, 26.254385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114844, -0.552481, 0.825576,
		0.217942, 0.824840, 0.521671,
		-0.969181, 0.120017, 0.215136,
		35.257114, 41.986614, 26.318926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849651, 41.999565, 26.930357>,  <35.935543, 41.902603, 26.168331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849651, 41.999565, 26.930357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485214, 41.889786, 26.807335>,  <35.266552, 41.823917, 26.733522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485214, 41.889786, 26.807335>,  <35.849651, 41.999565, 26.930357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485214, 41.889786, 26.807335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110879, -0.555454, 0.824122,
		-0.397009, 0.784953, 0.475640,
		-0.911093, -0.274445, -0.307555,
		35.211887, 41.807453, 26.715069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353493, 42.089020, 27.431170>,  <35.849651, 41.999565, 26.930357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353493, 42.089020, 27.431170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156181, 41.820366, 27.210052>,  <35.037796, 41.659172, 27.077383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156181, 41.820366, 27.210052>,  <35.353493, 42.089020, 27.431170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156181, 41.820366, 27.210052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225780, -0.514853, 0.827013,
		-0.840060, 0.532757, 0.102323,
		-0.493278, -0.671637, -0.552793,
		35.008198, 41.618874, 27.044214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613956, 41.812386, 27.825821>,  <35.353493, 42.089020, 27.431170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613956, 41.812386, 27.825821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719555, 41.538734, 27.553856>,  <34.782913, 41.374546, 27.390676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719555, 41.538734, 27.553856>,  <34.613956, 41.812386, 27.825821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719555, 41.538734, 27.553856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190677, -0.728024, 0.658501,
		-0.945489, -0.044196, -0.322640,
		0.263993, -0.684126, -0.679912,
		34.798752, 41.333496, 27.349882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032398, 41.325665, 27.851984>,  <34.613956, 41.812386, 27.825821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032398, 41.325665, 27.851984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349430, 41.133366, 27.701941>,  <34.539650, 41.017986, 27.611916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349430, 41.133366, 27.701941>,  <34.032398, 41.325665, 27.851984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349430, 41.133366, 27.701941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130096, -0.734314, 0.666226,
		-0.595731, -0.479236, -0.644544,
		0.792578, -0.480744, -0.375107,
		34.587204, 40.989143, 27.589409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808624, 40.611137, 27.808043>,  <34.032398, 41.325665, 27.851984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808624, 40.611137, 27.808043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207085, 40.578732, 27.794615>,  <34.446159, 40.559288, 27.786558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207085, 40.578732, 27.794615>,  <33.808624, 40.611137, 27.808043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207085, 40.578732, 27.794615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035645, -0.723805, 0.689083,
		-0.080127, -0.685231, -0.723904,
		0.996147, -0.081017, -0.033571,
		34.505928, 40.554428, 27.784544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892567, 39.851303, 27.704582>,  <33.808624, 40.611137, 27.808043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892567, 39.851303, 27.704582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226681, 40.005695, 27.861204>,  <34.427151, 40.098331, 27.955177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226681, 40.005695, 27.861204>,  <33.892567, 39.851303, 27.704582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226681, 40.005695, 27.861204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021035, -0.734066, 0.678752,
		0.549412, -0.558716, -0.621275,
		0.835286, 0.385983, 0.391553,
		34.477268, 40.121490, 27.978670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291916, 39.232994, 28.068323>,  <33.892567, 39.851303, 27.704582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291916, 39.232994, 28.068323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475662, 39.566246, 28.191532>,  <34.585911, 39.766197, 28.265457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475662, 39.566246, 28.191532>,  <34.291916, 39.232994, 28.068323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475662, 39.566246, 28.191532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149496, -0.414346, 0.897757,
		0.875575, -0.366354, -0.314887,
		0.459369, 0.833128, 0.308023,
		34.613472, 39.816185, 28.283939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023914, 39.093082, 28.380610>,  <34.291916, 39.232994, 28.068323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023914, 39.093082, 28.380610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893131, 39.444904, 28.518875>,  <34.814659, 39.655998, 28.601835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893131, 39.444904, 28.518875>,  <35.023914, 39.093082, 28.380610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893131, 39.444904, 28.518875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210670, -0.288728, 0.933945,
		0.921257, 0.378186, -0.090892,
		-0.326962, 0.879552, 0.345665,
		34.795044, 39.708771, 28.622574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419819, 39.106892, 28.883715>,  <35.023914, 39.093082, 28.380610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419819, 39.106892, 28.883715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145290, 39.386978, 28.962353>,  <34.980572, 39.555031, 29.009535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145290, 39.386978, 28.962353>,  <35.419819, 39.106892, 28.883715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145290, 39.386978, 28.962353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000765, -0.269614, 0.962968,
		0.727295, 0.661059, 0.184507,
		-0.686324, 0.700221, 0.196595,
		34.939392, 39.597046, 29.021332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619511, 39.465954, 29.429005>,  <35.419819, 39.106892, 28.883715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619511, 39.465954, 29.429005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226143, 39.537834, 29.438681>,  <34.990120, 39.580963, 29.444487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226143, 39.537834, 29.438681>,  <35.619511, 39.465954, 29.429005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226143, 39.537834, 29.438681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023603, -0.259138, 0.965552,
		0.179779, 0.948976, 0.259084,
		-0.983424, 0.179701, 0.024189,
		34.931114, 39.591743, 29.445938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514923, 40.017078, 29.810144>,  <35.619511, 39.465954, 29.429005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514923, 40.017078, 29.810144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192749, 39.780220, 29.820221>,  <34.999443, 39.638103, 29.826267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192749, 39.780220, 29.820221>,  <35.514923, 40.017078, 29.810144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192749, 39.780220, 29.820221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147065, -0.158499, 0.976345,
		-0.574147, 0.790089, 0.214745,
		-0.805436, -0.592147, 0.025193,
		34.951118, 39.602577, 29.827778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058136, 40.364414, 30.368744>,  <35.514923, 40.017078, 29.810144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058136, 40.364414, 30.368744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940212, 39.986790, 30.309641>,  <34.869457, 39.760216, 30.274179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940212, 39.986790, 30.309641>,  <35.058136, 40.364414, 30.368744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940212, 39.986790, 30.309641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185001, -0.208093, 0.960454,
		-0.937476, 0.255818, 0.236001,
		-0.294811, -0.944063, -0.147756,
		34.851768, 39.703571, 30.265314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687645, 40.147125, 31.101103>,  <35.058136, 40.364414, 30.368744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687645, 40.147125, 31.101103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778332, 39.811501, 30.903284>,  <34.832745, 39.610126, 30.784592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778332, 39.811501, 30.903284>,  <34.687645, 40.147125, 31.101103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778332, 39.811501, 30.903284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143364, -0.473490, 0.869054,
		-0.963353, -0.267926, 0.012945,
		0.226712, -0.839061, -0.494549,
		34.846344, 39.559784, 30.754919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307934, 39.596291, 31.326479>,  <34.687645, 40.147125, 31.101103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307934, 39.596291, 31.326479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614346, 39.372799, 31.199345>,  <34.798195, 39.238705, 31.123064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614346, 39.372799, 31.199345>,  <34.307934, 39.596291, 31.326479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614346, 39.372799, 31.199345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114174, -0.604854, 0.788109,
		-0.632582, -0.567428, -0.527129,
		0.766031, -0.558728, -0.317834,
		34.844154, 39.205181, 31.103994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247410, 38.935963, 31.660246>,  <34.307934, 39.596291, 31.326479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247410, 38.935963, 31.660246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615391, 38.864265, 31.520782>,  <34.836178, 38.821247, 31.437105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615391, 38.864265, 31.520782>,  <34.247410, 38.935963, 31.660246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615391, 38.864265, 31.520782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201383, -0.546982, 0.812561,
		-0.336354, -0.817731, -0.467101,
		0.919952, -0.179242, -0.348656,
		34.891376, 38.810493, 31.416185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440590, 38.229870, 31.830362>,  <34.247410, 38.935963, 31.660246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440590, 38.229870, 31.830362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797367, 38.399536, 31.767731>,  <35.011433, 38.501335, 31.730152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797367, 38.399536, 31.767731>,  <34.440590, 38.229870, 31.830362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797367, 38.399536, 31.767731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351750, -0.433380, 0.829731,
		0.284086, -0.795151, -0.535751,
		0.891946, 0.424165, -0.156577,
		35.064949, 38.526787, 31.720758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957535, 37.694317, 31.827909>,  <34.440590, 38.229870, 31.830362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957535, 37.694317, 31.827909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153664, 38.031914, 31.914862>,  <35.271339, 38.234474, 31.967033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153664, 38.031914, 31.914862>,  <34.957535, 37.694317, 31.827909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153664, 38.031914, 31.914862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429839, -0.451159, 0.782109,
		0.758171, -0.290045, -0.583996,
		0.490322, 0.843996, 0.217383,
		35.300758, 38.285114, 31.980076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585865, 37.518429, 31.712408>,  <34.957535, 37.694317, 31.827909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585865, 37.518429, 31.712408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578411, 37.822723, 31.971928>,  <35.573940, 38.005299, 32.127640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578411, 37.822723, 31.971928>,  <35.585865, 37.518429, 31.712408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578411, 37.822723, 31.971928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396204, -0.590168, 0.703367,
		0.917974, 0.270160, -0.290410,
		-0.018631, 0.760734, 0.648797,
		35.572823, 38.050945, 32.166565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121284, 37.369049, 32.256721>,  <35.585865, 37.518429, 31.712408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121284, 37.369049, 32.256721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880344, 37.626446, 32.445656>,  <35.735779, 37.780884, 32.559017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880344, 37.626446, 32.445656>,  <36.121284, 37.369049, 32.256721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880344, 37.626446, 32.445656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283677, -0.380533, 0.880183,
		0.746125, 0.664167, 0.046672,
		-0.602349, 0.643487, 0.472334,
		35.699638, 37.819492, 32.587357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562572, 37.808407, 32.649563>,  <36.121284, 37.369049, 32.256721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562572, 37.808407, 32.649563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191612, 37.803352, 32.799107>,  <35.969036, 37.800320, 32.888832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191612, 37.803352, 32.799107>,  <36.562572, 37.808407, 32.649563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191612, 37.803352, 32.799107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360341, -0.298483, 0.883777,
		0.100419, 0.954331, 0.281368,
		-0.927400, -0.012640, 0.373858,
		35.913391, 37.799561, 32.911263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622082, 37.860550, 33.396126>,  <36.562572, 37.808407, 32.649563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622082, 37.860550, 33.396126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234482, 37.764133, 33.374462>,  <36.001923, 37.706284, 33.361462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234482, 37.764133, 33.374462>,  <36.622082, 37.860550, 33.396126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234482, 37.764133, 33.374462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085806, -0.533948, 0.841152,
		-0.231674, 0.810431, 0.538079,
		-0.969002, -0.241044, -0.054162,
		35.943783, 37.691822, 33.358215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172642, 38.272121, 33.210182>,  <36.622082, 37.860550, 33.396126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172642, 38.272121, 33.210182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568951, 38.250999, 33.260128>,  <37.806736, 38.238327, 33.290096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568951, 38.250999, 33.260128>,  <37.172642, 38.272121, 33.210182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568951, 38.250999, 33.260128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112169, 0.836540, -0.536301,
		-0.076135, 0.545356, 0.834740,
		0.990768, -0.052801, 0.124862,
		37.866180, 38.235161, 33.297588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380276, 38.916088, 33.348946>,  <37.172642, 38.272121, 33.210182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380276, 38.916088, 33.348946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713417, 38.732712, 33.224884>,  <37.913300, 38.622688, 33.150448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713417, 38.732712, 33.224884>,  <37.380276, 38.916088, 33.348946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713417, 38.732712, 33.224884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188638, 0.761902, -0.619614,
		0.520364, 0.457537, 0.721028,
		0.832849, -0.458438, -0.310157,
		37.963272, 38.595181, 33.131836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708340, 39.464985, 33.069412>,  <37.380276, 38.916088, 33.348946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708340, 39.464985, 33.069412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895725, 39.154808, 32.900066>,  <38.008156, 38.968704, 32.798458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895725, 39.154808, 32.900066>,  <37.708340, 39.464985, 33.069412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895725, 39.154808, 32.900066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224323, 0.567893, -0.791945,
		0.854529, 0.276028, 0.439987,
		0.468464, -0.775439, -0.423362,
		38.036266, 38.922176, 32.773056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314678, 39.803852, 32.877449>,  <37.708340, 39.464985, 33.069412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314678, 39.803852, 32.877449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255154, 39.473106, 32.660507>,  <38.219440, 39.274658, 32.530342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255154, 39.473106, 32.660507>,  <38.314678, 39.803852, 32.877449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255154, 39.473106, 32.660507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153100, 0.522580, -0.838732,
		0.976943, -0.207843, 0.048830,
		-0.148807, -0.826869, -0.542351,
		38.210510, 39.225044, 32.497803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860363, 39.766659, 32.327824>,  <38.314678, 39.803852, 32.877449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860363, 39.766659, 32.327824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563789, 39.549690, 32.169807>,  <38.385845, 39.419510, 32.074997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563789, 39.549690, 32.169807>,  <38.860363, 39.766659, 32.327824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563789, 39.549690, 32.169807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025158, 0.565828, -0.824140,
		0.670558, -0.620981, -0.405875,
		-0.741430, -0.542423, -0.395043,
		38.341358, 39.386963, 32.051296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037487, 39.682667, 31.572330>,  <38.860363, 39.766659, 32.327824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037487, 39.682667, 31.572330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647644, 39.596355, 31.596251>,  <38.413738, 39.544567, 31.610601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647644, 39.596355, 31.596251>,  <39.037487, 39.682667, 31.572330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647644, 39.596355, 31.596251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133841, 0.347295, -0.928156,
		0.179511, -0.912592, -0.367357,
		-0.974609, -0.215781, 0.059799,
		38.355263, 39.531620, 31.614191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918697, 39.352711, 30.852598>,  <39.037487, 39.682667, 31.572330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918697, 39.352711, 30.852598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586174, 39.481064, 31.034128>,  <38.386658, 39.558075, 31.143047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586174, 39.481064, 31.034128>,  <38.918697, 39.352711, 30.852598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586174, 39.481064, 31.034128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274197, 0.473476, -0.837041,
		-0.483465, -0.820279, -0.305621,
		-0.831311, 0.320880, 0.453827,
		38.336781, 39.577328, 31.170277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382542, 39.161674, 30.405243>,  <38.918697, 39.352711, 30.852598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382542, 39.161674, 30.405243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221748, 39.444183, 30.638342>,  <38.125275, 39.613689, 30.778202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221748, 39.444183, 30.638342>,  <38.382542, 39.161674, 30.405243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221748, 39.444183, 30.638342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334402, 0.479236, -0.811485,
		-0.852402, -0.521072, 0.043536,
		-0.401978, 0.706270, 0.582749,
		38.101154, 39.656063, 30.813166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709026, 39.329601, 30.109781>,  <38.382542, 39.161674, 30.405243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709026, 39.329601, 30.109781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760448, 39.650257, 30.343309>,  <37.791302, 39.842651, 30.483427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760448, 39.650257, 30.343309>,  <37.709026, 39.329601, 30.109781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760448, 39.650257, 30.343309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223933, 0.596966, -0.770380,
		-0.966089, -0.031701, 0.256257,
		0.128555, 0.801640, 0.583821,
		37.799015, 39.890751, 30.518456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184273, 39.818275, 29.948565>,  <37.709026, 39.329601, 30.109781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184273, 39.818275, 29.948565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457516, 40.057468, 30.116268>,  <37.621460, 40.200985, 30.216890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457516, 40.057468, 30.116268>,  <37.184273, 39.818275, 29.948565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457516, 40.057468, 30.116268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179509, 0.693945, -0.697292,
		-0.707913, 0.401065, 0.581383,
		0.683107, 0.597986, 0.419258,
		37.662449, 40.236866, 30.242046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911812, 40.371799, 30.057446>,  <37.184273, 39.818275, 29.948565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911812, 40.371799, 30.057446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296238, 40.482204, 30.062572>,  <37.526894, 40.548447, 30.065649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296238, 40.482204, 30.062572>,  <36.911812, 40.371799, 30.057446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296238, 40.482204, 30.062572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230213, 0.825536, -0.515261,
		-0.152800, 0.492250, 0.856938,
		0.961069, 0.276009, 0.012819,
		37.584560, 40.565006, 30.066418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919910, 41.088333, 30.237137>,  <36.911812, 40.371799, 30.057446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919910, 41.088333, 30.237137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271461, 41.025684, 30.056898>,  <37.482391, 40.988094, 29.948755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271461, 41.025684, 30.056898>,  <36.919910, 41.088333, 30.237137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271461, 41.025684, 30.056898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116587, 0.845398, -0.521257,
		0.462577, 0.510656, 0.724743,
		0.878880, -0.156626, -0.450597,
		37.535126, 40.978695, 29.921719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268997, 41.732075, 30.300467>,  <36.919910, 41.088333, 30.237137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268997, 41.732075, 30.300467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461735, 41.540867, 30.006710>,  <37.577377, 41.426144, 29.830456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461735, 41.540867, 30.006710>,  <37.268997, 41.732075, 30.300467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461735, 41.540867, 30.006710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142928, 0.869749, -0.472343,
		0.864524, 0.122629, 0.487402,
		0.481840, -0.478015, -0.734392,
		37.606285, 41.397461, 29.786392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890976, 42.127537, 30.064487>,  <37.268997, 41.732075, 30.300467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890976, 42.127537, 30.064487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789490, 41.903236, 29.749226>,  <37.728600, 41.768654, 29.560068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789490, 41.903236, 29.749226>,  <37.890976, 42.127537, 30.064487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789490, 41.903236, 29.749226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124866, 0.789010, -0.601558,
		0.959186, -0.251037, -0.130163,
		-0.253713, -0.560753, -0.788154,
		37.713375, 41.735012, 29.512779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208546, 42.436241, 29.472696>,  <37.890976, 42.127537, 30.064487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208546, 42.436241, 29.472696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939072, 42.203651, 29.290255>,  <37.777386, 42.064098, 29.180790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939072, 42.203651, 29.290255>,  <38.208546, 42.436241, 29.472696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939072, 42.203651, 29.290255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068124, 0.663411, -0.745148,
		0.735872, -0.470923, -0.486543,
		-0.673685, -0.581479, -0.456104,
		37.736965, 42.029209, 29.153423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382473, 42.385071, 28.745943>,  <38.208546, 42.436241, 29.472696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382473, 42.385071, 28.745943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009392, 42.242779, 28.722225>,  <37.785542, 42.157406, 28.707994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009392, 42.242779, 28.722225>,  <38.382473, 42.385071, 28.745943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009392, 42.242779, 28.722225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180858, 0.603636, -0.776475,
		0.312004, -0.713501, -0.627352,
		-0.932708, -0.355726, -0.059294,
		37.729580, 42.136063, 28.704437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339905, 42.324001, 28.043978>,  <38.382473, 42.385071, 28.745943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339905, 42.324001, 28.043978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980274, 42.331593, 28.218929>,  <37.764496, 42.336147, 28.323900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980274, 42.331593, 28.218929>,  <38.339905, 42.324001, 28.043978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980274, 42.331593, 28.218929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352301, 0.561717, -0.748571,
		-0.259890, -0.827112, -0.498341,
		-0.899078, 0.018980, 0.437377,
		37.710552, 42.337288, 28.350142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789833, 42.074932, 27.566475>,  <38.339905, 42.324001, 28.043978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789833, 42.074932, 27.566475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578255, 42.299797, 27.820778>,  <37.451305, 42.434715, 27.973360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578255, 42.299797, 27.820778>,  <37.789833, 42.074932, 27.566475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578255, 42.299797, 27.820778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343919, 0.542868, -0.766168,
		-0.775844, -0.623912, -0.093810,
		-0.528948, 0.562164, 0.635756,
		37.419571, 42.468445, 28.011505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112457, 42.132145, 27.290161>,  <37.789833, 42.074932, 27.566475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112457, 42.132145, 27.290161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159527, 42.442165, 27.538500>,  <37.187767, 42.628178, 27.687502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159527, 42.442165, 27.538500>,  <37.112457, 42.132145, 27.290161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159527, 42.442165, 27.538500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419338, 0.605496, -0.676410,
		-0.900172, -0.180748, 0.396259,
		0.117673, 0.775051, 0.620845,
		37.194828, 42.674683, 27.724754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651596, 42.493473, 27.105829>,  <37.112457, 42.132145, 27.290161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651596, 42.493473, 27.105829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852367, 42.770573, 27.312967>,  <36.972832, 42.936832, 27.437250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852367, 42.770573, 27.312967>,  <36.651596, 42.493473, 27.105829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852367, 42.770573, 27.312967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396575, 0.716415, -0.574001,
		-0.768631, 0.082745, 0.634318,
		0.501931, 0.692750, 0.517844,
		37.002945, 42.978397, 27.468321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220234, 42.919136, 27.255301>,  <36.651596, 42.493473, 27.105829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220234, 42.919136, 27.255301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560806, 43.128357, 27.270655>,  <36.765152, 43.253891, 27.279867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560806, 43.128357, 27.270655>,  <36.220234, 42.919136, 27.255301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560806, 43.128357, 27.270655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351994, 0.624169, -0.697505,
		-0.388794, 0.580367, 0.715551,
		0.851434, 0.523055, 0.038387,
		36.816235, 43.285275, 27.282171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985065, 43.642307, 27.154808>,  <36.220234, 42.919136, 27.255301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985065, 43.642307, 27.154808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371185, 43.611408, 27.055027>,  <36.602859, 43.592869, 26.995159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371185, 43.611408, 27.055027>,  <35.985065, 43.642307, 27.154808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371185, 43.611408, 27.055027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172358, 0.529139, -0.830846,
		0.196178, 0.845011, 0.497463,
		0.965301, -0.077252, -0.249450,
		36.660774, 43.588234, 26.980192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200195, 44.285088, 26.959682>,  <35.985065, 43.642307, 27.154808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200195, 44.285088, 26.959682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444214, 44.025780, 26.777433>,  <36.590622, 43.870193, 26.668083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444214, 44.025780, 26.777433>,  <36.200195, 44.285088, 26.959682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444214, 44.025780, 26.777433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120070, 0.492745, -0.861850,
		0.783219, 0.580471, 0.222757,
		0.610041, -0.648271, -0.455625,
		36.627228, 43.831299, 26.640745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385117, 44.695705, 26.411100>,  <36.200195, 44.285088, 26.959682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385117, 44.695705, 26.411100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529316, 44.343891, 26.286875>,  <36.615837, 44.132801, 26.212339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529316, 44.343891, 26.286875>,  <36.385117, 44.695705, 26.411100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529316, 44.343891, 26.286875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081371, 0.302027, -0.949820,
		0.929202, 0.367683, 0.037313,
		0.360502, -0.879539, -0.310563,
		36.637466, 44.080029, 26.193707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988060, 44.835461, 25.977613>,  <36.385117, 44.695705, 26.411100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988060, 44.835461, 25.977613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856071, 44.470287, 25.881550>,  <36.776878, 44.251183, 25.823912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856071, 44.470287, 25.881550>,  <36.988060, 44.835461, 25.977613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856071, 44.470287, 25.881550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231044, 0.168567, -0.958230,
		0.915280, -0.371676, 0.155305,
		-0.329971, -0.912931, -0.240159,
		36.757080, 44.196407, 25.809502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432091, 44.583023, 25.456310>,  <36.988060, 44.835461, 25.977613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432091, 44.583023, 25.456310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120602, 44.334618, 25.420706>,  <36.933708, 44.185574, 25.399343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120602, 44.334618, 25.420706>,  <37.432091, 44.583023, 25.456310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120602, 44.334618, 25.420706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158210, -0.057096, -0.985753,
		0.607086, -0.781715, 0.142713,
		-0.778727, -0.621016, -0.089013,
		36.886982, 44.148312, 25.394001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642262, 44.028214, 24.981848>,  <37.432091, 44.583023, 25.456310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642262, 44.028214, 24.981848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242466, 44.035946, 24.971651>,  <37.002590, 44.040585, 24.965532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242466, 44.035946, 24.971651>,  <37.642262, 44.028214, 24.981848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242466, 44.035946, 24.971651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026236, 0.039248, -0.998885,
		-0.018314, -0.999042, -0.039735,
		-0.999488, 0.019336, -0.025492,
		36.942619, 44.041744, 24.964003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391689, 43.479553, 24.527693>,  <37.642262, 44.028214, 24.981848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391689, 43.479553, 24.527693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102642, 43.755741, 24.540792>,  <36.929214, 43.921455, 24.548653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102642, 43.755741, 24.540792>,  <37.391689, 43.479553, 24.527693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102642, 43.755741, 24.540792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000406, 0.047803, -0.998857,
		-0.691249, -0.721777, -0.034823,
		-0.722617, 0.690472, 0.032751,
		36.885857, 43.962883, 24.550617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835743, 43.252167, 23.985516>,  <37.391689, 43.479553, 24.527693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835743, 43.252167, 23.985516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758949, 43.640682, 24.041712>,  <36.712875, 43.873791, 24.075430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758949, 43.640682, 24.041712>,  <36.835743, 43.252167, 23.985516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758949, 43.640682, 24.041712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004384, 0.142302, -0.989814,
		-0.981389, -0.190643, -0.023062,
		-0.191982, 0.971291, 0.140489,
		36.701355, 43.932068, 24.083858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280502, 43.432743, 23.497646>,  <36.835743, 43.252167, 23.985516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280502, 43.432743, 23.497646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426785, 43.791233, 23.598078>,  <36.514553, 44.006329, 23.658337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426785, 43.791233, 23.598078>,  <36.280502, 43.432743, 23.497646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426785, 43.791233, 23.598078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206311, 0.341113, -0.917103,
		-0.907576, 0.283590, 0.309648,
		0.365706, 0.896224, 0.251079,
		36.536495, 44.060101, 23.673401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875526, 43.958775, 23.261929>,  <36.280502, 43.432743, 23.497646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875526, 43.958775, 23.261929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215725, 44.163712, 23.309542>,  <36.419842, 44.286674, 23.338110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215725, 44.163712, 23.309542>,  <35.875526, 43.958775, 23.261929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215725, 44.163712, 23.309542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107163, 0.390337, -0.914414,
		-0.514956, 0.764946, 0.386882,
		0.850492, 0.512342, 0.119033,
		36.470871, 44.317413, 23.345251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702305, 44.624470, 23.078075>,  <35.875526, 43.958775, 23.261929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702305, 44.624470, 23.078075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099957, 44.607254, 23.038380>,  <36.338547, 44.596924, 23.014563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099957, 44.607254, 23.038380>,  <35.702305, 44.624470, 23.078075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099957, 44.607254, 23.038380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053511, 0.601621, -0.796987,
		0.094008, 0.797621, 0.595788,
		0.994132, -0.043042, -0.099239,
		36.398197, 44.594341, 23.008608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835541, 45.250858, 22.751646>,  <35.702305, 44.624470, 23.078075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835541, 45.250858, 22.751646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179905, 45.062195, 22.675360>,  <36.386524, 44.948997, 22.629587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179905, 45.062195, 22.675360>,  <35.835541, 45.250858, 22.751646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179905, 45.062195, 22.675360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065478, 0.474473, -0.877832,
		0.504526, 0.743246, 0.439362,
		0.860910, -0.471657, -0.190718,
		36.438179, 44.920696, 22.618145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402275, 45.731045, 22.653950>,  <35.835541, 45.250858, 22.751646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402275, 45.731045, 22.653950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480892, 45.394650, 22.452312>,  <36.528061, 45.192814, 22.331329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480892, 45.394650, 22.452312>,  <36.402275, 45.731045, 22.653950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480892, 45.394650, 22.452312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032083, 0.519362, -0.853952,
		0.979971, 0.151664, 0.129058,
		0.196541, -0.840988, -0.504094,
		36.539856, 45.142353, 22.301085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710018, 45.963562, 22.106506>,  <36.402275, 45.731045, 22.653950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710018, 45.963562, 22.106506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650890, 45.587589, 21.983423>,  <36.615414, 45.362007, 21.909573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650890, 45.587589, 21.983423>,  <36.710018, 45.963562, 22.106506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650890, 45.587589, 21.983423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038618, 0.316375, -0.947848,
		0.988260, -0.128228, -0.083065,
		-0.147821, -0.939928, -0.307709,
		36.606544, 45.305611, 21.891109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057224, 45.986446, 21.453884>,  <36.710018, 45.963562, 22.106506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057224, 45.986446, 21.453884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805866, 45.677109, 21.420290>,  <36.655052, 45.491505, 21.400133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805866, 45.677109, 21.420290>,  <37.057224, 45.986446, 21.453884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805866, 45.677109, 21.420290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035454, 0.079381, -0.996214,
		0.777085, -0.628995, -0.022464,
		-0.628396, -0.773347, -0.083986,
		36.617348, 45.445107, 21.395094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322975, 45.532867, 20.935423>,  <37.057224, 45.986446, 21.453884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322975, 45.532867, 20.935423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935646, 45.434258, 20.951294>,  <36.703247, 45.375092, 20.960817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935646, 45.434258, 20.951294>,  <37.322975, 45.532867, 20.935423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935646, 45.434258, 20.951294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094917, 0.216432, -0.971673,
		0.230976, -0.944654, -0.232977,
		-0.968318, -0.246547, 0.039673,
		36.645149, 45.360298, 20.963198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174831, 44.898521, 20.582582>,  <37.322975, 45.532867, 20.935423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174831, 44.898521, 20.582582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865097, 45.151428, 20.592659>,  <36.679256, 45.303173, 20.598705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865097, 45.151428, 20.592659>,  <37.174831, 44.898521, 20.582582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865097, 45.151428, 20.592659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114570, 0.179241, -0.977111,
		-0.622313, -0.753729, -0.211233,
		-0.774339, 0.632270, 0.025189,
		36.632797, 45.341110, 20.600216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597141, 44.706558, 19.940178>,  <37.174831, 44.898521, 20.582582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597141, 44.706558, 19.940178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930931, 44.545261, 19.789953>,  <38.131207, 44.448483, 19.699818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930931, 44.545261, 19.789953>,  <37.597141, 44.706558, 19.940178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930931, 44.545261, 19.789953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352866, -0.132445, 0.926252,
		-0.423241, -0.905460, 0.031767,
		0.834477, -0.403238, -0.375562,
		38.181274, 44.424290, 19.677284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769516, 44.112286, 20.394922>,  <37.597141, 44.706558, 19.940178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769516, 44.112286, 20.394922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111942, 44.159100, 20.193546>,  <38.317398, 44.187187, 20.072721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111942, 44.159100, 20.193546>,  <37.769516, 44.112286, 20.394922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111942, 44.159100, 20.193546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515261, -0.269903, 0.813424,
		-0.040679, -0.955748, -0.291360,
		0.856067, 0.117037, -0.503439,
		38.368763, 44.194210, 20.042515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085693, 43.486530, 20.343180>,  <37.769516, 44.112286, 20.394922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085693, 43.486530, 20.343180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374908, 43.756863, 20.285946>,  <38.548439, 43.919060, 20.251606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374908, 43.756863, 20.285946>,  <38.085693, 43.486530, 20.343180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374908, 43.756863, 20.285946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393376, -0.232534, 0.889485,
		0.567865, -0.699418, -0.433984,
		0.723038, 0.675827, -0.143086,
		38.591820, 43.959610, 20.243019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682529, 43.159809, 20.553404>,  <38.085693, 43.486530, 20.343180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682529, 43.159809, 20.553404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785030, 43.546165, 20.568356>,  <38.846531, 43.777977, 20.577328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785030, 43.546165, 20.568356>,  <38.682529, 43.159809, 20.553404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785030, 43.546165, 20.568356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412729, -0.144304, 0.899350,
		0.874065, -0.215032, -0.435628,
		0.256253, 0.965887, 0.037381,
		38.861908, 43.835930, 20.579571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398109, 43.156422, 20.664970>,  <38.682529, 43.159809, 20.553404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398109, 43.156422, 20.664970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241970, 43.501945, 20.792381>,  <39.148285, 43.709259, 20.868828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241970, 43.501945, 20.792381>,  <39.398109, 43.156422, 20.664970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241970, 43.501945, 20.792381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330528, -0.191427, 0.924179,
		0.859290, 0.466036, -0.210789,
		-0.390350, 0.863809, 0.318529,
		39.124866, 43.761089, 20.887939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864273, 43.438019, 21.152445>,  <39.398109, 43.156422, 20.664970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864273, 43.438019, 21.152445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531075, 43.646652, 21.226269>,  <39.331154, 43.771832, 21.270563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531075, 43.646652, 21.226269>,  <39.864273, 43.438019, 21.152445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531075, 43.646652, 21.226269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277306, 0.104938, 0.955034,
		0.478763, 0.846722, -0.232052,
		-0.832999, 0.521584, 0.184561,
		39.281174, 43.803127, 21.281637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055042, 44.020779, 21.594313>,  <39.864273, 43.438019, 21.152445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055042, 44.020779, 21.594313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666473, 43.960159, 21.667385>,  <39.433331, 43.923786, 21.711227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666473, 43.960159, 21.667385>,  <40.055042, 44.020779, 21.594313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666473, 43.960159, 21.667385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197004, -0.085503, 0.976667,
		-0.132391, 0.984745, 0.112915,
		-0.971422, -0.151547, 0.182679,
		39.375046, 43.914696, 21.722189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942921, 44.257702, 22.218206>,  <40.055042, 44.020779, 21.594313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942921, 44.257702, 22.218206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618359, 44.025227, 22.193413>,  <39.423622, 43.885742, 22.178535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618359, 44.025227, 22.193413>,  <39.942921, 44.257702, 22.218206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618359, 44.025227, 22.193413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077993, -0.212764, 0.973986,
		-0.579261, 0.785460, 0.217966,
		-0.811403, -0.581191, -0.061986,
		39.374939, 43.850868, 22.174816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469128, 44.544579, 22.742565>,  <39.942921, 44.257702, 22.218206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469128, 44.544579, 22.742565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365868, 44.168831, 22.652275>,  <39.303913, 43.943382, 22.598101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365868, 44.168831, 22.652275>,  <39.469128, 44.544579, 22.742565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365868, 44.168831, 22.652275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125810, -0.198967, 0.971897,
		-0.957878, 0.279295, -0.066818,
		-0.258151, -0.939365, -0.225724,
		39.288422, 43.887020, 22.584558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964222, 44.404629, 23.331022>,  <39.469128, 44.544579, 22.742565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964222, 44.404629, 23.331022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051041, 44.055473, 23.156225>,  <39.103130, 43.845982, 23.051348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051041, 44.055473, 23.156225>,  <38.964222, 44.404629, 23.331022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051041, 44.055473, 23.156225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089452, -0.427996, 0.899343,
		-0.972054, -0.234290, -0.014815,
		0.217048, -0.872884, -0.436993,
		39.116154, 43.793610, 23.025127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517895, 43.907532, 23.604397>,  <38.964222, 44.404629, 23.331022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517895, 43.907532, 23.604397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845905, 43.716003, 23.478998>,  <39.042713, 43.601086, 23.403759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845905, 43.716003, 23.478998>,  <38.517895, 43.907532, 23.604397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845905, 43.716003, 23.478998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049138, -0.486839, 0.872109,
		-0.570208, -0.730559, -0.375694,
		0.820029, -0.478822, -0.313498,
		39.091915, 43.572357, 23.384949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436100, 43.154186, 23.762445>,  <38.517895, 43.907532, 23.604397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436100, 43.154186, 23.762445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827820, 43.230373, 23.735050>,  <39.062851, 43.276085, 23.718613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827820, 43.230373, 23.735050>,  <38.436100, 43.154186, 23.762445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827820, 43.230373, 23.735050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155974, -0.494477, 0.855082,
		0.129002, -0.848064, -0.513950,
		0.979301, 0.190470, -0.068488,
		39.121609, 43.287514, 23.714504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806206, 42.535351, 23.662306>,  <38.436100, 43.154186, 23.762445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806206, 42.535351, 23.662306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018822, 42.822098, 23.842777>,  <39.146393, 42.994144, 23.951061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018822, 42.822098, 23.842777>,  <38.806206, 42.535351, 23.662306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018822, 42.822098, 23.842777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134952, -0.597531, 0.790408,
		0.836211, -0.359249, -0.414356,
		0.531544, 0.716867, 0.451181,
		39.178284, 43.037159, 23.978132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585438, 42.287373, 23.900436>,  <38.806206, 42.535351, 23.662306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585438, 42.287373, 23.900436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470730, 42.595364, 24.128433>,  <39.401905, 42.780159, 24.265232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470730, 42.595364, 24.128433>,  <39.585438, 42.287373, 23.900436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470730, 42.595364, 24.128433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317285, -0.485066, 0.814887,
		0.903933, 0.414534, -0.105202,
		-0.286769, 0.769982, 0.569992,
		39.384701, 42.826359, 24.299431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199036, 42.367847, 24.230907>,  <39.585438, 42.287373, 23.900436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199036, 42.367847, 24.230907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904171, 42.540813, 24.438604>,  <39.727253, 42.644592, 24.563223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904171, 42.540813, 24.438604>,  <40.199036, 42.367847, 24.230907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904171, 42.540813, 24.438604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288092, -0.493972, 0.820363,
		0.611226, 0.754329, 0.239563,
		-0.737161, 0.432411, 0.519244,
		39.683022, 42.670536, 24.594378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563484, 42.595985, 24.848989>,  <40.199036, 42.367847, 24.230907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563484, 42.595985, 24.848989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180702, 42.615261, 24.963478>,  <39.951035, 42.626827, 25.032171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180702, 42.615261, 24.963478>,  <40.563484, 42.595985, 24.848989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180702, 42.615261, 24.963478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237755, -0.435489, 0.868229,
		0.166489, 0.898903, 0.405283,
		-0.956950, 0.048192, 0.286223,
		39.893616, 42.629719, 25.049345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525879, 42.953049, 25.520695>,  <40.563484, 42.595985, 24.848989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525879, 42.953049, 25.520695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181419, 42.750027, 25.509235>,  <39.974743, 42.628216, 25.502359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181419, 42.750027, 25.509235>,  <40.525879, 42.953049, 25.520695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181419, 42.750027, 25.509235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159591, -0.323416, 0.932702,
		-0.482659, 0.798620, 0.359509,
		-0.861145, -0.507551, -0.028647,
		39.923077, 42.597763, 25.500641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297371, 42.914833, 26.154335>,  <40.525879, 42.953049, 25.520695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297371, 42.914833, 26.154335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052654, 42.632214, 26.012074>,  <39.905823, 42.462643, 25.926716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052654, 42.632214, 26.012074>,  <40.297371, 42.914833, 26.154335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052654, 42.632214, 26.012074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147352, -0.543544, 0.826346,
		-0.777171, 0.453147, 0.436649,
		-0.611794, -0.706553, -0.355655,
		39.869118, 42.420246, 25.905376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689724, 42.894360, 26.602795>,  <40.297371, 42.914833, 26.154335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689724, 42.894360, 26.602795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747055, 42.548492, 26.410208>,  <39.781456, 42.340973, 26.294655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747055, 42.548492, 26.410208>,  <39.689724, 42.894360, 26.602795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747055, 42.548492, 26.410208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133717, -0.465111, 0.875095,
		-0.980600, -0.189808, 0.048956,
		0.143330, -0.864665, -0.481468,
		39.790054, 42.289093, 26.265768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153488, 42.399101, 26.827221>,  <39.689724, 42.894360, 26.602795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153488, 42.399101, 26.827221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465218, 42.179966, 26.705551>,  <39.652256, 42.048485, 26.632549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465218, 42.179966, 26.705551>,  <39.153488, 42.399101, 26.827221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465218, 42.179966, 26.705551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039195, -0.527089, 0.848905,
		-0.625396, -0.649649, -0.432245,
		0.779322, -0.547844, -0.304176,
		39.699017, 42.015614, 26.614298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959679, 41.722874, 26.806356>,  <39.153488, 42.399101, 26.827221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959679, 41.722874, 26.806356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352371, 41.650269, 26.783512>,  <39.587986, 41.606705, 26.769806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352371, 41.650269, 26.783512>,  <38.959679, 41.722874, 26.806356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352371, 41.650269, 26.783512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092328, -0.716810, 0.691129,
		-0.166387, -0.673229, -0.720471,
		0.981729, -0.181514, -0.057110,
		39.646889, 41.595814, 26.766378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045288, 41.040398, 26.809900>,  <38.959679, 41.722874, 26.806356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045288, 41.040398, 26.809900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411251, 41.150677, 26.927841>,  <39.630829, 41.216843, 26.998606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411251, 41.150677, 26.927841>,  <39.045288, 41.040398, 26.809900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411251, 41.150677, 26.927841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033890, -0.675396, 0.736677,
		0.402240, -0.683983, -0.608581,
		0.914907, 0.275696, 0.294852,
		39.685722, 41.233387, 27.016296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387459, 40.528900, 27.012709>,  <39.045288, 41.040398, 26.809900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387459, 40.528900, 27.012709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601978, 40.799557, 27.214518>,  <39.730690, 40.961948, 27.335602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601978, 40.799557, 27.214518>,  <39.387459, 40.528900, 27.012709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601978, 40.799557, 27.214518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134145, -0.658490, 0.740538,
		0.833298, -0.329473, -0.443917,
		0.536303, 0.676637, 0.504521,
		39.762871, 41.002548, 27.365873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811089, 40.112576, 27.352386>,  <39.387459, 40.528900, 27.012709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811089, 40.112576, 27.352386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818367, 40.466335, 27.538939>,  <39.822735, 40.678589, 27.650869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818367, 40.466335, 27.538939>,  <39.811089, 40.112576, 27.352386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818367, 40.466335, 27.538939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168782, -0.462479, 0.870417,
		0.985485, 0.062881, -0.157685,
		0.018193, 0.884397, 0.466380,
		39.823826, 40.731655, 27.678852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439590, 40.084751, 27.777981>,  <39.811089, 40.112576, 27.352386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439590, 40.084751, 27.777981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213470, 40.377338, 27.930502>,  <40.077797, 40.552891, 28.022015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213470, 40.377338, 27.930502>,  <40.439590, 40.084751, 27.777981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213470, 40.377338, 27.930502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316319, -0.234687, 0.919165,
		0.761824, 0.640219, -0.098707,
		-0.565302, 0.731465, 0.381304,
		40.043880, 40.596779, 28.044893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894398, 40.463692, 28.366821>,  <40.439590, 40.084751, 27.777981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894398, 40.463692, 28.366821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507961, 40.528294, 28.447395>,  <40.276100, 40.567055, 28.495739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507961, 40.528294, 28.447395>,  <40.894398, 40.463692, 28.366821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507961, 40.528294, 28.447395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177049, -0.153448, 0.972166,
		0.187917, 0.974870, 0.119652,
		-0.966096, 0.161503, 0.201435,
		40.218132, 40.576744, 28.507826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923508, 41.034569, 28.907576>,  <40.894398, 40.463692, 28.366821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923508, 41.034569, 28.907576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605114, 40.792889, 28.892904>,  <40.414078, 40.647881, 28.884102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605114, 40.792889, 28.892904>,  <40.923508, 41.034569, 28.907576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605114, 40.792889, 28.892904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188249, -0.304685, 0.933665,
		-0.575296, 0.736281, 0.356265,
		-0.795988, -0.604200, -0.036680,
		40.366318, 40.611629, 28.881901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632160, 41.039982, 29.607634>,  <40.923508, 41.034569, 28.907576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632160, 41.039982, 29.607634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448917, 40.720894, 29.450777>,  <40.338970, 40.529442, 29.356663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448917, 40.720894, 29.450777>,  <40.632160, 41.039982, 29.607634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448917, 40.720894, 29.450777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134558, -0.498307, 0.856495,
		-0.878651, 0.339604, 0.335620,
		-0.458111, -0.797721, -0.392142,
		40.311485, 40.481579, 29.333134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257584, 40.774765, 30.204123>,  <40.632160, 41.039982, 29.607634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257584, 40.774765, 30.204123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278080, 40.476116, 29.938816>,  <40.290379, 40.296925, 29.779633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278080, 40.476116, 29.938816>,  <40.257584, 40.774765, 30.204123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278080, 40.476116, 29.938816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114104, -0.655414, 0.746601,
		-0.992147, -0.113936, 0.051611,
		0.051239, -0.746627, -0.663267,
		40.293453, 40.252129, 29.739836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004196, 40.143826, 30.561636>,  <40.257584, 40.774765, 30.204123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004196, 40.143826, 30.561636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164898, 39.991314, 30.228598>,  <40.261318, 39.899807, 30.028774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164898, 39.991314, 30.228598>,  <40.004196, 40.143826, 30.561636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164898, 39.991314, 30.228598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178280, -0.859238, 0.479505,
		-0.898227, -0.341078, -0.277226,
		0.401753, -0.381281, -0.832598,
		40.285423, 39.876930, 29.978819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757763, 39.555519, 30.481316>,  <40.004196, 40.143826, 30.561636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757763, 39.555519, 30.481316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092430, 39.523457, 30.264591>,  <40.293232, 39.504219, 30.134556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092430, 39.523457, 30.264591>,  <39.757763, 39.555519, 30.481316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092430, 39.523457, 30.264591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210532, -0.866167, 0.453245,
		-0.505631, -0.493285, -0.707819,
		0.836668, -0.080156, -0.541813,
		40.343430, 39.499409, 30.102047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759907, 38.871475, 30.193102>,  <39.757763, 39.555519, 30.481316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759907, 38.871475, 30.193102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139111, 38.998379, 30.183071>,  <40.366631, 39.074520, 30.177052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139111, 38.998379, 30.183071>,  <39.759907, 38.871475, 30.193102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139111, 38.998379, 30.183071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294777, -0.845653, 0.444947,
		0.119957, -0.429206, -0.895205,
		0.948007, 0.317261, -0.025078,
		40.423512, 39.093555, 30.175549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092136, 38.224571, 29.927073>,  <39.759907, 38.871475, 30.193102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092136, 38.224571, 29.927073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335491, 38.492012, 30.098108>,  <40.481503, 38.652477, 30.200729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335491, 38.492012, 30.098108>,  <40.092136, 38.224571, 29.927073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335491, 38.492012, 30.098108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456866, -0.735592, 0.500178,
		0.648953, -0.108950, -0.752988,
		0.608386, 0.668607, 0.427588,
		40.518005, 38.692593, 30.226385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582123, 37.701199, 30.145643>,  <40.092136, 38.224571, 29.927073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582123, 37.701199, 30.145643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723248, 38.013237, 30.352318>,  <40.807922, 38.200462, 30.476322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723248, 38.013237, 30.352318>,  <40.582123, 37.701199, 30.145643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723248, 38.013237, 30.352318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620140, -0.608451, 0.495191,
		0.700677, 0.145709, -0.698441,
		0.352814, 0.780101, 0.516687,
		40.829090, 38.247269, 30.507324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348293, 37.878799, 29.952320>,  <40.582123, 37.701199, 30.145643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348293, 37.878799, 29.952320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216396, 37.979164, 30.316366>,  <41.137260, 38.039383, 30.534794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216396, 37.979164, 30.316366>,  <41.348293, 37.878799, 29.952320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216396, 37.979164, 30.316366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710992, -0.568229, 0.414253,
		0.621098, 0.783682, 0.008969,
		-0.329739, 0.250915, 0.910117,
		41.117474, 38.054440, 30.589401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902225, 37.958416, 30.466116>,  <41.348293, 37.878799, 29.952320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902225, 37.958416, 30.466116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594837, 37.892467, 30.713427>,  <41.410404, 37.852898, 30.861813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594837, 37.892467, 30.713427>,  <41.902225, 37.958416, 30.466116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594837, 37.892467, 30.713427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612897, -0.467293, 0.637177,
		0.183862, 0.868593, 0.460153,
		-0.768474, -0.164874, 0.618276,
		41.364296, 37.843006, 30.898909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253006, 37.807831, 31.090519>,  <41.902225, 37.958416, 30.466116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253006, 37.807831, 31.090519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892311, 37.704918, 31.229467>,  <41.675892, 37.643169, 31.312838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892311, 37.704918, 31.229467>,  <42.253006, 37.807831, 31.090519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892311, 37.704918, 31.229467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422279, -0.696119, 0.580602,
		0.092433, 0.670241, 0.736365,
		-0.901741, -0.257284, 0.347373,
		41.621788, 37.627731, 31.333679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331997, 37.806324, 31.779402>,  <42.253006, 37.807831, 31.090519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331997, 37.806324, 31.779402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008934, 37.579853, 31.713526>,  <41.815094, 37.443970, 31.674000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008934, 37.579853, 31.713526>,  <42.331997, 37.806324, 31.779402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008934, 37.579853, 31.713526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330610, -0.666099, 0.668588,
		-0.488241, 0.485544, 0.725167,
		-0.807662, -0.566180, -0.164691,
		41.766636, 37.410000, 31.664118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979073, 37.546135, 32.432262>,  <42.331997, 37.806324, 31.779402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979073, 37.546135, 32.432262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895306, 37.292034, 32.134914>,  <41.845047, 37.139572, 31.956507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895306, 37.292034, 32.134914>,  <41.979073, 37.546135, 32.432262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895306, 37.292034, 32.134914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346722, -0.759069, 0.550997,
		-0.914291, -0.142353, 0.379219,
		-0.209417, -0.635256, -0.743367,
		41.832481, 37.101456, 31.911903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456669, 36.984493, 32.592281>,  <41.979073, 37.546135, 32.432262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456669, 36.984493, 32.592281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734238, 36.861240, 32.331966>,  <41.900780, 36.787289, 32.175777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734238, 36.861240, 32.331966>,  <41.456669, 36.984493, 32.592281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734238, 36.861240, 32.331966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163881, -0.812504, 0.559447,
		-0.701153, -0.494864, -0.513317,
		0.693922, -0.308134, -0.650788,
		41.942413, 36.768799, 32.136730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419376, 36.220139, 32.770031>,  <41.456669, 36.984493, 32.592281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419376, 36.220139, 32.770031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808746, 36.308285, 32.794975>,  <42.042366, 36.361172, 32.809940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808746, 36.308285, 32.794975>,  <41.419376, 36.220139, 32.770031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808746, 36.308285, 32.794975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052549, -0.050107, 0.997360,
		0.222908, -0.974130, -0.037195,
		0.973422, 0.220365, 0.062359,
		42.100773, 36.374393, 32.813683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786201, 35.623962, 33.048828>,  <41.419376, 36.220139, 32.770031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786201, 35.623962, 33.048828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027710, 35.935383, 33.117325>,  <42.172615, 36.122234, 33.158424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027710, 35.935383, 33.117325>,  <41.786201, 35.623962, 33.048828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027710, 35.935383, 33.117325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175220, -0.339178, 0.924260,
		0.777664, -0.528034, -0.341202,
		0.603769, 0.778549, 0.171244,
		42.208839, 36.168949, 33.168697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393448, 35.341961, 33.539265>,  <41.786201, 35.623962, 33.048828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393448, 35.341961, 33.539265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387413, 35.736736, 33.603432>,  <42.383793, 35.973602, 33.641930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387413, 35.736736, 33.603432>,  <42.393448, 35.341961, 33.539265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387413, 35.736736, 33.603432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038647, -0.160888, 0.986216,
		0.999139, 0.008678, 0.040570,
		-0.015085, 0.986934, 0.160414,
		42.382889, 36.032818, 33.651554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875668, 35.488010, 34.092331>,  <42.393448, 35.341961, 33.539265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875668, 35.488010, 34.092331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623417, 35.798126, 34.106358>,  <42.472065, 35.984196, 34.114773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623417, 35.798126, 34.106358>,  <42.875668, 35.488010, 34.092331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623417, 35.798126, 34.106358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026429, -0.023704, 0.999370,
		0.775634, 0.631158, -0.005542,
		-0.630629, 0.775292, 0.035067,
		42.434227, 36.030712, 34.116879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110279, 35.737206, 34.795914>,  <42.875668, 35.488010, 34.092331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110279, 35.737206, 34.795914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773293, 35.915855, 34.675396>,  <42.571102, 36.023045, 34.603085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773293, 35.915855, 34.675396>,  <43.110279, 35.737206, 34.795914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773293, 35.915855, 34.675396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318508, 0.038155, 0.947152,
		0.434521, 0.893906, 0.110110,
		-0.842463, 0.446628, -0.301296,
		42.520554, 36.049843, 34.585007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945942, 36.349831, 35.199402>,  <43.110279, 35.737206, 34.795914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945942, 36.349831, 35.199402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581711, 36.263241, 35.058559>,  <42.363171, 36.211285, 34.974056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581711, 36.263241, 35.058559>,  <42.945942, 36.349831, 35.199402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581711, 36.263241, 35.058559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389119, 0.161720, 0.906881,
		-0.139377, 0.962800, -0.231495,
		-0.910582, -0.216478, -0.352104,
		42.308537, 36.198296, 34.952927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501637, 36.771347, 35.514870>,  <42.945942, 36.349831, 35.199402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501637, 36.771347, 35.514870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245201, 36.504829, 35.362526>,  <42.091339, 36.344917, 35.271122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245201, 36.504829, 35.362526>,  <42.501637, 36.771347, 35.514870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245201, 36.504829, 35.362526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544530, 0.045204, 0.837522,
		-0.540821, 0.744317, -0.391798,
		-0.641093, -0.666295, -0.380856,
		42.052872, 36.304939, 35.248268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799473, 37.024887, 35.525452>,  <42.501637, 36.771347, 35.514870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799473, 37.024887, 35.525452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799789, 36.625805, 35.552536>,  <41.799980, 36.386356, 35.568787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799789, 36.625805, 35.552536>,  <41.799473, 37.024887, 35.525452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799789, 36.625805, 35.552536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557570, 0.055768, 0.828255,
		-0.830130, -0.038413, -0.556246,
		0.000795, -0.997705, 0.067713,
		41.800030, 36.326492, 35.572849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055210, 36.775066, 35.527321>,  <41.799473, 37.024887, 35.525452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055210, 36.775066, 35.527321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260265, 36.451836, 35.643394>,  <41.383301, 36.257896, 35.713039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260265, 36.451836, 35.643394>,  <41.055210, 36.775066, 35.527321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260265, 36.451836, 35.643394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678493, -0.174155, 0.713665,
		-0.526161, -0.562742, -0.637555,
		0.512643, -0.808079, 0.290183,
		41.414059, 36.209412, 35.730450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585213, 36.636963, 35.914631>,  <41.055210, 36.775066, 35.527321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585213, 36.636963, 35.914631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874504, 36.367416, 35.975079>,  <41.048080, 36.205688, 36.011349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874504, 36.367416, 35.975079>,  <40.585213, 36.636963, 35.914631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874504, 36.367416, 35.975079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610397, -0.521387, 0.596298,
		-0.323036, -0.523504, -0.788411,
		0.723231, -0.673869, 0.151119,
		41.091473, 36.165257, 36.020412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387634, 35.919373, 35.924019>,  <40.585213, 36.636963, 35.914631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387634, 35.919373, 35.924019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681168, 35.999180, 36.183765>,  <40.857288, 36.047062, 36.339615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681168, 35.999180, 36.183765>,  <40.387634, 35.919373, 35.924019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681168, 35.999180, 36.183765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597077, -0.266495, 0.756624,
		0.324011, -0.942960, -0.076437,
		0.733836, 0.199516, 0.649367,
		40.901318, 36.059036, 36.378574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517105, 35.309509, 36.262264>,  <40.387634, 35.919373, 35.924019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517105, 35.309509, 36.262264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652271, 35.608444, 36.491108>,  <40.733372, 35.787804, 36.628414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652271, 35.608444, 36.491108>,  <40.517105, 35.309509, 36.262264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652271, 35.608444, 36.491108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701226, -0.205536, 0.682669,
		0.627770, -0.631860, 0.454596,
		0.337915, 0.747334, 0.572106,
		40.753647, 35.832645, 36.662739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273010, 35.128029, 36.895458>,  <40.517105, 35.309509, 36.262264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273010, 35.128029, 36.895458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381832, 35.498558, 36.999699>,  <40.447124, 35.720875, 37.062241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381832, 35.498558, 36.999699>,  <40.273010, 35.128029, 36.895458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381832, 35.498558, 36.999699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532796, -0.080509, 0.842406,
		0.801321, -0.368026, 0.471638,
		0.272056, 0.926324, 0.260596,
		40.463448, 35.776455, 37.077877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376022, 35.055420, 37.584736>,  <40.273010, 35.128029, 36.895458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376022, 35.055420, 37.584736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310951, 35.441162, 37.501263>,  <40.271908, 35.672607, 37.451180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310951, 35.441162, 37.501263>,  <40.376022, 35.055420, 37.584736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310951, 35.441162, 37.501263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714611, 0.030681, 0.698848,
		0.680342, 0.262819, 0.684150,
		-0.162681, 0.964357, -0.208687,
		40.262146, 35.730469, 37.438656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320919, 35.509960, 38.045292>,  <40.376022, 35.055420, 37.584736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320919, 35.509960, 38.045292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085281, 35.720123, 37.799721>,  <39.943897, 35.846222, 37.652378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085281, 35.720123, 37.799721>,  <40.320919, 35.509960, 38.045292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085281, 35.720123, 37.799721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791972, -0.224542, 0.567769,
		0.160458, 0.820686, 0.548387,
		-0.589095, 0.525410, -0.613930,
		39.908554, 35.877747, 37.615543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992905, 35.951000, 38.445290>,  <40.320919, 35.509960, 38.045292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992905, 35.951000, 38.445290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784595, 35.951443, 38.103809>,  <39.659611, 35.951710, 37.898922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784595, 35.951443, 38.103809>,  <39.992905, 35.951000, 38.445290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784595, 35.951443, 38.103809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847694, -0.119058, 0.516953,
		-0.101067, 0.992887, 0.062941,
		-0.520770, 0.001108, -0.853697,
		39.628365, 35.951775, 37.847702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529682, 36.543453, 38.340103>,  <39.992905, 35.951000, 38.445290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529682, 36.543453, 38.340103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360359, 36.235519, 38.149033>,  <39.258766, 36.050758, 38.034389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360359, 36.235519, 38.149033>,  <39.529682, 36.543453, 38.340103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360359, 36.235519, 38.149033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832301, 0.122153, 0.540698,
		-0.357897, 0.626448, -0.692440,
		-0.423303, -0.769832, -0.477675,
		39.233368, 36.004570, 38.005730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850319, 36.772251, 38.308773>,  <39.529682, 36.543453, 38.340103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850319, 36.772251, 38.308773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825916, 36.380642, 38.231003>,  <38.811275, 36.145676, 38.184341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825916, 36.380642, 38.231003>,  <38.850319, 36.772251, 38.308773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825916, 36.380642, 38.231003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807411, -0.066118, 0.586273,
		-0.586827, 0.192742, -0.786438,
		-0.061002, -0.979019, -0.194422,
		38.807617, 36.086937, 38.172676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344341, 36.629276, 37.825108>,  <38.850319, 36.772251, 38.308773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344341, 36.629276, 37.825108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388561, 36.274235, 38.003963>,  <38.415092, 36.061211, 38.111279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388561, 36.274235, 38.003963>,  <38.344341, 36.629276, 37.825108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388561, 36.274235, 38.003963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943161, 0.048180, 0.328825,
		-0.313410, -0.458079, -0.831828,
		0.110550, -0.887605, 0.447142,
		38.421726, 36.007954, 38.138107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776993, 36.158955, 37.657898>,  <38.344341, 36.629276, 37.825108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776993, 36.158955, 37.657898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923615, 36.064526, 38.017876>,  <38.011589, 36.007866, 38.233864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923615, 36.064526, 38.017876>,  <37.776993, 36.158955, 37.657898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923615, 36.064526, 38.017876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921183, 0.043691, 0.386669,
		-0.130604, -0.970751, -0.201456,
		0.366558, -0.236079, 0.899946,
		38.033581, 35.993702, 38.287861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256443, 35.700016, 38.057236>,  <37.776993, 36.158955, 37.657898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256443, 35.700016, 38.057236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445881, 35.928242, 38.325611>,  <37.559544, 36.065178, 38.486637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445881, 35.928242, 38.325611>,  <37.256443, 35.700016, 38.057236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445881, 35.928242, 38.325611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864911, 0.157487, 0.476579,
		0.166274, -0.805987, 0.568100,
		0.473585, 0.570598, 0.670921,
		37.587959, 36.099411, 38.526894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519279, 35.945480, 38.383972>,  <37.256443, 35.700016, 38.057236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519279, 35.945480, 38.383972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508064, 35.886223, 38.779400>,  <36.501335, 35.850666, 39.016655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508064, 35.886223, 38.779400>,  <36.519279, 35.945480, 38.383972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508064, 35.886223, 38.779400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890451, -0.453078, -0.042643,
		0.454215, 0.879075, 0.144620,
		-0.028038, -0.148146, 0.988568,
		36.499653, 35.841778, 39.075970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052841, 36.364464, 38.804863>,  <36.519279, 35.945480, 38.383972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052841, 36.364464, 38.804863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973473, 35.975677, 38.855320>,  <36.925850, 35.742405, 38.885593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973473, 35.975677, 38.855320>,  <37.052841, 36.364464, 38.804863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973473, 35.975677, 38.855320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877104, -0.233529, -0.419706,
		0.437398, 0.027364, 0.898852,
		-0.198423, -0.971965, 0.126146,
		36.913944, 35.684090, 38.893166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382744, 36.097389, 39.438580>,  <37.052841, 36.364464, 38.804863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382744, 36.097389, 39.438580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322952, 35.841633, 39.136894>,  <37.287075, 35.688179, 38.955883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322952, 35.841633, 39.136894>,  <37.382744, 36.097389, 39.438580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322952, 35.841633, 39.136894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984016, -0.021529, -0.176776,
		0.096792, -0.768581, 0.632387,
		-0.149482, -0.639390, -0.754212,
		37.278107, 35.649815, 38.910629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994312, 35.726982, 39.353241>,  <37.382744, 36.097389, 39.438580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994312, 35.726982, 39.353241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836224, 35.606544, 39.006107>,  <37.741371, 35.534283, 38.797825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836224, 35.606544, 39.006107>,  <37.994312, 35.726982, 39.353241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836224, 35.606544, 39.006107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918549, -0.137997, -0.370438,
		-0.008222, -0.943556, 0.331110,
		-0.395222, -0.301095, -0.867837,
		37.717655, 35.516216, 38.745754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369175, 35.120033, 39.187370>,  <37.994312, 35.726982, 39.353241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369175, 35.120033, 39.187370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223221, 35.275707, 38.849045>,  <38.135647, 35.369110, 38.646049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223221, 35.275707, 38.849045>,  <38.369175, 35.120033, 39.187370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223221, 35.275707, 38.849045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915943, -0.012947, -0.401101,
		-0.167052, -0.921070, -0.351743,
		-0.364888, 0.389181, -0.845810,
		38.113754, 35.392460, 38.595303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633720, 34.776283, 38.586372>,  <38.369175, 35.120033, 39.187370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633720, 34.776283, 38.586372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562176, 35.147083, 38.454506>,  <38.519249, 35.369564, 38.375385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562176, 35.147083, 38.454506>,  <38.633720, 34.776283, 38.586372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562176, 35.147083, 38.454506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854673, -0.019586, -0.518798,
		-0.487382, -0.374549, -0.788778,
		-0.178866, 0.927000, -0.329663,
		38.508514, 35.425182, 38.355606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763237, 34.777515, 37.855732>,  <38.633720, 34.776283, 38.586372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763237, 34.777515, 37.855732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791058, 35.164814, 37.951775>,  <38.807751, 35.397194, 38.009399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791058, 35.164814, 37.951775>,  <38.763237, 34.777515, 37.855732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791058, 35.164814, 37.951775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774522, 0.099282, -0.624707,
		-0.628712, 0.229420, -0.743027,
		0.069551, 0.968251, 0.240110,
		38.811924, 35.455288, 38.023808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882645, 35.038548, 37.266605>,  <38.763237, 34.777515, 37.855732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882645, 35.038548, 37.266605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994949, 35.325199, 37.521984>,  <39.062332, 35.497192, 37.675209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994949, 35.325199, 37.521984>,  <38.882645, 35.038548, 37.266605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994949, 35.325199, 37.521984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788781, 0.206692, -0.578881,
		-0.546807, 0.666119, -0.507235,
		0.280762, 0.716633, 0.638443,
		39.079178, 35.540188, 37.713516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031792, 35.774498, 36.850475>,  <38.882645, 35.038548, 37.266605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031792, 35.774498, 36.850475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214943, 35.704857, 37.199196>,  <39.324833, 35.663074, 37.408428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214943, 35.704857, 37.199196>,  <39.031792, 35.774498, 36.850475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214943, 35.704857, 37.199196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888953, 0.078208, -0.451273,
		0.010385, 0.981617, 0.190577,
		0.457882, -0.174100, 0.871799,
		39.352306, 35.652626, 37.460735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844452, 36.330616, 37.351204>,  <39.031792, 35.774498, 36.850475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844452, 36.330616, 37.351204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155624, 36.416183, 37.587528>,  <39.342327, 36.467525, 37.729324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155624, 36.416183, 37.587528>,  <38.844452, 36.330616, 37.351204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155624, 36.416183, 37.587528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628074, -0.236812, -0.741244,
		-0.018656, 0.947712, -0.318582,
		0.777930, 0.213922, 0.590815,
		39.389004, 36.480358, 37.764774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479462, 36.621616, 37.027290>,  <38.844452, 36.330616, 37.351204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479462, 36.621616, 37.027290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686237, 36.453831, 37.325775>,  <39.810303, 36.353157, 37.504864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686237, 36.453831, 37.325775>,  <39.479462, 36.621616, 37.027290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686237, 36.453831, 37.325775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787593, -0.108460, -0.606575,
		0.335371, 0.901268, 0.274302,
		0.516936, -0.419466, 0.746207,
		39.841320, 36.327991, 37.549637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112896, 37.042423, 37.278114>,  <39.479462, 36.621616, 37.027290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112896, 37.042423, 37.278114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175995, 36.651123, 37.331985>,  <40.213856, 36.416344, 37.364307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175995, 36.651123, 37.331985>,  <40.112896, 37.042423, 37.278114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175995, 36.651123, 37.331985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760929, 0.033501, -0.647969,
		0.629366, 0.204696, 0.749665,
		0.157751, -0.978252, 0.134675,
		40.223320, 36.357647, 37.372387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772316, 37.017208, 37.375607>,  <40.112896, 37.042423, 37.278114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772316, 37.017208, 37.375607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666771, 36.642651, 37.283043>,  <40.603443, 36.417915, 37.227505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666771, 36.642651, 37.283043>,  <40.772316, 37.017208, 37.375607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666771, 36.642651, 37.283043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725464, -0.034547, -0.687392,
		0.635672, -0.349258, 0.688433,
		-0.263861, -0.936389, -0.231413,
		40.587612, 36.361732, 37.213619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339233, 36.588814, 37.484169>,  <40.772316, 37.017208, 37.375607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339233, 36.588814, 37.484169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121212, 36.382317, 37.219921>,  <40.990398, 36.258419, 37.061375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121212, 36.382317, 37.219921>,  <41.339233, 36.588814, 37.484169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121212, 36.382317, 37.219921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821808, -0.172976, -0.542874,
		0.165982, -0.838795, 0.518530,
		-0.545053, -0.516239, -0.660617,
		40.957695, 36.227444, 37.021736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860455, 36.137646, 37.232002>,  <41.339233, 36.588814, 37.484169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860455, 36.137646, 37.232002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568436, 36.114899, 36.959591>,  <41.393223, 36.101250, 36.796143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568436, 36.114899, 36.959591>,  <41.860455, 36.137646, 37.232002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568436, 36.114899, 36.959591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675780, -0.208442, -0.707017,
		-0.101748, -0.976380, 0.190603,
		-0.730047, -0.056869, -0.681027,
		41.349422, 36.097839, 36.755283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207371, 35.773560, 36.684837>,  <41.860455, 36.137646, 37.232002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207371, 35.773560, 36.684837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867233, 35.863022, 36.494301>,  <41.663151, 35.916698, 36.379978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867233, 35.863022, 36.494301>,  <42.207371, 35.773560, 36.684837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867233, 35.863022, 36.494301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448480, -0.165535, -0.878330,
		-0.275293, -0.960509, 0.040457,
		-0.850341, 0.223654, -0.476340,
		41.612129, 35.930119, 36.351398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979198, 35.162537, 36.253948>,  <42.207371, 35.773560, 36.684837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979198, 35.162537, 36.253948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860378, 35.521023, 36.122154>,  <41.789085, 35.736115, 36.043079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860378, 35.521023, 36.122154>,  <41.979198, 35.162537, 36.253948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860378, 35.521023, 36.122154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243564, -0.262527, -0.933679,
		-0.923274, -0.357603, -0.140301,
		-0.297054, 0.896214, -0.329484,
		41.771263, 35.789886, 36.023308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906662, 35.033215, 35.563171>,  <41.979198, 35.162537, 36.253948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906662, 35.033215, 35.563171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864742, 35.430965, 35.557129>,  <41.839592, 35.669617, 35.553505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864742, 35.430965, 35.557129>,  <41.906662, 35.033215, 35.563171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864742, 35.430965, 35.557129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130984, -0.001257, -0.991384,
		-0.985830, -0.105874, -0.130116,
		-0.104798, 0.994379, -0.015107,
		41.833302, 35.729279, 35.552597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528019, 35.164875, 34.934288>,  <41.906662, 35.033215, 35.563171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528019, 35.164875, 34.934288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705872, 35.505901, 35.044151>,  <41.812584, 35.710518, 35.110069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705872, 35.505901, 35.044151>,  <41.528019, 35.164875, 34.934288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705872, 35.505901, 35.044151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199050, 0.204922, -0.958325,
		-0.873317, 0.480771, -0.078588,
		0.444630, 0.852564, 0.274660,
		41.839260, 35.761669, 35.126549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180733, 35.756924, 34.525505>,  <41.528019, 35.164875, 34.934288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180733, 35.756924, 34.525505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548260, 35.877090, 34.627895>,  <41.768776, 35.949192, 34.689327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548260, 35.877090, 34.627895>,  <41.180733, 35.756924, 34.525505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548260, 35.877090, 34.627895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131650, 0.378126, -0.916345,
		-0.372080, 0.875653, 0.307878,
		0.918817, 0.300421, 0.255973,
		41.823906, 35.967216, 34.704689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344425, 36.240242, 34.127792>,  <41.180733, 35.756924, 34.525505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344425, 36.240242, 34.127792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721771, 36.220654, 34.259041>,  <41.948177, 36.208900, 34.337791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721771, 36.220654, 34.259041>,  <41.344425, 36.240242, 34.127792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721771, 36.220654, 34.259041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324065, 0.347784, -0.879789,
		-0.071035, 0.936295, 0.343956,
		0.943364, -0.048968, 0.328125,
		42.004780, 36.205963, 34.357479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601048, 36.915176, 34.039455>,  <41.344425, 36.240242, 34.127792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601048, 36.915176, 34.039455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924168, 36.681854, 34.073441>,  <42.118038, 36.541862, 34.093830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924168, 36.681854, 34.073441>,  <41.601048, 36.915176, 34.039455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924168, 36.681854, 34.073441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375476, 0.398072, -0.836993,
		0.454398, 0.708024, 0.540578,
		0.807800, -0.583302, 0.084963,
		42.166508, 36.506863, 34.098930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152256, 37.272976, 33.886044>,  <41.601048, 36.915176, 34.039455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152256, 37.272976, 33.886044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230721, 36.890976, 33.797047>,  <42.277802, 36.661777, 33.743649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230721, 36.890976, 33.797047>,  <42.152256, 37.272976, 33.886044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230721, 36.890976, 33.797047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382079, 0.283409, -0.879599,
		0.903070, 0.087536, 0.420478,
		0.196163, -0.954996, -0.222492,
		42.289570, 36.604477, 33.730297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772312, 37.308914, 33.435886>,  <42.152256, 37.272976, 33.886044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772312, 37.308914, 33.435886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605541, 36.951561, 33.368904>,  <42.505478, 36.737148, 33.328712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605541, 36.951561, 33.368904>,  <42.772312, 37.308914, 33.435886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605541, 36.951561, 33.368904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218770, 0.080189, -0.972476,
		0.882218, -0.442090, 0.162011,
		-0.416930, -0.893379, -0.167460,
		42.480461, 36.683548, 33.318665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253048, 36.882191, 33.066643>,  <42.772312, 37.308914, 33.435886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253048, 36.882191, 33.066643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877491, 36.771835, 32.984314>,  <42.652157, 36.705624, 32.934917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877491, 36.771835, 32.984314>,  <43.253048, 36.882191, 33.066643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877491, 36.771835, 32.984314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219019, -0.017573, -0.975562,
		0.265526, -0.961030, 0.076923,
		-0.938896, -0.275885, -0.205818,
		42.595821, 36.689072, 32.922569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155796, 36.185913, 32.952354>,  <43.253048, 36.882191, 33.066643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155796, 36.185913, 32.952354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936771, 36.451294, 32.748390>,  <42.805359, 36.610523, 32.626011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936771, 36.451294, 32.748390>,  <43.155796, 36.185913, 32.952354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936771, 36.451294, 32.748390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363467, -0.360309, -0.859110,
		-0.753706, -0.655748, -0.043854,
		-0.547558, 0.663455, -0.509910,
		42.772503, 36.650330, 32.595417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898483, 35.857738, 32.327934>,  <43.155796, 36.185913, 32.952354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898483, 35.857738, 32.327934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860142, 36.245663, 32.238243>,  <42.837135, 36.478416, 32.184429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860142, 36.245663, 32.238243>,  <42.898483, 35.857738, 32.327934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860142, 36.245663, 32.238243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234076, -0.196989, -0.952052,
		-0.967481, -0.143747, -0.208127,
		-0.095856, 0.969810, -0.224231,
		42.831387, 36.536606, 32.170975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786263, 35.920906, 31.542183>,  <42.898483, 35.857738, 32.327934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786263, 35.920906, 31.542183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873856, 36.289742, 31.669806>,  <42.926411, 36.511044, 31.746378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873856, 36.289742, 31.669806>,  <42.786263, 35.920906, 31.542183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873856, 36.289742, 31.669806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154255, 0.290164, -0.944463,
		-0.963459, 0.256034, -0.078698,
		0.218979, 0.922091, 0.319055,
		42.939548, 36.566368, 31.765522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489681, 36.098656, 31.323624>,  <42.786263, 35.920906, 31.542183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489681, 36.098656, 31.323624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301716, 36.066792, 30.971979>,  <43.188938, 36.047672, 30.760992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301716, 36.066792, 30.971979>,  <43.489681, 36.098656, 31.323624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301716, 36.066792, 30.971979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019327, 0.994753, -0.100465,
		0.882501, -0.064200, -0.465907,
		-0.469913, -0.079656, -0.879112,
		43.160744, 36.042896, 30.708246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962597, 35.522247, 31.203413>,  <43.489681, 36.098656, 31.323624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962597, 35.522247, 31.203413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897980, 35.422756, 31.585415>,  <43.859207, 35.363060, 31.814617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897980, 35.422756, 31.585415>,  <43.962597, 35.522247, 31.203413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897980, 35.422756, 31.585415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781311, 0.558940, 0.277740,
		-0.602873, 0.791024, 0.104040,
		-0.161547, -0.248730, 0.955006,
		43.849514, 35.348137, 31.871916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337746, 36.010792, 31.596710>,  <43.962597, 35.522247, 31.203413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337746, 36.010792, 31.596710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203274, 35.753304, 31.871696>,  <44.122589, 35.598812, 32.036686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203274, 35.753304, 31.871696>,  <44.337746, 36.010792, 31.596710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203274, 35.753304, 31.871696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568192, 0.443514, 0.693148,
		-0.751094, 0.623633, 0.216657,
		-0.336179, -0.643721, 0.687464,
		44.102421, 35.560188, 32.077934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543442, 36.105789, 30.874681>,  <44.337746, 36.010792, 31.596710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543442, 36.105789, 30.874681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939117, 36.163036, 30.861891>,  <45.176521, 36.197384, 30.854218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939117, 36.163036, 30.861891>,  <44.543442, 36.105789, 30.874681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939117, 36.163036, 30.861891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084590, -0.378741, 0.921629,
		0.119795, -0.914370, -0.386753,
		0.989188, 0.143122, -0.031975,
		45.235874, 36.205975, 30.852299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866852, 35.473545, 31.182501>,  <44.543442, 36.105789, 30.874681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866852, 35.473545, 31.182501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115002, 35.785248, 31.218040>,  <45.263893, 35.972267, 31.239365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115002, 35.785248, 31.218040>,  <44.866852, 35.473545, 31.182501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115002, 35.785248, 31.218040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215872, -0.278563, 0.935843,
		0.754011, -0.561395, -0.341034,
		0.620376, 0.779255, 0.088850,
		45.301113, 36.019024, 31.244696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492279, 35.191414, 31.426708>,  <44.866852, 35.473545, 31.182501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492279, 35.191414, 31.426708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485416, 35.577908, 31.529545>,  <45.481297, 35.809803, 31.591246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485416, 35.577908, 31.529545>,  <45.492279, 35.191414, 31.426708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485416, 35.577908, 31.529545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209075, -0.247976, 0.945936,
		0.977749, 0.069985, -0.197760,
		-0.017161, 0.966235, 0.257090,
		45.480267, 35.867779, 31.606672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082344, 35.422462, 31.863188>,  <45.492279, 35.191414, 31.426708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082344, 35.422462, 31.863188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784542, 35.679398, 31.935970>,  <45.605862, 35.833561, 31.979641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784542, 35.679398, 31.935970>,  <46.082344, 35.422462, 31.863188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784542, 35.679398, 31.935970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098607, -0.163758, 0.981560,
		0.660292, 0.748721, 0.058580,
		-0.744507, 0.642340, 0.181957,
		45.561192, 35.872101, 31.990557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294827, 35.924744, 32.283051>,  <46.082344, 35.422462, 31.863188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294827, 35.924744, 32.283051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899891, 35.889359, 32.335705>,  <45.662930, 35.868130, 32.367298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899891, 35.889359, 32.335705>,  <46.294827, 35.924744, 32.283051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899891, 35.889359, 32.335705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149314, -0.238696, 0.959547,
		-0.053460, 0.967057, 0.248883,
		-0.987344, -0.088460, 0.131634,
		45.603687, 35.862820, 32.375195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228714, 36.068172, 33.019367>,  <46.294827, 35.924744, 32.283051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228714, 36.068172, 33.019367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878765, 35.917805, 32.897198>,  <45.668797, 35.827583, 32.823898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878765, 35.917805, 32.897198>,  <46.228714, 36.068172, 33.019367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878765, 35.917805, 32.897198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161402, -0.368265, 0.915604,
		-0.456666, 0.850334, 0.261512,
		-0.874875, -0.375916, -0.305419,
		45.616302, 35.805031, 32.805573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552376, 36.479462, 33.202053>,  <46.228714, 36.068172, 33.019367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552376, 36.479462, 33.202053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590294, 36.081329, 33.194756>,  <45.613045, 35.842449, 33.190376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590294, 36.081329, 33.194756>,  <45.552376, 36.479462, 33.202053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590294, 36.081329, 33.194756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055763, -0.012991, 0.998359,
		-0.993934, -0.095654, 0.054271,
		0.094793, -0.995330, -0.018246,
		45.618732, 35.782730, 33.189281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020931, 36.183727, 33.686447>,  <45.552376, 36.479462, 33.202053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020931, 36.183727, 33.686447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341682, 35.952641, 33.625477>,  <45.534134, 35.813988, 33.588894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341682, 35.952641, 33.625477>,  <45.020931, 36.183727, 33.686447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341682, 35.952641, 33.625477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158310, -0.040563, 0.986556,
		-0.576136, -0.815227, 0.058932,
		0.801876, -0.577720, -0.152429,
		45.582245, 35.779324, 33.579750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937168, 35.780682, 34.190311>,  <45.020931, 36.183727, 33.686447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937168, 35.780682, 34.190311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309734, 35.775921, 34.044807>,  <45.533276, 35.773064, 33.957504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309734, 35.775921, 34.044807>,  <44.937168, 35.780682, 34.190311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309734, 35.775921, 34.044807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353879, -0.203877, 0.912800,
		-0.085025, -0.978924, -0.185683,
		0.931419, -0.011901, -0.363755,
		45.589161, 35.772350, 33.935680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278713, 35.221516, 34.379501>,  <44.937168, 35.780682, 34.190311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278713, 35.221516, 34.379501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565231, 35.489799, 34.302494>,  <45.737144, 35.650768, 34.256290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565231, 35.489799, 34.302494>,  <45.278713, 35.221516, 34.379501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565231, 35.489799, 34.302494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452992, -0.237098, 0.859408,
		0.530766, -0.702805, -0.473659,
		0.716300, 0.670709, -0.192521,
		45.780121, 35.691013, 34.244740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647057, 34.773029, 34.849995>,  <45.278713, 35.221516, 34.379501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647057, 34.773029, 34.849995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853561, 34.546658, 34.592876>,  <45.977467, 34.410835, 34.438606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853561, 34.546658, 34.592876>,  <45.647057, 34.773029, 34.849995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853561, 34.546658, 34.592876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848785, 0.238058, 0.472114,
		-0.114160, -0.789335, 0.603255,
		0.516266, -0.565931, -0.642799,
		46.008442, 34.376877, 34.400036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228329, 34.411171, 35.222744>,  <45.647057, 34.773029, 34.849995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228329, 34.411171, 35.222744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.379158, 34.444065, 34.853733>,  <46.469654, 34.463802, 34.632328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.379158, 34.444065, 34.853733>,  <46.228329, 34.411171, 35.222744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.379158, 34.444065, 34.853733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882652, 0.269872, 0.384830,
		0.280611, -0.959378, 0.029174,
		0.377071, 0.082237, -0.922526,
		46.492279, 34.468735, 34.576977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.903419, 34.189972, 35.256050>,  <46.228329, 34.411171, 35.222744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.903419, 34.189972, 35.256050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.871159, 34.476643, 34.978958>,  <46.851803, 34.648643, 34.812702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.871159, 34.476643, 34.978958>,  <46.903419, 34.189972, 35.256050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.871159, 34.476643, 34.978958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765380, 0.489736, 0.417555,
		0.638506, -0.496527, -0.588023,
		-0.080649, 0.716672, -0.692731,
		46.846966, 34.691643, 34.771137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.426430, 34.548756, 35.536217>,  <46.903419, 34.189972, 35.256050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.426430, 34.548756, 35.536217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296848, 34.701691, 35.190067>,  <47.219097, 34.793453, 34.982376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296848, 34.701691, 35.190067>,  <47.426430, 34.548756, 35.536217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.296848, 34.701691, 35.190067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703675, 0.708780, 0.049727,
		0.632371, -0.592831, -0.498656,
		-0.323958, 0.382338, -0.865372,
		47.199661, 34.816391, 34.930454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.000851, 34.730701, 35.106846>,  <47.426430, 34.548756, 35.536217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.000851, 34.730701, 35.106846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684620, 34.973980, 35.078342>,  <47.494881, 35.119949, 35.061241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684620, 34.973980, 35.078342>,  <48.000851, 34.730701, 35.106846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.684620, 34.973980, 35.078342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564460, 0.768907, 0.300278,
		0.237422, 0.197169, -0.951186,
		-0.790580, 0.608199, -0.071261,
		47.447445, 35.156441, 35.056965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.445091, 37.810905, 22.335886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.064442, 37.688641, 22.323294>,  <36.836052, 37.615280, 22.315739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.064442, 37.688641, 22.323294>,  <37.445091, 37.810905, 22.335886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064442, 37.688641, 22.323294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138237, -0.517347, 0.844537,
		-0.274429, 0.799326, 0.534571,
		-0.951619, -0.305663, -0.031479,
		36.778957, 37.596943, 22.313850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127644, 38.088634, 22.921850>,  <37.445091, 37.810905, 22.335886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127644, 38.088634, 22.921850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917213, 37.769730, 22.803453>,  <36.790955, 37.578384, 22.732416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917213, 37.769730, 22.803453>,  <37.127644, 38.088634, 22.921850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917213, 37.769730, 22.803453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099145, -0.403170, 0.909739,
		-0.844637, 0.449248, 0.291143,
		-0.526078, -0.797264, -0.295992,
		36.759392, 37.530552, 22.714657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649239, 37.994701, 23.454182>,  <37.127644, 38.088634, 22.921850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649239, 37.994701, 23.454182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690624, 37.648037, 23.258961>,  <36.715454, 37.440037, 23.141829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690624, 37.648037, 23.258961>,  <36.649239, 37.994701, 23.454182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690624, 37.648037, 23.258961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018655, -0.492289, 0.870231,
		-0.994458, -0.080934, -0.067102,
		0.103465, -0.866660, -0.488051,
		36.721664, 37.388039, 23.112545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400394, 37.647900, 23.989056>,  <36.649239, 37.994701, 23.454182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400394, 37.647900, 23.989056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551830, 37.374115, 23.739838>,  <36.642693, 37.209843, 23.590307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551830, 37.374115, 23.739838>,  <36.400394, 37.647900, 23.989056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551830, 37.374115, 23.739838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339645, -0.523455, 0.781432,
		-0.860996, -0.507454, 0.034301,
		0.378586, -0.684460, -0.623047,
		36.665405, 37.168777, 23.552923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090446, 36.986130, 24.237696>,  <36.400394, 37.647900, 23.989056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090446, 36.986130, 24.237696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439274, 36.956051, 24.044268>,  <36.648571, 36.938004, 23.928211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439274, 36.956051, 24.044268>,  <36.090446, 36.986130, 24.237696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439274, 36.956051, 24.044268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386050, -0.501576, 0.774201,
		-0.300763, -0.861839, -0.408380,
		0.872070, -0.075195, -0.483569,
		36.700893, 36.933491, 23.899197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222065, 36.266430, 24.298061>,  <36.090446, 36.986130, 24.237696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222065, 36.266430, 24.298061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.570892, 36.441238, 24.209963>,  <36.780190, 36.546124, 24.157103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.570892, 36.441238, 24.209963>,  <36.222065, 36.266430, 24.298061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570892, 36.441238, 24.209963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435847, -0.488887, 0.755663,
		0.222565, -0.754984, -0.616817,
		0.872068, 0.437022, -0.220248,
		36.832512, 36.572346, 24.143888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668549, 35.730145, 24.350704>,  <36.222065, 36.266430, 24.298061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668549, 35.730145, 24.350704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871014, 36.068222, 24.419338>,  <36.992493, 36.271069, 24.460518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871014, 36.068222, 24.419338>,  <36.668549, 35.730145, 24.350704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871014, 36.068222, 24.419338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519879, -0.457757, 0.721238,
		0.688133, -0.275859, -0.671100,
		0.506160, 0.845199, 0.171584,
		37.022861, 36.321781, 24.470814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309956, 35.585403, 24.478577>,  <36.668549, 35.730145, 24.350704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309956, 35.585403, 24.478577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275387, 35.948605, 24.642557>,  <37.254646, 36.166527, 24.740946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275387, 35.948605, 24.642557>,  <37.309956, 35.585403, 24.478577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275387, 35.948605, 24.642557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479815, -0.322688, 0.815873,
		0.873102, 0.267213, -0.407786,
		-0.086424, 0.908003, 0.409953,
		37.249458, 36.221004, 24.765543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964272, 35.624680, 24.862925>,  <37.309956, 35.585403, 24.478577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964272, 35.624680, 24.862925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731133, 35.923000, 24.991959>,  <37.591248, 36.101994, 25.069378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731133, 35.923000, 24.991959>,  <37.964272, 35.624680, 24.862925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731133, 35.923000, 24.991959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427716, -0.055957, 0.902179,
		0.690900, 0.663810, -0.286378,
		-0.582851, 0.745805, 0.322583,
		37.556278, 36.146740, 25.088734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417698, 35.971310, 25.330902>,  <37.964272, 35.624680, 24.862925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417698, 35.971310, 25.330902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053398, 36.105564, 25.427143>,  <37.834820, 36.186115, 25.484888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053398, 36.105564, 25.427143>,  <38.417698, 35.971310, 25.330902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053398, 36.105564, 25.427143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267396, 0.035293, 0.962940,
		0.314705, 0.941331, -0.121890,
		-0.910747, 0.335635, 0.240602,
		37.780174, 36.206253, 25.499323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478775, 36.632523, 25.655991>,  <38.417698, 35.971310, 25.330902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478775, 36.632523, 25.655991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125389, 36.487389, 25.774540>,  <37.913357, 36.400307, 25.845669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125389, 36.487389, 25.774540>,  <38.478775, 36.632523, 25.655991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125389, 36.487389, 25.774540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255193, 0.157816, 0.953924,
		-0.392891, 0.918392, -0.046832,
		-0.883467, -0.362836, 0.296372,
		37.860348, 36.378536, 25.863451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308582, 37.106651, 26.213951>,  <38.478775, 36.632523, 25.655991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308582, 37.106651, 26.213951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064445, 36.796227, 26.277470>,  <37.917965, 36.609974, 26.315580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064445, 36.796227, 26.277470>,  <38.308582, 37.106651, 26.213951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064445, 36.796227, 26.277470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167701, 0.069331, 0.983397,
		-0.774182, 0.626839, 0.087830,
		-0.610342, -0.776058, 0.158796,
		37.881344, 36.563408, 26.325108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908840, 37.263329, 26.798628>,  <38.308582, 37.106651, 26.213951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908840, 37.263329, 26.798628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932156, 36.865978, 26.759020>,  <37.946144, 36.627567, 26.735254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932156, 36.865978, 26.759020>,  <37.908840, 37.263329, 26.798628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932156, 36.865978, 26.759020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257581, -0.080867, 0.962867,
		-0.964497, -0.081629, 0.251162,
		0.058287, -0.993377, -0.099022,
		37.949642, 36.567966, 26.729313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559208, 37.006493, 27.436962>,  <37.908840, 37.263329, 26.798628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559208, 37.006493, 27.436962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788986, 36.715622, 27.286642>,  <37.926853, 36.541100, 27.196451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788986, 36.715622, 27.286642>,  <37.559208, 37.006493, 27.436962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788986, 36.715622, 27.286642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322388, -0.221005, 0.920447,
		-0.752384, -0.649897, 0.107480,
		0.574442, -0.727180, -0.375799,
		37.961319, 36.497467, 27.173903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492397, 36.508545, 27.901350>,  <37.559208, 37.006493, 27.436962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492397, 36.508545, 27.901350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821915, 36.392361, 27.706621>,  <38.019627, 36.322651, 27.589783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821915, 36.392361, 27.706621>,  <37.492397, 36.508545, 27.901350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821915, 36.392361, 27.706621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412409, -0.282141, 0.866207,
		-0.388951, -0.914346, -0.112638,
		0.823793, -0.290459, -0.486824,
		38.069054, 36.305222, 27.560574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619667, 35.814274, 28.155787>,  <37.492397, 36.508545, 27.901350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619667, 35.814274, 28.155787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.963093, 35.945992, 27.998596>,  <38.169147, 36.025024, 27.904282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.963093, 35.945992, 27.998596>,  <37.619667, 35.814274, 28.155787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963093, 35.945992, 27.998596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492406, -0.316059, 0.810952,
		0.142842, -0.889758, -0.433505,
		0.858564, 0.329299, -0.392975,
		38.220661, 36.044781, 27.880703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030567, 35.287037, 28.288805>,  <37.619667, 35.814274, 28.155787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030567, 35.287037, 28.288805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304737, 35.568329, 28.213266>,  <38.469238, 35.737103, 28.167944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304737, 35.568329, 28.213266>,  <38.030567, 35.287037, 28.288805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304737, 35.568329, 28.213266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540965, -0.318206, 0.778525,
		0.487387, -0.635782, -0.598528,
		0.685427, 0.703226, -0.188847,
		38.510365, 35.779297, 28.156612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704113, 34.969891, 28.229334>,  <38.030567, 35.287037, 28.288805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704113, 34.969891, 28.229334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771847, 35.356918, 28.304319>,  <38.812489, 35.589134, 28.349310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771847, 35.356918, 28.304319>,  <38.704113, 34.969891, 28.229334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771847, 35.356918, 28.304319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591935, -0.251928, 0.765601,
		0.787997, -0.018677, -0.615396,
		0.169334, 0.967566, 0.187463,
		38.822647, 35.647186, 28.360558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331589, 34.876526, 28.563560>,  <38.704113, 34.969891, 28.229334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331589, 34.876526, 28.563560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.236794, 35.253265, 28.658854>,  <39.179916, 35.479309, 28.716030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.236794, 35.253265, 28.658854>,  <39.331589, 34.876526, 28.563560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236794, 35.253265, 28.658854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381131, -0.135429, 0.914548,
		0.893631, 0.307534, -0.326874,
		-0.236987, 0.941850, 0.238234,
		39.165699, 35.535820, 28.730324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940678, 35.156853, 28.727423>,  <39.331589, 34.876526, 28.563560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940678, 35.156853, 28.727423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646458, 35.366882, 28.898663>,  <39.469925, 35.492901, 29.001406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646458, 35.366882, 28.898663>,  <39.940678, 35.156853, 28.727423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646458, 35.366882, 28.898663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327300, -0.277851, 0.903147,
		0.593163, 0.804426, 0.032518,
		-0.735549, 0.525070, 0.428099,
		39.425793, 35.524403, 29.027092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251461, 35.433491, 29.293604>,  <39.940678, 35.156853, 28.727423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251461, 35.433491, 29.293604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868076, 35.458260, 29.404964>,  <39.638046, 35.473122, 29.471781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868076, 35.458260, 29.404964>,  <40.251461, 35.433491, 29.293604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868076, 35.458260, 29.404964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266134, -0.156788, 0.951099,
		0.102547, 0.985689, 0.133795,
		-0.958466, 0.061925, 0.278404,
		39.580536, 35.476837, 29.488485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296768, 35.821758, 29.849874>,  <40.251461, 35.433491, 29.293604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296768, 35.821758, 29.849874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.948097, 35.628159, 29.880688>,  <39.738895, 35.512001, 29.899176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.948097, 35.628159, 29.880688>,  <40.296768, 35.821758, 29.849874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948097, 35.628159, 29.880688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098179, -0.018459, 0.994998,
		-0.480153, 0.874876, 0.063609,
		-0.871673, -0.483996, 0.077031,
		39.686596, 35.482960, 29.903797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051308, 35.760963, 29.739952>,  <40.296768, 35.821758, 29.849874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051308, 35.760963, 29.739952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.434910, 35.858952, 29.682959>,  <41.665070, 35.917744, 29.648764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.434910, 35.858952, 29.682959>,  <41.051308, 35.760963, 29.739952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434910, 35.858952, 29.682959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272150, 0.655874, -0.704105,
		-0.079035, 0.714015, 0.695655,
		0.959003, 0.244972, -0.142483,
		41.722610, 35.932442, 29.640213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166431, 36.514366, 29.902052>,  <41.051308, 35.760963, 29.739952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166431, 36.514366, 29.902052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.418777, 36.380051, 29.622263>,  <41.570183, 36.299461, 29.454390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.418777, 36.380051, 29.622263>,  <41.166431, 36.514366, 29.902052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418777, 36.380051, 29.622263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307553, 0.719433, -0.622757,
		0.712337, 0.607998, 0.350591,
		0.630862, -0.335788, -0.699471,
		41.608036, 36.279316, 29.412422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388412, 37.071537, 29.655218>,  <41.166431, 36.514366, 29.902052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388412, 37.071537, 29.655218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.496170, 36.808712, 29.373596>,  <41.560825, 36.651016, 29.204622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.496170, 36.808712, 29.373596>,  <41.388412, 37.071537, 29.655218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496170, 36.808712, 29.373596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214396, 0.671816, -0.709012,
		0.938862, 0.341949, 0.040110,
		0.269392, -0.657065, -0.704055,
		41.576988, 36.611591, 29.162380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782043, 37.469242, 29.193022>,  <41.388412, 37.071537, 29.655218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782043, 37.469242, 29.193022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.665535, 37.149422, 28.982924>,  <41.595631, 36.957531, 28.856865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.665535, 37.149422, 28.982924>,  <41.782043, 37.469242, 29.193022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665535, 37.149422, 28.982924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197270, 0.587452, -0.784847,
		0.936079, -0.124990, -0.328837,
		-0.291274, -0.799549, -0.525245,
		41.578152, 36.909557, 28.825350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050156, 37.612293, 28.520559>,  <41.782043, 37.469242, 29.193022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050156, 37.612293, 28.520559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.776890, 37.324131, 28.472742>,  <41.612930, 37.151234, 28.444052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.776890, 37.324131, 28.472742>,  <42.050156, 37.612293, 28.520559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776890, 37.324131, 28.472742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284725, 0.413517, -0.864833,
		0.672467, -0.556789, -0.487620,
		-0.683169, -0.720409, -0.119545,
		41.571938, 37.108009, 28.436878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104607, 37.293156, 27.797144>,  <42.050156, 37.612293, 28.520559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104607, 37.293156, 27.797144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.731495, 37.210701, 27.915419>,  <41.507629, 37.161228, 27.986383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.731495, 37.210701, 27.915419>,  <42.104607, 37.293156, 27.797144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731495, 37.210701, 27.915419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346388, 0.285764, -0.893507,
		0.099686, -0.935867, -0.337958,
		-0.932779, -0.206135, 0.295686,
		41.451660, 37.148861, 28.004124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719265, 36.904522, 27.232855>,  <42.104607, 37.293156, 27.797144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719265, 36.904522, 27.232855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.412033, 37.006725, 27.467726>,  <41.227695, 37.068047, 27.608648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.412033, 37.006725, 27.467726>,  <41.719265, 36.904522, 27.232855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412033, 37.006725, 27.467726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518368, 0.290282, -0.804383,
		-0.375971, -0.922200, -0.090512,
		-0.768076, 0.255506, 0.587176,
		41.181610, 37.083378, 27.643879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138039, 36.539669, 27.078638>,  <41.719265, 36.904522, 27.232855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138039, 36.539669, 27.078638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.986454, 36.855297, 27.272032>,  <40.895504, 37.044674, 27.388067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.986454, 36.855297, 27.272032>,  <41.138039, 36.539669, 27.078638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986454, 36.855297, 27.272032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558344, 0.221688, -0.799442,
		-0.738000, -0.572903, 0.356564,
		-0.378957, 0.789073, 0.483483,
		40.872768, 37.092018, 27.417076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389420, 36.477356, 27.059393>,  <41.138039, 36.539669, 27.078638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389420, 36.477356, 27.059393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.493576, 36.859592, 27.114576>,  <40.556072, 37.088936, 27.147686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.493576, 36.859592, 27.114576>,  <40.389420, 36.477356, 27.059393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493576, 36.859592, 27.114576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618529, 0.274822, -0.736135,
		-0.741362, 0.106353, 0.662625,
		0.260394, 0.955595, 0.137960,
		40.571693, 37.146271, 27.155964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761948, 36.817665, 26.925055>,  <40.389420, 36.477356, 27.059393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761948, 36.817665, 26.925055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.035576, 37.109329, 26.932858>,  <40.199753, 37.284328, 26.937540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.035576, 37.109329, 26.932858>,  <39.761948, 36.817665, 26.925055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035576, 37.109329, 26.932858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479574, 0.469748, -0.741179,
		-0.549600, 0.497661, 0.671024,
		0.684068, 0.729157, 0.019508,
		40.240795, 37.328075, 26.938709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471291, 37.426750, 26.862724>,  <39.761948, 36.817665, 26.925055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471291, 37.426750, 26.862724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.839668, 37.533295, 26.748940>,  <40.060696, 37.597221, 26.680668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.839668, 37.533295, 26.748940>,  <39.471291, 37.426750, 26.862724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839668, 37.533295, 26.748940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382840, 0.481967, -0.788125,
		-0.072827, 0.834720, 0.545837,
		0.920940, 0.266365, -0.284464,
		40.115952, 37.613205, 26.663601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409534, 38.141174, 26.599449>,  <39.471291, 37.426750, 26.862724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409534, 38.141174, 26.599449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.728477, 37.964565, 26.434879>,  <39.919846, 37.858601, 26.336136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.728477, 37.964565, 26.434879>,  <39.409534, 38.141174, 26.599449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728477, 37.964565, 26.434879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287082, 0.322163, -0.902106,
		0.530846, 0.837418, 0.130127,
		0.797362, -0.441522, -0.411427,
		39.967686, 37.832108, 26.311451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600117, 38.645420, 26.097040>,  <39.409534, 38.141174, 26.599449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600117, 38.645420, 26.097040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.821110, 38.329613, 25.990141>,  <39.953705, 38.140129, 25.926001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.821110, 38.329613, 25.990141>,  <39.600117, 38.645420, 26.097040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821110, 38.329613, 25.990141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035547, 0.342654, -0.938789,
		0.832764, 0.509168, 0.217376,
		0.552486, -0.789517, -0.267250,
		39.986855, 38.092758, 25.909966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147507, 38.877296, 25.614326>,  <39.600117, 38.645420, 26.097040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147507, 38.877296, 25.614326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039738, 38.495644, 25.562107>,  <39.975075, 38.266651, 25.530775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039738, 38.495644, 25.562107>,  <40.147507, 38.877296, 25.614326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039738, 38.495644, 25.562107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237516, 0.197211, -0.951154,
		0.933273, -0.225254, -0.279754,
		-0.269422, -0.954132, -0.130550,
		39.958912, 38.209404, 25.522942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415375, 38.746944, 24.978395>,  <40.147507, 38.877296, 25.614326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415375, 38.746944, 24.978395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.158737, 38.452602, 25.064991>,  <40.004753, 38.275997, 25.116949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.158737, 38.452602, 25.064991>,  <40.415375, 38.746944, 24.978395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158737, 38.452602, 25.064991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303523, -0.015640, -0.952696,
		0.704434, -0.676956, -0.213315,
		-0.641597, -0.735857, 0.216490,
		39.966259, 38.231846, 25.129938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372070, 38.407043, 24.351549>,  <40.415375, 38.746944, 24.978395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372070, 38.407043, 24.351549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054321, 38.239021, 24.527060>,  <39.863670, 38.138210, 24.632366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054321, 38.239021, 24.527060>,  <40.372070, 38.407043, 24.351549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054321, 38.239021, 24.527060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495338, 0.029858, -0.868187,
		0.351585, -0.907008, -0.231787,
		-0.794373, -0.420055, 0.438778,
		39.816010, 38.113007, 24.658693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150162, 37.682709, 24.038015>,  <40.372070, 38.407043, 24.351549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150162, 37.682709, 24.038015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.838345, 37.838844, 24.233950>,  <39.651253, 37.932526, 24.351511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.838345, 37.838844, 24.233950>,  <40.150162, 37.682709, 24.038015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838345, 37.838844, 24.233950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543753, -0.033606, -0.838572,
		-0.310871, -0.920055, 0.238449,
		-0.779546, 0.390345, 0.489835,
		39.604481, 37.955948, 24.380901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539223, 37.339497, 23.826803>,  <40.150162, 37.682709, 24.038015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539223, 37.339497, 23.826803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.396721, 37.691582, 23.952217>,  <39.311218, 37.902832, 24.027466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.396721, 37.691582, 23.952217>,  <39.539223, 37.339497, 23.826803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396721, 37.691582, 23.952217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693665, -0.024326, -0.719887,
		-0.626027, -0.473953, 0.619240,
		-0.356256, 0.880214, 0.313536,
		39.289845, 37.955647, 24.046278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.809799, 37.347988, 23.711004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885693, 37.733498, 23.785992>,  <38.931229, 37.964802, 23.830984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885693, 37.733498, 23.785992>,  <38.809799, 37.347988, 23.711004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885693, 37.733498, 23.785992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481049, 0.257702, -0.837963,
		-0.855916, 0.068809, 0.512516,
		0.189736, 0.963771, 0.187471,
		38.942612, 38.022629, 23.842234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165340, 37.814533, 23.513504>,  <38.809799, 37.347988, 23.711004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165340, 37.814533, 23.513504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497818, 38.036915, 23.511312>,  <38.697304, 38.170345, 23.509998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497818, 38.036915, 23.511312>,  <38.165340, 37.814533, 23.513504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497818, 38.036915, 23.511312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348530, 0.513346, -0.784221,
		-0.433182, 0.653748, 0.620457,
		0.831192, 0.555958, -0.005479,
		38.747177, 38.203701, 23.509668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866642, 38.516525, 23.193291>,  <38.165340, 37.814533, 23.513504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866642, 38.516525, 23.193291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266037, 38.525700, 23.173325>,  <38.505676, 38.531204, 23.161345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266037, 38.525700, 23.173325>,  <37.866642, 38.516525, 23.193291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266037, 38.525700, 23.173325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054927, 0.432906, -0.899764,
		0.000969, 0.901147, 0.433512,
		0.998490, 0.022940, -0.049916,
		38.565582, 38.532581, 23.158350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095348, 39.251694, 23.076260>,  <37.866642, 38.516525, 23.193291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095348, 39.251694, 23.076260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371490, 38.988663, 22.955591>,  <38.537174, 38.830845, 22.883190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371490, 38.988663, 22.955591>,  <38.095348, 39.251694, 23.076260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371490, 38.988663, 22.955591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054468, 0.368551, -0.928010,
		0.721422, 0.657084, 0.218612,
		0.690351, -0.657579, -0.301671,
		38.578594, 38.791389, 22.865089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331661, 39.533237, 22.446484>,  <38.095348, 39.251694, 23.076260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331661, 39.533237, 22.446484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475986, 39.162502, 22.404934>,  <38.562580, 38.940063, 22.380005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475986, 39.162502, 22.404934>,  <38.331661, 39.533237, 22.446484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475986, 39.162502, 22.404934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088567, 0.144925, -0.985471,
		0.928423, 0.346371, 0.134378,
		0.360813, -0.926836, -0.103875,
		38.584229, 38.884453, 22.373772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959717, 39.590675, 22.166027>,  <38.331661, 39.533237, 22.446484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959717, 39.590675, 22.166027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.859310, 39.218842, 22.058050>,  <38.799068, 38.995743, 21.993263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.859310, 39.218842, 22.058050>,  <38.959717, 39.590675, 22.166027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859310, 39.218842, 22.058050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116120, 0.305774, -0.944997,
		0.960994, -0.205860, -0.184696,
		-0.251013, -0.929583, -0.269943,
		38.784008, 38.939968, 21.977068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399601, 39.396072, 21.485922>,  <38.959717, 39.590675, 22.166027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399601, 39.396072, 21.485922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063179, 39.181332, 21.512539>,  <38.861328, 39.052486, 21.528509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063179, 39.181332, 21.512539>,  <39.399601, 39.396072, 21.485922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063179, 39.181332, 21.512539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207214, 0.206089, -0.956342,
		0.499696, -0.818121, -0.284574,
		-0.841051, -0.536848, 0.066545,
		38.810863, 39.020279, 21.532503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483215, 38.960007, 21.065226>,  <39.399601, 39.396072, 21.485922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483215, 38.960007, 21.065226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087616, 38.949871, 21.123514>,  <38.850254, 38.943790, 21.158487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087616, 38.949871, 21.123514>,  <39.483215, 38.960007, 21.065226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087616, 38.949871, 21.123514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147827, 0.201716, -0.968224,
		-0.004858, -0.979116, -0.203244,
		-0.989001, -0.025341, 0.145719,
		38.790916, 38.942268, 21.167231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182507, 38.636093, 20.435600>,  <39.483215, 38.960007, 21.065226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182507, 38.636093, 20.435600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879181, 38.838528, 20.599960>,  <38.697186, 38.959988, 20.698576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879181, 38.838528, 20.599960>,  <39.182507, 38.636093, 20.435600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879181, 38.838528, 20.599960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312514, 0.270944, -0.910453,
		-0.572101, -0.818818, -0.047300,
		-0.758311, 0.506089, 0.410899,
		38.651688, 38.990353, 20.723230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551540, 38.484818, 20.065138>,  <39.182507, 38.636093, 20.435600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551540, 38.484818, 20.065138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.446358, 38.822350, 20.252247>,  <38.383247, 39.024868, 20.364513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.446358, 38.822350, 20.252247>,  <38.551540, 38.484818, 20.065138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446358, 38.822350, 20.252247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420629, 0.336068, -0.842692,
		-0.868290, -0.418347, 0.266568,
		-0.262952, 0.843827, 0.467773,
		38.367474, 39.075497, 20.392578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937180, 38.755791, 19.659801>,  <38.551540, 38.484818, 20.065138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937180, 38.755791, 19.659801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044563, 39.074940, 19.875698>,  <38.108994, 39.266430, 20.005236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044563, 39.074940, 19.875698>,  <37.937180, 38.755791, 19.659801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044563, 39.074940, 19.875698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297107, 0.601578, -0.741506,
		-0.916327, 0.038706, 0.398556,
		0.268463, 0.797876, 0.539742,
		38.125103, 39.314304, 20.037621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345829, 39.175137, 19.710325>,  <37.937180, 38.755791, 19.659801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345829, 39.175137, 19.710325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.668491, 39.406197, 19.760328>,  <37.862087, 39.544834, 19.790331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.668491, 39.406197, 19.760328>,  <37.345829, 39.175137, 19.710325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668491, 39.406197, 19.760328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317350, 0.601772, -0.732912,
		-0.498593, 0.551535, 0.668740,
		0.806656, 0.577649, 0.125010,
		37.910488, 39.579491, 19.797831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138096, 39.808723, 19.711195>,  <37.345829, 39.175137, 19.710325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138096, 39.808723, 19.711195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520893, 39.858753, 19.606487>,  <37.750572, 39.888771, 19.543663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520893, 39.858753, 19.606487>,  <37.138096, 39.808723, 19.711195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520893, 39.858753, 19.606487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272573, 0.696633, -0.663632,
		0.099354, 0.706441, 0.700764,
		0.956992, 0.125075, -0.261769,
		37.807991, 39.896275, 19.527956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073891, 40.406853, 19.414852>,  <37.138096, 39.808723, 19.711195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073891, 40.406853, 19.414852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.450722, 40.310314, 19.321688>,  <37.676819, 40.252392, 19.265789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.450722, 40.310314, 19.321688>,  <37.073891, 40.406853, 19.414852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450722, 40.310314, 19.321688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077530, 0.832312, -0.548859,
		0.326319, 0.499008, 0.802812,
		0.942075, -0.241345, -0.232911,
		37.733345, 40.237911, 19.251814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532169, 40.995155, 19.567545>,  <37.073891, 40.406853, 19.414852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532169, 40.995155, 19.567545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702271, 40.759399, 19.292801>,  <37.804329, 40.617947, 19.127954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702271, 40.759399, 19.292801>,  <37.532169, 40.995155, 19.567545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702271, 40.759399, 19.292801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097839, 0.784389, -0.612504,
		0.899772, 0.193265, 0.391227,
		0.425250, -0.589392, -0.686862,
		37.829845, 40.582581, 19.086742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042984, 41.391052, 19.324707>,  <37.532169, 40.995155, 19.567545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042984, 41.391052, 19.324707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007919, 41.107323, 19.044945>,  <37.986881, 40.937084, 18.877087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007919, 41.107323, 19.044945>,  <38.042984, 41.391052, 19.324707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007919, 41.107323, 19.044945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259008, 0.661731, -0.703582,
		0.961889, -0.242828, 0.125713,
		-0.087661, -0.709328, -0.699406,
		37.981621, 40.894524, 18.835123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727829, 41.379299, 18.890091>,  <38.042984, 41.391052, 19.324707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727829, 41.379299, 18.890091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407108, 41.235435, 18.699196>,  <38.214676, 41.149117, 18.584660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407108, 41.235435, 18.699196>,  <38.727829, 41.379299, 18.890091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407108, 41.235435, 18.699196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103006, 0.703474, -0.703217,
		0.588643, -0.613000, -0.527001,
		-0.801804, -0.359659, -0.477237,
		38.166569, 41.127537, 18.556025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900948, 41.535774, 18.218649>,  <38.727829, 41.379299, 18.890091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900948, 41.535774, 18.218649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.512051, 41.445545, 18.193813>,  <38.278713, 41.391407, 18.178911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.512051, 41.445545, 18.193813>,  <38.900948, 41.535774, 18.218649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512051, 41.445545, 18.193813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127539, 0.733465, -0.667655,
		0.196147, -0.641205, -0.741877,
		-0.972245, -0.225577, -0.062088,
		38.220379, 41.377872, 18.175186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792881, 41.491600, 17.481846>,  <38.900948, 41.535774, 18.218649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792881, 41.491600, 17.481846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456604, 41.573479, 17.682381>,  <38.254837, 41.622608, 17.802702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456604, 41.573479, 17.682381>,  <38.792881, 41.491600, 17.481846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456604, 41.573479, 17.682381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158537, 0.792197, -0.589314,
		-0.517789, -0.574911, -0.633539,
		-0.840690, 0.204701, 0.501336,
		38.204395, 41.634888, 17.832781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431980, 41.745800, 16.959024>,  <38.792881, 41.491600, 17.481846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431980, 41.745800, 16.959024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.225960, 41.870773, 17.278299>,  <38.102348, 41.945759, 17.469864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.225960, 41.870773, 17.278299>,  <38.431980, 41.745800, 16.959024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225960, 41.870773, 17.278299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440295, 0.702528, -0.559102,
		-0.735431, -0.639406, -0.224277,
		-0.515054, 0.312433, 0.798189,
		38.071442, 41.964504, 17.517756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866543, 41.945271, 16.631777>,  <38.431980, 41.745800, 16.959024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866543, 41.945271, 16.631777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888962, 42.147141, 16.976374>,  <37.902412, 42.268261, 17.183132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888962, 42.147141, 16.976374>,  <37.866543, 41.945271, 16.631777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888962, 42.147141, 16.976374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384147, 0.807325, -0.447948,
		-0.921569, -0.305831, 0.239119,
		0.056050, 0.504671, 0.861490,
		37.905777, 42.298542, 17.234821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179771, 42.288445, 16.648451>,  <37.866543, 41.945271, 16.631777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179771, 42.288445, 16.648451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378021, 42.487579, 16.933130>,  <37.496971, 42.607059, 17.103937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378021, 42.487579, 16.933130>,  <37.179771, 42.288445, 16.648451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378021, 42.487579, 16.933130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420898, 0.854447, -0.304575,
		-0.759737, -0.148598, 0.633023,
		0.495626, 0.497835, 0.711699,
		37.526711, 42.636929, 17.146641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497696, 42.407940, 16.410587>,  <37.179771, 42.288445, 16.648451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497696, 42.407940, 16.410587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509575, 42.145626, 16.108841>,  <36.516701, 41.988239, 15.927794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509575, 42.145626, 16.108841>,  <36.497696, 42.407940, 16.410587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509575, 42.145626, 16.108841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712130, 0.515711, -0.476355,
		0.701419, 0.551352, -0.451688,
		0.029699, -0.655785, -0.754364,
		36.518486, 41.948891, 15.882532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099438, 43.021954, 16.478199>,  <36.497696, 42.407940, 16.410587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099438, 43.021954, 16.478199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.704979, 43.085468, 16.459000>,  <35.468304, 43.123577, 16.447479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.704979, 43.085468, 16.459000>,  <36.099438, 43.021954, 16.478199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704979, 43.085468, 16.459000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111266, -0.418568, 0.901344,
		0.123028, 0.894197, 0.430437,
		-0.986146, 0.158783, -0.047998,
		35.409134, 43.133102, 16.444601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902988, 43.291134, 17.057877>,  <36.099438, 43.021954, 16.478199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902988, 43.291134, 17.057877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555344, 43.144035, 16.925568>,  <35.346756, 43.055779, 16.846182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555344, 43.144035, 16.925568>,  <35.902988, 43.291134, 17.057877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555344, 43.144035, 16.925568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107845, -0.511766, 0.852329,
		-0.482719, 0.776440, 0.405121,
		-0.869110, -0.367745, -0.330774,
		35.294609, 43.033710, 16.826336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253178, 43.492432, 17.484428>,  <35.902988, 43.291134, 17.057877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253178, 43.492432, 17.484428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.135693, 43.167797, 17.282413>,  <35.065201, 42.973015, 17.161203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.135693, 43.167797, 17.282413>,  <35.253178, 43.492432, 17.484428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135693, 43.167797, 17.282413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163760, -0.477810, 0.863064,
		-0.941763, 0.336195, 0.007432,
		-0.293709, -0.811585, -0.505039,
		35.047581, 42.924320, 17.130901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555801, 43.320667, 17.788002>,  <35.253178, 43.492432, 17.484428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555801, 43.320667, 17.788002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691345, 42.987438, 17.613110>,  <34.772671, 42.787502, 17.508175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.691345, 42.987438, 17.613110>,  <34.555801, 43.320667, 17.788002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691345, 42.987438, 17.613110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184327, -0.514504, 0.837442,
		-0.922603, -0.203183, -0.327903,
		0.338861, -0.833068, -0.437230,
		34.793003, 42.737518, 17.481941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059757, 42.789822, 17.953461>,  <34.555801, 43.320667, 17.788002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059757, 42.789822, 17.953461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.359646, 42.562008, 17.818670>,  <34.539577, 42.425320, 17.737797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.359646, 42.562008, 17.818670>,  <34.059757, 42.789822, 17.953461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359646, 42.562008, 17.818670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295445, -0.743715, 0.599667,
		-0.592145, -0.350024, -0.725843,
		0.749717, -0.569536, -0.336974,
		34.584560, 42.391148, 17.717577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857868, 42.133251, 18.016455>,  <34.059757, 42.789822, 17.953461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857868, 42.133251, 18.016455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251789, 42.063816, 18.014599>,  <34.488144, 42.022156, 18.013485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251789, 42.063816, 18.014599>,  <33.857868, 42.133251, 18.016455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251789, 42.063816, 18.014599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122815, -0.715136, 0.688111,
		-0.122770, -0.677086, -0.725591,
		0.984807, -0.173592, -0.004641,
		34.547230, 42.011738, 18.013206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042835, 41.408005, 18.047043>,  <33.857868, 42.133251, 18.016455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042835, 41.408005, 18.047043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405186, 41.530506, 18.164068>,  <34.622597, 41.604008, 18.234283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405186, 41.530506, 18.164068>,  <34.042835, 41.408005, 18.047043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405186, 41.530506, 18.164068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058462, -0.774564, 0.629788,
		0.419484, -0.553407, -0.719565,
		0.905878, 0.306253, 0.292563,
		34.676949, 41.622383, 18.251837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424221, 40.809517, 17.940130>,  <34.042835, 41.408005, 18.047043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424221, 40.809517, 17.940130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610657, 41.063938, 18.186119>,  <34.722519, 41.216591, 18.333714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610657, 41.063938, 18.186119>,  <34.424221, 40.809517, 17.940130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610657, 41.063938, 18.186119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075666, -0.721203, 0.688579,
		0.881494, -0.274409, -0.384275,
		0.466092, 0.636055, 0.614973,
		34.750484, 41.254753, 18.370611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123848, 40.559937, 18.284893>,  <34.424221, 40.809517, 17.940130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123848, 40.559937, 18.284893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018307, 40.844131, 18.545841>,  <34.954983, 41.014648, 18.702410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018307, 40.844131, 18.545841>,  <35.123848, 40.559937, 18.284893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018307, 40.844131, 18.545841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366189, -0.551920, 0.749193,
		0.892349, 0.436568, -0.114546,
		-0.263854, 0.710487, 0.652372,
		34.939152, 41.057278, 18.741552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704208, 40.661758, 18.673576>,  <35.123848, 40.559937, 18.284893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704208, 40.661758, 18.673576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410812, 40.796391, 18.909779>,  <35.234776, 40.877171, 19.051500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410812, 40.796391, 18.909779>,  <35.704208, 40.661758, 18.673576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410812, 40.796391, 18.909779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342620, -0.567238, 0.748901,
		0.587025, 0.751634, 0.300746,
		-0.733494, 0.336582, 0.590507,
		35.190765, 40.897366, 19.086931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064373, 40.912411, 19.240562>,  <35.704208, 40.661758, 18.673576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064373, 40.912411, 19.240562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695343, 40.833118, 19.372961>,  <35.473927, 40.785545, 19.452400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695343, 40.833118, 19.372961>,  <36.064373, 40.912411, 19.240562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695343, 40.833118, 19.372961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385772, -0.486796, 0.783716,
		0.005775, 0.850727, 0.525576,
		-0.922576, -0.198226, 0.330997,
		35.418571, 40.773651, 19.472260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170811, 40.888634, 19.972174>,  <36.064373, 40.912411, 19.240562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170811, 40.888634, 19.972174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821735, 40.704662, 19.906593>,  <35.612289, 40.594280, 19.867245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821735, 40.704662, 19.906593>,  <36.170811, 40.888634, 19.972174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821735, 40.704662, 19.906593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213088, -0.660846, 0.719636,
		-0.439329, 0.593081, 0.674718,
		-0.872687, -0.459932, -0.163950,
		35.559929, 40.566681, 19.857409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973347, 40.635609, 20.572618>,  <36.170811, 40.888634, 19.972174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973347, 40.635609, 20.572618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744457, 40.413239, 20.331453>,  <35.607124, 40.279816, 20.186754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744457, 40.413239, 20.331453>,  <35.973347, 40.635609, 20.572618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744457, 40.413239, 20.331453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079927, -0.769479, 0.633651,
		-0.816194, 0.314401, 0.484747,
		-0.572223, -0.555926, -0.602915,
		35.572792, 40.246460, 20.150579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571117, 40.265358, 21.015007>,  <35.973347, 40.635609, 20.572618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571117, 40.265358, 21.015007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540604, 40.058804, 20.673826>,  <35.522293, 39.934872, 20.469118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540604, 40.058804, 20.673826>,  <35.571117, 40.265358, 21.015007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540604, 40.058804, 20.673826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055109, -0.856321, 0.513494,
		-0.995562, -0.007832, 0.093785,
		-0.076288, -0.516384, -0.852952,
		35.517715, 39.903889, 20.417940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028687, 39.819550, 21.143410>,  <35.571117, 40.265358, 21.015007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028687, 39.819550, 21.143410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.279526, 39.683514, 20.863100>,  <35.430031, 39.601891, 20.694914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.279526, 39.683514, 20.863100>,  <35.028687, 39.819550, 21.143410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279526, 39.683514, 20.863100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148315, -0.831059, 0.536044,
		-0.764687, -0.440089, -0.470717,
		0.627101, -0.340092, -0.700772,
		35.467655, 39.581486, 20.652868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961090, 39.002369, 21.227270>,  <35.028687, 39.819550, 21.143410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961090, 39.002369, 21.227270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295197, 39.040569, 21.010672>,  <35.495659, 39.063488, 20.880713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295197, 39.040569, 21.010672>,  <34.961090, 39.002369, 21.227270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295197, 39.040569, 21.010672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381916, -0.809246, 0.446387,
		-0.395573, -0.579656, -0.712405,
		0.835262, 0.095501, -0.541496,
		35.545776, 39.069218, 20.848223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108177, 38.335800, 20.983049>,  <34.961090, 39.002369, 21.227270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108177, 38.335800, 20.983049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453991, 38.535912, 20.963829>,  <35.661480, 38.655979, 20.952297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453991, 38.535912, 20.963829>,  <35.108177, 38.335800, 20.983049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453991, 38.535912, 20.963829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499833, -0.845895, 0.186090,
		0.052452, -0.184897, -0.981357,
		0.864532, 0.500275, -0.048048,
		35.713352, 38.685993, 20.949415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612652, 37.964069, 20.526825>,  <35.108177, 38.335800, 20.983049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612652, 37.964069, 20.526825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824432, 38.187206, 20.782480>,  <35.951500, 38.321087, 20.935873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824432, 38.187206, 20.782480>,  <35.612652, 37.964069, 20.526825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824432, 38.187206, 20.782480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541462, -0.802190, 0.251613,
		0.653071, 0.212853, -0.726768,
		0.529450, 0.557839, 0.639139,
		35.983269, 38.354557, 20.974222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198776, 37.601517, 20.599533>,  <35.612652, 37.964069, 20.526825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198776, 37.601517, 20.599533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227966, 37.840248, 20.919149>,  <36.245480, 37.983486, 21.110920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227966, 37.840248, 20.919149>,  <36.198776, 37.601517, 20.599533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227966, 37.840248, 20.919149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420062, -0.745041, 0.518133,
		0.904556, 0.297836, -0.305076,
		0.072976, 0.596832, 0.799041,
		36.249859, 38.019299, 21.158861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831211, 37.409813, 20.963745>,  <36.198776, 37.601517, 20.599533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831211, 37.409813, 20.963745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653568, 37.621834, 21.252691>,  <36.546982, 37.749046, 21.426060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653568, 37.621834, 21.252691>,  <36.831211, 37.409813, 20.963745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653568, 37.621834, 21.252691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507032, -0.516041, 0.690377,
		0.738704, 0.672867, -0.039571,
		-0.444111, 0.530048, 0.722367,
		36.520336, 37.780849, 21.469400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322971, 37.638023, 21.523647>,  <36.831211, 37.409813, 20.963745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322971, 37.638023, 21.523647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.963352, 37.646343, 21.698589>,  <36.747581, 37.651337, 21.803555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.963352, 37.646343, 21.698589>,  <37.322971, 37.638023, 21.523647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963352, 37.646343, 21.698589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370050, -0.497823, 0.784369,
		0.234044, 0.867029, 0.439869,
		-0.899048, 0.020803, 0.437356,
		36.693638, 37.652584, 21.829796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.058086, 37.293926, 25.909826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720818, 37.482140, 26.013868>,  <40.518456, 37.595070, 26.076294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720818, 37.482140, 26.013868>,  <41.058086, 37.293926, 25.909826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720818, 37.482140, 26.013868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384688, 0.190026, 0.903275,
		0.375597, 0.861676, -0.341234,
		-0.843174, 0.470536, 0.260104,
		40.467865, 37.623299, 26.091900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271797, 37.898262, 26.236217>,  <41.058086, 37.293926, 25.909826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271797, 37.898262, 26.236217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.910313, 37.819359, 26.388216>,  <40.693420, 37.772018, 26.479416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.910313, 37.819359, 26.388216>,  <41.271797, 37.898262, 26.236217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910313, 37.819359, 26.388216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379383, 0.042418, 0.924267,
		-0.198437, 0.979434, 0.036502,
		-0.903710, -0.197257, 0.379998,
		40.639198, 37.760181, 26.502214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221920, 38.219116, 26.924271>,  <41.271797, 37.898262, 26.236217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221920, 38.219116, 26.924271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.901470, 37.980030, 26.936535>,  <40.709202, 37.836578, 26.943893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.901470, 37.980030, 26.936535>,  <41.221920, 38.219116, 26.924271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901470, 37.980030, 26.936535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190621, -0.206257, 0.959751,
		-0.567332, 0.774723, 0.279174,
		-0.801123, -0.597714, 0.030662,
		40.661133, 37.800716, 26.945734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851406, 38.404354, 27.555513>,  <41.221920, 38.219116, 26.924271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851406, 38.404354, 27.555513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.736977, 38.040462, 27.435139>,  <40.668320, 37.822128, 27.362915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.736977, 38.040462, 27.435139>,  <40.851406, 38.404354, 27.555513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736977, 38.040462, 27.435139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176984, -0.358821, 0.916474,
		-0.941722, 0.208915, 0.263655,
		-0.286070, -0.909726, -0.300936,
		40.651157, 37.767544, 27.344858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508156, 38.144211, 28.062727>,  <40.851406, 38.404354, 27.555513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508156, 38.144211, 28.062727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621864, 37.823723, 27.852112>,  <40.690090, 37.631432, 27.725742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621864, 37.823723, 27.852112>,  <40.508156, 38.144211, 28.062727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621864, 37.823723, 27.852112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357941, -0.420793, 0.833554,
		-0.889420, -0.425426, 0.167168,
		0.284272, -0.801215, -0.526539,
		40.707146, 37.583359, 27.694151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334229, 37.598305, 28.494978>,  <40.508156, 38.144211, 28.062727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334229, 37.598305, 28.494978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.597450, 37.451382, 28.232056>,  <40.755383, 37.363228, 28.074303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.597450, 37.451382, 28.232056>,  <40.334229, 37.598305, 28.494978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597450, 37.451382, 28.232056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328384, -0.645558, 0.689507,
		-0.677596, -0.669577, -0.304188,
		0.658049, -0.367316, -0.657305,
		40.794865, 37.341187, 28.034864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340134, 36.866634, 28.635326>,  <40.334229, 37.598305, 28.494978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340134, 36.866634, 28.635326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.653172, 36.919754, 28.392046>,  <40.840996, 36.951626, 28.246078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.653172, 36.919754, 28.392046>,  <40.340134, 36.866634, 28.635326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653172, 36.919754, 28.392046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560554, -0.575275, 0.595683,
		-0.270778, -0.807109, -0.524648,
		0.782598, 0.132795, -0.608199,
		40.887951, 36.959591, 28.209587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642551, 36.181286, 28.292873>,  <40.340134, 36.866634, 28.635326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642551, 36.181286, 28.292873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.930725, 36.457603, 28.317486>,  <41.103630, 36.623394, 28.332253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.930725, 36.457603, 28.317486>,  <40.642551, 36.181286, 28.292873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930725, 36.457603, 28.317486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552770, -0.625531, 0.550596,
		0.418837, -0.362654, -0.832501,
		0.720431, 0.690792, 0.061532,
		41.146854, 36.664841, 28.335945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176655, 35.847107, 28.128756>,  <40.642551, 36.181286, 28.292873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176655, 35.847107, 28.128756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.322372, 36.165321, 28.322424>,  <41.409801, 36.356251, 28.438625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.322372, 36.165321, 28.322424>,  <41.176655, 35.847107, 28.128756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322372, 36.165321, 28.322424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584861, -0.600012, 0.545823,
		0.724728, 0.084335, -0.683855,
		0.364289, 0.795533, 0.484170,
		41.431660, 36.403980, 28.467674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938824, 35.746632, 28.251989>,  <41.176655, 35.847107, 28.128756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938824, 35.746632, 28.251989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.813023, 36.015938, 28.519663>,  <41.737541, 36.177521, 28.680267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.813023, 36.015938, 28.519663>,  <41.938824, 35.746632, 28.251989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813023, 36.015938, 28.519663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517497, -0.469383, 0.715455,
		0.795794, 0.571310, -0.200792,
		-0.314498, 0.673264, 0.669183,
		41.718674, 36.217918, 28.720417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541000, 35.890007, 28.607239>,  <41.938824, 35.746632, 28.251989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541000, 35.890007, 28.607239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.246758, 35.996899, 28.856226>,  <42.070210, 36.061031, 29.005619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.246758, 35.996899, 28.856226>,  <42.541000, 35.890007, 28.607239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246758, 35.996899, 28.856226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504457, -0.397186, 0.766659,
		0.452107, 0.877972, 0.157371,
		-0.735610, 0.267225, 0.622469,
		42.026073, 36.077065, 29.042967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897724, 36.266834, 29.287140>,  <42.541000, 35.890007, 28.607239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897724, 36.266834, 29.287140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527927, 36.146709, 29.381060>,  <42.306049, 36.074635, 29.437412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527927, 36.146709, 29.381060>,  <42.897724, 36.266834, 29.287140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527927, 36.146709, 29.381060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366652, -0.531926, 0.763296,
		-0.104332, 0.791749, 0.601870,
		-0.924490, -0.300314, 0.234800,
		42.250580, 36.056614, 29.451500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783913, 36.376522, 29.985209>,  <42.897724, 36.266834, 29.287140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783913, 36.376522, 29.985209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.568245, 36.069561, 29.846420>,  <42.438843, 35.885384, 29.763147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.568245, 36.069561, 29.846420>,  <42.783913, 36.376522, 29.985209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568245, 36.069561, 29.846420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244558, -0.536890, 0.807428,
		-0.805907, 0.350487, 0.477150,
		-0.539171, -0.767403, -0.346969,
		42.406494, 35.839340, 29.742329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536278, 36.180874, 30.749762>,  <42.783913, 36.376522, 29.985209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536278, 36.180874, 30.749762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.631367, 36.379818, 31.083496>,  <42.688419, 36.499184, 31.283737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.631367, 36.379818, 31.083496>,  <42.536278, 36.180874, 30.749762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631367, 36.379818, 31.083496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452428, 0.816791, -0.357996,
		-0.859533, -0.292373, 0.419191,
		0.237723, 0.497363, 0.834337,
		42.702682, 36.529026, 31.333797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923565, 36.111008, 31.140125>,  <42.536278, 36.180874, 30.749762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923565, 36.111008, 31.140125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825233, 36.299137, 31.479149>,  <41.766235, 36.412014, 31.682564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825233, 36.299137, 31.479149>,  <41.923565, 36.111008, 31.140125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825233, 36.299137, 31.479149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442552, 0.723480, -0.529835,
		-0.862388, -0.505340, 0.030289,
		-0.245833, 0.470328, 0.847560,
		41.751484, 36.440235, 31.733418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158375, 36.355934, 31.149130>,  <41.923565, 36.111008, 31.140125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158375, 36.355934, 31.149130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.307358, 36.573620, 31.449823>,  <41.396748, 36.704231, 31.630239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.307358, 36.573620, 31.449823>,  <41.158375, 36.355934, 31.149130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307358, 36.573620, 31.449823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624324, 0.746254, -0.230922,
		-0.686657, -0.383319, 0.617712,
		0.372453, 0.544217, 0.751736,
		41.419094, 36.736885, 31.675344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657524, 36.773331, 31.485888>,  <41.158375, 36.355934, 31.149130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657524, 36.773331, 31.485888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003716, 36.967495, 31.535393>,  <41.211430, 37.083992, 31.565096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003716, 36.967495, 31.535393>,  <40.657524, 36.773331, 31.485888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003716, 36.967495, 31.535393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427724, 0.844682, -0.321816,
		-0.260752, 0.225590, 0.938679,
		0.865483, 0.485409, 0.123762,
		41.263359, 37.113117, 31.572521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378716, 37.362041, 31.704357>,  <40.657524, 36.773331, 31.485888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378716, 37.362041, 31.704357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.752930, 37.439880, 31.586435>,  <40.977459, 37.486584, 31.515682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.752930, 37.439880, 31.586435>,  <40.378716, 37.362041, 31.704357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752930, 37.439880, 31.586435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296538, 0.886147, -0.356102,
		0.191942, 0.420566, 0.886726,
		0.935534, 0.194596, -0.294803,
		41.033588, 37.498260, 31.497995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555168, 38.056217, 31.907915>,  <40.378716, 37.362041, 31.704357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555168, 38.056217, 31.907915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.790226, 37.971786, 31.595474>,  <40.931259, 37.921127, 31.408009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.790226, 37.971786, 31.595474>,  <40.555168, 38.056217, 31.907915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790226, 37.971786, 31.595474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066960, 0.949377, -0.306921,
		0.806344, 0.232662, 0.543762,
		0.587644, -0.211074, -0.781103,
		40.966518, 37.908463, 31.361143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907330, 38.646263, 31.715757>,  <40.555168, 38.056217, 31.907915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907330, 38.646263, 31.715757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957726, 38.451752, 31.369888>,  <40.987965, 38.335045, 31.162367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957726, 38.451752, 31.369888>,  <40.907330, 38.646263, 31.715757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957726, 38.451752, 31.369888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096939, 0.861411, -0.498572,
		0.987284, 0.146635, 0.061389,
		0.125989, -0.486281, -0.864672,
		40.995522, 38.305866, 31.110487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932499, 39.268204, 31.361849>,  <40.907330, 38.646263, 31.715757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932499, 39.268204, 31.361849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.940174, 38.976177, 31.088604>,  <40.944778, 38.800961, 30.924658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.940174, 38.976177, 31.088604>,  <40.932499, 39.268204, 31.361849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940174, 38.976177, 31.088604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131147, 0.675496, -0.725607,
		0.991177, 0.103511, -0.082785,
		0.019188, -0.730062, -0.683112,
		40.945930, 38.757160, 30.883671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462139, 39.488228, 30.927635>,  <40.932499, 39.268204, 31.361849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462139, 39.488228, 30.927635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.206821, 39.256264, 30.725140>,  <41.053631, 39.117085, 30.603642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.206821, 39.256264, 30.725140>,  <41.462139, 39.488228, 30.927635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206821, 39.256264, 30.725140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075230, 0.701480, -0.708708,
		0.766106, -0.414281, -0.491379,
		-0.638297, -0.579911, -0.506241,
		41.015331, 39.082291, 30.573267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669476, 39.356747, 30.138357>,  <41.462139, 39.488228, 30.927635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669476, 39.356747, 30.138357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.274651, 39.299553, 30.167372>,  <41.037754, 39.265236, 30.184780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.274651, 39.299553, 30.167372>,  <41.669476, 39.356747, 30.138357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274651, 39.299553, 30.167372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153453, 0.711402, -0.685828,
		0.046461, -0.688086, -0.724140,
		-0.987063, -0.142986, 0.072537,
		40.978531, 39.256657, 30.189133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496597, 39.541492, 29.518547>,  <41.669476, 39.356747, 30.138357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496597, 39.541492, 29.518547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137184, 39.525684, 29.693396>,  <40.921535, 39.516201, 29.798304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137184, 39.525684, 29.693396>,  <41.496597, 39.541492, 29.518547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137184, 39.525684, 29.693396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355150, 0.650643, -0.671217,
		-0.257883, -0.758355, -0.598660,
		-0.898535, -0.039519, 0.437120,
		40.867622, 39.513828, 29.824532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007278, 39.565968, 28.994781>,  <41.496597, 39.541492, 29.518547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007278, 39.565968, 28.994781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738300, 39.608528, 29.287766>,  <40.576912, 39.634064, 29.463556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738300, 39.608528, 29.287766>,  <41.007278, 39.565968, 28.994781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738300, 39.608528, 29.287766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549074, 0.591891, -0.590070,
		-0.496322, -0.798964, -0.339590,
		-0.672445, 0.106405, 0.732459,
		40.536568, 39.640450, 29.507504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257816, 39.314468, 28.859329>,  <41.007278, 39.565968, 28.994781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257816, 39.314468, 28.859329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233562, 39.605991, 29.132141>,  <40.219009, 39.780903, 29.295828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233562, 39.605991, 29.132141>,  <40.257816, 39.314468, 28.859329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233562, 39.605991, 29.132141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564574, 0.538446, -0.625566,
		-0.823152, -0.422988, 0.378816,
		-0.060635, 0.728806, 0.682030,
		40.215370, 39.824635, 29.336750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573677, 39.509136, 28.886152>,  <40.257816, 39.314468, 28.859329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573677, 39.509136, 28.886152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820133, 39.801609, 29.003281>,  <39.968006, 39.977093, 29.073559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820133, 39.801609, 29.003281>,  <39.573677, 39.509136, 28.886152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820133, 39.801609, 29.003281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368608, 0.596234, -0.713185,
		-0.696056, 0.331488, 0.636885,
		0.616145, 0.731177, 0.292823,
		40.004978, 40.020962, 29.091127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180519, 40.134407, 29.011444>,  <39.573677, 39.509136, 28.886152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180519, 40.134407, 29.011444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555862, 40.265728, 28.968184>,  <39.781071, 40.344521, 28.942228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555862, 40.265728, 28.968184>,  <39.180519, 40.134407, 29.011444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555862, 40.265728, 28.968184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311140, 0.665963, -0.678001,
		-0.150565, 0.669860, 0.727061,
		0.938362, 0.328301, -0.108149,
		39.837372, 40.364220, 28.935740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697124, 40.703075, 29.381100>,  <39.180519, 40.134407, 29.011444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697124, 40.703075, 29.381100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.351349, 40.800362, 29.557091>,  <38.143883, 40.858734, 29.662685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.351349, 40.800362, 29.557091>,  <38.697124, 40.703075, 29.381100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351349, 40.800362, 29.557091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205713, -0.627426, 0.751012,
		0.458715, 0.739717, 0.492341,
		-0.864443, 0.243220, 0.439979,
		38.092014, 40.873329, 29.689085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796848, 41.027809, 30.111229>,  <38.697124, 40.703075, 29.381100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796848, 41.027809, 30.111229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.439289, 40.851776, 30.077133>,  <38.224754, 40.746155, 30.056677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.439289, 40.851776, 30.077133>,  <38.796848, 41.027809, 30.111229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439289, 40.851776, 30.077133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158603, -0.488358, 0.858109,
		-0.419269, 0.753545, 0.506343,
		-0.893901, -0.440086, -0.085238,
		38.171120, 40.719749, 30.051561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544632, 40.929234, 30.832972>,  <38.796848, 41.027809, 30.111229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544632, 40.929234, 30.832972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.249924, 40.732403, 30.647486>,  <38.073097, 40.614304, 30.536194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.249924, 40.732403, 30.647486>,  <38.544632, 40.929234, 30.832972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249924, 40.732403, 30.647486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170629, -0.528313, 0.831728,
		-0.654260, 0.691915, 0.305283,
		-0.736770, -0.492076, -0.463715,
		38.028893, 40.584782, 30.508371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940628, 40.886940, 31.315271>,  <38.544632, 40.929234, 30.832972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940628, 40.886940, 31.315271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.926071, 40.578632, 31.060841>,  <37.917336, 40.393650, 30.908182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.926071, 40.578632, 31.060841>,  <37.940628, 40.886940, 31.315271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926071, 40.578632, 31.060841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088035, -0.631553, 0.770319,
		-0.995452, 0.084034, -0.044869,
		-0.036396, -0.770766, -0.636079,
		37.915154, 40.347404, 30.870018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604874, 40.489563, 31.669876>,  <37.940628, 40.886940, 31.315271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604874, 40.489563, 31.669876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.742729, 40.239113, 31.390106>,  <37.825443, 40.088844, 31.222244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.742729, 40.239113, 31.390106>,  <37.604874, 40.489563, 31.669876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742729, 40.239113, 31.390106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085786, -0.720949, 0.687658,
		-0.934809, -0.296992, -0.194752,
		0.344635, -0.626122, -0.699427,
		37.846119, 40.051277, 31.180279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247135, 39.898460, 31.736792>,  <37.604874, 40.489563, 31.669876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247135, 39.898460, 31.736792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.601826, 39.814442, 31.572060>,  <37.814640, 39.764030, 31.473221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.601826, 39.814442, 31.572060>,  <37.247135, 39.898460, 31.736792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601826, 39.814442, 31.572060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222294, -0.587355, 0.778202,
		-0.405349, -0.781597, -0.474129,
		0.886723, -0.210047, -0.411829,
		37.867844, 39.751427, 31.448511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108707, 39.259468, 31.723763>,  <37.247135, 39.898460, 31.736792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108707, 39.259468, 31.723763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.497410, 39.347038, 31.688501>,  <37.730629, 39.399578, 31.667345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.497410, 39.347038, 31.688501>,  <37.108707, 39.259468, 31.723763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497410, 39.347038, 31.688501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204787, -0.596530, 0.776025,
		0.117304, -0.772156, -0.624512,
		0.971752, 0.218923, -0.088152,
		37.788937, 39.412716, 31.662056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411003, 38.570366, 31.610832>,  <37.108707, 39.259468, 31.723763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411003, 38.570366, 31.610832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.690369, 38.819664, 31.751568>,  <37.857986, 38.969242, 31.836010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.690369, 38.819664, 31.751568>,  <37.411003, 38.570366, 31.610832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690369, 38.819664, 31.751568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307326, -0.705135, 0.639011,
		0.646352, -0.338163, -0.684013,
		0.698411, 0.623242, 0.351839,
		37.899891, 39.006638, 31.857121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940182, 38.209148, 31.643288>,  <37.411003, 38.570366, 31.610832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940182, 38.209148, 31.643288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.995514, 38.501133, 31.911026>,  <38.028713, 38.676323, 32.071671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.995514, 38.501133, 31.911026>,  <37.940182, 38.209148, 31.643288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995514, 38.501133, 31.911026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128296, -0.683356, 0.718725,
		0.982041, -0.013548, -0.188181,
		0.138332, 0.729960, 0.669345,
		38.037014, 38.720119, 32.111828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499157, 37.875896, 32.084290>,  <37.940182, 38.209148, 31.643288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499157, 37.875896, 32.084290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.369045, 38.191322, 32.293045>,  <38.290977, 38.380577, 32.418297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.369045, 38.191322, 32.293045>,  <38.499157, 37.875896, 32.084290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369045, 38.191322, 32.293045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209735, -0.477990, 0.852958,
		0.922067, 0.386904, -0.009912,
		-0.325275, 0.788563, 0.521886,
		38.271461, 38.427891, 32.449612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859161, 37.803284, 32.562134>,  <38.499157, 37.875896, 32.084290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859161, 37.803284, 32.562134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.593658, 38.058113, 32.718880>,  <38.434357, 38.211010, 32.812927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.593658, 38.058113, 32.718880>,  <38.859161, 37.803284, 32.562134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593658, 38.058113, 32.718880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132547, -0.415439, 0.899912,
		0.736108, 0.649266, 0.191309,
		-0.663759, 0.637075, 0.391866,
		38.394531, 38.249237, 32.836441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209858, 38.183865, 33.079021>,  <38.859161, 37.803284, 32.562134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209858, 38.183865, 33.079021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.822594, 38.125053, 33.160065>,  <38.590237, 38.089767, 33.208691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.822594, 38.125053, 33.160065>,  <39.209858, 38.183865, 33.079021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822594, 38.125053, 33.160065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249884, -0.616163, 0.746927,
		0.015024, 0.773774, 0.633284,
		-0.968159, -0.147026, 0.202611,
		38.532146, 38.080944, 33.220848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.911682, 43.926144, 27.463139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573631, 43.723267, 27.395588>,  <37.370800, 43.601540, 27.355057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573631, 43.723267, 27.395588>,  <37.911682, 43.926144, 27.463139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573631, 43.723267, 27.395588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101382, -0.462253, 0.880933,
		-0.524863, 0.727380, 0.442083,
		-0.845127, -0.507189, -0.168876,
		37.320091, 43.571110, 27.344925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724514, 43.834610, 28.085772>,  <37.911682, 43.926144, 27.463139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724514, 43.834610, 28.085772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486820, 43.569248, 27.903879>,  <37.344204, 43.410030, 27.794743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486820, 43.569248, 27.903879>,  <37.724514, 43.834610, 28.085772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486820, 43.569248, 27.903879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095986, -0.619839, 0.778837,
		-0.798541, 0.419167, 0.432009,
		-0.594238, -0.663400, -0.454732,
		37.308548, 43.370228, 27.767460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188015, 43.612946, 28.548702>,  <37.724514, 43.834610, 28.085772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188015, 43.612946, 28.548702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212372, 43.314354, 28.283655>,  <37.226986, 43.135201, 28.124626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212372, 43.314354, 28.283655>,  <37.188015, 43.612946, 28.548702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212372, 43.314354, 28.283655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193579, -0.642414, 0.741506,
		-0.979193, -0.173425, 0.105382,
		0.060897, -0.746477, -0.662619,
		37.230640, 43.090412, 28.084869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790272, 43.090069, 28.974997>,  <37.188015, 43.612946, 28.548702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790272, 43.090069, 28.974997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986866, 42.907864, 28.678095>,  <37.104824, 42.798538, 28.499954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986866, 42.907864, 28.678095>,  <36.790272, 43.090069, 28.974997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986866, 42.907864, 28.678095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127642, -0.805419, 0.578798,
		-0.861480, -0.379215, -0.337709,
		0.491486, -0.455517, -0.742257,
		37.134312, 42.771210, 28.455418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511410, 42.461201, 28.951662>,  <36.790272, 43.090069, 28.974997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511410, 42.461201, 28.951662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869946, 42.421711, 28.778769>,  <37.085068, 42.398018, 28.675032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869946, 42.421711, 28.778769>,  <36.511410, 42.461201, 28.951662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869946, 42.421711, 28.778769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088039, -0.915848, 0.391755,
		-0.434535, -0.389199, -0.812221,
		0.896342, -0.098724, -0.432233,
		37.138847, 42.392094, 28.649099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449310, 41.755264, 28.829155>,  <36.511410, 42.461201, 28.951662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449310, 41.755264, 28.829155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828346, 41.880955, 28.806042>,  <37.055767, 41.956367, 28.792173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828346, 41.880955, 28.806042>,  <36.449310, 41.755264, 28.829155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828346, 41.880955, 28.806042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316951, -0.901779, 0.293832,
		0.040219, -0.296747, -0.954109,
		0.947589, 0.314223, -0.057785,
		37.112621, 41.975224, 28.788706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960442, 41.235466, 28.427496>,  <36.449310, 41.755264, 28.829155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960442, 41.235466, 28.427496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170277, 41.449867, 28.692076>,  <37.296177, 41.578506, 28.850822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170277, 41.449867, 28.692076>,  <36.960442, 41.235466, 28.427496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170277, 41.449867, 28.692076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468630, -0.830433, 0.301275,
		0.710772, 0.151931, -0.686818,
		0.524584, 0.536002, 0.661448,
		37.327652, 41.610668, 28.890511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551800, 40.834507, 28.528191>,  <36.960442, 41.235466, 28.427496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551800, 40.834507, 28.528191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594032, 41.111397, 28.813757>,  <37.619373, 41.277531, 28.985096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594032, 41.111397, 28.813757>,  <37.551800, 40.834507, 28.528191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594032, 41.111397, 28.813757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383005, -0.690849, 0.613217,
		0.917692, 0.208686, -0.338070,
		0.105586, 0.692227, 0.713914,
		37.625710, 41.319065, 29.027931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228527, 40.760330, 28.833069>,  <37.551800, 40.834507, 28.528191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228527, 40.760330, 28.833069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018635, 40.953175, 29.113705>,  <37.892700, 41.068882, 29.282085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018635, 40.953175, 29.113705>,  <38.228527, 40.760330, 28.833069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018635, 40.953175, 29.113705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415778, -0.574030, 0.705420,
		0.742822, 0.661863, 0.100764,
		-0.524733, 0.482106, 0.701590,
		37.861214, 41.097805, 29.324183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972240, 40.853378, 28.728575>,  <38.228527, 40.760330, 28.833069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972240, 40.853378, 28.728575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362000, 40.780663, 28.675646>,  <39.595856, 40.737034, 28.643888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362000, 40.780663, 28.675646>,  <38.972240, 40.853378, 28.728575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362000, 40.780663, 28.675646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031551, 0.472131, -0.880963,
		0.222620, 0.862581, 0.454307,
		0.974395, -0.181786, -0.132322,
		39.654320, 40.726128, 28.635950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283058, 41.488953, 28.583742>,  <38.972240, 40.853378, 28.728575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283058, 41.488953, 28.583742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528690, 41.219257, 28.419640>,  <39.676067, 41.057442, 28.321178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528690, 41.219257, 28.419640>,  <39.283058, 41.488953, 28.583742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528690, 41.219257, 28.419640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020838, 0.505778, -0.862412,
		0.788970, 0.538137, 0.296538,
		0.614078, -0.674238, -0.410257,
		39.712914, 41.016987, 28.296562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809647, 41.923401, 28.258408>,  <39.283058, 41.488953, 28.583742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809647, 41.923401, 28.258408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800278, 41.560169, 28.091150>,  <39.794659, 41.342232, 27.990795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800278, 41.560169, 28.091150>,  <39.809647, 41.923401, 28.258408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800278, 41.560169, 28.091150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115999, 0.412964, -0.903330,
		0.992973, -0.069660, 0.095665,
		-0.023420, -0.908079, -0.418142,
		39.793251, 41.287746, 27.965708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478909, 41.862389, 27.990871>,  <39.809647, 41.923401, 28.258408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478909, 41.862389, 27.990871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242241, 41.601025, 27.801983>,  <40.100243, 41.444206, 27.688650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242241, 41.601025, 27.801983>,  <40.478909, 41.862389, 27.990871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242241, 41.601025, 27.801983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186797, 0.458697, -0.868737,
		0.784245, -0.602211, -0.149341,
		-0.591665, -0.653406, -0.472222,
		40.064743, 41.405003, 27.660316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826794, 41.840710, 27.320372>,  <40.478909, 41.862389, 27.990871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826794, 41.840710, 27.320372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487358, 41.647594, 27.233835>,  <40.283695, 41.531723, 27.181913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487358, 41.647594, 27.233835>,  <40.826794, 41.840710, 27.320372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487358, 41.647594, 27.233835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007869, 0.397360, -0.917629,
		0.528989, -0.780395, -0.333397,
		-0.848592, -0.482793, -0.216340,
		40.232780, 41.502758, 27.168934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939835, 41.513126, 26.701174>,  <40.826794, 41.840710, 27.320372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939835, 41.513126, 26.701174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542492, 41.544029, 26.735308>,  <40.304089, 41.562572, 26.755787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542492, 41.544029, 26.735308>,  <40.939835, 41.513126, 26.701174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542492, 41.544029, 26.735308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047109, 0.403538, -0.913749,
		-0.105031, -0.911695, -0.397216,
		-0.993353, 0.077259, 0.085333,
		40.244488, 41.567207, 26.760908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629433, 41.270672, 26.134869>,  <40.939835, 41.513126, 26.701174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629433, 41.270672, 26.134869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350300, 41.508579, 26.294512>,  <40.182819, 41.651321, 26.390299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350300, 41.508579, 26.294512>,  <40.629433, 41.270672, 26.134869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350300, 41.508579, 26.294512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119223, 0.452986, -0.883510,
		-0.706271, -0.664123, -0.245197,
		-0.697830, 0.594765, 0.399109,
		40.140949, 41.687008, 26.414246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190052, 41.336075, 25.552568>,  <40.629433, 41.270672, 26.134869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190052, 41.336075, 25.552568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033249, 41.612583, 25.795376>,  <39.939167, 41.778488, 25.941061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033249, 41.612583, 25.795376>,  <40.190052, 41.336075, 25.552568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033249, 41.612583, 25.795376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294936, 0.530567, -0.794677,
		-0.871404, -0.490549, -0.004103,
		-0.392005, 0.691274, 0.607018,
		39.915646, 41.819965, 25.977482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468643, 41.397934, 25.312838>,  <40.190052, 41.336075, 25.552568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468643, 41.397934, 25.312838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535648, 41.735149, 25.517277>,  <39.575851, 41.937481, 25.639940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535648, 41.735149, 25.517277>,  <39.468643, 41.397934, 25.312838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535648, 41.735149, 25.517277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238553, 0.537676, -0.808701,
		-0.956574, 0.013541, 0.291175,
		0.167509, 0.843042, 0.511097,
		39.585899, 41.988064, 25.670607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899963, 41.850719, 25.342941>,  <39.468643, 41.397934, 25.312838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899963, 41.850719, 25.342941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211411, 42.096794, 25.392422>,  <39.398277, 42.244438, 25.422110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211411, 42.096794, 25.392422>,  <38.899963, 41.850719, 25.342941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211411, 42.096794, 25.392422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314622, 0.553292, -0.771285,
		-0.542930, 0.561614, 0.624353,
		0.778614, 0.615189, 0.123703,
		39.444996, 42.281349, 25.429533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602356, 42.521622, 25.243887>,  <38.899963, 41.850719, 25.342941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602356, 42.521622, 25.243887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994534, 42.585228, 25.197515>,  <39.229839, 42.623390, 25.169693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994534, 42.585228, 25.197515>,  <38.602356, 42.521622, 25.243887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994534, 42.585228, 25.197515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186186, 0.558859, -0.808091,
		-0.063709, 0.813875, 0.577537,
		0.980447, 0.159012, -0.115927,
		39.288666, 42.632931, 25.162737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698273, 43.237385, 25.160633>,  <38.602356, 42.521622, 25.243887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698273, 43.237385, 25.160633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042767, 43.097103, 25.013506>,  <39.249462, 43.012936, 24.925230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042767, 43.097103, 25.013506>,  <38.698273, 43.237385, 25.160633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042767, 43.097103, 25.013506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028939, 0.688730, -0.724441,
		0.507387, 0.634556, 0.583007,
		0.861232, -0.350700, -0.367816,
		39.301136, 42.991894, 24.903160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167164, 43.811676, 25.008236>,  <38.698273, 43.237385, 25.160633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167164, 43.811676, 25.008236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213718, 43.490917, 24.773832>,  <39.241653, 43.298462, 24.633190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213718, 43.490917, 24.773832>,  <39.167164, 43.811676, 25.008236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213718, 43.490917, 24.773832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031037, 0.592668, -0.804848,
		0.992719, 0.075488, 0.093869,
		0.116389, -0.801901, -0.586010,
		39.248634, 43.250347, 24.598030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634640, 44.071156, 24.586706>,  <39.167164, 43.811676, 25.008236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634640, 44.071156, 24.586706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509541, 43.737553, 24.404886>,  <39.434483, 43.537392, 24.295795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509541, 43.737553, 24.404886>,  <39.634640, 44.071156, 24.586706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509541, 43.737553, 24.404886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199256, 0.410298, -0.889917,
		0.928702, -0.368890, 0.037863,
		-0.312746, -0.834012, -0.454548,
		39.415718, 43.487350, 24.268522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.112583, 38.791416, 22.602509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.432941, 39.021458, 22.669235>,  <33.625156, 39.159481, 22.709272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.432941, 39.021458, 22.669235>,  <33.112583, 38.791416, 22.602509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432941, 39.021458, 22.669235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367704, -0.692202, 0.621008,
		0.472616, -0.436020, -0.765847,
		0.800892, 0.575102, 0.166819,
		33.673210, 39.193989, 22.719280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678982, 38.322006, 22.753931>,  <33.112583, 38.791416, 22.602509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678982, 38.322006, 22.753931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.783974, 38.677727, 22.903728>,  <33.846970, 38.891159, 22.993607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.783974, 38.677727, 22.903728>,  <33.678982, 38.322006, 22.753931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783974, 38.677727, 22.903728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536824, -0.457079, 0.709153,
		0.801824, 0.014895, -0.597375,
		0.262484, 0.889301, 0.374493,
		33.862720, 38.944519, 23.016077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362930, 38.228664, 22.878382>,  <33.678982, 38.322006, 22.753931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362930, 38.228664, 22.878382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.284615, 38.552822, 23.099266>,  <34.237625, 38.747314, 23.231796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.284615, 38.552822, 23.099266>,  <34.362930, 38.228664, 22.878382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284615, 38.552822, 23.099266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593987, -0.350056, 0.724321,
		0.780286, 0.469818, -0.412824,
		-0.195787, 0.810390, 0.552209,
		34.225880, 38.795940, 23.264929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984859, 38.577969, 22.996773>,  <34.362930, 38.228664, 22.878382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984859, 38.577969, 22.996773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725838, 38.698441, 23.276760>,  <34.570423, 38.770725, 23.444754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725838, 38.698441, 23.276760>,  <34.984859, 38.577969, 22.996773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725838, 38.698441, 23.276760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617055, -0.331724, 0.713584,
		0.447114, 0.894008, 0.028966,
		-0.647558, 0.301180, 0.699971,
		34.531570, 38.788795, 23.486752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423317, 38.864754, 23.436008>,  <34.984859, 38.577969, 22.996773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423317, 38.864754, 23.436008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.091084, 38.803299, 23.650122>,  <34.891743, 38.766426, 23.778589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.091084, 38.803299, 23.650122>,  <35.423317, 38.864754, 23.436008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091084, 38.803299, 23.650122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549258, -0.067337, 0.832935,
		-0.091927, 0.985830, 0.140317,
		-0.830581, -0.153639, 0.535285,
		34.841908, 38.757206, 23.810707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611717, 39.297657, 23.963573>,  <35.423317, 38.864754, 23.436008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611717, 39.297657, 23.963573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324856, 39.046227, 24.083961>,  <35.152737, 38.895370, 24.156195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324856, 39.046227, 24.083961>,  <35.611717, 39.297657, 23.963573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324856, 39.046227, 24.083961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462390, -0.106048, 0.880312,
		-0.521424, 0.770486, 0.366699,
		-0.717156, -0.628574, 0.300969,
		35.109711, 38.857655, 24.174252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488823, 39.515945, 24.578941>,  <35.611717, 39.297657, 23.963573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488823, 39.515945, 24.578941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346458, 39.142315, 24.590523>,  <35.261040, 38.918137, 24.597471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346458, 39.142315, 24.590523>,  <35.488823, 39.515945, 24.578941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346458, 39.142315, 24.590523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403838, -0.125787, 0.906141,
		-0.842760, 0.334195, 0.421983,
		-0.355908, -0.934072, 0.028953,
		35.239685, 38.862095, 24.599209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292656, 39.432716, 25.252890>,  <35.488823, 39.515945, 24.578941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292656, 39.432716, 25.252890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.311054, 39.059555, 25.110023>,  <35.322094, 38.835659, 25.024303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.311054, 39.059555, 25.110023>,  <35.292656, 39.432716, 25.252890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311054, 39.059555, 25.110023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409416, -0.308531, 0.858596,
		-0.911188, -0.185722, 0.367756,
		0.045996, -0.932907, -0.357167,
		35.324852, 38.779682, 25.002872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101772, 39.129269, 25.899460>,  <35.292656, 39.432716, 25.252890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101772, 39.129269, 25.899460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.262039, 38.834141, 25.682169>,  <35.358200, 38.657066, 25.551794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.262039, 38.834141, 25.682169>,  <35.101772, 39.129269, 25.899460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262039, 38.834141, 25.682169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278440, -0.466802, 0.839385,
		-0.872892, -0.487567, 0.018407,
		0.400664, -0.737818, -0.543225,
		35.382240, 38.612797, 25.519201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885002, 38.606358, 26.280819>,  <35.101772, 39.129269, 25.899460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885002, 38.606358, 26.280819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.179337, 38.431210, 26.074203>,  <35.355938, 38.326118, 25.950235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.179337, 38.431210, 26.074203>,  <34.885002, 38.606358, 26.280819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179337, 38.431210, 26.074203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207578, -0.580218, 0.787565,
		-0.644559, -0.686740, -0.336052,
		0.735836, -0.437875, -0.516537,
		35.400089, 38.299847, 25.919243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783348, 37.949116, 26.350912>,  <34.885002, 38.606358, 26.280819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783348, 37.949116, 26.350912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.166759, 37.979355, 26.240992>,  <35.396805, 37.997498, 26.175039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.166759, 37.979355, 26.240992>,  <34.783348, 37.949116, 26.350912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166759, 37.979355, 26.240992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261973, -0.613424, 0.745037,
		-0.112248, -0.786127, -0.607787,
		0.958525, 0.075594, -0.274800,
		35.454315, 38.002033, 26.158552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952454, 37.272518, 26.231201>,  <34.783348, 37.949116, 26.350912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952454, 37.272518, 26.231201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.293163, 37.465885, 26.311977>,  <35.497589, 37.581905, 26.360443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.293163, 37.465885, 26.311977>,  <34.952454, 37.272518, 26.231201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293163, 37.465885, 26.311977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232646, -0.694380, 0.680964,
		0.469414, -0.533050, -0.703924,
		0.851779, 0.483419, 0.201940,
		35.548698, 37.610912, 26.372559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438858, 36.694778, 26.255270>,  <34.952454, 37.272518, 26.231201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438858, 36.694778, 26.255270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.614544, 37.008385, 26.430727>,  <35.719955, 37.196548, 26.536001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.614544, 37.008385, 26.430727>,  <35.438858, 36.694778, 26.255270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614544, 37.008385, 26.430727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204032, -0.562549, 0.801193,
		0.874907, -0.262397, -0.407043,
		0.439212, 0.784020, 0.438641,
		35.746307, 37.243591, 26.562319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120365, 36.496059, 26.368387>,  <35.438858, 36.694778, 26.255270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120365, 36.496059, 26.368387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.016556, 36.781223, 26.628971>,  <35.954269, 36.952324, 26.785322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.016556, 36.781223, 26.628971>,  <36.120365, 36.496059, 26.368387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016556, 36.781223, 26.628971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331221, -0.567948, 0.753477,
		0.907160, 0.411325, -0.088734,
		-0.259528, 0.712914, 0.651459,
		35.938698, 36.995098, 26.824409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538776, 36.453876, 25.793728>,  <36.120365, 36.496059, 26.368387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538776, 36.453876, 25.793728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928940, 36.395981, 25.727228>,  <37.163036, 36.361244, 25.687328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928940, 36.395981, 25.727228>,  <36.538776, 36.453876, 25.793728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928940, 36.395981, 25.727228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137989, 0.187196, -0.972583,
		0.171888, 0.971601, 0.162620,
		0.975404, -0.144736, -0.166247,
		37.221561, 36.352562, 25.677355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844921, 37.110966, 25.456472>,  <36.538776, 36.453876, 25.793728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844921, 37.110966, 25.456472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.079617, 36.808090, 25.341652>,  <37.220436, 36.626366, 25.272760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.079617, 36.808090, 25.341652>,  <36.844921, 37.110966, 25.456472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079617, 36.808090, 25.341652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163961, 0.236053, -0.957808,
		0.793001, 0.609051, 0.014353,
		0.586742, -0.757190, -0.287051,
		37.255638, 36.580933, 25.255537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400921, 37.461403, 25.086773>,  <36.844921, 37.110966, 25.456472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400921, 37.461403, 25.086773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366966, 37.079998, 24.971113>,  <37.346596, 36.851154, 24.901718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366966, 37.079998, 24.971113>,  <37.400921, 37.461403, 25.086773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366966, 37.079998, 24.971113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015596, 0.291433, -0.956464,
		0.996269, -0.076678, -0.039609,
		-0.084883, -0.953513, -0.289150,
		37.341503, 36.793945, 24.884369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850777, 37.323795, 24.498117>,  <37.400921, 37.461403, 25.086773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850777, 37.323795, 24.498117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.588017, 37.022255, 24.492588>,  <37.430363, 36.841331, 24.489271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.588017, 37.022255, 24.492588>,  <37.850777, 37.323795, 24.498117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588017, 37.022255, 24.492588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225223, 0.213685, -0.950586,
		0.719557, -0.621323, -0.310154,
		-0.656896, -0.753854, -0.013823,
		37.390949, 36.796101, 24.488441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967365, 37.044140, 23.722290>,  <37.850777, 37.323795, 24.498117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967365, 37.044140, 23.722290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622841, 36.895519, 23.860909>,  <37.416126, 36.806347, 23.944080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622841, 36.895519, 23.860909>,  <37.967365, 37.044140, 23.722290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622841, 36.895519, 23.860909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453112, 0.253150, -0.854754,
		0.229842, -0.893239, -0.386389,
		-0.861314, -0.371536, 0.346553,
		37.364449, 36.784054, 23.964872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803253, 36.649639, 23.243507>,  <37.967365, 37.044140, 23.722290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803253, 36.649639, 23.243507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462673, 36.737019, 23.434217>,  <37.258324, 36.789444, 23.548643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462673, 36.737019, 23.434217>,  <37.803253, 36.649639, 23.243507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462673, 36.737019, 23.434217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454260, 0.147097, -0.878641,
		-0.262068, -0.964699, -0.026014,
		-0.851451, 0.218447, 0.476773,
		37.207237, 36.802551, 23.577250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281197, 36.277046, 22.947489>,  <37.803253, 36.649639, 23.243507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281197, 36.277046, 22.947489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088726, 36.573826, 23.134241>,  <36.973244, 36.751896, 23.246292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088726, 36.573826, 23.134241>,  <37.281197, 36.277046, 22.947489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088726, 36.573826, 23.134241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519547, 0.187607, -0.833591,
		-0.706076, -0.643668, 0.295209,
		-0.481173, 0.741954, 0.466881,
		36.944374, 36.796413, 23.274305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666363, 36.193123, 22.580631>,  <37.281197, 36.277046, 22.947489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666363, 36.193123, 22.580631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695171, 36.562122, 22.732323>,  <36.712456, 36.783520, 22.823338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695171, 36.562122, 22.732323>,  <36.666363, 36.193123, 22.580631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695171, 36.562122, 22.732323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517715, 0.359557, -0.776331,
		-0.852516, -0.140422, 0.503485,
		0.072018, 0.922497, 0.379227,
		36.716778, 36.838871, 22.846090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089710, 36.457973, 22.340601>,  <36.666363, 36.193123, 22.580631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089710, 36.457973, 22.340601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290966, 36.782986, 22.458345>,  <36.411720, 36.977993, 22.528992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290966, 36.782986, 22.458345>,  <36.089710, 36.457973, 22.340601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290966, 36.782986, 22.458345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413545, 0.525452, -0.743559,
		-0.758835, 0.252383, 0.600393,
		0.503140, 0.812528, 0.294360,
		36.441910, 37.026745, 22.546654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605000, 37.075214, 22.382753>,  <36.089710, 36.457973, 22.340601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605000, 37.075214, 22.382753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970318, 37.230606, 22.333824>,  <36.189510, 37.323841, 22.304466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970318, 37.230606, 22.333824>,  <35.605000, 37.075214, 22.382753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970318, 37.230606, 22.333824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390016, 0.747667, -0.537478,
		-0.117345, 0.538586, 0.834359,
		0.913301, 0.388484, -0.122323,
		36.244308, 37.347153, 22.297127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485367, 37.804195, 22.360519>,  <35.605000, 37.075214, 22.382753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485367, 37.804195, 22.360519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.855495, 37.773907, 22.211897>,  <36.077572, 37.755733, 22.122723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.855495, 37.773907, 22.211897>,  <35.485367, 37.804195, 22.360519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855495, 37.773907, 22.211897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191386, 0.752640, -0.630004,
		0.327350, 0.654064, 0.681939,
		0.925318, -0.075718, -0.371556,
		36.133091, 37.751190, 22.100430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770283, 38.435390, 22.298925>,  <35.485367, 37.804195, 22.360519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770283, 38.435390, 22.298925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980145, 38.209206, 22.044369>,  <36.106064, 38.073494, 21.891636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980145, 38.209206, 22.044369>,  <35.770283, 38.435390, 22.298925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980145, 38.209206, 22.044369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035848, 0.732201, -0.680145,
		0.850559, 0.379656, 0.363883,
		0.524657, -0.565459, -0.636389,
		36.137543, 38.039570, 21.853453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273354, 38.896332, 22.118484>,  <35.770283, 38.435390, 22.298925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273354, 38.896332, 22.118484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.259544, 38.622902, 21.826859>,  <36.251259, 38.458843, 21.651882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.259544, 38.622902, 21.826859>,  <36.273354, 38.896332, 22.118484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259544, 38.622902, 21.826859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240198, 0.713794, -0.657878,
		0.970110, 0.152409, -0.188835,
		-0.034523, -0.683571, -0.729067,
		36.249187, 38.417831, 21.608139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727726, 39.182777, 21.637703>,  <36.273354, 38.896332, 22.118484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727726, 39.182777, 21.637703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488525, 38.922401, 21.450655>,  <36.345005, 38.766174, 21.338427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488525, 38.922401, 21.450655>,  <36.727726, 39.182777, 21.637703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488525, 38.922401, 21.450655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235941, 0.700554, -0.673466,
		0.765981, -0.292401, -0.572515,
		-0.598000, -0.650942, -0.467622,
		36.309124, 38.727119, 21.310368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481941, 38.890099, 21.512238>,  <36.727726, 39.182777, 21.637703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481941, 38.890099, 21.512238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.859699, 38.890759, 21.380718>,  <38.086353, 38.891155, 21.301805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.859699, 38.890759, 21.380718>,  <37.481941, 38.890099, 21.512238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859699, 38.890759, 21.380718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301049, -0.406446, 0.862654,
		-0.132218, -0.913673, -0.384343,
		0.944399, 0.001648, -0.328800,
		38.143021, 38.891254, 21.282078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818188, 38.183739, 21.512299>,  <37.481941, 38.890099, 21.512238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818188, 38.183739, 21.512299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.111996, 38.454456, 21.532047>,  <38.288280, 38.616886, 21.543898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.111996, 38.454456, 21.532047>,  <37.818188, 38.183739, 21.512299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111996, 38.454456, 21.532047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234441, -0.321369, 0.917474,
		0.636804, -0.662327, -0.394719,
		0.734519, 0.676790, 0.049373,
		38.332352, 38.657494, 21.546860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372288, 37.746063, 21.697987>,  <37.818188, 38.183739, 21.512299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372288, 37.746063, 21.697987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.497440, 38.116287, 21.783257>,  <38.572533, 38.338421, 21.834417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.497440, 38.116287, 21.783257>,  <38.372288, 37.746063, 21.697987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497440, 38.116287, 21.783257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134795, -0.265442, 0.954657,
		0.940179, -0.269957, -0.207812,
		0.312879, 0.925561, 0.213174,
		38.591305, 38.393955, 21.847208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887272, 37.671692, 22.261074>,  <38.372288, 37.746063, 21.697987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887272, 37.671692, 22.261074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799068, 38.060566, 22.292656>,  <38.746147, 38.293892, 22.311605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799068, 38.060566, 22.292656>,  <38.887272, 37.671692, 22.261074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799068, 38.060566, 22.292656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227074, -0.027559, 0.973488,
		0.948586, 0.232589, -0.214681,
		-0.220506, 0.972185, 0.078957,
		38.732918, 38.352222, 22.316343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526218, 37.983501, 22.428247>,  <38.887272, 37.671692, 22.261074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526218, 37.983501, 22.428247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.205921, 38.183720, 22.559860>,  <39.013744, 38.303852, 22.638828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.205921, 38.183720, 22.559860>,  <39.526218, 37.983501, 22.428247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205921, 38.183720, 22.559860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380231, 0.000297, 0.924892,
		0.462854, 0.865709, -0.190561,
		-0.800744, 0.500547, 0.329032,
		38.965698, 38.333885, 22.658569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848255, 38.510010, 22.829435>,  <39.526218, 37.983501, 22.428247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848255, 38.510010, 22.829435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.466694, 38.503998, 22.949331>,  <39.237759, 38.500389, 23.021269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.466694, 38.503998, 22.949331>,  <39.848255, 38.510010, 22.829435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466694, 38.503998, 22.949331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299728, -0.098471, 0.948929,
		0.015250, 0.995026, 0.098438,
		-0.953903, -0.015033, 0.299739,
		39.180523, 38.499489, 23.039253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736374, 38.999214, 23.435863>,  <39.848255, 38.510010, 22.829435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736374, 38.999214, 23.435863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441460, 38.731598, 23.473351>,  <39.264511, 38.571026, 23.495842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441460, 38.731598, 23.473351>,  <39.736374, 38.999214, 23.435863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441460, 38.731598, 23.473351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073062, 0.058940, 0.995584,
		-0.671614, 0.740881, 0.005425,
		-0.737290, -0.669045, 0.093715,
		39.220272, 38.530884, 23.501465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247917, 39.258533, 23.947378>,  <39.736374, 38.999214, 23.435863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247917, 39.258533, 23.947378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.188671, 38.863514, 23.926207>,  <39.153126, 38.626503, 23.913504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.188671, 38.863514, 23.926207>,  <39.247917, 39.258533, 23.947378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188671, 38.863514, 23.926207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107507, -0.037125, 0.993511,
		-0.983110, 0.152841, -0.100670,
		-0.148112, -0.987553, -0.052929,
		39.144238, 38.567249, 23.910328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829964, 39.034542, 24.562313>,  <39.247917, 39.258533, 23.947378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829964, 39.034542, 24.562313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.967236, 38.689579, 24.413464>,  <39.049599, 38.482601, 24.324154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.967236, 38.689579, 24.413464>,  <38.829964, 39.034542, 24.562313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967236, 38.689579, 24.413464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209614, -0.315873, 0.925357,
		-0.915580, -0.395570, 0.072370,
		0.343184, -0.862409, -0.372124,
		39.070190, 38.430855, 24.301826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498455, 38.345894, 24.880634>,  <38.829964, 39.034542, 24.562313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498455, 38.345894, 24.880634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864994, 38.263935, 24.743040>,  <39.084919, 38.214760, 24.660484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864994, 38.263935, 24.743040>,  <38.498455, 38.345894, 24.880634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864994, 38.263935, 24.743040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260081, -0.348587, 0.900469,
		-0.304405, -0.914607, -0.266140,
		0.916349, -0.204890, -0.343983,
		39.139900, 38.202469, 24.639845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768654, 37.948624, 25.388241>,  <38.498455, 38.345894, 24.880634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768654, 37.948624, 25.388241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.077576, 37.972126, 25.135229>,  <39.262928, 37.986225, 24.983421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.077576, 37.972126, 25.135229>,  <38.768654, 37.948624, 25.388241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077576, 37.972126, 25.135229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589841, -0.436030, 0.679681,
		-0.235868, -0.898012, -0.371403,
		0.772304, 0.058754, -0.632530,
		39.309265, 37.989754, 24.945471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060482, 37.307590, 25.350727>,  <38.768654, 37.948624, 25.388241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060482, 37.307590, 25.350727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332619, 37.591389, 25.277239>,  <39.495899, 37.761669, 25.233147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332619, 37.591389, 25.277239>,  <39.060482, 37.307590, 25.350727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332619, 37.591389, 25.277239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537086, -0.312085, 0.783672,
		0.498678, -0.631834, -0.593384,
		0.680337, 0.709499, -0.183719,
		39.536720, 37.804237, 25.222122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728706, 36.913372, 25.411243>,  <39.060482, 37.307590, 25.350727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728706, 36.913372, 25.411243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.831276, 37.298008, 25.450411>,  <39.892818, 37.528790, 25.473911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.831276, 37.298008, 25.450411>,  <39.728706, 36.913372, 25.411243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831276, 37.298008, 25.450411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671322, -0.250067, 0.697705,
		0.695394, -0.113175, -0.709662,
		0.256426, 0.961591, 0.097918,
		39.908203, 37.586487, 25.479786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469700, 36.948330, 25.555397>,  <39.728706, 36.913372, 25.411243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469700, 36.948330, 25.555397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.308167, 37.295296, 25.671682>,  <40.211246, 37.503475, 25.741453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.308167, 37.295296, 25.671682>,  <40.469700, 36.948330, 25.555397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308167, 37.295296, 25.671682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458897, -0.082834, 0.884620,
		0.791409, 0.490650, -0.364601,
		-0.403837, 0.867410, 0.290713,
		40.187016, 37.555519, 25.758896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.458561, 43.261635, 23.671579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.060585, 43.292725, 23.697039>,  <39.821800, 43.311378, 23.712315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.060585, 43.292725, 23.697039>,  <40.458561, 43.261635, 23.671579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060585, 43.292725, 23.697039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056226, 0.094187, -0.993965,
		-0.083249, -0.992516, -0.089341,
		-0.994942, 0.077724, 0.063647,
		39.762104, 43.316040, 23.716133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092014, 42.869659, 23.058308>,  <40.458561, 43.261635, 23.671579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092014, 42.869659, 23.058308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.785419, 43.110294, 23.148277>,  <39.601463, 43.254673, 23.202259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.785419, 43.110294, 23.148277>,  <40.092014, 42.869659, 23.058308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785419, 43.110294, 23.148277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327048, -0.064187, -0.942825,
		-0.552750, -0.796228, 0.245945,
		-0.766490, 0.601583, 0.224926,
		39.555473, 43.290768, 23.215755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517017, 42.536495, 22.740810>,  <40.092014, 42.869659, 23.058308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517017, 42.536495, 22.740810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.398457, 42.913937, 22.799797>,  <39.327320, 43.140404, 22.835190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.398457, 42.913937, 22.799797>,  <39.517017, 42.536495, 22.740810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398457, 42.913937, 22.799797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439424, 0.002351, -0.898277,
		-0.847968, -0.331056, 0.413947,
		-0.296407, 0.943608, 0.147468,
		39.309536, 43.197018, 22.844038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972805, 42.625198, 22.251638>,  <39.517017, 42.536495, 22.740810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972805, 42.625198, 22.251638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.023808, 43.004066, 22.369360>,  <39.054409, 43.231388, 22.439993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.023808, 43.004066, 22.369360>,  <38.972805, 42.625198, 22.251638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023808, 43.004066, 22.369360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280803, 0.319059, -0.905180,
		-0.951258, 0.032773, 0.306649,
		0.127504, 0.947168, 0.294305,
		39.062057, 43.288216, 22.457651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385948, 43.088558, 21.889761>,  <38.972805, 42.625198, 22.251638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385948, 43.088558, 21.889761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.696655, 43.322498, 21.983219>,  <38.883080, 43.462860, 22.039295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.696655, 43.322498, 21.983219>,  <38.385948, 43.088558, 21.889761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696655, 43.322498, 21.983219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171712, 0.553608, -0.814882,
		-0.605929, 0.592852, 0.530448,
		0.776765, 0.584846, 0.233647,
		38.929684, 43.497952, 22.053314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096630, 43.732105, 21.820583>,  <38.385948, 43.088558, 21.889761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096630, 43.732105, 21.820583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.492489, 43.778862, 21.787279>,  <38.730003, 43.806915, 21.767298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.492489, 43.778862, 21.787279>,  <38.096630, 43.732105, 21.820583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492489, 43.778862, 21.787279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137682, 0.609684, -0.780595,
		-0.040481, 0.783978, 0.619467,
		0.989649, 0.116889, -0.083259,
		38.789383, 43.813931, 21.762300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212219, 44.430511, 21.576488>,  <38.096630, 43.732105, 21.820583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212219, 44.430511, 21.576488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.551846, 44.242409, 21.480206>,  <38.755623, 44.129547, 21.422436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.551846, 44.242409, 21.480206>,  <38.212219, 44.430511, 21.576488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551846, 44.242409, 21.480206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034817, 0.504465, -0.862730,
		0.527136, 0.724135, 0.444698,
		0.849068, -0.470259, -0.240709,
		38.806564, 44.101330, 21.407993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533585, 44.959045, 21.252592>,  <38.212219, 44.430511, 21.576488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533585, 44.959045, 21.252592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.707523, 44.614239, 21.148411>,  <38.811886, 44.407356, 21.085901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.707523, 44.614239, 21.148411>,  <38.533585, 44.959045, 21.252592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707523, 44.614239, 21.148411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072293, 0.321716, -0.944072,
		0.897599, 0.391695, 0.202214,
		0.434844, -0.862017, -0.260455,
		38.837978, 44.355633, 21.070274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955772, 45.105095, 20.644413>,  <38.533585, 44.959045, 21.252592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955772, 45.105095, 20.644413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923203, 44.706852, 20.625961>,  <38.903660, 44.467907, 20.614889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923203, 44.706852, 20.625961>,  <38.955772, 45.105095, 20.644413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923203, 44.706852, 20.625961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041444, 0.049626, -0.997908,
		0.995818, -0.079340, -0.045303,
		-0.081422, -0.995612, -0.046130,
		38.898777, 44.408169, 20.612122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379936, 44.955486, 20.054874>,  <38.955772, 45.105095, 20.644413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379936, 44.955486, 20.054874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.117931, 44.663807, 20.134094>,  <38.960728, 44.488800, 20.181625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.117931, 44.663807, 20.134094>,  <39.379936, 44.955486, 20.054874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117931, 44.663807, 20.134094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246465, -0.041585, -0.968259,
		0.714293, -0.683033, -0.152484,
		-0.655012, -0.729202, 0.198047,
		38.921429, 44.445045, 20.193508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543678, 44.351776, 19.538181>,  <39.379936, 44.955486, 20.054874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543678, 44.351776, 19.538181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.169231, 44.324791, 19.676243>,  <38.944565, 44.308598, 19.759079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.169231, 44.324791, 19.676243>,  <39.543678, 44.351776, 19.538181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169231, 44.324791, 19.676243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330806, -0.164210, -0.929302,
		0.119375, -0.984116, 0.131401,
		-0.936118, -0.067467, 0.345154,
		38.888397, 44.304550, 19.779789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240833, 43.839924, 19.148586>,  <39.543678, 44.351776, 19.538181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240833, 43.839924, 19.148586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.911266, 44.006603, 19.302221>,  <38.713528, 44.106609, 19.394402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.911266, 44.006603, 19.302221>,  <39.240833, 43.839924, 19.148586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911266, 44.006603, 19.302221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419197, 0.007951, -0.907860,
		-0.381357, -0.909011, 0.168127,
		-0.823918, 0.416697, 0.384087,
		38.664089, 44.131611, 19.417448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735756, 43.475170, 18.877432>,  <39.240833, 43.839924, 19.148586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735756, 43.475170, 18.877432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596279, 43.838196, 18.971016>,  <38.512592, 44.056011, 19.027166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.596279, 43.838196, 18.971016>,  <38.735756, 43.475170, 18.877432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596279, 43.838196, 18.971016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439873, 0.061959, -0.895920,
		-0.827604, -0.415310, 0.377610,
		-0.348688, 0.907567, 0.233961,
		38.491673, 44.110466, 19.041204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163628, 43.500797, 18.618626>,  <38.735756, 43.475170, 18.877432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163628, 43.500797, 18.618626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225334, 43.892071, 18.674282>,  <38.262356, 44.126835, 18.707676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225334, 43.892071, 18.674282>,  <38.163628, 43.500797, 18.618626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225334, 43.892071, 18.674282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550211, 0.202021, -0.810219,
		-0.820653, 0.048429, 0.569371,
		0.154263, 0.978183, 0.139143,
		38.271614, 44.185524, 18.716024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339939, 43.243549, 17.951778>,  <38.163628, 43.500797, 18.618626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339939, 43.243549, 17.951778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059135, 43.049114, 17.743586>,  <37.890656, 42.932453, 17.618670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059135, 43.049114, 17.743586>,  <38.339939, 43.243549, 17.951778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059135, 43.049114, 17.743586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258138, -0.854817, 0.450170,
		-0.663742, 0.181666, 0.725565,
		-0.702006, -0.486092, -0.520483,
		37.848534, 42.903286, 17.587440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844902, 42.915607, 18.363783>,  <38.339939, 43.243549, 17.951778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844902, 42.915607, 18.363783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.837193, 42.721634, 18.014048>,  <37.832569, 42.605251, 17.804207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.837193, 42.721634, 18.014048>,  <37.844902, 42.915607, 18.363783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837193, 42.721634, 18.014048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113347, -0.869923, 0.479985,
		-0.993369, -0.089855, 0.071729,
		-0.019270, -0.484932, -0.874339,
		37.831413, 42.576153, 17.751745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345184, 42.370632, 18.500555>,  <37.844902, 42.915607, 18.363783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345184, 42.370632, 18.500555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.543514, 42.251968, 18.174084>,  <37.662514, 42.180771, 17.978201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.543514, 42.251968, 18.174084>,  <37.345184, 42.370632, 18.500555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543514, 42.251968, 18.174084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051646, -0.928105, 0.368720,
		-0.866883, -0.224974, -0.444859,
		0.495829, -0.296662, -0.816178,
		37.692261, 42.162971, 17.929230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039261, 41.742966, 18.456253>,  <37.345184, 42.370632, 18.500555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039261, 41.742966, 18.456253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388580, 41.728504, 18.261913>,  <37.598171, 41.719826, 18.145309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388580, 41.728504, 18.261913>,  <37.039261, 41.742966, 18.456253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388580, 41.728504, 18.261913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096668, -0.964554, 0.245540,
		-0.477507, -0.261395, -0.838844,
		0.873294, -0.036157, -0.485850,
		37.650570, 41.717655, 18.116158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951408, 41.206577, 18.073858>,  <37.039261, 41.742966, 18.456253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951408, 41.206577, 18.073858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.345364, 41.258965, 18.119179>,  <37.581738, 41.290398, 18.146372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.345364, 41.258965, 18.119179>,  <36.951408, 41.206577, 18.073858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345364, 41.258965, 18.119179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107885, -0.975814, 0.190124,
		0.135462, -0.175028, -0.975200,
		0.984891, 0.130964, 0.113303,
		37.640831, 41.298252, 18.153170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153961, 40.536736, 18.052282>,  <36.951408, 41.206577, 18.073858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153961, 40.536736, 18.052282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473354, 40.727806, 18.198839>,  <37.664989, 40.842449, 18.286774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473354, 40.727806, 18.198839>,  <37.153961, 40.536736, 18.052282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473354, 40.727806, 18.198839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343756, -0.861412, 0.373900,
		0.494217, -0.172605, -0.852031,
		0.798487, 0.477679, 0.366390,
		37.712902, 40.871109, 18.308756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811722, 40.042015, 17.911135>,  <37.153961, 40.536736, 18.052282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811722, 40.042015, 17.911135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.868282, 40.317741, 18.195345>,  <37.902218, 40.483177, 18.365871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.868282, 40.317741, 18.195345>,  <37.811722, 40.042015, 17.911135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868282, 40.317741, 18.195345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312338, -0.712141, 0.628729,
		0.939389, 0.133023, -0.315995,
		0.141398, 0.689319, 0.710526,
		37.910702, 40.524536, 18.408503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504642, 39.933365, 18.189632>,  <37.811722, 40.042015, 17.911135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504642, 39.933365, 18.189632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.278046, 40.122169, 18.459827>,  <38.142086, 40.235455, 18.621944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.278046, 40.122169, 18.459827>,  <38.504642, 39.933365, 18.189632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278046, 40.122169, 18.459827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459124, -0.499909, 0.734367,
		0.684315, 0.726149, 0.066483,
		-0.566496, 0.472015, 0.675488,
		38.108097, 40.263775, 18.662474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909847, 40.069893, 18.732183>,  <38.504642, 39.933365, 18.189632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909847, 40.069893, 18.732183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.552265, 40.114620, 18.905775>,  <38.337715, 40.141457, 19.009930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.552265, 40.114620, 18.905775>,  <38.909847, 40.069893, 18.732183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552265, 40.114620, 18.905775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309667, -0.545877, 0.778540,
		0.323955, 0.830370, 0.453364,
		-0.893957, 0.111820, 0.433978,
		38.284077, 40.148167, 19.035969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063473, 40.136318, 19.406071>,  <38.909847, 40.069893, 18.732183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063473, 40.136318, 19.406071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.668465, 40.078560, 19.431244>,  <38.431461, 40.043907, 19.446348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.668465, 40.078560, 19.431244>,  <39.063473, 40.136318, 19.406071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668465, 40.078560, 19.431244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123423, -0.461132, 0.878706,
		-0.097858, 0.875504, 0.473197,
		-0.987517, -0.144392, 0.062932,
		38.372208, 40.035244, 19.450123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914295, 40.388897, 20.050575>,  <39.063473, 40.136318, 19.406071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914295, 40.388897, 20.050575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.623894, 40.127876, 19.963778>,  <38.449654, 39.971264, 19.911699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.623894, 40.127876, 19.963778>,  <38.914295, 40.388897, 20.050575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623894, 40.127876, 19.963778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025755, -0.341121, 0.939666,
		-0.687204, 0.676617, 0.264463,
		-0.726008, -0.652553, -0.216994,
		38.406090, 39.932110, 19.898680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397179, 40.444412, 20.577637>,  <38.914295, 40.388897, 20.050575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397179, 40.444412, 20.577637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.332340, 40.082794, 20.419430>,  <38.293438, 39.865826, 20.324507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.332340, 40.082794, 20.419430>,  <38.397179, 40.444412, 20.577637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332340, 40.082794, 20.419430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035259, -0.395254, 0.917895,
		-0.986145, 0.162731, 0.032193,
		-0.162094, -0.904043, -0.395515,
		38.283710, 39.811581, 20.300776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008911, 40.149025, 21.019756>,  <38.397179, 40.444412, 20.577637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008911, 40.149025, 21.019756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.131802, 39.823269, 20.822828>,  <38.205536, 39.627815, 20.704672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.131802, 39.823269, 20.822828>,  <38.008911, 40.149025, 21.019756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131802, 39.823269, 20.822828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098220, -0.541713, 0.834805,
		-0.946556, -0.208115, -0.246416,
		0.307222, -0.814393, -0.492321,
		38.223969, 39.578953, 20.675133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577175, 39.676590, 21.176538>,  <38.008911, 40.149025, 21.019756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577175, 39.676590, 21.176538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883907, 39.452396, 21.051428>,  <38.067947, 39.317883, 20.976362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883907, 39.452396, 21.051428>,  <37.577175, 39.676590, 21.176538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883907, 39.452396, 21.051428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026016, -0.514047, 0.857368,
		-0.641318, -0.649321, -0.408770,
		0.766834, -0.560480, -0.312775,
		38.113956, 39.284252, 20.957596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810184, 39.423611, 20.866446>,  <37.577175, 39.676590, 21.176538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810184, 39.423611, 20.866446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487511, 39.189766, 20.901033>,  <36.293907, 39.049458, 20.921785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487511, 39.189766, 20.901033>,  <36.810184, 39.423611, 20.866446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487511, 39.189766, 20.901033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484975, 0.571257, -0.662167,
		0.337716, -0.576099, -0.744351,
		-0.806689, -0.584616, 0.086471,
		36.245502, 39.014381, 20.926975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614269, 39.300823, 20.186035>,  <36.810184, 39.423611, 20.866446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614269, 39.300823, 20.186035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275833, 39.207790, 20.377886>,  <36.072773, 39.151970, 20.492996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275833, 39.207790, 20.377886>,  <36.614269, 39.300823, 20.186035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275833, 39.207790, 20.377886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518310, 0.569061, -0.638376,
		-0.124463, -0.788718, -0.602025,
		-0.846088, -0.232581, 0.479626,
		36.022007, 39.138016, 20.521774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167202, 38.997379, 19.709869>,  <36.614269, 39.300823, 20.186035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167202, 38.997379, 19.709869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959759, 39.179806, 19.999159>,  <35.835293, 39.289261, 20.172733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959759, 39.179806, 19.999159>,  <36.167202, 38.997379, 19.709869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959759, 39.179806, 19.999159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384031, 0.631496, -0.673597,
		-0.763917, -0.627072, -0.152355,
		-0.518605, 0.456063, 0.723226,
		35.804176, 39.316624, 20.216127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426712, 39.144608, 19.378117>,  <36.167202, 38.997379, 19.709869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426712, 39.144608, 19.378117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460136, 39.392414, 19.690325>,  <35.480190, 39.541100, 19.877649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460136, 39.392414, 19.690325>,  <35.426712, 39.144608, 19.378117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460136, 39.392414, 19.690325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461944, 0.718099, -0.520520,
		-0.882964, -0.317060, 0.346190,
		0.083562, 0.619521, 0.780520,
		35.485207, 39.578270, 19.924480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803703, 39.534702, 19.350992>,  <35.426712, 39.144608, 19.378117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803703, 39.534702, 19.350992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036289, 39.755878, 19.589705>,  <35.175842, 39.888584, 19.732933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036289, 39.755878, 19.589705>,  <34.803703, 39.534702, 19.350992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036289, 39.755878, 19.589705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360501, 0.832705, -0.420287,
		-0.729339, 0.029242, 0.683527,
		0.581467, 0.552944, 0.596782,
		35.210728, 39.921761, 19.768740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437004, 40.018135, 19.540504>,  <34.803703, 39.534702, 19.350992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437004, 40.018135, 19.540504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776474, 40.194649, 19.657137>,  <34.980156, 40.300556, 19.727116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776474, 40.194649, 19.657137>,  <34.437004, 40.018135, 19.540504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776474, 40.194649, 19.657137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354012, 0.883511, -0.306731,
		-0.392969, 0.157092, 0.906034,
		0.848676, 0.441282, 0.291580,
		35.031078, 40.327034, 19.744610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241501, 40.637402, 19.979094>,  <34.437004, 40.018135, 19.540504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241501, 40.637402, 19.979094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.609371, 40.686676, 19.829952>,  <34.830093, 40.716240, 19.740467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.609371, 40.686676, 19.829952>,  <34.241501, 40.637402, 19.979094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609371, 40.686676, 19.829952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316901, 0.793542, -0.519485,
		0.231878, 0.595915, 0.768842,
		0.919677, 0.123190, -0.372852,
		34.885273, 40.723633, 19.718096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116722, 41.154659, 20.523775>,  <34.241501, 40.637402, 19.979094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116722, 41.154659, 20.523775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803299, 41.319267, 20.709974>,  <33.615246, 41.418034, 20.821693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803299, 41.319267, 20.709974>,  <34.116722, 41.154659, 20.523775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803299, 41.319267, 20.709974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047876, -0.706988, 0.705604,
		0.619472, 0.575167, 0.534264,
		-0.783558, 0.411523, 0.465496,
		33.568233, 41.442722, 20.849623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319847, 41.272545, 21.149059>,  <34.116722, 41.154659, 20.523775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319847, 41.272545, 21.149059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922916, 41.247429, 21.191666>,  <33.684757, 41.232361, 21.217230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922916, 41.247429, 21.191666>,  <34.319847, 41.272545, 21.149059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922916, 41.247429, 21.191666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123455, -0.550523, 0.825641,
		0.006801, 0.832456, 0.554050,
		-0.992327, -0.062785, 0.106515,
		33.625217, 41.228592, 21.223619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111656, 41.407745, 21.798826>,  <34.319847, 41.272545, 21.149059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111656, 41.407745, 21.798826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818020, 41.171131, 21.665440>,  <33.641838, 41.029163, 21.585407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818020, 41.171131, 21.665440>,  <34.111656, 41.407745, 21.798826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818020, 41.171131, 21.665440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141777, -0.613768, 0.776652,
		-0.664087, 0.522854, 0.534427,
		-0.734090, -0.591534, -0.333467,
		33.597794, 40.993671, 21.565399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654549, 41.215321, 22.361879>,  <34.111656, 41.407745, 21.798826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654549, 41.215321, 22.361879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.581192, 40.911194, 22.112631>,  <33.537178, 40.728718, 21.963081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.581192, 40.911194, 22.112631>,  <33.654549, 41.215321, 22.361879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581192, 40.911194, 22.112631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107575, -0.645589, 0.756070,
		-0.977136, 0.071625, 0.200188,
		-0.183392, -0.760319, -0.623123,
		33.526173, 40.683098, 21.925694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516407, 40.756863, 22.863087>,  <33.654549, 41.215321, 22.361879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516407, 40.756863, 22.863087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.560181, 40.563614, 22.515610>,  <33.586445, 40.447666, 22.307123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.560181, 40.563614, 22.515610>,  <33.516407, 40.756863, 22.863087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560181, 40.563614, 22.515610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193154, -0.846944, 0.495355,
		-0.975047, -0.221997, 0.000635,
		0.109430, -0.483118, -0.868690,
		33.593010, 40.418678, 22.255003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070232, 40.150368, 22.997835>,  <33.516407, 40.756863, 22.863087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070232, 40.150368, 22.997835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330807, 40.058773, 22.708506>,  <33.487152, 40.003815, 22.534908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330807, 40.058773, 22.708506>,  <33.070232, 40.150368, 22.997835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330807, 40.058773, 22.708506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256281, -0.830916, 0.493862,
		-0.714109, -0.507093, -0.482602,
		0.651436, -0.228990, -0.723323,
		33.526237, 39.990074, 22.491508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867901, 39.549152, 22.932394>,  <33.070232, 40.150368, 22.997835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867901, 39.549152, 22.932394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236229, 39.587818, 22.781271>,  <33.457226, 39.611019, 22.690598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236229, 39.587818, 22.781271>,  <32.867901, 39.549152, 22.932394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236229, 39.587818, 22.781271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260025, -0.874195, 0.410085,
		-0.290638, -0.475856, -0.830115,
		0.920824, 0.096664, -0.377809,
		33.512478, 39.616817, 22.667929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.435467, 45.805443, 20.798180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.757286, 45.573807, 20.745474>,  <35.950378, 45.434826, 20.713850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.757286, 45.573807, 20.745474>,  <35.435467, 45.805443, 20.798180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757286, 45.573807, 20.745474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053146, -0.291180, 0.955191,
		-0.591507, -0.761493, -0.265044,
		0.804547, -0.579088, -0.131764,
		35.998650, 45.400082, 20.705944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395149, 45.066891, 21.172489>,  <35.435467, 45.805443, 20.798180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395149, 45.066891, 21.172489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.778957, 45.147766, 21.094069>,  <36.009243, 45.196293, 21.047016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.778957, 45.147766, 21.094069>,  <35.395149, 45.066891, 21.172489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778957, 45.147766, 21.094069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261608, -0.382090, 0.886323,
		0.104296, -0.901736, -0.419518,
		0.959522, 0.202189, -0.196051,
		36.066814, 45.208424, 21.035254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820065, 44.447906, 21.354488>,  <35.395149, 45.066891, 21.172489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820065, 44.447906, 21.354488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.065361, 44.763767, 21.346581>,  <36.212540, 44.953285, 21.341837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.065361, 44.763767, 21.346581>,  <35.820065, 44.447906, 21.354488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065361, 44.763767, 21.346581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364955, -0.261050, 0.893678,
		0.700534, -0.555251, -0.448273,
		0.613237, 0.789652, -0.019767,
		36.249332, 45.000664, 21.340651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393150, 44.084297, 21.584246>,  <35.820065, 44.447906, 21.354488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393150, 44.084297, 21.584246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.474953, 44.467518, 21.664562>,  <36.524033, 44.697449, 21.712753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.474953, 44.467518, 21.664562>,  <36.393150, 44.084297, 21.584246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474953, 44.467518, 21.664562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459347, -0.275067, 0.844593,
		0.864394, -0.080490, -0.496331,
		0.204506, 0.958050, 0.200794,
		36.536304, 44.754932, 21.724800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019905, 44.056183, 21.803881>,  <36.393150, 44.084297, 21.584246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019905, 44.056183, 21.803881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.860283, 44.385647, 21.965046>,  <36.764507, 44.583324, 22.061745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.860283, 44.385647, 21.965046>,  <37.019905, 44.056183, 21.803881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860283, 44.385647, 21.965046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318194, -0.287714, 0.903313,
		0.859944, 0.488681, -0.147268,
		-0.399060, 0.823658, 0.402913,
		36.740566, 44.632744, 22.085920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488468, 44.248978, 22.298487>,  <37.019905, 44.056183, 21.803881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488468, 44.248978, 22.298487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.144825, 44.424343, 22.404108>,  <36.938637, 44.529564, 22.467480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.144825, 44.424343, 22.404108>,  <37.488468, 44.248978, 22.298487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144825, 44.424343, 22.404108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178751, -0.226407, 0.957490,
		0.479561, 0.869789, 0.116141,
		-0.859110, 0.438415, 0.264051,
		36.887093, 44.555866, 22.483324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676678, 44.504555, 22.880562>,  <37.488468, 44.248978, 22.298487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676678, 44.504555, 22.880562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.280804, 44.538055, 22.927038>,  <37.043278, 44.558155, 22.954924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.280804, 44.538055, 22.927038>,  <37.676678, 44.504555, 22.880562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280804, 44.538055, 22.927038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105892, -0.118402, 0.987303,
		0.096448, 0.989427, 0.108312,
		-0.989689, 0.083754, 0.116192,
		36.983898, 44.563183, 22.961895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671989, 44.866058, 23.450991>,  <37.676678, 44.504555, 22.880562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671989, 44.866058, 23.450991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301987, 44.717056, 23.421049>,  <37.079987, 44.627655, 23.403084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.301987, 44.717056, 23.421049>,  <37.671989, 44.866058, 23.450991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301987, 44.717056, 23.421049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009899, -0.173314, 0.984817,
		-0.379821, 0.911703, 0.156629,
		-0.925007, -0.372504, -0.074854,
		37.024483, 44.605305, 23.398594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253536, 45.046494, 24.076767>,  <37.671989, 44.866058, 23.450991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253536, 45.046494, 24.076767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.991772, 44.769382, 23.955568>,  <36.834713, 44.603115, 23.882849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.991772, 44.769382, 23.955568>,  <37.253536, 45.046494, 24.076767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991772, 44.769382, 23.955568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129540, -0.292070, 0.947583,
		-0.744962, 0.659357, 0.101390,
		-0.654409, -0.692780, -0.302995,
		36.795448, 44.561550, 23.864670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591663, 45.185310, 24.313860>,  <37.253536, 45.046494, 24.076767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591663, 45.185310, 24.313860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.642414, 44.794445, 24.245668>,  <36.672863, 44.559925, 24.204754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.642414, 44.794445, 24.245668>,  <36.591663, 45.185310, 24.313860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642414, 44.794445, 24.245668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272607, -0.199602, 0.941193,
		-0.953723, -0.072940, -0.291705,
		0.126875, -0.977159, -0.170481,
		36.680477, 44.501297, 24.194525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954861, 44.826923, 24.588751>,  <36.591663, 45.185310, 24.313860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954861, 44.826923, 24.588751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.253086, 44.560555, 24.578337>,  <36.432022, 44.400734, 24.572088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.253086, 44.560555, 24.578337>,  <35.954861, 44.826923, 24.588751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253086, 44.560555, 24.578337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274700, -0.342678, 0.898394,
		-0.607183, -0.662660, -0.438418,
		0.745566, -0.665923, -0.026035,
		36.476757, 44.360779, 24.570526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653278, 44.159679, 24.886202>,  <35.954861, 44.826923, 24.588751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653278, 44.159679, 24.886202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.049515, 44.117218, 24.920748>,  <36.287258, 44.091743, 24.941475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.049515, 44.117218, 24.920748>,  <35.653278, 44.159679, 24.886202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049515, 44.117218, 24.920748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109861, -0.240571, 0.964394,
		-0.081591, -0.964810, -0.249969,
		0.990592, -0.106147, 0.086366,
		36.346691, 44.085373, 24.946657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399475, 43.438671, 24.662451>,  <35.653278, 44.159679, 24.886202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399475, 43.438671, 24.662451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.014030, 43.423935, 24.768358>,  <34.782764, 43.415092, 24.831902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.014030, 43.423935, 24.768358>,  <35.399475, 43.438671, 24.662451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014030, 43.423935, 24.768358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263209, 0.303724, -0.915682,
		-0.046685, -0.952048, -0.302366,
		-0.963609, -0.036837, 0.264767,
		34.724949, 43.412884, 24.847788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080124, 42.940254, 24.281366>,  <35.399475, 43.438671, 24.662451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080124, 42.940254, 24.281366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.787590, 43.192352, 24.385624>,  <34.612068, 43.343613, 24.448179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.787590, 43.192352, 24.385624>,  <35.080124, 42.940254, 24.281366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787590, 43.192352, 24.385624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277478, 0.074149, -0.957866,
		-0.623018, -0.772847, 0.120652,
		-0.731338, 0.630246, 0.260644,
		34.568188, 43.381428, 24.463818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698257, 42.715416, 23.761070>,  <35.080124, 42.940254, 24.281366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698257, 42.715416, 23.761070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.518101, 43.037285, 23.915808>,  <34.410007, 43.230408, 24.008650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.518101, 43.037285, 23.915808>,  <34.698257, 42.715416, 23.761070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518101, 43.037285, 23.915808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243533, 0.306129, -0.920313,
		-0.858976, -0.508711, 0.058086,
		-0.450391, 0.804673, 0.386845,
		34.382984, 43.278687, 24.031860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018845, 42.712368, 23.421808>,  <34.698257, 42.715416, 23.761070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018845, 42.712368, 23.421808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.083385, 43.076210, 23.574955>,  <34.122108, 43.294514, 23.666843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.083385, 43.076210, 23.574955>,  <34.018845, 42.712368, 23.421808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083385, 43.076210, 23.574955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158214, 0.406773, -0.899724,
		-0.974133, 0.084595, 0.209544,
		0.161349, 0.909604, 0.382867,
		34.131790, 43.349091, 23.689816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572563, 43.095936, 23.027790>,  <34.018845, 42.712368, 23.421808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572563, 43.095936, 23.027790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.825771, 43.368484, 23.174770>,  <33.977695, 43.532013, 23.262959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.825771, 43.368484, 23.174770>,  <33.572563, 43.095936, 23.027790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825771, 43.368484, 23.174770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108266, 0.547914, -0.829499,
		-0.766529, 0.485305, 0.420609,
		0.633018, 0.681373, 0.367450,
		34.015678, 43.572895, 23.285006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198917, 43.770638, 22.966343>,  <33.572563, 43.095936, 23.027790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198917, 43.770638, 22.966343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.590511, 43.849995, 22.985210>,  <33.825466, 43.897610, 22.996531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.590511, 43.849995, 22.985210>,  <33.198917, 43.770638, 22.966343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590511, 43.849995, 22.985210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112433, 0.718092, -0.686806,
		-0.170133, 0.667070, 0.725308,
		0.978986, 0.198397, 0.047170,
		33.884209, 43.909515, 22.999361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355953, 44.513123, 23.111521>,  <33.198917, 43.770638, 22.966343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355953, 44.513123, 23.111521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.697868, 44.389877, 22.944473>,  <33.903015, 44.315929, 22.844244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.697868, 44.389877, 22.944473>,  <33.355953, 44.513123, 23.111521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697868, 44.389877, 22.944473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061095, 0.739358, -0.670535,
		0.515372, 0.598678, 0.613168,
		0.854786, -0.308114, -0.417621,
		33.954304, 44.297443, 22.819187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732826, 45.135769, 22.858574>,  <33.355953, 44.513123, 23.111521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732826, 45.135769, 22.858574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891445, 44.834736, 22.648287>,  <33.986614, 44.654118, 22.522114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891445, 44.834736, 22.648287>,  <33.732826, 45.135769, 22.858574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891445, 44.834736, 22.648287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071998, 0.596398, -0.799453,
		0.915189, 0.279167, 0.290681,
		0.396543, -0.752579, -0.525718,
		34.010406, 44.608963, 22.490572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232998, 45.442940, 22.393951>,  <33.732826, 45.135769, 22.858574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232998, 45.442940, 22.393951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.144070, 45.091805, 22.224255>,  <34.090714, 44.881123, 22.122437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.144070, 45.091805, 22.224255>,  <34.232998, 45.442940, 22.393951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144070, 45.091805, 22.224255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249546, 0.471870, -0.845616,
		0.942497, -0.082131, -0.323967,
		-0.222321, -0.877835, -0.424240,
		34.077374, 44.828453, 22.096983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336685, 45.612976, 21.774204>,  <34.232998, 45.442940, 22.393951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336685, 45.612976, 21.774204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.146057, 45.262955, 21.740337>,  <34.031681, 45.052944, 21.720018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.146057, 45.262955, 21.740337>,  <34.336685, 45.612976, 21.774204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146057, 45.262955, 21.740337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366360, 0.285223, -0.885680,
		0.799162, -0.391072, -0.456512,
		-0.476573, -0.875049, -0.084666,
		34.003086, 45.000439, 21.714937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495869, 45.438232, 21.205784>,  <34.336685, 45.612976, 21.774204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495869, 45.438232, 21.205784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.152458, 45.246708, 21.279181>,  <33.946411, 45.131794, 21.323217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.152458, 45.246708, 21.279181>,  <34.495869, 45.438232, 21.205784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152458, 45.246708, 21.279181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333472, 0.249527, -0.909138,
		0.389523, -0.841709, -0.373897,
		-0.858527, -0.478814, 0.183490,
		33.894901, 45.103065, 21.334229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325809, 44.949657, 20.647570>,  <34.495869, 45.438232, 21.205784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325809, 44.949657, 20.647570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.962105, 44.972298, 20.812510>,  <33.743881, 44.985882, 20.911472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.962105, 44.972298, 20.812510>,  <34.325809, 44.949657, 20.647570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962105, 44.972298, 20.812510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394194, 0.200867, -0.896808,
		-0.133589, -0.977982, -0.160329,
		-0.909266, 0.056603, 0.412348,
		33.689323, 44.989277, 20.936214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782505, 44.471439, 20.234652>,  <34.325809, 44.949657, 20.647570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782505, 44.471439, 20.234652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.590038, 44.768589, 20.420820>,  <33.474560, 44.946880, 20.532520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.590038, 44.768589, 20.420820>,  <33.782505, 44.471439, 20.234652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590038, 44.768589, 20.420820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492724, 0.209937, -0.844482,
		-0.725054, -0.635658, 0.265019,
		-0.481164, 0.742876, 0.465420,
		33.445690, 44.991451, 20.560446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303093, 44.696857, 19.657703>,  <33.782505, 44.471439, 20.234652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303093, 44.696857, 19.657703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.100906, 44.439266, 19.427992>,  <32.979595, 44.284710, 19.290165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.100906, 44.439266, 19.427992>,  <33.303093, 44.696857, 19.657703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100906, 44.439266, 19.427992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275593, -0.751192, 0.599799,
		-0.817653, 0.144909, 0.557176,
		-0.505462, -0.643981, -0.574279,
		32.949268, 44.246071, 19.255709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829727, 44.453369, 20.007328>,  <33.303093, 44.696857, 19.657703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829727, 44.453369, 20.007328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.879169, 44.177380, 19.722048>,  <32.908836, 44.011787, 19.550879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.879169, 44.177380, 19.722048>,  <32.829727, 44.453369, 20.007328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879169, 44.177380, 19.722048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016684, -0.717167, 0.696701,
		-0.992191, -0.098014, -0.077133,
		0.123604, -0.689974, -0.713203,
		32.916252, 43.970387, 19.508087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391380, 43.979324, 20.189711>,  <32.829727, 44.453369, 20.007328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391380, 43.979324, 20.189711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.639477, 43.773800, 19.952629>,  <32.788334, 43.650486, 19.810381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.639477, 43.773800, 19.952629>,  <32.391380, 43.979324, 20.189711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639477, 43.773800, 19.952629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071726, -0.789587, 0.609433,
		-0.781116, -0.335491, -0.526597,
		0.620253, -0.513809, -0.592695,
		32.825550, 43.619656, 19.774818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062759, 43.285122, 20.229170>,  <32.391380, 43.979324, 20.189711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062759, 43.285122, 20.229170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.415878, 43.212452, 20.055893>,  <32.627750, 43.168850, 19.951927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.415878, 43.212452, 20.055893>,  <32.062759, 43.285122, 20.229170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415878, 43.212452, 20.055893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102886, -0.825013, 0.555669,
		-0.458339, -0.535115, -0.709632,
		0.882802, -0.181673, -0.433192,
		32.680717, 43.157951, 19.925936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016403, 42.567802, 20.071402>,  <32.062759, 43.285122, 20.229170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016403, 42.567802, 20.071402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.403343, 42.667473, 20.052872>,  <32.635506, 42.727276, 20.041754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.403343, 42.667473, 20.052872>,  <32.016403, 42.567802, 20.071402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403343, 42.667473, 20.052872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231065, -0.791995, 0.565113,
		0.104122, -0.557366, -0.823712,
		0.967351, 0.249172, -0.046324,
		32.693550, 42.742226, 20.038975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342922, 42.039654, 19.800873>,  <32.016403, 42.567802, 20.071402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342922, 42.039654, 19.800873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.599625, 42.249294, 20.024826>,  <32.753647, 42.375076, 20.159199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.599625, 42.249294, 20.024826>,  <32.342922, 42.039654, 19.800873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599625, 42.249294, 20.024826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302551, -0.843860, 0.443128,
		0.704706, -0.114988, -0.700120,
		0.641758, 0.524097, 0.559884,
		32.792152, 42.406525, 20.192791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860966, 41.604412, 19.759251>,  <32.342922, 42.039654, 19.800873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860966, 41.604412, 19.759251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.964226, 41.845905, 20.060944>,  <33.026180, 41.990799, 20.241961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.964226, 41.845905, 20.060944>,  <32.860966, 41.604412, 19.759251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964226, 41.845905, 20.060944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415266, -0.774236, 0.477611,
		0.872304, 0.189913, -0.450576,
		0.258147, 0.603731, 0.754234,
		33.041672, 42.027023, 20.287214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498344, 41.373665, 19.912275>,  <32.860966, 41.604412, 19.759251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498344, 41.373665, 19.912275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.377327, 41.564823, 20.242144>,  <33.304714, 41.679520, 20.440063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.377327, 41.564823, 20.242144>,  <33.498344, 41.373665, 19.912275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377327, 41.564823, 20.242144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334486, -0.756956, 0.561371,
		0.892516, 0.445680, 0.069164,
		-0.302546, 0.477898, 0.824669,
		33.286564, 41.708191, 20.489544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260212, 41.389202, 19.799429>,  <33.498344, 41.373665, 19.912275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260212, 41.389202, 19.799429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.573433, 41.241879, 19.598961>,  <34.761368, 41.153484, 19.478680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.573433, 41.241879, 19.598961>,  <34.260212, 41.389202, 19.799429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573433, 41.241879, 19.598961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129615, 0.691475, -0.710677,
		0.608297, 0.621459, 0.493724,
		0.783055, -0.368309, -0.501172,
		34.808350, 41.131386, 19.448608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817978, 41.920090, 19.668461>,  <34.260212, 41.389202, 19.799429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817978, 41.920090, 19.668461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.875572, 41.652409, 19.376860>,  <34.910130, 41.491802, 19.201899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.875572, 41.652409, 19.376860>,  <34.817978, 41.920090, 19.668461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875572, 41.652409, 19.376860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018386, 0.734741, -0.678099,
		0.989409, 0.111039, 0.093487,
		0.143984, -0.669198, -0.729001,
		34.918766, 41.451649, 19.158159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350567, 42.184746, 19.202215>,  <34.817978, 41.920090, 19.668461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350567, 42.184746, 19.202215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.192928, 41.898354, 18.971718>,  <35.098343, 41.726517, 18.833420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.192928, 41.898354, 18.971718>,  <35.350567, 42.184746, 19.202215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192928, 41.898354, 18.971718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034180, 0.637972, -0.769300,
		0.918432, -0.283484, -0.275896,
		-0.394099, -0.715980, -0.576245,
		35.074699, 41.683559, 18.798843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746532, 42.241051, 18.607670>,  <35.350567, 42.184746, 19.202215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746532, 42.241051, 18.607670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.409378, 42.048077, 18.512344>,  <35.207085, 41.932293, 18.455149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.409378, 42.048077, 18.512344>,  <35.746532, 42.241051, 18.607670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409378, 42.048077, 18.512344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050270, 0.511552, -0.857780,
		0.535738, -0.711032, -0.455432,
		-0.842886, -0.482440, -0.238315,
		35.156513, 41.903347, 18.440851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902241, 41.878555, 18.066082>,  <35.746532, 42.241051, 18.607670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902241, 41.878555, 18.066082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.503071, 41.898167, 18.049427>,  <35.263569, 41.909935, 18.039434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.503071, 41.898167, 18.049427>,  <35.902241, 41.878555, 18.066082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503071, 41.898167, 18.049427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056337, 0.353872, -0.933596,
		-0.031038, -0.934008, -0.355901,
		-0.997929, 0.049028, -0.041636,
		35.203693, 41.912876, 18.036936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705112, 41.815220, 17.431770>,  <35.902241, 41.878555, 18.066082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705112, 41.815220, 17.431770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.353527, 41.987957, 17.512699>,  <35.142574, 42.091599, 17.561256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.353527, 41.987957, 17.512699>,  <35.705112, 41.815220, 17.431770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353527, 41.987957, 17.512699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041407, 0.491762, -0.869745,
		-0.475087, -0.756097, -0.450122,
		-0.878964, 0.431842, 0.202322,
		35.089836, 42.117508, 17.573395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303116, 41.751534, 16.812614>,  <35.705112, 41.815220, 17.431770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303116, 41.751534, 16.812614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.126690, 42.041641, 17.024069>,  <35.020836, 42.215706, 17.150942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.126690, 42.041641, 17.024069>,  <35.303116, 41.751534, 16.812614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126690, 42.041641, 17.024069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039521, 0.572757, -0.818772,
		-0.896607, -0.382020, -0.223957,
		-0.441061, 0.725266, 0.528635,
		34.994373, 42.259220, 17.182659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754715, 41.895531, 16.432402>,  <35.303116, 41.751534, 16.812614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754715, 41.895531, 16.432402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.857521, 42.211632, 16.654915>,  <34.919205, 42.401291, 16.788422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.857521, 42.211632, 16.654915>,  <34.754715, 41.895531, 16.432402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857521, 42.211632, 16.654915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122379, 0.597599, -0.792401,
		-0.958627, 0.135584, 0.250304,
		0.257018, 0.790248, 0.556282,
		34.934628, 42.448708, 16.821800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361809, 42.367008, 16.205460>,  <34.754715, 41.895531, 16.432402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361809, 42.367008, 16.205460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.649220, 42.568184, 16.397615>,  <34.821667, 42.688889, 16.512909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.649220, 42.568184, 16.397615>,  <34.361809, 42.367008, 16.205460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649220, 42.568184, 16.397615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046840, 0.724136, -0.688065,
		-0.693922, 0.471891, 0.543868,
		0.718526, 0.502938, 0.480390,
		34.864777, 42.719067, 16.541733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.562920, 34.900566, 30.210251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.893250, 35.092815, 30.092262>,  <39.091450, 35.208164, 30.021469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.893250, 35.092815, 30.092262>,  <38.562920, 34.900566, 30.210251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893250, 35.092815, 30.092262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486866, 0.343731, -0.803001,
		-0.284548, 0.806754, 0.517861,
		0.825829, 0.480621, -0.294973,
		39.140999, 35.237003, 30.003771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340645, 35.482513, 29.813108>,  <38.562920, 34.900566, 30.210251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340645, 35.482513, 29.813108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.728703, 35.506413, 29.719091>,  <38.961536, 35.520752, 29.662682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.728703, 35.506413, 29.719091>,  <38.340645, 35.482513, 29.813108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728703, 35.506413, 29.719091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240846, 0.350976, -0.904880,
		0.028432, 0.934476, 0.354888,
		0.970147, 0.059746, -0.235044,
		39.019745, 35.524338, 29.648579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361103, 36.159832, 29.534306>,  <38.340645, 35.482513, 29.813108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361103, 36.159832, 29.534306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.677303, 35.961121, 29.391018>,  <38.867023, 35.841896, 29.305046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.677303, 35.961121, 29.391018>,  <38.361103, 36.159832, 29.534306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677303, 35.961121, 29.391018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214203, 0.323699, -0.921595,
		0.573780, 0.805254, 0.149474,
		0.790502, -0.496775, -0.358220,
		38.914455, 35.812088, 29.283552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576794, 36.670013, 29.149620>,  <38.361103, 36.159832, 29.534306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576794, 36.670013, 29.149620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.744503, 36.333088, 29.014145>,  <38.845127, 36.130932, 28.932859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.744503, 36.333088, 29.014145>,  <38.576794, 36.670013, 29.149620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744503, 36.333088, 29.014145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170967, 0.293131, -0.940661,
		0.891617, 0.452299, -0.021107,
		0.419273, -0.842318, -0.338689,
		38.870285, 36.080391, 28.912539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045845, 36.876747, 28.601770>,  <38.576794, 36.670013, 29.149620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045845, 36.876747, 28.601770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956863, 36.489590, 28.554960>,  <38.903473, 36.257294, 28.526875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956863, 36.489590, 28.554960>,  <39.045845, 36.876747, 28.601770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956863, 36.489590, 28.554960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175049, 0.157737, -0.971842,
		0.959099, -0.195705, -0.204518,
		-0.222454, -0.967894, -0.117028,
		38.890125, 36.199223, 28.519852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311787, 36.808270, 28.000805>,  <39.045845, 36.876747, 28.601770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311787, 36.808270, 28.000805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.050507, 36.506332, 28.024590>,  <38.893738, 36.325169, 28.038860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.050507, 36.506332, 28.024590>,  <39.311787, 36.808270, 28.000805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050507, 36.506332, 28.024590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157788, 0.058893, -0.985715,
		0.740560, -0.653255, -0.157574,
		-0.653203, -0.754844, 0.059462,
		38.854546, 36.279881, 28.042429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408596, 36.367626, 27.421473>,  <39.311787, 36.808270, 28.000805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408596, 36.367626, 27.421473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.037487, 36.332706, 27.566587>,  <38.814819, 36.311756, 27.653656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.037487, 36.332706, 27.566587>,  <39.408596, 36.367626, 27.421473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037487, 36.332706, 27.566587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365164, 0.012439, -0.930860,
		0.076754, -0.996104, -0.043421,
		-0.927774, -0.087303, 0.362787,
		38.759155, 36.306519, 27.675423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131752, 35.884300, 27.011141>,  <39.408596, 36.367626, 27.421473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131752, 35.884300, 27.011141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811535, 36.070007, 27.162708>,  <38.619404, 36.181431, 27.253649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811535, 36.070007, 27.162708>,  <39.131752, 35.884300, 27.011141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811535, 36.070007, 27.162708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424450, 0.007084, -0.905424,
		-0.423046, -0.885665, 0.191389,
		-0.800546, 0.464271, 0.378917,
		38.571369, 36.209290, 27.276384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610844, 35.458344, 26.638971>,  <39.131752, 35.884300, 27.011141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610844, 35.458344, 26.638971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430798, 35.776917, 26.800514>,  <38.322769, 35.968060, 26.897440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430798, 35.776917, 26.800514>,  <38.610844, 35.458344, 26.638971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430798, 35.776917, 26.800514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575272, 0.087287, -0.813292,
		-0.682980, -0.598401, 0.418874,
		-0.450112, 0.796428, 0.403858,
		38.295765, 36.015846, 26.921671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925766, 35.319614, 26.632126>,  <38.610844, 35.458344, 26.638971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925766, 35.319614, 26.632126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.938618, 35.719173, 26.645779>,  <37.946331, 35.958908, 26.653971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.938618, 35.719173, 26.645779>,  <37.925766, 35.319614, 26.632126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938618, 35.719173, 26.645779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642704, 0.046801, -0.764684,
		-0.765441, 0.002635, 0.643501,
		0.032132, 0.998901, 0.034130,
		37.948257, 36.018845, 26.656017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236317, 35.561607, 26.683069>,  <37.925766, 35.319614, 26.632126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236317, 35.561607, 26.683069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452030, 35.863003, 26.532640>,  <37.581459, 36.043839, 26.442383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452030, 35.863003, 26.532640>,  <37.236317, 35.561607, 26.683069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452030, 35.863003, 26.532640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504768, -0.068240, -0.860554,
		-0.674080, 0.653910, 0.343536,
		0.539282, 0.753488, -0.376072,
		37.613815, 36.089050, 26.419819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702267, 36.029575, 26.346134>,  <37.236317, 35.561607, 26.683069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702267, 36.029575, 26.346134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062916, 36.118145, 26.197512>,  <37.279305, 36.171288, 26.108339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062916, 36.118145, 26.197512>,  <36.702267, 36.029575, 26.346134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062916, 36.118145, 26.197512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396696, 0.080973, -0.914372,
		-0.172379, 0.971810, 0.160845,
		0.901620, 0.221425, -0.371555,
		37.333401, 36.184574, 26.086044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528103, 36.474709, 26.959047>,  <36.702267, 36.029575, 26.346134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528103, 36.474709, 26.959047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247318, 36.713711, 27.114092>,  <36.078850, 36.857113, 27.207119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247318, 36.713711, 27.114092>,  <36.528103, 36.474709, 26.959047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247318, 36.713711, 27.114092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122259, -0.435064, 0.892060,
		0.701647, 0.673578, 0.232346,
		-0.701958, 0.597505, 0.387613,
		36.036732, 36.892963, 27.230375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847588, 36.690338, 27.512438>,  <36.528103, 36.474709, 26.959047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847588, 36.690338, 27.512438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.458050, 36.752296, 27.578928>,  <36.224327, 36.789471, 27.618822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.458050, 36.752296, 27.578928>,  <36.847588, 36.690338, 27.512438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458050, 36.752296, 27.578928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088541, -0.415041, 0.905484,
		0.209247, 0.896520, 0.390471,
		-0.973846, 0.154898, 0.166225,
		36.165897, 36.798767, 27.628796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833687, 36.961632, 28.183691>,  <36.847588, 36.690338, 27.512438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833687, 36.961632, 28.183691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452465, 36.846298, 28.146717>,  <36.223732, 36.777096, 28.124533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452465, 36.846298, 28.146717>,  <36.833687, 36.961632, 28.183691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452465, 36.846298, 28.146717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009440, -0.333427, 0.942729,
		-0.302645, 0.897601, 0.320497,
		-0.953057, -0.288338, -0.092437,
		36.166550, 36.759796, 28.118986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554047, 37.182571, 28.840343>,  <36.833687, 36.961632, 28.183691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554047, 37.182571, 28.840343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.280956, 36.916180, 28.720102>,  <36.117104, 36.756344, 28.647959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.280956, 36.916180, 28.720102>,  <36.554047, 37.182571, 28.840343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280956, 36.916180, 28.720102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201328, -0.224016, 0.953564,
		-0.702394, 0.711538, 0.018860,
		-0.682722, -0.665981, -0.300601,
		36.076141, 36.716385, 28.629923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990059, 37.325420, 29.191629>,  <36.554047, 37.182571, 28.840343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990059, 37.325420, 29.191629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904427, 36.948578, 29.088396>,  <35.853046, 36.722473, 29.026455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904427, 36.948578, 29.088396>,  <35.990059, 37.325420, 29.191629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904427, 36.948578, 29.088396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218074, -0.211446, 0.952751,
		-0.952162, 0.260249, -0.160181,
		-0.214082, -0.942105, -0.258084,
		35.840202, 36.665947, 29.010971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479382, 37.084084, 29.599476>,  <35.990059, 37.325420, 29.191629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479382, 37.084084, 29.599476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570789, 36.729885, 29.437647>,  <35.625633, 36.517365, 29.340549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570789, 36.729885, 29.437647>,  <35.479382, 37.084084, 29.599476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570789, 36.729885, 29.437647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253942, -0.455399, 0.853303,
		-0.939837, -0.092255, -0.328930,
		0.228516, -0.885495, -0.404573,
		35.639343, 36.464237, 29.316275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911526, 36.629318, 29.522095>,  <35.479382, 37.084084, 29.599476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911526, 36.629318, 29.522095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230755, 36.389965, 29.550406>,  <35.422295, 36.246353, 29.567392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230755, 36.389965, 29.550406>,  <34.911526, 36.629318, 29.522095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230755, 36.389965, 29.550406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370238, -0.394309, 0.841097,
		-0.475394, -0.697463, -0.536234,
		0.798075, -0.598387, 0.070775,
		35.470177, 36.210449, 29.571638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632668, 36.009789, 29.659416>,  <34.911526, 36.629318, 29.522095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632668, 36.009789, 29.659416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004951, 35.959282, 29.796730>,  <35.228321, 35.928978, 29.879118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004951, 35.959282, 29.796730>,  <34.632668, 36.009789, 29.659416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004951, 35.959282, 29.796730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365393, -0.363501, 0.856945,
		0.016586, -0.922998, -0.384447,
		0.930705, -0.126261, 0.343286,
		35.284164, 35.921402, 29.899715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755707, 35.351322, 29.933096>,  <34.632668, 36.009789, 29.659416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755707, 35.351322, 29.933096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033222, 35.572784, 30.117319>,  <35.199734, 35.705662, 30.227854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033222, 35.572784, 30.117319>,  <34.755707, 35.351322, 29.933096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033222, 35.572784, 30.117319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377501, -0.265029, 0.887273,
		0.613308, -0.789443, 0.025132,
		0.693791, 0.553659, 0.460560,
		35.241360, 35.738884, 30.255487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831028, 35.053677, 30.585663>,  <34.755707, 35.351322, 29.933096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831028, 35.053677, 30.585663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025150, 35.395779, 30.658337>,  <35.141624, 35.601040, 30.701941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025150, 35.395779, 30.658337>,  <34.831028, 35.053677, 30.585663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025150, 35.395779, 30.658337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211135, -0.087013, 0.973576,
		0.848469, -0.510842, 0.138347,
		0.485306, 0.855259, 0.181685,
		35.170742, 35.652355, 30.712843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144699, 34.950970, 31.208908>,  <34.831028, 35.053677, 30.585663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144699, 34.950970, 31.208908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170765, 35.349014, 31.179239>,  <35.186405, 35.587841, 31.161438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170765, 35.349014, 31.179239>,  <35.144699, 34.950970, 31.208908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170765, 35.349014, 31.179239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167559, 0.084187, 0.982261,
		0.983706, -0.051580, 0.172226,
		0.065165, 0.995114, -0.074173,
		35.190315, 35.647549, 31.156988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454662, 35.150345, 31.926117>,  <35.144699, 34.950970, 31.208908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454662, 35.150345, 31.926117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276989, 35.473701, 31.771610>,  <35.170383, 35.667717, 31.678905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276989, 35.473701, 31.771610>,  <35.454662, 35.150345, 31.926117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276989, 35.473701, 31.771610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379578, 0.220728, 0.898443,
		0.811554, 0.545693, 0.208804,
		-0.444185, 0.808392, -0.386266,
		35.143734, 35.716221, 31.655731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632782, 35.627640, 32.417404>,  <35.454662, 35.150345, 31.926117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632782, 35.627640, 32.417404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296024, 35.723125, 32.223820>,  <35.093967, 35.780418, 32.107670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296024, 35.723125, 32.223820>,  <35.632782, 35.627640, 32.417404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296024, 35.723125, 32.223820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389188, 0.352661, 0.850977,
		0.373819, 0.904789, -0.203999,
		-0.841898, 0.238718, -0.483965,
		35.043453, 35.794743, 32.078629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462154, 36.397335, 32.585014>,  <35.632782, 35.627640, 32.417404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462154, 36.397335, 32.585014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137180, 36.185772, 32.486866>,  <34.942196, 36.058834, 32.427975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137180, 36.185772, 32.486866>,  <35.462154, 36.397335, 32.585014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137180, 36.185772, 32.486866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474459, 0.355113, 0.805471,
		-0.338887, 0.770810, -0.539451,
		-0.812431, -0.528911, -0.245374,
		34.893452, 36.027100, 32.413254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918808, 36.801689, 32.801479>,  <35.462154, 36.397335, 32.585014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918808, 36.801689, 32.801479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746155, 36.444679, 32.749172>,  <34.642563, 36.230473, 32.717789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746155, 36.444679, 32.749172>,  <34.918808, 36.801689, 32.801479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746155, 36.444679, 32.749172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677758, 0.225222, 0.699942,
		-0.595263, 0.390744, -0.702126,
		-0.431632, -0.892522, -0.130764,
		34.616665, 36.176922, 32.709942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281536, 36.867508, 33.053062>,  <34.918808, 36.801689, 32.801479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281536, 36.867508, 33.053062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292274, 36.468182, 33.032459>,  <34.298717, 36.228588, 33.020096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292274, 36.468182, 33.032459>,  <34.281536, 36.867508, 33.053062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292274, 36.468182, 33.032459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783376, -0.053024, 0.619282,
		-0.620968, 0.023725, -0.783477,
		0.026850, -0.998311, -0.051511,
		34.300331, 36.168690, 33.017006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750202, 37.276733, 33.327362>,  <34.281536, 36.867508, 33.053062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750202, 37.276733, 33.327362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.113884, 37.439701, 33.361675>,  <35.332092, 37.537483, 33.382263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.113884, 37.439701, 33.361675>,  <34.750202, 37.276733, 33.327362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113884, 37.439701, 33.361675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108763, 0.431280, -0.895639,
		-0.401899, 0.804987, 0.436433,
		0.909202, 0.407424, 0.085778,
		35.386646, 37.561928, 33.387409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634911, 38.023693, 33.418694>,  <34.750202, 37.276733, 33.327362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634911, 38.023693, 33.418694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007500, 37.957279, 33.289211>,  <35.231052, 37.917431, 33.211521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007500, 37.957279, 33.289211>,  <34.634911, 38.023693, 33.418694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007500, 37.957279, 33.289211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183148, 0.554792, -0.811580,
		0.314335, 0.815254, 0.486368,
		0.931477, -0.166031, -0.323703,
		35.286942, 37.907471, 33.192101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935551, 38.696762, 33.151951>,  <34.634911, 38.023693, 33.418694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935551, 38.696762, 33.151951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168755, 38.427898, 32.969391>,  <35.308678, 38.266579, 32.859856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168755, 38.427898, 32.969391>,  <34.935551, 38.696762, 33.151951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168755, 38.427898, 32.969391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030078, 0.579215, -0.814620,
		0.811910, 0.461201, 0.357904,
		0.583007, -0.672163, -0.456398,
		35.343658, 38.226250, 32.832470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538696, 39.137123, 32.894386>,  <34.935551, 38.696762, 33.151951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538696, 39.137123, 32.894386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546593, 38.792751, 32.691051>,  <35.551331, 38.586128, 32.569050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546593, 38.792751, 32.691051>,  <35.538696, 39.137123, 32.894386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546593, 38.792751, 32.691051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059053, 0.506542, -0.860191,
		0.998060, 0.046998, -0.040842,
		0.019739, -0.860933, -0.508335,
		35.552513, 38.534470, 32.538551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953220, 39.346405, 32.272232>,  <35.538696, 39.137123, 32.894386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953220, 39.346405, 32.272232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758118, 39.016098, 32.158958>,  <35.641056, 38.817913, 32.090992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758118, 39.016098, 32.158958>,  <35.953220, 39.346405, 32.272232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758118, 39.016098, 32.158958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292116, 0.460081, -0.838447,
		0.822653, -0.326237, -0.465630,
		-0.487760, -0.825769, -0.283188,
		35.611790, 38.768368, 32.074001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220890, 39.123341, 31.544426>,  <35.953220, 39.346405, 32.272232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220890, 39.123341, 31.544426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870697, 38.935837, 31.591406>,  <35.660580, 38.823334, 31.619595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870697, 38.935837, 31.591406>,  <36.220890, 39.123341, 31.544426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870697, 38.935837, 31.591406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303831, 0.344937, -0.888091,
		0.375781, -0.813197, -0.444409,
		-0.875486, -0.468753, 0.117454,
		35.608051, 38.795208, 31.626642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087231, 38.760288, 30.967165>,  <36.220890, 39.123341, 31.544426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087231, 38.760288, 30.967165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713085, 38.787853, 31.105925>,  <35.488598, 38.804394, 31.189180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713085, 38.787853, 31.105925>,  <36.087231, 38.760288, 30.967165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713085, 38.787853, 31.105925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289182, 0.415678, -0.862314,
		-0.203622, -0.906898, -0.368883,
		-0.935367, 0.068911, 0.346900,
		35.432476, 38.808525, 31.209995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638351, 38.454411, 30.422935>,  <36.087231, 38.760288, 30.967165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638351, 38.454411, 30.422935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422478, 38.694717, 30.658840>,  <35.292953, 38.838902, 30.800383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422478, 38.694717, 30.658840>,  <35.638351, 38.454411, 30.422935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422478, 38.694717, 30.658840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392167, 0.440484, -0.807576,
		-0.744949, -0.667118, -0.002118,
		-0.539682, 0.600772, 0.589760,
		35.260574, 38.874950, 30.835768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106655, 38.498154, 30.024904>,  <35.638351, 38.454411, 30.422935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106655, 38.498154, 30.024904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027203, 38.808319, 30.264662>,  <34.979530, 38.994419, 30.408516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027203, 38.808319, 30.264662>,  <35.106655, 38.498154, 30.024904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027203, 38.808319, 30.264662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371074, 0.506549, -0.778275,
		-0.907110, -0.377013, 0.187118,
		-0.198635, 0.775416, 0.599395,
		34.967613, 39.040943, 30.444481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392166, 38.470367, 30.116449>,  <35.106655, 38.498154, 30.024904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392166, 38.470367, 30.116449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533047, 38.842281, 30.159248>,  <34.617577, 39.065430, 30.184929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533047, 38.842281, 30.159248>,  <34.392166, 38.470367, 30.116449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533047, 38.842281, 30.159248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416036, 0.257944, -0.871997,
		-0.838371, 0.262607, 0.477674,
		0.352206, 0.929786, 0.106999,
		34.638710, 39.121216, 30.191347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817566, 38.983475, 29.810547>,  <34.392166, 38.470367, 30.116449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817566, 38.983475, 29.810547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.161842, 39.186981, 29.818130>,  <34.368408, 39.309086, 29.822681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.161842, 39.186981, 29.818130>,  <33.817566, 38.983475, 29.810547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161842, 39.186981, 29.818130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254998, 0.463016, -0.848877,
		-0.440662, 0.725789, 0.528250,
		0.860693, 0.508771, 0.018958,
		34.420052, 39.339611, 29.823818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634785, 39.601246, 29.442896>,  <33.817566, 38.983475, 29.810547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634785, 39.601246, 29.442896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030853, 39.648766, 29.472410>,  <34.268494, 39.677277, 29.490118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030853, 39.648766, 29.472410>,  <33.634785, 39.601246, 29.442896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030853, 39.648766, 29.472410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001706, 0.537840, -0.843045,
		-0.139835, 0.834635, 0.532758,
		0.990173, 0.118796, 0.073785,
		34.327904, 39.684402, 29.494545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910160, 40.325615, 29.414045>,  <33.634785, 39.601246, 29.442896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910160, 40.325615, 29.414045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217865, 40.106071, 29.283213>,  <34.402489, 39.974346, 29.204714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217865, 40.106071, 29.283213>,  <33.910160, 40.325615, 29.414045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217865, 40.106071, 29.283213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051103, 0.563134, -0.824784,
		0.636881, 0.617763, 0.461249,
		0.769266, -0.548861, -0.327080,
		34.448647, 39.941414, 29.185089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412678, 40.753540, 29.193436>,  <33.910160, 40.325615, 29.414045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412678, 40.753540, 29.193436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.505417, 40.411175, 29.008545>,  <34.561058, 40.205753, 28.897610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.505417, 40.411175, 29.008545>,  <34.412678, 40.753540, 29.193436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505417, 40.411175, 29.008545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242139, 0.510999, -0.824772,
		0.942134, 0.079296, 0.325723,
		0.231845, -0.855916, -0.462229,
		34.574970, 40.154400, 28.869877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872906, 41.007332, 28.796843>,  <34.412678, 40.753540, 29.193436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872906, 41.007332, 28.796843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822552, 40.644749, 28.635607>,  <34.792339, 40.427197, 28.538866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822552, 40.644749, 28.635607>,  <34.872906, 41.007332, 28.796843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822552, 40.644749, 28.635607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345136, 0.340920, -0.874445,
		0.930072, -0.249200, 0.269935,
		-0.125886, -0.906462, -0.403088,
		34.784786, 40.372810, 28.514681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493649, 40.735191, 28.410616>,  <34.872906, 41.007332, 28.796843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493649, 40.735191, 28.410616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189335, 40.544121, 28.234875>,  <35.006744, 40.429478, 28.129431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189335, 40.544121, 28.234875>,  <35.493649, 40.735191, 28.410616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189335, 40.544121, 28.234875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316092, 0.318527, -0.893659,
		0.566822, -0.818761, -0.091343,
		-0.760788, -0.477673, -0.439352,
		34.961098, 40.400818, 28.103069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836086, 40.592579, 27.697536>,  <35.493649, 40.735191, 28.410616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836086, 40.592579, 27.697536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437729, 40.556389, 27.695734>,  <35.198715, 40.534676, 27.694653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437729, 40.556389, 27.695734>,  <35.836086, 40.592579, 27.697536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437729, 40.556389, 27.695734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041054, 0.495147, -0.867839,
		0.080746, -0.864086, -0.496826,
		-0.995889, -0.090471, -0.004506,
		35.138962, 40.529247, 27.694382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583660, 40.409729, 27.012688>,  <35.836086, 40.592579, 27.697536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583660, 40.409729, 27.012688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268681, 40.584457, 27.186632>,  <35.079693, 40.689293, 27.290998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268681, 40.584457, 27.186632>,  <35.583660, 40.409729, 27.012688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268681, 40.584457, 27.186632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099886, 0.605755, -0.789356,
		-0.608227, -0.665018, -0.433372,
		-0.787453, 0.436820, 0.434862,
		35.032444, 40.715504, 27.317091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129276, 40.477711, 26.448103>,  <35.583660, 40.409729, 27.012688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129276, 40.477711, 26.448103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025433, 40.741394, 26.730391>,  <34.963127, 40.899605, 26.899763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025433, 40.741394, 26.730391>,  <35.129276, 40.477711, 26.448103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025433, 40.741394, 26.730391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134567, 0.698953, -0.702394,
		-0.956292, -0.277315, -0.092748,
		-0.259611, 0.659213, 0.705720,
		34.947548, 40.939159, 26.942106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418812, 40.763115, 26.287085>,  <35.129276, 40.477711, 26.448103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418812, 40.763115, 26.287085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.617783, 41.012135, 26.528746>,  <34.737167, 41.161545, 26.673742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.617783, 41.012135, 26.528746>,  <34.418812, 40.763115, 26.287085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617783, 41.012135, 26.528746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050137, 0.715891, -0.696409,
		-0.866054, 0.316125, 0.387318,
		0.497430, 0.622547, 0.604151,
		34.767014, 41.198898, 26.709991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059277, 41.393425, 26.387756>,  <34.418812, 40.763115, 26.287085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059277, 41.393425, 26.387756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436451, 41.508923, 26.454090>,  <34.662754, 41.578220, 26.493891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436451, 41.508923, 26.454090>,  <34.059277, 41.393425, 26.387756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436451, 41.508923, 26.454090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105278, 0.731017, -0.674189,
		-0.315894, 0.618258, 0.719700,
		0.942936, 0.288741, 0.165835,
		34.719330, 41.595543, 26.503841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918301, 42.141617, 26.383368>,  <34.059277, 41.393425, 26.387756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918301, 42.141617, 26.383368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315357, 42.094048, 26.392502>,  <34.553593, 42.065506, 26.397982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315357, 42.094048, 26.392502>,  <33.918301, 42.141617, 26.383368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315357, 42.094048, 26.392502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110350, 0.810639, -0.575054,
		0.049878, 0.573341, 0.817797,
		0.992640, -0.118926, 0.022835,
		34.613148, 42.058369, 26.399353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116867, 42.744537, 26.599981>,  <33.918301, 42.141617, 26.383368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116867, 42.744537, 26.599981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413952, 42.571907, 26.395189>,  <34.592201, 42.468330, 26.272314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413952, 42.571907, 26.395189>,  <34.116867, 42.744537, 26.599981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413952, 42.571907, 26.395189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077494, 0.814850, -0.574468,
		0.665113, 0.386989, 0.638643,
		0.742711, -0.431577, -0.511978,
		34.636765, 42.442432, 26.241596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607655, 43.303867, 26.512936>,  <34.116867, 42.744537, 26.599981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607655, 43.303867, 26.512936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687092, 43.025433, 26.236956>,  <34.734753, 42.858372, 26.071367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687092, 43.025433, 26.236956>,  <34.607655, 43.303867, 26.512936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687092, 43.025433, 26.236956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073359, 0.712554, -0.697772,
		0.977333, 0.087958, 0.192571,
		0.198592, -0.696082, -0.689950,
		34.746670, 42.816608, 26.029970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121929, 43.679008, 26.068573>,  <34.607655, 43.303867, 26.512936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121929, 43.679008, 26.068573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961525, 43.384052, 25.851154>,  <34.865280, 43.207077, 25.720703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.961525, 43.384052, 25.851154>,  <35.121929, 43.679008, 26.068573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961525, 43.384052, 25.851154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115779, 0.629382, -0.768422,
		0.908726, -0.245218, -0.337766,
		-0.401015, -0.737391, -0.543545,
		34.841221, 43.162834, 25.688091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318607, 43.708305, 25.357862>,  <35.121929, 43.679008, 26.068573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318607, 43.708305, 25.357862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001221, 43.471642, 25.300787>,  <34.810791, 43.329643, 25.266541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001221, 43.471642, 25.300787>,  <35.318607, 43.708305, 25.357862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001221, 43.471642, 25.300787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134038, 0.398570, -0.907290,
		0.593677, -0.700774, -0.395555,
		-0.793461, -0.591657, -0.142691,
		34.763184, 43.294144, 25.257980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902939, 43.293854, 25.236908>,  <35.318607, 43.708305, 25.357862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902939, 43.293854, 25.236908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185829, 43.573410, 25.279598>,  <36.355564, 43.741142, 25.305212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185829, 43.573410, 25.279598>,  <35.902939, 43.293854, 25.236908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185829, 43.573410, 25.279598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204975, -0.347167, 0.915129,
		0.676623, -0.625326, -0.388780,
		0.707225, 0.698887, 0.106725,
		36.397995, 43.783077, 25.311615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465691, 42.954006, 25.496408>,  <35.902939, 43.293854, 25.236908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465691, 42.954006, 25.496408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545952, 43.335415, 25.586323>,  <36.594109, 43.564262, 25.640272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545952, 43.335415, 25.586323>,  <36.465691, 42.954006, 25.496408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545952, 43.335415, 25.586323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342219, -0.283220, 0.895920,
		0.917946, -0.102843, -0.383143,
		0.200653, 0.953525, 0.224785,
		36.606148, 43.621471, 25.653759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102448, 42.894272, 25.907703>,  <36.465691, 42.954006, 25.496408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102448, 42.894272, 25.907703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990181, 43.267120, 25.999241>,  <36.922821, 43.490829, 26.054163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990181, 43.267120, 25.999241>,  <37.102448, 42.894272, 25.907703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990181, 43.267120, 25.999241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232877, -0.165169, 0.958377,
		0.931124, 0.322281, -0.170712,
		-0.280670, 0.932123, 0.228845,
		36.905979, 43.546757, 26.067894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725616, 43.256287, 26.250053>,  <37.102448, 42.894272, 25.907703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725616, 43.256287, 26.250053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373764, 43.414955, 26.355053>,  <37.162651, 43.510155, 26.418053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373764, 43.414955, 26.355053>,  <37.725616, 43.256287, 26.250053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373764, 43.414955, 26.355053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234296, -0.118946, 0.964861,
		0.413953, 0.910223, 0.011691,
		-0.879629, 0.396668, 0.262500,
		37.109875, 43.533955, 26.433804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939255, 43.679207, 26.790384>,  <37.725616, 43.256287, 26.250053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939255, 43.679207, 26.790384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545166, 43.620689, 26.826006>,  <37.308712, 43.585579, 26.847380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545166, 43.620689, 26.826006>,  <37.939255, 43.679207, 26.790384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545166, 43.620689, 26.826006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118760, -0.208895, 0.970700,
		-0.123402, 0.966934, 0.223182,
		-0.985225, -0.146291, 0.089055,
		37.249599, 43.576801, 26.852722>
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
