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
	<24.215841, 34.812778, 34.396183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.119080, 34.802906, 34.784176>,  <24.061022, 34.796982, 35.016972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.119080, 34.802906, 34.784176>,  <24.215841, 34.812778, 34.396183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.119080, 34.802906, 34.784176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905301, 0.353989, 0.234779,
		-0.349158, 0.934924, -0.063292,
		-0.241905, -0.024676, 0.969986,
		24.046509, 34.795502, 35.075172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678020, 34.309807, 34.092587>,  <24.215841, 34.812778, 34.396183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678020, 34.309807, 34.092587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478682, 33.983471, 33.975246>,  <24.359077, 33.787670, 33.904842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478682, 33.983471, 33.975246>,  <24.678020, 34.309807, 34.092587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478682, 33.983471, 33.975246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497936, 0.007652, -0.867180,
		0.709724, -0.578228, 0.402422,
		-0.498349, -0.815839, -0.293351,
		24.329178, 33.738720, 33.887241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093779, 33.888157, 33.616573>,  <24.678020, 34.309807, 34.092587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093779, 33.888157, 33.616573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711174, 33.805668, 33.534054>,  <24.481611, 33.756176, 33.484543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711174, 33.805668, 33.534054>,  <25.093779, 33.888157, 33.616573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711174, 33.805668, 33.534054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226708, -0.080544, -0.970627,
		0.183549, -0.975185, 0.123794,
		-0.956511, -0.206223, -0.206299,
		24.424221, 33.743801, 33.472164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.989855, 33.333595, 33.192703>,  <25.093779, 33.888157, 33.616573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.989855, 33.333595, 33.192703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660118, 33.551136, 33.129852>,  <24.462276, 33.681660, 33.092140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660118, 33.551136, 33.129852>,  <24.989855, 33.333595, 33.192703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.660118, 33.551136, 33.129852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200989, 0.021690, -0.979353,
		-0.529214, -0.838902, -0.127188,
		-0.824340, 0.543851, -0.157132,
		24.412817, 33.714291, 33.082714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446766, 33.056038, 32.720280>,  <24.989855, 33.333595, 33.192703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446766, 33.056038, 32.720280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.510368, 33.450817, 32.710106>,  <24.548529, 33.687687, 32.704002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.510368, 33.450817, 32.710106>,  <24.446766, 33.056038, 32.720280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.510368, 33.450817, 32.710106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357619, -0.081586, -0.930297,
		-0.920232, 0.138827, -0.365925,
		0.159005, 0.986950, -0.025431,
		24.558069, 33.746902, 32.702477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.156282, 33.429798, 32.127956>,  <24.446766, 33.056038, 32.720280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.156282, 33.429798, 32.127956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.483006, 33.629673, 32.243286>,  <24.679039, 33.749599, 32.312485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.483006, 33.629673, 32.243286>,  <24.156282, 33.429798, 32.127956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.483006, 33.629673, 32.243286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191146, 0.237139, -0.952485,
		-0.544321, 0.833112, 0.098184,
		0.816810, 0.499690, 0.288326,
		24.728048, 33.779579, 32.329784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.107298, 34.158821, 31.925484>,  <24.156282, 33.429798, 32.127956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.107298, 34.158821, 31.925484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497330, 34.077229, 31.960394>,  <24.731348, 34.028275, 31.981340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497330, 34.077229, 31.960394>,  <24.107298, 34.158821, 31.925484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.497330, 34.077229, 31.960394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134147, 0.228706, -0.964209,
		0.176716, 0.951886, 0.250369,
		0.975078, -0.203977, 0.087276,
		24.789852, 34.016037, 31.986576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544628, 34.748169, 31.645403>,  <24.107298, 34.158821, 31.925484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544628, 34.748169, 31.645403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781820, 34.426361, 31.632025>,  <24.924135, 34.233276, 31.623999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781820, 34.426361, 31.632025>,  <24.544628, 34.748169, 31.645403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781820, 34.426361, 31.632025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378288, 0.315005, -0.870442,
		0.710827, 0.503501, 0.491133,
		0.592978, -0.804524, -0.033445,
		24.959713, 34.185005, 31.621990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234482, 34.976685, 31.335218>,  <24.544628, 34.748169, 31.645403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234482, 34.976685, 31.335218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243971, 34.579826, 31.286087>,  <25.249664, 34.341713, 31.256607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243971, 34.579826, 31.286087>,  <25.234482, 34.976685, 31.335218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243971, 34.579826, 31.286087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512974, 0.117536, -0.850319,
		0.858076, -0.042838, 0.511733,
		0.023721, -0.992144, -0.122830,
		25.251087, 34.282185, 31.249239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898447, 34.807453, 31.189585>,  <25.234482, 34.976685, 31.335218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898447, 34.807453, 31.189585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686680, 34.504585, 31.036531>,  <25.559620, 34.322865, 30.944698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686680, 34.504585, 31.036531>,  <25.898447, 34.807453, 31.189585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686680, 34.504585, 31.036531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600956, -0.016360, -0.799115,
		0.598807, -0.653012, 0.463688,
		-0.529417, -0.757171, -0.382635,
		25.527855, 34.277435, 30.921741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384075, 34.448196, 30.891354>,  <25.898447, 34.807453, 31.189585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384075, 34.448196, 30.891354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047819, 34.289474, 30.743908>,  <25.846066, 34.194241, 30.655441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047819, 34.289474, 30.743908>,  <26.384075, 34.448196, 30.891354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047819, 34.289474, 30.743908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396587, 0.012525, -0.917912,
		0.368845, -0.917820, 0.146837,
		-0.840638, -0.396801, -0.368615,
		25.795628, 34.170433, 30.633324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616224, 33.812160, 30.445972>,  <26.384075, 34.448196, 30.891354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616224, 33.812160, 30.445972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246086, 33.921215, 30.340597>,  <26.024002, 33.986649, 30.277372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246086, 33.921215, 30.340597>,  <26.616224, 33.812160, 30.445972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246086, 33.921215, 30.340597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249943, -0.083766, -0.964630,
		-0.285064, -0.958463, 0.009368,
		-0.925347, 0.272640, -0.263440,
		25.968481, 34.003006, 30.261564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536932, 33.410870, 29.999346>,  <26.616224, 33.812160, 30.445972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536932, 33.410870, 29.999346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212292, 33.634338, 29.931015>,  <26.017508, 33.768421, 29.890017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212292, 33.634338, 29.931015>,  <26.536932, 33.410870, 29.999346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212292, 33.634338, 29.931015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032374, -0.334970, -0.941673,
		-0.583312, -0.758734, 0.289949,
		-0.811603, 0.558676, -0.170829,
		25.968811, 33.801941, 29.879766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136330, 33.109406, 29.558773>,  <26.536932, 33.410870, 29.999346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136330, 33.109406, 29.558773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987446, 33.478111, 29.515291>,  <25.898115, 33.699333, 29.489202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987446, 33.478111, 29.515291>,  <26.136330, 33.109406, 29.558773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987446, 33.478111, 29.515291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137755, -0.170686, -0.975648,
		-0.917870, -0.348168, 0.190508,
		-0.372207, 0.921762, -0.108705,
		25.875784, 33.754639, 29.482679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492378, 33.074184, 29.022511>,  <26.136330, 33.109406, 29.558773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492378, 33.074184, 29.022511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647263, 33.442387, 29.043465>,  <25.740194, 33.663307, 29.056038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647263, 33.442387, 29.043465>,  <25.492378, 33.074184, 29.022511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647263, 33.442387, 29.043465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214490, -0.034675, -0.976110,
		-0.896694, 0.389199, -0.210865,
		0.387213, 0.920501, 0.052386,
		25.763426, 33.718536, 29.059181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249928, 33.463169, 28.441071>,  <25.492378, 33.074184, 29.022511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249928, 33.463169, 28.441071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575481, 33.672344, 28.542362>,  <25.770815, 33.797848, 28.603136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575481, 33.672344, 28.542362>,  <25.249928, 33.463169, 28.441071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575481, 33.672344, 28.542362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292560, 0.007707, -0.956216,
		-0.501994, 0.852335, -0.146718,
		0.813886, 0.522939, 0.253228,
		25.819647, 33.829227, 28.618330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391376, 34.066704, 28.013235>,  <25.249928, 33.463169, 28.441071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391376, 34.066704, 28.013235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758768, 34.007755, 28.160030>,  <25.979202, 33.972385, 28.248108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758768, 34.007755, 28.160030>,  <25.391376, 34.066704, 28.013235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758768, 34.007755, 28.160030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374779, 0.028105, -0.926688,
		0.126250, 0.988682, 0.081044,
		0.918478, -0.147368, 0.366989,
		26.034311, 33.963547, 28.270126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776094, 34.543720, 27.747171>,  <25.391376, 34.066704, 28.013235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776094, 34.543720, 27.747171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024137, 34.252998, 27.865309>,  <26.172964, 34.078568, 27.936192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024137, 34.252998, 27.865309>,  <25.776094, 34.543720, 27.747171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024137, 34.252998, 27.865309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312160, -0.116789, -0.942824,
		0.719737, 0.676847, 0.154456,
		0.620108, -0.726800, 0.295342,
		26.210171, 34.034958, 27.953911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457352, 34.760155, 27.476686>,  <25.776094, 34.543720, 27.747171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457352, 34.760155, 27.476686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490644, 34.370937, 27.562710>,  <26.510620, 34.137405, 27.614325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490644, 34.370937, 27.562710>,  <26.457352, 34.760155, 27.476686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490644, 34.370937, 27.562710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349767, -0.173553, -0.920621,
		0.933132, 0.151846, 0.325895,
		0.083233, -0.973048, 0.215059,
		26.515614, 34.079021, 27.627228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120985, 34.624565, 27.296778>,  <26.457352, 34.760155, 27.476686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120985, 34.624565, 27.296778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936228, 34.269836, 27.302452>,  <26.825373, 34.056999, 27.305857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936228, 34.269836, 27.302452>,  <27.120985, 34.624565, 27.296778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936228, 34.269836, 27.302452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335979, -0.189751, -0.922558,
		0.820837, -0.421356, 0.385598,
		-0.461893, -0.886822, 0.014187,
		26.797661, 34.003788, 27.306707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553848, 34.179638, 27.047668>,  <27.120985, 34.624565, 27.296778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553848, 34.179638, 27.047668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215872, 33.969986, 27.005030>,  <27.013086, 33.844193, 26.979446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215872, 33.969986, 27.005030>,  <27.553848, 34.179638, 27.047668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215872, 33.969986, 27.005030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312259, -0.321586, -0.893911,
		0.434247, -0.788586, 0.435386,
		-0.844940, -0.524132, -0.106595,
		26.962389, 33.812748, 26.973051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713909, 33.431290, 26.738935>,  <27.553848, 34.179638, 27.047668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713909, 33.431290, 26.738935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328535, 33.494823, 26.652620>,  <27.097311, 33.532944, 26.600832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328535, 33.494823, 26.652620>,  <27.713909, 33.431290, 26.738935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328535, 33.494823, 26.652620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144486, -0.370257, -0.917624,
		-0.225644, -0.915250, 0.333770,
		-0.963436, 0.158832, -0.215787,
		27.039505, 33.542473, 26.587885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477575, 32.798317, 26.562510>,  <27.713909, 33.431290, 26.738935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477575, 32.798317, 26.562510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223213, 33.065132, 26.407238>,  <27.070597, 33.225224, 26.314075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223213, 33.065132, 26.407238>,  <27.477575, 32.798317, 26.562510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223213, 33.065132, 26.407238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002266, -0.501354, -0.865239,
		-0.771766, -0.551087, 0.317301,
		-0.635902, 0.667043, -0.388177,
		27.032442, 33.265244, 26.290785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956272, 32.351555, 26.299269>,  <27.477575, 32.798317, 26.562510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956272, 32.351555, 26.299269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960033, 32.716694, 26.135988>,  <26.962290, 32.935776, 26.038019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960033, 32.716694, 26.135988>,  <26.956272, 32.351555, 26.299269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960033, 32.716694, 26.135988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086333, -0.407437, -0.909143,
		-0.996222, -0.026693, -0.082639,
		0.009402, 0.912843, -0.408203,
		26.962854, 32.990547, 26.013527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430468, 32.499092, 25.857265>,  <26.956272, 32.351555, 26.299269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430468, 32.499092, 25.857265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758656, 32.693962, 25.737604>,  <26.955568, 32.810883, 25.665808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758656, 32.693962, 25.737604>,  <26.430468, 32.499092, 25.857265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758656, 32.693962, 25.737604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028825, -0.487363, -0.872724,
		-0.570962, 0.724667, -0.385824,
		0.820471, 0.487170, -0.299154,
		27.004797, 32.840115, 25.647858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412910, 32.940899, 25.091677>,  <26.430468, 32.499092, 25.857265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412910, 32.940899, 25.091677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753365, 32.766087, 25.208006>,  <26.957638, 32.661201, 25.277803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753365, 32.766087, 25.208006>,  <26.412910, 32.940899, 25.091677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753365, 32.766087, 25.208006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006785, -0.544796, -0.838541,
		0.524903, 0.715685, -0.460729,
		0.851135, -0.437027, 0.290821,
		27.008705, 32.634979, 25.295252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070721, 33.119175, 24.666182>,  <26.412910, 32.940899, 25.091677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070721, 33.119175, 24.666182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031075, 32.757072, 24.831436>,  <27.007286, 32.539810, 24.930590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031075, 32.757072, 24.831436>,  <27.070721, 33.119175, 24.666182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031075, 32.757072, 24.831436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327473, -0.421730, -0.845521,
		0.939648, 0.051488, 0.338247,
		-0.099115, -0.905258, 0.413139,
		27.001341, 32.485497, 24.955378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744183, 32.678856, 24.664177>,  <27.070721, 33.119175, 24.666182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744183, 32.678856, 24.664177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403172, 32.472088, 24.633234>,  <27.198565, 32.348026, 24.614668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403172, 32.472088, 24.633234>,  <27.744183, 32.678856, 24.664177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403172, 32.472088, 24.633234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346184, -0.447555, -0.824531,
		0.391598, -0.729716, 0.560504,
		-0.852530, -0.516923, -0.077355,
		27.147413, 32.317013, 24.610027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792339, 31.918243, 24.665089>,  <27.744183, 32.678856, 24.664177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792339, 31.918243, 24.665089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480923, 32.037785, 24.444340>,  <27.294073, 32.109509, 24.311890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480923, 32.037785, 24.444340>,  <27.792339, 31.918243, 24.665089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480923, 32.037785, 24.444340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310984, -0.580096, -0.752846,
		-0.545131, -0.757744, 0.358688,
		-0.778538, 0.298853, -0.551874,
		27.247360, 32.127441, 24.278778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377789, 31.398262, 24.356421>,  <27.792339, 31.918243, 24.665089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377789, 31.398262, 24.356421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289045, 31.708935, 24.120607>,  <27.235800, 31.895338, 23.979120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289045, 31.708935, 24.120607>,  <27.377789, 31.398262, 24.356421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289045, 31.708935, 24.120607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081354, -0.617235, -0.782562,
		-0.971679, -0.125657, 0.200125,
		-0.221858, 0.776680, -0.589532,
		27.222488, 31.941938, 23.943748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515823, 31.167408, 25.063198>,  <27.377789, 31.398262, 24.356421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515823, 31.167408, 25.063198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713593, 30.916996, 24.821989>,  <27.832254, 30.766750, 24.677263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713593, 30.916996, 24.821989>,  <27.515823, 31.167408, 25.063198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713593, 30.916996, 24.821989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765697, -0.014670, 0.643034,
		-0.411404, -0.779663, 0.472095,
		0.494424, -0.626028, -0.603021,
		27.861919, 30.729187, 24.641083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685581, 30.528467, 25.394650>,  <27.515823, 31.167408, 25.063198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685581, 30.528467, 25.394650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968899, 30.661295, 25.145473>,  <28.138889, 30.740992, 24.995968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968899, 30.661295, 25.145473>,  <27.685581, 30.528467, 25.394650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968899, 30.661295, 25.145473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546733, 0.300165, 0.781655,
		0.446549, -0.894220, 0.031051,
		0.708292, 0.332070, -0.622938,
		28.181387, 30.760916, 24.958591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369257, 30.285479, 25.627380>,  <27.685581, 30.528467, 25.394650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369257, 30.285479, 25.627380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432524, 30.615623, 25.410580>,  <28.470484, 30.813709, 25.280500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432524, 30.615623, 25.410580>,  <28.369257, 30.285479, 25.627380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432524, 30.615623, 25.410580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651304, 0.325362, 0.685524,
		0.742150, -0.461433, -0.486099,
		0.158165, 0.825360, -0.542001,
		28.479973, 30.863232, 25.247980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108240, 30.332838, 25.564438>,  <28.369257, 30.285479, 25.627380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108240, 30.332838, 25.564438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966564, 30.704803, 25.524815>,  <28.881559, 30.927982, 25.501041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966564, 30.704803, 25.524815>,  <29.108240, 30.332838, 25.564438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966564, 30.704803, 25.524815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587408, 0.303646, 0.750167,
		0.727668, 0.207513, -0.653787,
		-0.354190, 0.929912, -0.099059,
		28.860308, 30.983778, 25.495096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680918, 30.726152, 25.803123>,  <29.108240, 30.332838, 25.564438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680918, 30.726152, 25.803123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340130, 30.931719, 25.843212>,  <29.135658, 31.055058, 25.867266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340130, 30.931719, 25.843212>,  <29.680918, 30.726152, 25.803123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340130, 30.931719, 25.843212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287216, 0.298663, 0.910114,
		0.437788, 0.804172, -0.402056,
		-0.851967, 0.513914, 0.100220,
		29.084539, 31.085894, 25.873278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947968, 31.370626, 26.119957>,  <29.680918, 30.726152, 25.803123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947968, 31.370626, 26.119957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555313, 31.390440, 26.193645>,  <29.319721, 31.402328, 26.237858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555313, 31.390440, 26.193645>,  <29.947968, 31.370626, 26.119957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555313, 31.390440, 26.193645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185879, 0.465501, 0.865308,
		-0.042895, 0.883661, -0.466159,
		-0.981636, 0.049531, 0.184221,
		29.260822, 31.405300, 26.248911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722591, 31.888208, 25.756933>,  <29.947968, 31.370626, 26.119957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722591, 31.888208, 25.756933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367416, 31.804241, 25.920641>,  <29.154312, 31.753860, 26.018866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367416, 31.804241, 25.920641>,  <29.722591, 31.888208, 25.756933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367416, 31.804241, 25.920641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129155, 0.740202, 0.659864,
		-0.441458, 0.638778, -0.630142,
		-0.887938, -0.209916, 0.409269,
		29.101034, 31.741266, 26.043421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255974, 32.548325, 25.867783>,  <29.722591, 31.888208, 25.756933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255974, 32.548325, 25.867783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126669, 32.267666, 26.121771>,  <29.049086, 32.099270, 26.274164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126669, 32.267666, 26.121771>,  <29.255974, 32.548325, 25.867783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126669, 32.267666, 26.121771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091684, 0.644619, 0.758987,
		-0.941857, 0.303569, -0.144051,
		-0.323263, -0.701650, 0.634971,
		29.029690, 32.057171, 26.312262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810152, 32.929199, 26.394844>,  <29.255974, 32.548325, 25.867783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810152, 32.929199, 26.394844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903990, 32.580761, 26.567430>,  <28.960293, 32.371700, 26.670982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903990, 32.580761, 26.567430>,  <28.810152, 32.929199, 26.394844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903990, 32.580761, 26.567430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004331, 0.444784, 0.895627,
		-0.972083, -0.208242, 0.108117,
		0.234596, -0.871092, 0.431465,
		28.974369, 32.319431, 26.696871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232038, 32.831188, 26.948009>,  <28.810152, 32.929199, 26.394844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232038, 32.831188, 26.948009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541651, 32.591862, 27.030857>,  <28.727417, 32.448265, 27.080566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541651, 32.591862, 27.030857>,  <28.232038, 32.831188, 26.948009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541651, 32.591862, 27.030857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145003, 0.150917, 0.977854,
		-0.616323, -0.786920, 0.030057,
		0.774029, -0.598316, 0.207119,
		28.773859, 32.412369, 27.092993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009117, 32.431713, 27.517235>,  <28.232038, 32.831188, 26.948009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009117, 32.431713, 27.517235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408644, 32.422199, 27.534222>,  <28.648359, 32.416489, 27.544413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408644, 32.422199, 27.534222>,  <28.009117, 32.431713, 27.517235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408644, 32.422199, 27.534222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037015, 0.195316, 0.980042,
		-0.031607, -0.980452, 0.194204,
		0.998814, -0.023788, 0.042465,
		28.708288, 32.415062, 27.546961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282711, 32.263599, 28.217508>,  <28.009117, 32.431713, 27.517235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282711, 32.263599, 28.217508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651558, 32.383289, 28.119398>,  <28.872866, 32.455105, 28.060532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651558, 32.383289, 28.119398>,  <28.282711, 32.263599, 28.217508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651558, 32.383289, 28.119398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145222, 0.319922, 0.936248,
		0.358625, -0.898949, 0.251551,
		0.922117, 0.299231, -0.245279,
		28.928194, 32.473057, 28.045815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716789, 32.025394, 28.728540>,  <28.282711, 32.263599, 28.217508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716789, 32.025394, 28.728540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888226, 32.345291, 28.560385>,  <28.991087, 32.537228, 28.459492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888226, 32.345291, 28.560385>,  <28.716789, 32.025394, 28.728540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888226, 32.345291, 28.560385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155989, 0.392805, 0.906295,
		0.889932, -0.454005, 0.043601,
		0.428589, 0.799740, -0.420390,
		29.016802, 32.585213, 28.434267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288847, 32.033272, 29.083529>,  <28.716789, 32.025394, 28.728540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288847, 32.033272, 29.083529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272509, 32.398590, 28.921432>,  <29.262707, 32.617783, 28.824175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272509, 32.398590, 28.921432>,  <29.288847, 32.033272, 29.083529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272509, 32.398590, 28.921432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258111, 0.401457, 0.878755,
		0.965251, -0.068705, -0.252130,
		-0.040845, 0.913297, -0.405241,
		29.260256, 32.672581, 28.799860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831026, 32.427563, 29.390192>,  <29.288847, 32.033272, 29.083529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831026, 32.427563, 29.390192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587112, 32.703613, 29.234303>,  <29.440763, 32.869244, 29.140770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587112, 32.703613, 29.234303>,  <29.831026, 32.427563, 29.390192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587112, 32.703613, 29.234303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077557, 0.541321, 0.837231,
		0.788762, 0.480306, -0.383614,
		-0.609786, 0.690129, -0.389723,
		29.404177, 32.910652, 29.117386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097040, 33.189945, 29.530031>,  <29.831026, 32.427563, 29.390192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097040, 33.189945, 29.530031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699289, 33.212421, 29.494125>,  <29.460640, 33.225906, 29.472582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699289, 33.212421, 29.494125>,  <30.097040, 33.189945, 29.530031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699289, 33.212421, 29.494125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059367, 0.406144, 0.911879,
		0.087701, 0.912080, -0.400524,
		-0.994376, 0.056195, -0.089766,
		29.400976, 33.229279, 29.467196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928831, 33.830879, 29.650515>,  <30.097040, 33.189945, 29.530031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928831, 33.830879, 29.650515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590038, 33.632919, 29.728180>,  <29.386763, 33.514145, 29.774778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590038, 33.632919, 29.728180>,  <29.928831, 33.830879, 29.650515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590038, 33.632919, 29.728180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109287, 0.519516, 0.847443,
		-0.520268, 0.696549, -0.494106,
		-0.846981, -0.494897, 0.194164,
		29.335943, 33.484451, 29.786428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452217, 34.396870, 30.035345>,  <29.928831, 33.830879, 29.650515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452217, 34.396870, 30.035345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255770, 34.051857, 30.084064>,  <29.137901, 33.844849, 30.113297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255770, 34.051857, 30.084064>,  <29.452217, 34.396870, 30.035345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255770, 34.051857, 30.084064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143708, 0.218133, 0.965280,
		-0.859156, 0.456565, -0.231082,
		-0.491120, -0.862535, 0.121798,
		29.108435, 33.793098, 30.120604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787609, 34.471012, 30.229172>,  <29.452217, 34.396870, 30.035345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787609, 34.471012, 30.229172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845848, 34.097839, 30.360897>,  <28.880791, 33.873936, 30.439932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845848, 34.097839, 30.360897>,  <28.787609, 34.471012, 30.229172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845848, 34.097839, 30.360897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412046, 0.245435, 0.877485,
		-0.899455, -0.263451, -0.348675,
		0.145597, -0.932928, 0.329311,
		28.889526, 33.817963, 30.459690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109818, 34.314625, 30.495310>,  <28.787609, 34.471012, 30.229172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109818, 34.314625, 30.495310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357136, 34.042778, 30.653208>,  <28.505527, 33.879669, 30.747946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357136, 34.042778, 30.653208>,  <28.109818, 34.314625, 30.495310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357136, 34.042778, 30.653208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352516, 0.209093, 0.912147,
		-0.702453, -0.703132, -0.110295,
		0.618298, -0.679622, 0.394743,
		28.542625, 33.838890, 30.771631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662199, 33.877575, 30.865755>,  <28.109818, 34.314625, 30.495310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662199, 33.877575, 30.865755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024038, 33.832745, 31.030262>,  <28.241142, 33.805847, 31.128965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024038, 33.832745, 31.030262>,  <27.662199, 33.877575, 30.865755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024038, 33.832745, 31.030262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386243, 0.192640, 0.902057,
		-0.180325, -0.974848, 0.130974,
		0.904599, -0.112076, 0.411266,
		28.295418, 33.799122, 31.153641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569355, 33.481041, 31.486530>,  <27.662199, 33.877575, 30.865755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569355, 33.481041, 31.486530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937082, 33.619358, 31.561663>,  <28.157719, 33.702347, 31.606743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937082, 33.619358, 31.561663>,  <27.569355, 33.481041, 31.486530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937082, 33.619358, 31.561663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309959, 0.342233, 0.887019,
		0.242438, -0.873674, 0.421802,
		0.919320, 0.345788, 0.187833,
		28.212877, 33.723095, 31.618011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732933, 33.264526, 32.118160>,  <27.569355, 33.481041, 31.486530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732933, 33.264526, 32.118160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978659, 33.571995, 32.046867>,  <28.126095, 33.756474, 32.004089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978659, 33.571995, 32.046867>,  <27.732933, 33.264526, 32.118160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978659, 33.571995, 32.046867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284329, 0.426346, 0.858712,
		0.736054, -0.476841, 0.480465,
		0.614313, 0.768669, -0.178234,
		28.162952, 33.802597, 31.993397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105068, 33.301842, 32.726151>,  <27.732933, 33.264526, 32.118160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105068, 33.301842, 32.726151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100744, 33.658848, 32.545792>,  <28.098150, 33.873051, 32.437576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100744, 33.658848, 32.545792>,  <28.105068, 33.301842, 32.726151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100744, 33.658848, 32.545792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353068, 0.418470, 0.836795,
		0.935535, 0.168241, 0.310595,
		-0.010809, 0.892512, -0.450893,
		28.097502, 33.926601, 32.410522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228163, 33.709240, 33.219547>,  <28.105068, 33.301842, 32.726151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228163, 33.709240, 33.219547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074442, 33.967926, 32.956009>,  <27.982210, 34.123138, 32.797886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074442, 33.967926, 32.956009>,  <28.228163, 33.709240, 33.219547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074442, 33.967926, 32.956009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436297, 0.501701, 0.746954,
		0.813608, 0.574507, 0.089355,
		-0.384300, 0.646713, -0.658844,
		27.959152, 34.161942, 32.758354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164656, 34.297760, 33.647820>,  <28.228163, 33.709240, 33.219547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164656, 34.297760, 33.647820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963831, 34.416424, 33.322876>,  <27.843336, 34.487621, 33.127911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963831, 34.416424, 33.322876>,  <28.164656, 34.297760, 33.647820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963831, 34.416424, 33.322876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632824, 0.514217, 0.578891,
		0.589462, 0.804719, -0.070435,
		-0.502063, 0.296661, -0.812357,
		27.813211, 34.505421, 33.079170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087566, 35.174194, 33.610962>,  <28.164656, 34.297760, 33.647820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087566, 35.174194, 33.610962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786446, 35.009327, 33.405670>,  <27.605772, 34.910408, 33.282494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786446, 35.009327, 33.405670>,  <28.087566, 35.174194, 33.610962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786446, 35.009327, 33.405670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651251, 0.579722, 0.489688,
		0.095698, 0.702881, -0.704840,
		-0.752804, -0.412166, -0.513231,
		27.560604, 34.885677, 33.251701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769661, 35.750496, 33.214691>,  <28.087566, 35.174194, 33.610962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769661, 35.750496, 33.214691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521315, 35.441708, 33.269230>,  <27.372307, 35.256435, 33.301952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521315, 35.441708, 33.269230>,  <27.769661, 35.750496, 33.214691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521315, 35.441708, 33.269230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675741, 0.615201, 0.406081,
		-0.397364, 0.159984, -0.903608,
		-0.620867, -0.771967, 0.136352,
		27.335054, 35.210117, 33.310135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968472, 35.910717, 33.885021>,  <27.769661, 35.750496, 33.214691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968472, 35.910717, 33.885021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906160, 35.941826, 34.278912>,  <27.868774, 35.960491, 34.515247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906160, 35.941826, 34.278912>,  <27.968472, 35.910717, 33.885021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906160, 35.941826, 34.278912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679320, -0.715292, 0.163953,
		0.717117, 0.694485, 0.058596,
		-0.155776, 0.077768, 0.984726,
		27.859428, 35.965157, 34.574329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665916, 36.296402, 34.129673>,  <27.968472, 35.910717, 33.885021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665916, 36.296402, 34.129673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823927, 36.147610, 34.465668>,  <28.918734, 36.058334, 34.667263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823927, 36.147610, 34.465668>,  <28.665916, 36.296402, 34.129673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823927, 36.147610, 34.465668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918034, 0.125849, -0.375999,
		0.034154, 0.919668, 0.391208,
		0.395028, -0.371985, 0.839988,
		28.942436, 36.036015, 34.717663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146959, 36.799637, 34.455013>,  <28.665916, 36.296402, 34.129673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146959, 36.799637, 34.455013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289143, 36.445175, 34.573933>,  <29.374453, 36.232498, 34.645283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289143, 36.445175, 34.573933>,  <29.146959, 36.799637, 34.455013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289143, 36.445175, 34.573933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879043, 0.208823, -0.428574,
		0.317700, 0.413675, 0.853194,
		0.355457, -0.886152, 0.297296,
		29.395779, 36.179329, 34.663120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775356, 36.869881, 34.853523>,  <29.146959, 36.799637, 34.455013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775356, 36.869881, 34.853523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794071, 36.501030, 34.699902>,  <29.805300, 36.279720, 34.607727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794071, 36.501030, 34.699902>,  <29.775356, 36.869881, 34.853523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794071, 36.501030, 34.699902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917719, 0.191511, -0.348016,
		0.394465, -0.336174, 0.855210,
		0.046788, -0.922123, -0.384058,
		29.808107, 36.224392, 34.584682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372883, 36.537594, 35.232273>,  <29.775356, 36.869881, 34.853523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372883, 36.537594, 35.232273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282454, 36.398510, 34.868298>,  <30.228195, 36.315060, 34.649914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282454, 36.398510, 34.868298>,  <30.372883, 36.537594, 35.232273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282454, 36.398510, 34.868298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925231, 0.215538, -0.312236,
		0.304693, -0.912493, 0.272980,
		-0.226076, -0.347705, -0.909940,
		30.214630, 36.294197, 34.595314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718824, 35.782516, 35.066055>,  <30.372883, 36.537594, 35.232273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718824, 35.782516, 35.066055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656002, 36.077038, 34.802788>,  <30.618309, 36.253750, 34.644829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656002, 36.077038, 34.802788>,  <30.718824, 35.782516, 35.066055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656002, 36.077038, 34.802788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985616, 0.158973, -0.057349,
		0.062405, -0.657710, -0.750682,
		-0.157057, 0.736305, -0.658170,
		30.608885, 36.297928, 34.605335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400459, 35.586731, 35.294514>,  <30.718824, 35.782516, 35.066055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400459, 35.586731, 35.294514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727495, 35.369476, 35.218044>,  <31.923716, 35.239124, 35.172161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727495, 35.369476, 35.218044>,  <31.400459, 35.586731, 35.294514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727495, 35.369476, 35.218044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161056, -0.534476, 0.829697,
		-0.552830, -0.647554, -0.524455,
		0.817582, -0.543148, -0.191182,
		31.972771, 35.206535, 35.160690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197567, 34.869675, 35.220089>,  <31.400459, 35.586731, 35.294514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197567, 34.869675, 35.220089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575123, 34.884983, 35.351307>,  <31.801657, 34.894169, 35.430038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575123, 34.884983, 35.351307>,  <31.197567, 34.869675, 35.220089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575123, 34.884983, 35.351307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254735, -0.547817, 0.796873,
		0.210206, -0.835722, -0.507329,
		0.943887, 0.038273, 0.328042,
		31.858290, 34.896465, 35.449718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291565, 34.229137, 35.541565>,  <31.197567, 34.869675, 35.220089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291565, 34.229137, 35.541565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612123, 34.424706, 35.679390>,  <31.804459, 34.542046, 35.762085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612123, 34.424706, 35.679390>,  <31.291565, 34.229137, 35.541565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612123, 34.424706, 35.679390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057719, -0.510158, 0.858142,
		0.595344, -0.707598, -0.380618,
		0.801395, 0.488921, 0.344561,
		31.852543, 34.571381, 35.782757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816334, 33.780117, 35.722675>,  <31.291565, 34.229137, 35.541565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816334, 33.780117, 35.722675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893536, 34.110703, 35.934223>,  <31.939857, 34.309055, 36.061153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893536, 34.110703, 35.934223>,  <31.816334, 33.780117, 35.722675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893536, 34.110703, 35.934223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008981, -0.540468, 0.841317,
		0.981157, -0.157628, -0.111736,
		0.193005, 0.826467, 0.528868,
		31.951437, 34.358643, 36.092884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127277, 33.470188, 36.225555>,  <31.816334, 33.780117, 35.722675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127277, 33.470188, 36.225555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068356, 33.839119, 36.368450>,  <32.033001, 34.060478, 36.454185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068356, 33.839119, 36.368450>,  <32.127277, 33.470188, 36.225555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068356, 33.839119, 36.368450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012532, -0.362886, 0.931749,
		0.989012, 0.132773, 0.065013,
		-0.147303, 0.922326, 0.357235,
		32.024166, 34.115818, 36.475620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677982, 33.593658, 36.797749>,  <32.127277, 33.470188, 36.225555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677982, 33.593658, 36.797749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353546, 33.815334, 36.872597>,  <32.158886, 33.948338, 36.917507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353546, 33.815334, 36.872597>,  <32.677982, 33.593658, 36.797749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353546, 33.815334, 36.872597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021093, -0.347409, 0.937476,
		0.584545, 0.756428, 0.293469,
		-0.811087, 0.554187, 0.187120,
		32.110218, 33.981590, 36.928734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822292, 33.873051, 37.457169>,  <32.677982, 33.593658, 36.797749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822292, 33.873051, 37.457169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426479, 33.909870, 37.412712>,  <32.188992, 33.931961, 37.386040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426479, 33.909870, 37.412712>,  <32.822292, 33.873051, 37.457169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426479, 33.909870, 37.412712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128165, -0.206659, 0.969982,
		0.066316, 0.974073, 0.216293,
		-0.989533, 0.092046, -0.111138,
		32.129620, 33.937485, 37.379372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641422, 34.178318, 38.053314>,  <32.822292, 33.873051, 37.457169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641422, 34.178318, 38.053314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303059, 34.024113, 37.905899>,  <32.100040, 33.931587, 37.817451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303059, 34.024113, 37.905899>,  <32.641422, 34.178318, 38.053314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303059, 34.024113, 37.905899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304828, -0.217531, 0.927233,
		-0.437632, 0.896692, 0.066494,
		-0.845907, -0.385518, -0.368535,
		32.049286, 33.908459, 37.795338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055603, 34.470337, 38.464054>,  <32.641422, 34.178318, 38.053314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055603, 34.470337, 38.464054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927561, 34.136726, 38.284309>,  <31.850735, 33.936558, 38.176460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927561, 34.136726, 38.284309>,  <32.055603, 34.470337, 38.464054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927561, 34.136726, 38.284309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454440, -0.281013, 0.845290,
		-0.831273, 0.474793, -0.289061,
		-0.320108, -0.834028, -0.449364,
		31.831528, 33.886517, 38.149502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370993, 34.464668, 38.555004>,  <32.055603, 34.470337, 38.464054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370993, 34.464668, 38.555004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499220, 34.089077, 38.505104>,  <31.576157, 33.863724, 38.475166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499220, 34.089077, 38.505104>,  <31.370993, 34.464668, 38.555004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499220, 34.089077, 38.505104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448974, -0.266584, 0.852852,
		-0.834062, -0.217388, -0.507033,
		0.320567, -0.938976, -0.124746,
		31.595390, 33.807384, 38.467682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748081, 34.110691, 38.832897>,  <31.370993, 34.464668, 38.555004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748081, 34.110691, 38.832897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029709, 33.827522, 38.810501>,  <31.198685, 33.657619, 38.797066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029709, 33.827522, 38.810501>,  <30.748081, 34.110691, 38.832897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029709, 33.827522, 38.810501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330093, -0.396061, 0.856840,
		-0.628749, -0.584794, -0.512534,
		0.704069, -0.707921, -0.055986,
		31.240931, 33.615147, 38.793705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329037, 33.589893, 39.153950>,  <30.748081, 34.110691, 38.832897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329037, 33.589893, 39.153950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712425, 33.477478, 39.134544>,  <30.942457, 33.410030, 39.122902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712425, 33.477478, 39.134544>,  <30.329037, 33.589893, 39.153950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712425, 33.477478, 39.134544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137378, -0.604036, 0.785027,
		-0.249926, -0.745760, -0.617559,
		0.958470, -0.281037, -0.048513,
		30.999966, 33.393166, 39.119991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350918, 32.787594, 39.131027>,  <30.329037, 33.589893, 39.153950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350918, 32.787594, 39.131027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684500, 32.945107, 39.285667>,  <30.884649, 33.039612, 39.378452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684500, 32.945107, 39.285667>,  <30.350918, 32.787594, 39.131027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684500, 32.945107, 39.285667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065002, -0.625596, 0.777434,
		0.547993, -0.673473, -0.496122,
		0.833953, 0.393780, 0.386600,
		30.934685, 33.063240, 39.401646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751030, 32.279770, 39.311394>,  <30.350918, 32.787594, 39.131027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751030, 32.279770, 39.311394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876371, 32.588539, 39.532642>,  <30.951576, 32.773800, 39.665390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876371, 32.588539, 39.532642>,  <30.751030, 32.279770, 39.311394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876371, 32.588539, 39.532642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055883, -0.566455, 0.822195,
		0.947991, -0.288548, -0.134363,
		0.313353, 0.771925, 0.553119,
		30.970377, 32.820118, 39.698578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034000, 31.900019, 39.718132>,  <30.751030, 32.279770, 39.311394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034000, 31.900019, 39.718132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009007, 32.259136, 39.892517>,  <30.994011, 32.474606, 39.997150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009007, 32.259136, 39.892517>,  <31.034000, 31.900019, 39.718132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009007, 32.259136, 39.892517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110103, -0.440353, 0.891048,
		0.991954, 0.007675, 0.126365,
		-0.062484, 0.897792, 0.435965,
		30.990261, 32.528473, 40.023308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503805, 31.878757, 40.277096>,  <31.034000, 31.900019, 39.718132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503805, 31.878757, 40.277096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241940, 32.169781, 40.359138>,  <31.084820, 32.344395, 40.408363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241940, 32.169781, 40.359138>,  <31.503805, 31.878757, 40.277096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241940, 32.169781, 40.359138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341584, -0.526787, 0.778342,
		0.674340, 0.439490, 0.593392,
		-0.654665, 0.727560, 0.205111,
		31.045540, 32.388050, 40.420673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484873, 31.919518, 40.960587>,  <31.503805, 31.878757, 40.277096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484873, 31.919518, 40.960587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132912, 32.096722, 40.891865>,  <30.921736, 32.203045, 40.850632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132912, 32.096722, 40.891865>,  <31.484873, 31.919518, 40.960587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132912, 32.096722, 40.891865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377566, -0.432366, 0.818843,
		0.288476, 0.785366, 0.547705,
		-0.879901, 0.443012, -0.171800,
		30.868942, 32.229626, 40.840324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249121, 32.245167, 41.660332>,  <31.484873, 31.919518, 40.960587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249121, 32.245167, 41.660332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923149, 32.237518, 41.428631>,  <30.727566, 32.232929, 41.289612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923149, 32.237518, 41.428631>,  <31.249121, 32.245167, 41.660332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923149, 32.237518, 41.428631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556096, -0.255731, 0.790796,
		-0.163252, 0.966558, 0.197770,
		-0.814927, -0.019120, -0.579248,
		30.678671, 32.231781, 41.254856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784338, 32.596947, 41.972973>,  <31.249121, 32.245167, 41.660332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784338, 32.596947, 41.972973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590710, 32.357853, 41.717350>,  <30.474533, 32.214397, 41.563976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590710, 32.357853, 41.717350>,  <30.784338, 32.596947, 41.972973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590710, 32.357853, 41.717350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540127, -0.370472, 0.755654,
		-0.688433, 0.710958, -0.143519,
		-0.484069, -0.597736, -0.639053,
		30.445490, 32.178532, 41.525635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177254, 32.623390, 42.208332>,  <30.784338, 32.596947, 41.972973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177254, 32.623390, 42.208332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106619, 32.299530, 41.984444>,  <30.064238, 32.105213, 41.850109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106619, 32.299530, 41.984444>,  <30.177254, 32.623390, 42.208332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106619, 32.299530, 41.984444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557643, -0.386296, 0.734717,
		-0.811080, 0.441866, -0.383280,
		-0.176587, -0.809648, -0.559720,
		30.053642, 32.056637, 41.816528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501997, 32.512947, 42.214939>,  <30.177254, 32.623390, 42.208332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501997, 32.512947, 42.214939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654886, 32.157387, 42.113941>,  <29.746620, 31.944050, 42.053341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654886, 32.157387, 42.113941>,  <29.501997, 32.512947, 42.214939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654886, 32.157387, 42.113941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587829, -0.444719, 0.675783,
		-0.712997, -0.109873, -0.692505,
		0.382221, -0.888905, -0.252496,
		29.769552, 31.890715, 42.038193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959867, 32.017784, 42.330902>,  <29.501997, 32.512947, 42.214939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959867, 32.017784, 42.330902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302162, 31.811249, 42.317585>,  <29.507538, 31.687326, 42.309597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302162, 31.811249, 42.317585>,  <28.959867, 32.017784, 42.330902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302162, 31.811249, 42.317585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314394, -0.569989, 0.759124,
		-0.410942, -0.639143, -0.650094,
		0.855736, -0.516342, -0.033290,
		29.558884, 31.656345, 42.307598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767256, 31.371223, 42.444683>,  <28.959867, 32.017784, 42.330902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767256, 31.371223, 42.444683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160219, 31.321022, 42.499992>,  <29.395998, 31.290901, 42.533176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160219, 31.321022, 42.499992>,  <28.767256, 31.371223, 42.444683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160219, 31.321022, 42.499992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185066, -0.555571, 0.810612,
		-0.024916, -0.821943, -0.569025,
		0.982410, -0.125504, 0.138271,
		29.454943, 31.283371, 42.541473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909847, 30.576950, 42.500481>,  <28.767256, 31.371223, 42.444683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909847, 30.576950, 42.500481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192225, 30.802395, 42.672054>,  <29.361650, 30.937662, 42.774998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192225, 30.802395, 42.672054>,  <28.909847, 30.576950, 42.500481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192225, 30.802395, 42.672054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006933, -0.611080, 0.791539,
		0.708236, -0.555807, -0.435294,
		0.705942, 0.563614, 0.428935,
		29.404007, 30.971479, 42.800735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299362, 30.131355, 42.692760>,  <28.909847, 30.576950, 42.500481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299362, 30.131355, 42.692760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377922, 30.436003, 42.939781>,  <29.425058, 30.618792, 43.087994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377922, 30.436003, 42.939781>,  <29.299362, 30.131355, 42.692760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377922, 30.436003, 42.939781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166478, -0.594769, 0.786470,
		0.966288, -0.257270, 0.009981,
		0.196399, 0.761618, 0.617548,
		29.436842, 30.664488, 43.125046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721880, 29.830994, 43.094418>,  <29.299362, 30.131355, 42.692760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721880, 29.830994, 43.094418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574543, 30.149530, 43.286320>,  <29.486141, 30.340652, 43.401459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574543, 30.149530, 43.286320>,  <29.721880, 29.830994, 43.094418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574543, 30.149530, 43.286320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102088, -0.547560, 0.830515,
		0.924068, 0.256937, 0.282987,
		-0.368342, 0.796342, 0.479753,
		29.464041, 30.388433, 43.430244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969669, 29.643820, 43.667057>,  <29.721880, 29.830994, 43.094418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969669, 29.643820, 43.667057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739824, 29.954075, 43.771523>,  <29.601917, 30.140228, 43.834202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739824, 29.954075, 43.771523>,  <29.969669, 29.643820, 43.667057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739824, 29.954075, 43.771523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124813, -0.398424, 0.908669,
		0.808851, 0.489538, 0.325749,
		-0.574615, 0.775636, 0.261165,
		29.567440, 30.186766, 43.849873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215897, 30.022234, 44.274673>,  <29.969669, 29.643820, 43.667057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215897, 30.022234, 44.274673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824823, 30.106260, 44.275921>,  <29.590179, 30.156675, 44.276669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824823, 30.106260, 44.275921>,  <30.215897, 30.022234, 44.274673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824823, 30.106260, 44.275921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098761, -0.472645, 0.875702,
		0.185429, 0.855850, 0.482843,
		-0.977682, 0.210066, 0.003117,
		29.531519, 30.169281, 44.276855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075760, 30.368441, 44.914421>,  <30.215897, 30.022234, 44.274673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075760, 30.368441, 44.914421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714066, 30.252741, 44.788757>,  <29.497049, 30.183321, 44.713360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714066, 30.252741, 44.788757>,  <30.075760, 30.368441, 44.914421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714066, 30.252741, 44.788757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249154, -0.240119, 0.938225,
		-0.346817, 0.926648, 0.145056,
		-0.904235, -0.289251, -0.314155,
		29.442795, 30.165966, 44.694511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634735, 30.686796, 45.451324>,  <30.075760, 30.368441, 44.914421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634735, 30.686796, 45.451324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418114, 30.401960, 45.272598>,  <29.288139, 30.231058, 45.165363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418114, 30.401960, 45.272598>,  <29.634735, 30.686796, 45.451324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418114, 30.401960, 45.272598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242353, -0.376693, 0.894074,
		-0.804973, 0.592478, 0.031423,
		-0.541556, -0.712090, -0.446817,
		29.255648, 30.188334, 45.138554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038723, 30.710178, 45.827766>,  <29.634735, 30.686796, 45.451324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038723, 30.710178, 45.827766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037430, 30.345057, 45.664410>,  <29.036654, 30.125984, 45.566395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037430, 30.345057, 45.664410>,  <29.038723, 30.710178, 45.827766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037430, 30.345057, 45.664410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297910, -0.388967, 0.871753,
		-0.954588, 0.124481, -0.270676,
		-0.003233, -0.912803, -0.408388,
		29.036461, 30.071217, 45.541893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514790, 30.440948, 46.199570>,  <29.038723, 30.710178, 45.827766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514790, 30.440948, 46.199570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704538, 30.135021, 46.025200>,  <28.818388, 29.951466, 45.920578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704538, 30.135021, 46.025200>,  <28.514790, 30.440948, 46.199570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704538, 30.135021, 46.025200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207885, -0.578499, 0.788747,
		-0.855428, -0.283536, -0.433416,
		0.474369, -0.764817, -0.435922,
		28.846849, 29.905577, 45.894424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119658, 29.931692, 46.360828>,  <28.514790, 30.440948, 46.199570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119658, 29.931692, 46.360828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450275, 29.735601, 46.250195>,  <28.648647, 29.617947, 46.183815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450275, 29.735601, 46.250195>,  <28.119658, 29.931692, 46.360828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450275, 29.735601, 46.250195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219368, -0.733083, 0.643791,
		-0.518360, -0.471451, -0.713468,
		0.826548, -0.490227, -0.276580,
		28.698240, 29.588533, 46.167221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999855, 29.254908, 46.188461>,  <28.119658, 29.931692, 46.360828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999855, 29.254908, 46.188461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384441, 29.259796, 46.298321>,  <28.615194, 29.262730, 46.364235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384441, 29.259796, 46.298321>,  <27.999855, 29.254908, 46.188461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384441, 29.259796, 46.298321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191780, -0.685982, 0.701889,
		0.196982, -0.727515, -0.657206,
		0.961467, 0.012220, 0.274649,
		28.672882, 29.263462, 46.380714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040382, 28.613792, 46.319691>,  <27.999855, 29.254908, 46.188461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040382, 28.613792, 46.319691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352392, 28.784470, 46.502773>,  <28.539598, 28.886875, 46.612621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352392, 28.784470, 46.502773>,  <28.040382, 28.613792, 46.319691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352392, 28.784470, 46.502773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049758, -0.686841, 0.725102,
		0.623766, -0.588373, -0.514522,
		0.780025, 0.426693, 0.457705,
		28.586399, 28.912477, 46.640083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637068, 28.093763, 46.279190>,  <28.040382, 28.613792, 46.319691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637068, 28.093763, 46.279190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694553, 28.337582, 46.591038>,  <28.729044, 28.483871, 46.778145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694553, 28.337582, 46.591038>,  <28.637068, 28.093763, 46.279190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694553, 28.337582, 46.591038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061531, -0.791774, 0.607707,
		0.987705, -0.039365, -0.151295,
		0.143714, 0.609544, 0.779617,
		28.737667, 28.520445, 46.824924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216942, 27.841118, 46.614506>,  <28.637068, 28.093763, 46.279190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216942, 27.841118, 46.614506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046986, 28.074877, 46.891041>,  <28.945011, 28.215132, 47.056961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046986, 28.074877, 46.891041>,  <29.216942, 27.841118, 46.614506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046986, 28.074877, 46.891041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119508, -0.720806, 0.682756,
		0.897320, 0.372719, 0.236425,
		-0.424893, 0.584396, 0.691337,
		28.919518, 28.250196, 47.098442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609682, 27.682978, 47.325985>,  <29.216942, 27.841118, 46.614506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609682, 27.682978, 47.325985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272514, 27.859663, 47.448868>,  <29.070213, 27.965675, 47.522598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272514, 27.859663, 47.448868>,  <29.609682, 27.682978, 47.325985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272514, 27.859663, 47.448868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098927, -0.688478, 0.718479,
		0.528868, 0.575228, 0.624028,
		-0.842918, 0.441714, 0.307209,
		29.019638, 27.992178, 47.541031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742876, 27.704420, 47.978928>,  <29.609682, 27.682978, 47.325985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742876, 27.704420, 47.978928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351055, 27.709415, 47.898605>,  <29.115963, 27.712412, 47.850410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351055, 27.709415, 47.898605>,  <29.742876, 27.704420, 47.978928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351055, 27.709415, 47.898605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157680, -0.667559, 0.727669,
		-0.124962, 0.744452, 0.655878,
		-0.979552, 0.012488, -0.200805,
		29.057190, 27.713161, 47.838364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504398, 27.731865, 48.611843>,  <29.742876, 27.704420, 47.978928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504398, 27.731865, 48.611843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194094, 27.604353, 48.394009>,  <29.007912, 27.527845, 48.263306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194094, 27.604353, 48.394009>,  <29.504398, 27.731865, 48.611843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194094, 27.604353, 48.394009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247237, -0.640478, 0.727091,
		-0.580578, 0.698691, 0.418043,
		-0.775759, -0.318778, -0.544590,
		28.961367, 27.508720, 48.230633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187386, 27.607344, 49.316872>,  <29.504398, 27.731865, 48.611843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187386, 27.607344, 49.316872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365398, 27.929836, 49.472790>,  <29.472206, 28.123331, 49.566341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365398, 27.929836, 49.472790>,  <29.187386, 27.607344, 49.316872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365398, 27.929836, 49.472790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803192, 0.551843, -0.224391,
		-0.396015, -0.213217, 0.893146,
		0.445033, 0.806230, 0.389793,
		29.498909, 28.171705, 49.589729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134501, 26.904335, 49.804474>,  <29.187386, 27.607344, 49.316872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134501, 26.904335, 49.804474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968603, 27.044128, 49.468414>,  <28.869064, 27.128004, 49.266777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968603, 27.044128, 49.468414>,  <29.134501, 26.904335, 49.804474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968603, 27.044128, 49.468414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637670, -0.547030, -0.542343,
		-0.649125, -0.760671, 0.004024,
		-0.414745, 0.349483, -0.840148,
		28.844179, 27.148973, 49.216370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783512, 26.307707, 49.461319>,  <29.134501, 26.904335, 49.804474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783512, 26.307707, 49.461319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914621, 26.589521, 49.209545>,  <28.993288, 26.758610, 49.058479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914621, 26.589521, 49.209545>,  <28.783512, 26.307707, 49.461319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914621, 26.589521, 49.209545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442643, -0.703116, -0.556503,
		-0.834644, -0.096208, -0.542322,
		0.327775, 0.704537, -0.629438,
		29.012955, 26.800882, 49.020714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230516, 26.712790, 49.245430>,  <28.783512, 26.307707, 49.461319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230516, 26.712790, 49.245430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930426, 26.604259, 49.004250>,  <27.750372, 26.539141, 48.859543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930426, 26.604259, 49.004250>,  <28.230516, 26.712790, 49.245430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930426, 26.604259, 49.004250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165313, -0.959933, 0.226276,
		-0.640182, 0.070083, 0.765019,
		-0.750225, -0.271325, -0.602947,
		27.705359, 26.522861, 48.823364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746052, 26.178587, 49.444801>,  <28.230516, 26.712790, 49.245430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746052, 26.178587, 49.444801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703630, 26.105680, 49.053795>,  <27.678179, 26.061937, 48.819191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703630, 26.105680, 49.053795>,  <27.746052, 26.178587, 49.444801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703630, 26.105680, 49.053795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061171, -0.982391, 0.176539,
		-0.992477, -0.041073, 0.115334,
		-0.106052, -0.182266, -0.977513,
		27.671814, 26.051001, 48.760540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089531, 25.748211, 49.281307>,  <27.746052, 26.178587, 49.444801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089531, 25.748211, 49.281307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418409, 25.714724, 49.056099>,  <27.615736, 25.694632, 48.920975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418409, 25.714724, 49.056099>,  <27.089531, 25.748211, 49.281307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418409, 25.714724, 49.056099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069774, -0.966842, 0.245657,
		-0.564915, -0.241262, -0.789091,
		0.822194, -0.083717, -0.563018,
		27.665068, 25.689608, 48.887192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112041, 25.018139, 49.056087>,  <27.089531, 25.748211, 49.281307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112041, 25.018139, 49.056087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481115, 25.142183, 48.964447>,  <27.702559, 25.216610, 48.909462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481115, 25.142183, 48.964447>,  <27.112041, 25.018139, 49.056087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481115, 25.142183, 48.964447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328936, -0.943125, 0.048137,
		-0.201141, -0.119774, -0.972212,
		0.922683, 0.310113, -0.229099,
		27.757919, 25.235218, 48.895718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395161, 24.788975, 48.391556>,  <27.112041, 25.018139, 49.056087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395161, 24.788975, 48.391556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687296, 24.789248, 48.664791>,  <27.862577, 24.789412, 48.828732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687296, 24.789248, 48.664791>,  <27.395161, 24.788975, 48.391556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687296, 24.789248, 48.664791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216623, -0.948616, -0.230658,
		0.647829, 0.316430, -0.692957,
		0.730337, 0.000683, 0.683087,
		27.906397, 24.789452, 48.869717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995447, 24.758539, 48.031940>,  <27.395161, 24.788975, 48.391556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995447, 24.758539, 48.031940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967802, 24.568403, 48.382774>,  <27.951216, 24.454323, 48.593273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967802, 24.568403, 48.382774>,  <27.995447, 24.758539, 48.031940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967802, 24.568403, 48.382774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024046, -0.879725, -0.474875,
		0.997319, -0.011729, 0.072230,
		-0.069113, -0.475338, 0.877084,
		27.947069, 24.425802, 48.645901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352617, 25.328913, 48.360996>,  <27.995447, 24.758539, 48.031940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352617, 25.328913, 48.360996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062119, 25.343185, 48.086395>,  <27.887819, 25.351749, 47.921635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062119, 25.343185, 48.086395>,  <28.352617, 25.328913, 48.360996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062119, 25.343185, 48.086395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684581, 0.128389, -0.717541,
		0.062535, -0.991082, -0.117671,
		-0.726249, 0.035684, -0.686505,
		27.844244, 25.353889, 47.880444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819542, 25.034723, 47.871559>,  <28.352617, 25.328913, 48.360996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819542, 25.034723, 47.871559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503653, 25.230831, 47.724064>,  <28.314119, 25.348495, 47.635567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503653, 25.230831, 47.724064>,  <28.819542, 25.034723, 47.871559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503653, 25.230831, 47.724064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538855, 0.267092, -0.798935,
		-0.293206, -0.829637, -0.475114,
		-0.789725, 0.490270, -0.368741,
		28.266735, 25.377913, 47.613441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645353, 24.839792, 47.084236>,  <28.819542, 25.034723, 47.871559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645353, 24.839792, 47.084236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544212, 25.219309, 47.159988>,  <28.483528, 25.447018, 47.205441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544212, 25.219309, 47.159988>,  <28.645353, 24.839792, 47.084236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544212, 25.219309, 47.159988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614864, 0.308711, -0.725700,
		-0.747000, -0.067050, -0.661434,
		-0.252850, 0.948790, 0.189380,
		28.468357, 25.503946, 47.216801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258051, 25.306637, 46.557575>,  <28.645353, 24.839792, 47.084236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258051, 25.306637, 46.557575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501804, 25.510870, 46.800213>,  <28.648056, 25.633410, 46.945797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501804, 25.510870, 46.800213>,  <28.258051, 25.306637, 46.557575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501804, 25.510870, 46.800213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559249, 0.265531, -0.785324,
		-0.562044, 0.817800, -0.123734,
		0.609383, 0.510584, 0.606594,
		28.684620, 25.664045, 46.982193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237715, 26.077463, 46.381008>,  <28.258051, 25.306637, 46.557575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237715, 26.077463, 46.381008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576376, 26.036514, 46.589890>,  <28.779573, 26.011946, 46.715218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576376, 26.036514, 46.589890>,  <28.237715, 26.077463, 46.381008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576376, 26.036514, 46.589890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472662, 0.595510, -0.649584,
		-0.244480, 0.796799, 0.552577,
		0.846652, -0.102371, 0.522207,
		28.830372, 26.005802, 46.746552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540699, 26.784925, 46.531353>,  <28.237715, 26.077463, 46.381008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540699, 26.784925, 46.531353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837082, 26.519316, 46.571465>,  <29.014912, 26.359951, 46.595531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837082, 26.519316, 46.571465>,  <28.540699, 26.784925, 46.531353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837082, 26.519316, 46.571465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590930, 0.573757, -0.567103,
		0.319035, 0.479456, 0.817520,
		0.740958, -0.664023, 0.100276,
		29.059370, 26.320108, 46.601547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133202, 27.016972, 46.109589>,  <28.540699, 26.784925, 46.531353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133202, 27.016972, 46.109589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331367, 26.708090, 46.268719>,  <29.450266, 26.522760, 46.364197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331367, 26.708090, 46.268719>,  <29.133202, 27.016972, 46.109589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331367, 26.708090, 46.268719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807581, 0.240741, -0.538383,
		0.319968, 0.588001, 0.742883,
		0.495412, -0.772204, 0.397829,
		29.479992, 26.476429, 46.388069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778397, 27.146763, 46.501099>,  <29.133202, 27.016972, 46.109589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778397, 27.146763, 46.501099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843435, 26.781307, 46.352062>,  <29.882460, 26.562033, 46.262642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843435, 26.781307, 46.352062>,  <29.778397, 27.146763, 46.501099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843435, 26.781307, 46.352062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765414, 0.355090, -0.536706,
		0.622658, -0.197916, 0.757051,
		0.162599, -0.913641, -0.372587,
		29.892216, 26.507215, 46.240288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553417, 27.038057, 46.424713>,  <29.778397, 27.146763, 46.501099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553417, 27.038057, 46.424713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396364, 26.775208, 46.167332>,  <30.302132, 26.617496, 46.012905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396364, 26.775208, 46.167332>,  <30.553417, 27.038057, 46.424713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396364, 26.775208, 46.167332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664202, 0.281323, -0.692598,
		0.636141, -0.699316, 0.326008,
		-0.392632, -0.657126, -0.643449,
		30.278574, 26.578070, 45.974297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103212, 26.594803, 46.170177>,  <30.553417, 27.038057, 46.424713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103212, 26.594803, 46.170177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794127, 26.609829, 45.916721>,  <30.608675, 26.618845, 45.764648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794127, 26.609829, 45.916721>,  <31.103212, 26.594803, 46.170177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794127, 26.609829, 45.916721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625238, 0.217244, -0.749588,
		0.109495, -0.975394, -0.191355,
		-0.772714, 0.037567, -0.633641,
		30.562313, 26.621099, 45.726627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474863, 26.420851, 45.581699>,  <31.103212, 26.594803, 46.170177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474863, 26.420851, 45.581699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131857, 26.516676, 45.399590>,  <30.926054, 26.574171, 45.290321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131857, 26.516676, 45.399590>,  <31.474863, 26.420851, 45.581699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131857, 26.516676, 45.399590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512671, 0.324208, -0.795020,
		-0.042852, -0.915150, -0.400830,
		-0.857515, 0.239562, -0.455278,
		30.874603, 26.588545, 45.263004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479147, 26.091866, 44.872070>,  <31.474863, 26.420851, 45.581699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479147, 26.091866, 44.872070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228895, 26.403830, 44.879330>,  <31.078745, 26.591007, 44.883686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228895, 26.403830, 44.879330>,  <31.479147, 26.091866, 44.872070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228895, 26.403830, 44.879330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486572, 0.408290, -0.772365,
		-0.609783, -0.474385, -0.634920,
		-0.625630, 0.779909, 0.018146,
		31.041206, 26.637802, 44.884773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377604, 26.221428, 44.170380>,  <31.479147, 26.091866, 44.872070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377604, 26.221428, 44.170380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262056, 26.555410, 44.357742>,  <31.192728, 26.755800, 44.470158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262056, 26.555410, 44.357742>,  <31.377604, 26.221428, 44.170380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262056, 26.555410, 44.357742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456468, 0.550187, -0.699236,
		-0.841541, 0.011824, -0.540063,
		-0.288868, 0.834958, 0.468402,
		31.175396, 26.805897, 44.498264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005873, 26.586590, 43.660278>,  <31.377604, 26.221428, 44.170380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005873, 26.586590, 43.660278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136852, 26.844597, 43.936459>,  <31.215441, 26.999401, 44.102169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136852, 26.844597, 43.936459>,  <31.005873, 26.586590, 43.660278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136852, 26.844597, 43.936459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287390, 0.628128, -0.723092,
		-0.900102, 0.435206, 0.020308,
		0.327450, 0.645020, 0.690453,
		31.235088, 27.038103, 44.143593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783184, 27.226137, 43.391083>,  <31.005873, 26.586590, 43.660278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783184, 27.226137, 43.391083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072729, 27.353695, 43.635811>,  <31.246456, 27.430229, 43.782646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072729, 27.353695, 43.635811>,  <30.783184, 27.226137, 43.391083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072729, 27.353695, 43.635811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190041, 0.760312, -0.621136,
		-0.663253, 0.565890, 0.489760,
		0.723865, 0.318896, 0.611821,
		31.289888, 27.449364, 43.819359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738901, 27.830009, 43.297649>,  <30.783184, 27.226137, 43.391083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738901, 27.830009, 43.297649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100351, 27.797110, 43.465790>,  <31.317221, 27.777370, 43.566673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100351, 27.797110, 43.465790>,  <30.738901, 27.830009, 43.297649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100351, 27.797110, 43.465790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357894, 0.684153, -0.635489,
		-0.235317, 0.724686, 0.647654,
		0.903625, -0.082250, 0.420354,
		31.371439, 27.772434, 43.591896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971619, 28.475662, 43.402065>,  <30.738901, 27.830009, 43.297649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971619, 28.475662, 43.402065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297903, 28.244335, 43.407166>,  <31.493673, 28.105539, 43.410225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297903, 28.244335, 43.407166>,  <30.971619, 28.475662, 43.402065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297903, 28.244335, 43.407166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449049, 0.619173, -0.644189,
		0.364652, 0.531198, 0.764760,
		0.815710, -0.578320, 0.012751,
		31.542616, 28.070839, 43.410992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486408, 28.926088, 43.446892>,  <30.971619, 28.475662, 43.402065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486408, 28.926088, 43.446892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673250, 28.606670, 43.295029>,  <31.785357, 28.415020, 43.203911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673250, 28.606670, 43.295029>,  <31.486408, 28.926088, 43.446892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673250, 28.606670, 43.295029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413045, 0.576715, -0.704836,
		0.781796, 0.172418, 0.599222,
		0.467106, -0.798544, -0.379658,
		31.813381, 28.367107, 43.181133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000687, 29.268017, 43.085293>,  <31.486408, 28.926088, 43.446892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000687, 29.268017, 43.085293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055317, 28.896851, 42.946545>,  <32.088097, 28.674150, 42.863297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055317, 28.896851, 42.946545>,  <32.000687, 29.268017, 43.085293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055317, 28.896851, 42.946545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509431, 0.366090, -0.778754,
		0.849604, -0.070343, 0.522710,
		0.136579, -0.927917, -0.346866,
		32.096291, 28.618475, 42.842484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714390, 29.257368, 42.814083>,  <32.000687, 29.268017, 43.085293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714390, 29.257368, 42.814083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513802, 28.970291, 42.620819>,  <32.393448, 28.798044, 42.504860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513802, 28.970291, 42.620819>,  <32.714390, 29.257368, 42.814083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513802, 28.970291, 42.620819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286988, 0.388842, -0.875465,
		0.816188, -0.577682, 0.010976,
		-0.501473, -0.717694, -0.483156,
		32.363361, 28.754982, 42.475872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102116, 29.068748, 42.331276>,  <32.714390, 29.257368, 42.814083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102116, 29.068748, 42.331276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739388, 28.944908, 42.216862>,  <32.521751, 28.870604, 42.148212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739388, 28.944908, 42.216862>,  <33.102116, 29.068748, 42.331276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739388, 28.944908, 42.216862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188253, 0.309688, -0.932016,
		0.377141, -0.899020, -0.222548,
		-0.906822, -0.309606, -0.286039,
		32.467342, 28.852028, 42.131050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172878, 28.773619, 41.628826>,  <33.102116, 29.068748, 42.331276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172878, 28.773619, 41.628826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775219, 28.805916, 41.657536>,  <32.536625, 28.825294, 41.674763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775219, 28.805916, 41.657536>,  <33.172878, 28.773619, 41.628826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775219, 28.805916, 41.657536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061575, 0.122418, -0.990567,
		-0.088771, -0.989188, -0.116730,
		-0.994148, 0.080746, 0.071776,
		32.476974, 28.830139, 41.679070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911743, 28.321928, 41.153816>,  <33.172878, 28.773619, 41.628826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911743, 28.321928, 41.153816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667892, 28.631079, 41.224262>,  <32.521580, 28.816568, 41.266529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667892, 28.631079, 41.224262>,  <32.911743, 28.321928, 41.153816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667892, 28.631079, 41.224262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048811, 0.258351, -0.964817,
		-0.791182, -0.579585, -0.195224,
		-0.609630, 0.772875, 0.176112,
		32.485004, 28.862942, 41.277096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390598, 28.251797, 40.530041>,  <32.911743, 28.321928, 41.153816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390598, 28.251797, 40.530041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385330, 28.627146, 40.668190>,  <32.382168, 28.852356, 40.751080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385330, 28.627146, 40.668190>,  <32.390598, 28.251797, 40.530041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385330, 28.627146, 40.668190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033868, 0.344784, -0.938071,
		-0.999340, -0.024051, 0.027240,
		-0.013170, 0.938374, 0.345371,
		32.381378, 28.908657, 40.771801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917669, 28.598133, 40.196533>,  <32.390598, 28.251797, 40.530041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917669, 28.598133, 40.196533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108753, 28.920490, 40.336437>,  <32.223404, 29.113905, 40.420380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108753, 28.920490, 40.336437>,  <31.917669, 28.598133, 40.196533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108753, 28.920490, 40.336437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284409, 0.518550, -0.806361,
		-0.831206, 0.285734, 0.476920,
		0.477712, 0.805892, 0.349756,
		32.252068, 29.162258, 40.441364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487009, 29.234718, 40.174927>,  <31.917669, 28.598133, 40.196533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487009, 29.234718, 40.174927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865019, 29.365360, 40.181355>,  <32.091824, 29.443747, 40.185211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865019, 29.365360, 40.181355>,  <31.487009, 29.234718, 40.174927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865019, 29.365360, 40.181355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184288, 0.572546, -0.798892,
		-0.270126, 0.752010, 0.601259,
		0.945024, 0.326606, 0.016073,
		32.148525, 29.463343, 40.186176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417278, 29.890350, 39.979965>,  <31.487009, 29.234718, 40.174927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417278, 29.890350, 39.979965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814142, 29.858940, 39.941074>,  <32.052261, 29.840094, 39.917740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814142, 29.858940, 39.941074>,  <31.417278, 29.890350, 39.979965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814142, 29.858940, 39.941074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029900, 0.606237, -0.794722,
		0.121352, 0.791398, 0.599136,
		0.992159, -0.078527, -0.097231,
		32.111790, 29.835382, 39.911903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692341, 30.528128, 39.796764>,  <31.417278, 29.890350, 39.979965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692341, 30.528128, 39.796764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981531, 30.278618, 39.677963>,  <32.155045, 30.128912, 39.606682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981531, 30.278618, 39.677963>,  <31.692341, 30.528128, 39.796764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981531, 30.278618, 39.677963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084807, 0.506777, -0.857896,
		0.685649, 0.595049, 0.419288,
		0.722975, -0.623774, -0.297007,
		32.198425, 30.091486, 39.588860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188831, 30.976133, 39.551048>,  <31.692341, 30.528128, 39.796764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188831, 30.976133, 39.551048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251305, 30.615080, 39.390617>,  <32.288788, 30.398449, 39.294361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251305, 30.615080, 39.390617>,  <32.188831, 30.976133, 39.551048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251305, 30.615080, 39.390617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075682, 0.415801, -0.906301,
		0.984824, 0.111198, 0.133255,
		0.156187, -0.902632, -0.401075,
		32.298161, 30.344290, 39.270294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685883, 31.115097, 39.042885>,  <32.188831, 30.976133, 39.551048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685883, 31.115097, 39.042885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598896, 30.740923, 38.931412>,  <32.546703, 30.516418, 38.864529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598896, 30.740923, 38.931412>,  <32.685883, 31.115097, 39.042885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598896, 30.740923, 38.931412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235857, 0.226690, -0.944978,
		0.947142, -0.271234, 0.171331,
		-0.217471, -0.935437, -0.278680,
		32.533653, 30.460291, 38.847809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236874, 30.863989, 38.668255>,  <32.685883, 31.115097, 39.042885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236874, 30.863989, 38.668255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922195, 30.639145, 38.566166>,  <32.733387, 30.504238, 38.504913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922195, 30.639145, 38.566166>,  <33.236874, 30.863989, 38.668255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922195, 30.639145, 38.566166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225685, 0.122935, -0.966413,
		0.574608, -0.817873, 0.030148,
		-0.786697, -0.562112, -0.255221,
		32.686188, 30.470510, 38.489601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448765, 30.480026, 38.111404>,  <33.236874, 30.863989, 38.668255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448765, 30.480026, 38.111404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050129, 30.475492, 38.078701>,  <32.810947, 30.472773, 38.059078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050129, 30.475492, 38.078701>,  <33.448765, 30.480026, 38.111404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050129, 30.475492, 38.078701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080437, 0.088984, -0.992780,
		0.018528, -0.995969, -0.087769,
		-0.996587, -0.011334, -0.081761,
		32.751152, 30.472092, 38.054173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213142, 29.997952, 37.601929>,  <33.448765, 30.480026, 38.111404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213142, 29.997952, 37.601929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926975, 30.273563, 37.648251>,  <32.755276, 30.438931, 37.676044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926975, 30.273563, 37.648251>,  <33.213142, 29.997952, 37.601929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926975, 30.273563, 37.648251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164730, 0.327416, -0.930410,
		-0.678998, -0.646557, -0.347743,
		-0.715420, 0.689030, 0.115807,
		32.712349, 30.480272, 37.682991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820549, 29.860029, 37.027222>,  <33.213142, 29.997952, 37.601929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820549, 29.860029, 37.027222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710289, 30.229700, 37.132984>,  <32.644135, 30.451504, 37.196442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710289, 30.229700, 37.132984>,  <32.820549, 29.860029, 37.027222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710289, 30.229700, 37.132984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184032, 0.320714, -0.929126,
		-0.943478, -0.207453, -0.258483,
		-0.275649, 0.924178, 0.264409,
		32.627594, 30.506954, 37.212307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465729, 30.115967, 36.461555>,  <32.820549, 29.860029, 37.027222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465729, 30.115967, 36.461555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544014, 30.463964, 36.642578>,  <32.590984, 30.672764, 36.751190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544014, 30.463964, 36.642578>,  <32.465729, 30.115967, 36.461555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544014, 30.463964, 36.642578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007637, 0.460112, -0.887828,
		-0.980631, 0.177217, 0.083406,
		0.195715, 0.869995, 0.452553,
		32.602730, 30.724962, 36.778343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026585, 30.583673, 36.180267>,  <32.465729, 30.115967, 36.461555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026585, 30.583673, 36.180267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301933, 30.825649, 36.340366>,  <32.467140, 30.970835, 36.436424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301933, 30.825649, 36.340366>,  <32.026585, 30.583673, 36.180267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301933, 30.825649, 36.340366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085320, 0.615485, -0.783517,
		-0.720327, 0.505198, 0.475293,
		0.688367, 0.604941, 0.400247,
		32.508442, 31.007132, 36.460442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751337, 31.233788, 36.098431>,  <32.026585, 30.583673, 36.180267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751337, 31.233788, 36.098431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148308, 31.281803, 36.108856>,  <32.386490, 31.310612, 36.115112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148308, 31.281803, 36.108856>,  <31.751337, 31.233788, 36.098431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148308, 31.281803, 36.108856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049949, 0.588243, -0.807140,
		-0.112220, 0.799726, 0.589784,
		0.992427, 0.120037, 0.026067,
		32.446037, 31.317814, 36.116676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897100, 32.027664, 35.995720>,  <31.751337, 31.233788, 36.098431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897100, 32.027664, 35.995720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235786, 31.840746, 35.893963>,  <32.438999, 31.728596, 35.832909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235786, 31.840746, 35.893963>,  <31.897100, 32.027664, 35.995720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235786, 31.840746, 35.893963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184364, 0.706196, -0.683591,
		0.499086, 0.531905, 0.684098,
		0.846713, -0.467294, -0.254388,
		32.489799, 31.700558, 35.817646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339809, 32.559483, 35.909378>,  <31.897100, 32.027664, 35.995720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339809, 32.559483, 35.909378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550156, 32.267014, 35.735546>,  <32.676365, 32.091534, 35.631248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550156, 32.267014, 35.735546>,  <32.339809, 32.559483, 35.909378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550156, 32.267014, 35.735546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404539, 0.664438, -0.628388,
		0.748207, 0.154644, 0.645191,
		0.525865, -0.731169, -0.434578,
		32.707916, 32.047665, 35.605171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103085, 32.797096, 35.761169>,  <32.339809, 32.559483, 35.909378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103085, 32.797096, 35.761169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010895, 32.492386, 35.518982>,  <32.955582, 32.309559, 35.373669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010895, 32.492386, 35.518982>,  <33.103085, 32.797096, 35.761169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010895, 32.492386, 35.518982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335732, 0.521759, -0.784252,
		0.913328, -0.384021, 0.135501,
		-0.230470, -0.761771, -0.605465,
		32.941753, 32.263855, 35.337341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703140, 32.731815, 35.297085>,  <33.103085, 32.797096, 35.761169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703140, 32.731815, 35.297085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403748, 32.549065, 35.104820>,  <33.224110, 32.439415, 34.989460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403748, 32.549065, 35.104820>,  <33.703140, 32.731815, 35.297085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403748, 32.549065, 35.104820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119256, 0.620266, -0.775273,
		0.652340, -0.637602, -0.409776,
		-0.748486, -0.456873, -0.480662,
		33.179203, 32.412003, 34.960621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041862, 32.763630, 34.703133>,  <33.703140, 32.731815, 35.297085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041862, 32.763630, 34.703133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649090, 32.721931, 34.639954>,  <33.413425, 32.696911, 34.602047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649090, 32.721931, 34.639954>,  <34.041862, 32.763630, 34.703133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649090, 32.721931, 34.639954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056913, 0.633320, -0.771794,
		0.180489, -0.766837, -0.615943,
		-0.981929, -0.104245, -0.157950,
		33.354511, 32.690659, 34.592567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520710, 32.122276, 34.766933>,  <34.041862, 32.763630, 34.703133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520710, 32.122276, 34.766933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906555, 32.164658, 34.863506>,  <35.138062, 32.190086, 34.921452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906555, 32.164658, 34.863506>,  <34.520710, 32.122276, 34.766933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906555, 32.164658, 34.863506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213383, -0.224138, 0.950910,
		0.154871, -0.968780, -0.193597,
		0.964615, 0.105958, 0.241434,
		35.195938, 32.196445, 34.935936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743118, 31.501806, 35.187660>,  <34.520710, 32.122276, 34.766933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743118, 31.501806, 35.187660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002029, 31.795052, 35.271156>,  <35.157375, 31.970999, 35.321255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002029, 31.795052, 35.271156>,  <34.743118, 31.501806, 35.187660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002029, 31.795052, 35.271156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035863, -0.302839, 0.952367,
		0.761407, -0.608962, -0.222314,
		0.647281, 0.733112, 0.208745,
		35.196213, 32.014984, 35.333778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069016, 31.205362, 35.767513>,  <34.743118, 31.501806, 35.187660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069016, 31.205362, 35.767513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224697, 31.573437, 35.784405>,  <35.318104, 31.794281, 35.794540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224697, 31.573437, 35.784405>,  <35.069016, 31.205362, 35.767513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224697, 31.573437, 35.784405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145353, -0.106617, 0.983618,
		0.909612, -0.376688, -0.175247,
		0.389201, 0.920184, 0.042228,
		35.341457, 31.849491, 35.797073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746181, 31.177448, 36.129707>,  <35.069016, 31.205362, 35.767513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746181, 31.177448, 36.129707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595650, 31.546862, 36.159275>,  <35.505329, 31.768509, 36.177017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595650, 31.546862, 36.159275>,  <35.746181, 31.177448, 36.129707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595650, 31.546862, 36.159275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124975, -0.028454, 0.991752,
		0.918018, 0.382464, -0.104711,
		-0.376330, 0.923532, 0.073920,
		35.482750, 31.823921, 36.181450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147114, 31.513273, 36.587936>,  <35.746181, 31.177448, 36.129707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147114, 31.513273, 36.587936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820164, 31.743317, 36.574394>,  <35.623993, 31.881342, 36.566269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820164, 31.743317, 36.574394>,  <36.147114, 31.513273, 36.587936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820164, 31.743317, 36.574394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068127, 0.154847, 0.985587,
		0.572061, 0.803289, -0.165748,
		-0.817377, 0.575108, -0.033856,
		35.574951, 31.915850, 36.564236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284660, 31.999704, 37.102325>,  <36.147114, 31.513273, 36.587936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284660, 31.999704, 37.102325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891655, 32.025654, 37.032505>,  <35.655853, 32.041225, 36.990612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891655, 32.025654, 37.032505>,  <36.284660, 31.999704, 37.102325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891655, 32.025654, 37.032505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165907, 0.120716, 0.978725,
		0.084566, 0.990565, -0.107841,
		-0.982509, 0.064876, -0.174550,
		35.596901, 32.045116, 36.980141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070709, 32.482075, 37.533272>,  <36.284660, 31.999704, 37.102325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070709, 32.482075, 37.533272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740044, 32.269505, 37.459282>,  <35.541645, 32.141964, 37.414890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740044, 32.269505, 37.459282>,  <36.070709, 32.482075, 37.533272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740044, 32.269505, 37.459282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220465, 0.003448, 0.975389,
		-0.517708, 0.847099, -0.120011,
		-0.826664, -0.531425, -0.184970,
		35.492043, 32.110077, 37.403790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568420, 32.708401, 38.046478>,  <36.070709, 32.482075, 37.533272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568420, 32.708401, 38.046478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437531, 32.346012, 37.939045>,  <35.358997, 32.128578, 37.874584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437531, 32.346012, 37.939045>,  <35.568420, 32.708401, 38.046478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437531, 32.346012, 37.939045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112413, -0.244887, 0.963013,
		-0.938235, 0.345317, -0.021709,
		-0.327228, -0.905973, -0.268579,
		35.339363, 32.074219, 37.858471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946648, 32.606876, 38.465202>,  <35.568420, 32.708401, 38.046478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946648, 32.606876, 38.465202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056423, 32.237431, 38.358154>,  <35.122288, 32.015762, 38.293926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056423, 32.237431, 38.358154>,  <34.946648, 32.606876, 38.465202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056423, 32.237431, 38.358154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267418, -0.340629, 0.901365,
		-0.923671, -0.175808, -0.340474,
		0.274443, -0.923614, -0.267615,
		35.138756, 31.960346, 38.277870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361378, 32.125408, 38.647694>,  <34.946648, 32.606876, 38.465202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361378, 32.125408, 38.647694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679596, 31.885246, 38.615128>,  <34.870525, 31.741150, 38.595589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679596, 31.885246, 38.615128>,  <34.361378, 32.125408, 38.647694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679596, 31.885246, 38.615128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267661, -0.468798, 0.841775,
		-0.543576, -0.647873, -0.533653,
		0.795539, -0.600407, -0.081417,
		34.918259, 31.705124, 38.590702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156666, 31.369215, 38.838848>,  <34.361378, 32.125408, 38.647694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156666, 31.369215, 38.838848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554443, 31.372168, 38.880852>,  <34.793110, 31.373940, 38.906055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554443, 31.372168, 38.880852>,  <34.156666, 31.369215, 38.838848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554443, 31.372168, 38.880852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091686, -0.429418, 0.898440,
		0.051726, -0.903076, -0.426355,
		0.994444, 0.007382, 0.105012,
		34.852776, 31.374382, 38.912354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321335, 30.704338, 38.969421>,  <34.156666, 31.369215, 38.838848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321335, 30.704338, 38.969421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647114, 30.891817, 39.106243>,  <34.842583, 31.004305, 39.188335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647114, 30.891817, 39.106243>,  <34.321335, 30.704338, 38.969421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647114, 30.891817, 39.106243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074310, -0.500397, 0.862601,
		0.575459, -0.727961, -0.372718,
		0.814448, 0.468695, 0.342052,
		34.891449, 31.032425, 39.208858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823563, 30.191536, 39.116596>,  <34.321335, 30.704338, 38.969421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823563, 30.191536, 39.116596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907734, 30.512674, 39.339725>,  <34.958237, 30.705357, 39.473602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907734, 30.512674, 39.339725>,  <34.823563, 30.191536, 39.116596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907734, 30.512674, 39.339725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199832, -0.593870, 0.779349,
		0.956968, -0.052524, -0.285399,
		0.210425, 0.802844, 0.557819,
		34.970860, 30.753529, 39.507072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427330, 30.012217, 39.272606>,  <34.823563, 30.191536, 39.116596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427330, 30.012217, 39.272606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281738, 30.271473, 39.540165>,  <35.194382, 30.427027, 39.700703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281738, 30.271473, 39.540165>,  <35.427330, 30.012217, 39.272606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281738, 30.271473, 39.540165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189571, -0.651579, 0.734512,
		0.911909, 0.394154, 0.114296,
		-0.363984, 0.648141, 0.668901,
		35.172543, 30.465916, 39.740837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581871, 29.728048, 39.978882>,  <35.427330, 30.012217, 39.272606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581871, 29.728048, 39.978882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354343, 30.027416, 40.115299>,  <35.217827, 30.207037, 40.197151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354343, 30.027416, 40.115299>,  <35.581871, 29.728048, 39.978882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354343, 30.027416, 40.115299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164092, -0.509597, 0.844621,
		0.805924, 0.424478, 0.412680,
		-0.568823, 0.748418, 0.341043,
		35.183697, 30.251942, 40.217613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889992, 30.096672, 40.706196>,  <35.581871, 29.728048, 39.978882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889992, 30.096672, 40.706196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491886, 30.117102, 40.673119>,  <35.253021, 30.129358, 40.653275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491886, 30.117102, 40.673119>,  <35.889992, 30.096672, 40.706196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491886, 30.117102, 40.673119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097166, -0.503511, 0.858508,
		0.002210, 0.862478, 0.506089,
		-0.995266, 0.051072, -0.082691,
		35.193306, 30.132423, 40.648312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698776, 30.335476, 41.292049>,  <35.889992, 30.096672, 40.706196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698776, 30.335476, 41.292049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343746, 30.214500, 41.153057>,  <35.130730, 30.141914, 41.069660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343746, 30.214500, 41.153057>,  <35.698776, 30.335476, 41.292049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343746, 30.214500, 41.153057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221793, -0.380570, 0.897761,
		-0.403759, 0.873898, 0.270705,
		-0.887573, -0.302439, -0.347483,
		35.077473, 30.123768, 41.048813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137379, 30.501122, 41.736919>,  <35.698776, 30.335476, 41.292049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137379, 30.501122, 41.736919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011475, 30.184265, 41.527756>,  <34.935932, 29.994152, 41.402256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011475, 30.184265, 41.527756>,  <35.137379, 30.501122, 41.736919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011475, 30.184265, 41.527756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228021, -0.471677, 0.851779,
		-0.921374, 0.387345, -0.032157,
		-0.314765, -0.792140, -0.522913,
		34.917046, 29.946623, 41.370880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526394, 30.333361, 42.104702>,  <35.137379, 30.501122, 41.736919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526394, 30.333361, 42.104702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622684, 30.020164, 41.875275>,  <34.680458, 29.832247, 41.737617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622684, 30.020164, 41.875275>,  <34.526394, 30.333361, 42.104702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622684, 30.020164, 41.875275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243928, -0.620780, 0.745072,
		-0.939443, -0.039447, -0.340429,
		0.240722, -0.782992, -0.573565,
		34.694901, 29.785267, 41.703205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937744, 29.895943, 41.948952>,  <34.526394, 30.333361, 42.104702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937744, 29.895943, 41.948952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271191, 29.675148, 41.940983>,  <34.471260, 29.542671, 41.936203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271191, 29.675148, 41.940983>,  <33.937744, 29.895943, 41.948952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271191, 29.675148, 41.940983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306266, -0.491937, 0.814984,
		-0.459653, -0.673286, -0.579141,
		0.833619, -0.551981, -0.019916,
		34.521275, 29.509552, 41.935005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793812, 29.225765, 41.960896>,  <33.937744, 29.895943, 41.948952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793812, 29.225765, 41.960896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169754, 29.209126, 42.096508>,  <34.395321, 29.199142, 42.177876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169754, 29.209126, 42.096508>,  <33.793812, 29.225765, 41.960896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169754, 29.209126, 42.096508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297726, -0.586277, 0.753418,
		0.167425, -0.809042, -0.563401,
		0.939856, -0.041598, 0.339030,
		34.451710, 29.196646, 42.198215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935577, 28.476522, 42.107872>,  <33.793812, 29.225765, 41.960896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935577, 28.476522, 42.107872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220383, 28.655025, 42.324722>,  <34.391266, 28.762127, 42.454830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220383, 28.655025, 42.324722>,  <33.935577, 28.476522, 42.107872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220383, 28.655025, 42.324722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263735, -0.545575, 0.795482,
		0.650757, -0.709368, -0.270762,
		0.712011, 0.446256, 0.542122,
		34.433987, 28.788902, 42.487358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228840, 27.945309, 42.494823>,  <33.935577, 28.476522, 42.107872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228840, 27.945309, 42.494823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350956, 28.269781, 42.694336>,  <34.424225, 28.464464, 42.814041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350956, 28.269781, 42.694336>,  <34.228840, 27.945309, 42.494823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350956, 28.269781, 42.694336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133995, -0.481979, 0.865876,
		0.942784, -0.331178, -0.038450,
		0.305291, 0.811182, 0.498779,
		34.442543, 28.513136, 42.843971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753952, 27.713142, 42.968994>,  <34.228840, 27.945309, 42.494823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753952, 27.713142, 42.968994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591335, 28.048384, 43.114487>,  <34.493763, 28.249529, 43.201782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591335, 28.048384, 43.114487>,  <34.753952, 27.713142, 42.968994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591335, 28.048384, 43.114487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084059, -0.430740, 0.898553,
		0.909756, 0.334727, 0.245565,
		-0.406545, 0.838105, 0.363732,
		34.469372, 28.299816, 43.223606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100784, 27.876490, 43.581604>,  <34.753952, 27.713142, 42.968994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100784, 27.876490, 43.581604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743675, 28.054699, 43.608334>,  <34.529411, 28.161625, 43.624371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743675, 28.054699, 43.608334>,  <35.100784, 27.876490, 43.581604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743675, 28.054699, 43.608334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090255, -0.322200, 0.942360,
		0.441373, 0.835282, 0.327862,
		-0.892773, 0.445524, 0.066822,
		34.475842, 28.188356, 43.628380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113960, 28.135908, 44.281311>,  <35.100784, 27.876490, 43.581604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113960, 28.135908, 44.281311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730297, 28.180790, 44.177448>,  <34.500099, 28.207718, 44.115131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730297, 28.180790, 44.177448>,  <35.113960, 28.135908, 44.281311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730297, 28.180790, 44.177448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274068, -0.141574, 0.951232,
		0.069970, 0.983548, 0.166544,
		-0.959161, 0.112203, -0.259653,
		34.442547, 28.214451, 44.099552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827763, 28.610256, 44.811665>,  <35.113960, 28.135908, 44.281311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827763, 28.610256, 44.811665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559803, 28.380066, 44.624023>,  <34.399025, 28.241953, 44.511436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559803, 28.380066, 44.624023>,  <34.827763, 28.610256, 44.811665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559803, 28.380066, 44.624023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472999, -0.156221, 0.867102,
		-0.572280, 0.802760, -0.167546,
		-0.669901, -0.575474, -0.469107,
		34.358833, 28.207424, 44.483292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044868, 28.809446, 45.124847>,  <34.827763, 28.610256, 44.811665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044868, 28.809446, 45.124847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041031, 28.445900, 44.958054>,  <34.038727, 28.227772, 44.857979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041031, 28.445900, 44.958054>,  <34.044868, 28.809446, 45.124847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041031, 28.445900, 44.958054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155421, -0.410576, 0.898483,
		-0.987802, 0.073431, -0.137316,
		-0.009598, -0.908864, -0.416981,
		34.038151, 28.173241, 44.832958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364254, 28.511065, 45.229328>,  <34.044868, 28.809446, 45.124847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364254, 28.511065, 45.229328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599052, 28.192553, 45.170853>,  <33.739933, 28.001446, 45.135765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599052, 28.192553, 45.170853>,  <33.364254, 28.511065, 45.229328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599052, 28.192553, 45.170853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441666, -0.466304, 0.766480,
		-0.678504, -0.385352, -0.625409,
		0.586995, -0.796282, -0.146193,
		33.775150, 27.953669, 45.126995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984119, 27.963696, 45.356731>,  <33.364254, 28.511065, 45.229328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984119, 27.963696, 45.356731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355324, 27.814964, 45.366032>,  <33.578045, 27.725725, 45.371613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355324, 27.814964, 45.366032>,  <32.984119, 27.963696, 45.356731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355324, 27.814964, 45.366032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212867, -0.477998, 0.852177,
		-0.305752, -0.795777, -0.522737,
		0.928010, -0.371828, 0.023246,
		33.633728, 27.703415, 45.373005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963036, 27.213909, 45.586075>,  <32.984119, 27.963696, 45.356731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963036, 27.213909, 45.586075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344051, 27.310783, 45.659840>,  <33.572662, 27.368908, 45.704098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344051, 27.310783, 45.659840>,  <32.963036, 27.213909, 45.586075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344051, 27.310783, 45.659840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062070, -0.438540, 0.896566,
		0.298007, -0.865464, -0.402696,
		0.952543, 0.242187, 0.184408,
		33.629814, 27.383440, 45.715160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243446, 26.688898, 46.059624>,  <32.963036, 27.213909, 45.586075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243446, 26.688898, 46.059624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494568, 26.992310, 46.129475>,  <33.645241, 27.174356, 46.171387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494568, 26.992310, 46.129475>,  <33.243446, 26.688898, 46.059624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494568, 26.992310, 46.129475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054750, -0.180759, 0.982002,
		0.776444, -0.626065, -0.071951,
		0.627803, 0.758531, 0.174627,
		33.682907, 27.219870, 46.181862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719543, 26.471222, 46.482082>,  <33.243446, 26.688898, 46.059624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719543, 26.471222, 46.482082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715912, 26.867878, 46.533569>,  <33.713734, 27.105871, 46.564461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715912, 26.867878, 46.533569>,  <33.719543, 26.471222, 46.482082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715912, 26.867878, 46.533569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012933, -0.128600, 0.991612,
		0.999875, 0.010664, -0.011658,
		-0.009075, 0.991639, 0.128722,
		33.713188, 27.165369, 46.572186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172592, 26.621061, 47.135765>,  <33.719543, 26.471222, 46.482082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172592, 26.621061, 47.135765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947281, 26.945120, 47.070797>,  <33.812092, 27.139555, 47.031818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947281, 26.945120, 47.070797>,  <34.172592, 26.621061, 47.135765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947281, 26.945120, 47.070797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164410, 0.082742, 0.982916,
		0.809743, 0.580361, 0.086589,
		-0.563282, 0.810145, -0.162417,
		33.778297, 27.188164, 47.022072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232746, 26.869905, 47.770546>,  <34.172592, 26.621061, 47.135765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232746, 26.869905, 47.770546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962006, 27.115038, 47.607418>,  <33.799561, 27.262117, 47.509541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962006, 27.115038, 47.607418>,  <34.232746, 26.869905, 47.770546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962006, 27.115038, 47.607418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287550, 0.289881, 0.912844,
		0.677637, 0.735125, -0.019986,
		-0.676848, 0.612830, -0.407820,
		33.758953, 27.298887, 47.485073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257568, 27.527308, 48.162498>,  <34.232746, 26.869905, 47.770546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257568, 27.527308, 48.162498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888756, 27.499187, 48.010227>,  <33.667469, 27.482315, 47.918865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888756, 27.499187, 48.010227>,  <34.257568, 27.527308, 48.162498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888756, 27.499187, 48.010227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383626, 0.297631, 0.874212,
		0.051846, 0.952089, -0.301394,
		-0.922032, -0.070298, -0.380677,
		33.612144, 27.478098, 47.896023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900093, 28.139753, 48.355843>,  <34.257568, 27.527308, 48.162498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900093, 28.139753, 48.355843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625526, 27.865408, 48.259155>,  <33.460789, 27.700800, 48.201141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625526, 27.865408, 48.259155>,  <33.900093, 28.139753, 48.355843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625526, 27.865408, 48.259155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478792, 0.176053, 0.860095,
		-0.547353, 0.706113, -0.449232,
		-0.686413, -0.685864, -0.241718,
		33.419601, 27.659649, 48.186642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243176, 28.346565, 48.621593>,  <33.900093, 28.139753, 48.355843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243176, 28.346565, 48.621593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214455, 27.948606, 48.593227>,  <33.197224, 27.709831, 48.576206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214455, 27.948606, 48.593227>,  <33.243176, 28.346565, 48.621593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214455, 27.948606, 48.593227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554127, -0.019333, 0.832208,
		-0.829330, 0.099050, -0.549910,
		-0.071799, -0.994895, -0.070920,
		33.192913, 27.650139, 48.571953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097912, 28.457363, 49.342705>,  <33.243176, 28.346565, 48.621593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097912, 28.457363, 49.342705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282051, 28.798447, 49.441471>,  <33.392532, 29.003098, 49.500729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282051, 28.798447, 49.441471>,  <33.097912, 28.457363, 49.342705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282051, 28.798447, 49.441471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033621, 0.294684, -0.955003,
		-0.887103, 0.431330, 0.164325,
		0.460345, 0.852711, 0.246913,
		33.420155, 29.054260, 49.515545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757500, 29.076990, 49.085274>,  <33.097912, 28.457363, 49.342705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757500, 29.076990, 49.085274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125809, 29.223186, 49.139824>,  <33.346794, 29.310904, 49.172554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125809, 29.223186, 49.139824>,  <32.757500, 29.076990, 49.085274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125809, 29.223186, 49.139824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002863, 0.355911, -0.934515,
		-0.390095, 0.860084, 0.328759,
		0.920770, 0.365491, 0.136377,
		33.402039, 29.332834, 49.180737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680302, 29.631344, 48.740543>,  <32.757500, 29.076990, 49.085274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680302, 29.631344, 48.740543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073990, 29.578056, 48.787121>,  <33.310204, 29.546083, 48.815067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073990, 29.578056, 48.787121>,  <32.680302, 29.631344, 48.740543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073990, 29.578056, 48.787121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157047, 0.354610, -0.921731,
		0.081500, 0.925475, 0.369937,
		0.984223, -0.133218, 0.116442,
		33.369255, 29.538092, 48.822052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018066, 30.283880, 48.527596>,  <32.680302, 29.631344, 48.740543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018066, 30.283880, 48.527596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257977, 29.968102, 48.475368>,  <33.401920, 29.778635, 48.444035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257977, 29.968102, 48.475368>,  <33.018066, 30.283880, 48.527596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257977, 29.968102, 48.475368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206376, 0.310268, -0.927978,
		0.773099, 0.529631, 0.349013,
		0.599773, -0.789446, -0.130564,
		33.437908, 29.731268, 48.436199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565441, 30.605413, 48.095013>,  <33.018066, 30.283880, 48.527596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565441, 30.605413, 48.095013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635929, 30.213766, 48.054474>,  <33.678223, 29.978777, 48.030151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635929, 30.213766, 48.054474>,  <33.565441, 30.605413, 48.095013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635929, 30.213766, 48.054474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373531, 0.161775, -0.913402,
		0.910726, 0.123103, 0.394239,
		0.176220, -0.979119, -0.101350,
		33.688797, 29.920031, 48.024071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190365, 30.722412, 47.744457>,  <33.565441, 30.605413, 48.095013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190365, 30.722412, 47.744457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064560, 30.346371, 47.691860>,  <33.989079, 30.120747, 47.660301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064560, 30.346371, 47.691860>,  <34.190365, 30.722412, 47.744457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064560, 30.346371, 47.691860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150158, 0.087507, -0.984782,
		0.937303, -0.329468, 0.113642,
		-0.314509, -0.940103, -0.131492,
		33.970207, 30.064341, 47.652412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710224, 30.422142, 47.339321>,  <34.190365, 30.722412, 47.744457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710224, 30.422142, 47.339321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378265, 30.202791, 47.298229>,  <34.179089, 30.071180, 47.273575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378265, 30.202791, 47.298229>,  <34.710224, 30.422142, 47.339321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378265, 30.202791, 47.298229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122361, 0.000753, -0.992485,
		0.544335, -0.836230, 0.066475,
		-0.829896, -0.548379, -0.102731,
		34.129295, 30.038279, 47.267410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941780, 29.818607, 46.960129>,  <34.710224, 30.422142, 47.339321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941780, 29.818607, 46.960129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548992, 29.879957, 46.915924>,  <34.313320, 29.916767, 46.889400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548992, 29.879957, 46.915924>,  <34.941780, 29.818607, 46.960129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548992, 29.879957, 46.915924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129109, 0.117123, -0.984689,
		-0.138087, -0.981202, -0.134814,
		-0.981969, 0.153378, -0.110509,
		34.254402, 29.925970, 46.882771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771248, 29.579550, 46.282768>,  <34.941780, 29.818607, 46.960129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771248, 29.579550, 46.282768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438610, 29.787672, 46.360466>,  <34.239025, 29.912546, 46.407085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438610, 29.787672, 46.360466>,  <34.771248, 29.579550, 46.282768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438610, 29.787672, 46.360466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052929, 0.273902, -0.960300,
		-0.552853, -0.808863, -0.200237,
		-0.831596, 0.520306, 0.194240,
		34.189133, 29.943764, 46.418739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330456, 29.344397, 45.766327>,  <34.771248, 29.579550, 46.282768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330456, 29.344397, 45.766327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245033, 29.711622, 45.899925>,  <34.193779, 29.931957, 45.980083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245033, 29.711622, 45.899925>,  <34.330456, 29.344397, 45.766327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245033, 29.711622, 45.899925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048984, 0.351511, -0.934902,
		-0.975703, -0.183290, -0.120037,
		-0.213552, 0.918066, 0.333992,
		34.180969, 29.987041, 46.000122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917385, 29.611404, 45.243019>,  <34.330456, 29.344397, 45.766327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917385, 29.611404, 45.243019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031227, 29.941254, 45.438568>,  <34.099533, 30.139164, 45.555897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031227, 29.941254, 45.438568>,  <33.917385, 29.611404, 45.243019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031227, 29.941254, 45.438568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022248, 0.515504, -0.856598,
		-0.958386, 0.232916, 0.165062,
		0.284606, 0.824625, 0.488870,
		34.116608, 30.188641, 45.585228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570477, 30.197525, 44.977982>,  <33.917385, 29.611404, 45.243019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570477, 30.197525, 44.977982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883701, 30.385998, 45.140369>,  <34.071636, 30.499081, 45.237801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883701, 30.385998, 45.140369>,  <33.570477, 30.197525, 44.977982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883701, 30.385998, 45.140369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137091, 0.505915, -0.851620,
		-0.606652, 0.722521, 0.331566,
		0.783057, 0.471182, 0.405966,
		34.118618, 30.527353, 45.262157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498413, 30.907642, 44.841694>,  <33.570477, 30.197525, 44.977982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498413, 30.907642, 44.841694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883636, 30.890772, 44.948078>,  <34.114773, 30.880650, 45.011909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883636, 30.890772, 44.948078>,  <33.498413, 30.907642, 44.841694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883636, 30.890772, 44.948078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242817, 0.562992, -0.789988,
		-0.116414, 0.825386, 0.552437,
		0.963062, -0.042176, 0.265957,
		34.172554, 30.878119, 45.027866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749359, 31.599558, 44.730251>,  <33.498413, 30.907642, 44.841694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749359, 31.599558, 44.730251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065308, 31.354492, 44.719307>,  <34.254875, 31.207453, 44.712738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065308, 31.354492, 44.719307>,  <33.749359, 31.599558, 44.730251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065308, 31.354492, 44.719307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321760, 0.451988, -0.831972,
		0.522086, 0.648346, 0.554143,
		0.789871, -0.612662, -0.027365,
		34.302269, 31.170694, 44.711098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369495, 31.953291, 44.799007>,  <33.749359, 31.599558, 44.730251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369495, 31.953291, 44.799007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459782, 31.626299, 44.587051>,  <34.513954, 31.430103, 44.459877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459782, 31.626299, 44.587051>,  <34.369495, 31.953291, 44.799007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459782, 31.626299, 44.587051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374143, 0.574953, -0.727630,
		0.899482, -0.034013, 0.435632,
		0.225719, -0.817479, -0.529886,
		34.527496, 31.381056, 44.428085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824036, 32.198162, 44.351765>,  <34.369495, 31.953291, 44.799007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824036, 32.198162, 44.351765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765976, 31.834377, 44.195911>,  <34.731140, 31.616106, 44.102398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765976, 31.834377, 44.195911>,  <34.824036, 32.198162, 44.351765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765976, 31.834377, 44.195911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457360, 0.287530, -0.841516,
		0.877356, -0.300348, 0.374215,
		-0.145150, -0.909460, -0.389633,
		34.722431, 31.561539, 44.079021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543087, 31.933594, 44.055855>,  <34.824036, 32.198162, 44.351765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543087, 31.933594, 44.055855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247833, 31.727955, 43.881104>,  <35.070679, 31.604572, 43.776253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247833, 31.727955, 43.881104>,  <35.543087, 31.933594, 44.055855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247833, 31.727955, 43.881104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386050, 0.209202, -0.898443,
		0.553281, -0.831829, 0.044047,
		-0.738137, -0.514096, -0.436875,
		35.026394, 31.573727, 43.750042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890930, 31.496960, 43.634434>,  <35.543087, 31.933594, 44.055855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890930, 31.496960, 43.634434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517326, 31.529020, 43.495174>,  <35.293163, 31.548256, 43.411617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517326, 31.529020, 43.495174>,  <35.890930, 31.496960, 43.634434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517326, 31.529020, 43.495174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357075, 0.178148, -0.916930,
		-0.011470, -0.980734, -0.195011,
		-0.934005, 0.080151, -0.348152,
		35.237125, 31.553066, 43.390728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904854, 31.097799, 43.107861>,  <35.890930, 31.496960, 43.634434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904854, 31.097799, 43.107861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587025, 31.334724, 43.054478>,  <35.396328, 31.476879, 43.022446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587025, 31.334724, 43.054478>,  <35.904854, 31.097799, 43.107861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587025, 31.334724, 43.054478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271522, 0.150036, -0.950665,
		-0.543070, -0.791613, -0.280042,
		-0.794576, 0.592315, -0.133461,
		35.348652, 31.512419, 43.014439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632511, 30.982273, 42.398674>,  <35.904854, 31.097799, 43.107861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632511, 30.982273, 42.398674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491531, 31.339369, 42.510956>,  <35.406944, 31.553627, 42.578323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491531, 31.339369, 42.510956>,  <35.632511, 30.982273, 42.398674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491531, 31.339369, 42.510956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394558, 0.413746, -0.820450,
		-0.848589, -0.178413, -0.498062,
		-0.352450, 0.892739, 0.280706,
		35.385796, 31.607191, 42.595169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389469, 31.285923, 41.801842>,  <35.632511, 30.982273, 42.398674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389469, 31.285923, 41.801842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431835, 31.596806, 42.049950>,  <35.457256, 31.783335, 42.198814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431835, 31.596806, 42.049950>,  <35.389469, 31.285923, 41.801842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431835, 31.596806, 42.049950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329477, 0.561111, -0.759341,
		-0.938204, 0.284792, -0.196640,
		0.105918, 0.777205, 0.620269,
		35.463612, 31.829967, 42.236031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067757, 31.872948, 41.412590>,  <35.389469, 31.285923, 41.801842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067757, 31.872948, 41.412590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317791, 32.037342, 41.678028>,  <35.467812, 32.135979, 41.837292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317791, 32.037342, 41.678028>,  <35.067757, 31.872948, 41.412590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317791, 32.037342, 41.678028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458290, 0.494957, -0.738233,
		-0.631854, 0.765578, 0.121040,
		0.625084, 0.410985, 0.663597,
		35.505318, 32.160637, 41.877106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008091, 32.610352, 41.326847>,  <35.067757, 31.872948, 41.412590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008091, 32.610352, 41.326847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359436, 32.546501, 41.507065>,  <35.570244, 32.508190, 41.615196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359436, 32.546501, 41.507065>,  <35.008091, 32.610352, 41.326847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359436, 32.546501, 41.507065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466874, 0.488600, -0.737088,
		-0.102478, 0.857782, 0.503695,
		0.878366, -0.159627, 0.450547,
		35.622948, 32.498611, 41.642227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308250, 33.279812, 41.302910>,  <35.008091, 32.610352, 41.326847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308250, 33.279812, 41.302910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599403, 33.012039, 41.362297>,  <35.774097, 32.851376, 41.397930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599403, 33.012039, 41.362297>,  <35.308250, 33.279812, 41.302910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599403, 33.012039, 41.362297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544072, 0.432065, -0.719239,
		0.417335, 0.604300, 0.678714,
		0.727885, -0.669433, 0.148467,
		35.817768, 32.811211, 41.406837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039536, 33.587330, 41.378220>,  <35.308250, 33.279812, 41.302910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039536, 33.587330, 41.378220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109978, 33.217884, 41.242035>,  <36.152245, 32.996216, 41.160324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109978, 33.217884, 41.242035>,  <36.039536, 33.587330, 41.378220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109978, 33.217884, 41.242035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582205, 0.376620, -0.720552,
		0.793741, -0.071328, 0.604059,
		0.176105, -0.923618, -0.340466,
		36.162807, 32.940800, 41.139896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701405, 33.635670, 41.224201>,  <36.039536, 33.587330, 41.378220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701405, 33.635670, 41.224201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612938, 33.300922, 41.023907>,  <36.559856, 33.100075, 40.903728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612938, 33.300922, 41.023907>,  <36.701405, 33.635670, 41.224201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612938, 33.300922, 41.023907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540246, 0.322332, -0.777326,
		0.811923, -0.442441, 0.380825,
		-0.221169, -0.836868, -0.500736,
		36.546589, 33.049862, 40.873688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262569, 33.443981, 40.942936>,  <36.701405, 33.635670, 41.224201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262569, 33.443981, 40.942936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003429, 33.230667, 40.725353>,  <36.847946, 33.102676, 40.594803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003429, 33.230667, 40.725353>,  <37.262569, 33.443981, 40.942936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003429, 33.230667, 40.725353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556093, 0.156946, -0.816167,
		0.520626, -0.831246, 0.194881,
		-0.647850, -0.533290, -0.543960,
		36.809074, 33.070679, 40.562164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644722, 32.775059, 40.561974>,  <37.262569, 33.443981, 40.942936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644722, 32.775059, 40.561974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311596, 32.901474, 40.380184>,  <37.111721, 32.977322, 40.271111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311596, 32.901474, 40.380184>,  <37.644722, 32.775059, 40.561974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311596, 32.901474, 40.380184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507179, 0.106677, -0.855214,
		-0.221797, -0.942731, -0.249129,
		-0.832812, 0.316036, -0.454472,
		37.061752, 32.996284, 40.243843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810619, 32.598122, 39.947678>,  <37.644722, 32.775059, 40.561974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810619, 32.598122, 39.947678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481049, 32.816223, 39.885918>,  <37.283306, 32.947083, 39.848862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481049, 32.816223, 39.885918>,  <37.810619, 32.598122, 39.947678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481049, 32.816223, 39.885918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370382, 0.311931, -0.874938,
		-0.428900, -0.778074, -0.458961,
		-0.823931, 0.545252, -0.154398,
		37.233868, 32.979797, 39.839600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668381, 32.502831, 39.200352>,  <37.810619, 32.598122, 39.947678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668381, 32.502831, 39.200352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546680, 32.860172, 39.332623>,  <37.473660, 33.074577, 39.411987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546680, 32.860172, 39.332623>,  <37.668381, 32.502831, 39.200352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546680, 32.860172, 39.332623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453233, 0.441085, -0.774612,
		-0.837861, -0.085801, -0.539098,
		-0.304251, 0.893354, 0.330680,
		37.455406, 33.128178, 39.431828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290581, 32.862453, 38.612164>,  <37.668381, 32.502831, 39.200352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290581, 32.862453, 38.612164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409111, 33.153835, 38.859241>,  <37.480228, 33.328663, 39.007488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409111, 33.153835, 38.859241>,  <37.290581, 32.862453, 38.612164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409111, 33.153835, 38.859241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405502, 0.489595, -0.771922,
		-0.864729, 0.479219, -0.150308,
		0.296330, 0.728454, 0.617692,
		37.498009, 33.372372, 39.044548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146301, 33.515701, 38.266281>,  <37.290581, 32.862453, 38.612164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146301, 33.515701, 38.266281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378319, 33.623333, 38.573826>,  <37.517529, 33.687912, 38.758354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378319, 33.623333, 38.573826>,  <37.146301, 33.515701, 38.266281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378319, 33.623333, 38.573826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522340, 0.601414, -0.604535,
		-0.625071, 0.752263, 0.208295,
		0.580041, 0.269077, 0.768863,
		37.552330, 33.704056, 38.804485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095303, 34.246067, 38.205372>,  <37.146301, 33.515701, 38.266281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095303, 34.246067, 38.205372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418400, 34.150097, 38.420776>,  <37.612259, 34.092514, 38.550018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418400, 34.150097, 38.420776>,  <37.095303, 34.246067, 38.205372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418400, 34.150097, 38.420776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556294, 0.612594, -0.561486,
		-0.195174, 0.753104, 0.628284,
		0.807740, -0.239923, 0.538510,
		37.660721, 34.078121, 38.582329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417023, 34.888721, 38.266865>,  <37.095303, 34.246067, 38.205372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417023, 34.888721, 38.266865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676929, 34.595257, 38.346409>,  <37.832874, 34.419178, 38.394135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676929, 34.595257, 38.346409>,  <37.417023, 34.888721, 38.266865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676929, 34.595257, 38.346409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676608, 0.438993, -0.591173,
		0.346424, 0.518674, 0.781645,
		0.649763, -0.733664, 0.198861,
		37.871857, 34.375156, 38.406067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042412, 35.181282, 38.541397>,  <37.417023, 34.888721, 38.266865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042412, 35.181282, 38.541397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124565, 34.822239, 38.385391>,  <38.173859, 34.606812, 38.291786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124565, 34.822239, 38.385391>,  <38.042412, 35.181282, 38.541397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124565, 34.822239, 38.385391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757035, 0.398273, -0.517954,
		0.620254, -0.188877, 0.761322,
		0.205384, -0.897610, -0.390017,
		38.186180, 34.552956, 38.268387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734230, 34.983688, 38.653309>,  <38.042412, 35.181282, 38.541397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734230, 34.983688, 38.653309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645416, 34.746033, 38.344063>,  <38.592129, 34.603439, 38.158516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645416, 34.746033, 38.344063>,  <38.734230, 34.983688, 38.653309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645416, 34.746033, 38.344063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874589, 0.229164, -0.427292,
		0.431039, -0.771029, 0.468742,
		-0.222036, -0.594136, -0.773112,
		38.578804, 34.567791, 38.112129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305630, 34.932686, 38.453304>,  <38.734230, 34.983688, 38.653309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305630, 34.932686, 38.453304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100067, 34.807709, 38.133736>,  <38.976730, 34.732723, 37.941994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100067, 34.807709, 38.133736>,  <39.305630, 34.932686, 38.453304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100067, 34.807709, 38.133736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785358, 0.203322, -0.584699,
		0.345124, -0.927922, 0.140891,
		-0.513908, -0.312444, -0.798922,
		38.945896, 34.713974, 37.894058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760063, 34.445805, 38.115910>,  <39.305630, 34.932686, 38.453304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760063, 34.445805, 38.115910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509827, 34.554764, 37.823490>,  <39.359684, 34.620140, 37.648037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509827, 34.554764, 37.823490>,  <39.760063, 34.445805, 38.115910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509827, 34.554764, 37.823490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779020, 0.268627, -0.566540,
		0.042053, -0.923924, -0.380257,
		-0.625588, 0.272403, -0.731052,
		39.322151, 34.636486, 37.604176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123310, 34.178146, 37.504318>,  <39.760063, 34.445805, 38.115910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123310, 34.178146, 37.504318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852203, 34.435619, 37.362160>,  <39.689541, 34.590103, 37.276867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852203, 34.435619, 37.362160>,  <40.123310, 34.178146, 37.504318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852203, 34.435619, 37.362160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702664, 0.424660, -0.570900,
		-0.216560, -0.636657, -0.740114,
		-0.677765, 0.643686, -0.355392,
		39.648872, 34.628727, 37.255543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001194, 34.178547, 36.792133>,  <40.123310, 34.178146, 37.504318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001194, 34.178547, 36.792133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930351, 34.549671, 36.923462>,  <39.887844, 34.772346, 37.002258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930351, 34.549671, 36.923462>,  <40.001194, 34.178547, 36.792133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930351, 34.549671, 36.923462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735116, 0.346516, -0.582693,
		-0.654399, 0.138154, -0.743422,
		-0.177106, 0.927815, 0.328319,
		39.877220, 34.828014, 37.021957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060200, 34.729931, 36.197491>,  <40.001194, 34.178547, 36.792133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060200, 34.729931, 36.197491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132401, 34.871761, 36.564468>,  <40.175720, 34.956860, 36.784653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132401, 34.871761, 36.564468>,  <40.060200, 34.729931, 36.197491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132401, 34.871761, 36.564468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844188, 0.422819, -0.329500,
		-0.504743, 0.833968, -0.223008,
		0.180500, 0.354573, 0.917441,
		40.186550, 34.978134, 36.839699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099815, 35.449421, 36.290741>,  <40.060200, 34.729931, 36.197491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099815, 35.449421, 36.290741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352760, 35.248878, 36.526966>,  <40.504528, 35.128555, 36.668701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352760, 35.248878, 36.526966>,  <40.099815, 35.449421, 36.290741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352760, 35.248878, 36.526966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773364, 0.452876, -0.443634,
		-0.045035, 0.737258, 0.674109,
		0.632361, -0.501352, 0.590564,
		40.542469, 35.098473, 36.704136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477283, 35.975639, 36.744465>,  <40.099815, 35.449421, 36.290741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477283, 35.975639, 36.744465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718472, 35.661182, 36.690178>,  <40.863182, 35.472507, 36.657604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718472, 35.661182, 36.690178>,  <40.477283, 35.975639, 36.744465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718472, 35.661182, 36.690178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770244, 0.617978, -0.157567,
		0.207740, -0.009528, 0.978138,
		0.602966, -0.786138, -0.135717,
		40.899361, 35.425343, 36.649464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118229, 36.385994, 36.751293>,  <40.477283, 35.975639, 36.744465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118229, 36.385994, 36.751293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237858, 36.017273, 36.652637>,  <41.309635, 35.796040, 36.593445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237858, 36.017273, 36.652637>,  <41.118229, 36.385994, 36.751293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237858, 36.017273, 36.652637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938448, 0.330944, -0.098950,
		0.172838, -0.201867, 0.964042,
		0.299069, -0.921806, -0.246642,
		41.327579, 35.740730, 36.578644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668285, 36.177708, 37.179615>,  <41.118229, 36.385994, 36.751293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668285, 36.177708, 37.179615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681740, 35.985802, 36.828915>,  <41.689812, 35.870659, 36.618496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681740, 35.985802, 36.828915>,  <41.668285, 36.177708, 37.179615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681740, 35.985802, 36.828915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801536, 0.536964, -0.263077,
		0.596999, -0.693899, 0.402612,
		0.033639, -0.479764, -0.876752,
		41.691833, 35.841873, 36.565887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304688, 35.909798, 37.222061>,  <41.668285, 36.177708, 37.179615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304688, 35.909798, 37.222061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187298, 35.998451, 36.850094>,  <42.116863, 36.051643, 36.626911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187298, 35.998451, 36.850094>,  <42.304688, 35.909798, 37.222061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187298, 35.998451, 36.850094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732936, 0.676683, -0.070032,
		0.613740, -0.702125, -0.361031,
		-0.293475, 0.221631, -0.929920,
		42.099255, 36.064941, 36.571117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718803, 35.814522, 36.704861>,  <42.304688, 35.909798, 37.222061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718803, 35.814522, 36.704861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508854, 36.098202, 36.516590>,  <42.382885, 36.268410, 36.403625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508854, 36.098202, 36.516590>,  <42.718803, 35.814522, 36.704861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508854, 36.098202, 36.516590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827424, 0.554850, -0.086665,
		0.199694, -0.434941, -0.878037,
		-0.524873, 0.709203, -0.470681,
		42.351391, 36.310963, 36.375385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900551, 35.891953, 35.949726>,  <42.718803, 35.814522, 36.704861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900551, 35.891953, 35.949726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801704, 36.226048, 36.146225>,  <42.742397, 36.426502, 36.264122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801704, 36.226048, 36.146225>,  <42.900551, 35.891953, 35.949726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801704, 36.226048, 36.146225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928733, 0.348760, -0.125788,
		-0.276388, 0.425150, -0.861892,
		-0.247114, 0.835233, 0.491244,
		42.727570, 36.476616, 36.293598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315376, 36.133045, 35.432941>,  <42.900551, 35.891953, 35.949726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315376, 36.133045, 35.432941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172985, 36.091774, 35.061428>,  <42.087551, 36.067013, 34.838520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172985, 36.091774, 35.061428>,  <42.315376, 36.133045, 35.432941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172985, 36.091774, 35.061428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807338, -0.466578, 0.361261,
		-0.470623, 0.878442, 0.082794,
		-0.355976, -0.103175, -0.928782,
		42.066193, 36.060822, 34.782795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982777, 36.515686, 35.184689>,  <42.315376, 36.133045, 35.432941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982777, 36.515686, 35.184689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332630, 36.323387, 35.159748>,  <43.542542, 36.208008, 35.144783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332630, 36.323387, 35.159748>,  <42.982777, 36.515686, 35.184689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332630, 36.323387, 35.159748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484149, -0.872791, -0.061936,
		-0.024646, 0.084360, -0.996131,
		0.874638, -0.480749, -0.062353,
		43.595020, 36.179161, 35.141041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859360, 35.966557, 34.689465>,  <42.982777, 36.515686, 35.184689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859360, 35.966557, 34.689465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190781, 35.869354, 34.891239>,  <43.389633, 35.811031, 35.012302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190781, 35.869354, 34.891239>,  <42.859360, 35.966557, 34.689465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190781, 35.869354, 34.891239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351828, -0.926794, 0.131417,
		0.435574, -0.286360, -0.853390,
		0.828549, -0.243005, 0.504436,
		43.439346, 35.796452, 35.042568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193230, 35.411495, 34.309299>,  <42.859360, 35.966557, 34.689465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193230, 35.411495, 34.309299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331688, 35.373013, 34.682594>,  <43.414764, 35.349922, 34.906570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331688, 35.373013, 34.682594>,  <43.193230, 35.411495, 34.309299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331688, 35.373013, 34.682594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098554, -0.992953, -0.065808,
		0.932988, -0.069194, -0.353193,
		0.346150, -0.096207, 0.933233,
		43.435532, 35.344151, 34.962563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786777, 35.041233, 34.271324>,  <43.193230, 35.411495, 34.309299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786777, 35.041233, 34.271324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670643, 34.999073, 34.651764>,  <43.600960, 34.973778, 34.880028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670643, 34.999073, 34.651764>,  <43.786777, 35.041233, 34.271324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670643, 34.999073, 34.651764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079971, -0.993111, -0.085647,
		0.953576, 0.051194, 0.296768,
		-0.290339, -0.105404, 0.951101,
		43.583542, 34.967453, 34.937096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183716, 34.511681, 34.457024>,  <43.786777, 35.041233, 34.271324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183716, 34.511681, 34.457024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918785, 34.522930, 34.756500>,  <43.759827, 34.529678, 34.936184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918785, 34.522930, 34.756500>,  <44.183716, 34.511681, 34.457024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918785, 34.522930, 34.756500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045217, -0.998974, -0.002478,
		0.747850, -0.035494, 0.662919,
		-0.662326, 0.028122, 0.748688,
		43.720089, 34.531368, 34.981106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362720, 33.958164, 34.882664>,  <44.183716, 34.511681, 34.457024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362720, 33.958164, 34.882664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992214, 34.038239, 35.010387>,  <43.769909, 34.086285, 35.087021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992214, 34.038239, 35.010387>,  <44.362720, 33.958164, 34.882664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992214, 34.038239, 35.010387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151425, -0.973547, 0.171102,
		0.345115, 0.110135, 0.932076,
		-0.926265, 0.200190, 0.319309,
		43.714336, 34.098297, 35.106178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338264, 33.498150, 35.316833>,  <44.362720, 33.958164, 34.882664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338264, 33.498150, 35.316833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958984, 33.623386, 35.295353>,  <43.731415, 33.698528, 35.282467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958984, 33.623386, 35.295353>,  <44.338264, 33.498150, 35.316833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958984, 33.623386, 35.295353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310462, -0.877593, 0.365300,
		0.067248, 0.363050, 0.929340,
		-0.948204, 0.313090, -0.053697,
		43.674522, 33.717312, 35.279243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934746, 33.331741, 35.993134>,  <44.338264, 33.498150, 35.316833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934746, 33.331741, 35.993134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679165, 33.352581, 35.686142>,  <43.525818, 33.365086, 35.501945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679165, 33.352581, 35.686142>,  <43.934746, 33.331741, 35.993134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679165, 33.352581, 35.686142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341545, -0.913185, 0.222351,
		-0.689269, 0.404200, 0.601274,
		-0.638949, 0.052103, -0.767482,
		43.487480, 33.368214, 35.455898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268803, 33.152454, 36.243725>,  <43.934746, 33.331741, 35.993134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268803, 33.152454, 36.243725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244358, 33.104523, 35.847359>,  <43.229691, 33.075764, 35.609539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244358, 33.104523, 35.847359>,  <43.268803, 33.152454, 36.243725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244358, 33.104523, 35.847359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292036, -0.947177, 0.132554,
		-0.954453, 0.297483, 0.022890,
		-0.061114, -0.119832, -0.990911,
		43.226025, 33.068573, 35.550087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619514, 32.769142, 36.124054>,  <43.268803, 33.152454, 36.243725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619514, 32.769142, 36.124054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839775, 32.718616, 35.794006>,  <42.971931, 32.688301, 35.595978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839775, 32.718616, 35.794006>,  <42.619514, 32.769142, 36.124054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839775, 32.718616, 35.794006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296063, -0.953775, -0.051566,
		-0.780468, 0.272683, -0.562595,
		0.550651, -0.126318, -0.825123,
		43.004971, 32.680721, 35.546471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147488, 32.405933, 35.851109>,  <42.619514, 32.769142, 36.124054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147488, 32.405933, 35.851109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489517, 32.320213, 35.662251>,  <42.694736, 32.268784, 35.548935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489517, 32.320213, 35.662251>,  <42.147488, 32.405933, 35.851109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489517, 32.320213, 35.662251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178339, -0.976591, 0.120274,
		-0.486868, -0.018642, -0.873277,
		0.855076, -0.214297, -0.472146,
		42.746040, 32.255924, 35.520607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959133, 32.011669, 35.352436>,  <42.147488, 32.405933, 35.851109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959133, 32.011669, 35.352436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345043, 31.932871, 35.422188>,  <42.576588, 31.885592, 35.464039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345043, 31.932871, 35.422188>,  <41.959133, 32.011669, 35.352436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345043, 31.932871, 35.422188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195016, -0.980383, -0.028589,
		0.176586, -0.006424, -0.984264,
		0.964772, -0.196996, 0.174375,
		42.634476, 31.873772, 35.474499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113476, 31.463198, 34.914959>,  <41.959133, 32.011669, 35.352436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113476, 31.463198, 34.914959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410633, 31.452557, 35.182514>,  <42.588928, 31.446171, 35.343048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410633, 31.452557, 35.182514>,  <42.113476, 31.463198, 34.914959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410633, 31.452557, 35.182514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103383, -0.991781, 0.075374,
		0.661383, -0.125146, -0.739534,
		0.742889, -0.026604, 0.668886,
		42.633499, 31.444574, 35.383179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674133, 30.972788, 34.683693>,  <42.113476, 31.463198, 34.914959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674133, 30.972788, 34.683693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691292, 31.007635, 35.081802>,  <42.701588, 31.028543, 35.320667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691292, 31.007635, 35.081802>,  <42.674133, 30.972788, 34.683693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691292, 31.007635, 35.081802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010977, -0.996090, 0.087662,
		0.999019, -0.014686, -0.041773,
		0.042897, 0.087117, 0.995274,
		42.704163, 31.033770, 35.380386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808971, 30.340427, 34.779686>,  <42.674133, 30.972788, 34.683693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808971, 30.340427, 34.779686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731297, 30.461058, 35.153069>,  <42.684692, 30.533436, 35.377098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731297, 30.461058, 35.153069>,  <42.808971, 30.340427, 34.779686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731297, 30.461058, 35.153069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366422, -0.904993, 0.216154,
		0.909959, -0.300064, 0.286245,
		-0.194190, 0.301578, 0.933457,
		42.673038, 30.551531, 35.433105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976265, 29.748346, 35.158043>,  <42.808971, 30.340427, 34.779686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976265, 29.748346, 35.158043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773674, 29.966631, 35.425079>,  <42.652119, 30.097601, 35.585300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773674, 29.966631, 35.425079>,  <42.976265, 29.748346, 35.158043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773674, 29.966631, 35.425079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313301, -0.837795, 0.447150,
		0.803322, 0.017312, 0.595294,
		-0.506475, 0.545711, 0.667595,
		42.621731, 30.130344, 35.625359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079689, 29.413080, 35.808548>,  <42.976265, 29.748346, 35.158043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079689, 29.413080, 35.808548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739357, 29.618053, 35.855030>,  <42.535156, 29.741037, 35.882919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739357, 29.618053, 35.855030>,  <43.079689, 29.413080, 35.808548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739357, 29.618053, 35.855030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427058, -0.803240, 0.415244,
		0.306121, 0.303677, 0.902258,
		-0.850830, 0.512432, 0.116201,
		42.484108, 29.771782, 35.889889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977425, 29.511112, 36.553696>,  <43.079689, 29.413080, 35.808548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977425, 29.511112, 36.553696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619274, 29.537390, 36.377518>,  <42.404385, 29.553156, 36.271812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619274, 29.537390, 36.377518>,  <42.977425, 29.511112, 36.553696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619274, 29.537390, 36.377518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257431, -0.883406, 0.391565,
		-0.363364, 0.463980, 0.807892,
		-0.895375, 0.065696, -0.440441,
		42.350662, 29.557098, 36.245384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453053, 29.444256, 37.179379>,  <42.977425, 29.511112, 36.553696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453053, 29.444256, 37.179379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277206, 29.359341, 36.830284>,  <42.171700, 29.308392, 36.620827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277206, 29.359341, 36.830284>,  <42.453053, 29.444256, 37.179379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277206, 29.359341, 36.830284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330438, -0.865296, 0.376926,
		-0.835192, 0.454089, 0.310254,
		-0.439620, -0.212286, -0.872737,
		42.145321, 29.295654, 36.568462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761532, 29.311068, 37.217140>,  <42.453053, 29.444256, 37.179379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761532, 29.311068, 37.217140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986073, 29.065300, 36.995377>,  <42.120796, 28.917839, 36.862320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986073, 29.065300, 36.995377>,  <41.761532, 29.311068, 37.217140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986073, 29.065300, 36.995377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316570, -0.778394, 0.542113,
		-0.764632, -0.128810, -0.631464,
		0.561357, -0.614420, -0.554407,
		42.154480, 28.880974, 36.829052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292027, 28.807665, 36.705235>,  <41.761532, 29.311068, 37.217140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292027, 28.807665, 36.705235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642918, 28.695932, 36.861408>,  <41.853455, 28.628893, 36.955112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642918, 28.695932, 36.861408>,  <41.292027, 28.807665, 36.705235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642918, 28.695932, 36.861408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455653, -0.740530, 0.493959,
		0.151153, -0.611219, -0.776893,
		0.877231, -0.279330, 0.390437,
		41.906086, 28.612133, 36.978539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488052, 28.037907, 36.501564>,  <41.292027, 28.807665, 36.705235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488052, 28.037907, 36.501564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616108, 28.139694, 36.866585>,  <41.692940, 28.200768, 37.085598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616108, 28.139694, 36.866585>,  <41.488052, 28.037907, 36.501564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616108, 28.139694, 36.866585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662097, -0.628859, 0.407632,
		0.677599, -0.734698, -0.032837,
		0.320136, 0.254470, 0.912556,
		41.712151, 28.216036, 37.140350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536018, 27.378607, 36.808018>,  <41.488052, 28.037907, 36.501564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536018, 27.378607, 36.808018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474373, 27.693151, 37.047314>,  <41.437386, 27.881878, 37.190891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474373, 27.693151, 37.047314>,  <41.536018, 27.378607, 36.808018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474373, 27.693151, 37.047314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769780, -0.475135, 0.426246,
		0.619425, -0.394821, 0.678549,
		-0.154112, 0.786361, 0.598236,
		41.428139, 27.929060, 37.226784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460789, 27.088234, 37.519886>,  <41.536018, 27.378607, 36.808018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460789, 27.088234, 37.519886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232143, 27.413488, 37.475929>,  <41.094955, 27.608641, 37.449554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232143, 27.413488, 37.475929>,  <41.460789, 27.088234, 37.519886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232143, 27.413488, 37.475929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691463, -0.405259, 0.598033,
		0.441748, 0.417825, 0.793903,
		-0.571609, 0.813134, -0.109888,
		41.060661, 27.657429, 37.442963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290310, 27.296524, 38.108742>,  <41.460789, 27.088234, 37.519886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290310, 27.296524, 38.108742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001316, 27.410906, 37.856949>,  <40.827919, 27.479534, 37.705872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001316, 27.410906, 37.856949>,  <41.290310, 27.296524, 38.108742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001316, 27.410906, 37.856949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672568, -0.501667, 0.544043,
		-0.160218, 0.816431, 0.554770,
		-0.722484, 0.285955, -0.629481,
		40.784573, 27.496693, 37.668106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056271, 27.240837, 38.851086>,  <41.290310, 27.296524, 38.108742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056271, 27.240837, 38.851086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092785, 27.387386, 39.221478>,  <41.114693, 27.475317, 39.443714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092785, 27.387386, 39.221478>,  <41.056271, 27.240837, 38.851086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092785, 27.387386, 39.221478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762523, 0.572345, -0.301629,
		-0.640488, 0.733615, -0.227120,
		0.091289, 0.366374, 0.925979,
		41.120171, 27.497299, 39.499271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961720, 28.060242, 38.936195>,  <41.056271, 27.240837, 38.851086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961720, 28.060242, 38.936195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215366, 27.885250, 39.191227>,  <41.367554, 27.780256, 39.344246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215366, 27.885250, 39.191227>,  <40.961720, 28.060242, 38.936195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215366, 27.885250, 39.191227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747821, 0.556639, -0.361824,
		-0.196612, 0.706234, 0.680130,
		0.634119, -0.437477, 0.637579,
		41.405602, 27.754007, 39.382500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353931, 28.496267, 39.340080>,  <40.961720, 28.060242, 38.936195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353931, 28.496267, 39.340080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590767, 28.177139, 39.294617>,  <41.732868, 27.985662, 39.267338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590767, 28.177139, 39.294617>,  <41.353931, 28.496267, 39.340080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590767, 28.177139, 39.294617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689050, 0.574334, -0.441985,
		0.417902, 0.183377, 0.889793,
		0.592088, -0.797818, -0.113659,
		41.768394, 27.937794, 39.260517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011120, 28.517254, 39.741375>,  <41.353931, 28.496267, 39.340080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011120, 28.517254, 39.741375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015278, 28.326761, 39.389671>,  <42.017773, 28.212465, 39.178650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015278, 28.326761, 39.389671>,  <42.011120, 28.517254, 39.741375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015278, 28.326761, 39.389671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789849, 0.543139, -0.284846,
		0.613213, -0.691521, 0.381796,
		0.010391, -0.476233, -0.879258,
		42.018394, 28.183891, 39.125893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636948, 28.225266, 39.654778>,  <42.011120, 28.517254, 39.741375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636948, 28.225266, 39.654778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479755, 28.264694, 39.289078>,  <42.385441, 28.288351, 39.069660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479755, 28.264694, 39.289078>,  <42.636948, 28.225266, 39.654778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479755, 28.264694, 39.289078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782081, 0.558759, -0.275929,
		0.483645, -0.823451, -0.296674,
		-0.392984, 0.098572, -0.914247,
		42.361862, 28.294266, 39.014805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231216, 28.155897, 39.232071>,  <42.636948, 28.225266, 39.654778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231216, 28.155897, 39.232071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955959, 28.332644, 39.001869>,  <42.790806, 28.438690, 38.863747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955959, 28.332644, 39.001869>,  <43.231216, 28.155897, 39.232071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955959, 28.332644, 39.001869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695201, 0.628614, -0.348627,
		0.207727, -0.640001, -0.739763,
		-0.688146, 0.441864, -0.575509,
		42.749516, 28.465202, 38.829216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585384, 28.204470, 38.628365>,  <43.231216, 28.155897, 39.232071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585384, 28.204470, 38.628365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304184, 28.488914, 38.632515>,  <43.135464, 28.659582, 38.635006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304184, 28.488914, 38.632515>,  <43.585384, 28.204470, 38.628365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304184, 28.488914, 38.632515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608072, 0.608578, -0.509784,
		-0.368830, -0.352068, -0.860240,
		-0.703002, 0.711112, 0.010379,
		43.093285, 28.702248, 38.635628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740543, 28.527702, 38.138958>,  <43.585384, 28.204470, 38.628365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740543, 28.527702, 38.138958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493279, 28.792892, 38.307877>,  <43.344921, 28.952007, 38.409229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493279, 28.792892, 38.307877>,  <43.740543, 28.527702, 38.138958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493279, 28.792892, 38.307877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448052, 0.738607, -0.503695,
		-0.645852, -0.122152, -0.753627,
		-0.618162, 0.662977, 0.422301,
		43.307831, 28.991785, 38.434566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528313, 29.044497, 37.589573>,  <43.740543, 28.527702, 38.138958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528313, 29.044497, 37.589573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459072, 29.218592, 37.942978>,  <43.417526, 29.323050, 38.155022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459072, 29.218592, 37.942978>,  <43.528313, 29.044497, 37.589573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459072, 29.218592, 37.942978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224618, 0.890864, -0.394851,
		-0.958948, 0.130103, -0.251974,
		-0.173104, 0.435240, 0.883517,
		43.407143, 29.349163, 38.208035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217625, 29.573137, 37.422718>,  <43.528313, 29.044497, 37.589573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217625, 29.573137, 37.422718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367741, 29.669498, 37.780739>,  <43.457809, 29.727316, 37.995552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367741, 29.669498, 37.780739>,  <43.217625, 29.573137, 37.422718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367741, 29.669498, 37.780739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361262, 0.851258, -0.380591,
		-0.853607, 0.466182, 0.232443,
		0.375294, 0.240903, 0.895053,
		43.480328, 29.741770, 38.049255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993649, 30.245911, 37.512032>,  <43.217625, 29.573137, 37.422718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993649, 30.245911, 37.512032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303562, 30.221157, 37.763710>,  <43.489510, 30.206305, 37.914715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303562, 30.221157, 37.763710>,  <42.993649, 30.245911, 37.512032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303562, 30.221157, 37.763710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286418, 0.921571, -0.262052,
		-0.563628, 0.383245, 0.731742,
		0.774783, -0.061884, 0.629192,
		43.535995, 30.202593, 37.952469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022850, 30.901075, 37.972561>,  <42.993649, 30.245911, 37.512032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022850, 30.901075, 37.972561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392517, 30.748283, 37.973957>,  <43.614315, 30.656609, 37.974792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392517, 30.748283, 37.973957>,  <43.022850, 30.901075, 37.972561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392517, 30.748283, 37.973957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379207, 0.916274, -0.129013,
		0.046086, 0.120551, 0.991637,
		0.924164, -0.381981, 0.003487,
		43.669765, 30.633690, 37.975002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336124, 31.456316, 38.132473>,  <43.022850, 30.901075, 37.972561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336124, 31.456316, 38.132473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643570, 31.228100, 38.016735>,  <43.828037, 31.091171, 37.947292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643570, 31.228100, 38.016735>,  <43.336124, 31.456316, 38.132473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643570, 31.228100, 38.016735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518902, 0.820565, -0.239612,
		0.374132, 0.034029, 0.926751,
		0.768613, -0.570539, -0.289342,
		43.874153, 31.056938, 37.929932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880341, 31.724363, 38.501812>,  <43.336124, 31.456316, 38.132473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880341, 31.724363, 38.501812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040550, 31.535896, 38.187466>,  <44.136677, 31.422817, 37.998859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040550, 31.535896, 38.187466>,  <43.880341, 31.724363, 38.501812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040550, 31.535896, 38.187466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498143, 0.831812, -0.244830,
		0.769048, -0.293414, 0.567867,
		0.400522, -0.471166, -0.785866,
		44.160706, 31.394547, 37.951706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587387, 31.781773, 38.511009>,  <43.880341, 31.724363, 38.501812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587387, 31.781773, 38.511009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528740, 31.707748, 38.122318>,  <44.493553, 31.663334, 37.889103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528740, 31.707748, 38.122318>,  <44.587387, 31.781773, 38.511009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528740, 31.707748, 38.122318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576855, 0.782022, -0.235968,
		0.803581, -0.595143, -0.007904,
		-0.146616, -0.185060, -0.971729,
		44.484756, 31.652231, 37.830799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253132, 31.953934, 38.224503>,  <44.587387, 31.781773, 38.511009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253132, 31.953934, 38.224503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.015137, 31.915470, 37.905319>,  <44.872341, 31.892391, 37.713810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.015137, 31.915470, 37.905319>,  <45.253132, 31.953934, 38.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015137, 31.915470, 37.905319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527371, 0.702502, -0.477881,
		0.606522, -0.705155, -0.367269,
		-0.594988, -0.096158, -0.797962,
		44.836639, 31.886623, 37.665932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734516, 31.944477, 37.616577>,  <45.253132, 31.953934, 38.224503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734516, 31.944477, 37.616577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373524, 32.050385, 37.480675>,  <45.156929, 32.113930, 37.399136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373524, 32.050385, 37.480675>,  <45.734516, 31.944477, 37.616577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373524, 32.050385, 37.480675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404632, 0.791547, -0.457959,
		0.147676, -0.550772, -0.821488,
		-0.902477, 0.264771, -0.339752,
		45.102779, 32.129814, 37.378750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793690, 32.103916, 36.873508>,  <45.734516, 31.944477, 37.616577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793690, 32.103916, 36.873508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479340, 32.312710, 37.006134>,  <45.290730, 32.437988, 37.085709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479340, 32.312710, 37.006134>,  <45.793690, 32.103916, 36.873508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479340, 32.312710, 37.006134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273596, 0.774335, -0.570570,
		-0.554571, -0.357681, -0.751342,
		-0.785872, 0.521986, 0.331565,
		45.243576, 32.469307, 37.105602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533405, 32.425369, 36.218170>,  <45.793690, 32.103916, 36.873508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533405, 32.425369, 36.218170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391010, 32.636715, 36.526482>,  <45.305573, 32.763523, 36.711468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391010, 32.636715, 36.526482>,  <45.533405, 32.425369, 36.218170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391010, 32.636715, 36.526482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292351, 0.846379, -0.445167,
		-0.887583, 0.066864, -0.455770,
		-0.355988, 0.528368, 0.770779,
		45.284214, 32.795227, 36.757717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467953, 32.998421, 35.906830>,  <45.533405, 32.425369, 36.218170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467953, 32.998421, 35.906830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400616, 33.104969, 36.286453>,  <45.360214, 33.168896, 36.514229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400616, 33.104969, 36.286453>,  <45.467953, 32.998421, 35.906830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400616, 33.104969, 36.286453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265076, 0.939565, -0.216683,
		-0.949419, 0.215095, -0.228776,
		-0.168342, 0.266366, 0.949057,
		45.350113, 33.184879, 36.571171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955250, 33.495117, 35.896404>,  <45.467953, 32.998421, 35.906830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955250, 33.495117, 35.896404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193333, 33.542374, 36.214340>,  <45.336182, 33.570728, 36.405102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193333, 33.542374, 36.214340>,  <44.955250, 33.495117, 35.896404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193333, 33.542374, 36.214340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288818, 0.891585, -0.348800,
		-0.749876, 0.437172, 0.496555,
		0.595206, 0.118143, 0.794841,
		45.371895, 33.577816, 36.452793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950092, 34.242870, 35.959618>,  <44.955250, 33.495117, 35.896404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950092, 34.242870, 35.959618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239517, 34.100197, 36.195999>,  <45.413174, 34.014591, 36.337830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239517, 34.100197, 36.195999>,  <44.950092, 34.242870, 35.959618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239517, 34.100197, 36.195999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561916, 0.801598, -0.204186,
		-0.400879, 0.479810, 0.780435,
		0.723566, -0.356685, 0.590956,
		45.456589, 33.993191, 36.373287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006081, 34.817940, 36.399666>,  <44.950092, 34.242870, 35.959618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006081, 34.817940, 36.399666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348621, 34.611485, 36.393097>,  <45.554146, 34.487614, 36.389156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348621, 34.611485, 36.393097>,  <45.006081, 34.817940, 36.399666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348621, 34.611485, 36.393097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502966, 0.840865, -0.199929,
		0.117000, 0.162948, 0.979673,
		0.856350, -0.516134, -0.016424,
		45.605526, 34.456646, 36.388168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543186, 35.111988, 36.909088>,  <45.006081, 34.817940, 36.399666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543186, 35.111988, 36.909088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715752, 34.918262, 36.604637>,  <45.819290, 34.802025, 36.421967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715752, 34.918262, 36.604637>,  <45.543186, 35.111988, 36.909088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715752, 34.918262, 36.604637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470428, 0.840666, -0.268288,
		0.769794, -0.242316, 0.590508,
		0.431409, -0.484318, -0.761132,
		45.845173, 34.772968, 36.376297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.103634, 35.529053, 36.772881>,  <45.543186, 35.111988, 36.909088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.103634, 35.529053, 36.772881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.112183, 35.277237, 36.462212>,  <46.117310, 35.126144, 36.275810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.112183, 35.277237, 36.462212>,  <46.103634, 35.529053, 36.772881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.112183, 35.277237, 36.462212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524984, 0.668193, -0.527172,
		0.850844, -0.396474, 0.344779,
		0.021369, -0.629544, -0.776671,
		46.118595, 35.088375, 36.229210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.780655, 35.562740, 36.541836>,  <46.103634, 35.529053, 36.772881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.780655, 35.562740, 36.541836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.513004, 35.479237, 36.256546>,  <46.352413, 35.429134, 36.085373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.513004, 35.479237, 36.256546>,  <46.780655, 35.562740, 36.541836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.513004, 35.479237, 36.256546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301016, 0.801338, -0.516959,
		0.679454, -0.560603, -0.473357,
		-0.669128, -0.208761, -0.713223,
		46.312267, 35.416607, 36.042580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.068039, 35.290321, 35.855629>,  <46.780655, 35.562740, 36.541836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.068039, 35.290321, 35.855629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.761620, 35.542431, 35.805157>,  <46.577766, 35.693699, 35.774876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.761620, 35.542431, 35.805157>,  <47.068039, 35.290321, 35.855629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.761620, 35.542431, 35.805157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528806, 0.506359, -0.681150,
		-0.365422, -0.588517, -0.721189,
		-0.766049, 0.630276, -0.126177,
		46.531803, 35.731514, 35.767303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.155388, 35.534084, 35.186356>,  <47.068039, 35.290321, 35.855629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.155388, 35.534084, 35.186356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912251, 35.805374, 35.351540>,  <46.766369, 35.968147, 35.450649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912251, 35.805374, 35.351540>,  <47.155388, 35.534084, 35.186356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912251, 35.805374, 35.351540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248566, 0.656446, -0.712246,
		-0.754148, -0.330287, -0.567601,
		-0.607845, 0.678225, 0.412959,
		46.729897, 36.008842, 35.475426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.450802, 35.113647, 34.757217>,  <47.155388, 35.534084, 35.186356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.450802, 35.113647, 34.757217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.519119, 34.890038, 35.081768>,  <47.560108, 34.755871, 35.276497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.519119, 34.890038, 35.081768>,  <47.450802, 35.113647, 34.757217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.519119, 34.890038, 35.081768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981147, -0.172082, 0.087968,
		0.090447, -0.811101, -0.577871,
		0.170792, -0.559020, 0.811373,
		47.570358, 34.722332, 35.325180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.082630, 33.765945, 44.492935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.815207, 33.517208, 44.329796>,  <31.654753, 33.367966, 44.231915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.815207, 33.517208, 44.329796>,  <32.082630, 33.765945, 44.492935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815207, 33.517208, 44.329796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205838, 0.372264, -0.905014,
		0.714607, -0.689003, -0.120879,
		-0.668556, -0.621848, -0.407845,
		31.614639, 33.330654, 44.207443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344952, 33.402046, 43.990364>,  <32.082630, 33.765945, 44.492935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344952, 33.402046, 43.990364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.963305, 33.344631, 43.885242>,  <31.734318, 33.310181, 43.822170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.963305, 33.344631, 43.885242>,  <32.344952, 33.402046, 43.990364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963305, 33.344631, 43.885242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234850, 0.185777, -0.954113,
		0.185777, -0.972051, -0.143541,
		0.954113, 0.143541, 0.262799,
		31.677071, 33.301567, 43.806404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426613, 33.243515, 43.263592>,  <32.344952, 33.402046, 43.990364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426613, 33.243515, 43.263592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.034283, 33.309017, 43.305870>,  <31.798885, 33.348320, 43.331238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.034283, 33.309017, 43.305870>,  <32.426613, 33.243515, 43.263592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034283, 33.309017, 43.305870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081321, 0.149014, -0.985486,
		-0.177129, -0.975182, -0.132840,
		-0.980823, 0.163755, 0.105697,
		31.740036, 33.358143, 43.337578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084793, 32.935257, 42.574574>,  <32.426613, 33.243515, 43.263592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084793, 32.935257, 42.574574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.830999, 33.203629, 42.728085>,  <31.678724, 33.364651, 42.820190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.830999, 33.203629, 42.728085>,  <32.084793, 32.935257, 42.574574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830999, 33.203629, 42.728085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161703, 0.370306, -0.914727,
		-0.755834, -0.642435, -0.126461,
		-0.634482, 0.670933, 0.383773,
		31.640656, 33.404907, 42.843216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511000, 33.011032, 42.140850>,  <32.084793, 32.935257, 42.574574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511000, 33.011032, 42.140850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.505512, 33.354118, 42.346424>,  <31.502220, 33.559971, 42.469769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.505512, 33.354118, 42.346424>,  <31.511000, 33.011032, 42.140850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505512, 33.354118, 42.346424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061000, 0.512311, -0.856630,
		-0.998043, -0.043103, 0.045293,
		-0.013719, 0.857717, 0.513938,
		31.501396, 33.611435, 42.500607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245535, 33.527119, 41.576210>,  <31.511000, 33.011032, 42.140850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245535, 33.527119, 41.576210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.349344, 33.772903, 41.874226>,  <31.411631, 33.920376, 42.053036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.349344, 33.772903, 41.874226>,  <31.245535, 33.527119, 41.576210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349344, 33.772903, 41.874226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261584, 0.697907, -0.666708,
		-0.929634, 0.367918, 0.020391,
		0.259525, 0.614461, 0.745040,
		31.427202, 33.957241, 42.097736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984339, 34.134380, 41.369690>,  <31.245535, 33.527119, 41.576210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984339, 34.134380, 41.369690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307135, 34.164513, 41.603985>,  <31.500813, 34.182590, 41.744564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307135, 34.164513, 41.603985>,  <30.984339, 34.134380, 41.369690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307135, 34.164513, 41.603985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504084, 0.428872, -0.749645,
		-0.307676, 0.900219, 0.308125,
		0.806991, 0.075327, 0.585740,
		31.549232, 34.187111, 41.779705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162022, 34.819462, 41.294945>,  <30.984339, 34.134380, 41.369690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162022, 34.819462, 41.294945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515352, 34.679699, 41.419941>,  <31.727350, 34.595840, 41.494938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515352, 34.679699, 41.419941>,  <31.162022, 34.819462, 41.294945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515352, 34.679699, 41.419941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462366, 0.539743, -0.703488,
		0.077138, 0.765894, 0.638323,
		0.883327, -0.349405, 0.312489,
		31.780350, 34.574879, 41.513687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582808, 35.379227, 41.334698>,  <31.162022, 34.819462, 41.294945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582808, 35.379227, 41.334698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.819712, 35.057911, 41.309536>,  <31.961855, 34.865124, 41.294437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.819712, 35.057911, 41.309536>,  <31.582808, 35.379227, 41.334698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819712, 35.057911, 41.309536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502031, 0.428954, -0.750975,
		0.630231, 0.413194, 0.657328,
		0.592262, -0.803286, -0.062904,
		31.997391, 34.816925, 41.290665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321529, 35.608677, 41.434906>,  <31.582808, 35.379227, 41.334698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321529, 35.608677, 41.434906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.269928, 35.277233, 41.216999>,  <32.238968, 35.078369, 41.086254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.269928, 35.277233, 41.216999>,  <32.321529, 35.608677, 41.434906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269928, 35.277233, 41.216999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591092, 0.376845, -0.713160,
		0.796222, -0.414007, 0.441169,
		-0.129001, -0.828605, -0.544768,
		32.231228, 35.028652, 41.053570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948700, 35.424675, 41.222065>,  <32.321529, 35.608677, 41.434906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948700, 35.424675, 41.222065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.703758, 35.243195, 40.963089>,  <32.556793, 35.134308, 40.807701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.703758, 35.243195, 40.963089>,  <32.948700, 35.424675, 41.222065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703758, 35.243195, 40.963089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436374, 0.488920, -0.755337,
		0.659245, -0.745058, -0.101408,
		-0.612351, -0.453701, -0.647442,
		32.520054, 35.107086, 40.768856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413837, 35.405754, 40.698746>,  <32.948700, 35.424675, 41.222065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413837, 35.405754, 40.698746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060757, 35.324417, 40.529285>,  <32.848907, 35.275616, 40.427608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060757, 35.324417, 40.529285>,  <33.413837, 35.405754, 40.698746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060757, 35.324417, 40.529285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326373, 0.383354, -0.864014,
		0.338098, -0.900940, -0.272025,
		-0.882706, -0.203340, -0.423654,
		32.795944, 35.263416, 40.402191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575062, 35.069908, 40.066147>,  <33.413837, 35.405754, 40.698746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575062, 35.069908, 40.066147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.203472, 35.201099, 39.997520>,  <32.980518, 35.279812, 39.956345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.203472, 35.201099, 39.997520>,  <33.575062, 35.069908, 40.066147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203472, 35.201099, 39.997520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283269, 0.331603, -0.899888,
		-0.238250, -0.884574, -0.400957,
		-0.928976, 0.327977, -0.171568,
		32.924778, 35.299492, 39.946049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312508, 34.667389, 39.432972>,  <33.575062, 35.069908, 40.066147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312508, 34.667389, 39.432972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.098423, 35.001099, 39.485935>,  <32.969971, 35.201324, 39.517712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.098423, 35.001099, 39.485935>,  <33.312508, 34.667389, 39.432972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098423, 35.001099, 39.485935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270061, 0.317516, -0.908983,
		-0.800383, -0.450742, -0.395244,
		-0.535213, 0.834275, 0.132406,
		32.937859, 35.251381, 39.525658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972095, 34.771378, 38.855263>,  <33.312508, 34.667389, 39.432972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972095, 34.771378, 38.855263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.994740, 35.140720, 39.007156>,  <33.008324, 35.362328, 39.098293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.994740, 35.140720, 39.007156>,  <32.972095, 34.771378, 38.855263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994740, 35.140720, 39.007156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305992, 0.345999, -0.886935,
		-0.950350, 0.166403, -0.262955,
		0.056607, 0.923361, 0.379738,
		33.011723, 35.417728, 39.121078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707146, 35.261272, 38.337433>,  <32.972095, 34.771378, 38.855263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707146, 35.261272, 38.337433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.891354, 35.514431, 38.586384>,  <33.001881, 35.666328, 38.735756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.891354, 35.514431, 38.586384>,  <32.707146, 35.261272, 38.337433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891354, 35.514431, 38.586384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488850, 0.404411, -0.772966,
		-0.740907, 0.660219, -0.123153,
		0.460523, 0.632900, 0.622379,
		33.029510, 35.704300, 38.773098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702526, 35.912712, 37.945133>,  <32.707146, 35.261272, 38.337433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702526, 35.912712, 37.945133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.989784, 35.925091, 38.223217>,  <33.162140, 35.932518, 38.390068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.989784, 35.925091, 38.223217>,  <32.702526, 35.912712, 37.945133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989784, 35.925091, 38.223217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678631, 0.189993, -0.709480,
		-0.154039, 0.981297, 0.115442,
		0.718145, 0.030945, 0.695205,
		33.205227, 35.934376, 38.431778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982437, 36.437912, 37.744293>,  <32.702526, 35.912712, 37.945133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982437, 36.437912, 37.744293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.258652, 36.261650, 37.973721>,  <33.424381, 36.155895, 38.111378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.258652, 36.261650, 37.973721>,  <32.982437, 36.437912, 37.744293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258652, 36.261650, 37.973721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654441, 0.042966, -0.754891,
		0.308001, 0.896649, 0.318051,
		0.690538, -0.440653, 0.573570,
		33.465813, 36.129456, 38.145790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597530, 36.709709, 37.483559>,  <32.982437, 36.437912, 37.744293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597530, 36.709709, 37.483559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743767, 36.415150, 37.711262>,  <33.831509, 36.238415, 37.847885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743767, 36.415150, 37.711262>,  <33.597530, 36.709709, 37.483559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743767, 36.415150, 37.711262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717388, -0.166739, -0.676427,
		0.593039, 0.655676, 0.467327,
		0.365595, -0.736402, 0.569256,
		33.853447, 36.194229, 37.882038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310516, 36.837074, 37.636250>,  <33.597530, 36.709709, 37.483559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310516, 36.837074, 37.636250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.272228, 36.440777, 37.674759>,  <34.249256, 36.202999, 37.697865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.272228, 36.440777, 37.674759>,  <34.310516, 36.837074, 37.636250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272228, 36.440777, 37.674759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727784, -0.135643, -0.672259,
		0.679093, 0.005717, 0.734030,
		-0.095723, -0.990741, 0.096275,
		34.243511, 36.143555, 37.703640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002892, 36.574043, 37.619354>,  <34.310516, 36.837074, 37.636250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002892, 36.574043, 37.619354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768990, 36.265549, 37.518757>,  <34.628647, 36.080452, 37.458397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768990, 36.265549, 37.518757>,  <35.002892, 36.574043, 37.619354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768990, 36.265549, 37.518757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660859, -0.273114, -0.699052,
		0.470451, -0.574977, 0.669386,
		-0.584758, -0.771239, -0.251492,
		34.593563, 36.034176, 37.443310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442589, 36.122849, 37.672031>,  <35.002892, 36.574043, 37.619354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442589, 36.122849, 37.672031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149372, 35.980099, 37.440418>,  <34.973442, 35.894447, 37.301449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149372, 35.980099, 37.440418>,  <35.442589, 36.122849, 37.672031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149372, 35.980099, 37.440418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680079, -0.369891, -0.632988,
		0.011720, -0.857798, 0.513852,
		-0.733046, -0.356879, -0.579035,
		34.929459, 35.873035, 37.266708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973801, 36.679974, 37.815422>,  <35.442589, 36.122849, 37.672031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973801, 36.679974, 37.815422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348606, 36.606125, 37.934032>,  <36.573490, 36.561817, 38.005199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348606, 36.606125, 37.934032>,  <35.973801, 36.679974, 37.815422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348606, 36.606125, 37.934032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314643, -0.077409, 0.946048,
		-0.151710, -0.979756, -0.130623,
		0.937008, -0.184625, 0.296529,
		36.629707, 36.550739, 38.022991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993725, 35.943192, 38.164925>,  <35.973801, 36.679974, 37.815422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993725, 35.943192, 38.164925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297028, 36.173313, 38.287601>,  <36.479012, 36.311386, 38.361206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297028, 36.173313, 38.287601>,  <35.993725, 35.943192, 38.164925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297028, 36.173313, 38.287601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357100, -0.027076, 0.933674,
		0.545456, -0.817487, 0.184912,
		0.758260, 0.575310, 0.306693,
		36.524506, 36.345905, 38.379608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249676, 35.518578, 38.726944>,  <35.993725, 35.943192, 38.164925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249676, 35.518578, 38.726944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394283, 35.888660, 38.773083>,  <36.481049, 36.110710, 38.800766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394283, 35.888660, 38.773083>,  <36.249676, 35.518578, 38.726944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394283, 35.888660, 38.773083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141694, -0.067755, 0.987589,
		0.921537, -0.373371, 0.106602,
		0.361514, 0.925205, 0.115343,
		36.502739, 36.166222, 38.807686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842293, 35.519192, 39.209641>,  <36.249676, 35.518578, 38.726944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842293, 35.519192, 39.209641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694954, 35.891026, 39.204010>,  <36.606548, 36.114124, 39.200634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694954, 35.891026, 39.204010>,  <36.842293, 35.519192, 39.209641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694954, 35.891026, 39.204010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197812, -0.063576, 0.978176,
		0.908399, 0.363096, 0.207301,
		-0.368351, 0.929580, -0.014073,
		36.584450, 36.169899, 39.199787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344921, 35.892590, 39.602921>,  <36.842293, 35.519192, 39.209641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344921, 35.892590, 39.602921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.990074, 36.076290, 39.584572>,  <36.777164, 36.186512, 39.573563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.990074, 36.076290, 39.584572>,  <37.344921, 35.892590, 39.602921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990074, 36.076290, 39.584572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132762, -0.158728, 0.978356,
		0.442029, 0.874011, 0.201781,
		-0.887122, 0.459250, -0.045873,
		36.723938, 36.214066, 39.570808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280807, 36.259930, 40.178200>,  <37.344921, 35.892590, 39.602921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280807, 36.259930, 40.178200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891193, 36.245144, 40.088860>,  <36.657425, 36.236271, 40.035255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891193, 36.245144, 40.088860>,  <37.280807, 36.259930, 40.178200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891193, 36.245144, 40.088860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221312, -0.052197, 0.973805,
		-0.047654, 0.997953, 0.042661,
		-0.974038, -0.036965, -0.223346,
		36.598984, 36.234055, 40.021854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823555, 36.700199, 40.709988>,  <37.280807, 36.259930, 40.178200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823555, 36.700199, 40.709988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574760, 36.452835, 40.517860>,  <36.425484, 36.304417, 40.402584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574760, 36.452835, 40.517860>,  <36.823555, 36.700199, 40.709988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574760, 36.452835, 40.517860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532845, -0.115205, 0.838334,
		-0.573771, 0.777363, -0.257862,
		-0.621984, -0.618413, -0.480315,
		36.388165, 36.267311, 40.373764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178143, 36.750999, 41.159359>,  <36.823555, 36.700199, 40.709988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178143, 36.750999, 41.159359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102467, 36.447933, 40.909512>,  <36.057060, 36.266094, 40.759602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102467, 36.447933, 40.909512>,  <36.178143, 36.750999, 41.159359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102467, 36.447933, 40.909512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605806, -0.410555, 0.681502,
		-0.772790, 0.507334, -0.381323,
		-0.189194, -0.757666, -0.624619,
		36.045708, 36.220634, 40.722126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404835, 36.637478, 41.035950>,  <36.178143, 36.750999, 41.159359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404835, 36.637478, 41.035950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611450, 36.299541, 40.980190>,  <35.735420, 36.096779, 40.946735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611450, 36.299541, 40.980190>,  <35.404835, 36.637478, 41.035950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611450, 36.299541, 40.980190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514765, -0.436480, 0.737905,
		-0.684256, -0.309400, -0.660353,
		0.516538, -0.844842, -0.139395,
		35.766411, 36.046089, 40.938374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891724, 36.199871, 41.039864>,  <35.404835, 36.637478, 41.035950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891724, 36.199871, 41.039864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.218864, 35.979504, 41.106327>,  <35.415150, 35.847282, 41.146206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.218864, 35.979504, 41.106327>,  <34.891724, 36.199871, 41.039864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218864, 35.979504, 41.106327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483600, -0.501571, 0.717327,
		-0.311845, -0.667023, -0.676634,
		0.817853, -0.550915, 0.166160,
		35.464222, 35.814228, 41.156174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670540, 35.395214, 40.963173>,  <34.891724, 36.199871, 41.039864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670540, 35.395214, 40.963173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.008339, 35.413338, 41.176628>,  <35.211018, 35.424210, 41.304703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.008339, 35.413338, 41.176628>,  <34.670540, 35.395214, 40.963173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008339, 35.413338, 41.176628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367652, -0.675498, 0.639167,
		0.389432, -0.735969, -0.553798,
		0.844497, 0.045307, 0.533641,
		35.261688, 35.426929, 41.336720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766762, 34.696068, 41.087029>,  <34.670540, 35.395214, 40.963173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766762, 34.696068, 41.087029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987335, 34.907364, 41.345291>,  <35.119678, 35.034142, 41.500248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987335, 34.907364, 41.345291>,  <34.766762, 34.696068, 41.087029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987335, 34.907364, 41.345291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329328, -0.573261, 0.750277,
		0.766460, -0.626364, -0.142152,
		0.551437, 0.528242, 0.645660,
		35.152767, 35.065838, 41.538990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128410, 34.236622, 41.470848>,  <34.766762, 34.696068, 41.087029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128410, 34.236622, 41.470848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.122276, 34.578281, 41.678772>,  <35.118595, 34.783276, 41.803528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.122276, 34.578281, 41.678772>,  <35.128410, 34.236622, 41.470848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122276, 34.578281, 41.678772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083601, -0.519145, 0.850587,
		0.996381, -0.030410, 0.079370,
		-0.015339, 0.854145, 0.519809,
		35.117676, 34.834526, 41.834713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567074, 34.231499, 42.033455>,  <35.128410, 34.236622, 41.470848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567074, 34.231499, 42.033455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324970, 34.513653, 42.181019>,  <35.179710, 34.682945, 42.269558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324970, 34.513653, 42.181019>,  <35.567074, 34.231499, 42.033455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324970, 34.513653, 42.181019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205232, -0.309498, 0.928489,
		0.769120, 0.637686, 0.042558,
		-0.605256, 0.705385, 0.368914,
		35.143394, 34.725269, 42.291695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860157, 34.499180, 42.676083>,  <35.567074, 34.231499, 42.033455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860157, 34.499180, 42.676083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482342, 34.630367, 42.682781>,  <35.255653, 34.709080, 42.686798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482342, 34.630367, 42.682781>,  <35.860157, 34.499180, 42.676083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482342, 34.630367, 42.682781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031820, -0.142148, 0.989334,
		0.326852, 0.933932, 0.144700,
		-0.944540, 0.327970, 0.016743,
		35.198978, 34.728760, 42.687805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768311, 34.935097, 43.276978>,  <35.860157, 34.499180, 42.676083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768311, 34.935097, 43.276978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406509, 34.804871, 43.166798>,  <35.189426, 34.726734, 43.100689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406509, 34.804871, 43.166798>,  <35.768311, 34.935097, 43.276978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406509, 34.804871, 43.166798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172881, -0.310529, 0.934711,
		-0.389846, 0.893073, 0.224591,
		-0.904507, -0.325566, -0.275454,
		35.135159, 34.707199, 43.084160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323097, 35.135757, 43.793045>,  <35.768311, 34.935097, 43.276978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323097, 35.135757, 43.793045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115852, 34.832989, 43.633732>,  <34.991505, 34.651329, 43.538143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115852, 34.832989, 43.633732>,  <35.323097, 35.135757, 43.793045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115852, 34.832989, 43.633732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400132, -0.197059, 0.895021,
		-0.755946, 0.623087, -0.200770,
		-0.518112, -0.756921, -0.398283,
		34.960419, 34.605911, 43.514248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675575, 35.137218, 44.235592>,  <35.323097, 35.135757, 43.793045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675575, 35.137218, 44.235592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.688358, 34.782921, 44.050365>,  <34.696030, 34.570343, 43.939228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.688358, 34.782921, 44.050365>,  <34.675575, 35.137218, 44.235592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688358, 34.782921, 44.050365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442941, -0.427876, 0.787861,
		-0.895981, 0.179933, -0.406008,
		0.031959, -0.885746, -0.463069,
		34.697945, 34.517197, 43.911446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.986591, 34.789978, 44.399021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.217751, 34.486454, 44.278854>,  <34.356445, 34.304340, 44.206757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.217751, 34.486454, 44.278854>,  <33.986591, 34.789978, 44.399021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217751, 34.486454, 44.278854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501991, -0.620739, 0.602236,
		-0.643463, -0.197220, -0.739635,
		0.577894, -0.758806, -0.300420,
		34.391121, 34.258812, 44.188728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532265, 34.240887, 44.228184>,  <33.986591, 34.789978, 44.399021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532265, 34.240887, 44.228184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896687, 34.096176, 44.307266>,  <34.115341, 34.009350, 44.354717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.896687, 34.096176, 44.307266>,  <33.532265, 34.240887, 44.228184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896687, 34.096176, 44.307266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389813, -0.599779, 0.698792,
		-0.134227, -0.713710, -0.687460,
		0.911059, -0.361778, 0.197707,
		34.170006, 33.987644, 44.366577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412331, 33.516430, 44.127472>,  <33.532265, 34.240887, 44.228184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412331, 33.516430, 44.127472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726578, 33.564449, 44.370251>,  <33.915127, 33.593262, 44.515919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726578, 33.564449, 44.370251>,  <33.412331, 33.516430, 44.127472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726578, 33.564449, 44.370251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387371, -0.669481, 0.633828,
		0.482432, -0.733064, -0.479455,
		0.785623, 0.120052, 0.606947,
		33.962265, 33.600464, 44.552334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504269, 32.817310, 44.428745>,  <33.412331, 33.516430, 44.127472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504269, 32.817310, 44.428745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684856, 33.075184, 44.675503>,  <33.793209, 33.229908, 44.823559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684856, 33.075184, 44.675503>,  <33.504269, 32.817310, 44.428745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684856, 33.075184, 44.675503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179911, -0.611393, 0.770603,
		0.873962, -0.458889, -0.160038,
		0.451468, 0.644685, 0.616894,
		33.820297, 33.268589, 44.860573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824703, 32.464096, 44.948425>,  <33.504269, 32.817310, 44.428745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824703, 32.464096, 44.948425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842957, 32.825363, 45.119164>,  <33.853909, 33.042126, 45.221607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842957, 32.825363, 45.119164>,  <33.824703, 32.464096, 44.948425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842957, 32.825363, 45.119164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172465, -0.413753, 0.893904,
		0.983958, -0.114405, 0.136886,
		0.045630, 0.903172, 0.426846,
		33.856644, 33.096313, 45.247219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166801, 32.394066, 45.510834>,  <33.824703, 32.464096, 44.948425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166801, 32.394066, 45.510834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990654, 32.739128, 45.610352>,  <33.884964, 32.946167, 45.670063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990654, 32.739128, 45.610352>,  <34.166801, 32.394066, 45.510834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990654, 32.739128, 45.610352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104873, -0.324636, 0.940007,
		0.891670, 0.387860, 0.233430,
		-0.440370, 0.862656, 0.248792,
		33.858543, 32.997925, 45.684990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448708, 32.637802, 46.141705>,  <34.166801, 32.394066, 45.510834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448708, 32.637802, 46.141705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090065, 32.810703, 46.103230>,  <33.874878, 32.914444, 46.080147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090065, 32.810703, 46.103230>,  <34.448708, 32.637802, 46.141705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090065, 32.810703, 46.103230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166497, -0.127793, 0.977726,
		0.410334, 0.892651, 0.186549,
		-0.896607, 0.432254, -0.096186,
		33.821083, 32.940380, 46.074375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423485, 33.183334, 46.701347>,  <34.448708, 32.637802, 46.141705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423485, 33.183334, 46.701347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056843, 33.068127, 46.590439>,  <33.836857, 32.999001, 46.523891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056843, 33.068127, 46.590439>,  <34.423485, 33.183334, 46.701347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056843, 33.068127, 46.590439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195471, -0.282134, 0.939251,
		-0.348750, 0.915121, 0.202306,
		-0.916605, -0.288019, -0.277274,
		33.781860, 32.981720, 46.507256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040550, 33.318611, 47.376045>,  <34.423485, 33.183334, 46.701347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040550, 33.318611, 47.376045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.811565, 33.095585, 47.135574>,  <33.674175, 32.961769, 46.991291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.811565, 33.095585, 47.135574>,  <34.040550, 33.318611, 47.376045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811565, 33.095585, 47.135574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479695, -0.366890, 0.797047,
		-0.664970, 0.744659, -0.057430,
		-0.572458, -0.557562, -0.601180,
		33.639828, 32.928318, 46.955219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398262, 33.617722, 47.407043>,  <34.040550, 33.318611, 47.376045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398262, 33.617722, 47.407043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.344872, 33.241058, 47.283455>,  <33.312836, 33.015060, 47.209301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.344872, 33.241058, 47.283455>,  <33.398262, 33.617722, 47.407043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344872, 33.241058, 47.283455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608959, -0.168038, 0.775199,
		-0.781891, 0.291622, -0.551002,
		-0.133476, -0.941658, -0.308973,
		33.304829, 32.958561, 47.190762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706062, 33.525272, 47.321930>,  <33.398262, 33.617722, 47.407043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706062, 33.525272, 47.321930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.843269, 33.152275, 47.367165>,  <32.925594, 32.928474, 47.394306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.843269, 33.152275, 47.367165>,  <32.706062, 33.525272, 47.321930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843269, 33.152275, 47.367165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534319, -0.094682, 0.839963,
		-0.772554, -0.348551, -0.530728,
		0.343021, -0.932495, 0.113091,
		32.946175, 32.872528, 47.401093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110561, 33.014469, 47.428223>,  <32.706062, 33.525272, 47.321930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110561, 33.014469, 47.428223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445843, 32.844173, 47.564548>,  <32.647011, 32.741997, 47.646343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445843, 32.844173, 47.564548>,  <32.110561, 33.014469, 47.428223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445843, 32.844173, 47.564548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426814, -0.123114, 0.895920,
		-0.339468, -0.896432, -0.284905,
		0.838207, -0.425738, 0.340816,
		32.697304, 32.716454, 47.666794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903439, 32.399166, 47.858990>,  <32.110561, 33.014469, 47.428223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903439, 32.399166, 47.858990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.280350, 32.465252, 47.975487>,  <32.506496, 32.504902, 48.045383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.280350, 32.465252, 47.975487>,  <31.903439, 32.399166, 47.858990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280350, 32.465252, 47.975487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278165, -0.097947, 0.955526,
		0.186390, -0.981383, -0.046337,
		0.942276, 0.165211, 0.291242,
		32.563034, 32.514816, 48.062859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034897, 31.836180, 48.218910>,  <31.903439, 32.399166, 47.858990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034897, 31.836180, 48.218910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309151, 32.101337, 48.339230>,  <32.473701, 32.260433, 48.411423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309151, 32.101337, 48.339230>,  <32.034897, 31.836180, 48.218910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309151, 32.101337, 48.339230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237558, -0.186837, 0.953236,
		0.688096, -0.725025, 0.029376,
		0.685631, 0.662896, 0.300797,
		32.514839, 32.300205, 48.429470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583618, 31.507483, 48.574562>,  <32.034897, 31.836180, 48.218910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583618, 31.507483, 48.574562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.588753, 31.887218, 48.700157>,  <32.591831, 32.115059, 48.775517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.588753, 31.887218, 48.700157>,  <32.583618, 31.507483, 48.574562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588753, 31.887218, 48.700157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119656, -0.310301, 0.943078,
		0.992732, -0.049673, 0.109612,
		0.012833, 0.949340, 0.313990,
		32.592602, 32.172020, 48.794353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016045, 31.528933, 49.086086>,  <32.583618, 31.507483, 48.574562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016045, 31.528933, 49.086086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.784843, 31.850979, 49.139301>,  <32.646122, 32.044205, 49.171230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.784843, 31.850979, 49.139301>,  <33.016045, 31.528933, 49.086086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784843, 31.850979, 49.139301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183728, -0.287240, 0.940073,
		0.795080, 0.518926, 0.313949,
		-0.578007, 0.805114, 0.133037,
		32.611443, 32.092514, 49.179211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338036, 31.764191, 49.601196>,  <33.016045, 31.528933, 49.086086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338036, 31.764191, 49.601196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967777, 31.915289, 49.592293>,  <32.745625, 32.005947, 49.586952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967777, 31.915289, 49.592293>,  <33.338036, 31.764191, 49.601196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967777, 31.915289, 49.592293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116890, -0.229491, 0.966266,
		0.359894, 0.897019, 0.256581,
		-0.925642, 0.377745, -0.022260,
		32.690086, 32.028614, 49.585613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234589, 32.018826, 50.236996>,  <33.338036, 31.764191, 49.601196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234589, 32.018826, 50.236996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.858055, 31.999222, 50.103439>,  <32.632133, 31.987459, 50.023304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.858055, 31.999222, 50.103439>,  <33.234589, 32.018826, 50.236996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858055, 31.999222, 50.103439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283464, -0.422054, 0.861115,
		-0.183124, 0.905245, 0.383402,
		-0.941336, -0.049010, -0.333892,
		32.575653, 31.984518, 50.003273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775230, 32.213909, 50.821407>,  <33.234589, 32.018826, 50.236996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775230, 32.213909, 50.821407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551418, 32.008610, 50.561096>,  <32.417133, 31.885429, 50.404911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551418, 32.008610, 50.561096>,  <32.775230, 32.213909, 50.821407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551418, 32.008610, 50.561096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461295, -0.459486, 0.758999,
		-0.688577, 0.724878, 0.020335,
		-0.559526, -0.513248, -0.650774,
		32.383560, 31.854635, 50.365864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183956, 31.973719, 51.245678>,  <32.775230, 32.213909, 50.821407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183956, 31.973719, 51.245678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.132416, 31.756241, 50.913944>,  <32.101494, 31.625753, 50.714905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.132416, 31.756241, 50.913944>,  <32.183956, 31.973719, 51.245678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132416, 31.756241, 50.913944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489852, -0.692253, 0.529934,
		-0.862232, 0.474531, -0.177136,
		-0.128847, -0.543697, -0.829332,
		32.093761, 31.593132, 50.665146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450058, 31.783436, 51.220261>,  <32.183956, 31.973719, 51.245678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450058, 31.783436, 51.220261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.668127, 31.527431, 51.003677>,  <31.798967, 31.373829, 50.873726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.668127, 31.527431, 51.003677>,  <31.450058, 31.783436, 51.220261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668127, 31.527431, 51.003677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359182, -0.761918, 0.538952,
		-0.757465, -0.099358, -0.645272,
		0.545193, -0.640007, -0.541439,
		31.831678, 31.335428, 50.841240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990635, 31.273863, 51.142673>,  <31.450058, 31.783436, 51.220261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990635, 31.273863, 51.142673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343243, 31.119062, 51.034489>,  <31.554808, 31.026182, 50.969578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343243, 31.119062, 51.034489>,  <30.990635, 31.273863, 51.142673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343243, 31.119062, 51.034489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245246, -0.864819, 0.438112,
		-0.403454, -0.319874, -0.857266,
		0.881521, -0.386999, -0.270466,
		31.607698, 31.002962, 50.953350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720423, 30.585690, 51.156891>,  <30.990635, 31.273863, 51.142673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720423, 30.585690, 51.156891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711470, 30.200439, 51.264137>,  <30.706099, 29.969290, 51.328487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711470, 30.200439, 51.264137>,  <30.720423, 30.585690, 51.156891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711470, 30.200439, 51.264137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542222, 0.237010, 0.806115,
		-0.839937, -0.127337, -0.527533,
		-0.022382, -0.963126, 0.268119,
		30.704756, 29.911501, 51.344574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054552, 30.079100, 51.216415>,  <30.720423, 30.585690, 51.156891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054552, 30.079100, 51.216415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.326391, 29.978159, 51.491940>,  <30.489494, 29.917595, 51.657253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.326391, 29.978159, 51.491940>,  <30.054552, 30.079100, 51.216415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326391, 29.978159, 51.491940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588008, 0.374042, 0.717175,
		-0.438625, -0.892419, 0.105813,
		0.679599, -0.252352, 0.688814,
		30.530272, 29.902454, 51.698586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366528, 29.781366, 50.937004>,  <30.054552, 30.079100, 51.216415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366528, 29.781366, 50.937004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.020643, 29.840004, 50.744843>,  <28.813112, 29.875187, 50.629547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.020643, 29.840004, 50.744843>,  <29.366528, 29.781366, 50.937004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020643, 29.840004, 50.744843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460943, -0.148314, -0.874949,
		-0.199517, -0.978014, 0.060675,
		-0.864711, 0.146599, -0.480400,
		28.761230, 29.883984, 50.600723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410049, 29.305967, 50.472469>,  <29.366528, 29.781366, 50.937004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410049, 29.305967, 50.472469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125656, 29.544996, 50.324196>,  <28.955021, 29.688414, 50.235233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125656, 29.544996, 50.324196>,  <29.410049, 29.305967, 50.472469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125656, 29.544996, 50.324196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407935, -0.078883, -0.909597,
		-0.572793, -0.797924, -0.187688,
		-0.710984, 0.597575, -0.370684,
		28.912361, 29.724268, 50.212990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146769, 29.032045, 49.836216>,  <29.410049, 29.305967, 50.472469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146769, 29.032045, 49.836216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.104456, 29.427927, 49.797642>,  <29.079069, 29.665455, 49.774498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.104456, 29.427927, 49.797642>,  <29.146769, 29.032045, 49.836216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104456, 29.427927, 49.797642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440458, -0.040314, -0.896868,
		-0.891519, -0.137349, -0.431658,
		-0.105782, 0.989702, -0.096438,
		29.072721, 29.724838, 49.768711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195057, 29.063641, 49.089077>,  <29.146769, 29.032045, 49.836216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195057, 29.063641, 49.089077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208141, 29.449368, 49.194164>,  <29.215992, 29.680803, 49.257217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208141, 29.449368, 49.194164>,  <29.195057, 29.063641, 49.089077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208141, 29.449368, 49.194164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472556, 0.216702, -0.854243,
		-0.880693, 0.152092, -0.448606,
		0.032710, 0.964318, 0.262720,
		29.217955, 29.738663, 49.272980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938948, 29.440813, 48.555912>,  <29.195057, 29.063641, 49.089077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938948, 29.440813, 48.555912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.157543, 29.695063, 48.774025>,  <29.288700, 29.847612, 48.904892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.157543, 29.695063, 48.774025>,  <28.938948, 29.440813, 48.555912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157543, 29.695063, 48.774025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382436, 0.389842, -0.837715,
		-0.745046, 0.666336, -0.030042,
		0.546488, 0.635626, 0.545281,
		29.321489, 29.885750, 48.937611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692911, 30.100414, 48.279682>,  <28.938948, 29.440813, 48.555912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692911, 30.100414, 48.279682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.064932, 30.121376, 48.425152>,  <29.288145, 30.133953, 48.512432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.064932, 30.121376, 48.425152>,  <28.692911, 30.100414, 48.279682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064932, 30.121376, 48.425152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300574, 0.460755, -0.835081,
		-0.211325, 0.885979, 0.412775,
		0.930052, 0.052404, 0.363672,
		29.343948, 30.137096, 48.534252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925436, 30.788332, 48.126076>,  <28.692911, 30.100414, 48.279682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925436, 30.788332, 48.126076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.263767, 30.602737, 48.231373>,  <29.466766, 30.491381, 48.294552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.263767, 30.602737, 48.231373>,  <28.925436, 30.788332, 48.126076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263767, 30.602737, 48.231373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497495, 0.507962, -0.703188,
		0.192552, 0.725736, 0.660478,
		0.845827, -0.463985, 0.263241,
		29.517515, 30.463543, 48.310345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408491, 31.269644, 48.071354>,  <28.925436, 30.788332, 48.126076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408491, 31.269644, 48.071354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.614405, 30.928146, 48.040073>,  <29.737953, 30.723248, 48.021305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.614405, 30.928146, 48.040073>,  <29.408491, 31.269644, 48.071354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614405, 30.928146, 48.040073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597148, 0.422517, -0.681831,
		0.615151, 0.304301, 0.727318,
		0.514786, -0.853745, -0.078199,
		29.768841, 30.672024, 48.016613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140739, 31.495562, 48.120140>,  <29.408491, 31.269644, 48.071354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140739, 31.495562, 48.120140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.150488, 31.128988, 47.960361>,  <30.156338, 30.909044, 47.864494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.150488, 31.128988, 47.960361>,  <30.140739, 31.495562, 48.120140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150488, 31.128988, 47.960361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676546, 0.309288, -0.668301,
		0.735997, -0.253957, 0.627546,
		0.024373, -0.916431, -0.399449,
		30.157799, 30.854059, 47.840527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844002, 31.403008, 48.066845>,  <30.140739, 31.495562, 48.120140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844002, 31.403008, 48.066845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.651512, 31.143869, 47.830635>,  <30.536018, 30.988386, 47.688908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.651512, 31.143869, 47.830635>,  <30.844002, 31.403008, 48.066845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651512, 31.143869, 47.830635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691572, 0.133377, -0.709887,
		0.538660, -0.750004, 0.383848,
		-0.481222, -0.647846, -0.590527,
		30.507145, 30.949516, 47.653477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393759, 31.065887, 47.784264>,  <30.844002, 31.403008, 48.066845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393759, 31.065887, 47.784264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079933, 31.007769, 47.543148>,  <30.891638, 30.972897, 47.398479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079933, 31.007769, 47.543148>,  <31.393759, 31.065887, 47.784264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079933, 31.007769, 47.543148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561898, 0.244438, -0.790266,
		0.262172, -0.958716, -0.110131,
		-0.784561, -0.145304, -0.602786,
		30.844564, 30.964178, 47.362312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711269, 30.931751, 47.224270>,  <31.393759, 31.065887, 47.784264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711269, 30.931751, 47.224270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.345892, 31.023310, 47.089672>,  <31.126665, 31.078245, 47.008915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.345892, 31.023310, 47.089672>,  <31.711269, 30.931751, 47.224270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345892, 31.023310, 47.089672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386457, 0.228710, -0.893500,
		-0.127560, -0.946202, -0.297373,
		-0.913444, 0.228896, -0.336492,
		31.071859, 31.091978, 46.988724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639328, 30.666847, 46.496483>,  <31.711269, 30.931751, 47.224270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639328, 30.666847, 46.496483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378490, 30.965298, 46.550251>,  <31.221989, 31.144369, 46.582512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378490, 30.965298, 46.550251>,  <31.639328, 30.666847, 46.496483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378490, 30.965298, 46.550251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283076, 0.404099, -0.869811,
		-0.703308, -0.529148, -0.474721,
		-0.652093, 0.746127, 0.134417,
		31.182863, 31.189137, 46.590576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192190, 30.605492, 45.932808>,  <31.639328, 30.666847, 46.496483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192190, 30.605492, 45.932808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.204798, 30.970184, 46.096638>,  <31.212362, 31.188999, 46.194935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.204798, 30.970184, 46.096638>,  <31.192190, 30.605492, 45.932808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204798, 30.970184, 46.096638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151620, 0.400676, -0.903587,
		-0.987936, 0.090581, -0.125607,
		0.031520, 0.911731, 0.409577,
		31.214254, 31.243704, 46.219509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907219, 31.059008, 45.468151>,  <31.192190, 30.605492, 45.932808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907219, 31.059008, 45.468151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.075432, 31.336864, 45.701603>,  <31.176359, 31.503578, 45.841675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.075432, 31.336864, 45.701603>,  <30.907219, 31.059008, 45.468151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075432, 31.336864, 45.701603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079924, 0.612411, -0.786489,
		-0.903751, 0.377388, 0.202018,
		0.420530, 0.694644, 0.583630,
		31.201591, 31.545258, 45.876694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606749, 31.584148, 45.269192>,  <30.907219, 31.059008, 45.468151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606749, 31.584148, 45.269192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.886150, 31.753332, 45.500084>,  <31.053791, 31.854843, 45.638618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.886150, 31.753332, 45.500084>,  <30.606749, 31.584148, 45.269192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886150, 31.753332, 45.500084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126481, 0.720963, -0.681334,
		-0.704340, 0.548923, 0.450099,
		0.698504, 0.422961, 0.577231,
		31.095701, 31.880220, 45.673252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440187, 32.214245, 45.352364>,  <30.606749, 31.584148, 45.269192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440187, 32.214245, 45.352364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.837580, 32.211952, 45.397903>,  <31.076015, 32.210579, 45.425228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.837580, 32.211952, 45.397903>,  <30.440187, 32.214245, 45.352364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837580, 32.211952, 45.397903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081221, 0.736378, -0.671677,
		-0.079991, 0.676546, 0.732043,
		0.993481, -0.005729, 0.113853,
		31.135624, 32.210232, 45.432060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568754, 32.926044, 45.382744>,  <30.440187, 32.214245, 45.352364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568754, 32.926044, 45.382744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.918175, 32.757084, 45.286007>,  <31.127827, 32.655708, 45.227966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.918175, 32.757084, 45.286007>,  <30.568754, 32.926044, 45.382744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918175, 32.757084, 45.286007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110764, 0.656348, -0.746283,
		0.473961, 0.625130, 0.620140,
		0.873552, -0.422398, -0.241841,
		31.180241, 32.630363, 45.213455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860624, 33.470528, 45.125725>,  <30.568754, 32.926044, 45.382744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860624, 33.470528, 45.125725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097662, 33.176971, 44.992916>,  <31.239883, 33.000839, 44.913231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097662, 33.176971, 44.992916>,  <30.860624, 33.470528, 45.125725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097662, 33.176971, 44.992916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318709, 0.592181, -0.740099,
		0.739769, 0.332759, 0.584820,
		0.592593, -0.733889, -0.332023,
		31.275440, 32.956806, 44.893311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480906, 33.805729, 44.871426>,  <30.860624, 33.470528, 45.125725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480906, 33.805729, 44.871426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456001, 33.445019, 44.700352>,  <31.441059, 33.228592, 44.597706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456001, 33.445019, 44.700352>,  <31.480906, 33.805729, 44.871426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456001, 33.445019, 44.700352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136742, 0.416772, -0.898667,
		0.988648, -0.114434, 0.097363,
		-0.062260, -0.901779, -0.427688,
		31.437323, 33.174484, 44.572044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.233429, 29.104479, 35.708351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511452, 29.174965, 35.987160>,  <41.678265, 29.217257, 36.154446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511452, 29.174965, 35.987160>,  <41.233429, 29.104479, 35.708351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511452, 29.174965, 35.987160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250764, 0.849196, -0.464741,
		-0.673804, 0.497811, 0.546052,
		0.695058, 0.176214, 0.697024,
		41.719971, 29.227829, 36.196266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157005, 29.794834, 35.790962>,  <41.233429, 29.104479, 35.708351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157005, 29.794834, 35.790962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516602, 29.737478, 35.956493>,  <41.732361, 29.703064, 36.055813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516602, 29.737478, 35.956493>,  <41.157005, 29.794834, 35.790962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516602, 29.737478, 35.956493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286242, 0.907517, -0.307375,
		-0.331479, 0.394782, 0.856895,
		0.898993, -0.143391, 0.413825,
		41.786301, 29.694462, 36.080643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341457, 30.368116, 36.085258>,  <41.157005, 29.794834, 35.790962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341457, 30.368116, 36.085258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.692791, 30.186342, 36.025913>,  <41.903591, 30.077278, 35.990307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.692791, 30.186342, 36.025913>,  <41.341457, 30.368116, 36.085258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692791, 30.186342, 36.025913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386787, 0.857965, -0.338071,
		0.280923, 0.239555, 0.929352,
		0.878338, -0.454433, -0.148365,
		41.956291, 30.050013, 35.981403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817520, 30.834951, 36.335873>,  <41.341457, 30.368116, 36.085258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817520, 30.834951, 36.335873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068012, 30.610695, 36.119164>,  <42.218307, 30.476141, 35.989140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068012, 30.610695, 36.119164>,  <41.817520, 30.834951, 36.335873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068012, 30.610695, 36.119164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609410, 0.785415, -0.108361,
		0.486268, -0.262303, 0.833511,
		0.626229, -0.560643, -0.541772,
		42.255882, 30.442503, 35.956631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505760, 30.800604, 36.697796>,  <41.817520, 30.834951, 36.335873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505760, 30.800604, 36.697796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536049, 30.754887, 36.301575>,  <42.554222, 30.727457, 36.063843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536049, 30.754887, 36.301575>,  <42.505760, 30.800604, 36.697796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536049, 30.754887, 36.301575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710410, 0.703276, -0.026837,
		0.699702, -0.701670, 0.134451,
		0.075725, -0.114293, -0.990557,
		42.558765, 30.720598, 36.004406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178509, 30.967253, 36.545410>,  <42.505760, 30.800604, 36.697796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178509, 30.967253, 36.545410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.986980, 31.014732, 36.197472>,  <42.872063, 31.043221, 35.988708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.986980, 31.014732, 36.197472>,  <43.178509, 30.967253, 36.545410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986980, 31.014732, 36.197472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520084, 0.836591, -0.172129,
		0.707278, -0.534814, -0.462313,
		-0.478824, 0.118699, -0.869850,
		42.843334, 31.050343, 35.936516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536167, 31.463306, 36.283195>,  <43.178509, 30.967253, 36.545410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536167, 31.463306, 36.283195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.245850, 31.447670, 36.008472>,  <43.071659, 31.438288, 35.843639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.245850, 31.447670, 36.008472>,  <43.536167, 31.463306, 36.283195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245850, 31.447670, 36.008472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197655, 0.944436, -0.262629,
		0.658910, -0.326364, -0.677735,
		-0.725790, -0.039091, -0.686805,
		43.028114, 31.435944, 35.802429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895485, 31.603796, 35.590446>,  <43.536167, 31.463306, 36.283195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895485, 31.603796, 35.590446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510658, 31.678818, 35.511208>,  <43.279762, 31.723831, 35.463665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510658, 31.678818, 35.511208>,  <43.895485, 31.603796, 35.590446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510658, 31.678818, 35.511208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253132, 0.884488, -0.391925,
		0.101710, -0.427205, -0.898416,
		-0.962070, 0.187555, -0.198100,
		43.222038, 31.735085, 35.451778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975243, 32.022625, 35.130295>,  <43.895485, 31.603796, 35.590446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975243, 32.022625, 35.130295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.599628, 32.086361, 35.252167>,  <43.374260, 32.124603, 35.325291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.599628, 32.086361, 35.252167>,  <43.975243, 32.022625, 35.130295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599628, 32.086361, 35.252167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121256, 0.982669, -0.140212,
		-0.321741, -0.094719, -0.942078,
		-0.939031, 0.159344, 0.304680,
		43.317921, 32.134163, 35.343571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695694, 32.428291, 34.514172>,  <43.975243, 32.022625, 35.130295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695694, 32.428291, 34.514172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477417, 32.506142, 34.840199>,  <43.346451, 32.552853, 35.035816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477417, 32.506142, 34.840199>,  <43.695694, 32.428291, 34.514172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477417, 32.506142, 34.840199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161177, 0.978872, -0.125827,
		-0.822338, 0.062708, -0.565534,
		-0.545694, 0.194623, 0.815070,
		43.313709, 32.564529, 35.084721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349728, 32.990101, 34.255417>,  <43.695694, 32.428291, 34.514172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349728, 32.990101, 34.255417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.299065, 32.996819, 34.652138>,  <43.268665, 33.000851, 34.890171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.299065, 32.996819, 34.652138>,  <43.349728, 32.990101, 34.255417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299065, 32.996819, 34.652138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021105, 0.999676, -0.014231,
		-0.991722, 0.019130, -0.126971,
		-0.126658, 0.016793, 0.991804,
		43.261066, 33.001858, 34.949680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776409, 33.444157, 34.397896>,  <43.349728, 32.990101, 34.255417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776409, 33.444157, 34.397896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991615, 33.424774, 34.734512>,  <43.120739, 33.413143, 34.936481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991615, 33.424774, 34.734512>,  <42.776409, 33.444157, 34.397896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991615, 33.424774, 34.734512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088354, 0.996089, 0.000867,
		-0.838291, 0.073887, 0.540193,
		0.538016, -0.048455, 0.841541,
		43.153019, 33.410236, 34.986973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493092, 33.914230, 34.886681>,  <42.776409, 33.444157, 34.397896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493092, 33.914230, 34.886681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.869423, 33.849339, 35.005695>,  <43.095222, 33.810402, 35.077103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.869423, 33.849339, 35.005695>,  <42.493092, 33.914230, 34.886681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869423, 33.849339, 35.005695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098609, 0.971034, 0.217646,
		-0.324224, -0.175428, 0.929572,
		0.940827, -0.162230, 0.297533,
		43.151672, 33.800671, 35.094955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489521, 34.447773, 35.361374>,  <42.493092, 33.914230, 34.886681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489521, 34.447773, 35.361374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.868813, 34.333229, 35.306435>,  <43.096386, 34.264503, 35.273472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.868813, 34.333229, 35.306435>,  <42.489521, 34.447773, 35.361374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868813, 34.333229, 35.306435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312328, 0.919224, 0.239746,
		0.057597, -0.270231, 0.961071,
		0.948226, -0.286361, -0.137346,
		43.153282, 34.247322, 35.265232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778610, 34.556934, 35.981373>,  <42.489521, 34.447773, 35.361374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778610, 34.556934, 35.981373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.055737, 34.542645, 35.693283>,  <43.222012, 34.534069, 35.520428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.055737, 34.542645, 35.693283>,  <42.778610, 34.556934, 35.981373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055737, 34.542645, 35.693283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224256, 0.959922, 0.168103,
		0.685357, -0.277980, 0.673062,
		0.692816, -0.035727, -0.720228,
		43.263580, 34.531925, 35.477215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355003, 34.971962, 36.201508>,  <42.778610, 34.556934, 35.981373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355003, 34.971962, 36.201508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.434151, 34.949604, 35.810055>,  <43.481640, 34.936188, 35.575184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.434151, 34.949604, 35.810055>,  <43.355003, 34.971962, 36.201508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434151, 34.949604, 35.810055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303937, 0.952666, 0.007039,
		0.931917, -0.298836, 0.205495,
		0.197872, -0.055897, -0.978633,
		43.493511, 34.932835, 35.516464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989002, 35.336372, 36.099735>,  <43.355003, 34.971962, 36.201508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989002, 35.336372, 36.099735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837891, 35.319485, 35.729763>,  <43.747223, 35.309353, 35.507778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837891, 35.319485, 35.729763>,  <43.989002, 35.336372, 36.099735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837891, 35.319485, 35.729763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420429, 0.882212, -0.211994,
		0.824936, -0.468955, -0.315534,
		-0.377783, -0.042222, -0.924931,
		43.724556, 35.306820, 35.452282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536732, 35.395866, 35.640030>,  <43.989002, 35.336372, 36.099735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536732, 35.395866, 35.640030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200611, 35.504333, 35.452259>,  <43.998940, 35.569412, 35.339596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200611, 35.504333, 35.452259>,  <44.536732, 35.395866, 35.640030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200611, 35.504333, 35.452259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475915, 0.783651, -0.399245,
		0.259604, -0.558893, -0.787556,
		-0.840304, 0.271164, -0.469424,
		43.948521, 35.585682, 35.311432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708015, 35.514259, 34.911652>,  <44.536732, 35.395866, 35.640030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708015, 35.514259, 34.911652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.373547, 35.715393, 34.999268>,  <44.172867, 35.836075, 35.051838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.373547, 35.715393, 34.999268>,  <44.708015, 35.514259, 34.911652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373547, 35.715393, 34.999268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392000, 0.827218, -0.402549,
		-0.383610, -0.250736, -0.888806,
		-0.836169, 0.502834, 0.219041,
		44.122696, 35.866241, 35.064980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271095, 35.522251, 35.465595>,  <44.708015, 35.514259, 34.911652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271095, 35.522251, 35.465595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.657936, 35.485310, 35.370777>,  <45.890041, 35.463142, 35.313889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.657936, 35.485310, 35.370777>,  <45.271095, 35.522251, 35.465595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657936, 35.485310, 35.370777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047316, -0.850217, 0.524302,
		-0.249961, -0.518268, -0.817874,
		0.967099, -0.092357, -0.237043,
		45.948067, 35.457603, 35.299664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563881, 34.947010, 35.071728>,  <45.271095, 35.522251, 35.465595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563881, 34.947010, 35.071728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.849319, 35.056141, 35.329826>,  <46.020584, 35.121620, 35.484688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.849319, 35.056141, 35.329826>,  <45.563881, 34.947010, 35.071728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849319, 35.056141, 35.329826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065875, -0.890836, 0.449523,
		0.697455, -0.363283, -0.617724,
		0.713595, 0.272830, 0.645249,
		46.063396, 35.137989, 35.523399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113487, 34.384056, 35.144039>,  <45.563881, 34.947010, 35.071728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113487, 34.384056, 35.144039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.092712, 34.608246, 35.474655>,  <46.080246, 34.742760, 35.673027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.092712, 34.608246, 35.474655>,  <46.113487, 34.384056, 35.144039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092712, 34.608246, 35.474655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018334, -0.828057, 0.560344,
		0.998482, 0.013949, 0.053284,
		-0.051938, 0.560470, 0.826545,
		46.077129, 34.776386, 35.722618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527840, 34.041367, 35.544403>,  <46.113487, 34.384056, 35.144039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527840, 34.041367, 35.544403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.305832, 34.261097, 35.794262>,  <46.172626, 34.392937, 35.944180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.305832, 34.261097, 35.794262>,  <46.527840, 34.041367, 35.544403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.305832, 34.261097, 35.794262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201845, -0.817428, 0.539509,
		0.806974, 0.173358, 0.564570,
		-0.555024, 0.549326, 0.624652,
		46.139324, 34.425896, 35.981659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.759232, 33.835773, 36.241352>,  <46.527840, 34.041367, 35.544403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.759232, 33.835773, 36.241352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.395645, 33.999977, 36.270340>,  <46.177494, 34.098499, 36.287735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.395645, 33.999977, 36.270340>,  <46.759232, 33.835773, 36.241352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.395645, 33.999977, 36.270340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287638, -0.743481, 0.603738,
		0.301725, 0.527934, 0.793881,
		-0.908970, 0.410513, 0.072473,
		46.122955, 34.123131, 36.292080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565197, 33.799351, 36.975197>,  <46.759232, 33.835773, 36.241352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565197, 33.799351, 36.975197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.214157, 33.825169, 36.785183>,  <46.003532, 33.840660, 36.671177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.214157, 33.825169, 36.785183>,  <46.565197, 33.799351, 36.975197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214157, 33.825169, 36.785183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363798, -0.734982, 0.572235,
		-0.312204, 0.675008, 0.668500,
		-0.877599, 0.064545, -0.475031,
		45.950878, 33.844532, 36.642673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070538, 33.707233, 37.542530>,  <46.565197, 33.799351, 36.975197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070538, 33.707233, 37.542530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.847961, 33.656532, 37.214066>,  <45.714417, 33.626114, 37.016987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.847961, 33.656532, 37.214066>,  <46.070538, 33.707233, 37.542530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847961, 33.656532, 37.214066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563501, -0.668715, 0.485064,
		-0.610603, 0.732636, 0.300679,
		-0.556444, -0.126749, -0.821160,
		45.681026, 33.618507, 36.967716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397263, 33.560707, 37.816971>,  <46.070538, 33.707233, 37.542530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397263, 33.560707, 37.816971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.377964, 33.432323, 37.438625>,  <45.366386, 33.355293, 37.211617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.377964, 33.432323, 37.438625>,  <45.397263, 33.560707, 37.816971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377964, 33.432323, 37.438625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480590, -0.822688, 0.303674,
		-0.875617, 0.469223, -0.114561,
		-0.048243, -0.320959, -0.945863,
		45.363491, 33.336037, 37.154865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679359, 33.352039, 37.725838>,  <45.397263, 33.560707, 37.816971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679359, 33.352039, 37.725838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875290, 33.174370, 37.425762>,  <44.992847, 33.067768, 37.245716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875290, 33.174370, 37.425762>,  <44.679359, 33.352039, 37.725838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875290, 33.174370, 37.425762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473938, -0.857896, 0.198489,
		-0.731748, 0.258319, -0.630727,
		0.489824, -0.444169, -0.750190,
		45.022236, 33.041119, 37.200706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158329, 33.024014, 37.378223>,  <44.679359, 33.352039, 37.725838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158329, 33.024014, 37.378223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505390, 32.846790, 37.288002>,  <44.713627, 32.740456, 37.233868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505390, 32.846790, 37.288002>,  <44.158329, 33.024014, 37.378223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505390, 32.846790, 37.288002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416137, -0.895442, 0.158160,
		-0.272047, -0.043365, -0.961306,
		0.867653, -0.443061, -0.225556,
		44.765686, 32.713871, 37.220337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901821, 32.505539, 36.969166>,  <44.158329, 33.024014, 37.378223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901821, 32.505539, 36.969166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.259296, 32.383270, 37.100548>,  <44.473782, 32.309910, 37.179379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.259296, 32.383270, 37.100548>,  <43.901821, 32.505539, 36.969166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259296, 32.383270, 37.100548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384745, -0.898700, 0.210499,
		0.230842, -0.314493, -0.920764,
		0.893691, -0.305668, 0.328457,
		44.527405, 32.291569, 37.199085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069775, 31.868328, 36.599121>,  <43.901821, 32.505539, 36.969166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069775, 31.868328, 36.599121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295662, 31.874653, 36.929176>,  <44.431194, 31.878447, 37.127209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295662, 31.874653, 36.929176>,  <44.069775, 31.868328, 36.599121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295662, 31.874653, 36.929176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331367, -0.911339, 0.244248,
		0.755839, -0.411353, -0.509407,
		0.564715, 0.015811, 0.825135,
		44.465076, 31.879396, 37.176716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340176, 31.242659, 36.635948>,  <44.069775, 31.868328, 36.599121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340176, 31.242659, 36.635948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389198, 31.350008, 37.018143>,  <44.418613, 31.414417, 37.247459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389198, 31.350008, 37.018143>,  <44.340176, 31.242659, 36.635948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389198, 31.350008, 37.018143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198629, -0.936633, 0.288556,
		0.972382, -0.225152, -0.061484,
		0.122557, 0.268374, 0.955487,
		44.425964, 31.430521, 37.304790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767403, 30.774439, 36.975597>,  <44.340176, 31.242659, 36.635948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767403, 30.774439, 36.975597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.554668, 30.961233, 37.258179>,  <44.427029, 31.073309, 37.427727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.554668, 30.961233, 37.258179>,  <44.767403, 30.774439, 36.975597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.554668, 30.961233, 37.258179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224968, -0.882150, 0.413765,
		0.816421, 0.061124, 0.574213,
		-0.531833, 0.466986, 0.706454,
		44.395119, 31.101330, 37.470116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863991, 30.275568, 37.550354>,  <44.767403, 30.774439, 36.975597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863991, 30.275568, 37.550354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553631, 30.506332, 37.652454>,  <44.367416, 30.644791, 37.713715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553631, 30.506332, 37.652454>,  <44.863991, 30.275568, 37.550354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553631, 30.506332, 37.652454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347672, -0.728660, 0.590067,
		0.526407, 0.369090, 0.765943,
		-0.775900, 0.576912, 0.255249,
		44.320862, 30.679405, 37.729031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864162, 30.120197, 38.210709>,  <44.863991, 30.275568, 37.550354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864162, 30.120197, 38.210709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505112, 30.267057, 38.113167>,  <44.289680, 30.355173, 38.054642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505112, 30.267057, 38.113167>,  <44.864162, 30.120197, 38.210709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505112, 30.267057, 38.113167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440723, -0.754013, 0.487059,
		-0.005046, 0.544670, 0.838635,
		-0.897629, 0.367149, -0.243853,
		44.235825, 30.377201, 38.040012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502335, 30.129520, 38.859795>,  <44.864162, 30.120197, 38.210709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502335, 30.129520, 38.859795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.218903, 30.142757, 38.577854>,  <44.048843, 30.150700, 38.408691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.218903, 30.142757, 38.577854>,  <44.502335, 30.129520, 38.859795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218903, 30.142757, 38.577854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474474, -0.761704, 0.441227,
		-0.522287, 0.647080, 0.555431,
		-0.708583, 0.033090, -0.704851,
		44.006329, 30.152685, 38.366398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866447, 30.235605, 39.175175>,  <44.502335, 30.129520, 38.859795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866447, 30.235605, 39.175175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.763859, 30.074305, 38.823811>,  <43.702305, 29.977524, 38.612991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.763859, 30.074305, 38.823811>,  <43.866447, 30.235605, 39.175175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763859, 30.074305, 38.823811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591551, -0.653237, 0.472598,
		-0.764388, 0.640835, -0.071005,
		-0.256474, -0.403251, -0.878413,
		43.686916, 29.953329, 38.560287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138367, 30.030832, 39.260353>,  <43.866447, 30.235605, 39.175175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138367, 30.030832, 39.260353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234695, 29.811697, 38.939884>,  <43.292492, 29.680216, 38.747604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234695, 29.811697, 38.939884>,  <43.138367, 30.030832, 39.260353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234695, 29.811697, 38.939884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518610, -0.770377, 0.370895,
		-0.820395, 0.326175, -0.469640,
		0.240823, -0.547840, -0.801172,
		43.306942, 29.647345, 38.699532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516079, 29.830559, 39.017838>,  <43.138367, 30.030832, 39.260353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516079, 29.830559, 39.017838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.749016, 29.569036, 38.824585>,  <42.888779, 29.412123, 38.708633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.749016, 29.569036, 38.824585>,  <42.516079, 29.830559, 39.017838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749016, 29.569036, 38.824585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701689, -0.704343, 0.107387,
		-0.410499, 0.276470, -0.868939,
		0.582342, -0.653808, -0.483128,
		42.923717, 29.372894, 38.679646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989414, 29.482460, 38.530968>,  <42.516079, 29.830559, 39.017838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989414, 29.482460, 38.530968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.324741, 29.264849, 38.545162>,  <42.525936, 29.134283, 38.553680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.324741, 29.264849, 38.545162>,  <41.989414, 29.482460, 38.530968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324741, 29.264849, 38.545162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538908, -0.817064, 0.204902,
		-0.082476, -0.190898, -0.978139,
		0.838317, -0.544027, 0.035488,
		42.576237, 29.101641, 38.555809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981449, 29.023048, 37.968216>,  <41.989414, 29.482460, 38.530968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981449, 29.023048, 37.968216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.207520, 28.857908, 38.253910>,  <42.343163, 28.758823, 38.425327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.207520, 28.857908, 38.253910>,  <41.981449, 29.023048, 37.968216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207520, 28.857908, 38.253910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611270, -0.790979, 0.026486,
		0.554011, -0.451560, -0.699404,
		0.565173, -0.412851, 0.714236,
		42.377071, 28.734053, 38.468182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106098, 28.349621, 37.736496>,  <41.981449, 29.023048, 37.968216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106098, 28.349621, 37.736496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.130821, 28.350471, 38.135731>,  <42.145657, 28.350983, 38.375271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.130821, 28.350471, 38.135731>,  <42.106098, 28.349621, 37.736496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130821, 28.350471, 38.135731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792169, -0.608221, 0.050352,
		0.607164, -0.793765, -0.035902,
		0.061804, 0.002131, 0.998086,
		42.149364, 28.351110, 38.435158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.913937, 35.840561, 42.279560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688225, 35.587265, 42.067677>,  <35.552799, 35.435287, 41.940544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688225, 35.587265, 42.067677>,  <35.913937, 35.840561, 42.279560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688225, 35.587265, 42.067677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634768, 0.077476, -0.768809,
		0.527883, -0.770065, 0.358245,
		-0.564278, -0.633243, -0.529711,
		35.518940, 35.397293, 41.908764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364658, 35.353355, 42.013428>,  <35.913937, 35.840561, 42.279560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364658, 35.353355, 42.013428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026192, 35.390137, 41.803455>,  <35.823112, 35.412205, 41.677471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026192, 35.390137, 41.803455>,  <36.364658, 35.353355, 42.013428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026192, 35.390137, 41.803455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528597, 0.270085, -0.804761,
		0.067774, -0.958436, -0.277143,
		-0.846163, 0.091955, -0.524930,
		35.772343, 35.417725, 41.645977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412964, 35.025906, 41.288200>,  <36.364658, 35.353355, 42.013428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412964, 35.025906, 41.288200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123222, 35.299923, 41.257130>,  <35.949379, 35.464333, 41.238487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123222, 35.299923, 41.257130>,  <36.412964, 35.025906, 41.288200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123222, 35.299923, 41.257130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402958, 0.329250, -0.853943,
		-0.559412, -0.649855, -0.514535,
		-0.724350, 0.685042, -0.077678,
		35.905918, 35.505436, 41.233826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232826, 34.874504, 40.648788>,  <36.412964, 35.025906, 41.288200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232826, 34.874504, 40.648788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082867, 35.232601, 40.745117>,  <35.992889, 35.447460, 40.802914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082867, 35.232601, 40.745117>,  <36.232826, 34.874504, 40.648788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082867, 35.232601, 40.745117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407704, 0.392513, -0.824445,
		-0.832603, -0.210899, -0.512146,
		-0.374899, 0.895240, 0.240823,
		35.970398, 35.501175, 40.817364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747097, 35.099716, 40.134632>,  <36.232826, 34.874504, 40.648788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747097, 35.099716, 40.134632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868599, 35.430153, 40.324497>,  <35.941502, 35.628414, 40.438416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868599, 35.430153, 40.324497>,  <35.747097, 35.099716, 40.134632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868599, 35.430153, 40.324497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423235, 0.329347, -0.844039,
		-0.853583, 0.457277, -0.249590,
		0.303758, 0.826092, 0.474661,
		35.959724, 35.677982, 40.466896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537655, 35.620888, 39.744514>,  <35.747097, 35.099716, 40.134632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537655, 35.620888, 39.744514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829750, 35.788898, 39.960041>,  <36.005009, 35.889706, 40.089359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829750, 35.788898, 39.960041>,  <35.537655, 35.620888, 39.744514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829750, 35.788898, 39.960041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186662, 0.636009, -0.748765,
		-0.657198, 0.647355, 0.386035,
		0.730238, 0.420029, 0.538821,
		36.048820, 35.914906, 40.121689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345764, 36.319042, 39.694309>,  <35.537655, 35.620888, 39.744514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345764, 36.319042, 39.694309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731903, 36.269600, 39.786247>,  <35.963585, 36.239933, 39.841408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731903, 36.269600, 39.786247>,  <35.345764, 36.319042, 39.694309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731903, 36.269600, 39.786247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259340, 0.552745, -0.791969,
		-0.029151, 0.824132, 0.565647,
		0.965346, -0.123608, 0.229843,
		36.021507, 36.232517, 39.855202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650005, 37.034431, 39.672081>,  <35.345764, 36.319042, 39.694309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650005, 37.034431, 39.672081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928581, 36.752579, 39.617737>,  <36.095726, 36.583466, 39.585133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928581, 36.752579, 39.617737>,  <35.650005, 37.034431, 39.672081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928581, 36.752579, 39.617737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333101, 0.485116, -0.808521,
		0.635621, 0.517832, 0.572570,
		0.696441, -0.704636, -0.135859,
		36.137512, 36.541187, 39.576981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119835, 37.391838, 39.252575>,  <35.650005, 37.034431, 39.672081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119835, 37.391838, 39.252575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254379, 37.015831, 39.229847>,  <36.335106, 36.790226, 39.216209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254379, 37.015831, 39.229847>,  <36.119835, 37.391838, 39.252575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254379, 37.015831, 39.229847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428146, 0.206386, -0.879827,
		0.838780, 0.271612, 0.471885,
		0.336362, -0.940017, -0.056823,
		36.355289, 36.733826, 39.212799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797897, 37.422024, 39.008362>,  <36.119835, 37.391838, 39.252575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797897, 37.422024, 39.008362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737457, 37.031086, 38.949074>,  <36.701195, 36.796524, 38.913502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737457, 37.031086, 38.949074>,  <36.797897, 37.422024, 39.008362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737457, 37.031086, 38.949074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646780, 0.015647, -0.762516,
		0.747560, -0.211077, 0.629762,
		-0.151096, -0.977344, -0.148218,
		36.692127, 36.737885, 38.904610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462158, 37.199566, 38.832310>,  <36.797897, 37.422024, 39.008362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462158, 37.199566, 38.832310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197426, 36.938732, 38.684387>,  <37.038586, 36.782230, 38.595634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197426, 36.938732, 38.684387>,  <37.462158, 37.199566, 38.832310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197426, 36.938732, 38.684387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477648, 0.013395, -0.878449,
		0.577780, -0.758024, 0.302603,
		-0.661832, -0.652088, -0.369808,
		36.998875, 36.743107, 38.573444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763260, 36.412247, 38.641834>,  <37.462158, 37.199566, 38.832310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763260, 36.412247, 38.641834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426392, 36.490437, 38.440823>,  <37.224270, 36.537350, 38.320217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426392, 36.490437, 38.440823>,  <37.763260, 36.412247, 38.641834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426392, 36.490437, 38.440823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454105, -0.245414, -0.856481,
		-0.290748, -0.949506, 0.117915,
		-0.842172, 0.195474, -0.502529,
		37.173740, 36.549080, 38.290062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739960, 36.053425, 38.035881>,  <37.763260, 36.412247, 38.641834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739960, 36.053425, 38.035881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504223, 36.362198, 37.940552>,  <37.362782, 36.547462, 37.883354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504223, 36.362198, 37.940552>,  <37.739960, 36.053425, 38.035881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504223, 36.362198, 37.940552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568605, 0.186778, -0.801126,
		-0.573902, -0.607647, -0.549001,
		-0.589343, 0.771932, -0.238319,
		37.327419, 36.593777, 37.869057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733734, 35.975693, 37.342037>,  <37.739960, 36.053425, 38.035881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733734, 35.975693, 37.342037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675705, 36.336781, 37.504047>,  <37.640888, 36.553432, 37.601254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675705, 36.336781, 37.504047>,  <37.733734, 35.975693, 37.342037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675705, 36.336781, 37.504047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650369, 0.395501, -0.648536,
		-0.745635, 0.169328, -0.644481,
		-0.145077, 0.902722, 0.405025,
		37.632183, 36.607597, 37.625553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107586, 35.387665, 37.212311>,  <37.733734, 35.975693, 37.342037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107586, 35.387665, 37.212311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241196, 35.757751, 37.140305>,  <38.321362, 35.979801, 37.097099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241196, 35.757751, 37.140305>,  <38.107586, 35.387665, 37.212311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241196, 35.757751, 37.140305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493702, 0.009050, -0.869584,
		-0.802922, 0.379339, 0.459803,
		0.334028, 0.925214, -0.180014,
		38.341404, 36.035316, 37.086300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778305, 35.589127, 36.947323>,  <38.107586, 35.387665, 37.212311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778305, 35.589127, 36.947323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035553, 35.288704, 37.007057>,  <39.189903, 35.108448, 37.042900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035553, 35.288704, 37.007057>,  <38.778305, 35.589127, 36.947323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035553, 35.288704, 37.007057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715105, -0.519294, 0.467930,
		-0.273892, -0.407730, -0.871056,
		0.643124, -0.751059, 0.149340,
		39.228489, 35.063385, 37.051861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424934, 34.990738, 36.714722>,  <38.778305, 35.589127, 36.947323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424934, 34.990738, 36.714722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698345, 34.895763, 36.990814>,  <38.862392, 34.838779, 37.156471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698345, 34.895763, 36.990814>,  <38.424934, 34.990738, 36.714722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698345, 34.895763, 36.990814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686769, -0.529529, 0.497943,
		0.247267, -0.814385, -0.525010,
		0.683525, -0.237436, 0.690230,
		38.903404, 34.824532, 37.197884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268772, 34.371281, 36.879654>,  <38.424934, 34.990738, 36.714722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268772, 34.371281, 36.879654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481716, 34.466499, 37.204597>,  <38.609482, 34.523632, 37.399563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481716, 34.466499, 37.204597>,  <38.268772, 34.371281, 36.879654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481716, 34.466499, 37.204597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697230, -0.420926, 0.580251,
		0.480070, -0.875303, -0.058110,
		0.532356, 0.238045, 0.812362,
		38.641422, 34.537914, 37.448307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338936, 33.671379, 37.224480>,  <38.268772, 34.371281, 36.879654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338936, 33.671379, 37.224480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411774, 33.961735, 37.489784>,  <38.455475, 34.135948, 37.648968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411774, 33.961735, 37.489784>,  <38.338936, 33.671379, 37.224480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411774, 33.961735, 37.489784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564425, -0.475179, 0.675003,
		0.805151, -0.497275, 0.323187,
		0.182091, 0.725894, 0.663266,
		38.466400, 34.179504, 37.688763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423283, 33.306183, 37.874718>,  <38.338936, 33.671379, 37.224480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423283, 33.306183, 37.874718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374859, 33.685493, 37.992104>,  <38.345802, 33.913078, 38.062534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374859, 33.685493, 37.992104>,  <38.423283, 33.306183, 37.874718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374859, 33.685493, 37.992104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511464, -0.312966, 0.800285,
		0.850734, -0.053214, 0.522895,
		-0.121062, 0.948272, 0.293468,
		38.338539, 33.969975, 38.080143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750134, 33.463017, 38.566204>,  <38.423283, 33.306183, 37.874718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750134, 33.463017, 38.566204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456696, 33.727806, 38.504715>,  <38.280632, 33.886681, 38.467819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456696, 33.727806, 38.504715>,  <38.750134, 33.463017, 38.566204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456696, 33.727806, 38.504715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442270, -0.293289, 0.847572,
		0.515987, 0.689760, 0.507926,
		-0.733591, 0.661976, -0.153727,
		38.236618, 33.926399, 38.458595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722649, 33.845131, 39.216328>,  <38.750134, 33.463017, 38.566204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722649, 33.845131, 39.216328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377464, 33.925854, 39.031036>,  <38.170353, 33.974285, 38.919861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377464, 33.925854, 39.031036>,  <38.722649, 33.845131, 39.216328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377464, 33.925854, 39.031036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505125, -0.366710, 0.781263,
		-0.012207, 0.908185, 0.418392,
		-0.862960, 0.201803, -0.463224,
		38.118576, 33.986393, 38.892071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372066, 34.049911, 39.727867>,  <38.722649, 33.845131, 39.216328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372066, 34.049911, 39.727867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118530, 33.962318, 39.431141>,  <37.966408, 33.909763, 39.253105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118530, 33.962318, 39.431141>,  <38.372066, 34.049911, 39.727867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118530, 33.962318, 39.431141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632459, -0.405351, 0.660065,
		-0.445240, 0.887545, 0.118430,
		-0.633844, -0.218985, -0.741814,
		37.928379, 33.896622, 39.208595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726982, 34.274296, 39.901619>,  <38.372066, 34.049911, 39.727867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726982, 34.274296, 39.901619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655640, 33.987122, 39.632469>,  <37.612835, 33.814819, 39.470978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655640, 33.987122, 39.632469>,  <37.726982, 34.274296, 39.901619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655640, 33.987122, 39.632469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699901, -0.388098, 0.599599,
		-0.691613, 0.577887, -0.433263,
		-0.178352, -0.717932, -0.672878,
		37.602135, 33.771744, 39.430607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971298, 34.315098, 39.636116>,  <37.726982, 34.274296, 39.901619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971298, 34.315098, 39.636116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114960, 33.945030, 39.587002>,  <37.201157, 33.722992, 39.557533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114960, 33.945030, 39.587002>,  <36.971298, 34.315098, 39.636116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114960, 33.945030, 39.587002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790515, -0.371503, 0.486900,
		-0.496078, -0.077811, -0.864785,
		0.359156, -0.925165, -0.122784,
		37.222706, 33.667480, 39.550167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344517, 33.891289, 39.655773>,  <36.971298, 34.315098, 39.636116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344517, 33.891289, 39.655773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613228, 33.599289, 39.706074>,  <36.774452, 33.424088, 39.736256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613228, 33.599289, 39.706074>,  <36.344517, 33.891289, 39.655773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613228, 33.599289, 39.706074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643417, -0.490907, 0.587388,
		-0.367061, -0.475506, -0.799475,
		0.671774, -0.730003, 0.125756,
		36.814758, 33.380287, 39.743801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951351, 33.198578, 39.585190>,  <36.344517, 33.891289, 39.655773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951351, 33.198578, 39.585190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291771, 33.159248, 39.791512>,  <36.496021, 33.135651, 39.915302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291771, 33.159248, 39.791512>,  <35.951351, 33.198578, 39.585190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291771, 33.159248, 39.791512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487749, -0.511834, 0.707197,
		0.194470, -0.853439, -0.483552,
		0.851048, -0.098324, 0.515800,
		36.547085, 33.129749, 39.946251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877644, 32.524529, 39.832016>,  <35.951351, 33.198578, 39.585190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877644, 32.524529, 39.832016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167149, 32.686737, 40.055340>,  <36.340851, 32.784061, 40.189335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167149, 32.686737, 40.055340>,  <35.877644, 32.524529, 39.832016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167149, 32.686737, 40.055340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491849, -0.264321, 0.829590,
		0.483991, -0.875035, 0.008150,
		0.723765, 0.405523, 0.558314,
		36.384277, 32.808395, 40.222836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848324, 31.854010, 39.582588>,  <35.877644, 32.524529, 39.832016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848324, 31.854010, 39.582588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576756, 31.580612, 39.475327>,  <35.413815, 31.416573, 39.410969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576756, 31.580612, 39.475327>,  <35.848324, 31.854010, 39.582588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576756, 31.580612, 39.475327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154255, 0.224288, -0.962237,
		0.717828, -0.694643, -0.046840,
		-0.678917, -0.683496, -0.268152,
		35.373081, 31.375563, 39.394882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121105, 31.533209, 38.953262>,  <35.848324, 31.854010, 39.582588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121105, 31.533209, 38.953262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725529, 31.475204, 38.940876>,  <35.488182, 31.440403, 38.933445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725529, 31.475204, 38.940876>,  <36.121105, 31.533209, 38.953262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725529, 31.475204, 38.940876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012454, 0.126840, -0.991845,
		0.147760, -0.981266, -0.123632,
		-0.988945, -0.145016, -0.030963,
		35.428844, 31.431702, 38.931587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069180, 31.047401, 38.356621>,  <36.121105, 31.533209, 38.953262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069180, 31.047401, 38.356621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721508, 31.230391, 38.431721>,  <35.512905, 31.340183, 38.476780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721508, 31.230391, 38.431721>,  <36.069180, 31.047401, 38.356621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721508, 31.230391, 38.431721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096392, 0.215656, -0.971700,
		-0.485015, -0.862677, -0.143346,
		-0.869177, 0.457472, 0.187752,
		35.460754, 31.367632, 38.488045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514339, 30.811588, 37.840721>,  <36.069180, 31.047401, 38.356621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514339, 30.811588, 37.840721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395058, 31.166586, 37.981255>,  <35.323490, 31.379583, 38.065575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395058, 31.166586, 37.981255>,  <35.514339, 30.811588, 37.840721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395058, 31.166586, 37.981255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188087, 0.306226, -0.933193,
		-0.935788, -0.344360, 0.075609,
		-0.298200, 0.887492, 0.351333,
		35.305599, 31.432833, 38.086655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942883, 30.878588, 37.490482>,  <35.514339, 30.811588, 37.840721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942883, 30.878588, 37.490482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064034, 31.246599, 37.589928>,  <35.136726, 31.467405, 37.649597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064034, 31.246599, 37.589928>,  <34.942883, 30.878588, 37.490482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064034, 31.246599, 37.589928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179097, 0.311170, -0.933326,
		-0.936049, 0.238160, 0.259022,
		0.302881, 0.920029, 0.248616,
		35.154900, 31.522608, 37.664513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484173, 31.317577, 37.159519>,  <34.942883, 30.878588, 37.490482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484173, 31.317577, 37.159519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790577, 31.566280, 37.224812>,  <34.974419, 31.715502, 37.263988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790577, 31.566280, 37.224812>,  <34.484173, 31.317577, 37.159519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790577, 31.566280, 37.224812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139001, 0.408132, -0.902279,
		-0.627621, 0.668464, 0.399058,
		0.766009, 0.621759, 0.163235,
		35.020378, 31.752808, 37.273781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322529, 32.053677, 36.900555>,  <34.484173, 31.317577, 37.159519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322529, 32.053677, 36.900555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722107, 32.039272, 36.911934>,  <34.961853, 32.030628, 36.918762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722107, 32.039272, 36.911934>,  <34.322529, 32.053677, 36.900555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722107, 32.039272, 36.911934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038572, 0.323026, -0.945604,
		0.024868, 0.945705, 0.324074,
		0.998946, -0.036015, 0.028445,
		35.021790, 32.028469, 36.920467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478882, 32.601856, 36.599529>,  <34.322529, 32.053677, 36.900555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478882, 32.601856, 36.599529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823841, 32.399368, 36.598961>,  <35.030819, 32.277874, 36.598618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823841, 32.399368, 36.598961>,  <34.478882, 32.601856, 36.599529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823841, 32.399368, 36.598961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216273, 0.370982, -0.903105,
		0.457699, 0.778532, 0.429418,
		0.862403, -0.506221, -0.001423,
		35.082561, 32.247501, 36.598534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968864, 33.050888, 36.213593>,  <34.478882, 32.601856, 36.599529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968864, 33.050888, 36.213593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130085, 32.684830, 36.216591>,  <35.226818, 32.465195, 36.218391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130085, 32.684830, 36.216591>,  <34.968864, 33.050888, 36.213593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130085, 32.684830, 36.216591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422832, 0.178948, -0.888364,
		0.811642, 0.361227, 0.459078,
		0.403052, -0.915146, 0.007497,
		35.250999, 32.410286, 36.218842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532215, 33.133446, 35.953846>,  <34.968864, 33.050888, 36.213593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532215, 33.133446, 35.953846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498413, 32.737793, 35.905731>,  <35.478130, 32.500401, 35.876862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498413, 32.737793, 35.905731>,  <35.532215, 33.133446, 35.953846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498413, 32.737793, 35.905731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282368, 0.092003, -0.954884,
		0.955577, -0.114658, 0.271525,
		-0.084504, -0.989136, -0.120292,
		35.473061, 32.441051, 35.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065453, 32.908997, 35.608360>,  <35.532215, 33.133446, 35.953846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065453, 32.908997, 35.608360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832420, 32.595451, 35.522419>,  <35.692600, 32.407326, 35.470856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832420, 32.595451, 35.522419>,  <36.065453, 32.908997, 35.608360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832420, 32.595451, 35.522419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324572, 0.017976, -0.945690,
		0.745150, -0.620678, 0.243946,
		-0.582584, -0.783859, -0.214850,
		35.657646, 32.360294, 35.457966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452667, 32.393707, 35.240368>,  <36.065453, 32.908997, 35.608360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452667, 32.393707, 35.240368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067200, 32.343346, 35.146145>,  <35.835918, 32.313129, 35.089611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067200, 32.343346, 35.146145>,  <36.452667, 32.393707, 35.240368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067200, 32.343346, 35.146145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251637, -0.132323, -0.958733,
		0.089539, -0.983178, 0.159198,
		-0.963671, -0.125904, -0.235555,
		35.778099, 32.305576, 35.075478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.695614, 28.912004, 42.401173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.311153, 29.017906, 42.369934>,  <35.080479, 29.081448, 42.351192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.311153, 29.017906, 42.369934>,  <35.695614, 28.912004, 42.401173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311153, 29.017906, 42.369934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197502, 0.461961, -0.864630,
		-0.192840, -0.846461, -0.496303,
		-0.961148, 0.264756, -0.078093,
		35.022808, 29.097332, 42.346504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490417, 28.666538, 41.764259>,  <35.695614, 28.912004, 42.401173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490417, 28.666538, 41.764259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205730, 28.940102, 41.828423>,  <35.034920, 29.104240, 41.866920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205730, 28.940102, 41.828423>,  <35.490417, 28.666538, 41.764259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205730, 28.940102, 41.828423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123173, 0.346305, -0.930001,
		-0.691585, -0.642138, -0.330709,
		-0.711715, 0.683909, 0.160406,
		34.992214, 29.145275, 41.876545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986538, 28.638029, 41.199993>,  <35.490417, 28.666538, 41.764259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986538, 28.638029, 41.199993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.936798, 29.007223, 41.345669>,  <34.906956, 29.228741, 41.433075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.936798, 29.007223, 41.345669>,  <34.986538, 28.638029, 41.199993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936798, 29.007223, 41.345669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093410, 0.376296, -0.921779,
		-0.987832, -0.080605, -0.133008,
		-0.124350, 0.922987, 0.364188,
		34.899494, 29.284119, 41.454926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427189, 28.960823, 40.716637>,  <34.986538, 28.638029, 41.199993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427189, 28.960823, 40.716637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.557529, 29.286654, 40.908592>,  <34.635735, 29.482151, 41.023766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.557529, 29.286654, 40.908592>,  <34.427189, 28.960823, 40.716637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557529, 29.286654, 40.908592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005055, 0.506080, -0.862472,
		-0.945408, 0.283462, 0.160789,
		0.325851, 0.814575, 0.479885,
		34.655285, 29.531027, 41.052559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128822, 29.484585, 40.322090>,  <34.427189, 28.960823, 40.716637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128822, 29.484585, 40.322090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.390602, 29.673500, 40.558273>,  <34.547668, 29.786848, 40.699986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.390602, 29.673500, 40.558273>,  <34.128822, 29.484585, 40.322090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390602, 29.673500, 40.558273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084558, 0.730307, -0.677865,
		-0.751364, 0.493556, 0.438012,
		0.654448, 0.472286, 0.590461,
		34.586937, 29.815186, 40.735413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955704, 30.245468, 40.352482>,  <34.128822, 29.484585, 40.322090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955704, 30.245468, 40.352482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.337139, 30.213758, 40.468685>,  <34.565998, 30.194733, 40.538406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.337139, 30.213758, 40.468685>,  <33.955704, 30.245468, 40.352482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337139, 30.213758, 40.468685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273589, 0.631126, -0.725829,
		-0.125806, 0.771618, 0.623521,
		0.953584, -0.079275, 0.290506,
		34.623215, 30.189976, 40.555836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239792, 30.980608, 40.486801>,  <33.955704, 30.245468, 40.352482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239792, 30.980608, 40.486801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.538044, 30.737659, 40.377155>,  <34.716995, 30.591890, 40.311367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.538044, 30.737659, 40.377155>,  <34.239792, 30.980608, 40.486801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538044, 30.737659, 40.377155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264283, 0.647164, -0.715076,
		0.611714, 0.460737, 0.643061,
		0.745627, -0.607373, -0.274114,
		34.761734, 30.555449, 40.294922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931297, 31.354950, 40.517284>,  <34.239792, 30.980608, 40.486801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931297, 31.354950, 40.517284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.916679, 31.056879, 40.250938>,  <34.907909, 30.878036, 40.091129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.916679, 31.056879, 40.250938>,  <34.931297, 31.354950, 40.517284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916679, 31.056879, 40.250938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267998, 0.634596, -0.724890,
		0.962726, -0.204943, 0.176514,
		-0.036547, -0.745176, -0.665866,
		34.905716, 30.833326, 40.051178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367828, 31.721712, 40.196903>,  <34.931297, 31.354950, 40.517284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367828, 31.721712, 40.196903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.263775, 31.404015, 39.977264>,  <35.201344, 31.213396, 39.845482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.263775, 31.404015, 39.977264>,  <35.367828, 31.721712, 40.196903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263775, 31.404015, 39.977264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274852, 0.484244, -0.830641,
		0.925629, -0.366996, 0.092333,
		-0.260130, -0.794243, -0.549100,
		35.185738, 31.165741, 39.812534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041862, 31.904930, 40.312111>,  <35.367828, 31.721712, 40.196903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041862, 31.904930, 40.312111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181156, 32.252861, 40.451904>,  <36.264732, 32.461620, 40.535782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181156, 32.252861, 40.451904>,  <36.041862, 31.904930, 40.312111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181156, 32.252861, 40.451904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290519, -0.254320, 0.922453,
		0.891254, -0.422759, 0.164138,
		0.348232, 0.869825, 0.349483,
		36.285625, 32.513809, 40.556747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620548, 31.748035, 40.792950>,  <36.041862, 31.904930, 40.312111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620548, 31.748035, 40.792950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.466190, 32.103062, 40.893600>,  <36.373577, 32.316078, 40.953991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.466190, 32.103062, 40.893600>,  <36.620548, 31.748035, 40.792950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466190, 32.103062, 40.893600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212839, -0.351050, 0.911846,
		0.897655, 0.298320, 0.324376,
		-0.385894, 0.887564, 0.251628,
		36.350422, 32.369331, 40.969090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763142, 31.853216, 41.547722>,  <36.620548, 31.748035, 40.792950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763142, 31.853216, 41.547722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.480762, 32.132755, 41.501682>,  <36.311337, 32.300480, 41.474056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.480762, 32.132755, 41.501682>,  <36.763142, 31.853216, 41.547722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480762, 32.132755, 41.501682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300857, -0.148766, 0.941995,
		0.641189, 0.699628, 0.315275,
		-0.705948, 0.698849, -0.115101,
		36.268978, 32.342411, 41.467152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752773, 32.170898, 42.182529>,  <36.763142, 31.853216, 41.547722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752773, 32.170898, 42.182529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407078, 32.258888, 42.001553>,  <36.199661, 32.311684, 41.892967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407078, 32.258888, 42.001553>,  <36.752773, 32.170898, 42.182529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407078, 32.258888, 42.001553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480282, -0.093061, 0.872163,
		0.149750, 0.971056, 0.186077,
		-0.864236, 0.219976, -0.452445,
		36.147808, 32.324883, 41.865818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368431, 32.734325, 42.603367>,  <36.752773, 32.170898, 42.182529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368431, 32.734325, 42.603367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.084908, 32.558075, 42.383026>,  <35.914795, 32.452324, 42.250820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.084908, 32.558075, 42.383026>,  <36.368431, 32.734325, 42.603367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084908, 32.558075, 42.383026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407763, -0.381281, 0.829671,
		-0.575608, 0.812693, 0.090581,
		-0.708805, -0.440630, -0.550855,
		35.872265, 32.425884, 42.217770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709709, 32.771484, 43.025276>,  <36.368431, 32.734325, 42.603367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709709, 32.771484, 43.025276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.577236, 32.498581, 42.764557>,  <35.497753, 32.334839, 42.608124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.577236, 32.498581, 42.764557>,  <35.709709, 32.771484, 43.025276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577236, 32.498581, 42.764557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670877, -0.315495, 0.671109,
		-0.663508, 0.659538, -0.353223,
		-0.331182, -0.682255, -0.651802,
		35.477882, 32.293903, 42.569016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943478, 32.689369, 43.063152>,  <35.709709, 32.771484, 43.025276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943478, 32.689369, 43.063152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073158, 32.343552, 42.909546>,  <35.150967, 32.136063, 42.817383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073158, 32.343552, 42.909546>,  <34.943478, 32.689369, 43.063152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073158, 32.343552, 42.909546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610781, -0.501284, 0.612912,
		-0.722387, 0.035843, -0.690560,
		0.324198, -0.864540, -0.384013,
		35.170418, 32.084190, 42.794342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325138, 32.259106, 42.851658>,  <34.943478, 32.689369, 43.063152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325138, 32.259106, 42.851658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.644676, 32.028000, 42.918640>,  <34.836399, 31.889336, 42.958828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.644676, 32.028000, 42.918640>,  <34.325138, 32.259106, 42.851658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644676, 32.028000, 42.918640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529485, -0.543251, 0.651555,
		-0.285478, -0.609152, -0.739889,
		0.798842, -0.577765, 0.167451,
		34.884327, 31.854671, 42.968876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032444, 31.652176, 42.955025>,  <34.325138, 32.259106, 42.851658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032444, 31.652176, 42.955025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409683, 31.605492, 43.079575>,  <34.636024, 31.577482, 43.154305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409683, 31.605492, 43.079575>,  <34.032444, 31.652176, 42.955025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409683, 31.605492, 43.079575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316534, -0.601986, 0.733089,
		0.101885, -0.789932, -0.604671,
		0.943094, -0.116708, 0.311373,
		34.692612, 31.570478, 43.172985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026775, 30.936790, 43.187935>,  <34.032444, 31.652176, 42.955025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026775, 30.936790, 43.187935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.332878, 31.136698, 43.350227>,  <34.516541, 31.256641, 43.447605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.332878, 31.136698, 43.350227>,  <34.026775, 30.936790, 43.187935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332878, 31.136698, 43.350227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192726, -0.423504, 0.885156,
		0.614202, -0.755564, -0.227770,
		0.765253, 0.499768, 0.405734,
		34.562454, 31.286629, 43.471947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389931, 30.447279, 43.509285>,  <34.026775, 30.936790, 43.187935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389931, 30.447279, 43.509285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.510895, 30.791899, 43.672394>,  <34.583473, 30.998671, 43.770260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.510895, 30.791899, 43.672394>,  <34.389931, 30.447279, 43.509285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510895, 30.791899, 43.672394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072953, -0.447469, 0.891319,
		0.950381, -0.239800, -0.198174,
		0.302414, 0.861549, 0.407772,
		34.601620, 31.050364, 43.794727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948002, 30.244007, 43.980659>,  <34.389931, 30.447279, 43.509285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948002, 30.244007, 43.980659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.825977, 30.603027, 44.107994>,  <34.752762, 30.818439, 44.184395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.825977, 30.603027, 44.107994>,  <34.948002, 30.244007, 43.980659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825977, 30.603027, 44.107994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105363, -0.364027, 0.925410,
		0.946487, 0.248764, 0.205619,
		-0.305059, 0.897553, 0.318336,
		34.734459, 30.872293, 44.203495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332973, 30.462444, 44.527943>,  <34.948002, 30.244007, 43.980659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332973, 30.462444, 44.527943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.983273, 30.650049, 44.578072>,  <34.773453, 30.762611, 44.608150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.983273, 30.650049, 44.578072>,  <35.332973, 30.462444, 44.527943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983273, 30.650049, 44.578072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104861, -0.434499, 0.894547,
		0.474008, 0.768920, 0.429044,
		-0.874254, 0.469012, 0.125326,
		34.720997, 30.790752, 44.615669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401569, 30.664299, 45.170383>,  <35.332973, 30.462444, 44.527943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401569, 30.664299, 45.170383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011463, 30.744041, 45.132210>,  <34.777397, 30.791887, 45.109306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011463, 30.744041, 45.132210>,  <35.401569, 30.664299, 45.170383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011463, 30.744041, 45.132210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152252, -0.292944, 0.943930,
		0.160220, 0.935116, 0.316051,
		-0.975269, 0.199356, -0.095438,
		34.718884, 30.803848, 45.103577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.564199, 31.073792, 44.020851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.884266, 30.836294, 43.986904>,  <29.076305, 30.693796, 43.966534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.884266, 30.836294, 43.986904>,  <28.564199, 31.073792, 44.020851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884266, 30.836294, 43.986904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369405, 0.599343, -0.710161,
		0.472521, 0.536895, 0.698905,
		0.800165, -0.593745, -0.084871,
		29.124315, 30.658171, 43.961441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095575, 31.464510, 44.058662>,  <28.564199, 31.073792, 44.020851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095575, 31.464510, 44.058662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.250240, 31.153730, 43.859932>,  <29.343040, 30.967262, 43.740692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.250240, 31.153730, 43.859932>,  <29.095575, 31.464510, 44.058662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250240, 31.153730, 43.859932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243789, 0.605681, -0.757441,
		0.889414, 0.171754, 0.423607,
		0.386664, -0.776950, -0.496829,
		29.366240, 30.920645, 43.710884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758101, 31.688007, 43.838150>,  <29.095575, 31.464510, 44.058662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758101, 31.688007, 43.838150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.643637, 31.387890, 43.599766>,  <29.574959, 31.207819, 43.456734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.643637, 31.387890, 43.599766>,  <29.758101, 31.688007, 43.838150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643637, 31.387890, 43.599766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366594, 0.488923, -0.791557,
		0.885281, -0.444988, 0.135144,
		-0.286158, -0.750294, -0.595964,
		29.557789, 31.162802, 43.420975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351137, 31.645147, 43.398106>,  <29.758101, 31.688007, 43.838150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351137, 31.645147, 43.398106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.048162, 31.447157, 43.227795>,  <29.866379, 31.328362, 43.125607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.048162, 31.447157, 43.227795>,  <30.351137, 31.645147, 43.398106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048162, 31.447157, 43.227795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294870, 0.322501, -0.899469,
		0.582532, -0.806840, -0.098319,
		-0.757436, -0.494978, -0.425780,
		29.820932, 31.298664, 43.100060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735897, 31.260258, 42.881145>,  <30.351137, 31.645147, 43.398106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735897, 31.260258, 42.881145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.346098, 31.302713, 42.802059>,  <30.112219, 31.328186, 42.754608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.346098, 31.302713, 42.802059>,  <30.735897, 31.260258, 42.881145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346098, 31.302713, 42.802059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198887, 0.000491, -0.980022,
		-0.103924, -0.994351, -0.021589,
		-0.974497, 0.106142, -0.197712,
		30.053749, 31.334555, 42.742744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700294, 31.013632, 42.215321>,  <30.735897, 31.260258, 42.881145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700294, 31.013632, 42.215321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343410, 31.191990, 42.244003>,  <30.129280, 31.299004, 42.261215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343410, 31.191990, 42.244003>,  <30.700294, 31.013632, 42.215321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343410, 31.191990, 42.244003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072757, 0.298625, -0.951593,
		-0.445724, -0.843802, -0.298878,
		-0.892209, 0.445893, 0.071712,
		30.075748, 31.325758, 42.265518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303396, 30.766777, 41.623764>,  <30.700294, 31.013632, 42.215321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303396, 30.766777, 41.623764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.148003, 31.106266, 41.767288>,  <30.054766, 31.309959, 41.853405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.148003, 31.106266, 41.767288>,  <30.303396, 30.766777, 41.623764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148003, 31.106266, 41.767288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100233, 0.426012, -0.899148,
		-0.915988, -0.313339, -0.250569,
		-0.388484, 0.848724, 0.358815,
		30.031458, 31.360884, 41.874931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990719, 31.026033, 41.009319>,  <30.303396, 30.766777, 41.623764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990719, 31.026033, 41.009319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.040487, 31.337559, 41.255238>,  <30.070349, 31.524473, 41.402790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.040487, 31.337559, 41.255238>,  <29.990719, 31.026033, 41.009319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040487, 31.337559, 41.255238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232885, 0.579380, -0.781078,
		-0.964512, 0.240359, -0.109287,
		0.124420, 0.778811, 0.614795,
		30.077814, 31.571201, 41.439674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733122, 31.512882, 40.715515>,  <29.990719, 31.026033, 41.009319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733122, 31.512882, 40.715515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.959585, 31.712801, 40.977711>,  <30.095463, 31.832752, 41.135029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.959585, 31.712801, 40.977711>,  <29.733122, 31.512882, 40.715515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959585, 31.712801, 40.977711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236622, 0.663199, -0.710054,
		-0.789603, 0.557107, 0.257214,
		0.566160, 0.499799, 0.655488,
		30.129433, 31.862741, 41.174358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608301, 32.142776, 40.586994>,  <29.733122, 31.512882, 40.715515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608301, 32.142776, 40.586994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.957102, 32.163761, 40.781666>,  <30.166382, 32.176353, 40.898468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.957102, 32.163761, 40.781666>,  <29.608301, 32.142776, 40.586994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957102, 32.163761, 40.781666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290001, 0.745605, -0.599977,
		-0.394350, 0.664320, 0.634954,
		0.872002, 0.052464, 0.486683,
		30.218702, 32.179501, 40.927670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753752, 32.878960, 40.642410>,  <29.608301, 32.142776, 40.586994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753752, 32.878960, 40.642410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.096685, 32.679066, 40.691803>,  <30.302444, 32.559132, 40.721439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.096685, 32.679066, 40.691803>,  <29.753752, 32.878960, 40.642410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096685, 32.679066, 40.691803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452218, 0.616565, -0.644474,
		0.245928, 0.608370, 0.754589,
		0.857332, -0.499733, 0.123485,
		30.353886, 32.529144, 40.728848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162336, 33.399475, 40.618397>,  <29.753752, 32.878960, 40.642410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162336, 33.399475, 40.618397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.399611, 33.078972, 40.587112>,  <30.541975, 32.886669, 40.568344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.399611, 33.078972, 40.587112>,  <30.162336, 33.399475, 40.618397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399611, 33.078972, 40.587112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618277, 0.515620, -0.593186,
		0.515620, 0.303517, 0.801258,
		0.593186, -0.801258, -0.078206,
		30.577566, 32.838596, 40.563652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745674, 33.652077, 40.730503>,  <30.162336, 33.399475, 40.618397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745674, 33.652077, 40.730503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.843843, 33.322273, 40.526558>,  <30.902744, 33.124393, 40.404190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.843843, 33.322273, 40.526558>,  <30.745674, 33.652077, 40.730503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843843, 33.322273, 40.526558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437203, 0.563561, -0.700894,
		0.865229, -0.050898, 0.498787,
		0.245422, -0.824505, -0.509862,
		30.917471, 33.074921, 40.373600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429138, 33.805431, 40.393745>,  <30.745674, 33.652077, 40.730503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429138, 33.805431, 40.393745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.268957, 33.496025, 40.197254>,  <31.172848, 33.310379, 40.079361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.268957, 33.496025, 40.197254>,  <31.429138, 33.805431, 40.393745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268957, 33.496025, 40.197254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208302, 0.445209, -0.870861,
		0.892327, -0.451063, -0.017160,
		-0.400453, -0.773519, -0.491229,
		31.148821, 33.263969, 40.049885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194389, 33.851379, 40.507298>,  <31.429138, 33.805431, 40.393745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194389, 33.851379, 40.507298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222706, 34.213455, 40.674923>,  <32.239697, 34.430702, 40.775497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222706, 34.213455, 40.674923>,  <32.194389, 33.851379, 40.507298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222706, 34.213455, 40.674923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026314, -0.418279, 0.907937,
		0.997144, -0.075298, -0.005789,
		0.070787, 0.905192, 0.419066,
		32.243942, 34.485012, 40.800644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815117, 33.896515, 41.133656>,  <32.194389, 33.851379, 40.507298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815117, 33.896515, 41.133656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.531612, 34.175362, 41.176891>,  <32.361511, 34.342670, 41.202831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.531612, 34.175362, 41.176891>,  <32.815117, 33.896515, 41.133656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531612, 34.175362, 41.176891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205212, -0.350333, 0.913868,
		0.674942, 0.625532, 0.391360,
		-0.708760, 0.697120, 0.108088,
		32.318985, 34.384499, 41.209316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852077, 34.076424, 41.861664>,  <32.815117, 33.896515, 41.133656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852077, 34.076424, 41.861664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.486923, 34.202034, 41.757332>,  <32.267830, 34.277401, 41.694733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.486923, 34.202034, 41.757332>,  <32.852077, 34.076424, 41.861664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486923, 34.202034, 41.757332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384017, -0.443857, 0.809644,
		0.138475, 0.839274, 0.525779,
		-0.912883, 0.314023, -0.260832,
		32.213058, 34.296242, 41.679081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573742, 34.408432, 42.541473>,  <32.852077, 34.076424, 41.861664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573742, 34.408432, 42.541473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261723, 34.337383, 42.301479>,  <32.074512, 34.294754, 42.157482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261723, 34.337383, 42.301479>,  <32.573742, 34.408432, 42.541473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261723, 34.337383, 42.301479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527064, -0.330275, 0.783021,
		-0.337244, 0.927021, 0.164009,
		-0.780045, -0.177625, -0.599983,
		32.027710, 34.284096, 42.121483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002159, 34.904831, 42.763092>,  <32.573742, 34.408432, 42.541473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002159, 34.904831, 42.763092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.855968, 34.575661, 42.589092>,  <31.768255, 34.378159, 42.484692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.855968, 34.575661, 42.589092>,  <32.002159, 34.904831, 42.763092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855968, 34.575661, 42.589092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646253, -0.112013, 0.754858,
		-0.669916, 0.557002, -0.490879,
		-0.365472, -0.822923, -0.435003,
		31.746326, 34.328785, 42.458591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350182, 34.725552, 43.151516>,  <32.002159, 34.904831, 42.763092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350182, 34.725552, 43.151516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.399561, 34.378357, 42.959118>,  <31.429190, 34.170040, 42.843678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.399561, 34.378357, 42.959118>,  <31.350182, 34.725552, 43.151516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399561, 34.378357, 42.959118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454144, -0.480382, 0.750325,
		-0.882334, 0.125813, -0.453495,
		0.123450, -0.867989, -0.480994,
		31.436596, 34.117962, 42.814819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811592, 34.237438, 43.340408>,  <31.350182, 34.725552, 43.151516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811592, 34.237438, 43.340408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.077702, 33.974525, 43.198765>,  <31.237368, 33.816776, 43.113777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.077702, 33.974525, 43.198765>,  <30.811592, 34.237438, 43.340408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077702, 33.974525, 43.198765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203033, -0.615693, 0.761380,
		-0.718464, -0.434628, -0.543053,
		0.665271, -0.657282, -0.354110,
		31.277283, 33.777340, 43.092533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439653, 33.617241, 43.356487>,  <30.811592, 34.237438, 43.340408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439653, 33.617241, 43.356487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.828270, 33.522575, 43.360489>,  <31.061440, 33.465775, 43.362892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.828270, 33.522575, 43.360489>,  <30.439653, 33.617241, 43.356487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828270, 33.522575, 43.360489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170835, -0.670789, 0.721704,
		-0.164088, -0.702874, -0.692129,
		0.971540, -0.236663, 0.010008,
		31.119732, 33.451576, 43.363491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503782, 32.882534, 43.474163>,  <30.439653, 33.617241, 43.356487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503782, 32.882534, 43.474163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858829, 33.026833, 43.588699>,  <31.071857, 33.113411, 43.657421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858829, 33.026833, 43.588699>,  <30.503782, 32.882534, 43.474163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858829, 33.026833, 43.588699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061598, -0.523138, 0.850019,
		0.456442, -0.772131, -0.442125,
		0.887618, 0.360751, 0.286344,
		31.125114, 33.135059, 43.674603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870199, 32.374844, 43.709869>,  <30.503782, 32.882534, 43.474163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870199, 32.374844, 43.709869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.083996, 32.671181, 43.872581>,  <31.212273, 32.848984, 43.970211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.083996, 32.671181, 43.872581>,  <30.870199, 32.374844, 43.709869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083996, 32.671181, 43.872581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043999, -0.456259, 0.888759,
		0.844029, -0.492930, -0.211269,
		0.534489, 0.740843, 0.406784,
		31.244343, 32.893433, 43.994617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364407, 32.010101, 44.029079>,  <30.870199, 32.374844, 43.709869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364407, 32.010101, 44.029079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.400810, 32.374557, 44.189850>,  <31.422653, 32.593231, 44.286312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.400810, 32.374557, 44.189850>,  <31.364407, 32.010101, 44.029079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400810, 32.374557, 44.189850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029670, -0.400939, 0.915624,
		0.995408, -0.095257, -0.009456,
		0.091011, 0.911139, 0.401924,
		31.428114, 32.647900, 44.310429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941086, 31.989239, 44.420162>,  <31.364407, 32.010101, 44.029079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941086, 31.989239, 44.420162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.751328, 32.299774, 44.586170>,  <31.637472, 32.486095, 44.685776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.751328, 32.299774, 44.586170>,  <31.941086, 31.989239, 44.420162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751328, 32.299774, 44.586170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070116, -0.436628, 0.896906,
		0.877514, 0.454589, 0.152701,
		-0.474397, 0.776341, 0.415021,
		31.609009, 32.532677, 44.710678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333900, 32.077732, 44.924599>,  <31.941086, 31.989239, 44.420162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333900, 32.077732, 44.924599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984478, 32.252182, 45.011040>,  <31.774824, 32.356850, 45.062904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984478, 32.252182, 45.011040>,  <32.333900, 32.077732, 44.924599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984478, 32.252182, 45.011040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002649, -0.448238, 0.893910,
		0.486717, 0.780308, 0.392716,
		-0.873556, 0.436122, 0.216098,
		31.722412, 32.383018, 45.075871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443298, 32.232075, 45.589344>,  <32.333900, 32.077732, 44.924599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443298, 32.232075, 45.589344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046116, 32.219208, 45.543728>,  <31.807806, 32.211487, 45.516357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046116, 32.219208, 45.543728>,  <32.443298, 32.232075, 45.589344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046116, 32.219208, 45.543728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076107, -0.564547, 0.821885,
		-0.090818, 0.824774, 0.558122,
		-0.992955, -0.032165, -0.114042,
		31.748230, 32.209557, 45.509514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635803, 32.857635, 45.939857>,  <32.443298, 32.232075, 45.589344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635803, 32.857635, 45.939857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982582, 32.902489, 46.134109>,  <33.190647, 32.929401, 46.250660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.982582, 32.902489, 46.134109>,  <32.635803, 32.857635, 45.939857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982582, 32.902489, 46.134109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226547, 0.779227, -0.584364,
		-0.443940, 0.616628, 0.650144,
		0.866945, 0.112134, 0.485626,
		33.242664, 32.936131, 46.279797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725533, 33.586739, 46.039040>,  <32.635803, 32.857635, 45.939857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725533, 33.586739, 46.039040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.075962, 33.394096, 46.048347>,  <33.286221, 33.278511, 46.053932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.075962, 33.394096, 46.048347>,  <32.725533, 33.586739, 46.039040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075962, 33.394096, 46.048347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311663, 0.528801, -0.789453,
		0.367904, 0.698873, 0.613370,
		0.876078, -0.481608, 0.023265,
		33.338787, 33.249615, 46.055328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319366, 34.155445, 46.015129>,  <32.725533, 33.586739, 46.039040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319366, 34.155445, 46.015129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474899, 33.802326, 45.909698>,  <33.568218, 33.590454, 45.846439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474899, 33.802326, 45.909698>,  <33.319366, 34.155445, 46.015129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474899, 33.802326, 45.909698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557627, 0.453246, -0.695428,
		0.733388, 0.123430, 0.668511,
		0.388837, -0.882798, -0.263578,
		33.591549, 33.537487, 45.830624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997475, 34.278694, 45.782429>,  <33.319366, 34.155445, 46.015129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997475, 34.278694, 45.782429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.958092, 33.912086, 45.627354>,  <33.934464, 33.692123, 45.534309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.958092, 33.912086, 45.627354>,  <33.997475, 34.278694, 45.782429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958092, 33.912086, 45.627354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529825, 0.281497, -0.800028,
		0.842373, -0.284174, 0.457879,
		-0.098456, -0.916518, -0.387688,
		33.928555, 33.637131, 45.511047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568554, 34.120140, 45.456718>,  <33.997475, 34.278694, 45.782429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568554, 34.120140, 45.456718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364822, 33.833820, 45.265633>,  <34.242584, 33.662029, 45.150982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364822, 33.833820, 45.265633>,  <34.568554, 34.120140, 45.456718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364822, 33.833820, 45.265633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567762, 0.137659, -0.811601,
		0.646706, -0.684602, 0.336290,
		-0.509330, -0.715800, -0.477716,
		34.212025, 33.619080, 45.122318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125248, 33.724960, 45.141556>,  <34.568554, 34.120140, 45.456718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125248, 33.724960, 45.141556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765514, 33.692219, 44.969742>,  <34.549675, 33.672573, 44.866653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765514, 33.692219, 44.969742>,  <35.125248, 33.724960, 45.141556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765514, 33.692219, 44.969742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428486, 0.030876, -0.903021,
		0.087174, -0.996166, 0.007303,
		-0.899333, -0.081850, -0.429535,
		34.495716, 33.667664, 44.840881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214268, 33.316811, 44.554317>,  <35.125248, 33.724960, 45.141556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214268, 33.316811, 44.554317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883057, 33.534538, 44.500523>,  <34.684330, 33.665176, 44.468246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883057, 33.534538, 44.500523>,  <35.214268, 33.316811, 44.554317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883057, 33.534538, 44.500523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360666, 0.333427, -0.871060,
		-0.429296, -0.769765, -0.472405,
		-0.828025, 0.544323, -0.134489,
		34.634647, 33.697834, 44.460175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147141, 33.261803, 43.861626>,  <35.214268, 33.316811, 44.554317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147141, 33.261803, 43.861626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910881, 33.566242, 43.968849>,  <34.769127, 33.748905, 44.033184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910881, 33.566242, 43.968849>,  <35.147141, 33.261803, 43.861626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910881, 33.566242, 43.968849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214969, 0.468605, -0.856853,
		-0.777767, -0.448476, -0.440395,
		-0.590650, 0.761103, 0.268057,
		34.733685, 33.794575, 44.049267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639397, 33.331314, 43.365196>,  <35.147141, 33.261803, 43.861626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639397, 33.331314, 43.365196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.671345, 33.689835, 43.539677>,  <34.690514, 33.904945, 43.644363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.671345, 33.689835, 43.539677>,  <34.639397, 33.331314, 43.365196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671345, 33.689835, 43.539677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183310, 0.416924, -0.890265,
		-0.979805, 0.151067, -0.131000,
		0.079873, 0.896300, 0.436197,
		34.695305, 33.958725, 43.670536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263115, 33.696899, 42.870155>,  <34.639397, 33.331314, 43.365196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263115, 33.696899, 42.870155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464279, 33.985081, 43.061161>,  <34.584980, 34.157990, 43.175766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464279, 33.985081, 43.061161>,  <34.263115, 33.696899, 42.870155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464279, 33.985081, 43.061161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141479, 0.476400, -0.867772,
		-0.852678, 0.503974, 0.137660,
		0.502916, 0.720454, 0.477517,
		34.615154, 34.201218, 43.204414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986584, 34.290054, 42.661339>,  <34.263115, 33.696899, 42.870155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986584, 34.290054, 42.661339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335922, 34.417091, 42.809071>,  <34.545525, 34.493313, 42.897709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335922, 34.417091, 42.809071>,  <33.986584, 34.290054, 42.661339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335922, 34.417091, 42.809071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177247, 0.499041, -0.848258,
		-0.453714, 0.806283, 0.379541,
		0.873342, 0.317594, 0.369334,
		34.597923, 34.512371, 42.919872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970074, 35.075226, 42.658047>,  <33.986584, 34.290054, 42.661339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970074, 35.075226, 42.658047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.359566, 34.986378, 42.678123>,  <34.593262, 34.933067, 42.690170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.359566, 34.986378, 42.678123>,  <33.970074, 35.075226, 42.658047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359566, 34.986378, 42.678123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184341, 0.639423, -0.746429,
		0.133702, 0.736070, 0.663569,
		0.973726, -0.222122, 0.050196,
		34.651684, 34.919743, 42.693184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416534, 35.735806, 42.581596>,  <33.970074, 35.075226, 42.658047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416534, 35.735806, 42.581596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649986, 35.421631, 42.499176>,  <34.790058, 35.233124, 42.449722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649986, 35.421631, 42.499176>,  <34.416534, 35.735806, 42.581596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649986, 35.421631, 42.499176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384433, 0.490779, -0.781887,
		0.715250, 0.377123, 0.588384,
		0.583634, -0.785439, -0.206051,
		34.825077, 35.186001, 42.437359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077274, 36.006561, 42.480637>,  <34.416534, 35.735806, 42.581596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077274, 36.006561, 42.480637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.103863, 35.650013, 42.301289>,  <35.119816, 35.436085, 42.193680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.103863, 35.650013, 42.301289>,  <35.077274, 36.006561, 42.480637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103863, 35.650013, 42.301289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271671, 0.448556, -0.851465,
		0.960092, -0.065211, 0.271977,
		0.066473, -0.891373, -0.448371,
		35.123806, 35.382603, 42.166779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.337040, 33.836132, 25.270714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076597, 33.537098, 25.323130>,  <26.920332, 33.357677, 25.354580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076597, 33.537098, 25.323130>,  <27.337040, 33.836132, 25.270714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076597, 33.537098, 25.323130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289557, 0.404265, 0.867598,
		-0.701579, 0.526958, -0.479690,
		-0.651109, -0.747586, 0.131039,
		26.881264, 33.312820, 25.362442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687508, 34.093719, 25.379879>,  <27.337040, 33.836132, 25.270714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687508, 34.093719, 25.379879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693056, 33.739849, 25.566282>,  <26.696386, 33.527527, 25.678123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693056, 33.739849, 25.566282>,  <26.687508, 34.093719, 25.379879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693056, 33.739849, 25.566282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353955, 0.431530, 0.829758,
		-0.935160, -0.176456, -0.307148,
		0.013873, -0.884673, 0.466007,
		26.697218, 33.474449, 25.706085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078583, 34.037056, 25.829405>,  <26.687508, 34.093719, 25.379879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078583, 34.037056, 25.829405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.346237, 33.768986, 25.957851>,  <26.506830, 33.608143, 26.034920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.346237, 33.768986, 25.957851>,  <26.078583, 34.037056, 25.829405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346237, 33.768986, 25.957851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220245, 0.233851, 0.946998,
		-0.709751, -0.704397, 0.008875,
		0.669138, -0.670179, 0.321116,
		26.546978, 33.567932, 26.054186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785374, 33.732937, 26.360001>,  <26.078583, 34.037056, 25.829405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785374, 33.732937, 26.360001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.173481, 33.671593, 26.434896>,  <26.406345, 33.634789, 26.479834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.173481, 33.671593, 26.434896>,  <25.785374, 33.732937, 26.360001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173481, 33.671593, 26.434896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175457, 0.087194, 0.980618,
		-0.166713, -0.984316, 0.057694,
		0.970269, -0.153359, 0.187241,
		26.464561, 33.625584, 26.491070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794535, 33.230492, 26.862463>,  <25.785374, 33.732937, 26.360001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794535, 33.230492, 26.862463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.153885, 33.403580, 26.892611>,  <26.369495, 33.507431, 26.910698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.153885, 33.403580, 26.892611>,  <25.794535, 33.230492, 26.862463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153885, 33.403580, 26.892611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149681, 0.140290, 0.978731,
		0.412942, -0.890546, 0.190803,
		0.898373, 0.432719, 0.075366,
		26.423397, 33.533394, 26.915220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201653, 32.852268, 27.450392>,  <25.794535, 33.230492, 26.862463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201653, 32.852268, 27.450392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.370825, 33.210651, 27.396147>,  <26.472328, 33.425682, 27.363600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.370825, 33.210651, 27.396147>,  <26.201653, 32.852268, 27.450392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370825, 33.210651, 27.396147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051272, 0.125756, 0.990735,
		0.904711, -0.425963, 0.007248,
		0.422928, 0.895958, -0.135613,
		26.497704, 33.479439, 27.355463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627766, 32.835583, 27.970964>,  <26.201653, 32.852268, 27.450392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627766, 32.835583, 27.970964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.603197, 33.220200, 27.863882>,  <26.588455, 33.450970, 27.799633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.603197, 33.220200, 27.863882>,  <26.627766, 32.835583, 27.970964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603197, 33.220200, 27.863882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084274, 0.272250, 0.958529,
		0.994548, 0.036314, -0.097755,
		-0.061422, 0.961541, -0.267705,
		26.584770, 33.508663, 27.783571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140797, 33.269138, 28.343435>,  <26.627766, 32.835583, 27.970964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140797, 33.269138, 28.343435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.846647, 33.516392, 28.232342>,  <26.670158, 33.664745, 28.165686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.846647, 33.516392, 28.232342>,  <27.140797, 33.269138, 28.343435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846647, 33.516392, 28.232342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105508, 0.300405, 0.947958,
		0.669400, 0.726405, -0.155691,
		-0.735372, 0.618137, -0.277732,
		26.626036, 33.701832, 28.149021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175680, 33.769653, 28.888994>,  <27.140797, 33.269138, 28.343435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175680, 33.769653, 28.888994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829298, 33.808170, 28.692688>,  <26.621469, 33.831280, 28.574903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829298, 33.808170, 28.692688>,  <27.175680, 33.769653, 28.888994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829298, 33.808170, 28.692688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419052, 0.395918, 0.817095,
		0.272983, 0.913224, -0.302495,
		-0.865954, 0.096292, -0.490767,
		26.569511, 33.837059, 28.545458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864738, 34.434444, 29.093218>,  <27.175680, 33.769653, 28.888994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864738, 34.434444, 29.093218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.574640, 34.217056, 28.924147>,  <26.400581, 34.086624, 28.822704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.574640, 34.217056, 28.924147>,  <26.864738, 34.434444, 29.093218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574640, 34.217056, 28.924147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585085, 0.162914, 0.794440,
		-0.362898, 0.823465, -0.436131,
		-0.725245, -0.543474, -0.422676,
		26.357067, 34.054012, 28.797344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411791, 34.873142, 29.222071>,  <26.864738, 34.434444, 29.093218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411791, 34.873142, 29.222071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.213585, 34.531227, 29.160368>,  <26.094662, 34.326077, 29.123346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.213585, 34.531227, 29.160368>,  <26.411791, 34.873142, 29.222071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213585, 34.531227, 29.160368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538012, 0.162618, 0.827103,
		-0.681915, 0.492835, -0.540468,
		-0.495515, -0.854792, -0.154259,
		26.064930, 34.274788, 29.114090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669813, 35.006985, 29.396526>,  <26.411791, 34.873142, 29.222071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669813, 35.006985, 29.396526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.724361, 34.611523, 29.421701>,  <25.757092, 34.374245, 29.436808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.724361, 34.611523, 29.421701>,  <25.669813, 35.006985, 29.396526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724361, 34.611523, 29.421701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630494, -0.037613, 0.775283,
		-0.764120, -0.145410, -0.628471,
		0.136373, -0.988656, 0.062940,
		25.765274, 34.314926, 29.440584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040400, 34.805656, 29.551588>,  <25.669813, 35.006985, 29.396526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040400, 34.805656, 29.551588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.295311, 34.512138, 29.645758>,  <25.448257, 34.336029, 29.702259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.295311, 34.512138, 29.645758>,  <25.040400, 34.805656, 29.551588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295311, 34.512138, 29.645758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503711, -0.165430, 0.847885,
		-0.583227, -0.658923, -0.475044,
		0.637277, -0.733794, 0.235424,
		25.486494, 34.292000, 29.716385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.729053, 34.213158, 29.865934>,  <25.040400, 34.805656, 29.551588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.729053, 34.213158, 29.865934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.101215, 34.137638, 29.991606>,  <25.324512, 34.092327, 30.067009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.101215, 34.137638, 29.991606>,  <24.729053, 34.213158, 29.865934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101215, 34.137638, 29.991606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359658, -0.304933, 0.881851,
		-0.070686, -0.933473, -0.351612,
		0.930403, -0.188795, 0.314176,
		25.380337, 34.081001, 30.085859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770157, 33.540531, 30.116636>,  <24.729053, 34.213158, 29.865934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770157, 33.540531, 30.116636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.091568, 33.708630, 30.285271>,  <25.284414, 33.809490, 30.386452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.091568, 33.708630, 30.285271>,  <24.770157, 33.540531, 30.116636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.091568, 33.708630, 30.285271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271676, -0.371269, 0.887891,
		0.529655, -0.827981, -0.184155,
		0.803528, 0.420245, 0.421587,
		25.332626, 33.834702, 30.411747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006247, 33.094357, 30.572227>,  <24.770157, 33.540531, 30.116636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006247, 33.094357, 30.572227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.147457, 33.453999, 30.675756>,  <25.232183, 33.669785, 30.737875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.147457, 33.453999, 30.675756>,  <25.006247, 33.094357, 30.572227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147457, 33.453999, 30.675756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122436, -0.229862, 0.965491,
		0.927568, -0.372532, 0.028935,
		0.353025, 0.899101, 0.258824,
		25.253365, 33.723728, 30.753403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498449, 32.997002, 31.140522>,  <25.006247, 33.094357, 30.572227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498449, 32.997002, 31.140522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.382040, 33.378407, 31.171825>,  <25.312195, 33.607250, 31.190607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.382040, 33.378407, 31.171825>,  <25.498449, 32.997002, 31.140522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382040, 33.378407, 31.171825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104216, -0.112907, 0.988125,
		0.951024, 0.279409, 0.132229,
		-0.291021, 0.953511, 0.078258,
		25.294733, 33.664459, 31.195303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816690, 33.246426, 31.711021>,  <25.498449, 32.997002, 31.140522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816690, 33.246426, 31.711021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.524063, 33.515228, 31.665031>,  <25.348486, 33.676510, 31.637438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.524063, 33.515228, 31.665031>,  <25.816690, 33.246426, 31.711021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524063, 33.515228, 31.665031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013656, 0.154168, 0.987950,
		0.681632, 0.724323, -0.103608,
		-0.731568, 0.672003, -0.114977,
		25.304592, 33.716831, 31.630539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127184, 33.796360, 32.055805>,  <25.816690, 33.246426, 31.711021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127184, 33.796360, 32.055805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730267, 33.843124, 32.039371>,  <25.492117, 33.871185, 32.029510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730267, 33.843124, 32.039371>,  <26.127184, 33.796360, 32.055805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730267, 33.843124, 32.039371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011605, 0.242428, 0.970100,
		0.123379, 0.963099, -0.239202,
		-0.992292, 0.116914, -0.041087,
		25.432579, 33.878197, 32.027046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929466, 34.339420, 32.465679>,  <26.127184, 33.796360, 32.055805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929466, 34.339420, 32.465679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.570807, 34.163784, 32.442982>,  <25.355610, 34.058403, 32.429363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.570807, 34.163784, 32.442982>,  <25.929466, 34.339420, 32.465679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570807, 34.163784, 32.442982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123848, 0.125699, 0.984308,
		-0.425067, 0.889607, -0.167088,
		-0.896649, -0.439090, -0.056745,
		25.301811, 34.032059, 32.425957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700497, 34.267395, 32.554985>,  <25.929466, 34.339420, 32.465679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700497, 34.267395, 32.554985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.960796, 34.483913, 32.767975>,  <27.116976, 34.613823, 32.895767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.960796, 34.483913, 32.767975>,  <26.700497, 34.267395, 32.554985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960796, 34.483913, 32.767975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738465, -0.288070, -0.609660,
		-0.176615, 0.789948, -0.587187,
		0.650751, 0.541292, 0.532471,
		27.156021, 34.646301, 32.927715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017006, 34.678158, 32.075584>,  <26.700497, 34.267395, 32.554985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017006, 34.678158, 32.075584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.282310, 34.650776, 32.373684>,  <27.441492, 34.634346, 32.552544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.282310, 34.650776, 32.373684>,  <27.017006, 34.678158, 32.075584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282310, 34.650776, 32.373684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719479, -0.215782, -0.660143,
		0.206004, 0.974039, -0.093865,
		0.663259, -0.068458, 0.745252,
		27.481289, 34.630238, 32.597260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556776, 35.030235, 31.837788>,  <27.017006, 34.678158, 32.075584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556776, 35.030235, 31.837788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688675, 34.777435, 32.118313>,  <27.767815, 34.625755, 32.286629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688675, 34.777435, 32.118313>,  <27.556776, 35.030235, 31.837788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688675, 34.777435, 32.118313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652238, -0.384556, -0.653224,
		0.682533, 0.672823, 0.285409,
		0.329748, -0.632002, 0.701313,
		27.787600, 34.587833, 32.328705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209805, 35.091221, 31.881308>,  <27.556776, 35.030235, 31.837788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209805, 35.091221, 31.881308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193329, 34.734493, 32.061512>,  <28.183443, 34.520458, 32.169636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193329, 34.734493, 32.061512>,  <28.209805, 35.091221, 31.881308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193329, 34.734493, 32.061512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602472, -0.381870, -0.700858,
		0.797076, 0.242553, 0.553026,
		-0.041189, -0.891820, 0.450511,
		28.180973, 34.466946, 32.196667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845058, 34.838650, 31.717899>,  <28.209805, 35.091221, 31.881308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845058, 34.838650, 31.717899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.650858, 34.501789, 31.811773>,  <28.534338, 34.299675, 31.868097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.650858, 34.501789, 31.811773>,  <28.845058, 34.838650, 31.717899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650858, 34.501789, 31.811773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459485, -0.474182, -0.751016,
		0.743750, -0.256784, 0.617169,
		-0.485500, -0.842148, 0.234684,
		28.505209, 34.249146, 31.882179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354689, 34.358601, 31.545265>,  <28.845058, 34.838650, 31.717899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354689, 34.358601, 31.545265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027411, 34.136185, 31.603741>,  <28.831043, 34.002735, 31.638826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027411, 34.136185, 31.603741>,  <29.354689, 34.358601, 31.545265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027411, 34.136185, 31.603741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135888, -0.434091, -0.890562,
		0.558648, -0.708790, 0.430731,
		-0.818197, -0.556042, 0.146189,
		28.781952, 33.969372, 31.647596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579088, 33.659203, 31.483782>,  <29.354689, 34.358601, 31.545265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579088, 33.659203, 31.483782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.190178, 33.700191, 31.399704>,  <28.956833, 33.724785, 31.349258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.190178, 33.700191, 31.399704>,  <29.579088, 33.659203, 31.483782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190178, 33.700191, 31.399704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143974, -0.445980, -0.883387,
		-0.184263, -0.889158, 0.418862,
		-0.972275, 0.102470, -0.210193,
		28.898495, 33.730934, 31.336645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394844, 32.983555, 31.248102>,  <29.579088, 33.659203, 31.483782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394844, 32.983555, 31.248102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134212, 33.249397, 31.101818>,  <28.977833, 33.408901, 31.014048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134212, 33.249397, 31.101818>,  <29.394844, 32.983555, 31.248102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134212, 33.249397, 31.101818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026822, -0.461614, -0.886675,
		-0.758105, -0.587550, 0.282953,
		-0.651581, 0.664604, -0.365711,
		28.938738, 33.448780, 30.992105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934036, 32.624420, 30.867722>,  <29.394844, 32.983555, 31.248102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934036, 32.624420, 30.867722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908506, 32.998108, 30.727348>,  <28.893188, 33.222321, 30.643124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908506, 32.998108, 30.727348>,  <28.934036, 32.624420, 30.867722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908506, 32.998108, 30.727348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138035, -0.356535, -0.924029,
		-0.988369, -0.010533, 0.151710,
		-0.063822, 0.934222, -0.350935,
		28.889360, 33.278374, 30.622068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475883, 32.630356, 30.235788>,  <28.934036, 32.624420, 30.867722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475883, 32.630356, 30.235788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669237, 32.978661, 30.199764>,  <28.785250, 33.187645, 30.178150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669237, 32.978661, 30.199764>,  <28.475883, 32.630356, 30.235788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669237, 32.978661, 30.199764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050117, -0.075182, -0.995910,
		-0.873972, 0.485922, 0.007298,
		0.483386, 0.870763, -0.090060,
		28.814253, 33.239891, 30.172747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114168, 33.013203, 29.770355>,  <28.475883, 32.630356, 30.235788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114168, 33.013203, 29.770355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487926, 33.154728, 29.786928>,  <28.712181, 33.239643, 29.796871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487926, 33.154728, 29.786928>,  <28.114168, 33.013203, 29.770355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487926, 33.154728, 29.786928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135250, -0.244760, -0.960104,
		-0.329558, 0.902722, -0.276557,
		0.934398, 0.353815, 0.041430,
		28.768246, 33.260872, 29.799356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181974, 33.345947, 29.188732>,  <28.114168, 33.013203, 29.770355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181974, 33.345947, 29.188732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572443, 33.327553, 29.273561>,  <28.806725, 33.316517, 29.324459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572443, 33.327553, 29.273561>,  <28.181974, 33.345947, 29.188732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572443, 33.327553, 29.273561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195006, -0.242818, -0.950269,
		0.095198, 0.968981, -0.228063,
		0.976171, -0.045990, 0.212073,
		28.865294, 33.313755, 29.337183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471510, 33.658226, 28.602940>,  <28.181974, 33.345947, 29.188732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471510, 33.658226, 28.602940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774235, 33.457886, 28.770933>,  <28.955870, 33.337681, 28.871729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774235, 33.457886, 28.770933>,  <28.471510, 33.658226, 28.602940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774235, 33.457886, 28.770933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264518, -0.352887, -0.897497,
		0.597717, 0.790330, -0.134586,
		0.756812, -0.500849, 0.419984,
		29.001278, 33.307632, 28.896929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210001, 33.855240, 28.272535>,  <28.471510, 33.658226, 28.602940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210001, 33.855240, 28.272535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.191414, 33.488983, 28.432253>,  <29.180262, 33.269230, 28.528084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.191414, 33.488983, 28.432253>,  <29.210001, 33.855240, 28.272535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191414, 33.488983, 28.432253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205126, -0.399955, -0.893286,
		0.977632, 0.040395, 0.206408,
		-0.046470, -0.915644, 0.399295,
		29.177473, 33.214291, 28.552042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763969, 33.532379, 28.001408>,  <29.210001, 33.855240, 28.272535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763969, 33.532379, 28.001408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515560, 33.235783, 28.103008>,  <29.366514, 33.057823, 28.163969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515560, 33.235783, 28.103008>,  <29.763969, 33.532379, 28.001408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515560, 33.235783, 28.103008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147002, -0.428505, -0.891501,
		0.769884, -0.516304, 0.375112,
		-0.621023, -0.741494, 0.254001,
		29.329252, 33.013336, 28.179209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065313, 33.004845, 27.769653>,  <29.763969, 33.532379, 28.001408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065313, 33.004845, 27.769653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708151, 32.835316, 27.830437>,  <29.493853, 32.733597, 27.866907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708151, 32.835316, 27.830437>,  <30.065313, 33.004845, 27.769653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708151, 32.835316, 27.830437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089422, -0.497709, -0.862722,
		0.441274, -0.756741, 0.482307,
		-0.892906, -0.423826, 0.151957,
		29.440279, 32.708168, 27.876024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054375, 32.284054, 27.469496>,  <30.065313, 33.004845, 27.769653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054375, 32.284054, 27.469496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658792, 32.336647, 27.496851>,  <29.421442, 32.368202, 27.513264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658792, 32.336647, 27.496851>,  <30.054375, 32.284054, 27.469496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658792, 32.336647, 27.496851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113696, -0.377095, -0.919169,
		-0.095066, -0.916794, 0.387880,
		-0.988957, 0.131483, 0.068387,
		29.362106, 32.376091, 27.517366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765522, 31.610584, 27.373564>,  <30.054375, 32.284054, 27.469496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765522, 31.610584, 27.373564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481512, 31.875891, 27.278955>,  <29.311106, 32.035076, 27.222191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481512, 31.875891, 27.278955>,  <29.765522, 31.610584, 27.373564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481512, 31.875891, 27.278955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054425, -0.386568, -0.920654,
		-0.702073, -0.640812, 0.310570,
		-0.710022, 0.663269, -0.236523,
		29.268505, 32.074871, 27.207998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213718, 31.140745, 27.215021>,  <29.765522, 31.610584, 27.373564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213718, 31.140745, 27.215021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160713, 31.501600, 27.050785>,  <29.128910, 31.718113, 26.952244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160713, 31.501600, 27.050785>,  <29.213718, 31.140745, 27.215021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160713, 31.501600, 27.050785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261759, -0.431391, -0.863356,
		-0.955992, -0.006931, 0.293309,
		-0.132515, 0.902138, -0.410593,
		29.120958, 31.772242, 26.927607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480616, 31.158421, 27.070980>,  <29.213718, 31.140745, 27.215021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480616, 31.158421, 27.070980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674192, 31.426865, 26.846336>,  <28.790339, 31.587931, 26.711550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674192, 31.426865, 26.846336>,  <28.480616, 31.158421, 27.070980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674192, 31.426865, 26.846336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117298, -0.586230, -0.801608,
		-0.867202, 0.453809, -0.204982,
		0.483944, 0.671112, -0.561611,
		28.819376, 31.628199, 26.677853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999166, 31.450632, 26.608473>,  <28.480616, 31.158421, 27.070980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999166, 31.450632, 26.608473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368507, 31.480669, 26.457857>,  <28.590113, 31.498692, 26.367487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368507, 31.480669, 26.457857>,  <27.999166, 31.450632, 26.608473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368507, 31.480669, 26.457857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291126, -0.502476, -0.814103,
		-0.250334, 0.861324, -0.442101,
		0.923352, 0.075091, -0.376541,
		28.645514, 31.503197, 26.344894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160419, 31.952591, 25.911570>,  <27.999166, 31.450632, 26.608473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160419, 31.952591, 25.911570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.396484, 31.631121, 25.942078>,  <28.538122, 31.438238, 25.960382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.396484, 31.631121, 25.942078>,  <28.160419, 31.952591, 25.911570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396484, 31.631121, 25.942078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375995, -0.357246, -0.854987,
		0.714379, 0.475902, -0.513010,
		0.590161, -0.803674, 0.076272,
		28.573532, 31.390018, 25.964960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.161770, 31.005491, 45.899734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833946, 30.893650, 45.699677>,  <34.637253, 30.826546, 45.579639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833946, 30.893650, 45.699677>,  <35.161770, 31.005491, 45.899734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833946, 30.893650, 45.699677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387472, -0.372612, 0.843224,
		-0.422129, 0.884863, 0.197038,
		-0.819556, -0.279603, -0.500150,
		34.588078, 30.809769, 45.549633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524403, 31.267986, 46.231571>,  <35.161770, 31.005491, 45.899734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524403, 31.267986, 46.231571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417366, 30.937702, 46.032936>,  <34.353146, 30.739532, 45.913754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417366, 30.937702, 46.032936>,  <34.524403, 31.267986, 46.231571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417366, 30.937702, 46.032936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490863, -0.326668, 0.807677,
		-0.829125, 0.459884, -0.317896,
		-0.267591, -0.825709, -0.496589,
		34.337090, 30.689989, 45.883961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885967, 31.223988, 46.379433>,  <34.524403, 31.267986, 46.231571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885967, 31.223988, 46.379433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.996952, 30.852867, 46.279675>,  <34.063541, 30.630196, 46.219818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.996952, 30.852867, 46.279675>,  <33.885967, 31.223988, 46.379433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996952, 30.852867, 46.279675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383886, -0.345033, 0.856495,
		-0.880708, -0.141905, -0.451904,
		0.277463, -0.927801, -0.249398,
		34.080193, 30.574528, 46.204857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277805, 30.824049, 46.586498>,  <33.885967, 31.223988, 46.379433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277805, 30.824049, 46.586498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571629, 30.553925, 46.560017>,  <33.747921, 30.391850, 46.544128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571629, 30.553925, 46.560017>,  <33.277805, 30.824049, 46.586498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571629, 30.553925, 46.560017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325969, -0.436767, 0.838438,
		-0.595127, -0.594295, -0.540960,
		0.734553, -0.675314, -0.066209,
		33.791996, 30.351332, 46.540154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986465, 30.197464, 46.854881>,  <33.277805, 30.824049, 46.586498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986465, 30.197464, 46.854881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370773, 30.086990, 46.844692>,  <33.601357, 30.020706, 46.838581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370773, 30.086990, 46.844692>,  <32.986465, 30.197464, 46.854881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370773, 30.086990, 46.844692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097995, -0.423926, 0.900380,
		-0.259468, -0.862559, -0.434359,
		0.960767, -0.276185, -0.025469,
		33.659004, 30.004135, 46.837051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987434, 29.437803, 47.048286>,  <32.986465, 30.197464, 46.854881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987434, 29.437803, 47.048286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352806, 29.593664, 47.095314>,  <33.572029, 29.687180, 47.123531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352806, 29.593664, 47.095314>,  <32.987434, 29.437803, 47.048286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352806, 29.593664, 47.095314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006059, -0.301849, 0.953337,
		0.406957, -0.870091, -0.278078,
		0.913427, 0.389652, 0.117568,
		33.626835, 29.710560, 47.130585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369137, 28.961180, 47.378136>,  <32.987434, 29.437803, 47.048286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369137, 28.961180, 47.378136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553932, 29.300606, 47.481293>,  <33.664810, 29.504261, 47.543186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553932, 29.300606, 47.481293>,  <33.369137, 28.961180, 47.378136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553932, 29.300606, 47.481293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048016, -0.266422, 0.962660,
		0.885584, -0.457122, -0.082340,
		0.461990, 0.848563, 0.257888,
		33.692528, 29.555174, 47.558659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881653, 28.637890, 47.860943>,  <33.369137, 28.961180, 47.378136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881653, 28.637890, 47.860943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824039, 29.030748, 47.909351>,  <33.789471, 29.266462, 47.938396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824039, 29.030748, 47.909351>,  <33.881653, 28.637890, 47.860943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824039, 29.030748, 47.909351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042227, -0.116081, 0.992342,
		0.988671, 0.148044, -0.024753,
		-0.144037, 0.982145, 0.121017,
		33.780827, 29.325392, 47.945656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277821, 28.740189, 48.391914>,  <33.881653, 28.637890, 47.860943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277821, 28.740189, 48.391914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051956, 29.070215, 48.400173>,  <33.916439, 29.268230, 48.405128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.051956, 29.070215, 48.400173>,  <34.277821, 28.740189, 48.391914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051956, 29.070215, 48.400173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093093, 0.038814, 0.994900,
		0.820058, 0.563701, -0.098724,
		-0.564659, 0.825066, 0.020647,
		33.882557, 29.317736, 48.406368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605957, 29.209845, 48.816093>,  <34.277821, 28.740189, 48.391914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605957, 29.209845, 48.816093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227501, 29.339336, 48.814857>,  <34.000427, 29.417032, 48.814114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227501, 29.339336, 48.814857>,  <34.605957, 29.209845, 48.816093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227501, 29.339336, 48.814857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012502, 0.046082, 0.998859,
		0.323505, 0.945026, -0.047647,
		-0.946144, 0.323732, -0.003093,
		33.943657, 29.436457, 48.813931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589729, 29.681826, 49.422375>,  <34.605957, 29.209845, 48.816093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589729, 29.681826, 49.422375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219276, 29.563137, 49.329227>,  <33.997005, 29.491924, 49.273338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219276, 29.563137, 49.329227>,  <34.589729, 29.681826, 49.422375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219276, 29.563137, 49.329227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208929, -0.110455, 0.971673,
		-0.314038, 0.948555, 0.040303,
		-0.926136, -0.296722, -0.232868,
		33.941437, 29.474121, 49.259369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134037, 30.085798, 49.835548>,  <34.589729, 29.681826, 49.422375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134037, 30.085798, 49.835548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893349, 29.779612, 49.744343>,  <33.748936, 29.595900, 49.689621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893349, 29.779612, 49.744343>,  <34.134037, 30.085798, 49.835548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893349, 29.779612, 49.744343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215889, -0.118972, 0.969143,
		-0.768973, 0.632382, -0.093668,
		-0.601725, -0.765466, -0.228011,
		33.712830, 29.549973, 49.675941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313553, 30.172966, 49.958523>,  <34.134037, 30.085798, 49.835548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313553, 30.172966, 49.958523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481262, 29.811150, 49.989544>,  <33.581890, 29.594059, 50.008156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481262, 29.811150, 49.989544>,  <33.313553, 30.172966, 49.958523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481262, 29.811150, 49.989544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110601, 0.033899, 0.993287,
		-0.901097, -0.425039, -0.085831,
		0.419276, -0.904540, 0.077556,
		33.607044, 29.539787, 50.012810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245537, 29.963249, 50.577969>,  <33.313553, 30.172966, 49.958523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245537, 29.963249, 50.577969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437962, 29.624928, 50.485710>,  <33.553417, 29.421934, 50.430355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437962, 29.624928, 50.485710>,  <33.245537, 29.963249, 50.577969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437962, 29.624928, 50.485710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067458, -0.298020, 0.952173,
		-0.874087, -0.442496, -0.200422,
		0.481063, -0.845802, -0.230646,
		33.582279, 29.371187, 50.416515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769260, 30.457476, 50.779713>,  <33.245537, 29.963249, 50.577969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769260, 30.457476, 50.779713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.393616, 30.591616, 50.809689>,  <32.168228, 30.672100, 50.827675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.393616, 30.591616, 50.809689>,  <32.769260, 30.457476, 50.779713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393616, 30.591616, 50.809689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197851, 0.706023, -0.679990,
		-0.280944, -0.623758, -0.729381,
		-0.939109, 0.335348, 0.074942,
		32.111881, 30.692221, 50.832172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492809, 30.505919, 50.068813>,  <32.769260, 30.457476, 50.779713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492809, 30.505919, 50.068813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.289436, 30.747099, 50.314720>,  <32.167412, 30.891808, 50.462265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.289436, 30.747099, 50.314720>,  <32.492809, 30.505919, 50.068813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289436, 30.747099, 50.314720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073766, 0.741810, -0.666541,
		-0.857934, -0.293545, -0.421641,
		-0.508437, 0.602950, 0.614771,
		32.136906, 30.927984, 50.499153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095539, 30.788561, 49.604839>,  <32.492809, 30.505919, 50.068813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095539, 30.788561, 49.604839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.091530, 31.032921, 49.921497>,  <32.089123, 31.179537, 50.111492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.091530, 31.032921, 49.921497>,  <32.095539, 30.788561, 49.604839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091530, 31.032921, 49.921497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115101, 0.787128, -0.605955,
		-0.993303, 0.085044, -0.078206,
		-0.010025, 0.610899, 0.791645,
		32.088524, 31.216190, 50.158993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573837, 31.276798, 49.543793>,  <32.095539, 30.788561, 49.604839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573837, 31.276798, 49.543793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834391, 31.436222, 49.802048>,  <31.990723, 31.531876, 49.957001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834391, 31.436222, 49.802048>,  <31.573837, 31.276798, 49.543793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834391, 31.436222, 49.802048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044774, 0.829252, -0.557079,
		-0.757425, 0.391781, 0.522317,
		0.651385, 0.398560, 0.645637,
		32.029808, 31.555790, 49.995739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350384, 31.972797, 49.582962>,  <31.573837, 31.276798, 49.543793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350384, 31.972797, 49.582962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730520, 31.979977, 49.707241>,  <31.958603, 31.984283, 49.781807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730520, 31.979977, 49.707241>,  <31.350384, 31.972797, 49.582962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730520, 31.979977, 49.707241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199619, 0.730757, -0.652799,
		-0.238757, 0.682402, 0.690885,
		0.950341, 0.017946, 0.310694,
		32.015621, 31.985361, 49.800449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487934, 32.604061, 49.535873>,  <31.350384, 31.972797, 49.582962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487934, 32.604061, 49.535873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860315, 32.467739, 49.588295>,  <32.083744, 32.385944, 49.619747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860315, 32.467739, 49.588295>,  <31.487934, 32.604061, 49.535873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860315, 32.467739, 49.588295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327762, 0.621820, -0.711275,
		0.160917, 0.705118, 0.690589,
		0.930955, -0.340805, 0.131049,
		32.139603, 32.365498, 49.627609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024242, 33.224514, 49.465679>,  <31.487934, 32.604061, 49.535873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024242, 33.224514, 49.465679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207897, 32.880428, 49.376930>,  <32.318092, 32.673977, 49.323681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.207897, 32.880428, 49.376930>,  <32.024242, 33.224514, 49.465679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207897, 32.880428, 49.376930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541718, 0.469054, -0.697517,
		0.704083, 0.200065, 0.681353,
		0.459140, -0.860211, -0.221874,
		32.345638, 32.622364, 49.310368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574638, 33.444668, 49.142143>,  <32.024242, 33.224514, 49.465679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574638, 33.444668, 49.142143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.559341, 33.062126, 49.026268>,  <32.550163, 32.832600, 48.956741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.559341, 33.062126, 49.026268>,  <32.574638, 33.444668, 49.142143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559341, 33.062126, 49.026268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471161, 0.238396, -0.849220,
		0.881218, -0.168967, 0.441481,
		-0.038243, -0.956356, -0.289690,
		32.547867, 32.775219, 48.939362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306389, 33.255089, 48.845680>,  <32.574638, 33.444668, 49.142143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306389, 33.255089, 48.845680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075180, 32.959179, 48.707912>,  <32.936455, 32.781631, 48.625252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075180, 32.959179, 48.707912>,  <33.306389, 33.255089, 48.845680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075180, 32.959179, 48.707912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493771, 0.018961, -0.869385,
		0.649679, -0.672588, 0.354319,
		-0.578020, -0.739774, -0.344423,
		32.901775, 32.737247, 48.604584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717266, 32.748562, 48.540779>,  <33.306389, 33.255089, 48.845680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717266, 32.748562, 48.540779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354786, 32.682003, 48.385292>,  <33.137299, 32.642067, 48.292000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354786, 32.682003, 48.385292>,  <33.717266, 32.748562, 48.540779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354786, 32.682003, 48.385292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415264, -0.176987, -0.892318,
		0.079682, -0.970045, 0.229486,
		-0.906204, -0.166399, -0.388722,
		33.082924, 32.632084, 48.268677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666798, 32.050049, 48.127693>,  <33.717266, 32.748562, 48.540779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666798, 32.050049, 48.127693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372650, 32.274391, 47.975548>,  <33.196163, 32.408997, 47.884262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372650, 32.274391, 47.975548>,  <33.666798, 32.050049, 48.127693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372650, 32.274391, 47.975548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267753, -0.275142, -0.923366,
		-0.622528, -0.780858, 0.052161,
		-0.735369, 0.560855, -0.380361,
		33.152039, 32.442646, 47.861439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478775, 31.706461, 47.528999>,  <33.666798, 32.050049, 48.127693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478775, 31.706461, 47.528999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315285, 32.069855, 47.494118>,  <33.217190, 32.287891, 47.473190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315285, 32.069855, 47.494118>,  <33.478775, 31.706461, 47.528999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315285, 32.069855, 47.494118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216818, 0.003846, -0.976205,
		-0.886530, -0.417905, -0.198547,
		-0.408724, 0.908483, -0.087200,
		33.192669, 32.342400, 47.467957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375103, 31.724577, 46.808056>,  <33.478775, 31.706461, 47.528999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375103, 31.724577, 46.808056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307903, 32.097931, 46.934906>,  <33.267586, 32.321941, 47.011017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307903, 32.097931, 46.934906>,  <33.375103, 31.724577, 46.808056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307903, 32.097931, 46.934906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212855, 0.348459, -0.912836,
		-0.962533, -0.085850, -0.257216,
		-0.167996, 0.933384, 0.317130,
		33.257504, 32.377945, 47.030045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995605, 32.074230, 46.239323>,  <33.375103, 31.724577, 46.808056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995605, 32.074230, 46.239323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153629, 32.374153, 46.451630>,  <33.248444, 32.554108, 46.579014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153629, 32.374153, 46.451630>,  <32.995605, 32.074230, 46.239323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153629, 32.374153, 46.451630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050748, 0.559072, -0.827564,
		-0.917254, 0.353870, 0.182814,
		0.395057, 0.749809, 0.530769,
		33.272148, 32.599094, 46.610859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212753, 32.315887, 46.348110>,  <32.995605, 32.074230, 46.239323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212753, 32.315887, 46.348110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882950, 32.212502, 46.146763>,  <31.685066, 32.150471, 46.025955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882950, 32.212502, 46.146763>,  <32.212753, 32.315887, 46.348110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882950, 32.212502, 46.146763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303666, -0.548512, 0.779052,
		-0.477458, 0.795193, 0.373768,
		-0.824513, -0.258463, -0.503364,
		31.635595, 32.134964, 45.995754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595110, 32.336826, 46.795258>,  <32.212753, 32.315887, 46.348110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595110, 32.336826, 46.795258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.471395, 32.097404, 46.499668>,  <31.397167, 31.953753, 46.322315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.471395, 32.097404, 46.499668>,  <31.595110, 32.336826, 46.795258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471395, 32.097404, 46.499668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472622, -0.577561, 0.665621,
		-0.825209, 0.555122, -0.104256,
		-0.309286, -0.598551, -0.738971,
		31.378609, 31.917839, 46.277977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968714, 32.252369, 47.032978>,  <31.595110, 32.336826, 46.795258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968714, 32.252369, 47.032978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013453, 31.998886, 46.726799>,  <31.040297, 31.846798, 46.543091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013453, 31.998886, 46.726799>,  <30.968714, 32.252369, 47.032978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013453, 31.998886, 46.726799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622208, -0.645257, 0.443284,
		-0.774821, 0.426687, -0.466466,
		0.111847, -0.633705, -0.765447,
		31.047007, 31.808775, 46.497166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256012, 32.027683, 46.743206>,  <30.968714, 32.252369, 47.032978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256012, 32.027683, 46.743206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533859, 31.752001, 46.660744>,  <30.700567, 31.586590, 46.611267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533859, 31.752001, 46.660744>,  <30.256012, 32.027683, 46.743206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533859, 31.752001, 46.660744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569071, -0.701743, 0.428619,
		-0.440075, -0.180410, -0.879651,
		0.694616, -0.689209, -0.206154,
		30.742245, 31.545238, 46.598896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877296, 31.375721, 46.562641>,  <30.256012, 32.027683, 46.743206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877296, 31.375721, 46.562641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.245277, 31.294592, 46.696835>,  <30.466066, 31.245914, 46.777351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.245277, 31.294592, 46.696835>,  <29.877296, 31.375721, 46.562641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245277, 31.294592, 46.696835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385999, -0.618136, 0.684772,
		0.068484, -0.759454, -0.646946,
		0.919954, -0.202825, 0.335481,
		30.521263, 31.233744, 46.797478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956211, 30.635181, 46.479252>,  <29.877296, 31.375721, 46.562641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956211, 30.635181, 46.479252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215458, 30.741871, 46.764572>,  <30.371006, 30.805885, 46.935764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215458, 30.741871, 46.764572>,  <29.956211, 30.635181, 46.479252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215458, 30.741871, 46.764572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399687, -0.678145, 0.616741,
		0.648223, -0.684819, -0.332912,
		0.648118, 0.266725, 0.713302,
		30.409893, 30.821888, 46.978561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058392, 30.059088, 46.845554>,  <29.956211, 30.635181, 46.479252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058392, 30.059088, 46.845554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.187057, 30.331989, 47.108177>,  <30.264257, 30.495729, 47.265751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.187057, 30.331989, 47.108177>,  <30.058392, 30.059088, 46.845554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187057, 30.331989, 47.108177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319522, -0.574519, 0.753548,
		0.891313, -0.452173, 0.033192,
		0.321664, 0.682252, 0.656555,
		30.283556, 30.536665, 47.305145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912102, 29.390966, 46.679283>,  <30.058392, 30.059088, 46.845554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912102, 29.390966, 46.679283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.527979, 29.341618, 46.579208>,  <29.297506, 29.312008, 46.519165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.527979, 29.341618, 46.579208>,  <29.912102, 29.390966, 46.679283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527979, 29.341618, 46.579208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188252, 0.375241, -0.907610,
		0.205853, -0.918680, -0.337121,
		-0.960305, -0.123371, -0.250188,
		29.239887, 29.304605, 46.504150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864403, 28.917557, 46.054859>,  <29.912102, 29.390966, 46.679283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864403, 28.917557, 46.054859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.521900, 29.123205, 46.074863>,  <29.316399, 29.246593, 46.086864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.521900, 29.123205, 46.074863>,  <29.864403, 28.917557, 46.054859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521900, 29.123205, 46.074863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127363, 0.303954, -0.944135,
		-0.500600, -0.802054, -0.325743,
		-0.856258, 0.514121, 0.050007,
		29.265022, 29.277441, 46.089867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551867, 28.880072, 45.516682>,  <29.864403, 28.917557, 46.054859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551867, 28.880072, 45.516682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.340723, 29.199694, 45.631832>,  <29.214037, 29.391468, 45.700920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.340723, 29.199694, 45.631832>,  <29.551867, 28.880072, 45.516682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340723, 29.199694, 45.631832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021124, 0.326484, -0.944967,
		-0.849068, -0.504892, -0.155459,
		-0.527861, 0.799057, 0.287873,
		29.182365, 29.439411, 45.718193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139103, 28.908400, 44.929955>,  <29.551867, 28.880072, 45.516682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139103, 28.908400, 44.929955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.104692, 29.266832, 45.104145>,  <29.084047, 29.481892, 45.208660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.104692, 29.266832, 45.104145>,  <29.139103, 28.908400, 44.929955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104692, 29.266832, 45.104145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048494, 0.440341, -0.896520,
		-0.995112, -0.056005, -0.081335,
		-0.086025, 0.896082, 0.435473,
		29.078884, 29.535658, 45.234787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600267, 29.196835, 44.576141>,  <29.139103, 28.908400, 44.929955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600267, 29.196835, 44.576141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.789536, 29.506157, 44.744953>,  <28.903097, 29.691751, 44.846241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.789536, 29.506157, 44.744953>,  <28.600267, 29.196835, 44.576141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789536, 29.506157, 44.744953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155108, 0.398435, -0.903986,
		-0.867209, 0.493199, 0.068581,
		0.473170, 0.773307, 0.422026,
		28.931486, 29.738150, 44.871559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297958, 29.744223, 44.254696>,  <28.600267, 29.196835, 44.576141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297958, 29.744223, 44.254696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.649450, 29.876427, 44.392448>,  <28.860346, 29.955750, 44.475101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.649450, 29.876427, 44.392448>,  <28.297958, 29.744223, 44.254696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649450, 29.876427, 44.392448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141736, 0.508270, -0.849454,
		-0.455792, 0.795251, 0.399786,
		0.878729, 0.330510, 0.344382,
		28.913069, 29.975580, 44.495762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232431, 30.440725, 44.156635>,  <28.297958, 29.744223, 44.254696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232431, 30.440725, 44.156635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.620251, 30.360540, 44.212906>,  <28.852942, 30.312429, 44.246666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.620251, 30.360540, 44.212906>,  <28.232431, 30.440725, 44.156635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620251, 30.360540, 44.212906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234641, 0.595895, -0.768019,
		0.070134, 0.777639, 0.624787,
		0.969549, -0.200464, 0.140674,
		28.911116, 30.300402, 44.255108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.648655, 26.550600, 48.317299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.780376, 26.923439, 48.377636>,  <32.859409, 27.147142, 48.413837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.780376, 26.923439, 48.377636>,  <32.648655, 26.550600, 48.317299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780376, 26.923439, 48.377636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375702, 0.017213, -0.926581,
		-0.866261, 0.361794, -0.344523,
		0.329301, 0.932099, 0.150838,
		32.879166, 27.203070, 48.422886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376690, 26.896811, 47.803467>,  <32.648655, 26.550600, 48.317299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376690, 26.896811, 47.803467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.668308, 27.142458, 47.924362>,  <32.843281, 27.289846, 47.996899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.668308, 27.142458, 47.924362>,  <32.376690, 26.896811, 47.803467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668308, 27.142458, 47.924362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298122, 0.112585, -0.947865,
		-0.616130, 0.781141, -0.101003,
		0.729045, 0.614119, 0.302243,
		32.887020, 27.326694, 48.015034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488163, 27.359758, 47.263512>,  <32.376690, 26.896811, 47.803467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488163, 27.359758, 47.263512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844597, 27.372299, 47.444614>,  <33.058456, 27.379824, 47.553276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844597, 27.372299, 47.444614>,  <32.488163, 27.359758, 47.263512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844597, 27.372299, 47.444614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450002, 0.068521, -0.890395,
		-0.058939, 0.997157, 0.046949,
		0.891080, 0.031352, 0.452761,
		33.111919, 27.381704, 47.580444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807480, 27.948961, 46.870270>,  <32.488163, 27.359758, 47.263512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807480, 27.948961, 46.870270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096397, 27.749006, 47.061432>,  <33.269749, 27.629032, 47.176128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096397, 27.749006, 47.061432>,  <32.807480, 27.948961, 46.870270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096397, 27.749006, 47.061432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523346, -0.056657, -0.850235,
		0.452100, 0.864234, 0.220692,
		0.722298, -0.499889, 0.477908,
		33.313087, 27.599039, 47.204803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292900, 28.354998, 46.911465>,  <32.807480, 27.948961, 46.870270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292900, 28.354998, 46.911465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.432785, 27.980488, 46.924690>,  <33.516716, 27.755783, 46.932625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.432785, 27.980488, 46.924690>,  <33.292900, 28.354998, 46.911465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432785, 27.980488, 46.924690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450733, 0.137208, -0.882051,
		0.821305, 0.323367, 0.469992,
		0.349713, -0.936273, 0.033063,
		33.537701, 27.699606, 46.934608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897964, 28.475151, 46.616291>,  <33.292900, 28.354998, 46.911465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897964, 28.475151, 46.616291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826229, 28.082470, 46.590675>,  <33.783188, 27.846861, 46.575306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826229, 28.082470, 46.590675>,  <33.897964, 28.475151, 46.616291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826229, 28.082470, 46.590675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346409, -0.002092, -0.938081,
		0.920781, -0.190419, 0.340445,
		-0.179340, -0.981701, -0.064037,
		33.772427, 27.787960, 46.571465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460777, 28.250702, 46.201519>,  <33.897964, 28.475151, 46.616291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460777, 28.250702, 46.201519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.212570, 27.937416, 46.185833>,  <34.063648, 27.749445, 46.176422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.212570, 27.937416, 46.185833>,  <34.460777, 28.250702, 46.201519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212570, 27.937416, 46.185833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181678, -0.094929, -0.978765,
		0.762861, -0.614462, 0.201197,
		-0.620513, -0.783215, -0.039217,
		34.026417, 27.702452, 46.174068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853378, 27.698198, 45.925564>,  <34.460777, 28.250702, 46.201519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853378, 27.698198, 45.925564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.467670, 27.617710, 45.856644>,  <34.236244, 27.569418, 45.815292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.467670, 27.617710, 45.856644>,  <34.853378, 27.698198, 45.925564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467670, 27.617710, 45.856644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171379, 0.022131, -0.984957,
		0.202006, -0.979296, 0.013145,
		-0.964273, -0.201220, -0.172301,
		34.178387, 27.557344, 45.804955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809795, 27.234249, 45.376122>,  <34.853378, 27.698198, 45.925564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809795, 27.234249, 45.376122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.443970, 27.395674, 45.386742>,  <34.224472, 27.492529, 45.393112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.443970, 27.395674, 45.386742>,  <34.809795, 27.234249, 45.376122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443970, 27.395674, 45.386742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047768, -0.042608, -0.997949,
		-0.401604, -0.913960, 0.058245,
		-0.914567, 0.403562, 0.026547,
		34.169601, 27.516743, 45.394707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422962, 26.912848, 44.790863>,  <34.809795, 27.234249, 45.376122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422962, 26.912848, 44.790863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.248341, 27.258518, 44.890957>,  <34.143566, 27.465921, 44.951012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.248341, 27.258518, 44.890957>,  <34.422962, 26.912848, 44.790863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248341, 27.258518, 44.890957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023635, 0.289056, -0.957021,
		-0.899368, -0.411876, -0.146613,
		-0.436553, 0.864179, 0.250233,
		34.117374, 27.517773, 44.966026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791817, 27.009769, 44.352425>,  <34.422962, 26.912848, 44.790863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791817, 27.009769, 44.352425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.908833, 27.369102, 44.483524>,  <33.979042, 27.584702, 44.562183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.908833, 27.369102, 44.483524>,  <33.791817, 27.009769, 44.352425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908833, 27.369102, 44.483524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058907, 0.359023, -0.931468,
		-0.954437, 0.253184, 0.157946,
		0.292539, 0.898332, 0.327751,
		33.996593, 27.638601, 44.581848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337708, 27.489933, 44.066158>,  <33.791817, 27.009769, 44.352425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337708, 27.489933, 44.066158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.662735, 27.696180, 44.174877>,  <33.857750, 27.819929, 44.240108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.662735, 27.696180, 44.174877>,  <33.337708, 27.489933, 44.066158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662735, 27.696180, 44.174877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026001, 0.497913, -0.866837,
		-0.582287, 0.697296, 0.417995,
		0.812567, 0.515616, 0.271798,
		33.906506, 27.850864, 44.256416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593647, 27.545313, 44.156578>,  <33.337708, 27.489933, 44.066158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593647, 27.545313, 44.156578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.245625, 27.624001, 43.975780>,  <32.036812, 27.671213, 43.867302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.245625, 27.624001, 43.975780>,  <32.593647, 27.545313, 44.156578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245625, 27.624001, 43.975780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479043, -0.553679, 0.681145,
		-0.116268, 0.809161, 0.575969,
		-0.870057, 0.196719, -0.451998,
		31.984608, 27.683016, 43.840179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158333, 27.750406, 44.750847>,  <32.593647, 27.545313, 44.156578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158333, 27.750406, 44.750847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.914724, 27.630751, 44.457016>,  <31.768559, 27.558958, 44.280716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.914724, 27.630751, 44.457016>,  <32.158333, 27.750406, 44.750847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914724, 27.630751, 44.457016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539079, -0.523239, 0.660011,
		-0.581796, 0.797958, 0.157404,
		-0.609021, -0.299139, -0.734581,
		31.732018, 27.541008, 44.236641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491013, 28.023764, 44.986214>,  <32.158333, 27.750406, 44.750847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491013, 28.023764, 44.986214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.417356, 27.724691, 44.731007>,  <31.373163, 27.545248, 44.577885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.417356, 27.724691, 44.731007>,  <31.491013, 28.023764, 44.986214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417356, 27.724691, 44.731007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763203, -0.300268, 0.572154,
		-0.619365, 0.592293, -0.515341,
		-0.184142, -0.747682, -0.638015,
		31.362114, 27.500387, 44.539600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880432, 27.913635, 45.113632>,  <31.491013, 28.023764, 44.986214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880432, 27.913635, 45.113632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.964413, 27.587803, 44.897343>,  <31.014801, 27.392303, 44.767570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.964413, 27.587803, 44.897343>,  <30.880432, 27.913635, 45.113632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964413, 27.587803, 44.897343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661501, -0.525596, 0.534944,
		-0.719956, 0.245377, -0.649194,
		0.209950, -0.814579, -0.540723,
		31.027397, 27.343430, 44.735126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294359, 27.701221, 44.878174>,  <30.880432, 27.913635, 45.113632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294359, 27.701221, 44.878174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.503471, 27.360252, 44.874710>,  <30.628939, 27.155670, 44.872631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.503471, 27.360252, 44.874710>,  <30.294359, 27.701221, 44.878174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503471, 27.360252, 44.874710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736426, -0.456707, 0.499094,
		-0.429390, -0.254546, -0.866505,
		0.522782, -0.852423, -0.008651,
		30.660305, 27.104525, 44.872112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791454, 27.163610, 44.817284>,  <30.294359, 27.701221, 44.878174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791454, 27.163610, 44.817284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.125666, 26.996277, 44.959766>,  <30.326193, 26.895876, 45.045258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.125666, 26.996277, 44.959766>,  <29.791454, 27.163610, 44.817284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125666, 26.996277, 44.959766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537491, -0.487816, 0.687851,
		-0.113986, -0.766180, -0.632436,
		0.835530, -0.418334, 0.356211,
		30.376326, 26.870777, 45.066631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636799, 26.504227, 44.889900>,  <29.791454, 27.163610, 44.817284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636799, 26.504227, 44.889900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.924051, 26.571638, 45.159977>,  <30.096403, 26.612085, 45.322021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.924051, 26.571638, 45.159977>,  <29.636799, 26.504227, 44.889900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924051, 26.571638, 45.159977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506388, -0.538965, 0.673118,
		0.477343, -0.825297, -0.301708,
		0.718133, 0.168527, 0.675192,
		30.139492, 26.622196, 45.362534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750622, 25.822170, 45.149792>,  <29.636799, 26.504227, 44.889900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750622, 25.822170, 45.149792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.891508, 26.083351, 45.417999>,  <29.976040, 26.240059, 45.578926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.891508, 26.083351, 45.417999>,  <29.750622, 25.822170, 45.149792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891508, 26.083351, 45.417999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455175, -0.506491, 0.732313,
		0.817778, -0.563137, 0.118813,
		0.352215, 0.652950, 0.670523,
		29.997173, 26.279236, 45.619156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013678, 25.295238, 45.735542>,  <29.750622, 25.822170, 45.149792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013678, 25.295238, 45.735542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.948277, 25.665209, 45.872822>,  <29.909037, 25.887190, 45.955189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.948277, 25.665209, 45.872822>,  <30.013678, 25.295238, 45.735542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948277, 25.665209, 45.872822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417555, -0.380061, 0.825349,
		0.893821, -0.008358, 0.448347,
		-0.163501, 0.924924, 0.343196,
		29.899227, 25.942686, 45.975780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767658, 25.216038, 46.387829>,  <30.013678, 25.295238, 45.735542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767658, 25.216038, 46.387829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.742573, 25.615244, 46.390141>,  <29.727522, 25.854767, 46.391529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.742573, 25.615244, 46.390141>,  <29.767658, 25.216038, 46.387829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742573, 25.615244, 46.390141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505585, -0.036765, 0.861993,
		0.860494, 0.051137, 0.506887,
		-0.062716, 0.998015, 0.005782,
		29.723759, 25.914648, 46.391876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075302, 25.455717, 46.912628>,  <29.767658, 25.216038, 46.387829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075302, 25.455717, 46.912628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.782446, 25.704336, 46.801163>,  <29.606733, 25.853508, 46.734283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.782446, 25.704336, 46.801163>,  <30.075302, 25.455717, 46.912628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782446, 25.704336, 46.801163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479462, -0.179660, 0.858975,
		0.483827, 0.762498, 0.429544,
		-0.732139, 0.621546, -0.278665,
		29.562805, 25.890800, 46.717564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876829, 25.909101, 47.492786>,  <30.075302, 25.455717, 46.912628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876829, 25.909101, 47.492786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.556477, 25.932209, 47.254375>,  <29.364265, 25.946074, 47.111328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.556477, 25.932209, 47.254375>,  <29.876829, 25.909101, 47.492786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556477, 25.932209, 47.254375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594628, -0.194352, 0.780157,
		-0.070773, 0.979229, 0.190003,
		-0.800880, 0.057767, -0.596032,
		29.316212, 25.949539, 47.075565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429049, 26.253670, 47.895996>,  <29.876829, 25.909101, 47.492786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429049, 26.253670, 47.895996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.223698, 26.041601, 47.626076>,  <29.100487, 25.914360, 47.464123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.223698, 26.041601, 47.626076>,  <29.429049, 26.253670, 47.895996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223698, 26.041601, 47.626076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536814, -0.415093, 0.734526,
		-0.669532, 0.739333, -0.071504,
		-0.513379, -0.530173, -0.674803,
		29.069685, 25.882549, 47.423634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764906, 26.327915, 48.163578>,  <29.429049, 26.253670, 47.895996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764906, 26.327915, 48.163578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.764801, 26.023037, 47.904640>,  <28.764738, 25.840109, 47.749279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.764801, 26.023037, 47.904640>,  <28.764906, 26.327915, 48.163578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764801, 26.023037, 47.904640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614519, -0.510568, 0.601404,
		-0.788902, 0.397963, -0.468251,
		-0.000263, -0.762198, -0.647344,
		28.764723, 25.794378, 47.710438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643654, 26.639156, 47.626766>,  <28.764906, 26.327915, 48.163578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643654, 26.639156, 47.626766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.541466, 26.889318, 47.921684>,  <28.480152, 27.039415, 48.098637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.541466, 26.889318, 47.921684>,  <28.643654, 26.639156, 47.626766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541466, 26.889318, 47.921684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312307, 0.775099, -0.549260,
		-0.914986, 0.089942, -0.393333,
		-0.255471, 0.625406, 0.737294,
		28.464825, 27.076941, 48.142872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117990, 27.120951, 47.430199>,  <28.643654, 26.639156, 47.626766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117990, 27.120951, 47.430199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.338314, 27.267910, 47.729965>,  <28.470509, 27.356087, 47.909824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.338314, 27.267910, 47.729965>,  <28.117990, 27.120951, 47.430199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338314, 27.267910, 47.729965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226409, 0.798462, -0.557850,
		-0.803335, 0.476944, 0.356619,
		0.550810, 0.367399, 0.749417,
		28.503557, 27.378130, 47.954792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752689, 27.739872, 47.556854>,  <28.117990, 27.120951, 47.430199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752689, 27.739872, 47.556854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.135571, 27.761721, 47.670540>,  <28.365299, 27.774830, 47.738750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.135571, 27.761721, 47.670540>,  <27.752689, 27.739872, 47.556854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135571, 27.761721, 47.670540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144075, 0.761765, -0.631630,
		-0.251007, 0.645546, 0.721294,
		0.957203, 0.054623, 0.284216,
		28.422731, 27.778107, 47.755806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867382, 28.460079, 47.817886>,  <27.752689, 27.739872, 47.556854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867382, 28.460079, 47.817886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.229801, 28.320166, 47.722618>,  <28.447252, 28.236217, 47.665455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.229801, 28.320166, 47.722618>,  <27.867382, 28.460079, 47.817886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229801, 28.320166, 47.722618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218913, 0.869093, -0.443571,
		0.362149, 0.349757, 0.864012,
		0.906049, -0.349782, -0.238175,
		28.501616, 28.215231, 47.651165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374819, 29.069937, 47.898880>,  <27.867382, 28.460079, 47.817886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374819, 29.069937, 47.898880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.567888, 28.802149, 47.673016>,  <28.683729, 28.641476, 47.537498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.567888, 28.802149, 47.673016>,  <28.374819, 29.069937, 47.898880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567888, 28.802149, 47.673016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323390, 0.735409, -0.595476,
		0.813908, 0.104815, 0.571461,
		0.482673, -0.669468, -0.564659,
		28.712690, 28.601309, 47.503616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996012, 29.400930, 47.768349>,  <28.374819, 29.069937, 47.898880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996012, 29.400930, 47.768349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.934664, 29.126425, 47.483952>,  <28.897854, 28.961721, 47.313313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.934664, 29.126425, 47.483952>,  <28.996012, 29.400930, 47.768349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934664, 29.126425, 47.483952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293675, 0.655347, -0.695900,
		0.943521, -0.315533, 0.101027,
		-0.153371, -0.686265, -0.710997,
		28.888653, 28.920546, 47.270653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520470, 29.498695, 47.347698>,  <28.996012, 29.400930, 47.768349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520470, 29.498695, 47.347698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.265001, 29.301500, 47.111374>,  <29.111719, 29.183184, 46.969578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.265001, 29.301500, 47.111374>,  <29.520470, 29.498695, 47.347698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265001, 29.301500, 47.111374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165440, 0.661877, -0.731128,
		0.751485, -0.564694, -0.341161,
		-0.638670, -0.492990, -0.590814,
		29.073400, 29.153605, 46.934132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236658, 29.615404, 47.395458>,  <29.520470, 29.498695, 47.347698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236658, 29.615404, 47.395458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.208639, 29.988533, 47.536846>,  <30.191828, 30.212410, 47.621677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.208639, 29.988533, 47.536846>,  <30.236658, 29.615404, 47.395458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208639, 29.988533, 47.536846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355272, -0.354433, 0.864962,
		0.932135, -0.064989, 0.356232,
		-0.070048, 0.932820, 0.353468,
		30.187624, 30.268379, 47.642887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562054, 29.625820, 47.942390>,  <30.236658, 29.615404, 47.395458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562054, 29.625820, 47.942390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.316044, 29.940723, 47.960148>,  <30.168438, 30.129665, 47.970802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.316044, 29.940723, 47.960148>,  <30.562054, 29.625820, 47.942390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316044, 29.940723, 47.960148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227856, -0.231338, 0.945814,
		0.754870, 0.571582, 0.321660,
		-0.615022, 0.787259, 0.044392,
		30.131536, 30.176901, 47.973465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554432, 29.752270, 48.621220>,  <30.562054, 29.625820, 47.942390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554432, 29.752270, 48.621220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.232800, 29.960659, 48.506649>,  <30.039820, 30.085693, 48.437908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.232800, 29.960659, 48.506649>,  <30.554432, 29.752270, 48.621220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232800, 29.960659, 48.506649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397507, -0.112872, 0.910630,
		0.442084, 0.846078, 0.297849,
		-0.804083, 0.520972, -0.286423,
		29.991575, 30.116951, 48.420723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459124, 30.196650, 49.168251>,  <30.554432, 29.752270, 48.621220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459124, 30.196650, 49.168251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.112103, 30.213629, 48.970039>,  <29.903891, 30.223816, 48.851112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.112103, 30.213629, 48.970039>,  <30.459124, 30.196650, 49.168251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112103, 30.213629, 48.970039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493576, 0.048949, 0.868324,
		0.061116, 0.997899, -0.021514,
		-0.867553, 0.042449, -0.495531,
		29.851837, 30.226364, 48.821381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129305, 30.778585, 49.454483>,  <30.459124, 30.196650, 49.168251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129305, 30.778585, 49.454483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.876696, 30.498400, 49.321499>,  <29.725130, 30.330288, 49.241707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.876696, 30.498400, 49.321499>,  <30.129305, 30.778585, 49.454483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876696, 30.498400, 49.321499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576273, 0.137161, 0.805665,
		-0.518739, 0.700383, -0.490279,
		-0.631522, -0.700464, -0.332461,
		29.687239, 30.288260, 49.221760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507780, 30.974672, 49.722813>,  <30.129305, 30.778585, 49.454483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507780, 30.974672, 49.722813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.406475, 30.613136, 49.584866>,  <29.345692, 30.396215, 49.502098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.406475, 30.613136, 49.584866>,  <29.507780, 30.974672, 49.722813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406475, 30.613136, 49.584866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637528, -0.112189, 0.762215,
		-0.727610, 0.412903, -0.547810,
		-0.253263, -0.903839, -0.344867,
		29.330496, 30.341984, 49.481407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816889, 30.984335, 49.816723>,  <29.507780, 30.974672, 49.722813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816889, 30.984335, 49.816723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.883116, 30.591879, 49.776825>,  <28.922852, 30.356405, 49.752888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.883116, 30.591879, 49.776825>,  <28.816889, 30.984335, 49.816723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883116, 30.591879, 49.776825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650739, -0.184686, 0.736499,
		-0.741031, -0.057031, -0.669045,
		0.165567, -0.981141, -0.099746,
		28.932785, 30.297537, 49.746902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115091, 30.639362, 49.763435>,  <28.816889, 30.984335, 49.816723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115091, 30.639362, 49.763435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.352058, 30.348549, 49.902267>,  <28.494240, 30.174061, 49.985565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.352058, 30.348549, 49.902267>,  <28.115091, 30.639362, 49.763435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352058, 30.348549, 49.902267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589622, -0.097704, 0.801748,
		-0.548985, -0.679616, -0.486556,
		0.592420, -0.727032, 0.347078,
		28.529785, 30.130440, 50.006390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706528, 30.029205, 49.947857>,  <28.115091, 30.639362, 49.763435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706528, 30.029205, 49.947857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.038219, 30.009966, 50.170589>,  <28.237234, 29.998423, 50.304230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.038219, 30.009966, 50.170589>,  <27.706528, 30.029205, 49.947857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038219, 30.009966, 50.170589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552822, -0.217214, 0.804491,
		0.082258, -0.974938, -0.206710,
		0.829229, -0.048098, 0.556836,
		28.286987, 29.995537, 50.337639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.897274, 35.422310, 36.610775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235996, 35.509525, 36.804840>,  <34.439228, 35.561855, 36.921280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235996, 35.509525, 36.804840>,  <33.897274, 35.422310, 36.610775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235996, 35.509525, 36.804840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458884, -0.161788, 0.873642,
		0.268981, -0.962436, -0.036949,
		0.846803, 0.218038, 0.485165,
		34.490036, 35.574936, 36.950390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972656, 34.952286, 37.164700>,  <33.897274, 35.422310, 36.610775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972656, 34.952286, 37.164700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163651, 35.292145, 37.254234>,  <34.278248, 35.496059, 37.307957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163651, 35.292145, 37.254234>,  <33.972656, 34.952286, 37.164700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163651, 35.292145, 37.254234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538119, 0.081397, 0.838930,
		0.694575, -0.521031, 0.496077,
		0.477488, 0.849648, 0.223840,
		34.306896, 35.547039, 37.321388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026779, 34.839230, 37.787941>,  <33.972656, 34.952286, 37.164700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026779, 34.839230, 37.787941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097458, 35.231743, 37.757309>,  <34.139866, 35.467251, 37.738930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097458, 35.231743, 37.757309>,  <34.026779, 34.839230, 37.787941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097458, 35.231743, 37.757309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541152, 0.161849, 0.825202,
		0.822150, -0.104369, 0.559621,
		0.176700, 0.981281, -0.076585,
		34.150467, 35.526127, 37.734333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223682, 35.084267, 38.469357>,  <34.026779, 34.839230, 37.787941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223682, 35.084267, 38.469357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128838, 35.431610, 38.295120>,  <34.071930, 35.640015, 38.190578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128838, 35.431610, 38.295120>,  <34.223682, 35.084267, 38.469357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128838, 35.431610, 38.295120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604598, 0.219058, 0.765816,
		0.760419, 0.444941, 0.473064,
		-0.237115, 0.868355, -0.435587,
		34.057705, 35.692116, 38.164444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253902, 35.482426, 38.946720>,  <34.223682, 35.084267, 38.469357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253902, 35.482426, 38.946720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017582, 35.673710, 38.686790>,  <33.875790, 35.788479, 38.530830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017582, 35.673710, 38.686790>,  <34.253902, 35.482426, 38.946720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017582, 35.673710, 38.686790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667640, 0.162458, 0.726542,
		0.453007, 0.863091, 0.223291,
		-0.590797, 0.478207, -0.649829,
		33.840343, 35.817173, 38.491840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129013, 35.943645, 39.345116>,  <34.253902, 35.482426, 38.946720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129013, 35.943645, 39.345116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853554, 35.958946, 39.055481>,  <33.688278, 35.968128, 38.881702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853554, 35.958946, 39.055481>,  <34.129013, 35.943645, 39.345116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853554, 35.958946, 39.055481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724847, -0.062330, 0.686085,
		-0.018888, 0.997322, 0.070651,
		-0.688651, 0.038253, -0.724083,
		33.646957, 35.970421, 38.838257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667339, 36.554752, 39.502098>,  <34.129013, 35.943645, 39.345116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667339, 36.554752, 39.502098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491024, 36.270645, 39.282562>,  <33.385235, 36.100182, 39.150841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491024, 36.270645, 39.282562>,  <33.667339, 36.554752, 39.502098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491024, 36.270645, 39.282562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687444, -0.126038, 0.715217,
		-0.577168, 0.692559, -0.432711,
		-0.440792, -0.710265, -0.548841,
		33.358788, 36.057568, 39.117908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923393, 36.641579, 39.563259>,  <33.667339, 36.554752, 39.502098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923393, 36.641579, 39.563259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964970, 36.261631, 39.445309>,  <32.989914, 36.033665, 39.374538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964970, 36.261631, 39.445309>,  <32.923393, 36.641579, 39.563259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964970, 36.261631, 39.445309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668855, -0.286181, 0.686100,
		-0.736091, 0.125915, -0.665068,
		0.103939, -0.949866, -0.294874,
		32.996151, 35.976669, 39.356846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224220, 36.342030, 39.722546>,  <32.923393, 36.641579, 39.563259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224220, 36.342030, 39.722546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431709, 36.005009, 39.664536>,  <32.556202, 35.802795, 39.629730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431709, 36.005009, 39.664536>,  <32.224220, 36.342030, 39.722546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431709, 36.005009, 39.664536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542127, -0.455328, 0.706240,
		-0.661077, -0.287722, -0.692960,
		0.518725, -0.842551, -0.145025,
		32.587326, 35.752243, 39.621029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731236, 35.782818, 39.716331>,  <32.224220, 36.342030, 39.722546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731236, 35.782818, 39.716331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095169, 35.635548, 39.792904>,  <32.313530, 35.547184, 39.838848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095169, 35.635548, 39.792904>,  <31.731236, 35.782818, 39.716331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095169, 35.635548, 39.792904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362379, -0.480176, 0.798819,
		-0.202186, -0.796165, -0.570300,
		0.909836, -0.368175, 0.191429,
		32.368118, 35.525093, 39.850334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656862, 35.037540, 39.759033>,  <31.731236, 35.782818, 39.716331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656862, 35.037540, 39.759033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990650, 35.095310, 39.971748>,  <32.190922, 35.129971, 40.099377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990650, 35.095310, 39.971748>,  <31.656862, 35.037540, 39.759033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990650, 35.095310, 39.971748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309139, -0.676185, 0.668736,
		0.456168, -0.722438, -0.519610,
		0.834472, 0.144424, 0.531788,
		32.240993, 35.138638, 40.131283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885128, 34.340820, 39.988094>,  <31.656862, 35.037540, 39.759033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885128, 34.340820, 39.988094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091068, 34.594921, 40.218357>,  <32.214630, 34.747383, 40.356514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091068, 34.594921, 40.218357>,  <31.885128, 34.340820, 39.988094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091068, 34.594921, 40.218357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061323, -0.642485, 0.763841,
		0.855085, -0.428563, -0.291827,
		0.514848, 0.635253, 0.575660,
		32.245522, 34.785496, 40.391056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024937, 33.561371, 39.879395>,  <31.885128, 34.340820, 39.988094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024937, 33.561371, 39.879395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669985, 33.428226, 39.751789>,  <31.457014, 33.348339, 39.675224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669985, 33.428226, 39.751789>,  <32.024937, 33.561371, 39.879395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669985, 33.428226, 39.751789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274473, 0.174566, -0.945617,
		0.370445, -0.926678, -0.063545,
		-0.887375, -0.332858, -0.319015,
		31.403772, 33.328369, 39.656086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237770, 33.115173, 39.324978>,  <32.024937, 33.561371, 39.879395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237770, 33.115173, 39.324978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852880, 33.209179, 39.269985>,  <31.621948, 33.265583, 39.236992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852880, 33.209179, 39.269985>,  <32.237770, 33.115173, 39.324978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852880, 33.209179, 39.269985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170429, 0.126107, -0.977267,
		-0.212333, -0.963777, -0.161396,
		-0.962220, 0.235013, -0.137479,
		31.564215, 33.279682, 39.228741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115841, 32.686714, 38.785961>,  <32.237770, 33.115173, 39.324978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115841, 32.686714, 38.785961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833010, 32.969421, 38.776791>,  <31.663313, 33.139046, 38.771286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833010, 32.969421, 38.776791>,  <32.115841, 32.686714, 38.785961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833010, 32.969421, 38.776791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106687, 0.074566, -0.991493,
		-0.699046, -0.703504, -0.128127,
		-0.707073, 0.706768, -0.022929,
		31.620888, 33.181454, 38.769913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678864, 32.513702, 38.201027>,  <32.115841, 32.686714, 38.785961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678864, 32.513702, 38.201027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650337, 32.901108, 38.296440>,  <31.633221, 33.133553, 38.353687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650337, 32.901108, 38.296440>,  <31.678864, 32.513702, 38.201027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650337, 32.901108, 38.296440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112502, 0.245427, -0.962865,
		-0.991089, -0.041833, -0.126462,
		-0.071317, 0.968512, 0.238533,
		31.628942, 33.191662, 38.368000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355316, 32.774094, 37.645256>,  <31.678864, 32.513702, 38.201027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355316, 32.774094, 37.645256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493053, 33.106884, 37.819267>,  <31.575695, 33.306557, 37.923676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493053, 33.106884, 37.819267>,  <31.355316, 32.774094, 37.645256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493053, 33.106884, 37.819267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159096, 0.404958, -0.900388,
		-0.925266, 0.379252, 0.007080,
		0.344341, 0.831972, 0.435031,
		31.596355, 33.356476, 37.949776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964859, 33.298008, 37.360222>,  <31.355316, 32.774094, 37.645256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964859, 33.298008, 37.360222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275776, 33.496971, 37.514313>,  <31.462326, 33.616348, 37.606766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275776, 33.496971, 37.514313>,  <30.964859, 33.298008, 37.360222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275776, 33.496971, 37.514313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083978, 0.524799, -0.847073,
		-0.623512, 0.690773, 0.366150,
		0.777290, 0.497412, 0.385229,
		31.508963, 33.646194, 37.629883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886436, 33.996513, 37.155201>,  <30.964859, 33.298008, 37.360222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886436, 33.996513, 37.155201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277330, 33.955811, 37.229664>,  <31.511868, 33.931389, 37.274342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277330, 33.955811, 37.229664>,  <30.886436, 33.996513, 37.155201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277330, 33.955811, 37.229664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211274, 0.387134, -0.897491,
		0.019259, 0.916391, 0.399820,
		0.977237, -0.101756, 0.186154,
		31.570501, 33.925285, 37.285511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043503, 34.757317, 37.045372>,  <30.886436, 33.996513, 37.155201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043503, 34.757317, 37.045372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370483, 34.528065, 37.022381>,  <31.566671, 34.390514, 37.008587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370483, 34.528065, 37.022381>,  <31.043503, 34.757317, 37.045372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370483, 34.528065, 37.022381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285370, 0.489646, -0.823900,
		0.500340, 0.657095, 0.563814,
		0.817449, -0.573126, -0.057474,
		31.615719, 34.356129, 37.005138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574923, 35.247948, 36.953453>,  <31.043503, 34.757317, 37.045372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574923, 35.247948, 36.953453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700005, 34.894661, 36.813660>,  <31.775055, 34.682690, 36.729782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700005, 34.894661, 36.813660>,  <31.574923, 35.247948, 36.953453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700005, 34.894661, 36.813660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430713, 0.459789, -0.776582,
		0.846581, 0.092314, 0.524193,
		0.312708, -0.883217, -0.349488,
		31.793818, 34.629696, 36.708813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226963, 35.400757, 36.756229>,  <31.574923, 35.247948, 36.953453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226963, 35.400757, 36.756229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127197, 35.074348, 36.547657>,  <32.067337, 34.878502, 36.422512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127197, 35.074348, 36.547657>,  <32.226963, 35.400757, 36.756229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127197, 35.074348, 36.547657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341037, 0.429941, -0.835969,
		0.906358, -0.386335, 0.171059,
		-0.249419, -0.816025, -0.521435,
		32.052372, 34.829540, 36.391228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789913, 35.298420, 36.267620>,  <32.226963, 35.400757, 36.756229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789913, 35.298420, 36.267620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480263, 35.082161, 36.135906>,  <32.294472, 34.952404, 36.056877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480263, 35.082161, 36.135906>,  <32.789913, 35.298420, 36.267620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480263, 35.082161, 36.135906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249074, 0.218072, -0.943614,
		0.581969, -0.812494, -0.034155,
		-0.774129, -0.540646, -0.329282,
		32.248024, 34.919968, 36.037121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090343, 34.797329, 35.840023>,  <32.789913, 35.298420, 36.267620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090343, 34.797329, 35.840023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712646, 34.846680, 35.717922>,  <32.486027, 34.876289, 35.644661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712646, 34.846680, 35.717922>,  <33.090343, 34.797329, 35.840023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712646, 34.846680, 35.717922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324120, 0.185485, -0.927654,
		-0.057836, -0.974870, -0.215134,
		-0.944246, 0.123381, -0.305248,
		32.429371, 34.883694, 35.626347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018135, 34.492664, 35.239811>,  <33.090343, 34.797329, 35.840023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018135, 34.492664, 35.239811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691181, 34.721146, 35.209839>,  <32.495010, 34.858234, 35.191856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691181, 34.721146, 35.209839>,  <33.018135, 34.492664, 35.239811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691181, 34.721146, 35.209839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144751, 0.077744, -0.986409,
		-0.557611, -0.817121, -0.146229,
		-0.817384, 0.571200, -0.074928,
		32.445965, 34.892506, 35.187359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499882, 34.301014, 34.675159>,  <33.018135, 34.492664, 35.239811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499882, 34.301014, 34.675159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502995, 34.696846, 34.732677>,  <32.504860, 34.934345, 34.767189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502995, 34.696846, 34.732677>,  <32.499882, 34.301014, 34.675159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502995, 34.696846, 34.732677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290649, 0.135357, -0.947207,
		-0.956798, 0.049163, -0.286567,
		0.007779, 0.989576, 0.143799,
		32.505329, 34.993717, 34.775818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517277, 33.697750, 34.233734>,  <32.499882, 34.301014, 34.675159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517277, 33.697750, 34.233734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487629, 33.338467, 34.060425>,  <32.469841, 33.122894, 33.956440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487629, 33.338467, 34.060425>,  <32.517277, 33.697750, 34.233734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487629, 33.338467, 34.060425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361727, -0.429091, 0.827668,
		-0.929333, -0.095379, 0.356711,
		-0.074119, -0.898212, -0.433269,
		32.465393, 33.069004, 33.930443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194061, 33.292492, 34.620445>,  <32.517277, 33.697750, 34.233734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194061, 33.292492, 34.620445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453804, 33.069950, 34.413059>,  <32.609650, 32.936424, 34.288628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453804, 33.069950, 34.413059>,  <32.194061, 33.292492, 34.620445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453804, 33.069950, 34.413059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153361, -0.571946, 0.805828,
		-0.744858, -0.602783, -0.286075,
		0.649359, -0.556354, -0.518462,
		32.648613, 32.903046, 34.257523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061234, 32.496223, 34.565788>,  <32.194061, 33.292492, 34.620445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061234, 32.496223, 34.565788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456192, 32.540424, 34.520454>,  <32.693165, 32.566944, 34.493256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456192, 32.540424, 34.520454>,  <32.061234, 32.496223, 34.565788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456192, 32.540424, 34.520454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157855, -0.634691, 0.756472,
		0.011658, -0.764825, -0.644132,
		0.987394, 0.110498, -0.113332,
		32.752411, 32.573574, 34.486454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219604, 31.812962, 34.308029>,  <32.061234, 32.496223, 34.565788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219604, 31.812962, 34.308029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520134, 31.995363, 34.498848>,  <32.700451, 32.104805, 34.613338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520134, 31.995363, 34.498848>,  <32.219604, 31.812962, 34.308029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520134, 31.995363, 34.498848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034368, -0.748924, 0.661764,
		0.659038, -0.480805, -0.578357,
		0.751325, 0.456004, 0.477045,
		32.745533, 32.132164, 34.641960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658512, 31.320066, 34.503860>,  <32.219604, 31.812962, 34.308029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658512, 31.320066, 34.503860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758976, 31.615908, 34.753632>,  <32.819252, 31.793413, 34.903492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758976, 31.615908, 34.753632>,  <32.658512, 31.320066, 34.503860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758976, 31.615908, 34.753632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064653, -0.656480, 0.751567,
		0.965784, -0.148391, -0.212698,
		0.251158, 0.739604, 0.624425,
		32.834324, 31.837790, 34.940960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253811, 31.135448, 34.859234>,  <32.658512, 31.320066, 34.503860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253811, 31.135448, 34.859234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087742, 31.409781, 35.098320>,  <32.988098, 31.574379, 35.241772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087742, 31.409781, 35.098320>,  <33.253811, 31.135448, 34.859234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087742, 31.409781, 35.098320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021211, -0.664139, 0.747308,
		0.909494, 0.297586, 0.290281,
		-0.415176, 0.685829, 0.597718,
		32.963188, 31.615530, 35.277634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606266, 31.117014, 35.525875>,  <33.253811, 31.135448, 34.859234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606266, 31.117014, 35.525875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259270, 31.291788, 35.620995>,  <33.051071, 31.396652, 35.678066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259270, 31.291788, 35.620995>,  <33.606266, 31.117014, 35.525875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259270, 31.291788, 35.620995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092822, -0.327456, 0.940296,
		0.488716, 0.837771, 0.243508,
		-0.867491, 0.436935, 0.237796,
		32.999023, 31.422869, 35.692333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700352, 31.525839, 36.170280>,  <33.606266, 31.117014, 35.525875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700352, 31.525839, 36.170280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307503, 31.451611, 36.157669>,  <33.071793, 31.407074, 36.150101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307503, 31.451611, 36.157669>,  <33.700352, 31.525839, 36.170280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307503, 31.451611, 36.157669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005036, -0.193363, 0.981115,
		-0.188161, 0.963419, 0.190841,
		-0.982125, -0.185568, -0.031532,
		33.012867, 31.395941, 36.148209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505814, 31.692225, 36.900467>,  <33.700352, 31.525839, 36.170280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505814, 31.692225, 36.900467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197365, 31.480898, 36.758343>,  <33.012295, 31.354101, 36.673069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197365, 31.480898, 36.758343>,  <33.505814, 31.692225, 36.900467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197365, 31.480898, 36.758343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193099, -0.337706, 0.921231,
		-0.606693, 0.778995, 0.158397,
		-0.771126, -0.528319, -0.355307,
		32.966026, 31.322403, 36.651749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877949, 31.824129, 37.317142>,  <33.505814, 31.692225, 36.900467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877949, 31.824129, 37.317142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792946, 31.467842, 37.156410>,  <32.741943, 31.254070, 37.059971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792946, 31.467842, 37.156410>,  <32.877949, 31.824129, 37.317142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792946, 31.467842, 37.156410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570333, -0.220854, 0.791166,
		-0.793450, 0.397303, -0.461072,
		-0.212503, -0.890715, -0.401832,
		32.729195, 31.200628, 37.035862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334213, 31.685484, 37.656658>,  <32.877949, 31.824129, 37.317142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334213, 31.685484, 37.656658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403595, 31.321787, 37.505295>,  <32.445225, 31.103569, 37.414478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403595, 31.321787, 37.505295>,  <32.334213, 31.685484, 37.656658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403595, 31.321787, 37.505295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444794, -0.415134, 0.793613,
		-0.878677, 0.030658, -0.476432,
		0.173452, -0.909244, -0.378405,
		32.455631, 31.049013, 37.391773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708225, 31.237577, 37.853054>,  <32.334213, 31.685484, 37.656658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708225, 31.237577, 37.853054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025612, 31.002932, 37.788193>,  <32.216045, 30.862144, 37.749275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025612, 31.002932, 37.788193>,  <31.708225, 31.237577, 37.853054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025612, 31.002932, 37.788193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223005, -0.528130, 0.819358,
		-0.566284, -0.613973, -0.549872,
		0.793468, -0.586614, -0.162152,
		32.263653, 30.826948, 37.739548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434017, 30.586451, 38.040112>,  <31.708225, 31.237577, 37.853054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434017, 30.586451, 38.040112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829905, 30.529346, 38.036575>,  <32.067436, 30.495085, 38.034454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829905, 30.529346, 38.036575>,  <31.434017, 30.586451, 38.040112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829905, 30.529346, 38.036575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054843, -0.435866, 0.898339,
		-0.132101, -0.888617, -0.439214,
		0.989718, -0.142759, -0.008844,
		32.126820, 30.486519, 38.033920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615431, 29.814737, 38.100792>,  <31.434017, 30.586451, 38.040112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615431, 29.814737, 38.100792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930613, 30.029068, 38.222126>,  <32.119720, 30.157667, 38.294926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930613, 30.029068, 38.222126>,  <31.615431, 29.814737, 38.100792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930613, 30.029068, 38.222126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039002, -0.535093, 0.843893,
		0.614497, -0.653118, -0.442527,
		0.787955, 0.535829, 0.303340,
		32.167000, 30.189817, 38.313129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777994, 29.376865, 38.524803>,  <31.615431, 29.814737, 38.100792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777994, 29.376865, 38.524803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015678, 29.686687, 38.611496>,  <32.158291, 29.872581, 38.663513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015678, 29.686687, 38.611496>,  <31.777994, 29.376865, 38.524803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015678, 29.686687, 38.611496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092097, -0.333219, 0.938341,
		0.799018, -0.537613, -0.269337,
		0.594213, 0.774556, 0.216736,
		32.193943, 29.919054, 38.676517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346626, 29.105812, 38.831440>,  <31.777994, 29.376865, 38.524803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346626, 29.105812, 38.831440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338676, 29.482000, 38.967159>,  <32.333908, 29.707714, 39.048592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338676, 29.482000, 38.967159>,  <32.346626, 29.105812, 38.831440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338676, 29.482000, 38.967159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203680, -0.328436, 0.922304,
		0.978836, 0.087439, -0.185027,
		-0.019876, 0.940470, 0.339294,
		32.332714, 29.764141, 39.068947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988613, 29.177635, 39.308102>,  <32.346626, 29.105812, 38.831440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988613, 29.177635, 39.308102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769855, 29.493647, 39.418926>,  <32.638599, 29.683254, 39.485420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769855, 29.493647, 39.418926>,  <32.988613, 29.177635, 39.308102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769855, 29.493647, 39.418926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064598, -0.369771, 0.926875,
		0.834706, 0.489004, 0.253259,
		-0.546894, 0.790028, 0.277061,
		32.605789, 29.730656, 39.502045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306335, 29.379436, 39.844101>,  <32.988613, 29.177635, 39.308102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306335, 29.379436, 39.844101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937756, 29.534292, 39.857052>,  <32.716606, 29.627207, 39.864822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937756, 29.534292, 39.857052>,  <33.306335, 29.379436, 39.844101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937756, 29.534292, 39.857052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127443, -0.379960, 0.916182,
		0.366995, 0.840091, 0.399453,
		-0.921452, 0.387141, 0.032380,
		32.661320, 29.650434, 39.866764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345005, 29.867809, 40.422451>,  <33.306335, 29.379436, 39.844101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345005, 29.867809, 40.422451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976196, 29.735508, 40.341980>,  <32.754910, 29.656128, 40.293697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976196, 29.735508, 40.341980>,  <33.345005, 29.867809, 40.422451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976196, 29.735508, 40.341980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073114, -0.361526, 0.929491,
		-0.380162, 0.871723, 0.309154,
		-0.922026, -0.330753, -0.201174,
		32.699589, 29.636282, 40.281628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997757, 30.072607, 40.965691>,  <33.345005, 29.867809, 40.422451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997757, 30.072607, 40.965691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761089, 29.791214, 40.808189>,  <32.619091, 29.622377, 40.713688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761089, 29.791214, 40.808189>,  <32.997757, 30.072607, 40.965691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761089, 29.791214, 40.808189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208332, -0.338410, 0.917647,
		-0.778800, 0.624972, 0.053668,
		-0.591665, -0.703483, -0.393756,
		32.583591, 29.580170, 40.690063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247303, 30.098751, 41.200127>,  <32.997757, 30.072607, 40.965691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247303, 30.098751, 41.200127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308525, 29.721176, 41.083126>,  <32.345257, 29.494631, 41.012928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308525, 29.721176, 41.083126>,  <32.247303, 30.098751, 41.200127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308525, 29.721176, 41.083126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215708, -0.320760, 0.922271,
		-0.964388, -0.078063, -0.252708,
		0.153054, -0.943938, -0.292498,
		32.354443, 29.437994, 40.995377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657330, 29.777664, 41.423489>,  <32.247303, 30.098751, 41.200127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657330, 29.777664, 41.423489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924814, 29.481918, 41.392086>,  <32.085304, 29.304470, 41.373245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924814, 29.481918, 41.392086>,  <31.657330, 29.777664, 41.423489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924814, 29.481918, 41.392086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402517, -0.448768, 0.797864,
		-0.625143, -0.501944, -0.597703,
		0.668713, -0.739365, -0.078503,
		32.125427, 29.260109, 41.368534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266304, 29.293005, 41.764065>,  <31.657330, 29.777664, 41.423489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266304, 29.293005, 41.764065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639143, 29.150309, 41.738995>,  <31.862846, 29.064692, 41.723953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639143, 29.150309, 41.738995>,  <31.266304, 29.293005, 41.764065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639143, 29.150309, 41.738995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143096, -0.521656, 0.841070,
		-0.332738, -0.774992, -0.537283,
		0.932099, -0.356739, -0.062676,
		31.918772, 29.043287, 41.720192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308247, 28.575970, 41.614910>,  <31.266304, 29.293005, 41.764065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308247, 28.575970, 41.614910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659615, 28.651594, 41.790470>,  <31.870436, 28.696968, 41.895805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659615, 28.651594, 41.790470>,  <31.308247, 28.575970, 41.614910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659615, 28.651594, 41.790470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170685, -0.733722, 0.657662,
		0.446370, -0.652617, -0.612246,
		0.878419, 0.189059, 0.438903,
		31.923140, 28.708311, 41.922142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625467, 27.937874, 41.835861>,  <31.308247, 28.575970, 41.614910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625467, 27.937874, 41.835861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835772, 28.181995, 42.072876>,  <31.961954, 28.328468, 42.215084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835772, 28.181995, 42.072876>,  <31.625467, 27.937874, 41.835861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835772, 28.181995, 42.072876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231447, -0.567672, 0.790051,
		0.818539, -0.552521, -0.157208,
		0.525763, 0.610302, 0.592541,
		31.993500, 28.365086, 42.250637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029404, 27.484610, 42.183392>,  <31.625467, 27.937874, 41.835861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029404, 27.484610, 42.183392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071522, 27.807920, 42.415115>,  <32.096794, 28.001907, 42.554150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071522, 27.807920, 42.415115>,  <32.029404, 27.484610, 42.183392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071522, 27.807920, 42.415115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099104, -0.571119, 0.814863,
		0.989490, -0.143216, 0.019966,
		0.105298, 0.808277, 0.579310,
		32.103111, 28.050404, 42.588909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583294, 27.380896, 42.752785>,  <32.029404, 27.484610, 42.183392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583294, 27.380896, 42.752785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339008, 27.670874, 42.880211>,  <32.192436, 27.844860, 42.956665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339008, 27.670874, 42.880211>,  <32.583294, 27.380896, 42.752785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339008, 27.670874, 42.880211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197373, -0.528966, 0.825372,
		0.766858, 0.441192, 0.466132,
		-0.610715, 0.724945, 0.318563,
		32.155792, 27.888357, 42.975780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808670, 27.628428, 43.362823>,  <32.583294, 27.380896, 42.752785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808670, 27.628428, 43.362823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416252, 27.705759, 43.368073>,  <32.180801, 27.752159, 43.371223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416252, 27.705759, 43.368073>,  <32.808670, 27.628428, 43.362823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416252, 27.705759, 43.368073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093338, -0.530808, 0.842337,
		0.169814, 0.825147, 0.538792,
		-0.981046, 0.193330, 0.013121,
		32.121937, 27.763758, 43.372009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146366, 28.226648, 43.780094>,  <32.808670, 27.628428, 43.362823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146366, 28.226648, 43.780094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533272, 28.213802, 43.880787>,  <33.765415, 28.206095, 43.941204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533272, 28.213802, 43.880787>,  <33.146366, 28.226648, 43.780094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533272, 28.213802, 43.880787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212044, 0.647249, -0.732192,
		-0.139420, 0.761602, 0.632870,
		0.967264, -0.032114, 0.251733,
		33.823452, 28.204168, 43.956306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472717, 28.965384, 43.746197>,  <33.146366, 28.226648, 43.780094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472717, 28.965384, 43.746197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794170, 28.730566, 43.707088>,  <33.987041, 28.589676, 43.683624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794170, 28.730566, 43.707088>,  <33.472717, 28.965384, 43.746197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794170, 28.730566, 43.707088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377147, 0.629439, -0.679387,
		0.460369, 0.509103, 0.727238,
		0.803630, -0.587044, -0.097767,
		34.035259, 28.554453, 43.677757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071484, 29.379623, 43.742214>,  <33.472717, 28.965384, 43.746197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071484, 29.379623, 43.742214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199345, 29.047071, 43.560390>,  <34.276062, 28.847540, 43.451294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199345, 29.047071, 43.560390>,  <34.071484, 29.379623, 43.742214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199345, 29.047071, 43.560390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659846, 0.539602, -0.522909,
		0.680020, -0.132794, 0.721067,
		0.319650, -0.831382, -0.454564,
		34.295238, 28.797657, 43.424023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753826, 29.553268, 43.523418>,  <34.071484, 29.379623, 43.742214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753826, 29.553268, 43.523418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687050, 29.230341, 43.297016>,  <34.646984, 29.036585, 43.161175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687050, 29.230341, 43.297016>,  <34.753826, 29.553268, 43.523418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687050, 29.230341, 43.297016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448171, 0.449200, -0.772892,
		0.878222, -0.382694, 0.286828,
		-0.166938, -0.807319, -0.566010,
		34.636967, 28.988146, 43.127213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344734, 29.466564, 43.111244>,  <34.753826, 29.553268, 43.523418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344734, 29.466564, 43.111244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063625, 29.251518, 42.924877>,  <34.894958, 29.122490, 42.813057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063625, 29.251518, 42.924877>,  <35.344734, 29.466564, 43.111244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063625, 29.251518, 42.924877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361001, 0.294831, -0.884733,
		0.613012, -0.789965, -0.013120,
		-0.702776, -0.537615, -0.465914,
		34.852791, 29.090233, 42.785103>
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
