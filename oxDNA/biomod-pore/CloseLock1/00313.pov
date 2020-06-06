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
	<24.544849, 34.464344, 35.022873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.369841, 34.815807, 34.946426>,  <24.264835, 35.026688, 34.900558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.369841, 34.815807, 34.946426>,  <24.544849, 34.464344, 35.022873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.369841, 34.815807, 34.946426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896052, -0.408239, 0.174445,
		0.075258, 0.247573, 0.965942,
		-0.437523, 0.878663, -0.191115,
		24.238585, 35.079407, 34.889091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047033, 34.264492, 35.631580>,  <24.544849, 34.464344, 35.022873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047033, 34.264492, 35.631580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218739, 33.905178, 35.669132>,  <25.321762, 33.689590, 35.691666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218739, 33.905178, 35.669132>,  <25.047033, 34.264492, 35.631580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218739, 33.905178, 35.669132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725513, 0.281042, -0.628209,
		0.537927, 0.337779, 0.772360,
		0.429262, -0.898288, 0.093883,
		25.347517, 33.635693, 35.697296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788303, 34.409924, 35.778542>,  <25.047033, 34.264492, 35.631580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788303, 34.409924, 35.778542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688978, 34.078465, 35.577869>,  <25.629383, 33.879589, 35.457466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688978, 34.078465, 35.577869>,  <25.788303, 34.409924, 35.778542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688978, 34.078465, 35.577869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608480, 0.269541, -0.746391,
		0.753719, -0.490601, 0.437285,
		-0.248314, -0.828648, -0.501679,
		25.614485, 33.829868, 35.427364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433113, 33.957371, 35.727394>,  <25.788303, 34.409924, 35.778542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433113, 33.957371, 35.727394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204454, 33.844456, 35.419228>,  <26.067259, 33.776707, 35.234329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204454, 33.844456, 35.419228>,  <26.433113, 33.957371, 35.727394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204454, 33.844456, 35.419228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711343, 0.297445, -0.636803,
		0.408916, -0.912054, 0.030769,
		-0.571646, -0.282286, -0.770413,
		26.032961, 33.759769, 35.188103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801029, 33.484238, 35.254421>,  <26.433113, 33.957371, 35.727394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801029, 33.484238, 35.254421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511417, 33.658989, 35.040913>,  <26.337650, 33.763840, 34.912807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511417, 33.658989, 35.040913>,  <26.801029, 33.484238, 35.254421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511417, 33.658989, 35.040913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666414, 0.243404, -0.704732,
		-0.177963, -0.865961, -0.467376,
		-0.724032, 0.436882, -0.533772,
		26.294209, 33.790054, 34.880779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974789, 33.440941, 34.498451>,  <26.801029, 33.484238, 35.254421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974789, 33.440941, 34.498451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363445, 33.513176, 34.559505>,  <27.596640, 33.556515, 34.596138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363445, 33.513176, 34.559505>,  <26.974789, 33.440941, 34.498451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363445, 33.513176, 34.559505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089928, 0.314793, -0.944890,
		-0.218682, 0.931823, 0.289627,
		0.971643, 0.180585, 0.152637,
		27.654938, 33.567352, 34.605297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024488, 34.068375, 34.308746>,  <26.974789, 33.440941, 34.498451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024488, 34.068375, 34.308746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393259, 33.914360, 34.291809>,  <27.614521, 33.821949, 34.281647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393259, 33.914360, 34.291809>,  <27.024488, 34.068375, 34.308746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393259, 33.914360, 34.291809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075782, 0.286488, -0.955082,
		0.379877, 0.877308, 0.293300,
		0.921928, -0.385040, -0.042346,
		27.669838, 33.798847, 34.279106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508848, 34.529221, 33.901936>,  <27.024488, 34.068375, 34.308746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508848, 34.529221, 33.901936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617550, 34.146240, 33.863094>,  <27.682772, 33.916451, 33.839790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617550, 34.146240, 33.863094>,  <27.508848, 34.529221, 33.901936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617550, 34.146240, 33.863094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167727, 0.146482, -0.974890,
		0.947637, 0.248645, 0.200398,
		0.271756, -0.957454, -0.097107,
		27.699076, 33.859005, 33.833961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091064, 34.507282, 33.423851>,  <27.508848, 34.529221, 33.901936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091064, 34.507282, 33.423851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984217, 34.122063, 33.410049>,  <27.920109, 33.890930, 33.401768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984217, 34.122063, 33.410049>,  <28.091064, 34.507282, 33.423851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984217, 34.122063, 33.410049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201051, -0.020678, -0.979362,
		0.942458, -0.268542, 0.199145,
		-0.267118, -0.963046, -0.034503,
		27.904081, 33.833149, 33.399700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587538, 34.212227, 32.895855>,  <28.091064, 34.507282, 33.423851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587538, 34.212227, 32.895855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297594, 33.941288, 32.946114>,  <28.123629, 33.778725, 32.976269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297594, 33.941288, 32.946114>,  <28.587538, 34.212227, 32.895855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297594, 33.941288, 32.946114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084018, -0.267944, -0.959764,
		0.683757, -0.685135, 0.251130,
		-0.724857, -0.677345, 0.125645,
		28.080137, 33.738083, 32.983807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742510, 33.628044, 32.527023>,  <28.587538, 34.212227, 32.895855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742510, 33.628044, 32.527023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343584, 33.610176, 32.550240>,  <28.104229, 33.599457, 32.564167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343584, 33.610176, 32.550240>,  <28.742510, 33.628044, 32.527023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343584, 33.610176, 32.550240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050811, -0.148688, -0.987578,
		0.052747, -0.987875, 0.146019,
		-0.997314, -0.044672, 0.058038,
		28.044390, 33.596775, 32.567650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582779, 33.119553, 32.088150>,  <28.742510, 33.628044, 32.527023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582779, 33.119553, 32.088150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221966, 33.286144, 32.133549>,  <28.005478, 33.386101, 32.160786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221966, 33.286144, 32.133549>,  <28.582779, 33.119553, 32.088150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221966, 33.286144, 32.133549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250399, -0.290678, -0.923476,
		-0.351620, -0.861424, 0.366487,
		-0.902033, 0.416480, 0.113492,
		27.951355, 33.411087, 32.167595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998970, 32.550953, 31.995388>,  <28.582779, 33.119553, 32.088150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998970, 32.550953, 31.995388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880024, 32.925236, 31.919458>,  <27.808657, 33.149803, 31.873901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880024, 32.925236, 31.919458>,  <27.998970, 32.550953, 31.995388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880024, 32.925236, 31.919458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225001, -0.261896, -0.938501,
		-0.927873, -0.236368, 0.288413,
		-0.297366, 0.935703, -0.189823,
		27.790813, 33.205948, 31.862511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384655, 32.502556, 31.637623>,  <27.998970, 32.550953, 31.995388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384655, 32.502556, 31.637623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473915, 32.883099, 31.552660>,  <27.527472, 33.111423, 31.501682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473915, 32.883099, 31.552660>,  <27.384655, 32.502556, 31.637623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473915, 32.883099, 31.552660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224871, -0.161782, -0.960864,
		-0.948492, 0.262183, 0.177832,
		0.223152, 0.951361, -0.212406,
		27.540861, 33.168507, 31.488937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736303, 32.673176, 31.200871>,  <27.384655, 32.502556, 31.637623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736303, 32.673176, 31.200871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059242, 32.897633, 31.127867>,  <27.253006, 33.032307, 31.084064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059242, 32.897633, 31.127867>,  <26.736303, 32.673176, 31.200871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059242, 32.897633, 31.127867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226340, 0.008854, -0.974008,
		-0.544942, 0.827671, 0.134157,
		0.807346, 0.561144, -0.182510,
		27.301447, 33.065975, 31.073114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630888, 32.935509, 30.486856>,  <26.736303, 32.673176, 31.200871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630888, 32.935509, 30.486856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006865, 33.071449, 30.499575>,  <27.232450, 33.153015, 30.507206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006865, 33.071449, 30.499575>,  <26.630888, 32.935509, 30.486856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006865, 33.071449, 30.499575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169210, -0.383024, -0.908108,
		-0.296447, 0.858948, -0.417526,
		0.939940, 0.339855, 0.031797,
		27.288847, 33.173405, 30.509113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855549, 33.440609, 29.904333>,  <26.630888, 32.935509, 30.486856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855549, 33.440609, 29.904333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203259, 33.277611, 30.016268>,  <27.411884, 33.179813, 30.083429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203259, 33.277611, 30.016268>,  <26.855549, 33.440609, 29.904333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203259, 33.277611, 30.016268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191486, -0.244323, -0.950599,
		0.455734, 0.879918, -0.134355,
		0.869275, -0.407494, 0.279838,
		27.464041, 33.155361, 30.100220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272789, 33.541195, 29.367884>,  <26.855549, 33.440609, 29.904333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272789, 33.541195, 29.367884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497753, 33.265705, 29.550905>,  <27.632732, 33.100410, 29.660719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497753, 33.265705, 29.550905>,  <27.272789, 33.541195, 29.367884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497753, 33.265705, 29.550905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462106, -0.197078, -0.864649,
		0.685676, 0.697728, 0.207423,
		0.562412, -0.688720, 0.457556,
		27.666477, 33.059090, 29.688171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888344, 33.732758, 29.174551>,  <27.272789, 33.541195, 29.367884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888344, 33.732758, 29.174551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903748, 33.349575, 29.288279>,  <27.912991, 33.119667, 29.356516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903748, 33.349575, 29.288279>,  <27.888344, 33.732758, 29.174551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903748, 33.349575, 29.288279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316665, -0.258166, -0.912729,
		0.947756, 0.125182, 0.293409,
		0.038509, -0.957956, 0.284319,
		27.915300, 33.062187, 29.373575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498581, 33.430801, 28.808907>,  <27.888344, 33.732758, 29.174551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498581, 33.430801, 28.808907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294895, 33.099277, 28.901667>,  <28.172684, 32.900364, 28.957323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294895, 33.099277, 28.901667>,  <28.498581, 33.430801, 28.808907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294895, 33.099277, 28.901667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108695, -0.329225, -0.937975,
		0.853747, -0.452426, 0.257734,
		-0.509216, -0.828808, 0.231898,
		28.142130, 32.850636, 28.971235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912001, 32.866821, 28.593685>,  <28.498581, 33.430801, 28.808907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912001, 32.866821, 28.593685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541912, 32.717854, 28.622732>,  <28.319859, 32.628471, 28.640162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541912, 32.717854, 28.622732>,  <28.912001, 32.866821, 28.593685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541912, 32.717854, 28.622732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122302, -0.473885, -0.872053,
		0.359181, -0.797959, 0.483995,
		-0.925220, -0.372418, 0.072619,
		28.264347, 32.606129, 28.644518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843908, 32.066479, 28.524719>,  <28.912001, 32.866821, 28.593685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843908, 32.066479, 28.524719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471815, 32.190308, 28.445900>,  <28.248558, 32.264606, 28.398609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471815, 32.190308, 28.445900>,  <28.843908, 32.066479, 28.524719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471815, 32.190308, 28.445900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001918, -0.541063, -0.840980,
		-0.366959, -0.781931, 0.503910,
		-0.930236, 0.309571, -0.197048,
		28.192745, 32.283180, 28.386786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364866, 31.502327, 28.291153>,  <28.843908, 32.066479, 28.524719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364866, 31.502327, 28.291153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213547, 31.849766, 28.163137>,  <28.122755, 32.058228, 28.086329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213547, 31.849766, 28.163137>,  <28.364866, 31.502327, 28.291153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213547, 31.849766, 28.163137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051495, -0.364946, -0.929604,
		-0.924249, -0.335189, 0.182788,
		-0.378301, 0.868598, -0.320040,
		28.100056, 32.110344, 28.067125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812342, 31.269093, 27.780455>,  <28.364866, 31.502327, 28.291153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812342, 31.269093, 27.780455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856874, 31.655931, 27.688953>,  <27.883595, 31.888035, 27.634052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856874, 31.655931, 27.688953>,  <27.812342, 31.269093, 27.780455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856874, 31.655931, 27.688953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285652, -0.189328, -0.939445,
		-0.951844, 0.169935, 0.255175,
		0.111333, 0.967097, -0.228753,
		27.890274, 31.946060, 27.620327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328827, 31.328442, 27.288448>,  <27.812342, 31.269093, 27.780455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328827, 31.328442, 27.288448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572836, 31.642145, 27.243183>,  <27.719242, 31.830368, 27.216024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572836, 31.642145, 27.243183>,  <27.328827, 31.328442, 27.288448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572836, 31.642145, 27.243183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056688, -0.099256, -0.993446,
		-0.790353, 0.612440, -0.016090,
		0.610023, 0.784261, -0.113165,
		27.755842, 31.877424, 27.209234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060694, 31.852798, 26.772295>,  <27.328827, 31.328442, 27.288448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060694, 31.852798, 26.772295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459719, 31.874863, 26.789400>,  <27.699133, 31.888102, 26.799664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459719, 31.874863, 26.789400>,  <27.060694, 31.852798, 26.772295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459719, 31.874863, 26.789400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051021, -0.158221, -0.986085,
		-0.047627, 0.985862, -0.160650,
		0.997561, 0.055161, 0.042764,
		27.758987, 31.891411, 26.802229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315563, 32.373634, 26.350634>,  <27.060694, 31.852798, 26.772295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315563, 32.373634, 26.350634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578047, 32.075012, 26.394541>,  <27.735537, 31.895840, 26.420885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578047, 32.075012, 26.394541>,  <27.315563, 32.373634, 26.350634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578047, 32.075012, 26.394541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007450, -0.139050, -0.990257,
		0.754543, 0.650633, -0.085684,
		0.656208, -0.746553, 0.109767,
		27.774910, 31.851046, 26.427471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869909, 32.347618, 25.822680>,  <27.315563, 32.373634, 26.350634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869909, 32.347618, 25.822680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854059, 31.960623, 25.922590>,  <27.844549, 31.728424, 25.982536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854059, 31.960623, 25.922590>,  <27.869909, 32.347618, 25.822680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854059, 31.960623, 25.922590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039150, -0.248277, -0.967898,
		0.998447, -0.048132, -0.028040,
		-0.039625, -0.967493, 0.249776,
		27.842171, 31.670376, 25.997522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633129, 32.735828, 25.923195>,  <27.869909, 32.347618, 25.822680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633129, 32.735828, 25.923195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837793, 33.078060, 25.891735>,  <28.960592, 33.283401, 25.872858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837793, 33.078060, 25.891735>,  <28.633129, 32.735828, 25.923195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837793, 33.078060, 25.891735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708115, -0.471766, -0.525366,
		-0.486598, 0.213114, -0.847234,
		0.511659, 0.855581, -0.078651,
		28.991291, 33.334736, 25.868139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745773, 32.984188, 25.155619>,  <28.633129, 32.735828, 25.923195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745773, 32.984188, 25.155619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003363, 33.026356, 25.458719>,  <29.157917, 33.051655, 25.640579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003363, 33.026356, 25.458719>,  <28.745773, 32.984188, 25.155619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003363, 33.026356, 25.458719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648977, -0.599767, -0.468090,
		0.405127, 0.793200, -0.454649,
		0.643973, 0.105421, 0.757751,
		29.196554, 33.057983, 25.686045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470627, 32.976170, 24.790501>,  <28.745773, 32.984188, 25.155619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470627, 32.976170, 24.790501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533331, 32.871746, 25.171505>,  <29.570953, 32.809090, 25.400106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533331, 32.871746, 25.171505>,  <29.470627, 32.976170, 24.790501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533331, 32.871746, 25.171505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844903, -0.463970, -0.266216,
		0.511434, 0.846510, 0.147839,
		0.156761, -0.261061, 0.952509,
		29.580359, 32.793427, 25.457258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133444, 32.944633, 24.793404>,  <29.470627, 32.976170, 24.790501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133444, 32.944633, 24.793404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006247, 32.733612, 25.108507>,  <29.929928, 32.606998, 25.297569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006247, 32.733612, 25.108507>,  <30.133444, 32.944633, 24.793404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006247, 32.733612, 25.108507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838825, -0.543800, -0.025570,
		0.441874, 0.652662, 0.615451,
		-0.317994, -0.527555, 0.787760,
		29.910849, 32.575344, 25.344835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637342, 32.944115, 25.398693>,  <30.133444, 32.944633, 24.793404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637342, 32.944115, 25.398693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406427, 32.618191, 25.377422>,  <30.267878, 32.422638, 25.364660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406427, 32.618191, 25.377422>,  <30.637342, 32.944115, 25.398693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406427, 32.618191, 25.377422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814070, -0.579382, 0.040070,
		-0.063458, -0.020157, 0.997781,
		-0.577289, -0.814807, -0.053175,
		30.233240, 32.373749, 25.361469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233343, 32.565624, 25.592831>,  <30.637342, 32.944115, 25.398693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233343, 32.565624, 25.592831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980314, 32.266331, 25.512835>,  <30.828497, 32.086754, 25.464836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980314, 32.266331, 25.512835>,  <31.233343, 32.565624, 25.592831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980314, 32.266331, 25.512835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740307, -0.660016, 0.127765,
		-0.227595, -0.067233, 0.971432,
		-0.632571, -0.748237, -0.199989,
		30.790543, 32.041859, 25.452837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296862, 31.939228, 26.056698>,  <31.233343, 32.565624, 25.592831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296862, 31.939228, 26.056698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147982, 31.808073, 25.709375>,  <31.058653, 31.729380, 25.500982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147982, 31.808073, 25.709375>,  <31.296862, 31.939228, 26.056698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147982, 31.808073, 25.709375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639138, -0.768918, 0.016391,
		-0.673030, -0.548866, 0.495758,
		-0.372200, -0.327890, -0.868306,
		31.036322, 31.709705, 25.448883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365536, 32.197987, 26.793463>,  <31.296862, 31.939228, 26.056698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365536, 32.197987, 26.793463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108938, 32.504753, 26.786213>,  <30.954979, 32.688812, 26.781862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108938, 32.504753, 26.786213>,  <31.365536, 32.197987, 26.793463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108938, 32.504753, 26.786213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159509, 0.156460, 0.974719,
		0.750361, 0.622385, -0.222698,
		-0.641494, 0.766914, -0.018125,
		30.916491, 32.734829, 26.780775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665224, 32.794540, 27.108736>,  <31.365536, 32.197987, 26.793463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665224, 32.794540, 27.108736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269388, 32.836185, 27.148487>,  <31.031887, 32.861172, 27.172337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269388, 32.836185, 27.148487>,  <31.665224, 32.794540, 27.108736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269388, 32.836185, 27.148487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116078, 0.169105, 0.978739,
		0.085096, 0.980083, -0.179430,
		-0.989588, 0.104115, 0.099376,
		30.972511, 32.867420, 27.178299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605448, 33.356476, 27.558825>,  <31.665224, 32.794540, 27.108736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605448, 33.356476, 27.558825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246853, 33.179996, 27.575111>,  <31.031696, 33.074108, 27.584885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246853, 33.179996, 27.575111>,  <31.605448, 33.356476, 27.558825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246853, 33.179996, 27.575111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097871, 0.286822, 0.952971,
		-0.432124, 0.850342, -0.300312,
		-0.896488, -0.441194, 0.040719,
		30.977907, 33.047638, 27.587328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197229, 33.869415, 27.955378>,  <31.605448, 33.356476, 27.558825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197229, 33.869415, 27.955378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000376, 33.522568, 27.986118>,  <30.882263, 33.314457, 28.004562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000376, 33.522568, 27.986118>,  <31.197229, 33.869415, 27.955378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000376, 33.522568, 27.986118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229570, 0.214434, 0.949376,
		-0.839705, 0.449575, -0.304595,
		-0.492132, -0.867122, 0.076852,
		30.852736, 33.262432, 28.009174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507740, 34.016491, 28.092827>,  <31.197229, 33.869415, 27.955378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507740, 34.016491, 28.092827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558699, 33.642353, 28.224827>,  <30.589273, 33.417870, 28.304028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558699, 33.642353, 28.224827>,  <30.507740, 34.016491, 28.092827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558699, 33.642353, 28.224827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479884, 0.233050, 0.845812,
		-0.868033, -0.266115, -0.419168,
		0.127397, -0.935345, 0.330000,
		30.596918, 33.361748, 28.323826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002636, 34.053299, 28.535496>,  <30.507740, 34.016491, 28.092827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002636, 34.053299, 28.535496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208635, 33.723499, 28.629284>,  <30.332235, 33.525620, 28.685556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208635, 33.723499, 28.629284>,  <30.002636, 34.053299, 28.535496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208635, 33.723499, 28.629284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342175, 0.053056, 0.938137,
		-0.785934, -0.563370, -0.254799,
		0.515000, -0.824499, 0.234470,
		30.363134, 33.476151, 28.699625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560421, 33.523178, 28.798576>,  <30.002636, 34.053299, 28.535496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560421, 33.523178, 28.798576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930586, 33.449558, 28.931084>,  <30.152685, 33.405388, 29.010588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930586, 33.449558, 28.931084>,  <29.560421, 33.523178, 28.798576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930586, 33.449558, 28.931084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360062, -0.154382, 0.920066,
		-0.118202, -0.970716, -0.209138,
		0.925410, -0.184056, 0.331269,
		30.208210, 33.394344, 29.030464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400898, 33.148205, 29.350096>,  <29.560421, 33.523178, 28.798576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400898, 33.148205, 29.350096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791384, 33.193172, 29.424248>,  <30.025675, 33.220154, 29.468739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791384, 33.193172, 29.424248>,  <29.400898, 33.148205, 29.350096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791384, 33.193172, 29.424248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162932, -0.183678, 0.969389,
		0.143028, -0.976537, -0.160993,
		0.976215, 0.112419, 0.185380,
		30.084248, 33.226898, 29.479862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604301, 32.623207, 29.761324>,  <29.400898, 33.148205, 29.350096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604301, 32.623207, 29.761324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879404, 32.907116, 29.822275>,  <30.044466, 33.077461, 29.858845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879404, 32.907116, 29.822275>,  <29.604301, 32.623207, 29.761324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879404, 32.907116, 29.822275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037830, -0.174574, 0.983917,
		0.724956, -0.682459, -0.093214,
		0.687756, 0.709770, 0.152376,
		30.085732, 33.120049, 29.867989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132505, 32.349972, 30.194527>,  <29.604301, 32.623207, 29.761324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132505, 32.349972, 30.194527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178310, 32.744820, 30.239229>,  <30.205793, 32.981728, 30.266050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178310, 32.744820, 30.239229>,  <30.132505, 32.349972, 30.194527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178310, 32.744820, 30.239229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062583, -0.119441, 0.990867,
		0.991448, -0.106473, -0.075454,
		0.114513, 0.987115, 0.111756,
		30.212664, 33.040955, 30.272757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651779, 32.315948, 30.811548>,  <30.132505, 32.349972, 30.194527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651779, 32.315948, 30.811548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474039, 32.672855, 30.779499>,  <30.367395, 32.886997, 30.760269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474039, 32.672855, 30.779499>,  <30.651779, 32.315948, 30.811548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474039, 32.672855, 30.779499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098204, 0.040385, 0.994346,
		0.890454, 0.449707, 0.069679,
		-0.444351, 0.892262, -0.080125,
		30.340734, 32.940533, 30.755463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040718, 32.667599, 31.231405>,  <30.651779, 32.315948, 30.811548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040718, 32.667599, 31.231405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709400, 32.889542, 31.200262>,  <30.510611, 33.022709, 31.181576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709400, 32.889542, 31.200262>,  <31.040718, 32.667599, 31.231405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709400, 32.889542, 31.200262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079832, 0.254413, 0.963795,
		0.554578, 0.792089, -0.255024,
		-0.828293, 0.554859, -0.077857,
		30.460913, 33.056000, 31.176905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144524, 33.408089, 31.541445>,  <31.040718, 32.667599, 31.231405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144524, 33.408089, 31.541445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765057, 33.281651, 31.537249>,  <30.537376, 33.205788, 31.534731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765057, 33.281651, 31.537249>,  <31.144524, 33.408089, 31.541445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765057, 33.281651, 31.537249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055474, 0.133653, 0.989474,
		-0.311366, 0.939266, -0.144327,
		-0.948669, -0.316095, -0.010490,
		30.480455, 33.186821, 31.534101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981310, 33.749146, 32.124908>,  <31.144524, 33.408089, 31.541445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981310, 33.749146, 32.124908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673506, 33.500870, 32.064774>,  <30.488823, 33.351906, 32.028690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673506, 33.500870, 32.064774>,  <30.981310, 33.749146, 32.124908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673506, 33.500870, 32.064774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132897, -0.074622, 0.988317,
		-0.624652, 0.780501, -0.025064,
		-0.769512, -0.620685, -0.150339,
		30.442652, 33.314663, 32.019672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513680, 33.862652, 32.791458>,  <30.981310, 33.749146, 32.124908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513680, 33.862652, 32.791458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395596, 33.521057, 32.620087>,  <30.324745, 33.316101, 32.517262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395596, 33.521057, 32.620087>,  <30.513680, 33.862652, 32.791458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395596, 33.521057, 32.620087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243127, -0.366511, 0.898086,
		-0.923981, 0.369286, -0.099430,
		-0.295209, -0.853989, -0.428433,
		30.307034, 33.264862, 32.491558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903162, 33.777424, 33.044785>,  <30.513680, 33.862652, 32.791458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903162, 33.777424, 33.044785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025013, 33.415279, 32.926449>,  <30.098124, 33.197990, 32.855450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025013, 33.415279, 32.926449>,  <29.903162, 33.777424, 33.044785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025013, 33.415279, 32.926449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170467, -0.357408, 0.918260,
		-0.937094, -0.229294, -0.263210,
		0.304625, -0.905364, -0.295837,
		30.116400, 33.143669, 32.837696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391556, 33.397926, 33.343582>,  <29.903162, 33.777424, 33.044785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391556, 33.397926, 33.343582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697241, 33.150532, 33.270420>,  <29.880651, 33.002094, 33.226524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697241, 33.150532, 33.270420>,  <29.391556, 33.397926, 33.343582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697241, 33.150532, 33.270420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032758, -0.320438, 0.946703,
		-0.644133, -0.717490, -0.265143,
		0.764212, -0.618488, -0.182901,
		29.926504, 32.964985, 33.215549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136972, 32.792728, 33.577206>,  <29.391556, 33.397926, 33.343582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136972, 32.792728, 33.577206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533945, 32.753605, 33.547516>,  <29.772129, 32.730129, 33.529701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533945, 32.753605, 33.547516>,  <29.136972, 32.792728, 33.577206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533945, 32.753605, 33.547516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015779, -0.497887, 0.867099,
		-0.121765, -0.861709, -0.492576,
		0.992434, -0.097810, -0.074222,
		29.831675, 32.724262, 33.525249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301367, 32.108131, 33.672375>,  <29.136972, 32.792728, 33.577206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301367, 32.108131, 33.672375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642073, 32.301453, 33.753284>,  <29.846497, 32.417446, 33.801830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642073, 32.301453, 33.753284>,  <29.301367, 32.108131, 33.672375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642073, 32.301453, 33.753284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105320, -0.536144, 0.837531,
		0.513233, -0.692074, -0.507569,
		0.851763, 0.483305, 0.202277,
		29.897602, 32.446445, 33.813969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655071, 31.514103, 33.979698>,  <29.301367, 32.108131, 33.672375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655071, 31.514103, 33.979698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816641, 31.868366, 34.071316>,  <29.913582, 32.080925, 34.126286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816641, 31.868366, 34.071316>,  <29.655071, 31.514103, 33.979698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816641, 31.868366, 34.071316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214042, -0.334922, 0.917613,
		0.889400, -0.321621, -0.324850,
		0.403923, 0.885656, 0.229040,
		29.937819, 32.134064, 34.140026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253061, 31.399712, 34.300228>,  <29.655071, 31.514103, 33.979698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253061, 31.399712, 34.300228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184994, 31.775684, 34.418598>,  <30.144154, 32.001266, 34.489620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184994, 31.775684, 34.418598>,  <30.253061, 31.399712, 34.300228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184994, 31.775684, 34.418598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019483, -0.297033, 0.954669,
		0.985223, 0.168219, 0.032233,
		-0.170168, 0.939933, 0.295921,
		30.133944, 32.057663, 34.507374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670444, 31.538509, 34.874786>,  <30.253061, 31.399712, 34.300228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670444, 31.538509, 34.874786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414665, 31.843111, 34.917149>,  <30.261198, 32.025871, 34.942566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414665, 31.843111, 34.917149>,  <30.670444, 31.538509, 34.874786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414665, 31.843111, 34.917149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098212, -0.217526, 0.971101,
		0.762534, 0.610569, 0.213886,
		-0.639449, 0.761504, 0.105906,
		30.222830, 32.071564, 34.948921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358549, 31.527287, 35.024418>,  <30.670444, 31.538509, 34.874786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358549, 31.527287, 35.024418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197792, 31.327757, 34.717262>,  <31.101337, 31.208040, 34.532967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197792, 31.327757, 34.717262>,  <31.358549, 31.527287, 35.024418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197792, 31.327757, 34.717262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906410, -0.097640, -0.410960,
		0.130019, -0.861187, 0.491378,
		-0.401892, -0.498822, -0.767893,
		31.077225, 31.178110, 34.486893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036713, 31.424765, 35.476479>,  <31.358549, 31.527287, 35.024418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036713, 31.424765, 35.476479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190327, 31.748133, 35.298054>,  <32.282494, 31.942154, 35.190998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190327, 31.748133, 35.298054>,  <32.036713, 31.424765, 35.476479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190327, 31.748133, 35.298054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272743, 0.362222, 0.891295,
		0.882116, -0.463948, -0.081385,
		0.384035, 0.808422, -0.446060,
		32.305538, 31.990660, 35.164234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683811, 31.570139, 35.852692>,  <32.036713, 31.424765, 35.476479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683811, 31.570139, 35.852692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475166, 31.866461, 35.683395>,  <32.349979, 32.044254, 35.581818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475166, 31.866461, 35.683395>,  <32.683811, 31.570139, 35.852692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475166, 31.866461, 35.683395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079126, 0.451931, 0.888537,
		0.849508, 0.496957, -0.177114,
		-0.521608, 0.740805, -0.423241,
		32.318684, 32.088703, 35.556423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040215, 32.254360, 35.884396>,  <32.683811, 31.570139, 35.852692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040215, 32.254360, 35.884396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645798, 32.313164, 35.853111>,  <32.409149, 32.348446, 35.834339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645798, 32.313164, 35.853111>,  <33.040215, 32.254360, 35.884396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645798, 32.313164, 35.853111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003269, 0.452521, 0.891748,
		0.166484, 0.879553, -0.445723,
		-0.986039, 0.147005, -0.078213,
		32.349987, 32.357265, 35.829647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814438, 32.999241, 36.043636>,  <33.040215, 32.254360, 35.884396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814438, 32.999241, 36.043636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540104, 32.724575, 36.140064>,  <32.375504, 32.559776, 36.197922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540104, 32.724575, 36.140064>,  <32.814438, 32.999241, 36.043636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540104, 32.724575, 36.140064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179379, 0.480532, 0.858436,
		-0.705302, 0.545504, -0.452741,
		-0.685837, -0.686668, 0.241068,
		32.334354, 32.518574, 36.212383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246807, 33.345982, 36.341290>,  <32.814438, 32.999241, 36.043636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246807, 33.345982, 36.341290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218014, 32.978928, 36.497627>,  <32.200737, 32.758694, 36.591431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218014, 32.978928, 36.497627>,  <32.246807, 33.345982, 36.341290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218014, 32.978928, 36.497627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121719, 0.397014, 0.909706,
		-0.989951, 0.017909, -0.140272,
		-0.071982, -0.917638, 0.390844,
		32.196419, 32.703636, 36.614880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619549, 33.226730, 36.712502>,  <32.246807, 33.345982, 36.341290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619549, 33.226730, 36.712502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920118, 33.018337, 36.874458>,  <32.100460, 32.893303, 36.971634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920118, 33.018337, 36.874458>,  <31.619549, 33.226730, 36.712502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920118, 33.018337, 36.874458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157421, 0.454370, 0.876793,
		-0.640765, -0.722583, 0.259411,
		0.751424, -0.520982, 0.404894,
		32.145546, 32.862041, 36.995926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365620, 32.978199, 37.388210>,  <31.619549, 33.226730, 36.712502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365620, 32.978199, 37.388210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763920, 32.980576, 37.424973>,  <32.002899, 32.982002, 37.447029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763920, 32.980576, 37.424973>,  <31.365620, 32.978199, 37.388210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763920, 32.980576, 37.424973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090519, 0.247396, 0.964677,
		-0.017003, -0.968896, 0.246883,
		0.995749, 0.005945, 0.091910,
		32.062645, 32.982361, 37.452545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471842, 32.867268, 38.131218>,  <31.365620, 32.978199, 37.388210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471842, 32.867268, 38.131218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854521, 32.936562, 38.037647>,  <32.084129, 32.978138, 37.981506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854521, 32.936562, 38.037647>,  <31.471842, 32.867268, 38.131218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854521, 32.936562, 38.037647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192444, 0.226532, 0.954803,
		0.218372, -0.958479, 0.183390,
		0.956702, 0.173210, -0.233921,
		32.141529, 32.988533, 37.967468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972198, 32.559574, 38.718933>,  <31.471842, 32.867268, 38.131218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972198, 32.559574, 38.718933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147606, 32.855839, 38.515316>,  <32.252850, 33.033596, 38.393147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147606, 32.855839, 38.515316>,  <31.972198, 32.559574, 38.718933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147606, 32.855839, 38.515316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293215, 0.417504, 0.860067,
		0.849546, -0.526412, -0.034090,
		0.438517, 0.740662, -0.509040,
		32.279160, 33.078037, 38.362602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578423, 32.525700, 38.991417>,  <31.972198, 32.559574, 38.718933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578423, 32.525700, 38.991417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571507, 32.884930, 38.815617>,  <32.567356, 33.100468, 38.710136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571507, 32.884930, 38.815617>,  <32.578423, 32.525700, 38.991417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571507, 32.884930, 38.815617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258343, 0.428651, 0.865747,
		0.965899, -0.098568, -0.239425,
		-0.017295, 0.898077, -0.439498,
		32.566319, 33.154354, 38.683765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003422, 32.844372, 39.349522>,  <32.578423, 32.525700, 38.991417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003422, 32.844372, 39.349522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826557, 33.156498, 39.172615>,  <32.720440, 33.343773, 39.066471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826557, 33.156498, 39.172615>,  <33.003422, 32.844372, 39.349522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826557, 33.156498, 39.172615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253169, 0.581615, 0.773065,
		0.860466, 0.229849, -0.454718,
		-0.442159, 0.780316, -0.442269,
		32.693909, 33.390594, 39.039936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461334, 33.314919, 39.333576>,  <33.003422, 32.844372, 39.349522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461334, 33.314919, 39.333576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117912, 33.515553, 39.291054>,  <32.911861, 33.635933, 39.265541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117912, 33.515553, 39.291054>,  <33.461334, 33.314919, 39.333576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117912, 33.515553, 39.291054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220562, 0.548470, 0.806557,
		0.462861, 0.669024, -0.581520,
		-0.858552, 0.501585, -0.106304,
		32.860348, 33.666027, 39.259163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602013, 34.081409, 39.336922>,  <33.461334, 33.314919, 39.333576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602013, 34.081409, 39.336922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214241, 34.050941, 39.430222>,  <32.981579, 34.032661, 39.486202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214241, 34.050941, 39.430222>,  <33.602013, 34.081409, 39.336922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214241, 34.050941, 39.430222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148134, 0.576132, 0.803821,
		-0.195614, 0.813799, -0.547235,
		-0.969428, -0.076174, 0.233251,
		32.923412, 34.028088, 39.500198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378769, 34.742195, 39.488964>,  <33.602013, 34.081409, 39.336922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378769, 34.742195, 39.488964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143326, 34.476593, 39.673416>,  <33.002060, 34.317234, 39.784088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143326, 34.476593, 39.673416>,  <33.378769, 34.742195, 39.488964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143326, 34.476593, 39.673416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103914, 0.503533, 0.857704,
		-0.801712, 0.552770, -0.227385,
		-0.588608, -0.664003, 0.461129,
		32.966743, 34.277393, 39.811756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877148, 35.160988, 39.879978>,  <33.378769, 34.742195, 39.488964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877148, 35.160988, 39.879978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884575, 34.794312, 40.039646>,  <32.889030, 34.574306, 40.135448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884575, 34.794312, 40.039646>,  <32.877148, 35.160988, 39.879978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884575, 34.794312, 40.039646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054197, 0.399579, 0.915095,
		-0.998358, 0.004640, 0.057102,
		0.018571, -0.916687, 0.399174,
		32.890144, 34.519306, 40.159397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313297, 35.182636, 40.454243>,  <32.877148, 35.160988, 39.879978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313297, 35.182636, 40.454243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526985, 34.865524, 40.571617>,  <32.655197, 34.675259, 40.642044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526985, 34.865524, 40.571617>,  <32.313297, 35.182636, 40.454243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526985, 34.865524, 40.571617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081806, 0.393978, 0.915472,
		-0.841376, -0.465061, 0.275327,
		0.534223, -0.792780, 0.293438,
		32.687252, 34.627689, 40.659649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059910, 34.873447, 41.104378>,  <32.313297, 35.182636, 40.454243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059910, 34.873447, 41.104378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425800, 34.717075, 41.063484>,  <32.645336, 34.623253, 41.038948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425800, 34.717075, 41.063484>,  <32.059910, 34.873447, 41.104378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425800, 34.717075, 41.063484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150453, 0.094690, 0.984072,
		-0.375022, -0.915537, 0.145431,
		0.914725, -0.390929, -0.102234,
		32.700218, 34.599796, 41.032814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198822, 34.472183, 41.686443>,  <32.059910, 34.873447, 41.104378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198822, 34.472183, 41.686443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577087, 34.501305, 41.559692>,  <32.804047, 34.518776, 41.483643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577087, 34.501305, 41.559692>,  <32.198822, 34.472183, 41.686443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577087, 34.501305, 41.559692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312444, 0.066172, 0.947629,
		0.089963, -0.995148, 0.039828,
		0.945667, 0.072808, -0.316881,
		32.860786, 34.523144, 41.464626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514229, 33.992088, 41.996712>,  <32.198822, 34.472183, 41.686443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514229, 33.992088, 41.996712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818665, 34.231155, 41.895882>,  <33.001328, 34.374596, 41.835384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818665, 34.231155, 41.895882>,  <32.514229, 33.992088, 41.996712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818665, 34.231155, 41.895882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295395, 0.026615, 0.955004,
		0.577480, -0.801305, -0.156290,
		0.761091, 0.597663, -0.252071,
		33.046993, 34.410454, 41.820259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062870, 33.778698, 42.287579>,  <32.514229, 33.992088, 41.996712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062870, 33.778698, 42.287579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146118, 34.166382, 42.234924>,  <33.196068, 34.398991, 42.203331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146118, 34.166382, 42.234924>,  <33.062870, 33.778698, 42.287579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146118, 34.166382, 42.234924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209848, 0.087204, 0.973837,
		0.955328, -0.230297, -0.185237,
		0.208118, 0.969205, -0.131636,
		33.208553, 34.457142, 42.195435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780075, 33.977329, 42.569466>,  <33.062870, 33.778698, 42.287579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780075, 33.977329, 42.569466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536221, 34.294399, 42.568630>,  <33.389908, 34.484642, 42.568130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536221, 34.294399, 42.568630>,  <33.780075, 33.977329, 42.569466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536221, 34.294399, 42.568630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171545, 0.134498, 0.975952,
		0.773898, 0.594617, -0.217974,
		-0.609635, 0.792680, -0.002084,
		33.353329, 34.532204, 42.568005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141098, 34.417007, 42.943115>,  <33.780075, 33.977329, 42.569466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141098, 34.417007, 42.943115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762897, 34.546394, 42.958012>,  <33.535976, 34.624027, 42.966949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762897, 34.546394, 42.958012>,  <34.141098, 34.417007, 42.943115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762897, 34.546394, 42.958012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130249, 0.270905, 0.953753,
		0.298423, 0.906629, -0.298274,
		-0.945505, 0.323471, 0.037243,
		33.479244, 34.643436, 42.969185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063671, 34.868793, 43.514660>,  <34.141098, 34.417007, 42.943115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063671, 34.868793, 43.514660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666729, 34.842579, 43.472824>,  <33.428566, 34.826851, 43.447723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666729, 34.842579, 43.472824>,  <34.063671, 34.868793, 43.514660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666729, 34.842579, 43.472824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115079, 0.184895, 0.975997,
		-0.044623, 0.980571, -0.191023,
		-0.992354, -0.065534, -0.104592,
		33.369022, 34.822918, 43.441448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771927, 35.452297, 43.878319>,  <34.063671, 34.868793, 43.514660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771927, 35.452297, 43.878319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430344, 35.246429, 43.847664>,  <33.225395, 35.122910, 43.829269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430344, 35.246429, 43.847664>,  <33.771927, 35.452297, 43.878319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430344, 35.246429, 43.847664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238957, 0.257048, 0.936390,
		-0.462230, 0.817950, -0.342491,
		-0.853957, -0.514668, -0.076640,
		33.174156, 35.092030, 43.824673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232735, 35.845974, 44.144581>,  <33.771927, 35.452297, 43.878319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232735, 35.845974, 44.144581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122604, 35.461472, 44.149952>,  <33.056526, 35.230770, 44.153175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122604, 35.461472, 44.149952>,  <33.232735, 35.845974, 44.144581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122604, 35.461472, 44.149952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378980, 0.121359, 0.917413,
		-0.883500, 0.247496, -0.397711,
		-0.275322, -0.961258, 0.013424,
		33.040009, 35.173096, 44.153980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626858, 35.808521, 44.612675>,  <33.232735, 35.845974, 44.144581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626858, 35.808521, 44.612675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725163, 35.422268, 44.578838>,  <32.784145, 35.190517, 44.558537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725163, 35.422268, 44.578838>,  <32.626858, 35.808521, 44.612675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725163, 35.422268, 44.578838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055743, -0.101199, 0.993303,
		-0.967726, -0.239400, -0.078698,
		0.245761, -0.965633, -0.084588,
		32.798889, 35.132580, 44.553463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062214, 35.321777, 44.966930>,  <32.626858, 35.808521, 44.612675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062214, 35.321777, 44.966930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414547, 35.134846, 44.936600>,  <32.625946, 35.022686, 44.918404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414547, 35.134846, 44.936600>,  <32.062214, 35.321777, 44.966930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414547, 35.134846, 44.936600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061040, -0.270916, 0.960666,
		-0.469486, -0.841553, -0.267155,
		0.880828, -0.467326, -0.075823,
		32.678795, 34.994648, 44.913853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050663, 34.812748, 45.525921>,  <32.062214, 35.321777, 44.966930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050663, 34.812748, 45.525921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442909, 34.833599, 45.450375>,  <32.678257, 34.846111, 45.405048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442909, 34.833599, 45.450375>,  <32.050663, 34.812748, 45.525921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442909, 34.833599, 45.450375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195560, -0.201707, 0.959724,
		0.011937, -0.978058, -0.207992,
		0.980620, 0.052131, -0.188861,
		32.737095, 34.849239, 45.393715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302868, 34.397854, 45.954933>,  <32.050663, 34.812748, 45.525921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302868, 34.397854, 45.954933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628147, 34.610775, 45.860813>,  <32.823315, 34.738529, 45.804340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628147, 34.610775, 45.860813>,  <32.302868, 34.397854, 45.954933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628147, 34.610775, 45.860813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338052, -0.102909, 0.935484,
		0.473747, -0.840275, -0.263631,
		0.813194, 0.532304, -0.235304,
		32.872105, 34.770466, 45.790222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734882, 34.029652, 46.238419>,  <32.302868, 34.397854, 45.954933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734882, 34.029652, 46.238419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911003, 34.387917, 46.213367>,  <33.016678, 34.602875, 46.198338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911003, 34.387917, 46.213367>,  <32.734882, 34.029652, 46.238419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911003, 34.387917, 46.213367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406833, -0.136845, 0.903194,
		0.800386, -0.423160, -0.424638,
		0.440306, 0.895661, -0.062627,
		33.043095, 34.656616, 46.194580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387478, 33.975288, 46.608093>,  <32.734882, 34.029652, 46.238419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387478, 33.975288, 46.608093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337170, 34.371998, 46.598537>,  <33.306984, 34.610023, 46.592804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337170, 34.371998, 46.598537>,  <33.387478, 33.975288, 46.608093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337170, 34.371998, 46.598537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235100, 0.053191, 0.970515,
		0.963800, 0.116441, -0.239856,
		-0.125766, 0.991772, -0.023890,
		33.299438, 34.669529, 46.591370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955479, 34.224751, 46.867970>,  <33.387478, 33.975288, 46.608093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955479, 34.224751, 46.867970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686749, 34.516960, 46.916935>,  <33.525513, 34.692287, 46.946316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686749, 34.516960, 46.916935>,  <33.955479, 34.224751, 46.867970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686749, 34.516960, 46.916935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305212, 0.122438, 0.944380,
		0.674908, 0.671817, -0.305223,
		-0.671821, 0.730528, 0.122412,
		33.485203, 34.736118, 46.953659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289745, 34.648914, 47.361427>,  <33.955479, 34.224751, 46.867970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289745, 34.648914, 47.361427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899181, 34.731323, 47.387272>,  <33.664841, 34.780769, 47.402779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899181, 34.731323, 47.387272>,  <34.289745, 34.648914, 47.361427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899181, 34.731323, 47.387272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077340, 0.054348, 0.995522,
		0.201586, 0.977037, -0.069000,
		-0.976413, 0.206020, 0.064608,
		33.606258, 34.793129, 47.406654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311005, 35.096146, 47.918381>,  <34.289745, 34.648914, 47.361427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311005, 35.096146, 47.918381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932240, 34.980129, 47.862915>,  <33.704979, 34.910519, 47.829636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932240, 34.980129, 47.862915>,  <34.311005, 35.096146, 47.918381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932240, 34.980129, 47.862915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152535, 0.025664, 0.987965,
		-0.282994, 0.956669, -0.068544,
		-0.946915, -0.290043, -0.138663,
		33.648167, 34.893116, 47.821316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896626, 35.592415, 48.325390>,  <34.311005, 35.096146, 47.918381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896626, 35.592415, 48.325390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693474, 35.250839, 48.280060>,  <33.571583, 35.045895, 48.252861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693474, 35.250839, 48.280060>,  <33.896626, 35.592415, 48.325390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693474, 35.250839, 48.280060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097233, -0.073889, 0.992515,
		-0.855920, 0.515102, -0.045504,
		-0.507884, -0.853938, -0.113328,
		33.541107, 34.994659, 48.246063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328629, 35.750462, 48.697746>,  <33.896626, 35.592415, 48.325390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328629, 35.750462, 48.697746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341785, 35.351852, 48.667114>,  <33.349678, 35.112686, 48.648735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341785, 35.351852, 48.667114>,  <33.328629, 35.750462, 48.697746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341785, 35.351852, 48.667114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134362, -0.080335, 0.987671,
		-0.990386, -0.022194, -0.136536,
		0.032889, -0.996521, -0.076581,
		33.351650, 35.052895, 48.644138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818466, 35.523621, 49.137531>,  <33.328629, 35.750462, 48.697746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818466, 35.523621, 49.137531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036377, 35.193775, 49.076565>,  <33.167122, 34.995869, 49.039986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036377, 35.193775, 49.076565>,  <32.818466, 35.523621, 49.137531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036377, 35.193775, 49.076565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081132, -0.232728, 0.969152,
		-0.834648, -0.515605, -0.193687,
		0.544775, -0.824615, -0.152413,
		33.199810, 34.946392, 49.030842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426216, 35.113686, 49.529621>,  <32.818466, 35.523621, 49.137531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426216, 35.113686, 49.529621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780239, 34.931641, 49.490532>,  <32.992653, 34.822414, 49.467079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780239, 34.931641, 49.490532>,  <32.426216, 35.113686, 49.529621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780239, 34.931641, 49.490532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038508, -0.280802, 0.958993,
		-0.463891, -0.844999, -0.266050,
		0.885055, -0.455113, -0.097722,
		33.045757, 34.795105, 49.461216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433727, 34.357601, 49.764599>,  <32.426216, 35.113686, 49.529621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433727, 34.357601, 49.764599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823502, 34.447319, 49.769722>,  <33.057365, 34.501148, 49.772797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823502, 34.447319, 49.769722>,  <32.433727, 34.357601, 49.764599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823502, 34.447319, 49.769722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055925, -0.297401, 0.953113,
		0.217587, -0.928033, -0.302342,
		0.974437, 0.224293, 0.012810,
		33.115833, 34.514606, 49.773563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798977, 33.833324, 50.179440>,  <32.433727, 34.357601, 49.764599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798977, 33.833324, 50.179440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056362, 34.139004, 50.197155>,  <33.210793, 34.322411, 50.207783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056362, 34.139004, 50.197155>,  <32.798977, 33.833324, 50.179440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056362, 34.139004, 50.197155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263845, -0.275729, 0.924316,
		0.718571, -0.583075, -0.379050,
		0.643461, 0.764197, 0.044290,
		33.249401, 34.368263, 50.210442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415344, 33.544987, 50.577168>,  <32.798977, 33.833324, 50.179440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415344, 33.544987, 50.577168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471310, 33.940544, 50.597210>,  <33.504887, 34.177879, 50.609234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471310, 33.940544, 50.597210>,  <33.415344, 33.544987, 50.577168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471310, 33.940544, 50.597210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264525, -0.086091, 0.960529,
		0.954176, -0.121134, -0.273632,
		0.139910, 0.988896, 0.050103,
		33.513283, 34.237213, 50.612240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802959, 33.614655, 51.053230>,  <33.415344, 33.544987, 50.577168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802959, 33.614655, 51.053230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684464, 33.996674, 51.048626>,  <33.613365, 34.225883, 51.045864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684464, 33.996674, 51.048626>,  <33.802959, 33.614655, 51.053230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684464, 33.996674, 51.048626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291004, 0.101733, 0.951297,
		0.909703, 0.278459, -0.308059,
		-0.296237, 0.955045, -0.011514,
		33.595592, 34.283188, 51.045170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393738, 34.041912, 51.275105>,  <33.802959, 33.614655, 51.053230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393738, 34.041912, 51.275105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057541, 34.247383, 51.344048>,  <33.855824, 34.370667, 51.385414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057541, 34.247383, 51.344048>,  <34.393738, 34.041912, 51.275105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057541, 34.247383, 51.344048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304261, 0.184240, 0.934602,
		0.448330, 0.837968, -0.311144,
		-0.840491, 0.513679, 0.172361,
		33.805393, 34.401485, 51.395756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492760, 34.410679, 51.842163>,  <34.393738, 34.041912, 51.275105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492760, 34.410679, 51.842163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109528, 34.520000, 51.807800>,  <33.879589, 34.585594, 51.787182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109528, 34.520000, 51.807800>,  <34.492760, 34.410679, 51.842163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109528, 34.520000, 51.807800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024254, 0.221411, 0.974879,
		0.285461, 0.936099, -0.205502,
		-0.958084, 0.273305, -0.085908,
		33.822102, 34.601994, 51.782028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380604, 35.096458, 52.224079>,  <34.492760, 34.410679, 51.842163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380604, 35.096458, 52.224079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030346, 34.905006, 52.198280>,  <33.820190, 34.790134, 52.182800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030346, 34.905006, 52.198280>,  <34.380604, 35.096458, 52.224079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030346, 34.905006, 52.198280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170750, 0.181890, 0.968380,
		-0.451765, 0.858970, -0.240997,
		-0.875644, -0.478631, -0.064498,
		33.767654, 34.761417, 52.178932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823887, 35.500069, 52.553520>,  <34.380604, 35.096458, 52.224079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823887, 35.500069, 52.553520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694096, 35.121731, 52.557354>,  <33.616222, 34.894730, 52.559654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694096, 35.121731, 52.557354>,  <33.823887, 35.500069, 52.553520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694096, 35.121731, 52.557354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181076, 0.072053, 0.980826,
		-0.928400, 0.316520, -0.194649,
		-0.324476, -0.945845, 0.009580,
		33.596752, 34.837978, 52.560226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098373, 35.354263, 53.002834>,  <33.823887, 35.500069, 52.553520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098373, 35.354263, 53.002834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326172, 35.026608, 52.975464>,  <33.462849, 34.830013, 52.959042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326172, 35.026608, 52.975464>,  <33.098373, 35.354263, 53.002834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326172, 35.026608, 52.975464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066500, -0.128887, 0.989427,
		-0.819302, -0.558921, -0.127873,
		0.569493, -0.819144, -0.068429,
		33.497021, 34.780865, 52.954937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882572, 34.918060, 53.541348>,  <33.098373, 35.354263, 53.002834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882572, 34.918060, 53.541348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250641, 34.793602, 53.446289>,  <33.471481, 34.718925, 53.389252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250641, 34.793602, 53.446289>,  <32.882572, 34.918060, 53.541348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250641, 34.793602, 53.446289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147035, -0.287929, 0.946297,
		-0.362867, -0.905694, -0.219193,
		0.920167, -0.311150, -0.237649,
		33.526691, 34.700256, 53.374996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027203, 34.135864, 53.630470>,  <32.882572, 34.918060, 53.541348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027203, 34.135864, 53.630470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344200, 34.371418, 53.693932>,  <33.534397, 34.512749, 53.732010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344200, 34.371418, 53.693932>,  <33.027203, 34.135864, 53.630470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344200, 34.371418, 53.693932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063794, -0.338755, 0.938709,
		0.606534, -0.733800, -0.306029,
		0.792494, 0.588882, 0.158654,
		33.581947, 34.548084, 53.741528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411366, 34.230934, 54.298157>,  <33.027203, 34.135864, 53.630470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411366, 34.230934, 54.298157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693611, 34.022949, 54.105598>,  <33.862961, 33.898159, 53.990063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693611, 34.022949, 54.105598>,  <33.411366, 34.230934, 54.298157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693611, 34.022949, 54.105598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708175, 0.494086, 0.504349,
		-0.024394, -0.696788, 0.716862,
		0.705616, -0.519967, -0.481395,
		33.905296, 33.866959, 53.961182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660271, 33.740597, 54.795830>,  <33.411366, 34.230934, 54.298157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660271, 33.740597, 54.795830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896622, 33.852695, 54.493221>,  <34.038433, 33.919956, 54.311657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896622, 33.852695, 54.493221>,  <33.660271, 33.740597, 54.795830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896622, 33.852695, 54.493221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625775, 0.432628, 0.649030,
		0.509183, -0.856908, 0.080256,
		0.590880, 0.280253, -0.756518,
		34.073887, 33.936771, 54.266266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297825, 33.535057, 55.053242>,  <33.660271, 33.740597, 54.795830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297825, 33.535057, 55.053242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335567, 33.817806, 54.772835>,  <34.358212, 33.987457, 54.604591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335567, 33.817806, 54.772835>,  <34.297825, 33.535057, 55.053242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335567, 33.817806, 54.772835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796088, 0.369244, 0.479482,
		0.597779, -0.603313, -0.527894,
		0.094356, 0.706875, -0.701017,
		34.363873, 34.029869, 54.562531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910820, 33.536030, 55.194977>,  <34.297825, 33.535057, 55.053242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910820, 33.536030, 55.194977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147522, 33.215820, 55.232922>,  <35.289543, 33.023697, 55.255688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147522, 33.215820, 55.232922>,  <34.910820, 33.536030, 55.194977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147522, 33.215820, 55.232922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324786, -0.344459, -0.880830,
		0.737796, 0.490425, -0.463832,
		0.591752, -0.800519, 0.094858,
		35.325047, 32.975666, 55.261379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223064, 33.459774, 54.536011>,  <34.910820, 33.536030, 55.194977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223064, 33.459774, 54.536011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266613, 33.097363, 54.699604>,  <35.292744, 32.879917, 54.797760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266613, 33.097363, 54.699604>,  <35.223064, 33.459774, 54.536011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266613, 33.097363, 54.699604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338036, -0.420652, -0.841892,
		0.934815, -0.046593, -0.352066,
		0.108872, -0.906025, 0.408982,
		35.299274, 32.825554, 54.822300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386742, 33.081219, 53.851002>,  <35.223064, 33.459774, 54.536011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386742, 33.081219, 53.851002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339046, 32.782066, 54.112217>,  <35.310429, 32.602577, 54.268948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339046, 32.782066, 54.112217>,  <35.386742, 33.081219, 53.851002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339046, 32.782066, 54.112217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405414, -0.563727, -0.719619,
		0.906323, -0.350557, -0.235982,
		-0.119238, -0.747878, 0.653040,
		35.303276, 32.557701, 54.308128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398136, 32.632027, 53.448383>,  <35.386742, 33.081219, 53.851002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398136, 32.632027, 53.448383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218441, 32.437248, 53.748001>,  <35.110622, 32.320381, 53.927773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218441, 32.437248, 53.748001>,  <35.398136, 32.632027, 53.448383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218441, 32.437248, 53.748001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367308, -0.663609, -0.651696,
		0.814415, -0.567896, 0.119258,
		-0.449237, -0.486947, 0.749046,
		35.083672, 32.291164, 53.972713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576118, 31.844891, 53.557957>,  <35.398136, 32.632027, 53.448383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576118, 31.844891, 53.557957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195034, 31.942747, 53.630058>,  <34.966385, 32.001461, 53.673321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195034, 31.942747, 53.630058>,  <35.576118, 31.844891, 53.557957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195034, 31.942747, 53.630058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288665, -0.543289, -0.788359,
		-0.094934, -0.803111, 0.588217,
		-0.952712, 0.244640, 0.180253,
		34.909222, 32.016140, 53.684135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060596, 31.268970, 53.584541>,  <35.576118, 31.844891, 53.557957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060596, 31.268970, 53.584541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867748, 31.604378, 53.482998>,  <34.752037, 31.805622, 53.422070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867748, 31.604378, 53.482998>,  <35.060596, 31.268970, 53.584541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867748, 31.604378, 53.482998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257156, -0.412440, -0.873936,
		-0.837513, -0.356063, 0.414477,
		-0.482123, 0.838518, -0.253861,
		34.723110, 31.855932, 53.406841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404766, 31.106510, 53.362957>,  <35.060596, 31.268970, 53.584541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404766, 31.106510, 53.362957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468151, 31.462845, 53.192638>,  <34.506184, 31.676645, 53.090446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468151, 31.462845, 53.192638>,  <34.404766, 31.106510, 53.362957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468151, 31.462845, 53.192638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368693, -0.346662, -0.862491,
		-0.915945, 0.293661, 0.273511,
		0.158464, 0.890836, -0.425794,
		34.515690, 31.730095, 53.064899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910667, 31.088709, 52.873394>,  <34.404766, 31.106510, 53.362957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910667, 31.088709, 52.873394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132580, 31.395683, 52.744858>,  <34.265728, 31.579868, 52.667736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132580, 31.395683, 52.744858>,  <33.910667, 31.088709, 52.873394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132580, 31.395683, 52.744858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396394, -0.095764, -0.913072,
		-0.731496, 0.633934, 0.251079,
		0.554784, 0.767435, -0.321339,
		34.299015, 31.625914, 52.648457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575169, 31.352501, 52.227055>,  <33.910667, 31.088709, 52.873394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575169, 31.352501, 52.227055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927708, 31.538410, 52.193085>,  <34.139233, 31.649956, 52.172703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927708, 31.538410, 52.193085>,  <33.575169, 31.352501, 52.227055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927708, 31.538410, 52.193085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097668, 0.003355, -0.995213,
		-0.462265, 0.885423, 0.048350,
		0.881347, 0.464775, -0.084926,
		34.192112, 31.677843, 52.167606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408192, 31.966032, 51.807003>,  <33.575169, 31.352501, 52.227055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408192, 31.966032, 51.807003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786049, 31.834805, 51.808491>,  <34.012764, 31.756069, 51.809383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786049, 31.834805, 51.808491>,  <33.408192, 31.966032, 51.807003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786049, 31.834805, 51.808491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003433, -0.021208, -0.999769,
		0.328071, 0.944416, -0.021160,
		0.944647, -0.328068, 0.003716,
		34.069443, 31.736383, 51.809605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785561, 32.440716, 51.453674>,  <33.408192, 31.966032, 51.807003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785561, 32.440716, 51.453674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997120, 32.104202, 51.408932>,  <34.124054, 31.902294, 51.382088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997120, 32.104202, 51.408932>,  <33.785561, 32.440716, 51.453674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997120, 32.104202, 51.408932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038417, 0.107929, -0.993416,
		0.847818, 0.529709, 0.024764,
		0.528894, -0.841284, -0.111854,
		34.155788, 31.851816, 51.375374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267422, 32.626427, 50.922913>,  <33.785561, 32.440716, 51.453674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267422, 32.626427, 50.922913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238029, 32.227821, 50.938717>,  <34.220394, 31.988659, 50.948200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238029, 32.227821, 50.938717>,  <34.267422, 32.626427, 50.922913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238029, 32.227821, 50.938717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005115, -0.039996, -0.999187,
		0.997284, -0.073217, 0.008036,
		-0.073479, -0.996514, 0.039512,
		34.215984, 31.928867, 50.950569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701576, 32.388653, 50.422466>,  <34.267422, 32.626427, 50.922913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701576, 32.388653, 50.422466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453606, 32.078247, 50.468918>,  <34.304821, 31.892002, 50.496788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453606, 32.078247, 50.468918>,  <34.701576, 32.388653, 50.422466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453606, 32.078247, 50.468918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144768, -0.032342, -0.988937,
		0.771188, -0.629882, -0.092293,
		-0.619928, -0.776017, 0.116128,
		34.267628, 31.845442, 50.503757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969105, 31.909323, 49.927841>,  <34.701576, 32.388653, 50.422466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969105, 31.909323, 49.927841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604954, 31.759275, 49.997688>,  <34.386463, 31.669247, 50.039597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604954, 31.759275, 49.997688>,  <34.969105, 31.909323, 49.927841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604954, 31.759275, 49.997688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173723, -0.036501, -0.984118,
		0.375537, -0.926257, -0.031937,
		-0.910380, -0.375121, 0.174619,
		34.331841, 31.646740, 50.050076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919472, 31.089312, 49.729214>,  <34.969105, 31.909323, 49.927841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919472, 31.089312, 49.729214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556934, 31.257706, 49.714748>,  <34.339413, 31.358742, 49.706070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556934, 31.257706, 49.714748>,  <34.919472, 31.089312, 49.729214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556934, 31.257706, 49.714748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138404, -0.376660, -0.915954,
		-0.399230, -0.825164, 0.399650,
		-0.906344, 0.420989, -0.036168,
		34.285030, 31.384001, 49.703899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659130, 30.645048, 49.353012>,  <34.919472, 31.089312, 49.729214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659130, 30.645048, 49.353012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413822, 30.959919, 49.326931>,  <34.266636, 31.148842, 49.311283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413822, 30.959919, 49.326931>,  <34.659130, 30.645048, 49.353012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413822, 30.959919, 49.326931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171969, -0.213637, -0.961658,
		-0.770924, -0.578544, 0.266388,
		-0.613271, 0.787176, -0.065207,
		34.229839, 31.196072, 49.307369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238544, 30.507591, 48.797379>,  <34.659130, 30.645048, 49.353012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238544, 30.507591, 48.797379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139118, 30.892519, 48.841480>,  <34.079464, 31.123476, 48.867939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139118, 30.892519, 48.841480>,  <34.238544, 30.507591, 48.797379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139118, 30.892519, 48.841480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215375, 0.056063, -0.974921,
		-0.944368, -0.266073, 0.193325,
		-0.248562, 0.962321, 0.110249,
		34.064548, 31.181215, 48.874554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644276, 30.633408, 48.435043>,  <34.238544, 30.507591, 48.797379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644276, 30.633408, 48.435043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807236, 30.998095, 48.456181>,  <33.905010, 31.216908, 48.468864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807236, 30.998095, 48.456181>,  <33.644276, 30.633408, 48.435043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807236, 30.998095, 48.456181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029850, 0.071131, -0.997020,
		-0.912761, 0.404610, 0.056194,
		0.407402, 0.911719, 0.052847,
		33.929455, 31.271610, 48.472034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191113, 31.073915, 48.049545>,  <33.644276, 30.633408, 48.435043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191113, 31.073915, 48.049545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541466, 31.266829, 48.055592>,  <33.751678, 31.382576, 48.059219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541466, 31.266829, 48.055592>,  <33.191113, 31.073915, 48.049545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541466, 31.266829, 48.055592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100484, 0.212947, -0.971883,
		-0.471939, 0.849740, 0.234978,
		0.875886, 0.482281, 0.015113,
		33.804230, 31.411512, 48.060127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149361, 31.761028, 47.851665>,  <33.191113, 31.073915, 48.049545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149361, 31.761028, 47.851665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533970, 31.698999, 47.760956>,  <33.764736, 31.661781, 47.706532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533970, 31.698999, 47.760956>,  <33.149361, 31.761028, 47.851665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533970, 31.698999, 47.760956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163660, 0.339681, -0.926192,
		0.220659, 0.927669, 0.301232,
		0.961522, -0.155073, -0.226776,
		33.822426, 31.652477, 47.692924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202530, 32.118946, 47.217007>,  <33.149361, 31.761028, 47.851665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202530, 32.118946, 47.217007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537205, 31.899977, 47.223721>,  <33.738010, 31.768595, 47.227749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537205, 31.899977, 47.223721>,  <33.202530, 32.118946, 47.217007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537205, 31.899977, 47.223721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077719, 0.088336, -0.993054,
		0.542136, 0.832182, 0.116454,
		0.836689, -0.547422, 0.016786,
		33.788212, 31.735750, 47.228756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511456, 32.394531, 46.660534>,  <33.202530, 32.118946, 47.217007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511456, 32.394531, 46.660534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743263, 32.074959, 46.724865>,  <33.882347, 31.883215, 46.763462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743263, 32.074959, 46.724865>,  <33.511456, 32.394531, 46.660534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743263, 32.074959, 46.724865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060969, -0.154283, -0.986144,
		0.812675, 0.581295, -0.040700,
		0.579519, -0.798933, 0.160823,
		33.917118, 31.835279, 46.773113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100029, 32.471668, 46.265957>,  <33.511456, 32.394531, 46.660534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100029, 32.471668, 46.265957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094303, 32.075356, 46.319847>,  <34.090870, 31.837568, 46.352180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094303, 32.075356, 46.319847>,  <34.100029, 32.471668, 46.265957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094303, 32.075356, 46.319847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090883, -0.135473, -0.986604,
		0.995759, -0.001875, 0.091984,
		-0.014312, -0.990779, 0.134728,
		34.090008, 31.778122, 46.360264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566074, 32.193970, 45.798897>,  <34.100029, 32.471668, 46.265957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566074, 32.193970, 45.798897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347481, 31.877728, 45.909386>,  <34.216324, 31.687983, 45.975681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347481, 31.877728, 45.909386>,  <34.566074, 32.193970, 45.798897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347481, 31.877728, 45.909386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170253, -0.427828, -0.887681,
		0.819978, -0.438079, 0.368405,
		-0.546488, -0.790601, 0.276225,
		34.183533, 31.640547, 45.992252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917820, 31.519693, 45.700638>,  <34.566074, 32.193970, 45.798897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917820, 31.519693, 45.700638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529037, 31.426792, 45.685905>,  <34.295769, 31.371052, 45.677067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529037, 31.426792, 45.685905>,  <34.917820, 31.519693, 45.700638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529037, 31.426792, 45.685905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099930, -0.266161, -0.958735,
		0.212865, -0.935531, 0.281906,
		-0.971958, -0.232252, -0.036832,
		34.237450, 31.357117, 45.674854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661514, 30.799709, 45.350819>,  <34.917820, 31.519693, 45.700638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661514, 30.799709, 45.350819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319427, 31.004807, 45.320614>,  <34.114178, 31.127865, 45.302490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319427, 31.004807, 45.320614>,  <34.661514, 30.799709, 45.350819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319427, 31.004807, 45.320614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154180, -0.390810, -0.907467,
		-0.494811, -0.764435, 0.413282,
		-0.855214, 0.512744, -0.075516,
		34.062862, 31.158630, 45.297958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150352, 30.345451, 45.079266>,  <34.661514, 30.799709, 45.350819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150352, 30.345451, 45.079266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957024, 30.688541, 45.009167>,  <33.841026, 30.894396, 44.967110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957024, 30.688541, 45.009167>,  <34.150352, 30.345451, 45.079266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957024, 30.688541, 45.009167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281733, -0.341923, -0.896502,
		-0.828871, -0.383926, 0.406908,
		-0.483322, 0.857723, -0.175246,
		33.812027, 30.945858, 44.956593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539043, 30.205563, 44.590755>,  <34.150352, 30.345451, 45.079266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539043, 30.205563, 44.590755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559734, 30.603344, 44.554119>,  <33.572147, 30.842012, 44.532139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559734, 30.603344, 44.554119>,  <33.539043, 30.205563, 44.590755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559734, 30.603344, 44.554119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300911, -0.071931, -0.950936,
		-0.952248, 0.076749, 0.295521,
		0.051726, 0.994452, -0.091591,
		33.575253, 30.901680, 44.526642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840462, 30.497938, 44.289703>,  <33.539043, 30.205563, 44.590755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840462, 30.497938, 44.289703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147488, 30.744335, 44.218822>,  <33.331703, 30.892174, 44.176296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147488, 30.744335, 44.218822>,  <32.840462, 30.497938, 44.289703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147488, 30.744335, 44.218822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134177, -0.115915, -0.984155,
		-0.626770, 0.779178, -0.006321,
		0.767565, 0.615991, -0.177200,
		33.377758, 30.929132, 44.165661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593361, 31.014721, 43.812992>,  <32.840462, 30.497938, 44.289703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593361, 31.014721, 43.812992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989521, 30.987408, 43.764919>,  <33.227219, 30.971020, 43.736076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989521, 30.987408, 43.764919>,  <32.593361, 31.014721, 43.812992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989521, 30.987408, 43.764919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120085, 0.005548, -0.992748,
		0.068455, 0.997651, -0.002705,
		0.990401, -0.068283, -0.120182,
		33.286640, 30.966923, 43.728863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626160, 31.432135, 43.242813>,  <32.593361, 31.014721, 43.812992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626160, 31.432135, 43.242813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982376, 31.252609, 43.272480>,  <33.196106, 31.144894, 43.290279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982376, 31.252609, 43.272480>,  <32.626160, 31.432135, 43.242813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982376, 31.252609, 43.272480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124241, 0.083136, -0.988763,
		0.437603, 0.889751, 0.129797,
		0.890543, -0.448812, 0.074163,
		33.249538, 31.117966, 43.294727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060741, 31.724649, 42.844444>,  <32.626160, 31.432135, 43.242813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060741, 31.724649, 42.844444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272255, 31.387680, 42.885838>,  <33.399162, 31.185497, 42.910675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272255, 31.387680, 42.885838>,  <33.060741, 31.724649, 42.844444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272255, 31.387680, 42.885838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189799, -0.001476, -0.981822,
		0.827264, 0.538812, 0.159111,
		0.528782, -0.842425, 0.103487,
		33.430889, 31.134953, 42.916885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699066, 31.867001, 42.594051>,  <33.060741, 31.724649, 42.844444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699066, 31.867001, 42.594051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660217, 31.470333, 42.560211>,  <33.636906, 31.232332, 42.539909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660217, 31.470333, 42.560211>,  <33.699066, 31.867001, 42.594051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660217, 31.470333, 42.560211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046608, 0.080375, -0.995675,
		0.994180, -0.100648, 0.038413,
		-0.097125, -0.991670, -0.084599,
		33.631081, 31.172832, 42.534832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990936, 31.726418, 42.010281>,  <33.699066, 31.867001, 42.594051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990936, 31.726418, 42.010281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810051, 31.376150, 42.078056>,  <33.701519, 31.165991, 42.118721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810051, 31.376150, 42.078056>,  <33.990936, 31.726418, 42.010281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810051, 31.376150, 42.078056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161092, -0.267037, -0.950127,
		0.877241, -0.402366, 0.261821,
		-0.452214, -0.875667, 0.169438,
		33.674385, 31.113449, 42.128887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417198, 31.101158, 41.907444>,  <33.990936, 31.726418, 42.010281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417198, 31.101158, 41.907444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045525, 30.967861, 41.843487>,  <33.822521, 30.887884, 41.805111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045525, 30.967861, 41.843487>,  <34.417198, 31.101158, 41.907444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045525, 30.967861, 41.843487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282027, -0.359611, -0.889461,
		0.238905, -0.871568, 0.428128,
		-0.929185, -0.333240, -0.159893,
		33.766769, 30.867889, 41.795521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538841, 30.507465, 41.602688>,  <34.417198, 31.101158, 41.907444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538841, 30.507465, 41.602688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159058, 30.614239, 41.536625>,  <33.931187, 30.678303, 41.496986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159058, 30.614239, 41.536625>,  <34.538841, 30.507465, 41.602688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159058, 30.614239, 41.536625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117611, -0.185300, -0.975618,
		-0.291030, -0.945732, 0.144540,
		-0.949458, 0.266934, -0.165156,
		33.874222, 30.694319, 41.487080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209808, 29.923880, 41.243301>,  <34.538841, 30.507465, 41.602688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209808, 29.923880, 41.243301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989998, 30.253922, 41.190811>,  <33.858109, 30.451946, 41.159317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989998, 30.253922, 41.190811>,  <34.209808, 29.923880, 41.243301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989998, 30.253922, 41.190811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039175, -0.182344, -0.982454,
		-0.834555, -0.534748, 0.132527,
		-0.549531, 0.825103, -0.131227,
		33.825138, 30.501453, 41.151443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530079, 29.723431, 40.927116>,  <34.209808, 29.923880, 41.243301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530079, 29.723431, 40.927116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575752, 30.109861, 40.834457>,  <33.603157, 30.341719, 40.778862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575752, 30.109861, 40.834457>,  <33.530079, 29.723431, 40.927116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575752, 30.109861, 40.834457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198297, -0.206322, -0.958181,
		-0.973468, 0.155343, 0.168011,
		0.114183, 0.966075, -0.231652,
		33.610008, 30.399683, 40.764961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878269, 29.932354, 40.518517>,  <33.530079, 29.723431, 40.927116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878269, 29.932354, 40.518517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151379, 30.197695, 40.396019>,  <33.315243, 30.356899, 40.322521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151379, 30.197695, 40.396019>,  <32.878269, 29.932354, 40.518517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151379, 30.197695, 40.396019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057702, -0.368884, -0.927683,
		-0.728347, 0.651069, -0.213588,
		0.682775, 0.663350, -0.306243,
		33.356213, 30.396700, 40.304146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668571, 30.159519, 39.860378>,  <32.878269, 29.932354, 40.518517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668571, 30.159519, 39.860378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056438, 30.256979, 39.868099>,  <33.289158, 30.315454, 39.872734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056438, 30.256979, 39.868099>,  <32.668571, 30.159519, 39.860378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056438, 30.256979, 39.868099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027286, -0.029423, -0.999195,
		-0.242884, 0.969417, -0.035179,
		0.969671, 0.243648, 0.019305,
		33.347340, 30.330074, 39.873890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806580, 30.758471, 39.290192>,  <32.668571, 30.159519, 39.860378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806580, 30.758471, 39.290192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174625, 30.613987, 39.350746>,  <33.395454, 30.527298, 39.387077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174625, 30.613987, 39.350746>,  <32.806580, 30.758471, 39.290192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174625, 30.613987, 39.350746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171546, 0.024215, -0.984878,
		0.352079, 0.932171, 0.084244,
		0.920115, -0.361207, 0.151385,
		33.450661, 30.505625, 39.396160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262077, 31.304998, 39.064350>,  <32.806580, 30.758471, 39.290192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262077, 31.304998, 39.064350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437729, 30.945726, 39.056023>,  <33.543121, 30.730164, 39.051025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437729, 30.945726, 39.056023>,  <33.262077, 31.304998, 39.064350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437729, 30.945726, 39.056023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147453, 0.094913, -0.984505,
		0.886240, 0.429257, 0.174119,
		0.439131, -0.898182, -0.020820,
		33.569469, 30.676271, 39.049778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887581, 31.616659, 38.849712>,  <33.262077, 31.304998, 39.064350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887581, 31.616659, 38.849712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839535, 31.227379, 38.771275>,  <33.810707, 30.993811, 38.724213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839535, 31.227379, 38.771275>,  <33.887581, 31.616659, 38.849712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839535, 31.227379, 38.771275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552391, 0.098603, -0.827733,
		0.824886, -0.207742, 0.525744,
		-0.120115, -0.973201, -0.196091,
		33.803501, 30.935419, 38.712448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598515, 31.366922, 38.623123>,  <33.887581, 31.616659, 38.849712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598515, 31.366922, 38.623123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306427, 31.163433, 38.440704>,  <34.131176, 31.041340, 38.331253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306427, 31.163433, 38.440704>,  <34.598515, 31.366922, 38.623123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306427, 31.163433, 38.440704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524882, 0.009582, -0.851121,
		0.437355, -0.860877, 0.260023,
		-0.730219, -0.508723, -0.456049,
		34.087360, 31.010817, 38.303890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838886, 30.681501, 38.390800>,  <34.598515, 31.366922, 38.623123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838886, 30.681501, 38.390800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571709, 30.904352, 38.193432>,  <34.411404, 31.038063, 38.075012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571709, 30.904352, 38.193432>,  <34.838886, 30.681501, 38.390800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571709, 30.904352, 38.193432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630579, 0.071559, -0.772820,
		-0.395249, -0.827339, -0.399109,
		-0.667944, 0.557126, -0.493419,
		34.371326, 31.071489, 38.045406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648754, 30.853191, 38.395332>,  <34.838886, 30.681501, 38.390800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648754, 30.853191, 38.395332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363880, 30.692762, 38.164875>,  <35.192955, 30.596504, 38.026600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363880, 30.692762, 38.164875>,  <35.648754, 30.853191, 38.395332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363880, 30.692762, 38.164875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268830, 0.913975, -0.303942,
		0.648479, -0.061579, -0.758738,
		-0.712184, -0.401072, -0.576139,
		35.150227, 30.572441, 37.992035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274334, 31.215330, 38.150265>,  <35.648754, 30.853191, 38.395332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274334, 31.215330, 38.150265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485119, 31.553274, 38.187202>,  <36.611588, 31.756041, 38.209366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485119, 31.553274, 38.187202>,  <36.274334, 31.215330, 38.150265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485119, 31.553274, 38.187202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350622, -0.315088, 0.881921,
		0.774196, -0.432357, -0.462265,
		0.526958, 0.844859, 0.092345,
		36.643208, 31.806732, 38.214905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903065, 30.968107, 38.406059>,  <36.274334, 31.215330, 38.150265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903065, 30.968107, 38.406059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895260, 31.358871, 38.491161>,  <36.890575, 31.593330, 38.542221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895260, 31.358871, 38.491161>,  <36.903065, 30.968107, 38.406059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895260, 31.358871, 38.491161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370881, -0.190536, 0.908925,
		0.928476, 0.096644, -0.358599,
		-0.019516, 0.976912, 0.212751,
		36.889404, 31.651945, 38.554985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557411, 31.216654, 38.695068>,  <36.903065, 30.968107, 38.406059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557411, 31.216654, 38.695068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253479, 31.436586, 38.833836>,  <37.071121, 31.568546, 38.917095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253479, 31.436586, 38.833836>,  <37.557411, 31.216654, 38.695068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253479, 31.436586, 38.833836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327231, -0.137639, 0.934866,
		0.561766, 0.823858, -0.075339,
		-0.759828, 0.549830, 0.346914,
		37.025532, 31.601536, 38.937908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853104, 31.507338, 39.210522>,  <37.557411, 31.216654, 38.695068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853104, 31.507338, 39.210522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487911, 31.639183, 39.306705>,  <37.268795, 31.718290, 39.364414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487911, 31.639183, 39.306705>,  <37.853104, 31.507338, 39.210522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487911, 31.639183, 39.306705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237651, -0.049442, 0.970092,
		0.331646, 0.942820, -0.033194,
		-0.912980, 0.329615, 0.240459,
		37.214016, 31.738068, 39.378841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975460, 32.036797, 39.534325>,  <37.853104, 31.507338, 39.210522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975460, 32.036797, 39.534325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616352, 31.919771, 39.666031>,  <37.400887, 31.849556, 39.745052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616352, 31.919771, 39.666031>,  <37.975460, 32.036797, 39.534325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616352, 31.919771, 39.666031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318152, 0.086245, 0.944108,
		-0.304611, 0.952348, 0.015652,
		-0.897770, -0.292566, 0.329263,
		37.347019, 31.832001, 39.764809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832794, 32.413120, 40.126572>,  <37.975460, 32.036797, 39.534325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832794, 32.413120, 40.126572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564194, 32.118496, 40.158989>,  <37.403034, 31.941721, 40.178440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564194, 32.118496, 40.158989>,  <37.832794, 32.413120, 40.126572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564194, 32.118496, 40.158989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091770, 0.025868, 0.995444,
		-0.735301, 0.675877, 0.050224,
		-0.671499, -0.736560, 0.081047,
		37.362743, 31.897528, 40.183304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373978, 32.622440, 40.670834>,  <37.832794, 32.413120, 40.126572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373978, 32.622440, 40.670834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319897, 32.228817, 40.624619>,  <37.287449, 31.992643, 40.596889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319897, 32.228817, 40.624619>,  <37.373978, 32.622440, 40.670834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319897, 32.228817, 40.624619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102014, -0.129818, 0.986276,
		-0.985552, 0.121564, 0.117940,
		-0.135206, -0.984058, -0.115541,
		37.279335, 31.933599, 40.589954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857193, 32.468895, 41.009377>,  <37.373978, 32.622440, 40.670834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857193, 32.468895, 41.009377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080029, 32.138016, 40.980026>,  <37.213730, 31.939487, 40.962418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080029, 32.138016, 40.980026>,  <36.857193, 32.468895, 41.009377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080029, 32.138016, 40.980026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029760, -0.068416, 0.997213,
		-0.829917, -0.557724, -0.013496,
		0.557093, -0.827202, -0.073377,
		37.247158, 31.889854, 40.958012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569939, 31.931116, 41.516605>,  <36.857193, 32.468895, 41.009377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569939, 31.931116, 41.516605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913464, 31.738604, 41.446388>,  <37.119579, 31.623096, 41.404259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913464, 31.738604, 41.446388>,  <36.569939, 31.931116, 41.516605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913464, 31.738604, 41.446388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061475, -0.243368, 0.967984,
		-0.508594, -0.842105, -0.179420,
		0.858809, -0.481281, -0.175543,
		37.171108, 31.594219, 41.393726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611607, 31.426443, 41.976505>,  <36.569939, 31.931116, 41.516605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611607, 31.426443, 41.976505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995022, 31.498415, 41.888123>,  <37.225071, 31.541599, 41.835091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995022, 31.498415, 41.888123>,  <36.611607, 31.426443, 41.976505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995022, 31.498415, 41.888123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202205, 0.116863, 0.972346,
		0.200780, -0.976712, 0.075635,
		0.958541, 0.179934, -0.220960,
		37.282585, 31.552395, 41.821835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992344, 30.910967, 42.342159>,  <36.611607, 31.426443, 41.976505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992344, 30.910967, 42.342159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251892, 31.202785, 42.255684>,  <37.407619, 31.377876, 42.203800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251892, 31.202785, 42.255684>,  <36.992344, 30.910967, 42.342159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251892, 31.202785, 42.255684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282077, 0.033244, 0.958815,
		0.706686, -0.683125, -0.184217,
		0.648866, 0.729545, -0.216187,
		37.446552, 31.421648, 42.190826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706516, 30.747490, 42.664806>,  <36.992344, 30.910967, 42.342159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706516, 30.747490, 42.664806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661373, 31.137838, 42.590042>,  <37.634285, 31.372047, 42.545181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661373, 31.137838, 42.590042>,  <37.706516, 30.747490, 42.664806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661373, 31.137838, 42.590042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325893, 0.214065, 0.920853,
		0.938646, 0.043014, -0.342189,
		-0.112860, 0.975872, -0.186914,
		37.627514, 31.430599, 42.533970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228710, 30.954491, 43.081882>,  <37.706516, 30.747490, 42.664806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228710, 30.954491, 43.081882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008038, 31.272814, 42.982010>,  <37.875633, 31.463808, 42.922089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008038, 31.272814, 42.982010>,  <38.228710, 30.954491, 43.081882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008038, 31.272814, 42.982010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197959, 0.415736, 0.887680,
		0.810221, 0.440291, -0.386892,
		-0.551683, 0.795806, -0.249678,
		37.842533, 31.511555, 42.907104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518032, 31.466944, 43.362476>,  <38.228710, 30.954491, 43.081882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518032, 31.466944, 43.362476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164154, 31.644945, 43.306934>,  <37.951828, 31.751745, 43.273609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164154, 31.644945, 43.306934>,  <38.518032, 31.466944, 43.362476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164154, 31.644945, 43.306934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104607, 0.479792, 0.871124,
		0.454277, 0.756155, -0.471022,
		-0.884697, 0.445004, -0.138860,
		37.898746, 31.778446, 43.265278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504486, 32.058701, 43.831181>,  <38.518032, 31.466944, 43.362476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504486, 32.058701, 43.831181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114056, 32.006504, 43.761608>,  <37.879799, 31.975185, 43.719864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114056, 32.006504, 43.761608>,  <38.504486, 32.058701, 43.831181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114056, 32.006504, 43.761608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189990, 0.122749, 0.974082,
		-0.105760, 0.983821, -0.144604,
		-0.976073, -0.130492, -0.173934,
		37.821232, 31.967356, 43.709427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051273, 32.729279, 44.120720>,  <38.504486, 32.058701, 43.831181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051273, 32.729279, 44.120720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826889, 32.400642, 44.080112>,  <37.692257, 32.203461, 44.055748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826889, 32.400642, 44.080112>,  <38.051273, 32.729279, 44.120720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826889, 32.400642, 44.080112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257718, 0.056784, 0.964550,
		-0.786705, 0.567237, -0.243594,
		-0.560961, -0.821595, -0.101515,
		37.658600, 32.154163, 44.049660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471165, 32.945480, 44.403767>,  <38.051273, 32.729279, 44.120720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471165, 32.945480, 44.403767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456726, 32.546196, 44.384666>,  <37.448063, 32.306625, 44.373207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456726, 32.546196, 44.384666>,  <37.471165, 32.945480, 44.403767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456726, 32.546196, 44.384666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478711, -0.024668, 0.877626,
		-0.877230, 0.054538, -0.476962,
		-0.036099, -0.998207, -0.047747,
		37.445896, 32.246735, 44.370342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954941, 32.945484, 44.860817>,  <37.471165, 32.945480, 44.403767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954941, 32.945484, 44.860817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079147, 32.565483, 44.847729>,  <37.153671, 32.337482, 44.839878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079147, 32.565483, 44.847729>,  <36.954941, 32.945484, 44.860817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079147, 32.565483, 44.847729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217630, -0.104554, 0.970415,
		-0.925320, -0.294208, -0.239215,
		0.310514, -0.950005, -0.032718,
		37.172302, 32.280483, 44.837914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386494, 32.474197, 45.080833>,  <36.954941, 32.945484, 44.860817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386494, 32.474197, 45.080833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724007, 32.267120, 45.137424>,  <36.926514, 32.142876, 45.171379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724007, 32.267120, 45.137424>,  <36.386494, 32.474197, 45.080833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724007, 32.267120, 45.137424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235503, -0.120280, 0.964402,
		-0.482247, -0.847069, -0.223409,
		0.843787, -0.517694, 0.141482,
		36.977142, 32.111813, 45.179871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164742, 31.929346, 45.431641>,  <36.386494, 32.474197, 45.080833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164742, 31.929346, 45.431641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560360, 31.953684, 45.485420>,  <36.797733, 31.968287, 45.517689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560360, 31.953684, 45.485420>,  <36.164742, 31.929346, 45.431641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560360, 31.953684, 45.485420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140086, 0.100549, 0.985021,
		0.046416, -0.993070, 0.107972,
		0.989051, 0.060846, 0.134449,
		36.857075, 31.971937, 45.525753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357784, 31.386801, 45.880177>,  <36.164742, 31.929346, 45.431641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357784, 31.386801, 45.880177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657242, 31.648903, 45.920528>,  <36.836918, 31.806164, 45.944740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657242, 31.648903, 45.920528>,  <36.357784, 31.386801, 45.880177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657242, 31.648903, 45.920528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200944, 0.079264, 0.976391,
		0.631788, -0.751238, 0.191010,
		0.748642, 0.655254, 0.100878,
		36.881836, 31.845480, 45.950790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793068, 31.115015, 46.418972>,  <36.357784, 31.386801, 45.880177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793068, 31.115015, 46.418972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846916, 31.510996, 46.401684>,  <36.879227, 31.748585, 46.391312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846916, 31.510996, 46.401684>,  <36.793068, 31.115015, 46.418972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846916, 31.510996, 46.401684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047093, 0.049956, 0.997640,
		0.989777, -0.132272, 0.053345,
		0.134625, 0.989954, -0.043216,
		36.887302, 31.807981, 46.388718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287125, 31.216974, 46.861240>,  <36.793068, 31.115015, 46.418972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287125, 31.216974, 46.861240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106770, 31.569286, 46.803375>,  <36.998558, 31.780674, 46.768654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106770, 31.569286, 46.803375>,  <37.287125, 31.216974, 46.861240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106770, 31.569286, 46.803375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124076, 0.098654, 0.987356,
		0.883914, 0.463138, 0.064802,
		-0.450889, 0.880778, -0.144666,
		36.971504, 31.833519, 46.759975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604519, 31.706406, 47.440239>,  <37.287125, 31.216974, 46.861240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604519, 31.706406, 47.440239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285885, 31.910034, 47.309826>,  <37.094704, 32.032211, 47.231579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285885, 31.910034, 47.309826>,  <37.604519, 31.706406, 47.440239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285885, 31.910034, 47.309826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163831, 0.337349, 0.927014,
		0.581903, 0.791861, -0.185326,
		-0.796585, 0.509070, -0.326036,
		37.046909, 32.062756, 47.212017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601765, 32.483421, 47.612328>,  <37.604519, 31.706406, 47.440239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601765, 32.483421, 47.612328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213665, 32.414471, 47.544323>,  <36.980804, 32.373100, 47.503521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213665, 32.414471, 47.544323>,  <37.601765, 32.483421, 47.612328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213665, 32.414471, 47.544323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228808, 0.423249, 0.876645,
		-0.079160, 0.889463, -0.450099,
		-0.970248, -0.172381, -0.170012,
		36.922592, 32.362755, 47.493320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183884, 33.125538, 47.726654>,  <37.601765, 32.483421, 47.612328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183884, 33.125538, 47.726654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949181, 32.807816, 47.789646>,  <36.808361, 32.617184, 47.827442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949181, 32.807816, 47.789646>,  <37.183884, 33.125538, 47.726654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949181, 32.807816, 47.789646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332226, 0.413491, 0.847733,
		-0.738474, 0.445092, -0.506506,
		-0.586755, -0.794304, 0.157481,
		36.773155, 32.569523, 47.836891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636875, 33.356003, 48.093159>,  <37.183884, 33.125538, 47.726654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636875, 33.356003, 48.093159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592274, 32.966606, 48.173031>,  <36.565514, 32.732967, 48.220955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592274, 32.966606, 48.173031>,  <36.636875, 33.356003, 48.093159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592274, 32.966606, 48.173031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249620, 0.221928, 0.942570,
		-0.961903, 0.055251, -0.267749,
		-0.111499, -0.973496, 0.199682,
		36.558823, 32.674557, 48.232937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076668, 33.335712, 48.476685>,  <36.636875, 33.356003, 48.093159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076668, 33.335712, 48.476685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219742, 32.972801, 48.565147>,  <36.305588, 32.755054, 48.618225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219742, 32.972801, 48.565147>,  <36.076668, 33.335712, 48.476685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219742, 32.972801, 48.565147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255619, 0.132657, 0.957633,
		-0.898176, -0.399064, -0.184467,
		0.357686, -0.907276, 0.221158,
		36.327049, 32.700619, 48.631496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514534, 32.926167, 48.955238>,  <36.076668, 33.335712, 48.476685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514534, 32.926167, 48.955238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877918, 32.770153, 49.015327>,  <36.095951, 32.676544, 49.051380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877918, 32.770153, 49.015327>,  <35.514534, 32.926167, 48.955238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877918, 32.770153, 49.015327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059563, 0.234945, 0.970182,
		-0.413701, -0.890322, 0.190207,
		0.908462, -0.390036, 0.150227,
		36.150455, 32.653141, 49.060394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520611, 32.787338, 49.636669>,  <35.514534, 32.926167, 48.955238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520611, 32.787338, 49.636669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909817, 32.744080, 49.555145>,  <36.143341, 32.718124, 49.506229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909817, 32.744080, 49.555145>,  <35.520611, 32.787338, 49.636669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909817, 32.744080, 49.555145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224250, 0.235410, 0.945671,
		-0.054295, -0.965860, 0.253311,
		0.973018, -0.108150, -0.203813,
		36.201721, 32.711636, 49.493999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830013, 32.506233, 50.227673>,  <35.520611, 32.787338, 49.636669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830013, 32.506233, 50.227673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161880, 32.641258, 50.049820>,  <36.361000, 32.722275, 49.943108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161880, 32.641258, 50.049820>,  <35.830013, 32.506233, 50.227673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161880, 32.641258, 50.049820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362679, 0.279571, 0.888990,
		0.424402, -0.898825, 0.109522,
		0.829666, 0.337568, -0.444636,
		36.410782, 32.742527, 49.916428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406017, 32.271816, 50.589226>,  <35.830013, 32.506233, 50.227673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406017, 32.271816, 50.589226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517765, 32.607807, 50.403152>,  <36.584816, 32.809402, 50.291508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517765, 32.607807, 50.403152>,  <36.406017, 32.271816, 50.589226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517765, 32.607807, 50.403152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400307, 0.338472, 0.851582,
		0.872757, -0.424125, -0.241687,
		0.279373, 0.839973, -0.465184,
		36.601578, 32.859798, 50.263596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051975, 32.361809, 50.755280>,  <36.406017, 32.271816, 50.589226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051975, 32.361809, 50.755280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939854, 32.725883, 50.633301>,  <36.872581, 32.944328, 50.560116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939854, 32.725883, 50.633301>,  <37.051975, 32.361809, 50.755280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939854, 32.725883, 50.633301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397782, 0.399257, 0.826052,
		0.873613, 0.110244, -0.473969,
		-0.280303, 0.910187, -0.304943,
		36.855762, 32.998940, 50.541817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666748, 32.818035, 50.954609>,  <37.051975, 32.361809, 50.755280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666748, 32.818035, 50.954609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331993, 33.031940, 50.907875>,  <37.131142, 33.160286, 50.879833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331993, 33.031940, 50.907875>,  <37.666748, 32.818035, 50.954609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331993, 33.031940, 50.907875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127218, 0.397617, 0.908689,
		0.532393, 0.745604, -0.400791,
		-0.836883, 0.534767, -0.116834,
		37.080929, 33.192371, 50.872826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779793, 33.562050, 51.151329>,  <37.666748, 32.818035, 50.954609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779793, 33.562050, 51.151329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384743, 33.504395, 51.176044>,  <37.147713, 33.469803, 51.190876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384743, 33.504395, 51.176044>,  <37.779793, 33.562050, 51.151329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384743, 33.504395, 51.176044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000822, 0.398775, 0.917048,
		-0.156819, 0.905651, -0.393960,
		-0.987627, -0.144134, 0.061791,
		37.088455, 33.461155, 51.194580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218517, 33.984787, 51.172512>,  <37.779793, 33.562050, 51.151329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218517, 33.984787, 51.172512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080849, 33.713360, 51.432079>,  <36.998249, 33.550503, 51.587822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080849, 33.713360, 51.432079>,  <37.218517, 33.984787, 51.172512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080849, 33.713360, 51.432079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019286, 0.696107, 0.717679,
		-0.938709, 0.234489, -0.252667,
		-0.344171, -0.678564, 0.648920,
		36.977596, 33.509792, 51.626755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496735, 34.402214, 51.770142>,  <37.218517, 33.984787, 51.172512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496735, 34.402214, 51.770142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375065, 34.677811, 52.033283>,  <37.302063, 34.843166, 52.191170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375065, 34.677811, 52.033283>,  <37.496735, 34.402214, 51.770142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375065, 34.677811, 52.033283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216911, 0.722530, -0.656430,
		-0.927592, -0.056974, -0.369224,
		-0.304175, 0.688988, 0.657855,
		37.283813, 34.884506, 52.230640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856178, 34.680763, 51.655144>,  <37.496735, 34.402214, 51.770142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856178, 34.680763, 51.655144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119137, 34.947384, 51.795734>,  <37.276913, 35.107357, 51.880089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119137, 34.947384, 51.795734>,  <36.856178, 34.680763, 51.655144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119137, 34.947384, 51.795734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140151, 0.350136, -0.926154,
		-0.740395, 0.658113, 0.136761,
		0.657399, 0.666553, 0.351474,
		37.316357, 35.147350, 51.901176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596100, 35.313725, 51.406368>,  <36.856178, 34.680763, 51.655144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596100, 35.313725, 51.406368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987217, 35.297688, 51.488655>,  <37.221886, 35.288067, 51.538029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987217, 35.297688, 51.488655>,  <36.596100, 35.313725, 51.406368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987217, 35.297688, 51.488655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209506, 0.214416, -0.954009,
		-0.005863, 0.975919, 0.218053,
		0.977790, -0.040090, 0.205718,
		37.280556, 35.285660, 51.550369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800442, 35.791012, 50.941963>,  <36.596100, 35.313725, 51.406368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800442, 35.791012, 50.941963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161133, 35.650650, 51.042965>,  <37.377548, 35.566433, 51.103565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161133, 35.650650, 51.042965>,  <36.800442, 35.791012, 50.941963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161133, 35.650650, 51.042965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326070, 0.168558, -0.930197,
		0.283848, 0.921116, 0.266412,
		0.901726, -0.350903, 0.252503,
		37.431652, 35.545380, 51.118717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353394, 36.352798, 50.803139>,  <36.800442, 35.791012, 50.941963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353394, 36.352798, 50.803139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498188, 35.979954, 50.807819>,  <37.585064, 35.756248, 50.810627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498188, 35.979954, 50.807819>,  <37.353394, 36.352798, 50.803139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498188, 35.979954, 50.807819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489254, 0.179288, -0.853514,
		0.793470, 0.314690, 0.520938,
		0.361990, -0.932109, 0.011703,
		37.606785, 35.700321, 50.811329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049900, 36.384197, 50.530262>,  <37.353394, 36.352798, 50.803139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049900, 36.384197, 50.530262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950951, 35.997204, 50.509155>,  <37.891579, 35.765007, 50.496490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950951, 35.997204, 50.509155>,  <38.049900, 36.384197, 50.530262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950951, 35.997204, 50.509155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408246, -0.054689, -0.911232,
		0.878715, -0.246959, 0.408499,
		-0.247377, -0.967481, -0.052764,
		37.876736, 35.706959, 50.493324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693909, 35.988758, 50.314270>,  <38.049900, 36.384197, 50.530262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693909, 35.988758, 50.314270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379154, 35.762634, 50.215290>,  <38.190300, 35.626961, 50.155903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379154, 35.762634, 50.215290>,  <38.693909, 35.988758, 50.314270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379154, 35.762634, 50.215290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424546, -0.204909, -0.881915,
		0.447847, -0.799024, 0.401239,
		-0.786889, -0.565308, -0.247454,
		38.143089, 35.593040, 50.141052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987656, 35.433502, 49.966148>,  <38.693909, 35.988758, 50.314270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987656, 35.433502, 49.966148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602947, 35.385101, 49.867882>,  <38.372120, 35.356060, 49.808922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602947, 35.385101, 49.867882>,  <38.987656, 35.433502, 49.966148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602947, 35.385101, 49.867882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270083, -0.270882, -0.923947,
		0.045253, -0.954977, 0.293208,
		-0.961773, -0.121002, -0.245665,
		38.314415, 35.348801, 49.794182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932705, 34.791317, 49.633060>,  <38.987656, 35.433502, 49.966148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932705, 34.791317, 49.633060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642998, 35.025650, 49.487602>,  <38.469173, 35.166248, 49.400330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642998, 35.025650, 49.487602>,  <38.932705, 34.791317, 49.633060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642998, 35.025650, 49.487602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216502, -0.307498, -0.926592,
		-0.654648, -0.749829, 0.095876,
		-0.724267, 0.585834, -0.363642,
		38.425716, 35.201401, 49.378510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539993, 34.426296, 49.107449>,  <38.932705, 34.791317, 49.633060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539993, 34.426296, 49.107449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439869, 34.804504, 49.024178>,  <38.379795, 35.031429, 48.974216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439869, 34.804504, 49.024178>,  <38.539993, 34.426296, 49.107449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439869, 34.804504, 49.024178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100177, -0.188573, -0.976936,
		-0.962968, -0.265395, -0.047517,
		-0.250314, 0.945519, -0.208176,
		38.364777, 35.088161, 48.961723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926826, 34.533089, 48.672260>,  <38.539993, 34.426296, 49.107449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926826, 34.533089, 48.672260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168610, 34.846977, 48.617355>,  <38.313683, 35.035309, 48.584412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168610, 34.846977, 48.617355>,  <37.926826, 34.533089, 48.672260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168610, 34.846977, 48.617355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074754, -0.227416, -0.970924,
		-0.793118, 0.576626, -0.196125,
		0.604463, 0.784719, -0.137262,
		38.349949, 35.082394, 48.576176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676380, 34.714306, 48.087708>,  <37.926826, 34.533089, 48.672260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676380, 34.714306, 48.087708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027596, 34.903259, 48.118435>,  <38.238327, 35.016632, 48.136871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027596, 34.903259, 48.118435>,  <37.676380, 34.714306, 48.087708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027596, 34.903259, 48.118435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185047, -0.187075, -0.964759,
		-0.441365, 0.861312, -0.251673,
		0.878040, 0.472382, 0.076815,
		38.291008, 35.044975, 48.141479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702171, 35.278824, 47.572174>,  <37.676380, 34.714306, 48.087708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702171, 35.278824, 47.572174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079010, 35.198139, 47.679329>,  <38.305115, 35.149727, 47.743622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079010, 35.198139, 47.679329>,  <37.702171, 35.278824, 47.572174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079010, 35.198139, 47.679329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270033, -0.017319, -0.962695,
		0.198829, 0.979291, 0.038153,
		0.942098, -0.201714, 0.267885,
		38.361641, 35.137627, 47.759693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022297, 35.504333, 47.053535>,  <37.702171, 35.278824, 47.572174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022297, 35.504333, 47.053535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301941, 35.270729, 47.218548>,  <38.469727, 35.130566, 47.317554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301941, 35.270729, 47.218548>,  <38.022297, 35.504333, 47.053535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301941, 35.270729, 47.218548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265941, -0.323184, -0.908200,
		0.663719, 0.744640, -0.070629,
		0.699108, -0.584007, 0.412533,
		38.511673, 35.095528, 47.342308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570919, 35.581886, 46.646309>,  <38.022297, 35.504333, 47.053535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570919, 35.581886, 46.646309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643082, 35.244587, 46.848843>,  <38.686378, 35.042206, 46.970364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643082, 35.244587, 46.848843>,  <38.570919, 35.581886, 46.646309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643082, 35.244587, 46.848843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275011, -0.451010, -0.849093,
		0.944364, 0.292430, 0.150538,
		0.180406, -0.843252, 0.506339,
		38.697205, 34.991611, 47.000744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102131, 35.356552, 46.362339>,  <38.570919, 35.581886, 46.646309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102131, 35.356552, 46.362339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934822, 35.036221, 46.533794>,  <38.834438, 34.844021, 46.636669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934822, 35.036221, 46.533794>,  <39.102131, 35.356552, 46.362339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934822, 35.036221, 46.533794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145491, -0.524875, -0.838653,
		0.896596, -0.288420, 0.336051,
		-0.418269, -0.800825, 0.428638,
		38.809341, 34.795975, 46.662384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511456, 34.738083, 46.141590>,  <39.102131, 35.356552, 46.362339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511456, 34.738083, 46.141590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153431, 34.587227, 46.236778>,  <38.938614, 34.496716, 46.293892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153431, 34.587227, 46.236778>,  <39.511456, 34.738083, 46.141590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153431, 34.587227, 46.236778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025366, -0.575828, -0.817177,
		0.445215, -0.725390, 0.524969,
		-0.895064, -0.377136, 0.237967,
		38.884911, 34.474087, 46.308167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548306, 34.111671, 46.037445>,  <39.511456, 34.738083, 46.141590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548306, 34.111671, 46.037445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154724, 34.182632, 46.029758>,  <38.918575, 34.225208, 46.025146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154724, 34.182632, 46.029758>,  <39.548306, 34.111671, 46.037445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154724, 34.182632, 46.029758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080530, -0.537563, -0.839369,
		-0.159231, -0.824351, 0.543222,
		-0.983951, 0.177399, -0.019212,
		38.859539, 34.235851, 46.023994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293812, 33.433075, 45.853188>,  <39.548306, 34.111671, 46.037445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293812, 33.433075, 45.853188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030823, 33.723606, 45.773018>,  <38.873028, 33.897926, 45.724915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030823, 33.723606, 45.773018>,  <39.293812, 33.433075, 45.853188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030823, 33.723606, 45.773018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039092, -0.298524, -0.953601,
		-0.752463, -0.619133, 0.224665,
		-0.657474, 0.726332, -0.200425,
		38.833580, 33.941505, 45.712891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719315, 33.105732, 45.593262>,  <39.293812, 33.433075, 45.853188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719315, 33.105732, 45.593262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704254, 33.486565, 45.471851>,  <38.695217, 33.715065, 45.399006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704254, 33.486565, 45.471851>,  <38.719315, 33.105732, 45.593262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704254, 33.486565, 45.471851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221846, -0.304127, -0.926440,
		-0.974354, 0.032451, 0.222666,
		-0.037655, 0.952079, -0.303527,
		38.692959, 33.772190, 45.380795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173382, 33.136456, 45.089188>,  <38.719315, 33.105732, 45.593262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173382, 33.136456, 45.089188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383160, 33.468773, 45.014622>,  <38.509026, 33.668163, 44.969883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383160, 33.468773, 45.014622>,  <38.173382, 33.136456, 45.089188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383160, 33.468773, 45.014622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190656, -0.098796, -0.976673,
		-0.829826, 0.547749, 0.106582,
		0.524441, 0.830789, -0.186415,
		38.540493, 33.718010, 44.958698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752678, 33.578709, 44.641426>,  <38.173382, 33.136456, 45.089188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752678, 33.578709, 44.641426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133785, 33.694176, 44.603687>,  <38.362450, 33.763458, 44.581043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133785, 33.694176, 44.603687>,  <37.752678, 33.578709, 44.641426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133785, 33.694176, 44.603687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058572, -0.130151, -0.989763,
		-0.297994, 0.948541, -0.107096,
		0.952769, 0.288670, -0.094342,
		38.419617, 33.780777, 44.575386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731998, 33.870766, 44.022694>,  <37.752678, 33.578709, 44.641426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731998, 33.870766, 44.022694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124981, 33.828419, 44.084099>,  <38.360771, 33.803009, 44.120941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124981, 33.828419, 44.084099>,  <37.731998, 33.870766, 44.022694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124981, 33.828419, 44.084099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130239, -0.199618, -0.971180,
		0.133462, 0.974138, -0.182329,
		0.982459, -0.105869, 0.153512,
		38.419720, 33.796658, 44.130154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009396, 34.090076, 43.380386>,  <37.731998, 33.870766, 44.022694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009396, 34.090076, 43.380386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311295, 33.904381, 43.565788>,  <38.492435, 33.792961, 43.677029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311295, 33.904381, 43.565788>,  <38.009396, 34.090076, 43.380386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311295, 33.904381, 43.565788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398076, -0.237495, -0.886077,
		0.521435, 0.853273, 0.005555,
		0.754746, -0.464243, 0.463505,
		38.537720, 33.765106, 43.704842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627434, 34.318096, 43.004879>,  <38.009396, 34.090076, 43.380386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627434, 34.318096, 43.004879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719021, 33.981365, 43.200390>,  <38.773972, 33.779327, 43.317696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719021, 33.981365, 43.200390>,  <38.627434, 34.318096, 43.004879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719021, 33.981365, 43.200390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394890, -0.378623, -0.837082,
		0.889739, 0.384680, 0.245734,
		0.228969, -0.841823, 0.488782,
		38.787712, 33.728817, 43.347023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379711, 34.310101, 43.080616>,  <38.627434, 34.318096, 43.004879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379711, 34.310101, 43.080616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262901, 33.927780, 43.094284>,  <39.192814, 33.698387, 43.102486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262901, 33.927780, 43.094284>,  <39.379711, 34.310101, 43.080616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262901, 33.927780, 43.094284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627352, -0.218394, -0.747485,
		0.721907, -0.196851, 0.663400,
		-0.292025, -0.955800, 0.034166,
		39.175293, 33.641041, 43.104534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954514, 33.876572, 42.958130>,  <39.379711, 34.310101, 43.080616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954514, 33.876572, 42.958130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650528, 33.627686, 42.882977>,  <39.468136, 33.478355, 42.837887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650528, 33.627686, 42.882977>,  <39.954514, 33.876572, 42.958130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650528, 33.627686, 42.882977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466276, -0.320538, -0.824525,
		0.452807, -0.714218, 0.533722,
		-0.759969, -0.622213, -0.187881,
		39.422539, 33.441021, 42.826611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267418, 33.284164, 42.709728>,  <39.954514, 33.876572, 42.958130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267418, 33.284164, 42.709728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891380, 33.278099, 42.573498>,  <39.665756, 33.274460, 42.491760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891380, 33.278099, 42.573498>,  <40.267418, 33.284164, 42.709728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891380, 33.278099, 42.573498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317544, -0.402452, -0.858602,
		-0.124043, -0.915316, 0.383159,
		-0.940095, -0.015166, -0.340575,
		39.609352, 33.273548, 42.471325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132530, 32.560478, 42.395969>,  <40.267418, 33.284164, 42.709728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132530, 32.560478, 42.395969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864941, 32.817265, 42.246109>,  <39.704388, 32.971336, 42.156193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864941, 32.817265, 42.246109>,  <40.132530, 32.560478, 42.395969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864941, 32.817265, 42.246109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311401, -0.215621, -0.925493,
		-0.674914, -0.735794, -0.055664,
		-0.668970, 0.641962, -0.374653,
		39.664249, 33.009853, 42.133713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910454, 32.242722, 41.743572>,  <40.132530, 32.560478, 42.395969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910454, 32.242722, 41.743572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744919, 32.601925, 41.683815>,  <39.645599, 32.817448, 41.647961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744919, 32.601925, 41.683815>,  <39.910454, 32.242722, 41.743572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744919, 32.601925, 41.683815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299748, -0.020538, -0.953797,
		-0.859587, -0.439497, -0.260677,
		-0.413837, 0.898009, -0.149392,
		39.620770, 32.871326, 41.638996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620094, 32.188602, 41.134758>,  <39.910454, 32.242722, 41.743572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620094, 32.188602, 41.134758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680557, 32.580940, 41.183903>,  <39.716835, 32.816341, 41.213390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680557, 32.580940, 41.183903>,  <39.620094, 32.188602, 41.134758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680557, 32.580940, 41.183903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484523, 0.034820, -0.874085,
		-0.861619, 0.191660, -0.469978,
		0.151162, 0.980844, 0.122865,
		39.725906, 32.875195, 41.220764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393173, 32.465172, 40.421978>,  <39.620094, 32.188602, 41.134758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393173, 32.465172, 40.421978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614288, 32.734402, 40.618507>,  <39.746956, 32.895939, 40.736427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614288, 32.734402, 40.618507>,  <39.393173, 32.465172, 40.421978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614288, 32.734402, 40.618507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415246, 0.288701, -0.862683,
		-0.722495, 0.680900, -0.119902,
		0.552785, 0.673073, 0.491326,
		39.780125, 32.936325, 40.765903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419746, 32.965290, 39.942017>,  <39.393173, 32.465172, 40.421978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419746, 32.965290, 39.942017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722389, 33.072643, 40.180519>,  <39.903976, 33.137054, 40.323620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722389, 33.072643, 40.180519>,  <39.419746, 32.965290, 39.942017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722389, 33.072643, 40.180519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544826, 0.245442, -0.801825,
		-0.361540, 0.931520, 0.039482,
		0.756607, 0.268381, 0.596253,
		39.949371, 33.153156, 40.359394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668381, 33.712971, 39.925694>,  <39.419746, 32.965290, 39.942017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668381, 33.712971, 39.925694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991821, 33.520039, 40.060463>,  <40.185886, 33.404278, 40.141327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991821, 33.520039, 40.060463>,  <39.668381, 33.712971, 39.925694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991821, 33.520039, 40.060463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518159, 0.312538, -0.796135,
		0.278696, 0.818339, 0.502643,
		0.808603, -0.482329, 0.336927,
		40.234402, 33.375340, 40.161541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219189, 34.197933, 39.891148>,  <39.668381, 33.712971, 39.925694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219189, 34.197933, 39.891148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384842, 33.834591, 39.867886>,  <40.484234, 33.616585, 39.853928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384842, 33.834591, 39.867886>,  <40.219189, 34.197933, 39.891148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384842, 33.834591, 39.867886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564583, 0.306466, -0.766371,
		0.713961, 0.284544, 0.639761,
		0.414132, -0.908357, -0.058156,
		40.509083, 33.562084, 39.850437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814926, 34.365284, 39.688679>,  <40.219189, 34.197933, 39.891148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814926, 34.365284, 39.688679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844120, 33.970608, 39.630543>,  <40.861637, 33.733803, 39.595661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844120, 33.970608, 39.630543>,  <40.814926, 34.365284, 39.688679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844120, 33.970608, 39.630543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633365, 0.158424, -0.757463,
		0.770404, -0.036771, 0.636495,
		0.072984, -0.986686, -0.145340,
		40.866016, 33.674603, 39.586941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531677, 34.197849, 39.600632>,  <40.814926, 34.365284, 39.688679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531677, 34.197849, 39.600632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349789, 33.876205, 39.447460>,  <41.240654, 33.683220, 39.355556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349789, 33.876205, 39.447460>,  <41.531677, 34.197849, 39.600632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349789, 33.876205, 39.447460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647696, -0.003444, -0.761891,
		0.611324, -0.594473, 0.522384,
		-0.454723, -0.804108, -0.382932,
		41.213371, 33.634972, 39.332581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115585, 33.842049, 39.314060>,  <41.531677, 34.197849, 39.600632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115585, 33.842049, 39.314060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795685, 33.670891, 39.145626>,  <41.603745, 33.568195, 39.044567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795685, 33.670891, 39.145626>,  <42.115585, 33.842049, 39.314060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795685, 33.670891, 39.145626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484426, -0.045675, -0.873639,
		0.354593, -0.902673, 0.243811,
		-0.799747, -0.427895, -0.421082,
		41.555759, 33.542522, 39.019302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457840, 33.288670, 38.934124>,  <42.115585, 33.842049, 39.314060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457840, 33.288670, 38.934124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093731, 33.354637, 38.782227>,  <41.875267, 33.394218, 38.691090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093731, 33.354637, 38.782227>,  <42.457840, 33.288670, 38.934124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093731, 33.354637, 38.782227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386260, 0.008156, -0.922354,
		-0.149017, -0.986273, -0.071125,
		-0.910273, 0.164919, -0.379742,
		41.820648, 33.404114, 38.668304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374680, 32.844196, 38.386604>,  <42.457840, 33.288670, 38.934124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374680, 32.844196, 38.386604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105724, 33.125191, 38.293304>,  <41.944351, 33.293789, 38.237324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105724, 33.125191, 38.293304>,  <42.374680, 32.844196, 38.386604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105724, 33.125191, 38.293304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354381, 0.028864, -0.934656,
		-0.649854, -0.711108, -0.268357,
		-0.672387, 0.702490, -0.233246,
		41.904007, 33.335938, 38.223331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910240, 32.494598, 37.957077>,  <42.374680, 32.844196, 38.386604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910240, 32.494598, 37.957077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912083, 32.892578, 37.916962>,  <41.913189, 33.131367, 37.892891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912083, 32.892578, 37.916962>,  <41.910240, 32.494598, 37.957077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912083, 32.892578, 37.916962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205295, -0.099098, -0.973670,
		-0.978689, -0.016100, -0.204715,
		0.004611, 0.994947, -0.100291,
		41.913467, 33.191063, 37.886875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490356, 32.728493, 37.308773>,  <41.910240, 32.494598, 37.957077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490356, 32.728493, 37.308773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754734, 33.014736, 37.399151>,  <41.913361, 33.186481, 37.453377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754734, 33.014736, 37.399151>,  <41.490356, 32.728493, 37.308773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754734, 33.014736, 37.399151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314577, 0.009149, -0.949188,
		-0.681318, 0.698437, -0.219068,
		0.660944, 0.715613, 0.225946,
		41.953018, 33.229420, 37.466934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548260, 33.195770, 36.711048>,  <41.490356, 32.728493, 37.308773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548260, 33.195770, 36.711048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878899, 33.260529, 36.926651>,  <42.077282, 33.299385, 37.056011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878899, 33.260529, 36.926651>,  <41.548260, 33.195770, 36.711048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878899, 33.260529, 36.926651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529105, 0.102840, -0.842302,
		-0.191795, 0.981435, -0.000652,
		0.826597, 0.161894, 0.539006,
		42.126877, 33.309097, 37.088352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843117, 33.818951, 36.594543>,  <41.548260, 33.195770, 36.711048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843117, 33.818951, 36.594543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119320, 33.547115, 36.693634>,  <42.285042, 33.384014, 36.753086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119320, 33.547115, 36.693634>,  <41.843117, 33.818951, 36.594543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119320, 33.547115, 36.693634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424348, 0.103246, -0.899594,
		0.585774, 0.726295, 0.359672,
		0.690505, -0.679585, 0.247723,
		42.326473, 33.343239, 36.767952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359200, 34.102852, 36.316059>,  <41.843117, 33.818951, 36.594543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359200, 34.102852, 36.316059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504124, 33.735310, 36.378586>,  <42.591080, 33.514786, 36.416103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504124, 33.735310, 36.378586>,  <42.359200, 34.102852, 36.316059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504124, 33.735310, 36.378586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510434, 0.055282, -0.858138,
		0.779862, 0.390705, 0.489044,
		0.362314, -0.918854, 0.156317,
		42.612820, 33.459652, 36.425480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114876, 34.104980, 36.169243>,  <42.359200, 34.102852, 36.316059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114876, 34.104980, 36.169243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980610, 33.732021, 36.115620>,  <42.900051, 33.508247, 36.083447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980610, 33.732021, 36.115620>,  <43.114876, 34.104980, 36.169243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980610, 33.732021, 36.115620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436900, -0.028018, -0.899074,
		0.834536, -0.360352, 0.416768,
		-0.335660, -0.932396, -0.134056,
		42.879913, 33.452301, 36.075401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604191, 33.720016, 35.833286>,  <43.114876, 34.104980, 36.169243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604191, 33.720016, 35.833286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254837, 33.589977, 35.688225>,  <43.045227, 33.511955, 35.601189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254837, 33.589977, 35.688225>,  <43.604191, 33.720016, 35.833286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254837, 33.589977, 35.688225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370790, 0.038971, -0.927899,
		0.315787, -0.944878, 0.086505,
		-0.873380, -0.325094, -0.362658,
		42.992825, 33.492451, 35.579426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380329, 34.055260, 35.135036>,  <43.604191, 33.720016, 35.833286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380329, 34.055260, 35.135036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052059, 33.908958, 35.310638>,  <42.855099, 33.821178, 35.416000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052059, 33.908958, 35.310638>,  <43.380329, 34.055260, 35.135036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052059, 33.908958, 35.310638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069850, -0.826745, -0.558224,
		0.567115, -0.427454, 0.704033,
		-0.820671, -0.365754, 0.439002,
		42.805859, 33.799232, 35.442341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692574, 34.243877, 34.986008>,  <43.380329, 34.055260, 35.135036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692574, 34.243877, 34.986008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062759, 34.394981, 34.974594>,  <43.284870, 34.485645, 34.967747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062759, 34.394981, 34.974594>,  <42.692574, 34.243877, 34.986008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062759, 34.394981, 34.974594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059463, 0.070467, -0.995740,
		-0.374143, 0.923217, 0.087678,
		0.925462, 0.377763, -0.028532,
		43.340397, 34.508312, 34.966034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731670, 34.795601, 34.465363>,  <42.692574, 34.243877, 34.986008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731670, 34.795601, 34.465363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107403, 34.660328, 34.488293>,  <43.332844, 34.579163, 34.502048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107403, 34.660328, 34.488293>,  <42.731670, 34.795601, 34.465363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107403, 34.660328, 34.488293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047791, -0.036450, -0.998192,
		0.339663, 0.940374, -0.018076,
		0.939332, -0.338185, 0.057322,
		43.389202, 34.558872, 34.505489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051594, 35.153027, 34.027176>,  <42.731670, 34.795601, 34.465363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051594, 35.153027, 34.027176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330261, 34.871517, 34.082832>,  <43.497459, 34.702610, 34.116226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330261, 34.871517, 34.082832>,  <43.051594, 35.153027, 34.027176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330261, 34.871517, 34.082832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334085, 0.146629, -0.931068,
		0.634859, 0.695128, 0.337271,
		0.696665, -0.703774, 0.139144,
		43.539261, 34.660385, 34.124577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711681, 35.424061, 33.677605>,  <43.051594, 35.153027, 34.027176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711681, 35.424061, 33.677605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738964, 35.027405, 33.721428>,  <43.755333, 34.789413, 33.747723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738964, 35.027405, 33.721428>,  <43.711681, 35.424061, 33.677605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738964, 35.027405, 33.721428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317500, -0.082529, -0.944660,
		0.945802, 0.099219, 0.309216,
		0.068209, -0.991637, 0.109558,
		43.759426, 34.729912, 33.754295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374233, 35.248295, 33.495510>,  <43.711681, 35.424061, 33.677605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374233, 35.248295, 33.495510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156658, 34.915695, 33.450363>,  <44.026112, 34.716137, 33.423275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156658, 34.915695, 33.450363>,  <44.374233, 35.248295, 33.495510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156658, 34.915695, 33.450363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419804, -0.153191, -0.894593,
		0.726562, -0.533989, 0.432393,
		-0.543942, -0.831498, -0.112868,
		43.993477, 34.666245, 33.416504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819412, 34.830635, 33.065895>,  <44.374233, 35.248295, 33.495510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819412, 34.830635, 33.065895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458183, 34.661774, 33.034279>,  <44.241447, 34.560459, 33.015308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458183, 34.661774, 33.034279>,  <44.819412, 34.830635, 33.065895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458183, 34.661774, 33.034279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151942, -0.141895, -0.978151,
		0.401711, -0.895352, 0.192284,
		-0.903073, -0.422150, -0.079041,
		44.187260, 34.535130, 33.010567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861534, 34.271667, 32.649826>,  <44.819412, 34.830635, 33.065895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861534, 34.271667, 32.649826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461689, 34.282547, 32.647480>,  <44.221783, 34.289074, 32.646072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461689, 34.282547, 32.647480>,  <44.861534, 34.271667, 32.649826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461689, 34.282547, 32.647480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002513, -0.121631, -0.992572,
		-0.027704, -0.992203, 0.121516,
		-0.999613, 0.027193, -0.005863,
		44.161804, 34.290707, 32.645721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661083, 33.735741, 32.181351>,  <44.861534, 34.271667, 32.649826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661083, 33.735741, 32.181351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341148, 33.973412, 32.215317>,  <44.149185, 34.116013, 32.235695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341148, 33.973412, 32.215317>,  <44.661083, 33.735741, 32.181351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341148, 33.973412, 32.215317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142927, -0.051141, -0.988411,
		-0.582948, -0.802707, 0.125828,
		-0.799840, 0.594176, 0.084916,
		44.101196, 34.151665, 32.240791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193783, 33.309380, 31.872156>,  <44.661083, 33.735741, 32.181351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193783, 33.309380, 31.872156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079479, 33.691605, 31.843208>,  <44.010895, 33.920940, 31.825840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079479, 33.691605, 31.843208>,  <44.193783, 33.309380, 31.872156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079479, 33.691605, 31.843208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001005, -0.075220, -0.997167,
		-0.958300, -0.285025, 0.020535,
		-0.285762, 0.955564, -0.072370,
		43.993752, 33.978275, 31.821497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603287, 33.292877, 31.329601>,  <44.193783, 33.309380, 31.872156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603287, 33.292877, 31.329601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721291, 33.674690, 31.346712>,  <43.792091, 33.903778, 31.356977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721291, 33.674690, 31.346712>,  <43.603287, 33.292877, 31.329601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721291, 33.674690, 31.346712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033292, 0.055009, -0.997931,
		-0.954914, 0.292974, 0.048006,
		0.295008, 0.954537, 0.042775,
		43.809792, 33.961052, 31.359545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169136, 33.759769, 30.780005>,  <43.603287, 33.292877, 31.329601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169136, 33.759769, 30.780005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517559, 33.934978, 30.868902>,  <43.726612, 34.040104, 30.922241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517559, 33.934978, 30.868902>,  <43.169136, 33.759769, 30.780005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517559, 33.934978, 30.868902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142815, 0.207061, -0.967848,
		-0.469956, 0.874793, 0.117806,
		0.871060, 0.438021, 0.222243,
		43.778877, 34.066383, 30.935575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198296, 34.293663, 30.333549>,  <43.169136, 33.759769, 30.780005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198296, 34.293663, 30.333549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577747, 34.235764, 30.446085>,  <43.805420, 34.201023, 30.513607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577747, 34.235764, 30.446085>,  <43.198296, 34.293663, 30.333549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577747, 34.235764, 30.446085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300239, 0.131338, -0.944779,
		0.099806, 0.980713, 0.168051,
		0.948628, -0.144750, 0.281340,
		43.862335, 34.192337, 30.530487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559444, 34.785072, 29.892776>,  <43.198296, 34.293663, 30.333549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559444, 34.785072, 29.892776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842999, 34.554951, 30.055994>,  <44.013130, 34.416878, 30.153925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842999, 34.554951, 30.055994>,  <43.559444, 34.785072, 29.892776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842999, 34.554951, 30.055994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426642, -0.110925, -0.897593,
		0.561652, 0.810382, 0.166816,
		0.708889, -0.575306, 0.408044,
		44.055664, 34.382359, 30.178408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231785, 35.059559, 29.734154>,  <43.559444, 34.785072, 29.892776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231785, 35.059559, 29.734154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313572, 34.675575, 29.810762>,  <44.362644, 34.445187, 29.856728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313572, 34.675575, 29.810762>,  <44.231785, 35.059559, 29.734154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313572, 34.675575, 29.810762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232740, -0.142369, -0.962062,
		0.950802, 0.241285, 0.194310,
		0.204468, -0.959954, 0.191521,
		44.374912, 34.387589, 29.868219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802864, 34.872364, 29.314125>,  <44.231785, 35.059559, 29.734154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802864, 34.872364, 29.314125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602917, 34.537006, 29.401047>,  <44.482948, 34.335793, 29.453199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602917, 34.537006, 29.401047>,  <44.802864, 34.872364, 29.314125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602917, 34.537006, 29.401047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034878, -0.270182, -0.962177,
		0.865397, -0.473386, 0.164297,
		-0.499872, -0.838395, 0.217304,
		44.452953, 34.285488, 29.466238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091175, 34.481136, 28.913412>,  <44.802864, 34.872364, 29.314125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091175, 34.481136, 28.913412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730324, 34.330288, 28.997263>,  <44.513813, 34.239777, 29.047573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730324, 34.330288, 28.997263>,  <45.091175, 34.481136, 28.913412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730324, 34.330288, 28.997263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170256, -0.135277, -0.976070,
		0.396458, -0.916229, 0.057830,
		-0.902127, -0.377125, 0.209625,
		44.459686, 34.217152, 29.060150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062366, 34.011467, 28.420500>,  <45.091175, 34.481136, 28.913412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062366, 34.011467, 28.420500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683613, 34.032589, 28.547384>,  <44.456360, 34.045261, 28.623514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683613, 34.032589, 28.547384>,  <45.062366, 34.011467, 28.420500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683613, 34.032589, 28.547384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321569, -0.150331, -0.934877,
		-0.001677, -0.987225, 0.159325,
		-0.946885, 0.052802, 0.317209,
		44.399548, 34.048428, 28.642548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710529, 33.497707, 28.027252>,  <45.062366, 34.011467, 28.420500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710529, 33.497707, 28.027252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426941, 33.756115, 28.140398>,  <44.256786, 33.911160, 28.208286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426941, 33.756115, 28.140398>,  <44.710529, 33.497707, 28.027252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426941, 33.756115, 28.140398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402546, -0.041366, -0.914465,
		-0.579062, -0.762199, 0.289380,
		-0.708974, 0.646020, 0.282866,
		44.214249, 33.949921, 28.225258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965744, 33.226131, 27.749432>,  <44.710529, 33.497707, 28.027252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965744, 33.226131, 27.749432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954571, 33.618134, 27.828224>,  <43.947868, 33.853336, 27.875500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954571, 33.618134, 27.828224>,  <43.965744, 33.226131, 27.749432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954571, 33.618134, 27.828224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369097, 0.173020, -0.913144,
		-0.928971, -0.098212, 0.356886,
		-0.027933, 0.980009, 0.196981,
		43.946190, 33.912136, 27.887318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346401, 33.379299, 27.410368>,  <43.965744, 33.226131, 27.749432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346401, 33.379299, 27.410368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567623, 33.708847, 27.459955>,  <43.700356, 33.906574, 27.489708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567623, 33.708847, 27.459955>,  <43.346401, 33.379299, 27.410368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567623, 33.708847, 27.459955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162819, 0.252805, -0.953719,
		-0.817081, 0.507273, 0.273956,
		0.553054, 0.823871, 0.123968,
		43.733540, 33.956009, 27.497147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001842, 33.878960, 26.951231>,  <43.346401, 33.379299, 27.410368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001842, 33.878960, 26.951231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364502, 34.029018, 27.028433>,  <43.582096, 34.119053, 27.074755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364502, 34.029018, 27.028433>,  <43.001842, 33.878960, 26.951231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364502, 34.029018, 27.028433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074942, 0.306995, -0.948756,
		-0.415177, 0.874652, 0.250222,
		0.906649, 0.375149, 0.193006,
		43.636497, 34.141563, 27.086334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092587, 34.503849, 26.679655>,  <43.001842, 33.878960, 26.951231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092587, 34.503849, 26.679655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459782, 34.346901, 26.656530>,  <43.680099, 34.252731, 26.642656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459782, 34.346901, 26.656530>,  <43.092587, 34.503849, 26.679655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459782, 34.346901, 26.656530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172544, 0.526357, -0.832573,
		0.357102, 0.754319, 0.550891,
		0.917991, -0.392366, -0.057810,
		43.735180, 34.229191, 26.639187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447964, 34.847473, 26.631308>,  <43.092587, 34.503849, 26.679655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447964, 34.847473, 26.631308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321320, 35.196205, 26.481819>,  <42.245331, 35.405445, 26.392126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321320, 35.196205, 26.481819>,  <42.447964, 34.847473, 26.631308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321320, 35.196205, 26.481819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804186, 0.455651, 0.381664,
		0.503033, -0.179700, -0.845379,
		-0.316613, 0.871831, -0.373720,
		42.226337, 35.457756, 26.369703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075428, 35.181854, 26.331547>,  <42.447964, 34.847473, 26.631308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075428, 35.181854, 26.331547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783119, 35.449112, 26.387476>,  <42.607735, 35.609467, 26.421034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783119, 35.449112, 26.387476>,  <43.075428, 35.181854, 26.331547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783119, 35.449112, 26.387476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676686, 0.682118, 0.277146,
		0.089799, 0.297146, -0.950600,
		-0.730774, 0.668146, 0.139821,
		42.563889, 35.649555, 26.429422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276531, 35.838169, 26.090717>,  <43.075428, 35.181854, 26.331547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276531, 35.838169, 26.090717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017731, 35.887119, 26.391758>,  <42.862450, 35.916489, 26.572382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017731, 35.887119, 26.391758>,  <43.276531, 35.838169, 26.090717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017731, 35.887119, 26.391758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557541, 0.749236, 0.357484,
		-0.520127, 0.650899, -0.552990,
		-0.647006, 0.122378, 0.752600,
		42.823627, 35.923832, 26.617538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030212, 36.590858, 26.254843>,  <43.276531, 35.838169, 26.090717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030212, 36.590858, 26.254843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049824, 36.351219, 26.574512>,  <43.061592, 36.207436, 26.766315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049824, 36.351219, 26.574512>,  <43.030212, 36.590858, 26.254843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049824, 36.351219, 26.574512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519588, 0.698645, 0.491857,
		-0.853009, 0.391128, 0.345536,
		0.049028, -0.599095, 0.799176,
		43.064533, 36.171490, 26.814264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832874, 36.878490, 26.922726>,  <43.030212, 36.590858, 26.254843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832874, 36.878490, 26.922726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078091, 36.575340, 27.011990>,  <43.225220, 36.393448, 27.065548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078091, 36.575340, 27.011990>,  <42.832874, 36.878490, 26.922726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078091, 36.575340, 27.011990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574242, 0.621437, 0.532975,
		-0.542609, -0.198589, 0.816173,
		0.613043, -0.757878, 0.223158,
		43.262005, 36.347977, 27.078938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047516, 37.313828, 27.400295>,  <42.832874, 36.878490, 26.922726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047516, 37.313828, 27.400295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693611, 37.475685, 27.307806>,  <42.481270, 37.572800, 27.252314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693611, 37.475685, 27.307806>,  <43.047516, 37.313828, 27.400295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693611, 37.475685, 27.307806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127820, 0.687794, 0.714564,
		0.448178, 0.602662, -0.660254,
		-0.884759, 0.404646, -0.231222,
		42.428185, 37.597080, 27.238440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148556, 38.089706, 27.222422>,  <43.047516, 37.313828, 27.400295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148556, 38.089706, 27.222422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789536, 37.987740, 27.366322>,  <42.574123, 37.926559, 27.452662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789536, 37.987740, 27.366322>,  <43.148556, 38.089706, 27.222422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789536, 37.987740, 27.366322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138633, 0.611378, 0.779100,
		-0.418551, 0.749155, -0.513402,
		-0.897550, -0.254919, 0.359751,
		42.520271, 37.911263, 27.474247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594273, 38.617325, 27.329163>,  <43.148556, 38.089706, 27.222422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594273, 38.617325, 27.329163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576317, 38.311886, 27.586817>,  <42.565544, 38.128624, 27.741409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576317, 38.311886, 27.586817>,  <42.594273, 38.617325, 27.329163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576317, 38.311886, 27.586817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050058, 0.645695, 0.761953,
		-0.997737, 0.001959, -0.067208,
		-0.044888, -0.763593, 0.644135,
		42.562851, 38.082809, 27.780058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568539, 38.915718, 27.951046>,  <42.594273, 38.617325, 27.329163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568539, 38.915718, 27.951046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578388, 38.536526, 28.077990>,  <42.584297, 38.309010, 28.154156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578388, 38.536526, 28.077990>,  <42.568539, 38.915718, 27.951046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578388, 38.536526, 28.077990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234825, 0.314059, 0.919905,
		-0.971726, 0.051877, 0.230343,
		0.024619, -0.947985, 0.317361,
		42.585773, 38.252129, 28.173199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277912, 38.919960, 28.692059>,  <42.568539, 38.915718, 27.951046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277912, 38.919960, 28.692059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510075, 38.597343, 28.647133>,  <42.649372, 38.403774, 28.620176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510075, 38.597343, 28.647133>,  <42.277912, 38.919960, 28.692059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510075, 38.597343, 28.647133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242243, 0.039327, 0.969418,
		-0.777459, -0.589868, 0.218205,
		0.580410, -0.806542, -0.112316,
		42.684196, 38.355381, 28.613438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098881, 38.350601, 29.199459>,  <42.277912, 38.919960, 28.692059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098881, 38.350601, 29.199459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486237, 38.289417, 29.120642>,  <42.718651, 38.252708, 29.073351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486237, 38.289417, 29.120642>,  <42.098881, 38.350601, 29.199459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486237, 38.289417, 29.120642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205148, 0.038986, 0.977954,
		-0.141902, -0.987464, 0.069132,
		0.968389, -0.152956, -0.197044,
		42.776752, 38.243530, 29.061529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300819, 37.903885, 29.750143>,  <42.098881, 38.350601, 29.199459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300819, 37.903885, 29.750143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647381, 38.032162, 29.597040>,  <42.855316, 38.109127, 29.505178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647381, 38.032162, 29.597040>,  <42.300819, 37.903885, 29.750143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647381, 38.032162, 29.597040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345181, 0.169245, 0.923150,
		0.360828, -0.931940, 0.035937,
		0.866403, 0.320693, -0.382756,
		42.907303, 38.128368, 29.482214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775688, 37.561939, 30.189493>,  <42.300819, 37.903885, 29.750143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775688, 37.561939, 30.189493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015083, 37.825157, 30.006718>,  <43.158722, 37.983089, 29.897053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015083, 37.825157, 30.006718>,  <42.775688, 37.561939, 30.189493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015083, 37.825157, 30.006718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535063, 0.096178, 0.839320,
		0.596257, -0.746812, -0.294533,
		0.598486, 0.658044, -0.456938,
		43.194630, 38.022572, 29.869637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405605, 37.283989, 30.299959>,  <42.775688, 37.561939, 30.189493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405605, 37.283989, 30.299959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428421, 37.679642, 30.245749>,  <43.442108, 37.917034, 30.213223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428421, 37.679642, 30.245749>,  <43.405605, 37.283989, 30.299959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428421, 37.679642, 30.245749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437383, 0.097272, 0.893999,
		0.897465, -0.110267, -0.427081,
		0.057036, 0.989131, -0.135527,
		43.445530, 37.976379, 30.205090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055313, 37.352478, 30.444336>,  <43.405605, 37.283989, 30.299959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055313, 37.352478, 30.444336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902809, 37.721943, 30.459742>,  <43.811306, 37.943623, 30.468985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902809, 37.721943, 30.459742>,  <44.055313, 37.352478, 30.444336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902809, 37.721943, 30.459742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529854, 0.184187, 0.827846,
		0.757559, 0.336032, -0.559631,
		-0.381259, 0.923665, 0.038515,
		43.788433, 37.999043, 30.471296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646317, 37.748352, 30.560284>,  <44.055313, 37.352478, 30.444336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646317, 37.748352, 30.560284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318966, 37.937820, 30.690447>,  <44.122555, 38.051502, 30.768545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318966, 37.937820, 30.690447>,  <44.646317, 37.748352, 30.560284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318966, 37.937820, 30.690447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424422, 0.116404, 0.897951,
		0.387456, 0.872974, -0.296299,
		-0.818379, 0.473673, 0.325408,
		44.073452, 38.079922, 30.788069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999187, 38.453556, 30.829178>,  <44.646317, 37.748352, 30.560284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999187, 38.453556, 30.829178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635403, 38.400463, 30.986794>,  <44.417133, 38.368607, 31.081364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635403, 38.400463, 30.986794>,  <44.999187, 38.453556, 30.829178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635403, 38.400463, 30.986794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390575, 0.052306, 0.919084,
		-0.142606, 0.989770, 0.004273,
		-0.909458, -0.132736, 0.394039,
		44.362564, 38.360641, 31.105005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881290, 39.051044, 31.382687>,  <44.999187, 38.453556, 30.829178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881290, 39.051044, 31.382687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663162, 38.721310, 31.443485>,  <44.532288, 38.523468, 31.479965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663162, 38.721310, 31.443485>,  <44.881290, 39.051044, 31.382687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663162, 38.721310, 31.443485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205296, 0.044465, 0.977689,
		-0.812701, 0.564355, 0.144985,
		-0.545317, -0.824334, 0.151996,
		44.499569, 38.474010, 31.489084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683250, 39.154598, 31.973070>,  <44.881290, 39.051044, 31.382687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683250, 39.154598, 31.973070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574200, 38.771118, 31.940634>,  <44.508770, 38.541031, 31.921173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574200, 38.771118, 31.940634>,  <44.683250, 39.154598, 31.973070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574200, 38.771118, 31.940634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281799, -0.160153, 0.946013,
		-0.919925, 0.235061, 0.313822,
		-0.272630, -0.958696, -0.081089,
		44.492413, 38.483509, 31.916307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258980, 39.064194, 32.565655>,  <44.683250, 39.154598, 31.973070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258980, 39.064194, 32.565655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400631, 38.710197, 32.444740>,  <44.485622, 38.497799, 32.372192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400631, 38.710197, 32.444740>,  <44.258980, 39.064194, 32.565655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400631, 38.710197, 32.444740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235190, -0.228569, 0.944691,
		-0.905139, -0.405641, 0.127198,
		0.354132, -0.884993, -0.302290,
		44.506870, 38.444698, 32.354053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203194, 38.723442, 33.164616>,  <44.258980, 39.064194, 32.565655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203194, 38.723442, 33.164616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426991, 38.479839, 32.939732>,  <44.561268, 38.333679, 32.804802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426991, 38.479839, 32.939732>,  <44.203194, 38.723442, 33.164616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426991, 38.479839, 32.939732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292785, -0.489367, 0.821460,
		-0.775400, -0.624209, -0.095490,
		0.559492, -0.609002, -0.562214,
		44.594837, 38.297138, 32.771069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928078, 38.131794, 33.212860>,  <44.203194, 38.723442, 33.164616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928078, 38.131794, 33.212860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305439, 38.056774, 33.103451>,  <44.531857, 38.011761, 33.037804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305439, 38.056774, 33.103451>,  <43.928078, 38.131794, 33.212860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305439, 38.056774, 33.103451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110857, -0.598969, 0.793062,
		-0.312571, -0.778499, -0.544278,
		0.943404, -0.187550, -0.273522,
		44.588459, 38.000507, 33.021393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947674, 37.413410, 33.155193>,  <43.928078, 38.131794, 33.212860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947674, 37.413410, 33.155193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314754, 37.538853, 33.252739>,  <44.535004, 37.614117, 33.311268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314754, 37.538853, 33.252739>,  <43.947674, 37.413410, 33.155193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314754, 37.538853, 33.252739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042866, -0.688449, 0.724017,
		0.394943, -0.653980, -0.645236,
		0.917705, 0.313604, 0.243864,
		44.590065, 37.632935, 33.325897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205902, 36.836018, 33.444721>,  <43.947674, 37.413410, 33.155193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205902, 36.836018, 33.444721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513371, 37.083485, 33.509708>,  <44.697853, 37.231964, 33.548698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513371, 37.083485, 33.509708>,  <44.205902, 36.836018, 33.444721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513371, 37.083485, 33.509708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420513, -0.680156, 0.600464,
		0.481990, -0.393239, -0.782974,
		0.768670, 0.618668, 0.162466,
		44.743973, 37.269085, 33.558449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818546, 36.442619, 33.238796>,  <44.205902, 36.836018, 33.444721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818546, 36.442619, 33.238796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920811, 36.736706, 33.489902>,  <44.982170, 36.913158, 33.640568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920811, 36.736706, 33.489902>,  <44.818546, 36.442619, 33.238796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920811, 36.736706, 33.489902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172933, -0.673653, 0.718531,
		0.951174, -0.075138, -0.299370,
		0.255660, 0.735219, 0.627767,
		44.997509, 36.957272, 33.678234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491051, 36.188507, 33.546875>,  <44.818546, 36.442619, 33.238796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491051, 36.188507, 33.546875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350227, 36.460861, 33.803761>,  <45.265732, 36.624275, 33.957893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350227, 36.460861, 33.803761>,  <45.491051, 36.188507, 33.546875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350227, 36.460861, 33.803761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225084, -0.604421, 0.764207,
		0.908509, 0.413602, 0.059537,
		-0.352063, 0.680889, 0.642217,
		45.244610, 36.665127, 33.996426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987812, 36.205048, 33.981552>,  <45.491051, 36.188507, 33.546875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987812, 36.205048, 33.981552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672646, 36.362656, 34.170841>,  <45.483547, 36.457218, 34.284416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672646, 36.362656, 34.170841>,  <45.987812, 36.205048, 33.981552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672646, 36.362656, 34.170841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277737, -0.458493, 0.844184,
		0.549592, 0.796577, 0.251821,
		-0.787915, 0.394017, 0.473223,
		45.436272, 36.480862, 34.312809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248245, 36.343338, 34.597721>,  <45.987812, 36.205048, 33.981552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248245, 36.343338, 34.597721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856106, 36.325733, 34.674641>,  <45.620823, 36.315170, 34.720791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856106, 36.325733, 34.674641>,  <46.248245, 36.343338, 34.597721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856106, 36.325733, 34.674641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180126, -0.597175, 0.781624,
		0.080435, 0.800903, 0.593368,
		-0.980349, -0.044011, 0.192297,
		45.562000, 36.312531, 34.732330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923279, 36.624371, 35.385204>,  <46.248245, 36.343338, 34.597721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923279, 36.624371, 35.385204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726994, 36.332935, 35.194057>,  <45.609222, 36.158073, 35.079369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726994, 36.332935, 35.194057>,  <45.923279, 36.624371, 35.385204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726994, 36.332935, 35.194057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230341, -0.637401, 0.735298,
		-0.840322, 0.250751, 0.480607,
		-0.490716, -0.728591, -0.477864,
		45.579781, 36.114357, 35.050697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859188, 36.091518, 35.773251>,  <45.923279, 36.624371, 35.385204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859188, 36.091518, 35.773251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000706, 36.142330, 36.143913>,  <46.085617, 36.172817, 36.366310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000706, 36.142330, 36.143913>,  <45.859188, 36.091518, 35.773251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000706, 36.142330, 36.143913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531221, -0.788144, 0.310859,
		0.769827, -0.602240, -0.211362,
		0.353796, 0.127028, 0.926657,
		46.106846, 36.180439, 36.421909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.319862, 35.599628, 36.097797>,  <45.859188, 36.091518, 35.773251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.319862, 35.599628, 36.097797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049084, 35.786842, 36.325020>,  <45.886616, 35.899170, 36.461353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049084, 35.786842, 36.325020>,  <46.319862, 35.599628, 36.097797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049084, 35.786842, 36.325020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405093, -0.881289, 0.243370,
		0.614524, -0.065364, 0.786186,
		-0.676950, 0.468035, 0.568051,
		45.846001, 35.927254, 36.495434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032616, 35.919590, 35.973778>,  <46.319862, 35.599628, 36.097797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032616, 35.919590, 35.973778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204514, 35.561596, 36.021648>,  <47.307652, 35.346798, 36.050369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204514, 35.561596, 36.021648>,  <47.032616, 35.919590, 35.973778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.204514, 35.561596, 36.021648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158238, -0.055842, -0.985821,
		0.888977, 0.442588, 0.117622,
		0.429745, -0.894984, 0.119677,
		47.333435, 35.293102, 36.057552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.773674, 35.866074, 35.725483>,  <47.032616, 35.919590, 35.973778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.773674, 35.866074, 35.725483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594063, 35.512421, 35.673813>,  <47.486298, 35.300228, 35.642811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594063, 35.512421, 35.673813>,  <47.773674, 35.866074, 35.725483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.594063, 35.512421, 35.673813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366621, -0.050466, -0.929001,
		0.814841, -0.464502, 0.346802,
		-0.449025, -0.884133, -0.129175,
		47.459354, 35.247181, 35.635059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.197628, 35.518524, 35.251369>,  <47.773674, 35.866074, 35.725483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.197628, 35.518524, 35.251369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850067, 35.340458, 35.164795>,  <47.641533, 35.233620, 35.112850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.850067, 35.340458, 35.164795>,  <48.197628, 35.518524, 35.251369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.850067, 35.340458, 35.164795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293578, -0.111426, -0.949419,
		0.398532, -0.888489, 0.227508,
		-0.868899, -0.445165, -0.216434,
		47.589397, 35.206909, 35.099865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.589188, 37.818851, 45.408325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.238640, 37.626202, 45.406727>,  <35.028313, 37.510612, 45.405766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.238640, 37.626202, 45.406727>,  <35.589188, 37.818851, 45.408325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238640, 37.626202, 45.406727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042170, -0.068459, -0.996762,
		0.479789, -0.873701, 0.080305,
		-0.876370, -0.481622, -0.003998,
		34.975727, 37.481716, 45.405529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650627, 37.154438, 45.051659>,  <35.589188, 37.818851, 45.408325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650627, 37.154438, 45.051659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269363, 37.273769, 45.031681>,  <35.040607, 37.345367, 45.019695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269363, 37.273769, 45.031681>,  <35.650627, 37.154438, 45.051659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269363, 37.273769, 45.031681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011209, -0.130151, -0.991431,
		-0.302275, -0.945547, 0.120710,
		-0.953155, 0.298331, -0.049940,
		34.983418, 37.363270, 45.016701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375366, 36.673031, 44.544292>,  <35.650627, 37.154438, 45.051659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375366, 36.673031, 44.544292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103504, 36.964588, 44.577248>,  <34.940388, 37.139523, 44.597019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103504, 36.964588, 44.577248>,  <35.375366, 36.673031, 44.544292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103504, 36.964588, 44.577248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314544, -0.188131, -0.930413,
		-0.662670, -0.658274, 0.357132,
		-0.679655, 0.728891, 0.082387,
		34.899609, 37.183254, 44.601963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783672, 36.408310, 44.208580>,  <35.375366, 36.673031, 44.544292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783672, 36.408310, 44.208580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.721100, 36.803295, 44.200172>,  <34.683556, 37.040287, 44.195126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.721100, 36.803295, 44.200172>,  <34.783672, 36.408310, 44.208580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721100, 36.803295, 44.200172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342244, -0.074156, -0.936680,
		-0.926498, -0.139331, 0.349555,
		-0.156430, 0.987466, -0.021021,
		34.674171, 37.099533, 44.193867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112614, 36.498272, 43.877602>,  <34.783672, 36.408310, 44.208580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112614, 36.498272, 43.877602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316868, 36.837772, 43.822647>,  <34.439419, 37.041473, 43.789673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316868, 36.837772, 43.822647>,  <34.112614, 36.498272, 43.877602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316868, 36.837772, 43.822647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006603, -0.155916, -0.987748,
		-0.859774, 0.505283, -0.074011,
		0.510632, 0.848751, -0.137389,
		34.470058, 37.092400, 43.781429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678860, 36.856842, 43.372746>,  <34.112614, 36.498272, 43.877602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678860, 36.856842, 43.372746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.038334, 37.031303, 43.354305>,  <34.254021, 37.135983, 43.343243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.038334, 37.031303, 43.354305>,  <33.678860, 36.856842, 43.372746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038334, 37.031303, 43.354305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032382, -0.038835, -0.998721,
		-0.437390, 0.899032, -0.020777,
		0.898689, 0.436158, -0.046099,
		34.307941, 37.162151, 43.340477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558422, 37.457603, 42.926140>,  <33.678860, 36.856842, 43.372746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558422, 37.457603, 42.926140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.944462, 37.356705, 42.954323>,  <34.176086, 37.296165, 42.971233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.944462, 37.356705, 42.954323>,  <33.558422, 37.457603, 42.926140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944462, 37.356705, 42.954323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008981, -0.236993, -0.971470,
		0.261746, 0.938193, -0.226455,
		0.965095, -0.252244, 0.070457,
		34.233990, 37.281033, 42.975460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851154, 37.837093, 42.343174>,  <33.558422, 37.457603, 42.926140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851154, 37.837093, 42.343174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092094, 37.531845, 42.436836>,  <34.236656, 37.348698, 42.493034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092094, 37.531845, 42.436836>,  <33.851154, 37.837093, 42.343174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092094, 37.531845, 42.436836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101007, -0.218119, -0.970681,
		0.791818, 0.608338, -0.054303,
		0.602346, -0.763118, 0.234158,
		34.272797, 37.302910, 42.507084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255337, 37.813202, 41.720291>,  <33.851154, 37.837093, 42.343174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255337, 37.813202, 41.720291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327564, 37.473415, 41.918606>,  <34.370903, 37.269543, 42.037594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327564, 37.473415, 41.918606>,  <34.255337, 37.813202, 41.720291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327564, 37.473415, 41.918606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118398, -0.481634, -0.868338,
		0.976410, 0.215498, 0.013605,
		0.180572, -0.849464, 0.495787,
		34.381737, 37.218575, 42.067341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951820, 37.620018, 41.487206>,  <34.255337, 37.813202, 41.720291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951820, 37.620018, 41.487206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797321, 37.271732, 41.608967>,  <34.704624, 37.062759, 41.682026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797321, 37.271732, 41.608967>,  <34.951820, 37.620018, 41.487206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797321, 37.271732, 41.608967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538847, -0.480847, -0.691687,
		0.748638, -0.103131, 0.654908,
		-0.386245, -0.870718, 0.304408,
		34.681446, 37.010517, 41.700291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549686, 37.012581, 41.632187>,  <34.951820, 37.620018, 41.487206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549686, 37.012581, 41.632187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.195854, 36.836006, 41.571995>,  <34.983555, 36.730061, 41.535881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.195854, 36.836006, 41.571995>,  <35.549686, 37.012581, 41.632187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195854, 36.836006, 41.571995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400452, -0.553524, -0.730240,
		0.239064, -0.706217, 0.666413,
		-0.884583, -0.441440, -0.150478,
		34.930481, 36.703575, 41.526852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732704, 36.274632, 41.715290>,  <35.549686, 37.012581, 41.632187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732704, 36.274632, 41.715290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397934, 36.338276, 41.505817>,  <35.197071, 36.376465, 41.380135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397934, 36.338276, 41.505817>,  <35.732704, 36.274632, 41.715290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397934, 36.338276, 41.505817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288577, -0.684721, -0.669239,
		-0.465059, -0.711224, 0.527143,
		-0.836925, 0.159114, -0.523679,
		35.146858, 36.386009, 41.348713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533772, 35.572899, 41.574623>,  <35.732704, 36.274632, 41.715290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533772, 35.572899, 41.574623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334694, 35.783539, 41.298946>,  <35.215248, 35.909924, 41.133541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334694, 35.783539, 41.298946>,  <35.533772, 35.572899, 41.574623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334694, 35.783539, 41.298946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321755, -0.625804, -0.710523,
		-0.805464, -0.575376, 0.142023,
		-0.497697, 0.526604, -0.689193,
		35.185383, 35.941521, 41.092190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299934, 35.071732, 41.175957>,  <35.533772, 35.572899, 41.574623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299934, 35.071732, 41.175957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251297, 35.395203, 40.945740>,  <35.222115, 35.589287, 40.807610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251297, 35.395203, 40.945740>,  <35.299934, 35.071732, 41.175957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251297, 35.395203, 40.945740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348469, -0.508155, -0.787621,
		-0.929400, -0.296329, -0.220011,
		-0.121595, 0.808682, -0.575541,
		35.214817, 35.637806, 40.773079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871002, 34.854679, 40.584320>,  <35.299934, 35.071732, 41.175957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871002, 34.854679, 40.584320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.075184, 35.177246, 40.464897>,  <35.197693, 35.370785, 40.393242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.075184, 35.177246, 40.464897>,  <34.871002, 34.854679, 40.584320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075184, 35.177246, 40.464897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265984, -0.478243, -0.836980,
		-0.817737, 0.347824, -0.458612,
		0.510450, 0.806413, -0.298562,
		35.228317, 35.419170, 40.375328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844223, 34.795277, 39.869656>,  <34.871002, 34.854679, 40.584320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844223, 34.795277, 39.869656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134346, 35.067371, 39.912003>,  <35.308418, 35.230629, 39.937412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134346, 35.067371, 39.912003>,  <34.844223, 34.795277, 39.869656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134346, 35.067371, 39.912003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380378, -0.267808, -0.885207,
		-0.573802, 0.682313, -0.452991,
		0.725303, 0.680241, 0.105868,
		35.351936, 35.271442, 39.943764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802696, 35.170116, 39.264263>,  <34.844223, 34.795277, 39.869656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802696, 35.170116, 39.264263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.165138, 35.279545, 39.393341>,  <35.382603, 35.345200, 39.470787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.165138, 35.279545, 39.393341>,  <34.802696, 35.170116, 39.264263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165138, 35.279545, 39.393341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380607, -0.194132, -0.904130,
		-0.184696, 0.942058, -0.280026,
		0.906105, 0.273569, 0.322698,
		35.436970, 35.361614, 39.490150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093033, 35.733143, 38.752308>,  <34.802696, 35.170116, 39.264263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093033, 35.733143, 38.752308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379665, 35.521095, 38.933632>,  <35.551643, 35.393867, 39.042427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379665, 35.521095, 38.933632>,  <35.093033, 35.733143, 38.752308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379665, 35.521095, 38.933632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355313, -0.281828, -0.891249,
		0.600221, 0.799719, -0.013595,
		0.716580, -0.530116, 0.453310,
		35.594639, 35.362061, 39.069626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801926, 35.966202, 38.480534>,  <35.093033, 35.733143, 38.752308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801926, 35.966202, 38.480534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852268, 35.607292, 38.649799>,  <35.882473, 35.391949, 38.751358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852268, 35.607292, 38.649799>,  <35.801926, 35.966202, 38.480534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852268, 35.607292, 38.649799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505864, -0.308885, -0.805414,
		0.853382, 0.315428, 0.415022,
		0.125856, -0.897271, 0.423161,
		35.890026, 35.338112, 38.776749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514435, 35.882294, 38.546818>,  <35.801926, 35.966202, 38.480534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514435, 35.882294, 38.546818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350574, 35.517410, 38.550045>,  <36.252258, 35.298481, 38.551983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350574, 35.517410, 38.550045>,  <36.514435, 35.882294, 38.546818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350574, 35.517410, 38.550045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561493, -0.259104, -0.785869,
		0.718966, -0.317400, 0.618340,
		-0.409649, -0.912207, 0.008069,
		36.227680, 35.243748, 38.552467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098122, 35.331505, 38.497402>,  <36.514435, 35.882294, 38.546818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098122, 35.331505, 38.497402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758888, 35.162270, 38.369804>,  <36.555347, 35.060730, 38.293247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758888, 35.162270, 38.369804>,  <37.098122, 35.331505, 38.497402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758888, 35.162270, 38.369804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498486, -0.432972, -0.751031,
		0.179634, -0.795949, 0.578097,
		-0.848082, -0.423084, -0.318993,
		36.504463, 35.035343, 38.274105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664104, 34.939064, 38.474838>,  <37.098122, 35.331505, 38.497402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664104, 34.939064, 38.474838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456169, 34.598007, 38.453751>,  <37.331409, 34.393375, 38.441097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456169, 34.598007, 38.453751>,  <37.664104, 34.939064, 38.474838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456169, 34.598007, 38.453751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609004, -0.326608, -0.722801,
		0.599071, -0.407842, 0.689042,
		-0.519835, -0.852638, -0.052716,
		37.300217, 34.342216, 38.437935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003700, 34.766945, 37.926105>,  <37.664104, 34.939064, 38.474838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003700, 34.766945, 37.926105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401039, 34.748310, 37.968239>,  <38.639442, 34.737129, 37.993519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401039, 34.748310, 37.968239>,  <38.003700, 34.766945, 37.926105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401039, 34.748310, 37.968239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076662, 0.415112, 0.906535,
		-0.085964, -0.908577, 0.408777,
		0.993344, -0.046592, 0.105338,
		38.699043, 34.734333, 37.999840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178143, 34.393047, 38.564461>,  <38.003700, 34.766945, 37.926105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178143, 34.393047, 38.564461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480579, 34.634483, 38.463276>,  <38.662041, 34.779346, 38.402565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480579, 34.634483, 38.463276>,  <38.178143, 34.393047, 38.564461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480579, 34.634483, 38.463276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013425, 0.372140, 0.928079,
		0.654323, -0.705113, 0.273271,
		0.756096, 0.603595, -0.252966,
		38.707409, 34.815563, 38.387386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606430, 34.330574, 39.071342>,  <38.178143, 34.393047, 38.564461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606430, 34.330574, 39.071342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707119, 34.691532, 38.931442>,  <38.767532, 34.908108, 38.847504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.707119, 34.691532, 38.931442>,  <38.606430, 34.330574, 39.071342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707119, 34.691532, 38.931442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021643, 0.356047, 0.934218,
		0.967557, -0.242736, 0.070095,
		0.251726, 0.902391, -0.349749,
		38.782639, 34.962250, 38.826519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197231, 34.508533, 39.448463>,  <38.606430, 34.330574, 39.071342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197231, 34.508533, 39.448463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.047688, 34.849812, 39.302975>,  <38.957962, 35.054577, 39.215679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.047688, 34.849812, 39.302975>,  <39.197231, 34.508533, 39.448463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047688, 34.849812, 39.302975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148487, 0.442161, 0.884559,
		0.915524, 0.276688, -0.291992,
		-0.373855, 0.853193, -0.363724,
		38.935532, 35.105770, 39.193859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636833, 35.103157, 39.487839>,  <39.197231, 34.508533, 39.448463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636833, 35.103157, 39.487839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.274117, 35.267773, 39.451241>,  <39.056488, 35.366543, 39.429283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.274117, 35.267773, 39.451241>,  <39.636833, 35.103157, 39.487839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274117, 35.267773, 39.451241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163509, 0.543350, 0.823429,
		0.388585, 0.731716, -0.559993,
		-0.906789, 0.411536, -0.091495,
		39.002079, 35.391235, 39.423794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628788, 35.634834, 39.909931>,  <39.636833, 35.103157, 39.487839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628788, 35.634834, 39.909931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.233696, 35.662460, 39.853912>,  <38.996639, 35.679035, 39.820301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.233696, 35.662460, 39.853912>,  <39.628788, 35.634834, 39.909931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233696, 35.662460, 39.853912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071998, 0.594418, 0.800926,
		0.138562, 0.801185, -0.582154,
		-0.987733, 0.069064, -0.140048,
		38.937378, 35.683178, 39.811897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522579, 36.218964, 40.120174>,  <39.628788, 35.634834, 39.909931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522579, 36.218964, 40.120174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.158039, 36.054508, 40.128273>,  <38.939316, 35.955837, 40.133133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.158039, 36.054508, 40.128273>,  <39.522579, 36.218964, 40.120174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158039, 36.054508, 40.128273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233188, 0.556176, 0.797679,
		-0.339215, 0.722243, -0.602742,
		-0.911349, -0.411137, 0.020245,
		38.884636, 35.931168, 40.134346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088886, 36.785267, 40.455921>,  <39.522579, 36.218964, 40.120174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088886, 36.785267, 40.455921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888172, 36.440388, 40.483719>,  <38.767742, 36.233459, 40.500397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888172, 36.440388, 40.483719>,  <39.088886, 36.785267, 40.455921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888172, 36.440388, 40.483719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476603, 0.342632, 0.809601,
		-0.721846, 0.373123, -0.582852,
		-0.501785, -0.862197, 0.069496,
		38.737637, 36.181728, 40.504566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479641, 37.131004, 40.678314>,  <39.088886, 36.785267, 40.455921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479641, 37.131004, 40.678314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469589, 36.738575, 40.755112>,  <38.463558, 36.503117, 40.801189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469589, 36.738575, 40.755112>,  <38.479641, 37.131004, 40.678314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469589, 36.738575, 40.755112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562724, 0.172616, 0.808422,
		-0.826263, -0.087725, -0.556411,
		-0.025127, -0.981075, 0.191992,
		38.462051, 36.444252, 40.812710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787796, 36.900589, 40.831844>,  <38.479641, 37.131004, 40.678314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787796, 36.900589, 40.831844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.991295, 36.600639, 41.001015>,  <38.113396, 36.420670, 41.102516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.991295, 36.600639, 41.001015>,  <37.787796, 36.900589, 40.831844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991295, 36.600639, 41.001015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482093, 0.158859, 0.861598,
		-0.713275, -0.642224, -0.280690,
		0.508749, -0.749875, 0.422922,
		38.143921, 36.375675, 41.127892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308468, 36.427334, 41.045258>,  <37.787796, 36.900589, 40.831844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308468, 36.427334, 41.045258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620735, 36.336491, 41.278145>,  <37.808098, 36.281982, 41.417877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620735, 36.336491, 41.278145>,  <37.308468, 36.427334, 41.045258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620735, 36.336491, 41.278145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565457, 0.139995, 0.812809,
		-0.266106, -0.963754, -0.019132,
		0.780670, -0.227112, 0.582215,
		37.854935, 36.268356, 41.452808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970890, 36.127876, 41.583424>,  <37.308468, 36.427334, 41.045258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970890, 36.127876, 41.583424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330753, 36.234642, 41.721630>,  <37.546669, 36.298702, 41.804554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330753, 36.234642, 41.721630>,  <36.970890, 36.127876, 41.583424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330753, 36.234642, 41.721630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420675, 0.318127, 0.849605,
		0.116850, -0.909700, 0.398486,
		0.899655, 0.266910, 0.345514,
		37.600651, 36.314716, 41.825283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988270, 35.848072, 42.261074>,  <36.970890, 36.127876, 41.583424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988270, 35.848072, 42.261074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229607, 36.166759, 42.275047>,  <37.374409, 36.357971, 42.283432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229607, 36.166759, 42.275047>,  <36.988270, 35.848072, 42.261074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229607, 36.166759, 42.275047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262670, 0.157179, 0.951998,
		0.752985, -0.583552, 0.304107,
		0.603339, 0.796719, 0.034928,
		37.410610, 36.405777, 42.285526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541092, 35.769321, 42.737907>,  <36.988270, 35.848072, 42.261074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541092, 35.769321, 42.737907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523975, 36.167755, 42.706963>,  <37.513706, 36.406815, 42.688396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.523975, 36.167755, 42.706963>,  <37.541092, 35.769321, 42.737907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523975, 36.167755, 42.706963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129531, 0.071244, 0.989013,
		0.990652, 0.052338, 0.125975,
		-0.042788, 0.996085, -0.077357,
		37.511139, 36.466579, 42.683754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980652, 36.001255, 43.243755>,  <37.541092, 35.769321, 42.737907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980652, 36.001255, 43.243755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.740170, 36.309464, 43.159042>,  <37.595879, 36.494389, 43.108215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.740170, 36.309464, 43.159042>,  <37.980652, 36.001255, 43.243755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740170, 36.309464, 43.159042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055935, 0.304956, 0.950722,
		0.797133, 0.559735, -0.226441,
		-0.601207, 0.770518, -0.211782,
		37.559807, 36.540619, 43.095509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328983, 36.507687, 43.606468>,  <37.980652, 36.001255, 43.243755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328983, 36.507687, 43.606468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946178, 36.616314, 43.565697>,  <37.716496, 36.681488, 43.541233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946178, 36.616314, 43.565697>,  <38.328983, 36.507687, 43.606468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946178, 36.616314, 43.565697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003278, 0.361498, 0.932367,
		0.290043, 0.891949, -0.346847,
		-0.957008, 0.271564, -0.101926,
		37.659077, 36.697784, 43.535118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372425, 37.187763, 43.812096>,  <38.328983, 36.507687, 43.606468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372425, 37.187763, 43.812096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985413, 37.092407, 43.845699>,  <37.753204, 37.035194, 43.865864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985413, 37.092407, 43.845699>,  <38.372425, 37.187763, 43.812096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985413, 37.092407, 43.845699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055768, 0.525523, 0.848949,
		-0.246529, 0.816699, -0.521753,
		-0.967530, -0.238387, 0.084011,
		37.695152, 37.020889, 43.870903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038418, 37.783215, 43.950928>,  <38.372425, 37.187763, 43.812096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038418, 37.783215, 43.950928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.783775, 37.496181, 44.063931>,  <37.630989, 37.323963, 44.131733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.783775, 37.496181, 44.063931>,  <38.038418, 37.783215, 43.950928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783775, 37.496181, 44.063931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190423, 0.501252, 0.844088,
		-0.747308, 0.483558, -0.455745,
		-0.636609, -0.717578, 0.282509,
		37.592793, 37.280907, 44.148682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.306068, 38.173409, 44.304035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311821, 37.801491, 44.451153>,  <37.315273, 37.578339, 44.539425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311821, 37.801491, 44.451153>,  <37.306068, 38.173409, 44.304035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311821, 37.801491, 44.451153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258068, 0.351917, 0.899753,
		-0.966020, -0.107857, -0.234889,
		0.014383, -0.929796, 0.367794,
		37.316135, 37.522552, 44.561489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761902, 38.156944, 44.738846>,  <37.306068, 38.173409, 44.304035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761902, 38.156944, 44.738846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982937, 37.847893, 44.863865>,  <37.115559, 37.662460, 44.938877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982937, 37.847893, 44.863865>,  <36.761902, 38.156944, 44.738846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982937, 37.847893, 44.863865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237276, 0.213646, 0.947658,
		-0.798965, -0.597825, -0.065268,
		0.552589, -0.772632, 0.312545,
		37.148712, 37.616104, 44.957630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266220, 37.858040, 45.205448>,  <36.761902, 38.156944, 44.738846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266220, 37.858040, 45.205448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639359, 37.734562, 45.279739>,  <36.863243, 37.660477, 45.324314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639359, 37.734562, 45.279739>,  <36.266220, 37.858040, 45.205448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639359, 37.734562, 45.279739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232553, -0.122226, 0.964873,
		-0.275153, -0.943274, -0.185807,
		0.932851, -0.308697, 0.185731,
		36.919212, 37.641953, 45.335457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170303, 37.312279, 45.704334>,  <36.266220, 37.858040, 45.205448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170303, 37.312279, 45.704334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.565163, 37.365086, 45.740345>,  <36.802078, 37.396770, 45.761951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.565163, 37.365086, 45.740345>,  <36.170303, 37.312279, 45.704334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565163, 37.365086, 45.740345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033145, -0.381964, 0.923582,
		0.156313, -0.914699, -0.372681,
		0.987151, 0.132016, 0.090023,
		36.861309, 37.404690, 45.767353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475307, 36.706425, 46.101448>,  <36.170303, 37.312279, 45.704334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475307, 36.706425, 46.101448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716312, 37.023903, 46.134975>,  <36.860916, 37.214390, 46.155094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716312, 37.023903, 46.134975>,  <36.475307, 36.706425, 46.101448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716312, 37.023903, 46.134975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044644, -0.071346, 0.996452,
		0.796860, -0.604116, -0.007553,
		0.602512, 0.793696, 0.083823,
		36.897064, 37.262012, 46.160122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981125, 36.472694, 46.524033>,  <36.475307, 36.706425, 46.101448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981125, 36.472694, 46.524033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982895, 36.872536, 46.535191>,  <36.983955, 37.112438, 46.541885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982895, 36.872536, 46.535191>,  <36.981125, 36.472694, 46.524033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982895, 36.872536, 46.535191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175922, -0.026680, 0.984042,
		0.984394, -0.009257, 0.175734,
		0.004420, 0.999601, 0.027892,
		36.984222, 37.172417, 46.543560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399715, 36.688721, 47.171299>,  <36.981125, 36.472694, 46.524033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399715, 36.688721, 47.171299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.198341, 37.026691, 47.099010>,  <37.077518, 37.229473, 47.055637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.198341, 37.026691, 47.099010>,  <37.399715, 36.688721, 47.171299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198341, 37.026691, 47.099010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082493, 0.161202, 0.983468,
		0.860088, 0.510016, -0.011454,
		-0.503431, 0.844924, -0.180721,
		37.047314, 37.280170, 47.044796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680298, 37.163265, 47.562813>,  <37.399715, 36.688721, 47.171299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680298, 37.163265, 47.562813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343636, 37.358833, 47.471100>,  <37.141640, 37.476173, 47.416073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343636, 37.358833, 47.471100>,  <37.680298, 37.163265, 47.562813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343636, 37.358833, 47.471100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071396, 0.320113, 0.944685,
		0.535274, 0.811469, -0.234518,
		-0.841656, 0.488922, -0.229284,
		37.091141, 37.505508, 47.402313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827690, 37.670391, 48.051247>,  <37.680298, 37.163265, 47.562813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827690, 37.670391, 48.051247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444000, 37.673733, 47.938244>,  <37.213787, 37.675735, 47.870441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.444000, 37.673733, 47.938244>,  <37.827690, 37.670391, 48.051247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444000, 37.673733, 47.938244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280499, 0.094427, 0.955198,
		0.034654, 0.995497, -0.088234,
		-0.959229, 0.008351, -0.282508,
		37.156231, 37.676239, 47.853493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558720, 38.286259, 48.325943>,  <37.827690, 37.670391, 48.051247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558720, 38.286259, 48.325943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248569, 38.044727, 48.251991>,  <37.062477, 37.899811, 48.207619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248569, 38.044727, 48.251991>,  <37.558720, 38.286259, 48.325943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248569, 38.044727, 48.251991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467017, 0.351234, 0.811499,
		-0.425066, 0.715563, -0.554336,
		-0.775380, -0.603825, -0.184883,
		37.015957, 37.863579, 48.196526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971996, 38.696781, 48.381599>,  <37.558720, 38.286259, 48.325943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971996, 38.696781, 48.381599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882275, 38.313770, 48.454082>,  <36.828442, 38.083965, 48.497574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882275, 38.313770, 48.454082>,  <36.971996, 38.696781, 48.381599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882275, 38.313770, 48.454082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343035, 0.251625, 0.904993,
		-0.912149, 0.140828, -0.384903,
		-0.224300, -0.957524, 0.181211,
		36.814983, 38.026512, 48.508446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439911, 38.704376, 48.822243>,  <36.971996, 38.696781, 48.381599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439911, 38.704376, 48.822243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577225, 38.332687, 48.876938>,  <36.659611, 38.109673, 48.909756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577225, 38.332687, 48.876938>,  <36.439911, 38.704376, 48.822243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577225, 38.332687, 48.876938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200733, 0.069634, 0.977168,
		-0.917532, -0.362891, -0.162623,
		0.343281, -0.929227, 0.136735,
		36.680210, 38.053921, 48.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888435, 38.303997, 49.121487>,  <36.439911, 38.704376, 48.822243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888435, 38.303997, 49.121487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246597, 38.160179, 49.226547>,  <36.461494, 38.073887, 49.289585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246597, 38.160179, 49.226547>,  <35.888435, 38.303997, 49.121487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246597, 38.160179, 49.226547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222518, 0.149607, 0.963381,
		-0.385674, -0.921056, 0.053953,
		0.895400, -0.359546, 0.262651,
		36.515217, 38.052315, 49.305344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690952, 38.074059, 49.836178>,  <35.888435, 38.303997, 49.121487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690952, 38.074059, 49.836178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.086163, 38.014572, 49.819710>,  <36.323288, 37.978878, 49.809830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.086163, 38.014572, 49.819710>,  <35.690952, 38.074059, 49.836178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086163, 38.014572, 49.819710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018104, -0.153246, 0.988022,
		-0.153246, -0.976933, -0.148718,
		-0.988022, 0.148718, 0.041170,
		36.382568, 37.969955, 49.807358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884232, 37.448166, 50.295593>,  <35.690952, 38.074059, 49.836178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884232, 37.448166, 50.295593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228237, 37.643654, 50.236904>,  <36.434639, 37.760948, 50.201691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228237, 37.643654, 50.236904>,  <35.884232, 37.448166, 50.295593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228237, 37.643654, 50.236904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135934, 0.057722, 0.989035,
		0.491829, -0.870530, -0.016792,
		0.860015, 0.488718, -0.146724,
		36.486240, 37.790268, 50.192886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406849, 37.035950, 50.612701>,  <35.884232, 37.448166, 50.295593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406849, 37.035950, 50.612701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.588402, 37.392216, 50.602039>,  <36.697334, 37.605976, 50.595642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.588402, 37.392216, 50.602039>,  <36.406849, 37.035950, 50.612701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588402, 37.392216, 50.602039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278084, -0.113166, 0.953867,
		0.846560, -0.440351, -0.299043,
		0.453878, 0.890665, -0.026653,
		36.724564, 37.659416, 50.594044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123535, 37.017826, 50.918507>,  <36.406849, 37.035950, 50.612701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123535, 37.017826, 50.918507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.016335, 37.401882, 50.950253>,  <36.952015, 37.632317, 50.969299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.016335, 37.401882, 50.950253>,  <37.123535, 37.017826, 50.918507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016335, 37.401882, 50.950253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288643, 0.001427, 0.957436,
		0.919163, 0.279502, -0.277521,
		-0.268001, 0.960144, 0.079365,
		36.935936, 37.689926, 50.974064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620037, 37.230927, 51.277020>,  <37.123535, 37.017826, 50.918507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620037, 37.230927, 51.277020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338829, 37.514194, 51.303139>,  <37.170105, 37.684155, 51.318810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338829, 37.514194, 51.303139>,  <37.620037, 37.230927, 51.277020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338829, 37.514194, 51.303139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168707, 0.076876, 0.982664,
		0.690870, 0.701847, -0.173518,
		-0.703019, 0.708167, 0.065295,
		37.127922, 37.726646, 51.322727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879356, 37.873684, 51.700497>,  <37.620037, 37.230927, 51.277020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879356, 37.873684, 51.700497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481537, 37.910900, 51.719345>,  <37.242847, 37.933228, 51.730652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481537, 37.910900, 51.719345>,  <37.879356, 37.873684, 51.700497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481537, 37.910900, 51.719345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056127, 0.096723, 0.993727,
		0.087897, 0.990953, -0.101418,
		-0.994547, 0.093038, 0.047118,
		37.183174, 37.938812, 51.733479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796574, 38.429455, 52.110630>,  <37.879356, 37.873684, 51.700497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796574, 38.429455, 52.110630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.443096, 38.242260, 52.114059>,  <37.231010, 38.129944, 52.116116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.443096, 38.242260, 52.114059>,  <37.796574, 38.429455, 52.110630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443096, 38.242260, 52.114059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077804, 0.164931, 0.983232,
		-0.461554, 0.868209, -0.182160,
		-0.883694, -0.467987, 0.008574,
		37.177986, 38.101864, 52.116631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338615, 38.832684, 52.520813>,  <37.796574, 38.429455, 52.110630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338615, 38.832684, 52.520813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154209, 38.478367, 52.542099>,  <37.043568, 38.265778, 52.554871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154209, 38.478367, 52.542099>,  <37.338615, 38.832684, 52.520813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154209, 38.478367, 52.542099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024610, 0.072712, 0.997049,
		-0.887052, 0.458343, -0.055320,
		-0.461013, -0.885796, 0.053220,
		37.015903, 38.212627, 52.558064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677193, 38.935871, 52.993046>,  <37.338615, 38.832684, 52.520813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677193, 38.935871, 52.993046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.785061, 38.551838, 52.963322>,  <36.849781, 38.321419, 52.945488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.785061, 38.551838, 52.963322>,  <36.677193, 38.935871, 52.993046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785061, 38.551838, 52.963322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043920, -0.089347, 0.995032,
		-0.961951, -0.265065, -0.066261,
		0.269668, -0.960082, -0.074306,
		36.865963, 38.263813, 52.941029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191822, 38.434803, 53.312527>,  <36.677193, 38.935871, 52.993046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191822, 38.434803, 53.312527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568058, 38.300049, 53.329506>,  <36.793800, 38.219196, 53.339695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568058, 38.300049, 53.329506>,  <36.191822, 38.434803, 53.312527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568058, 38.300049, 53.329506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062026, -0.047557, 0.996941,
		-0.333837, -0.940343, -0.065627,
		0.940588, -0.336887, 0.042449,
		36.850235, 38.198982, 53.342239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295479, 37.695171, 53.552048>,  <36.191822, 38.434803, 53.312527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295479, 37.695171, 53.552048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.584862, 37.949680, 53.659210>,  <36.758492, 38.102386, 53.723507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.584862, 37.949680, 53.659210>,  <36.295479, 37.695171, 53.552048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584862, 37.949680, 53.659210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010595, -0.398244, 0.917218,
		0.690288, -0.660730, -0.294854,
		0.723457, 0.636269, 0.267902,
		36.801899, 38.140560, 53.739582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544880, 37.701607, 53.221485>,  <36.295479, 37.695171, 53.552048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544880, 37.701607, 53.221485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145283, 37.703480, 53.239330>,  <34.905525, 37.704601, 53.250038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145283, 37.703480, 53.239330>,  <35.544880, 37.701607, 53.221485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145283, 37.703480, 53.239330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042825, -0.395671, -0.917393,
		0.013363, -0.918380, 0.395473,
		-0.998993, 0.004677, 0.044617,
		34.845585, 37.704884, 53.252716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312103, 37.119308, 52.828606>,  <35.544880, 37.701607, 53.221485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312103, 37.119308, 52.828606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985321, 37.349422, 52.844769>,  <34.789253, 37.487492, 52.854465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985321, 37.349422, 52.844769>,  <35.312103, 37.119308, 52.828606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985321, 37.349422, 52.844769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263198, -0.309584, -0.913720,
		-0.513140, -0.757103, 0.404330,
		-0.816954, 0.575285, 0.040409,
		34.740234, 37.522007, 52.856892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810757, 36.718948, 52.422569>,  <35.312103, 37.119308, 52.828606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810757, 36.718948, 52.422569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.618217, 37.069557, 52.424168>,  <34.502693, 37.279922, 52.425125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.618217, 37.069557, 52.424168>,  <34.810757, 36.718948, 52.422569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618217, 37.069557, 52.424168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292939, -0.156567, -0.943225,
		-0.826132, -0.455188, 0.332130,
		-0.481345, 0.876522, 0.003997,
		34.473812, 37.332512, 52.425365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077919, 36.478397, 52.328087>,  <34.810757, 36.718948, 52.422569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077919, 36.478397, 52.328087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148205, 36.860233, 52.231853>,  <34.190376, 37.089336, 52.174114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148205, 36.860233, 52.231853>,  <34.077919, 36.478397, 52.328087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148205, 36.860233, 52.231853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248582, -0.193446, -0.949097,
		-0.952540, 0.226571, 0.203304,
		0.175710, 0.954591, -0.240586,
		34.200916, 37.146610, 52.159679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562630, 36.698326, 51.877892>,  <34.077919, 36.478397, 52.328087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562630, 36.698326, 51.877892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847725, 36.965645, 51.792675>,  <34.018784, 37.126034, 51.741547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847725, 36.965645, 51.792675>,  <33.562630, 36.698326, 51.877892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847725, 36.965645, 51.792675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154368, -0.146828, -0.977043,
		-0.684232, 0.729263, -0.001487,
		0.712739, 0.668295, -0.213039,
		34.061546, 37.166134, 51.728764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284714, 36.968365, 51.271553>,  <33.562630, 36.698326, 51.877892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284714, 36.968365, 51.271553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663048, 37.098217, 51.270908>,  <33.890049, 37.176128, 51.270523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663048, 37.098217, 51.270908>,  <33.284714, 36.968365, 51.271553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663048, 37.098217, 51.270908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012970, 0.032834, -0.999377,
		-0.324379, 0.945270, 0.035266,
		0.945838, 0.324634, -0.001609,
		33.946800, 37.195606, 51.270424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319107, 37.448910, 50.762955>,  <33.284714, 36.968365, 51.271553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319107, 37.448910, 50.762955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700562, 37.336380, 50.805748>,  <33.929432, 37.268864, 50.831425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700562, 37.336380, 50.805748>,  <33.319107, 37.448910, 50.762955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700562, 37.336380, 50.805748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046274, -0.214185, -0.975696,
		0.297398, 0.935405, -0.191236,
		0.953632, -0.281321, 0.106984,
		33.986652, 37.251984, 50.837845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613018, 37.849030, 50.242542>,  <33.319107, 37.448910, 50.762955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613018, 37.849030, 50.242542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853745, 37.537720, 50.314224>,  <33.998180, 37.350933, 50.357231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853745, 37.537720, 50.314224>,  <33.613018, 37.849030, 50.242542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853745, 37.537720, 50.314224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087650, -0.158663, -0.983435,
		0.793813, 0.607550, -0.027269,
		0.601812, -0.778273, 0.179200,
		34.034286, 37.304237, 50.367985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169430, 37.933018, 49.894436>,  <33.613018, 37.849030, 50.242542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169430, 37.933018, 49.894436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238983, 37.544193, 49.957512>,  <34.280716, 37.310898, 49.995358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238983, 37.544193, 49.957512>,  <34.169430, 37.933018, 49.894436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238983, 37.544193, 49.957512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178654, -0.126331, -0.975768,
		0.968426, 0.197839, 0.151696,
		0.173881, -0.972060, 0.157687,
		34.291149, 37.252575, 50.004818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808601, 37.673046, 49.566875>,  <34.169430, 37.933018, 49.894436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808601, 37.673046, 49.566875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649395, 37.306290, 49.578781>,  <34.553871, 37.086235, 49.585926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649395, 37.306290, 49.578781>,  <34.808601, 37.673046, 49.566875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649395, 37.306290, 49.578781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188276, -0.113400, -0.975547,
		0.897850, -0.382681, 0.217765,
		-0.398018, -0.916895, 0.029767,
		34.529991, 37.031219, 49.587711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327599, 37.159767, 49.302822>,  <34.808601, 37.673046, 49.566875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327599, 37.159767, 49.302822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.954277, 37.022774, 49.259644>,  <34.730286, 36.940578, 49.233738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.954277, 37.022774, 49.259644>,  <35.327599, 37.159767, 49.302822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954277, 37.022774, 49.259644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172992, -0.165398, -0.970936,
		0.314675, -0.924851, 0.213613,
		-0.933303, -0.342483, -0.107945,
		34.674286, 36.920029, 49.227261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459412, 36.772663, 48.770092>,  <35.327599, 37.159767, 49.302822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459412, 36.772663, 48.770092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061611, 36.807339, 48.793613>,  <34.822933, 36.828144, 48.807724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061611, 36.807339, 48.793613>,  <35.459412, 36.772663, 48.770092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061611, 36.807339, 48.793613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052526, 0.072951, -0.995952,
		-0.090631, -0.993561, -0.067996,
		-0.994498, 0.086692, 0.058799,
		34.763260, 36.833347, 48.811253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091919, 36.390858, 48.341923>,  <35.459412, 36.772663, 48.770092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091919, 36.390858, 48.341923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.823456, 36.681122, 48.402534>,  <34.662380, 36.855282, 48.438904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.823456, 36.681122, 48.402534>,  <35.091919, 36.390858, 48.341923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823456, 36.681122, 48.402534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184575, 0.034395, -0.982216,
		-0.717971, -0.687189, 0.110855,
		-0.671156, 0.725664, 0.151533,
		34.622108, 36.898823, 48.447994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634094, 36.285423, 47.873993>,  <35.091919, 36.390858, 48.341923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634094, 36.285423, 47.873993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502628, 36.653065, 47.960915>,  <34.423748, 36.873650, 48.013069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502628, 36.653065, 47.960915>,  <34.634094, 36.285423, 47.873993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502628, 36.653065, 47.960915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068869, 0.206153, -0.976093,
		-0.941932, -0.335774, -0.004457,
		-0.328666, 0.919106, 0.217307,
		34.404030, 36.928795, 48.026108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933300, 36.406506, 47.487408>,  <34.634094, 36.285423, 47.873993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933300, 36.406506, 47.487408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.115902, 36.754322, 47.562771>,  <34.225464, 36.963013, 47.607990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.115902, 36.754322, 47.562771>,  <33.933300, 36.406506, 47.487408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115902, 36.754322, 47.562771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141196, 0.279881, -0.949595,
		-0.878448, 0.406888, 0.250542,
		0.456501, 0.869545, 0.188410,
		34.252853, 37.015186, 47.619293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514393, 36.933296, 47.181301>,  <33.933300, 36.406506, 47.487408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514393, 36.933296, 47.181301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879509, 37.090866, 47.224461>,  <34.098579, 37.185410, 47.250359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879509, 37.090866, 47.224461>,  <33.514393, 36.933296, 47.181301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879509, 37.090866, 47.224461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004190, 0.255136, -0.966896,
		-0.408413, 0.883023, 0.231235,
		0.912788, 0.393924, 0.107900,
		34.153347, 37.209042, 47.256832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538303, 37.558338, 46.725246>,  <33.514393, 36.933296, 47.181301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538303, 37.558338, 46.725246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914429, 37.463688, 46.823078>,  <34.140102, 37.406898, 46.881775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914429, 37.463688, 46.823078>,  <33.538303, 37.558338, 46.725246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914429, 37.463688, 46.823078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304186, 0.262198, -0.915818,
		0.152583, 0.935553, 0.318528,
		0.940313, -0.236630, 0.244575,
		34.196522, 37.392700, 46.896450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926128, 38.113052, 46.426304>,  <33.538303, 37.558338, 46.725246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926128, 38.113052, 46.426304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140259, 37.779888, 46.482422>,  <34.268738, 37.579990, 46.516090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140259, 37.779888, 46.482422>,  <33.926128, 38.113052, 46.426304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140259, 37.779888, 46.482422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314269, 0.042243, -0.948394,
		0.784005, 0.551786, 0.284373,
		0.535323, -0.832915, 0.140291,
		34.300858, 37.530014, 46.524509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678841, 38.328922, 46.192204>,  <33.926128, 38.113052, 46.426304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678841, 38.328922, 46.192204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632565, 37.931744, 46.202633>,  <34.604801, 37.693436, 46.208893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632565, 37.931744, 46.202633>,  <34.678841, 38.328922, 46.192204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632565, 37.931744, 46.202633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345602, -0.064850, -0.936137,
		0.931223, -0.099286, 0.350666,
		-0.115686, -0.992944, 0.026077,
		34.597858, 37.633862, 46.210457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279598, 38.142014, 46.004845>,  <34.678841, 38.328922, 46.192204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279598, 38.142014, 46.004845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052719, 37.820992, 45.930893>,  <34.916592, 37.628376, 45.886520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052719, 37.820992, 45.930893>,  <35.279598, 38.142014, 46.004845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052719, 37.820992, 45.930893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258280, 0.039825, -0.965249,
		0.782032, -0.595242, 0.184696,
		-0.567201, -0.802559, -0.184884,
		34.882557, 37.580223, 45.875427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.783897, 34.711609, 27.403271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.434147, 34.548775, 27.297632>,  <44.224297, 34.451073, 27.234249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.434147, 34.548775, 27.297632>,  <44.783897, 34.711609, 27.403271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434147, 34.548775, 27.297632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238600, -0.113224, 0.964495,
		-0.422533, 0.906346, 0.001870,
		-0.874378, -0.407084, -0.264095,
		44.171833, 34.426651, 27.218405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233952, 35.129829, 27.703939>,  <44.783897, 34.711609, 27.403271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233952, 35.129829, 27.703939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082741, 34.764023, 27.646313>,  <43.992016, 34.544540, 27.611736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082741, 34.764023, 27.646313>,  <44.233952, 35.129829, 27.703939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082741, 34.764023, 27.646313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219677, -0.062565, 0.973564,
		-0.899354, 0.399683, -0.177247,
		-0.378028, -0.914516, -0.144069,
		43.969334, 34.489670, 27.603092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639843, 35.121387, 28.085735>,  <44.233952, 35.129829, 27.703939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639843, 35.121387, 28.085735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.754871, 34.740150, 28.047964>,  <43.823887, 34.511410, 28.025301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.754871, 34.740150, 28.047964>,  <43.639843, 35.121387, 28.085735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754871, 34.740150, 28.047964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031544, -0.107965, 0.993654,
		-0.957240, -0.282766, -0.061112,
		0.287570, -0.953093, -0.094428,
		43.841141, 34.454224, 28.019636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306576, 34.784321, 28.587090>,  <43.639843, 35.121387, 28.085735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306576, 34.784321, 28.587090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.589027, 34.524326, 28.474724>,  <43.758499, 34.368332, 28.407305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.589027, 34.524326, 28.474724>,  <43.306576, 34.784321, 28.587090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589027, 34.524326, 28.474724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231086, -0.163464, 0.959103,
		-0.669319, -0.742161, 0.034775,
		0.706124, -0.649982, -0.280913,
		43.800865, 34.329330, 28.390450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135349, 34.140915, 28.893333>,  <43.306576, 34.784321, 28.587090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135349, 34.140915, 28.893333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530437, 34.107471, 28.840536>,  <43.767490, 34.087406, 28.808857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530437, 34.107471, 28.840536>,  <43.135349, 34.140915, 28.893333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530437, 34.107471, 28.840536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125443, -0.079310, 0.988926,
		-0.093165, -0.993336, -0.067846,
		0.987716, -0.083622, -0.131996,
		43.826752, 34.082390, 28.800938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290916, 33.500999, 29.331993>,  <43.135349, 34.140915, 28.893333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290916, 33.500999, 29.331993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.612480, 33.724850, 29.251451>,  <43.805420, 33.859161, 29.203127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.612480, 33.724850, 29.251451>,  <43.290916, 33.500999, 29.331993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612480, 33.724850, 29.251451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364179, -0.195525, 0.910573,
		0.470214, -0.805348, -0.360990,
		0.803911, 0.559629, -0.201352,
		43.853653, 33.892738, 29.191046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805489, 33.154896, 29.675449>,  <43.290916, 33.500999, 29.331993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805489, 33.154896, 29.675449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.014702, 33.492828, 29.630367>,  <44.140228, 33.695587, 29.603317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.014702, 33.492828, 29.630367>,  <43.805489, 33.154896, 29.675449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014702, 33.492828, 29.630367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182226, 0.018334, 0.983086,
		0.832607, -0.534719, -0.144361,
		0.523028, 0.844831, -0.112705,
		44.171612, 33.746277, 29.596556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343296, 33.081921, 30.018641>,  <43.805489, 33.154896, 29.675449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343296, 33.081921, 30.018641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353851, 33.478779, 29.969738>,  <44.360184, 33.716896, 29.940397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353851, 33.478779, 29.969738>,  <44.343296, 33.081921, 30.018641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353851, 33.478779, 29.969738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170398, 0.124973, 0.977418,
		0.985022, -0.004964, 0.172359,
		0.026392, 0.992148, -0.122255,
		44.361771, 33.776424, 29.933062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821659, 33.469616, 30.602823>,  <44.343296, 33.081921, 30.018641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821659, 33.469616, 30.602823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.581116, 33.758198, 30.465494>,  <44.436790, 33.931347, 30.383097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.581116, 33.758198, 30.465494>,  <44.821659, 33.469616, 30.602823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581116, 33.758198, 30.465494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071015, 0.379735, 0.922366,
		0.795815, 0.579055, -0.177124,
		-0.601361, 0.721454, -0.343321,
		44.400707, 33.974632, 30.362497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119007, 34.121742, 30.885521>,  <44.821659, 33.469616, 30.602823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119007, 34.121742, 30.885521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730797, 34.161655, 30.797775>,  <44.497871, 34.185604, 30.745129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730797, 34.161655, 30.797775>,  <45.119007, 34.121742, 30.885521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730797, 34.161655, 30.797775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207229, 0.119091, 0.971017,
		0.123015, 0.987857, -0.094903,
		-0.970527, 0.099783, -0.219362,
		44.439640, 34.191589, 30.731966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869820, 34.719925, 31.205572>,  <45.119007, 34.121742, 30.885521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869820, 34.719925, 31.205572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555931, 34.484760, 31.127012>,  <44.367596, 34.343662, 31.079876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555931, 34.484760, 31.127012>,  <44.869820, 34.719925, 31.205572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555931, 34.484760, 31.127012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239231, -0.005041, 0.970950,
		-0.571819, 0.808912, -0.136690,
		-0.784724, -0.587908, -0.196399,
		44.320515, 34.308388, 31.068092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345337, 35.161724, 31.457315>,  <44.869820, 34.719925, 31.205572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345337, 35.161724, 31.457315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168755, 34.803905, 31.429295>,  <44.062805, 34.589214, 31.412481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168755, 34.803905, 31.429295>,  <44.345337, 35.161724, 31.457315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168755, 34.803905, 31.429295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308887, 0.078205, 0.947878,
		-0.842441, 0.440084, -0.310837,
		-0.441455, -0.894545, -0.070054,
		44.036320, 34.535542, 31.408279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587467, 35.216763, 31.613380>,  <44.345337, 35.161724, 31.457315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587467, 35.216763, 31.613380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737782, 34.853939, 31.689312>,  <43.827972, 34.636246, 31.734871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737782, 34.853939, 31.689312>,  <43.587467, 35.216763, 31.613380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737782, 34.853939, 31.689312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226768, 0.108607, 0.967874,
		-0.898532, -0.406762, -0.164878,
		0.375788, -0.907055, 0.189827,
		43.850517, 34.581821, 31.746260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175972, 35.045105, 32.268745>,  <43.587467, 35.216763, 31.613380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175972, 35.045105, 32.268745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.480915, 34.786625, 32.254726>,  <43.663883, 34.631538, 32.246315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.480915, 34.786625, 32.254726>,  <43.175972, 35.045105, 32.268745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480915, 34.786625, 32.254726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084990, 0.046281, 0.995306,
		-0.641546, -0.761763, 0.090204,
		0.762362, -0.646201, -0.035051,
		43.709625, 34.592766, 32.244209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892849, 34.480957, 32.574692>,  <43.175972, 35.045105, 32.268745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892849, 34.480957, 32.574692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289944, 34.445869, 32.607647>,  <43.528198, 34.424816, 32.627422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.289944, 34.445869, 32.607647>,  <42.892849, 34.480957, 32.574692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289944, 34.445869, 32.607647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094607, -0.145730, 0.984790,
		-0.074376, -0.985428, -0.152970,
		0.992733, -0.087716, 0.082389,
		43.587765, 34.419556, 32.632362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085140, 33.848660, 32.918129>,  <42.892849, 34.480957, 32.574692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085140, 33.848660, 32.918129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414326, 34.073082, 32.953773>,  <43.611839, 34.207737, 32.975159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414326, 34.073082, 32.953773>,  <43.085140, 33.848660, 32.918129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414326, 34.073082, 32.953773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041196, -0.215385, 0.975660,
		0.566592, -0.799266, -0.200368,
		0.822968, 0.561055, 0.089109,
		43.661217, 34.241398, 32.980507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496429, 33.460716, 33.414948>,  <43.085140, 33.848660, 32.918129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496429, 33.460716, 33.414948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608223, 33.844700, 33.407238>,  <43.675301, 34.075089, 33.402611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608223, 33.844700, 33.407238>,  <43.496429, 33.460716, 33.414948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608223, 33.844700, 33.407238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115776, 0.053626, 0.991827,
		0.953144, -0.274971, 0.126128,
		0.279487, 0.959956, -0.019278,
		43.692070, 34.132687, 33.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925312, 33.449944, 33.921532>,  <43.496429, 33.460716, 33.414948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925312, 33.449944, 33.921532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857849, 33.840630, 33.868484>,  <43.817371, 34.075039, 33.836655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857849, 33.840630, 33.868484>,  <43.925312, 33.449944, 33.921532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857849, 33.840630, 33.868484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098411, 0.150562, 0.983690,
		0.980750, 0.152851, -0.121512,
		-0.168653, 0.976713, -0.132621,
		43.807255, 34.133644, 33.828697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417362, 33.738705, 34.320629>,  <43.925312, 33.449944, 33.921532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417362, 33.738705, 34.320629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154667, 34.035580, 34.267181>,  <43.997047, 34.213703, 34.235111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154667, 34.035580, 34.267181>,  <44.417362, 33.738705, 34.320629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154667, 34.035580, 34.267181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048302, 0.218228, 0.974702,
		0.752568, 0.633671, -0.179168,
		-0.656740, 0.742184, -0.133623,
		43.957645, 34.258236, 34.227093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674454, 34.336166, 34.666660>,  <44.417362, 33.738705, 34.320629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674454, 34.336166, 34.666660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282898, 34.404613, 34.621956>,  <44.047962, 34.445683, 34.595135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282898, 34.404613, 34.621956>,  <44.674454, 34.336166, 34.666660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282898, 34.404613, 34.621956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064108, 0.262156, 0.962894,
		0.194062, 0.949734, -0.245653,
		-0.978892, 0.171113, -0.111760,
		43.989231, 34.455948, 34.588428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593204, 34.957417, 34.941284>,  <44.674454, 34.336166, 34.666660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593204, 34.957417, 34.941284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.218739, 34.817066, 34.932537>,  <43.994061, 34.732857, 34.927288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.218739, 34.817066, 34.932537>,  <44.593204, 34.957417, 34.941284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218739, 34.817066, 34.932537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134382, 0.299669, 0.944532,
		-0.324864, 0.887176, -0.327692,
		-0.936165, -0.350880, -0.021869,
		43.937889, 34.711803, 34.925976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166935, 35.497498, 35.178810>,  <44.593204, 34.957417, 34.941284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166935, 35.497498, 35.178810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.031731, 35.129192, 35.256729>,  <43.950607, 34.908211, 35.303478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.031731, 35.129192, 35.256729>,  <44.166935, 35.497498, 35.178810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031731, 35.129192, 35.256729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337926, 0.311914, 0.887984,
		-0.878381, 0.234325, -0.416580,
		-0.338014, -0.920761, 0.194795,
		43.930328, 34.852962, 35.315166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645363, 35.596764, 34.601028>,  <44.166935, 35.497498, 35.178810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645363, 35.596764, 34.601028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908600, 35.791576, 34.830711>,  <45.066544, 35.908463, 34.968521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908600, 35.791576, 34.830711>,  <44.645363, 35.596764, 34.601028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908600, 35.791576, 34.830711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224782, 0.854929, -0.467514,
		-0.718598, 0.178598, 0.672101,
		0.658096, 0.487031, 0.574204,
		45.106030, 35.937687, 35.002972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304047, 36.236095, 34.985245>,  <44.645363, 35.596764, 34.601028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304047, 36.236095, 34.985245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.693790, 36.263279, 34.899445>,  <44.927635, 36.279587, 34.847965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.693790, 36.263279, 34.899445>,  <44.304047, 36.236095, 34.985245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693790, 36.263279, 34.899445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186378, 0.777834, -0.600198,
		0.126055, 0.624785, 0.770554,
		0.974358, 0.067956, -0.214496,
		44.986099, 36.283665, 34.835094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423645, 36.939358, 35.046352>,  <44.304047, 36.236095, 34.985245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423645, 36.939358, 35.046352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737602, 36.795437, 34.844563>,  <44.925976, 36.709084, 34.723488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737602, 36.795437, 34.844563>,  <44.423645, 36.939358, 35.046352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737602, 36.795437, 34.844563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009495, 0.821030, -0.570806,
		0.619564, 0.443229, 0.647834,
		0.784889, -0.359802, -0.504472,
		44.973068, 36.687496, 34.693222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676903, 37.533562, 34.793957>,  <44.423645, 36.939358, 35.046352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676903, 37.533562, 34.793957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.847511, 37.269329, 34.546825>,  <44.949875, 37.110790, 34.398544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.847511, 37.269329, 34.546825>,  <44.676903, 37.533562, 34.793957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847511, 37.269329, 34.546825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125754, 0.719758, -0.682740,
		0.895692, 0.213508, 0.390063,
		0.426522, -0.660577, -0.617832,
		44.975468, 37.071156, 34.361477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339657, 37.798164, 34.606152>,  <44.676903, 37.533562, 34.793957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339657, 37.798164, 34.606152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.238403, 37.545841, 34.312759>,  <45.177650, 37.394447, 34.136723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.238403, 37.545841, 34.312759>,  <45.339657, 37.798164, 34.606152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238403, 37.545841, 34.312759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130655, 0.773524, -0.620153,
		0.958567, -0.061150, -0.278225,
		-0.253136, -0.630810, -0.733485,
		45.162464, 37.356598, 34.092712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537823, 38.206032, 33.895306>,  <45.339657, 37.798164, 34.606152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537823, 38.206032, 33.895306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.305977, 37.899429, 33.784660>,  <45.166870, 37.715466, 33.718273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.305977, 37.899429, 33.784660>,  <45.537823, 38.206032, 33.895306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305977, 37.899429, 33.784660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178766, 0.450777, -0.874553,
		0.795043, -0.457452, -0.398301,
		-0.579611, -0.766510, -0.276610,
		45.132095, 37.669476, 33.701679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.828388, 37.972893, 33.304760>,  <45.537823, 38.206032, 33.895306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.828388, 37.972893, 33.304760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443104, 37.866783, 33.287529>,  <45.211933, 37.803116, 33.277191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443104, 37.866783, 33.287529>,  <45.828388, 37.972893, 33.304760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443104, 37.866783, 33.287529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100815, 0.505242, -0.857069,
		0.249128, -0.821193, -0.513397,
		-0.963209, -0.265278, -0.043082,
		45.154140, 37.787201, 33.274605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735432, 37.560360, 32.676147>,  <45.828388, 37.972893, 33.304760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735432, 37.560360, 32.676147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380833, 37.698624, 32.799202>,  <45.168072, 37.781582, 32.873035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380833, 37.698624, 32.799202>,  <45.735432, 37.560360, 32.676147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380833, 37.698624, 32.799202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127982, 0.455744, -0.880862,
		-0.444681, -0.820255, -0.359778,
		-0.886498, 0.345658, 0.307639,
		45.114883, 37.802322, 32.891495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.357075, 37.518532, 32.069412>,  <45.735432, 37.560360, 32.676147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.357075, 37.518532, 32.069412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107914, 37.748215, 32.281929>,  <44.958416, 37.886024, 32.409439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107914, 37.748215, 32.281929>,  <45.357075, 37.518532, 32.069412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107914, 37.748215, 32.281929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553772, 0.156047, -0.817916,
		-0.552564, -0.803697, 0.220780,
		-0.622905, 0.574212, 0.531291,
		44.921043, 37.920479, 32.441315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824802, 37.244633, 31.922531>,  <45.357075, 37.518532, 32.069412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824802, 37.244633, 31.922531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.717949, 37.606522, 32.055267>,  <44.653835, 37.823654, 32.134911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.717949, 37.606522, 32.055267>,  <44.824802, 37.244633, 31.922531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717949, 37.606522, 32.055267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516078, 0.156501, -0.842123,
		-0.813820, -0.396217, 0.425100,
		-0.267135, 0.904721, 0.331842,
		44.637810, 37.877937, 32.154819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182755, 37.241554, 31.811373>,  <44.824802, 37.244633, 31.922531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182755, 37.241554, 31.811373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258266, 37.630585, 31.865717>,  <44.303574, 37.864002, 31.898323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258266, 37.630585, 31.865717>,  <44.182755, 37.241554, 31.811373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258266, 37.630585, 31.865717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593355, 0.223207, -0.773374,
		-0.782490, 0.065385, 0.619220,
		0.188782, 0.972576, 0.135861,
		44.314899, 37.922356, 31.906475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555874, 37.639313, 31.719715>,  <44.182755, 37.241554, 31.811373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555874, 37.639313, 31.719715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.868752, 37.879650, 31.653793>,  <44.056477, 38.023853, 31.614241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.868752, 37.879650, 31.653793>,  <43.555874, 37.639313, 31.719715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868752, 37.879650, 31.653793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402265, 0.285040, -0.870020,
		-0.475770, 0.746819, 0.464655,
		0.782193, 0.600844, -0.164805,
		44.103409, 38.059902, 31.604351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192532, 38.200741, 31.648081>,  <43.555874, 37.639313, 31.719715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192532, 38.200741, 31.648081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553562, 38.217354, 31.476671>,  <43.770180, 38.227322, 31.373825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553562, 38.217354, 31.476671>,  <43.192532, 38.200741, 31.648081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553562, 38.217354, 31.476671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428456, 0.184245, -0.884579,
		0.042216, 0.982002, 0.184089,
		0.902576, 0.041531, -0.428523,
		43.824333, 38.229813, 31.348114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118813, 38.763763, 31.229961>,  <43.192532, 38.200741, 31.648081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118813, 38.763763, 31.229961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.434258, 38.561058, 31.090654>,  <43.623524, 38.439434, 31.007071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.434258, 38.561058, 31.090654>,  <43.118813, 38.763763, 31.229961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434258, 38.561058, 31.090654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288147, 0.195787, -0.937357,
		0.543201, 0.839561, 0.008379,
		0.788609, -0.506759, -0.348269,
		43.670841, 38.409031, 30.986174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241329, 39.170792, 30.749155>,  <43.118813, 38.763763, 31.229961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241329, 39.170792, 30.749155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.401550, 38.812035, 30.674173>,  <43.497684, 38.596779, 30.629185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.401550, 38.812035, 30.674173>,  <43.241329, 39.170792, 30.749155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401550, 38.812035, 30.674173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365665, 0.031113, -0.930226,
		0.840146, 0.441151, -0.315500,
		0.400554, -0.896893, -0.187453,
		43.521717, 38.542965, 30.617937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442162, 39.325516, 30.091845>,  <43.241329, 39.170792, 30.749155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442162, 39.325516, 30.091845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.450367, 38.926636, 30.120619>,  <43.455292, 38.687309, 30.137882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.450367, 38.926636, 30.120619>,  <43.442162, 39.325516, 30.091845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450367, 38.926636, 30.120619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432115, -0.073725, -0.898800,
		0.901585, -0.012646, -0.432416,
		0.020514, -0.997198, 0.071934,
		43.456520, 38.627476, 30.142199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737003, 39.092205, 29.490366>,  <43.442162, 39.325516, 30.091845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737003, 39.092205, 29.490366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.613453, 38.728752, 29.602777>,  <43.539322, 38.510681, 29.670225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.613453, 38.728752, 29.602777>,  <43.737003, 39.092205, 29.490366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613453, 38.728752, 29.602777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153465, -0.243993, -0.957557,
		0.938641, -0.338891, -0.064081,
		-0.308873, -0.908636, 0.281030,
		43.520790, 38.456161, 29.687086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072498, 38.604973, 29.024061>,  <43.737003, 39.092205, 29.490366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072498, 38.604973, 29.024061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.722473, 38.461990, 29.154598>,  <43.512459, 38.376202, 29.232920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.722473, 38.461990, 29.154598>,  <44.072498, 38.604973, 29.024061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722473, 38.461990, 29.154598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191631, -0.363284, -0.911758,
		0.444467, -0.860379, 0.249396,
		-0.875058, -0.357454, 0.326343,
		43.459957, 38.354755, 29.252501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940899, 37.900841, 28.691298>,  <44.072498, 38.604973, 29.024061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940899, 37.900841, 28.691298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.579403, 38.026203, 28.807938>,  <43.362507, 38.101421, 28.877922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.579403, 38.026203, 28.807938>,  <43.940899, 37.900841, 28.691298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579403, 38.026203, 28.807938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400243, -0.376985, -0.835277,
		-0.151854, -0.871583, 0.466136,
		-0.903740, 0.313408, 0.291599,
		43.308281, 38.120224, 28.895416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586540, 37.421127, 28.510290>,  <43.940899, 37.900841, 28.691298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586540, 37.421127, 28.510290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321388, 37.720287, 28.524374>,  <43.162296, 37.899784, 28.532824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321388, 37.720287, 28.524374>,  <43.586540, 37.421127, 28.510290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321388, 37.720287, 28.524374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274834, -0.199311, -0.940607,
		-0.696460, -0.633187, 0.337667,
		-0.662880, 0.747897, 0.035209,
		43.122524, 37.944656, 28.534937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.732681, 36.605202, 42.365387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388046, 36.513046, 42.184460>,  <38.181267, 36.457752, 42.075905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388046, 36.513046, 42.184460>,  <38.732681, 36.605202, 42.365387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388046, 36.513046, 42.184460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507327, -0.420838, -0.752007,
		-0.017096, -0.877391, 0.479471,
		-0.861584, -0.230392, -0.452319,
		38.129570, 36.443928, 42.048763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949326, 36.016041, 42.144531>,  <38.732681, 36.605202, 42.365387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949326, 36.016041, 42.144531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620369, 36.119797, 41.941990>,  <38.422997, 36.182049, 41.820465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620369, 36.119797, 41.941990>,  <38.949326, 36.016041, 42.144531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620369, 36.119797, 41.941990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413155, -0.339570, -0.844983,
		-0.391121, -0.904107, 0.172091,
		-0.822391, 0.259390, -0.506349,
		38.373653, 36.197613, 41.790085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960213, 35.522793, 41.652771>,  <38.949326, 36.016041, 42.144531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960213, 35.522793, 41.652771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687153, 35.772495, 41.500824>,  <38.523315, 35.922318, 41.409657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687153, 35.772495, 41.500824>,  <38.960213, 35.522793, 41.652771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687153, 35.772495, 41.500824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211746, -0.328550, -0.920445,
		-0.699397, -0.708775, 0.092100,
		-0.682648, 0.624254, -0.379867,
		38.482357, 35.959770, 41.386864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671417, 35.188187, 41.068523>,  <38.960213, 35.522793, 41.652771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671417, 35.188187, 41.068523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584053, 35.572430, 40.999779>,  <38.531635, 35.802975, 40.958530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584053, 35.572430, 40.999779>,  <38.671417, 35.188187, 41.068523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584053, 35.572430, 40.999779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065640, -0.161256, -0.984727,
		-0.973648, -0.226352, -0.027835,
		-0.218406, 0.960605, -0.171865,
		38.518532, 35.860611, 40.948219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090740, 35.116745, 40.601078>,  <38.671417, 35.188187, 41.068523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090740, 35.116745, 40.601078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266674, 35.473171, 40.556267>,  <38.372234, 35.687027, 40.529381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266674, 35.473171, 40.556267>,  <38.090740, 35.116745, 40.601078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266674, 35.473171, 40.556267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104539, -0.174691, -0.979058,
		-0.891975, 0.418910, -0.169986,
		0.439832, 0.891065, -0.112027,
		38.398624, 35.740490, 40.522659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699238, 35.432980, 40.123337>,  <38.090740, 35.116745, 40.601078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699238, 35.432980, 40.123337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072369, 35.576611, 40.111340>,  <38.296246, 35.662788, 40.104141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072369, 35.576611, 40.111340>,  <37.699238, 35.432980, 40.123337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072369, 35.576611, 40.111340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087838, -0.307342, -0.947537,
		-0.349456, 0.881253, -0.318237,
		0.932826, 0.359076, -0.029995,
		38.352215, 35.684334, 40.102341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670544, 35.824608, 39.548717>,  <37.699238, 35.432980, 40.123337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670544, 35.824608, 39.548717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060661, 35.785465, 39.627945>,  <38.294731, 35.761982, 39.675484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060661, 35.785465, 39.627945>,  <37.670544, 35.824608, 39.548717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060661, 35.785465, 39.627945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167198, -0.259091, -0.951271,
		0.144405, 0.960883, -0.236328,
		0.975291, -0.097855, 0.198072,
		38.353249, 35.756107, 39.687366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963852, 36.113010, 38.983410>,  <37.670544, 35.824608, 39.548717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963852, 36.113010, 38.983410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276951, 35.917858, 39.137959>,  <38.464809, 35.800766, 39.230690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276951, 35.917858, 39.137959>,  <37.963852, 36.113010, 38.983410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276951, 35.917858, 39.137959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362684, -0.146911, -0.920259,
		0.505738, 0.860459, 0.061952,
		0.782745, -0.487880, 0.386373,
		38.511776, 35.771496, 39.253872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578609, 36.326035, 38.673737>,  <37.963852, 36.113010, 38.983410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578609, 36.326035, 38.673737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672012, 35.957378, 38.797707>,  <38.728054, 35.736183, 38.872089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672012, 35.957378, 38.797707>,  <38.578609, 36.326035, 38.673737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672012, 35.957378, 38.797707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399067, -0.199819, -0.894884,
		0.886691, 0.332640, 0.321138,
		0.233505, -0.921641, 0.309924,
		38.742065, 35.680885, 38.890682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156391, 36.112934, 38.323093>,  <38.578609, 36.326035, 38.673737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156391, 36.112934, 38.323093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040955, 35.758278, 38.467640>,  <38.971691, 35.545483, 38.554367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040955, 35.758278, 38.467640>,  <39.156391, 36.112934, 38.323093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040955, 35.758278, 38.467640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427143, -0.457008, -0.780188,
		0.856891, -0.070804, 0.510611,
		-0.288594, -0.886640, 0.361362,
		38.954376, 35.492287, 38.576050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625835, 35.673038, 38.017303>,  <39.156391, 36.112934, 38.323093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625835, 35.673038, 38.017303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342690, 35.420517, 38.144043>,  <39.172802, 35.269005, 38.220085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342690, 35.420517, 38.144043>,  <39.625835, 35.673038, 38.017303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342690, 35.420517, 38.144043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159383, -0.579749, -0.799055,
		0.688135, -0.515120, 0.511000,
		-0.707861, -0.631302, 0.316844,
		39.130333, 35.231125, 38.239098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970989, 34.995888, 38.147655>,  <39.625835, 35.673038, 38.017303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970989, 34.995888, 38.147655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582588, 34.931980, 38.076515>,  <39.349548, 34.893635, 38.033833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582588, 34.931980, 38.076515>,  <39.970989, 34.995888, 38.147655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582588, 34.931980, 38.076515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238694, -0.689775, -0.683547,
		-0.013471, -0.706177, 0.707907,
		-0.971001, -0.159765, -0.177852,
		39.291286, 34.884052, 38.023159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686447, 34.831699, 38.481903>,  <39.970989, 34.995888, 38.147655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686447, 34.831699, 38.481903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565121, 34.636936, 38.154266>,  <40.492325, 34.520077, 37.957684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565121, 34.636936, 38.154266>,  <40.686447, 34.831699, 38.481903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565121, 34.636936, 38.154266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058445, 0.867481, -0.494026,
		0.951095, -0.101975, -0.291581,
		-0.303320, -0.486907, -0.819097,
		40.474125, 34.490864, 37.908539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130791, 34.970619, 37.937336>,  <40.686447, 34.831699, 38.481903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130791, 34.970619, 37.937336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752289, 34.901485, 37.827984>,  <40.525188, 34.860004, 37.762371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752289, 34.901485, 37.827984>,  <41.130791, 34.970619, 37.937336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752289, 34.901485, 37.827984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015493, 0.868506, -0.495437,
		0.323061, -0.464572, -0.824503,
		-0.946252, -0.172830, -0.273382,
		40.468414, 34.849636, 37.745968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603912, 34.365967, 37.835732>,  <41.130791, 34.970619, 37.937336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603912, 34.365967, 37.835732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603493, 33.969189, 37.785053>,  <41.603241, 33.731121, 37.754646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603493, 33.969189, 37.785053>,  <41.603912, 34.365967, 37.835732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603493, 33.969189, 37.785053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396572, -0.115893, 0.910659,
		-0.918003, 0.051197, -0.393255,
		-0.001047, -0.991941, -0.126693,
		41.603180, 33.671608, 37.747044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911266, 34.095959, 37.886948>,  <41.603912, 34.365967, 37.835732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911266, 34.095959, 37.886948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207264, 33.849586, 37.995049>,  <41.384865, 33.701763, 38.059910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207264, 33.849586, 37.995049>,  <40.911266, 34.095959, 37.886948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207264, 33.849586, 37.995049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471320, -0.188189, 0.861651,
		-0.479856, -0.764995, -0.429559,
		0.739997, -0.615929, 0.270254,
		41.429264, 33.664806, 38.076126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578884, 33.514214, 38.109200>,  <40.911266, 34.095959, 37.886948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578884, 33.514214, 38.109200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943649, 33.527168, 38.272842>,  <41.162506, 33.534943, 38.371029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943649, 33.527168, 38.272842>,  <40.578884, 33.514214, 38.109200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943649, 33.527168, 38.272842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362743, -0.402602, 0.840434,
		0.191927, -0.914802, -0.355389,
		0.911911, 0.032387, 0.409108,
		41.217224, 33.536884, 38.395576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493217, 33.032303, 38.487732>,  <40.578884, 33.514214, 38.109200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493217, 33.032303, 38.487732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824371, 33.186188, 38.651001>,  <41.023064, 33.278519, 38.748962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824371, 33.186188, 38.651001>,  <40.493217, 33.032303, 38.487732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824371, 33.186188, 38.651001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265191, -0.372763, 0.889225,
		0.494245, -0.844420, -0.206584,
		0.827886, 0.384711, 0.408169,
		41.072739, 33.301601, 38.773453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704296, 32.477257, 38.894737>,  <40.493217, 33.032303, 38.487732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704296, 32.477257, 38.894737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851517, 32.822727, 39.032490>,  <40.939850, 33.030010, 39.115143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851517, 32.822727, 39.032490>,  <40.704296, 32.477257, 38.894737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851517, 32.822727, 39.032490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263303, -0.258407, 0.929461,
		0.891747, -0.432763, 0.132304,
		0.368048, 0.863680, 0.344381,
		40.961929, 33.081833, 39.135803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899910, 32.368011, 39.487732>,  <40.704296, 32.477257, 38.894737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899910, 32.368011, 39.487732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880676, 32.766850, 39.511345>,  <40.869137, 33.006153, 39.525513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880676, 32.766850, 39.511345>,  <40.899910, 32.368011, 39.487732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880676, 32.766850, 39.511345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372845, -0.072746, 0.925038,
		0.926647, 0.022467, 0.375261,
		-0.048081, 0.997097, 0.059034,
		40.866253, 33.065979, 39.529057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310585, 32.499268, 40.025555>,  <40.899910, 32.368011, 39.487732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310585, 32.499268, 40.025555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044304, 32.790443, 39.959888>,  <40.884537, 32.965149, 39.920490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044304, 32.790443, 39.959888>,  <41.310585, 32.499268, 40.025555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044304, 32.790443, 39.959888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207081, 0.031141, 0.977828,
		0.716912, 0.684933, 0.130012,
		-0.665698, 0.727940, -0.164162,
		40.844593, 33.008827, 39.910641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281429, 32.754791, 40.618092>,  <41.310585, 32.499268, 40.025555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281429, 32.754791, 40.618092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950745, 32.929169, 40.475826>,  <40.752335, 33.033794, 40.390469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950745, 32.929169, 40.475826>,  <41.281429, 32.754791, 40.618092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950745, 32.929169, 40.475826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335192, 0.126076, 0.933676,
		0.451874, 0.891098, 0.041897,
		-0.826714, 0.435947, -0.355659,
		40.702732, 33.059952, 40.369129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026531, 33.243305, 41.179836>,  <41.281429, 32.754791, 40.618092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026531, 33.243305, 41.179836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709984, 33.228054, 40.935776>,  <40.520054, 33.218903, 40.789341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709984, 33.228054, 40.935776>,  <41.026531, 33.243305, 41.179836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709984, 33.228054, 40.935776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605118, 0.190850, 0.772922,
		0.086978, 0.980879, -0.174103,
		-0.791371, -0.038126, -0.610147,
		40.472572, 33.216618, 40.752731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597855, 33.861561, 41.364048>,  <41.026531, 33.243305, 41.179836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597855, 33.861561, 41.364048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367870, 33.587498, 41.185169>,  <40.229881, 33.423061, 41.077843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367870, 33.587498, 41.185169>,  <40.597855, 33.861561, 41.364048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367870, 33.587498, 41.185169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573793, -0.051967, 0.817350,
		-0.583250, 0.726543, -0.363256,
		-0.574962, -0.685153, -0.447195,
		40.195381, 33.381950, 41.051010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962368, 34.102554, 41.544415>,  <40.597855, 33.861561, 41.364048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962368, 34.102554, 41.544415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882660, 33.731544, 41.417931>,  <39.834835, 33.508938, 41.342041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882660, 33.731544, 41.417931>,  <39.962368, 34.102554, 41.544415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882660, 33.731544, 41.417931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528194, -0.170133, 0.831905,
		-0.825410, 0.332796, -0.456010,
		-0.199273, -0.927524, -0.316210,
		39.822880, 33.453289, 41.323067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332668, 34.109371, 41.499821>,  <39.962368, 34.102554, 41.544415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332668, 34.109371, 41.499821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441513, 33.726868, 41.542747>,  <39.506821, 33.497364, 41.568504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441513, 33.726868, 41.542747>,  <39.332668, 34.109371, 41.499821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441513, 33.726868, 41.542747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614889, -0.087013, 0.783798,
		-0.740178, -0.279271, -0.611673,
		0.272116, -0.956262, 0.107315,
		39.523148, 33.439991, 41.574944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685722, 33.684025, 41.597500>,  <39.332668, 34.109371, 41.499821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685722, 33.684025, 41.597500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005634, 33.503006, 41.755260>,  <39.197582, 33.394394, 41.849918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005634, 33.503006, 41.755260>,  <38.685722, 33.684025, 41.597500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005634, 33.503006, 41.755260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473986, -0.072903, 0.877509,
		-0.368365, -0.888753, -0.272809,
		0.799777, -0.452552, 0.394402,
		39.245567, 33.367241, 41.873581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428169, 33.108051, 41.902439>,  <38.685722, 33.684025, 41.597500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428169, 33.108051, 41.902439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770267, 33.174606, 42.098755>,  <38.975525, 33.214539, 42.216545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770267, 33.174606, 42.098755>,  <38.428169, 33.108051, 41.902439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770267, 33.174606, 42.098755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458917, -0.196756, 0.866419,
		0.240728, -0.966230, -0.091915,
		0.855245, 0.166390, 0.490785,
		39.026840, 33.224522, 42.245991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377048, 32.330814, 41.907745>,  <38.428169, 33.108051, 41.902439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377048, 32.330814, 41.907745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094128, 32.056587, 41.976696>,  <37.924374, 31.892050, 42.018066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094128, 32.056587, 41.976696>,  <38.377048, 32.330814, 41.907745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094128, 32.056587, 41.976696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067463, -0.177265, -0.981848,
		0.703681, -0.706096, 0.079130,
		-0.707306, -0.685570, 0.172373,
		37.881935, 31.850916, 42.028408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571732, 31.679102, 41.567886>,  <38.377048, 32.330814, 41.907745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571732, 31.679102, 41.567886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180157, 31.639042, 41.639057>,  <37.945213, 31.615005, 41.681759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180157, 31.639042, 41.639057>,  <38.571732, 31.679102, 41.567886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180157, 31.639042, 41.639057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129375, -0.369895, -0.920021,
		0.157955, -0.923660, 0.349146,
		-0.978934, -0.100152, 0.177926,
		37.886475, 31.608997, 41.692436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362858, 31.126648, 41.157326>,  <38.571732, 31.679102, 41.567886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362858, 31.126648, 41.157326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998363, 31.272055, 41.234791>,  <37.779667, 31.359299, 41.281269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998363, 31.272055, 41.234791>,  <38.362858, 31.126648, 41.157326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998363, 31.272055, 41.234791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259629, -0.141934, -0.955221,
		-0.319752, -0.920712, 0.223715,
		-0.911236, 0.363517, 0.193660,
		37.724991, 31.381109, 41.292889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851849, 30.771410, 40.879459>,  <38.362858, 31.126648, 41.157326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851849, 30.771410, 40.879459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627850, 31.099911, 40.923183>,  <37.493450, 31.297012, 40.949417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627850, 31.099911, 40.923183>,  <37.851849, 30.771410, 40.879459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627850, 31.099911, 40.923183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304714, -0.081474, -0.948953,
		-0.770425, -0.564717, 0.295872,
		-0.559996, 0.821253, 0.109307,
		37.459850, 31.346287, 40.955975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164692, 30.639093, 40.505131>,  <37.851849, 30.771410, 40.879459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164692, 30.639093, 40.505131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211369, 31.035824, 40.525791>,  <37.239376, 31.273861, 40.538189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211369, 31.035824, 40.525791>,  <37.164692, 30.639093, 40.505131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211369, 31.035824, 40.525791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406364, 0.095136, -0.908745,
		-0.906229, 0.085055, 0.414144,
		0.116693, 0.991824, 0.051651,
		37.246376, 31.333370, 40.541286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527073, 30.959457, 40.380894>,  <37.164692, 30.639093, 40.505131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527073, 30.959457, 40.380894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804131, 31.235712, 40.297691>,  <36.970364, 31.401464, 40.247772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804131, 31.235712, 40.297691>,  <36.527073, 30.959457, 40.380894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804131, 31.235712, 40.297691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473290, 0.217579, -0.853613,
		-0.544279, 0.689697, 0.477576,
		0.692645, 0.690636, -0.208003,
		37.011925, 31.442904, 40.235291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134792, 31.273401, 40.037163>,  <36.527073, 30.959457, 40.380894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134792, 31.273401, 40.037163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493443, 31.427214, 39.949348>,  <36.708633, 31.519501, 39.896660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493443, 31.427214, 39.949348>,  <36.134792, 31.273401, 40.037163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493443, 31.427214, 39.949348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332357, 0.256859, -0.907503,
		-0.292572, 0.886657, 0.358108,
		0.896627, 0.384530, -0.219537,
		36.762432, 31.542572, 39.883488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940617, 31.752565, 39.556908>,  <36.134792, 31.273401, 40.037163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940617, 31.752565, 39.556908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337070, 31.757252, 39.503983>,  <36.574944, 31.760063, 39.472229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337070, 31.757252, 39.503983>,  <35.940617, 31.752565, 39.556908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337070, 31.757252, 39.503983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128148, 0.346470, -0.929267,
		0.034953, 0.937988, 0.344901,
		0.991139, 0.011718, -0.132312,
		36.634411, 31.760767, 39.464291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111870, 32.406818, 39.252022>,  <35.940617, 31.752565, 39.556908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111870, 32.406818, 39.252022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415051, 32.155243, 39.182804>,  <36.596958, 32.004299, 39.141273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415051, 32.155243, 39.182804>,  <36.111870, 32.406818, 39.252022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415051, 32.155243, 39.182804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052925, 0.323693, -0.944681,
		0.650157, 0.706867, 0.278631,
		0.757954, -0.628937, -0.173041,
		36.642437, 31.966562, 39.130894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587543, 32.810829, 39.006062>,  <36.111870, 32.406818, 39.252022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587543, 32.810829, 39.006062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680199, 32.444733, 38.874195>,  <36.735790, 32.225075, 38.795074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680199, 32.444733, 38.874195>,  <36.587543, 32.810829, 39.006062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680199, 32.444733, 38.874195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068516, 0.353393, -0.932962,
		0.970386, 0.193523, 0.144569,
		0.231640, -0.915239, -0.329668,
		36.749691, 32.170162, 38.775295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214722, 32.912689, 38.627934>,  <36.587543, 32.810829, 39.006062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214722, 32.912689, 38.627934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056171, 32.569683, 38.496750>,  <36.961040, 32.363880, 38.418037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056171, 32.569683, 38.496750>,  <37.214722, 32.912689, 38.627934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056171, 32.569683, 38.496750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170332, 0.282336, -0.944073,
		0.902152, -0.430065, 0.034152,
		-0.396371, -0.857514, -0.327964,
		36.937260, 32.312428, 38.398361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699093, 32.701775, 38.004456>,  <37.214722, 32.912689, 38.627934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699093, 32.701775, 38.004456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323990, 32.563198, 37.994766>,  <37.098927, 32.480053, 37.988953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323990, 32.563198, 37.994766>,  <37.699093, 32.701775, 38.004456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323990, 32.563198, 37.994766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055068, 0.217207, -0.974571,
		0.342895, -0.912578, -0.222765,
		-0.937758, -0.346443, -0.024225,
		37.042664, 32.459267, 37.987499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.188236, 32.067638, 45.850361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.805279, 32.067036, 45.734844>,  <37.575504, 32.066673, 45.665535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.805279, 32.067036, 45.734844>,  <38.188236, 32.067638, 45.850361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805279, 32.067036, 45.734844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277730, -0.278919, -0.919277,
		-0.079161, -0.960313, 0.267454,
		-0.957392, -0.001509, -0.288787,
		37.518063, 32.066582, 45.648209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045345, 31.418619, 45.562809>,  <38.188236, 32.067638, 45.850361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045345, 31.418619, 45.562809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753075, 31.648010, 45.414631>,  <37.577713, 31.785645, 45.325722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753075, 31.648010, 45.414631>,  <38.045345, 31.418619, 45.562809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753075, 31.648010, 45.414631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226598, -0.308137, -0.923962,
		-0.644022, -0.759061, 0.095199,
		-0.730678, 0.573479, -0.370449,
		37.533871, 31.820053, 45.303497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816616, 31.073671, 44.924110>,  <38.045345, 31.418619, 45.562809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816616, 31.073671, 44.924110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637180, 31.427711, 44.874531>,  <37.529518, 31.640135, 44.844784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637180, 31.427711, 44.874531>,  <37.816616, 31.073671, 44.924110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637180, 31.427711, 44.874531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066924, -0.171565, -0.982897,
		-0.891227, -0.432625, 0.136198,
		-0.448592, 0.885100, -0.123950,
		37.502602, 31.693241, 44.837345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302280, 30.989008, 44.543114>,  <37.816616, 31.073671, 44.924110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302280, 30.989008, 44.543114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330177, 31.384886, 44.493092>,  <37.346916, 31.622412, 44.463078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330177, 31.384886, 44.493092>,  <37.302280, 30.989008, 44.543114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330177, 31.384886, 44.493092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060118, -0.129304, -0.989781,
		-0.995752, 0.061513, -0.068517,
		0.069744, 0.989695, -0.125057,
		37.351101, 31.681795, 44.455574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911461, 31.099989, 43.979069>,  <37.302280, 30.989008, 44.543114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911461, 31.099989, 43.979069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133820, 31.432045, 43.996250>,  <37.267235, 31.631279, 44.006557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133820, 31.432045, 43.996250>,  <36.911461, 31.099989, 43.979069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133820, 31.432045, 43.996250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049441, 0.018560, -0.998605,
		-0.829778, 0.557248, -0.030726,
		0.555900, 0.830139, 0.042952,
		37.300591, 31.681087, 44.009136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598232, 31.572392, 43.493855>,  <36.911461, 31.099989, 43.979069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598232, 31.572392, 43.493855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972698, 31.695839, 43.561203>,  <37.197380, 31.769907, 43.601612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972698, 31.695839, 43.561203>,  <36.598232, 31.572392, 43.493855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972698, 31.695839, 43.561203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141982, 0.106220, -0.984154,
		-0.321610, 0.945237, 0.055622,
		0.936167, 0.308617, 0.168368,
		37.253548, 31.788424, 43.611713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730637, 32.139156, 42.959614>,  <36.598232, 31.572392, 43.493855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730637, 32.139156, 42.959614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097260, 32.039886, 43.085045>,  <37.317234, 31.980326, 43.160301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097260, 32.039886, 43.085045>,  <36.730637, 32.139156, 42.959614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097260, 32.039886, 43.085045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319813, -0.015859, -0.947348,
		0.240079, 0.968586, 0.064833,
		0.916560, -0.248173, 0.313573,
		37.372227, 31.965435, 43.179115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237358, 32.619911, 42.615360>,  <36.730637, 32.139156, 42.959614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237358, 32.619911, 42.615360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.431293, 32.279930, 42.697826>,  <37.547657, 32.075939, 42.747307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.431293, 32.279930, 42.697826>,  <37.237358, 32.619911, 42.615360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431293, 32.279930, 42.697826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094662, -0.183347, -0.978480,
		0.869465, 0.493923, -0.008435,
		0.484840, -0.849955, 0.206169,
		37.576744, 32.024944, 42.759678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831322, 32.679596, 42.262516>,  <37.237358, 32.619911, 42.615360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831322, 32.679596, 42.262516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.771088, 32.290691, 42.334110>,  <37.734947, 32.057350, 42.377068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.771088, 32.290691, 42.334110>,  <37.831322, 32.679596, 42.262516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771088, 32.290691, 42.334110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163486, -0.203044, -0.965425,
		0.974986, -0.116113, 0.189526,
		-0.150581, -0.972261, 0.178982,
		37.725914, 31.999014, 42.387806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371727, 32.802662, 42.622677>,  <37.831322, 32.679596, 42.262516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371727, 32.802662, 42.622677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.715122, 32.998871, 42.682518>,  <38.921162, 33.116596, 42.718422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.715122, 32.998871, 42.682518>,  <38.371727, 32.802662, 42.622677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715122, 32.998871, 42.682518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202334, 0.055931, 0.977718,
		0.471227, -0.869630, 0.147266,
		0.858490, 0.490525, 0.149600,
		38.972668, 33.146027, 42.727398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749828, 32.429062, 43.186852>,  <38.371727, 32.802662, 42.622677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749828, 32.429062, 43.186852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871319, 32.809494, 43.164207>,  <38.944214, 33.037754, 43.150620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871319, 32.809494, 43.164207>,  <38.749828, 32.429062, 43.186852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871319, 32.809494, 43.164207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046318, 0.074088, 0.996176,
		0.951634, -0.299941, 0.066554,
		0.303724, 0.951077, -0.056612,
		38.962437, 33.094818, 43.147224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148453, 32.600601, 43.805458>,  <38.749828, 32.429062, 43.186852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148453, 32.600601, 43.805458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038639, 32.961998, 43.673801>,  <38.972752, 33.178837, 43.594807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038639, 32.961998, 43.673801>,  <39.148453, 32.600601, 43.805458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038639, 32.961998, 43.673801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283235, 0.251125, 0.925588,
		0.918917, 0.347331, 0.186958,
		-0.274536, 0.903492, -0.329140,
		38.956280, 33.233044, 43.575058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551598, 33.072075, 44.075687>,  <39.148453, 32.600601, 43.805458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551598, 33.072075, 44.075687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.227047, 33.282028, 43.972797>,  <39.032318, 33.408001, 43.911064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.227047, 33.282028, 43.972797>,  <39.551598, 33.072075, 44.075687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227047, 33.282028, 43.972797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036288, 0.484445, 0.874069,
		0.583401, 0.699861, -0.412113,
		-0.811373, 0.524887, -0.257229,
		38.983635, 33.439495, 43.895630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660656, 33.637566, 44.323944>,  <39.551598, 33.072075, 44.075687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660656, 33.637566, 44.323944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.273914, 33.704224, 44.246567>,  <39.041870, 33.744217, 44.200142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.273914, 33.704224, 44.246567>,  <39.660656, 33.637566, 44.323944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273914, 33.704224, 44.246567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085534, 0.502452, 0.860364,
		0.240570, 0.848393, -0.471545,
		-0.966856, 0.166645, -0.193442,
		38.983856, 33.754215, 44.188534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635185, 34.313141, 44.478951>,  <39.660656, 33.637566, 44.323944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635185, 34.313141, 44.478951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285267, 34.120857, 44.503105>,  <39.075314, 34.005489, 44.517597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285267, 34.120857, 44.503105>,  <39.635185, 34.313141, 44.478951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285267, 34.120857, 44.503105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164513, 0.411962, 0.896227,
		-0.455698, 0.774085, -0.439467,
		-0.874800, -0.480707, 0.060383,
		39.022827, 33.976646, 44.521221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217442, 34.830017, 44.626541>,  <39.635185, 34.313141, 44.478951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217442, 34.830017, 44.626541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.055187, 34.483185, 44.742218>,  <38.957836, 34.275085, 44.811626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.055187, 34.483185, 44.742218>,  <39.217442, 34.830017, 44.626541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055187, 34.483185, 44.742218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330612, 0.434153, 0.837977,
		-0.852148, 0.244301, -0.462775,
		-0.405634, -0.867080, 0.289194,
		38.933498, 34.223061, 44.828976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566845, 35.061230, 44.999886>,  <39.217442, 34.830017, 44.626541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566845, 35.061230, 44.999886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598358, 34.680614, 45.118797>,  <38.617268, 34.452248, 45.190144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598358, 34.680614, 45.118797>,  <38.566845, 35.061230, 44.999886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598358, 34.680614, 45.118797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207410, 0.276033, 0.938503,
		-0.975077, -0.135596, -0.175611,
		0.078783, -0.951535, 0.297277,
		38.621994, 34.395153, 45.207981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981689, 34.899887, 45.429493>,  <38.566845, 35.061230, 44.999886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981689, 34.899887, 45.429493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.253239, 34.621708, 45.523716>,  <38.416168, 34.454800, 45.580250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.253239, 34.621708, 45.523716>,  <37.981689, 34.899887, 45.429493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253239, 34.621708, 45.523716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174620, 0.158688, 0.971764,
		-0.713192, -0.700834, -0.013711,
		0.678870, -0.695449, 0.235555,
		38.456902, 34.413074, 45.594383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601452, 34.480793, 46.043480>,  <37.981689, 34.899887, 45.429493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601452, 34.480793, 46.043480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.992157, 34.396267, 46.057793>,  <38.226582, 34.345551, 46.066380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.992157, 34.396267, 46.057793>,  <37.601452, 34.480793, 46.043480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992157, 34.396267, 46.057793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013908, 0.229093, 0.973305,
		-0.213866, -0.950192, 0.226709,
		0.976764, -0.211310, 0.035780,
		38.285187, 34.332874, 46.068527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691833, 34.263428, 46.737144>,  <37.601452, 34.480793, 46.043480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691833, 34.263428, 46.737144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.071083, 34.297981, 46.614773>,  <38.298634, 34.318714, 46.541351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.071083, 34.297981, 46.614773>,  <37.691833, 34.263428, 46.737144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071083, 34.297981, 46.614773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278576, 0.237810, 0.930506,
		0.153132, -0.967463, 0.201410,
		0.948128, 0.086383, -0.305928,
		38.355522, 34.323898, 46.522995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142365, 33.992043, 47.316193>,  <37.691833, 34.263428, 46.737144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142365, 33.992043, 47.316193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.381840, 34.247925, 47.123379>,  <38.525524, 34.401455, 47.007690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.381840, 34.247925, 47.123379>,  <38.142365, 33.992043, 47.316193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381840, 34.247925, 47.123379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081822, 0.549809, 0.831273,
		0.796792, -0.537114, 0.276823,
		0.598688, 0.639702, -0.482032,
		38.561447, 34.439835, 46.978771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776764, 33.973866, 47.732967>,  <38.142365, 33.992043, 47.316193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776764, 33.973866, 47.732967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771404, 34.298218, 47.498943>,  <38.768188, 34.492828, 47.358528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771404, 34.298218, 47.498943>,  <38.776764, 33.973866, 47.732967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771404, 34.298218, 47.498943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253436, 0.568763, 0.782482,
		0.967259, -0.137794, -0.213125,
		-0.013396, 0.810877, -0.585064,
		38.767384, 34.541481, 47.323425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377853, 34.300327, 47.885807>,  <38.776764, 33.973866, 47.732967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377853, 34.300327, 47.885807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.111473, 34.549343, 47.721390>,  <38.951645, 34.698753, 47.622738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.111473, 34.549343, 47.721390>,  <39.377853, 34.300327, 47.885807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111473, 34.549343, 47.721390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171951, 0.664257, 0.727458,
		0.725910, 0.413770, -0.549408,
		-0.665949, 0.622540, -0.411043,
		38.911690, 34.736107, 47.598076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.364441, 35.206764, 47.477219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738678, 35.067108, 47.456139>,  <32.963219, 34.983315, 47.443493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738678, 35.067108, 47.456139>,  <32.364441, 35.206764, 47.477219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738678, 35.067108, 47.456139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019444, 0.199963, -0.979611,
		0.352555, 0.915488, 0.193872,
		0.935589, -0.349136, -0.052697,
		33.019356, 34.962368, 47.440331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682388, 35.775620, 47.021873>,  <32.364441, 35.206764, 47.477219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682388, 35.775620, 47.021873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.928745, 35.460857, 47.006588>,  <33.076561, 35.271999, 46.997417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.928745, 35.460857, 47.006588>,  <32.682388, 35.775620, 47.021873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928745, 35.460857, 47.006588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077669, 0.108913, -0.991012,
		0.783991, 0.607391, 0.128197,
		0.615894, -0.786902, -0.038211,
		33.113514, 35.224789, 46.995125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158127, 35.950909, 46.520580>,  <32.682388, 35.775620, 47.021873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158127, 35.950909, 46.520580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197964, 35.553158, 46.535007>,  <33.221867, 35.314507, 46.543663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197964, 35.553158, 46.535007>,  <33.158127, 35.950909, 46.520580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197964, 35.553158, 46.535007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033594, -0.039586, -0.998651,
		0.994461, 0.098247, -0.037347,
		0.099593, -0.994374, 0.036067,
		33.227840, 35.254845, 46.545826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603245, 35.831627, 46.023460>,  <33.158127, 35.950909, 46.520580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603245, 35.831627, 46.023460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409855, 35.486805, 46.084282>,  <33.293819, 35.279911, 46.120777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409855, 35.486805, 46.084282>,  <33.603245, 35.831627, 46.023460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409855, 35.486805, 46.084282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194219, -0.063740, -0.978885,
		0.853541, -0.502797, -0.136610,
		-0.483473, -0.862051, 0.152058,
		33.264812, 35.228191, 46.129898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906364, 35.464478, 45.559212>,  <33.603245, 35.831627, 46.023460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906364, 35.464478, 45.559212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576920, 35.245140, 45.617157>,  <33.379253, 35.113537, 45.651924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576920, 35.245140, 45.617157>,  <33.906364, 35.464478, 45.559212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576920, 35.245140, 45.617157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108896, -0.097774, -0.989233,
		0.556600, -0.830520, 0.020815,
		-0.823613, -0.548340, 0.144861,
		33.329834, 35.080639, 45.660614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018246, 35.084808, 45.109669>,  <33.906364, 35.464478, 45.559212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018246, 35.084808, 45.109669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646057, 34.959557, 45.185753>,  <33.422745, 34.884407, 45.231403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646057, 34.959557, 45.185753>,  <34.018246, 35.084808, 45.109669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646057, 34.959557, 45.185753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081803, -0.328504, -0.940953,
		0.357126, -0.891086, 0.280047,
		-0.930467, -0.313130, 0.190211,
		33.366917, 34.865616, 45.242817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825382, 34.371769, 44.837910>,  <34.018246, 35.084808, 45.109669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825382, 34.371769, 44.837910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480274, 34.572121, 44.865448>,  <33.273209, 34.692333, 44.881969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480274, 34.572121, 44.865448>,  <33.825382, 34.371769, 44.837910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480274, 34.572121, 44.865448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145817, -0.116128, -0.982472,
		-0.484109, -0.857689, 0.173229,
		-0.862772, 0.500883, 0.068847,
		33.221443, 34.722385, 44.886101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361050, 33.975964, 44.504448>,  <33.825382, 34.371769, 44.837910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361050, 33.975964, 44.504448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177608, 34.331150, 44.518288>,  <33.067543, 34.544262, 44.526592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177608, 34.331150, 44.518288>,  <33.361050, 33.975964, 44.504448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177608, 34.331150, 44.518288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259453, -0.096560, -0.960916,
		-0.849922, -0.449655, 0.274669,
		-0.458603, 0.887968, 0.034596,
		33.040028, 34.597542, 44.528667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718487, 33.929131, 44.217976>,  <33.361050, 33.975964, 44.504448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718487, 33.929131, 44.217976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.816666, 34.314697, 44.176739>,  <32.875572, 34.546036, 44.151997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.816666, 34.314697, 44.176739>,  <32.718487, 33.929131, 44.217976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816666, 34.314697, 44.176739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089196, -0.083442, -0.992513,
		-0.965297, 0.252806, 0.065497,
		0.245448, 0.963912, -0.103095,
		32.890301, 34.603870, 44.145809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109642, 34.269211, 43.875481>,  <32.718487, 33.929131, 44.217976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109642, 34.269211, 43.875481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.430557, 34.505276, 43.839615>,  <32.623108, 34.646915, 43.818096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.430557, 34.505276, 43.839615>,  <32.109642, 34.269211, 43.875481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430557, 34.505276, 43.839615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076533, -0.047274, -0.995946,
		-0.592011, 0.805897, 0.007240,
		0.802288, 0.590165, -0.089665,
		32.671242, 34.682323, 43.812714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007145, 34.749931, 43.384232>,  <32.109642, 34.269211, 43.875481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007145, 34.749931, 43.384232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406254, 34.775223, 43.375683>,  <32.645718, 34.790398, 43.370552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406254, 34.775223, 43.375683>,  <32.007145, 34.749931, 43.384232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406254, 34.775223, 43.375683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035346, 0.228913, -0.972805,
		-0.056615, 0.971391, 0.230637,
		0.997770, 0.063228, -0.021375,
		32.705585, 34.794189, 43.369270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236317, 35.145428, 42.873272>,  <32.007145, 34.749931, 43.384232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236317, 35.145428, 42.873272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603119, 34.992878, 42.920021>,  <32.823200, 34.901348, 42.948071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603119, 34.992878, 42.920021>,  <32.236317, 35.145428, 42.873272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603119, 34.992878, 42.920021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192043, 0.165312, -0.967363,
		0.349603, 0.909521, 0.224832,
		0.917004, -0.381371, 0.116874,
		32.878220, 34.878468, 42.955082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670486, 35.613094, 42.477295>,  <32.236317, 35.145428, 42.873272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670486, 35.613094, 42.477295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.871754, 35.270355, 42.522247>,  <32.992516, 35.064713, 42.549221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.871754, 35.270355, 42.522247>,  <32.670486, 35.613094, 42.477295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871754, 35.270355, 42.522247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126368, -0.055696, -0.990419,
		0.854897, 0.512552, 0.080254,
		0.503172, -0.856848, 0.112385,
		33.022705, 35.013302, 42.555962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354069, 35.748417, 42.083370>,  <32.670486, 35.613094, 42.477295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354069, 35.748417, 42.083370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278381, 35.357300, 42.119396>,  <33.232967, 35.122627, 42.141010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278381, 35.357300, 42.119396>,  <33.354069, 35.748417, 42.083370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278381, 35.357300, 42.119396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277061, -0.141162, -0.950427,
		0.942036, -0.154887, 0.297620,
		-0.189221, -0.977795, 0.090066,
		33.221615, 35.063961, 42.146416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056896, 36.054676, 42.286346>,  <33.354069, 35.748417, 42.083370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056896, 36.054676, 42.286346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.267036, 36.338089, 42.097885>,  <34.393120, 36.508137, 41.984806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.267036, 36.338089, 42.097885>,  <34.056896, 36.054676, 42.286346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267036, 36.338089, 42.097885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068998, 0.516426, 0.853547,
		0.848084, -0.480920, 0.222418,
		0.525350, 0.708534, -0.471155,
		34.424641, 36.550648, 41.956539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623154, 36.096077, 42.698990>,  <34.056896, 36.054676, 42.286346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623154, 36.096077, 42.698990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.586216, 36.448654, 42.513721>,  <34.564053, 36.660202, 42.402561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.586216, 36.448654, 42.513721>,  <34.623154, 36.096077, 42.698990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586216, 36.448654, 42.513721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161394, 0.472256, 0.866560,
		0.982560, 0.005268, -0.185869,
		-0.092343, 0.881446, -0.463169,
		34.558514, 36.713089, 42.374771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277672, 36.610382, 42.837059>,  <34.623154, 36.096077, 42.698990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277672, 36.610382, 42.837059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.958427, 36.831264, 42.740650>,  <34.766880, 36.963795, 42.682804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.958427, 36.831264, 42.740650>,  <35.277672, 36.610382, 42.837059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958427, 36.831264, 42.740650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146336, 0.565705, 0.811519,
		0.584469, 0.612413, -0.532303,
		-0.798111, 0.552203, -0.241020,
		34.718994, 36.996925, 42.668343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544670, 37.256153, 42.847763>,  <35.277672, 36.610382, 42.837059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544670, 37.256153, 42.847763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149559, 37.302795, 42.889126>,  <34.912491, 37.330780, 42.913944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149559, 37.302795, 42.889126>,  <35.544670, 37.256153, 42.847763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149559, 37.302795, 42.889126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151244, 0.556937, 0.816668,
		0.037638, 0.822328, -0.567768,
		-0.987779, 0.116609, 0.103410,
		34.853226, 37.337780, 42.920151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354446, 37.906639, 43.154560>,  <35.544670, 37.256153, 42.847763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354446, 37.906639, 43.154560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.042618, 37.664120, 43.217392>,  <34.855522, 37.518608, 43.255089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.042618, 37.664120, 43.217392>,  <35.354446, 37.906639, 43.154560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042618, 37.664120, 43.217392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155658, 0.430484, 0.889075,
		-0.606661, 0.668648, -0.429968,
		-0.779572, -0.606295, 0.157078,
		34.808746, 37.482231, 43.264515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091156, 38.223675, 43.769226>,  <35.354446, 37.906639, 43.154560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091156, 38.223675, 43.769226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851086, 37.905067, 43.739967>,  <34.707043, 37.713902, 43.722412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851086, 37.905067, 43.739967>,  <35.091156, 38.223675, 43.769226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851086, 37.905067, 43.739967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194639, 0.056737, 0.979233,
		-0.775827, 0.601946, -0.189086,
		-0.600173, -0.796519, -0.073145,
		34.671032, 37.666111, 43.718025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398289, 38.331856, 44.075069>,  <35.091156, 38.223675, 43.769226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398289, 38.331856, 44.075069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.484253, 37.941498, 44.090260>,  <34.535831, 37.707283, 44.099373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.484253, 37.941498, 44.090260>,  <34.398289, 38.331856, 44.075069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484253, 37.941498, 44.090260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174476, -0.000111, 0.984661,
		-0.960922, -0.218242, -0.170294,
		0.214913, -0.975895, 0.037971,
		34.548725, 37.648731, 44.101650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946747, 38.128944, 44.676796>,  <34.398289, 38.331856, 44.075069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946747, 38.128944, 44.676796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208431, 37.829185, 44.635975>,  <34.365444, 37.649330, 44.611481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208431, 37.829185, 44.635975>,  <33.946747, 38.128944, 44.676796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208431, 37.829185, 44.635975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126752, -0.024386, 0.991635,
		-0.745614, -0.661675, 0.079033,
		0.654212, -0.749394, -0.102051,
		34.404694, 37.604366, 44.605358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768349, 37.725353, 45.197720>,  <33.946747, 38.128944, 44.676796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768349, 37.725353, 45.197720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145500, 37.627235, 45.107555>,  <34.371792, 37.568367, 45.053459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145500, 37.627235, 45.107555>,  <33.768349, 37.725353, 45.197720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145500, 37.627235, 45.107555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177972, -0.201083, 0.963271,
		-0.281608, -0.948366, -0.145943,
		0.942880, -0.245291, -0.225409,
		34.428364, 37.553650, 45.039932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773125, 37.028419, 45.514870>,  <33.768349, 37.725353, 45.197720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773125, 37.028419, 45.514870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.142353, 37.173092, 45.462528>,  <34.363892, 37.259895, 45.431122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.142353, 37.173092, 45.462528>,  <33.773125, 37.028419, 45.514870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142353, 37.173092, 45.462528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181892, -0.110727, 0.977064,
		0.338897, -0.925703, -0.167996,
		0.923073, 0.361682, -0.130853,
		34.419273, 37.281597, 45.423271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162151, 36.507050, 45.756176>,  <33.773125, 37.028419, 45.514870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162151, 36.507050, 45.756176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.367321, 36.849815, 45.776588>,  <34.490421, 37.055477, 45.788837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.367321, 36.849815, 45.776588>,  <34.162151, 36.507050, 45.756176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367321, 36.849815, 45.776588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123667, 0.014934, 0.992211,
		0.849480, -0.515239, 0.113632,
		0.512923, 0.856916, 0.051032,
		34.521198, 37.106892, 45.791897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655441, 36.379761, 46.226791>,  <34.162151, 36.507050, 45.756176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655441, 36.379761, 46.226791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.638046, 36.779064, 46.210873>,  <34.627609, 37.018646, 46.201321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.638046, 36.779064, 46.210873>,  <34.655441, 36.379761, 46.226791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638046, 36.779064, 46.210873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029290, 0.041088, 0.998726,
		0.998624, 0.042270, -0.031026,
		-0.043491, 0.998261, -0.039794,
		34.625000, 37.078541, 46.198933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217499, 36.604069, 46.708630>,  <34.655441, 36.379761, 46.226791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217499, 36.604069, 46.708630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.933762, 36.878574, 46.644299>,  <34.763519, 37.043278, 46.605701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.933762, 36.878574, 46.644299>,  <35.217499, 36.604069, 46.708630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933762, 36.878574, 46.644299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026543, 0.201996, 0.979027,
		0.704359, 0.698739, -0.125070,
		-0.709347, 0.686267, -0.160824,
		34.720959, 37.084454, 46.596050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483513, 37.302822, 46.980015>,  <35.217499, 36.604069, 46.708630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483513, 37.302822, 46.980015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.085232, 37.280060, 46.950768>,  <34.846264, 37.266403, 46.933220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.085232, 37.280060, 46.950768>,  <35.483513, 37.302822, 46.980015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085232, 37.280060, 46.950768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085981, 0.273354, 0.958063,
		-0.034533, 0.960229, -0.277071,
		-0.995698, -0.056908, -0.073121,
		34.786522, 37.262989, 46.928829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961868, 37.912983, 47.059109>,  <35.483513, 37.302822, 46.980015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961868, 37.912983, 47.059109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.332035, 37.819550, 47.178467>,  <36.554134, 37.763489, 47.250080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.332035, 37.819550, 47.178467>,  <35.961868, 37.912983, 47.059109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332035, 37.819550, 47.178467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317158, 0.046481, -0.947233,
		0.207392, 0.971224, 0.117098,
		0.925418, -0.233587, 0.298392,
		36.609661, 37.749474, 47.267986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381111, 38.389462, 46.781349>,  <35.961868, 37.912983, 47.059109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381111, 38.389462, 46.781349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591297, 38.057732, 46.857353>,  <36.717411, 37.858692, 46.902958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591297, 38.057732, 46.857353>,  <36.381111, 38.389462, 46.781349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591297, 38.057732, 46.857353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306696, -0.023685, -0.951513,
		0.793613, 0.558267, 0.241904,
		0.525468, -0.829324, 0.190015,
		36.748940, 37.808933, 46.914356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032135, 38.450272, 46.660805>,  <36.381111, 38.389462, 46.781349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032135, 38.450272, 46.660805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.005520, 38.052708, 46.625690>,  <36.989552, 37.814167, 46.604622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.005520, 38.052708, 46.625690>,  <37.032135, 38.450272, 46.660805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005520, 38.052708, 46.625690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378237, 0.056294, -0.923996,
		0.923315, -0.094684, 0.372190,
		-0.066535, -0.993915, -0.087790,
		36.985558, 37.754532, 46.599354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674988, 38.288399, 46.260155>,  <37.032135, 38.450272, 46.660805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674988, 38.288399, 46.260155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.432148, 37.972015, 46.229671>,  <37.286442, 37.782185, 46.211384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.432148, 37.972015, 46.229671>,  <37.674988, 38.288399, 46.260155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432148, 37.972015, 46.229671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326613, -0.160962, -0.931352,
		0.724396, -0.590316, 0.356058,
		-0.607103, -0.790961, -0.076204,
		37.250015, 37.734726, 46.206810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012539, 37.892910, 45.808342>,  <37.674988, 38.288399, 46.260155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012539, 37.892910, 45.808342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659302, 37.705593, 45.819996>,  <37.447361, 37.593204, 45.826988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659302, 37.705593, 45.819996>,  <38.012539, 37.892910, 45.808342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659302, 37.705593, 45.819996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117432, -0.280717, -0.952580,
		0.454263, -0.837796, 0.302892,
		-0.883094, -0.468291, 0.029135,
		37.394375, 37.565105, 45.828735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125122, 37.076141, 45.594952>,  <38.012539, 37.892910, 45.808342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125122, 37.076141, 45.594952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760662, 37.225517, 45.525280>,  <37.541985, 37.315144, 45.483479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760662, 37.225517, 45.525280>,  <38.125122, 37.076141, 45.594952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760662, 37.225517, 45.525280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048354, -0.322879, -0.945204,
		-0.409222, -0.869648, 0.276135,
		-0.911153, 0.373446, -0.174180,
		37.487316, 37.337551, 45.473026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676285, 36.499592, 45.378601>,  <38.125122, 37.076141, 45.594952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676285, 36.499592, 45.378601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.521740, 36.838634, 45.233112>,  <37.429012, 37.042061, 45.145821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.521740, 36.838634, 45.233112>,  <37.676285, 36.499592, 45.378601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521740, 36.838634, 45.233112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216828, -0.466759, -0.857392,
		-0.896498, -0.252401, 0.364123,
		-0.386365, 0.847602, -0.363721,
		37.405830, 37.092915, 45.123997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194496, 36.301361, 44.948807>,  <37.676285, 36.499592, 45.378601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194496, 36.301361, 44.948807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.213100, 36.681175, 44.824726>,  <37.224262, 36.909061, 44.750278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.213100, 36.681175, 44.824726>,  <37.194496, 36.301361, 44.948807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213100, 36.681175, 44.824726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025881, -0.309288, -0.950616,
		-0.998583, 0.052238, 0.010191,
		0.046507, 0.949532, -0.310202,
		37.227051, 36.966034, 44.731667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688442, 36.445229, 44.543297>,  <37.194496, 36.301361, 44.948807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688442, 36.445229, 44.543297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.962147, 36.711594, 44.424412>,  <37.126369, 36.871414, 44.353081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.962147, 36.711594, 44.424412>,  <36.688442, 36.445229, 44.543297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962147, 36.711594, 44.424412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070878, -0.344912, -0.935955,
		-0.725782, 0.661506, -0.188812,
		0.684264, 0.665917, -0.297217,
		37.167427, 36.911369, 44.335247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510021, 36.521877, 43.891087>,  <36.688442, 36.445229, 44.543297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510021, 36.521877, 43.891087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.866402, 36.703438, 43.885750>,  <37.080231, 36.812374, 43.882549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.866402, 36.703438, 43.885750>,  <36.510021, 36.521877, 43.891087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866402, 36.703438, 43.885750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028017, 0.025624, -0.999279,
		-0.453234, 0.890683, 0.035547,
		0.890951, 0.453903, -0.013340,
		37.133686, 36.839607, 43.881748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490444, 37.182796, 43.390957>,  <36.510021, 36.521877, 43.891087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490444, 37.182796, 43.390957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851070, 37.016373, 43.438416>,  <37.067444, 36.916519, 43.466892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851070, 37.016373, 43.438416>,  <36.490444, 37.182796, 43.390957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851070, 37.016373, 43.438416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066034, -0.138702, -0.988130,
		0.427581, 0.898696, -0.097574,
		0.901562, -0.416062, 0.118651,
		37.121540, 36.891556, 43.474010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809505, 37.542572, 42.859123>,  <36.490444, 37.182796, 43.390957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809505, 37.542572, 42.859123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.038612, 37.224102, 42.937138>,  <37.176079, 37.033020, 42.983948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.038612, 37.224102, 42.937138>,  <36.809505, 37.542572, 42.859123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038612, 37.224102, 42.937138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279068, -0.034326, -0.959658,
		0.770750, 0.604093, 0.202526,
		0.572770, -0.796174, 0.195039,
		37.210442, 36.985249, 42.995651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520863, 37.696011, 42.707096>,  <36.809505, 37.542572, 42.859123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520863, 37.696011, 42.707096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466587, 37.301014, 42.674992>,  <37.434021, 37.064014, 42.655727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466587, 37.301014, 42.674992>,  <37.520863, 37.696011, 42.707096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466587, 37.301014, 42.674992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387935, 0.021591, -0.921434,
		0.911644, -0.156164, 0.380154,
		-0.135687, -0.987495, -0.080265,
		37.425880, 37.004765, 42.650913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122482, 37.523804, 42.297943>,  <37.520863, 37.696011, 42.707096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122482, 37.523804, 42.297943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907494, 37.187180, 42.276375>,  <37.778500, 36.985207, 42.263432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907494, 37.187180, 42.276375>,  <38.122482, 37.523804, 42.297943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907494, 37.187180, 42.276375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443351, -0.227598, -0.866971,
		0.717332, -0.489879, 0.495432,
		-0.537471, -0.841557, -0.053925,
		37.746254, 36.934711, 42.260197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.550327, 32.899818, 26.911652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.272474, 32.632286, 27.017590>,  <28.105762, 32.471767, 27.081152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.272474, 32.632286, 27.017590>,  <28.550327, 32.899818, 26.911652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272474, 32.632286, 27.017590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136590, 0.238841, 0.961404,
		-0.706276, 0.704000, -0.074551,
		-0.694634, -0.668834, 0.264847,
		28.064083, 32.431637, 27.097044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024702, 33.215672, 27.333704>,  <28.550327, 32.899818, 26.911652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024702, 33.215672, 27.333704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.963409, 32.832104, 27.429199>,  <27.926634, 32.601963, 27.486496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.963409, 32.832104, 27.429199>,  <28.024702, 33.215672, 27.333704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963409, 32.832104, 27.429199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005160, 0.242364, 0.970172,
		-0.988177, 0.147427, -0.042086,
		-0.153230, -0.958919, 0.238738,
		27.917440, 32.544430, 27.500820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485680, 33.217449, 27.704695>,  <28.024702, 33.215672, 27.333704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485680, 33.217449, 27.704695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.674755, 32.880768, 27.809080>,  <27.788200, 32.678761, 27.871712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.674755, 32.880768, 27.809080>,  <27.485680, 33.217449, 27.704695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674755, 32.880768, 27.809080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135300, 0.223304, 0.965313,
		-0.870780, -0.491602, -0.008328,
		0.472690, -0.841702, 0.260963,
		27.816563, 32.628258, 27.887369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004913, 32.838566, 28.200911>,  <27.485680, 33.217449, 27.704695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004913, 32.838566, 28.200911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.350031, 32.643875, 28.255573>,  <27.557102, 32.527061, 28.288372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.350031, 32.643875, 28.255573>,  <27.004913, 32.838566, 28.200911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350031, 32.643875, 28.255573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057028, 0.174887, 0.982935,
		-0.502325, -0.855866, 0.123135,
		0.862796, -0.486731, 0.136659,
		27.608870, 32.497856, 28.296572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969671, 32.355789, 28.728840>,  <27.004913, 32.838566, 28.200911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969671, 32.355789, 28.728840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363474, 32.422092, 28.705956>,  <27.599756, 32.461872, 28.692225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363474, 32.422092, 28.705956>,  <26.969671, 32.355789, 28.728840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363474, 32.422092, 28.705956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013816, 0.251914, 0.967651,
		0.174802, -0.953449, 0.245721,
		0.984507, 0.165753, -0.057208,
		27.658825, 32.471821, 28.688793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308302, 31.906879, 29.254299>,  <26.969671, 32.355789, 28.728840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308302, 31.906879, 29.254299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573946, 32.193409, 29.168655>,  <27.733332, 32.365326, 29.117270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573946, 32.193409, 29.168655>,  <27.308302, 31.906879, 29.254299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573946, 32.193409, 29.168655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063187, 0.231578, 0.970762,
		0.744961, -0.658220, 0.108531,
		0.664108, 0.716322, -0.214108,
		27.773178, 32.408306, 29.104424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889933, 31.810202, 29.711929>,  <27.308302, 31.906879, 29.254299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889933, 31.810202, 29.711929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.875097, 32.190701, 29.589457>,  <27.866196, 32.418999, 29.515972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.875097, 32.190701, 29.589457>,  <27.889933, 31.810202, 29.711929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875097, 32.190701, 29.589457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220615, 0.306630, 0.925909,
		0.974656, -0.033206, -0.221233,
		-0.037091, 0.951250, -0.306184,
		27.863970, 32.476074, 29.497601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329308, 32.096264, 30.278423>,  <27.889933, 31.810202, 29.711929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329308, 32.096264, 30.278423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.141659, 32.408009, 30.112280>,  <28.029070, 32.595055, 30.012594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.141659, 32.408009, 30.112280>,  <28.329308, 32.096264, 30.278423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141659, 32.408009, 30.112280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131668, 0.403346, 0.905525,
		0.873263, 0.479491, -0.086602,
		-0.469122, 0.779359, -0.415361,
		28.000923, 32.641815, 29.987671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624081, 32.688889, 30.342890>,  <28.329308, 32.096264, 30.278423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624081, 32.688889, 30.342890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247534, 32.810986, 30.285410>,  <28.021605, 32.884243, 30.250921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247534, 32.810986, 30.285410>,  <28.624081, 32.688889, 30.342890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247534, 32.810986, 30.285410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013843, 0.460516, 0.887543,
		0.337095, 0.833516, -0.437741,
		-0.941369, 0.305246, -0.143699,
		27.965122, 32.902557, 30.242300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599348, 33.360630, 30.727949>,  <28.624081, 32.688889, 30.342890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599348, 33.360630, 30.727949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214743, 33.269115, 30.667095>,  <27.983978, 33.214207, 30.630583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214743, 33.269115, 30.667095>,  <28.599348, 33.360630, 30.727949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214743, 33.269115, 30.667095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264868, 0.624647, 0.734617,
		-0.073041, 0.746641, -0.661206,
		-0.961515, -0.228789, -0.152136,
		27.926289, 33.200478, 30.621454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304043, 33.954113, 30.863445>,  <28.599348, 33.360630, 30.727949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304043, 33.954113, 30.863445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994495, 33.705475, 30.912018>,  <27.808767, 33.556293, 30.941162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994495, 33.705475, 30.912018>,  <28.304043, 33.954113, 30.863445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994495, 33.705475, 30.912018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221552, 0.445302, 0.867537,
		-0.593331, 0.644457, -0.482321,
		-0.773869, -0.621596, 0.121431,
		27.762335, 33.518997, 30.948446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749311, 34.376488, 31.085489>,  <28.304043, 33.954113, 30.863445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749311, 34.376488, 31.085489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.690022, 33.998425, 31.201904>,  <27.654448, 33.771587, 31.271753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.690022, 33.998425, 31.201904>,  <27.749311, 34.376488, 31.085489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690022, 33.998425, 31.201904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059094, 0.302228, 0.951402,
		-0.987186, 0.123823, -0.100650,
		-0.148225, -0.945159, 0.291038,
		27.645554, 33.714878, 31.289215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271948, 34.355339, 31.523645>,  <27.749311, 34.376488, 31.085489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271948, 34.355339, 31.523645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412413, 33.997303, 31.633554>,  <27.496691, 33.782482, 31.699499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412413, 33.997303, 31.633554>,  <27.271948, 34.355339, 31.523645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412413, 33.997303, 31.633554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212116, 0.209781, 0.954463,
		-0.911972, -0.393453, -0.116196,
		0.351161, -0.895090, 0.274772,
		27.517761, 33.728775, 31.715986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862459, 34.166485, 32.109924>,  <27.271948, 34.355339, 31.523645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862459, 34.166485, 32.109924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186039, 33.933746, 32.143513>,  <27.380188, 33.794102, 32.163666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186039, 33.933746, 32.143513>,  <26.862459, 34.166485, 32.109924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186039, 33.933746, 32.143513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086556, 0.023401, 0.995972,
		-0.581470, -0.812960, -0.031432,
		0.808950, -0.581849, 0.083973,
		27.428724, 33.759193, 32.168705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754791, 33.591225, 32.599087>,  <26.862459, 34.166485, 32.109924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754791, 33.591225, 32.599087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.154222, 33.612549, 32.599632>,  <27.393881, 33.625343, 32.599960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.154222, 33.612549, 32.599632>,  <26.754791, 33.591225, 32.599087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154222, 33.612549, 32.599632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002353, -0.069546, 0.997576,
		0.053280, -0.996153, -0.069573,
		0.998577, 0.053314, 0.001362,
		27.453796, 33.628544, 32.600040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096891, 32.896835, 32.881161>,  <26.754791, 33.591225, 32.599087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096891, 32.896835, 32.881161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.351212, 33.200500, 32.936913>,  <27.503803, 33.382698, 32.970364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.351212, 33.200500, 32.936913>,  <27.096891, 32.896835, 32.881161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351212, 33.200500, 32.936913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057307, -0.133648, 0.989371,
		0.769722, -0.637030, -0.041468,
		0.635801, 0.759165, 0.139378,
		27.541952, 33.428249, 32.978725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556612, 32.595791, 33.311466>,  <27.096891, 32.896835, 32.881161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556612, 32.595791, 33.311466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625284, 32.988876, 33.339176>,  <27.666487, 33.224728, 33.355804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625284, 32.988876, 33.339176>,  <27.556612, 32.595791, 33.311466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625284, 32.988876, 33.339176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292203, -0.117953, 0.949054,
		0.940820, -0.142691, -0.307402,
		0.171681, 0.982714, 0.069278,
		27.676788, 33.283691, 33.359959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258945, 32.630402, 33.766224>,  <27.556612, 32.595791, 33.311466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258945, 32.630402, 33.766224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079712, 32.987347, 33.787785>,  <27.972172, 33.201515, 33.800720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079712, 32.987347, 33.787785>,  <28.258945, 32.630402, 33.766224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079712, 32.987347, 33.787785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251630, 0.068032, 0.965429,
		0.857849, 0.446156, -0.255030,
		-0.448082, 0.892366, 0.053905,
		27.945288, 33.255058, 33.803955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709661, 33.034706, 34.254089>,  <28.258945, 32.630402, 33.766224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709661, 33.034706, 34.254089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.395845, 33.282299, 34.239361>,  <28.207556, 33.430855, 34.230526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.395845, 33.282299, 34.239361>,  <28.709661, 33.034706, 34.254089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395845, 33.282299, 34.239361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103045, 0.188695, 0.976615,
		0.611455, 0.762401, -0.211822,
		-0.784541, 0.618983, -0.036817,
		28.160482, 33.467995, 34.228317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946211, 33.669754, 34.709606>,  <28.709661, 33.034706, 34.254089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946211, 33.669754, 34.709606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.549513, 33.626858, 34.681499>,  <28.311493, 33.601120, 34.664635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.549513, 33.626858, 34.681499>,  <28.946211, 33.669754, 34.709606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549513, 33.626858, 34.681499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105429, 0.370271, 0.922922,
		-0.072959, 0.922713, -0.378521,
		-0.991747, -0.107242, -0.070266,
		28.251989, 33.594685, 34.660419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293327, 32.972973, 35.048485>,  <28.946211, 33.669754, 34.709606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293327, 32.972973, 35.048485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583305, 32.698040, 35.030441>,  <29.757292, 32.533081, 35.019615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583305, 32.698040, 35.030441>,  <29.293327, 32.972973, 35.048485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583305, 32.698040, 35.030441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208723, 0.281610, -0.936553,
		0.656423, 0.669533, 0.347613,
		0.724944, -0.687330, -0.045109,
		29.800789, 32.491840, 35.016907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935448, 33.289436, 34.838703>,  <29.293327, 32.972973, 35.048485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935448, 33.289436, 34.838703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965248, 32.906807, 34.725983>,  <29.983128, 32.677227, 34.658348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965248, 32.906807, 34.725983>,  <29.935448, 33.289436, 34.838703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965248, 32.906807, 34.725983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096643, 0.288184, -0.952686,
		0.992527, 0.043741, 0.113916,
		0.074501, -0.956576, -0.281803,
		29.987598, 32.619835, 34.641441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518538, 33.295082, 34.469353>,  <29.935448, 33.289436, 34.838703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518538, 33.295082, 34.469353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.340755, 32.955273, 34.355671>,  <30.234087, 32.751389, 34.287460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.340755, 32.955273, 34.355671>,  <30.518538, 33.295082, 34.469353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340755, 32.955273, 34.355671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251339, 0.186264, -0.949808,
		0.859819, -0.493579, 0.130732,
		-0.444455, -0.849521, -0.284209,
		30.207418, 32.700417, 34.270409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913744, 33.162209, 34.050549>,  <30.518538, 33.295082, 34.469353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913744, 33.162209, 34.050549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.606236, 32.915215, 33.983963>,  <30.421730, 32.767017, 33.944012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.606236, 32.915215, 33.983963>,  <30.913744, 33.162209, 34.050549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606236, 32.915215, 33.983963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133023, 0.100203, -0.986035,
		0.625538, -0.780177, 0.005106,
		-0.768770, -0.617481, -0.166462,
		30.375605, 32.729969, 33.934025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156885, 32.596516, 33.546425>,  <30.913744, 33.162209, 34.050549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156885, 32.596516, 33.546425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.759937, 32.640842, 33.524796>,  <30.521769, 32.667439, 33.511818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.759937, 32.640842, 33.524796>,  <31.156885, 32.596516, 33.546425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759937, 32.640842, 33.524796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057406, 0.027149, -0.997982,
		-0.109129, -0.993469, -0.033303,
		-0.992369, 0.110820, -0.054069,
		30.462227, 32.674088, 33.508575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824356, 32.058628, 33.096657>,  <31.156885, 32.596516, 33.546425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824356, 32.058628, 33.096657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.578014, 32.373413, 33.111740>,  <30.430210, 32.562283, 33.120789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.578014, 32.373413, 33.111740>,  <30.824356, 32.058628, 33.096657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578014, 32.373413, 33.111740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065881, 0.099127, -0.992892,
		-0.785102, -0.608991, -0.112893,
		-0.615853, 0.786959, 0.037704,
		30.393259, 32.609501, 33.123051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475819, 31.998898, 32.409466>,  <30.824356, 32.058628, 33.096657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475819, 31.998898, 32.409466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.345125, 32.354576, 32.537579>,  <30.266710, 32.567982, 32.614445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.345125, 32.354576, 32.537579>,  <30.475819, 31.998898, 32.409466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345125, 32.354576, 32.537579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018190, 0.332897, -0.942788,
		-0.944942, -0.313864, -0.092593,
		-0.326731, 0.889196, 0.320278,
		30.247107, 32.621334, 32.633663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978634, 32.152676, 31.900457>,  <30.475819, 31.998898, 32.409466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978634, 32.152676, 31.900457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.090075, 32.491646, 32.081238>,  <30.156939, 32.695026, 32.189705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.090075, 32.491646, 32.081238>,  <29.978634, 32.152676, 31.900457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090075, 32.491646, 32.081238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037128, 0.479733, -0.876629,
		-0.959689, 0.227451, 0.165118,
		0.278602, 0.847421, 0.451949,
		30.173655, 32.745872, 32.216824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463579, 32.521290, 31.726461>,  <29.978634, 32.152676, 31.900457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463579, 32.521290, 31.726461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.787626, 32.739880, 31.811384>,  <29.982054, 32.871033, 31.862339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.787626, 32.739880, 31.811384>,  <29.463579, 32.521290, 31.726461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787626, 32.739880, 31.811384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099634, 0.485198, -0.868709,
		-0.577740, 0.682603, 0.447515,
		0.810117, 0.546475, 0.212308,
		30.030661, 32.903824, 31.875076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189503, 33.246143, 31.523500>,  <29.463579, 32.521290, 31.726461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189503, 33.246143, 31.523500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.588892, 33.228569, 31.510109>,  <29.828526, 33.218025, 31.502073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.588892, 33.228569, 31.510109>,  <29.189503, 33.246143, 31.523500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588892, 33.228569, 31.510109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014920, 0.369100, -0.929270,
		0.053182, 0.928351, 0.367881,
		0.998473, -0.043932, -0.033480,
		29.888433, 33.215389, 31.500065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341019, 33.748577, 31.072832>,  <29.189503, 33.246143, 31.523500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341019, 33.748577, 31.072832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.687418, 33.551361, 31.106213>,  <29.895258, 33.433033, 31.126242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.687418, 33.551361, 31.106213>,  <29.341019, 33.748577, 31.072832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687418, 33.551361, 31.106213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258455, 0.298451, -0.918764,
		0.428077, 0.817216, 0.385885,
		0.865997, -0.493036, 0.083453,
		29.947218, 33.403450, 31.131248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813835, 34.189865, 30.801117>,  <29.341019, 33.748577, 31.072832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813835, 34.189865, 30.801117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997526, 33.836357, 30.765190>,  <30.107740, 33.624252, 30.743633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997526, 33.836357, 30.765190>,  <29.813835, 34.189865, 30.801117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997526, 33.836357, 30.765190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266957, 0.233736, -0.934934,
		0.847256, 0.405372, 0.343266,
		0.459229, -0.883765, -0.089817,
		30.135296, 33.571228, 30.738245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361774, 34.319801, 30.417576>,  <29.813835, 34.189865, 30.801117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361774, 34.319801, 30.417576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.341639, 33.924030, 30.363174>,  <30.329557, 33.686569, 30.330534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.341639, 33.924030, 30.363174>,  <30.361774, 34.319801, 30.417576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341639, 33.924030, 30.363174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154632, 0.126814, -0.979800,
		0.986689, -0.070356, 0.146613,
		-0.050342, -0.989428, -0.136005,
		30.326536, 33.627201, 30.322372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884569, 34.146530, 29.922764>,  <30.361774, 34.319801, 30.417576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884569, 34.146530, 29.922764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639908, 33.830154, 29.915833>,  <30.493111, 33.640331, 29.911674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639908, 33.830154, 29.915833>,  <30.884569, 34.146530, 29.922764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639908, 33.830154, 29.915833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100752, -0.056153, -0.993326,
		0.784685, -0.609316, 0.114034,
		-0.611652, -0.790937, -0.017328,
		30.456411, 33.592873, 29.910635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291580, 33.592800, 29.781466>,  <30.884569, 34.146530, 29.922764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291580, 33.592800, 29.781466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.919264, 33.481434, 29.686710>,  <30.695875, 33.414616, 29.629858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.919264, 33.481434, 29.686710>,  <31.291580, 33.592800, 29.781466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919264, 33.481434, 29.686710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303605, -0.227846, -0.925154,
		0.203605, -0.933043, 0.296606,
		-0.930790, -0.278417, -0.236886,
		30.640026, 33.397907, 29.615644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426491, 33.259338, 29.142815>,  <31.291580, 33.592800, 29.781466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426491, 33.259338, 29.142815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.029324, 33.225895, 29.176586>,  <30.791023, 33.205830, 29.196848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.029324, 33.225895, 29.176586>,  <31.426491, 33.259338, 29.142815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029324, 33.225895, 29.176586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043578, -0.404798, -0.913367,
		0.110540, -0.910576, 0.398287,
		-0.992916, -0.083607, 0.084427,
		30.731449, 33.200813, 29.201914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222065, 32.561592, 28.926893>,  <31.426491, 33.259338, 29.142815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222065, 32.561592, 28.926893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.918247, 32.814095, 28.864141>,  <30.735956, 32.965595, 28.826490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.918247, 32.814095, 28.864141>,  <31.222065, 32.561592, 28.926893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918247, 32.814095, 28.864141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063815, -0.312342, -0.947824,
		-0.647316, -0.709904, 0.277521,
		-0.759546, 0.631252, -0.156881,
		30.690384, 33.003471, 28.817078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650423, 32.101059, 28.688000>,  <31.222065, 32.561592, 28.926893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650423, 32.101059, 28.688000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652252, 32.486397, 28.580706>,  <30.653349, 32.717598, 28.516329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652252, 32.486397, 28.580706>,  <30.650423, 32.101059, 28.688000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652252, 32.486397, 28.580706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026296, -0.268259, -0.962988,
		-0.999644, -0.002650, -0.026559,
		0.004572, 0.963343, -0.268233,
		30.653624, 32.775398, 28.500237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056725, 32.228619, 28.256147>,  <30.650423, 32.101059, 28.688000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056725, 32.228619, 28.256147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297894, 32.538376, 28.179413>,  <30.442595, 32.724232, 28.133373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297894, 32.538376, 28.179413>,  <30.056725, 32.228619, 28.256147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297894, 32.538376, 28.179413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195280, -0.089891, -0.976619,
		-0.773532, 0.626286, 0.097026,
		0.602922, 0.774393, -0.191834,
		30.478769, 32.770695, 28.121862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785574, 32.514000, 27.671738>,  <30.056725, 32.228619, 28.256147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785574, 32.514000, 27.671738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.129545, 32.714607, 27.633791>,  <30.335928, 32.834972, 27.611023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.129545, 32.714607, 27.633791>,  <29.785574, 32.514000, 27.671738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129545, 32.714607, 27.633791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057773, -0.089026, -0.994352,
		-0.507132, 0.860554, -0.047582,
		0.859930, 0.501519, -0.094865,
		30.387524, 32.865063, 27.605331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696220, 33.095913, 27.137028>,  <29.785574, 32.514000, 27.671738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696220, 33.095913, 27.137028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.091211, 33.032825, 27.135611>,  <30.328205, 32.994972, 27.134760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.091211, 33.032825, 27.135611>,  <29.696220, 33.095913, 27.137028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091211, 33.032825, 27.135611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004039, -0.002811, -0.999988,
		0.157707, 0.987480, -0.003412,
		0.987478, -0.157718, -0.003545,
		30.387455, 32.985512, 27.134546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086094, 33.635143, 26.729425>,  <29.696220, 33.095913, 27.137028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086094, 33.635143, 26.729425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.300343, 33.297367, 26.731592>,  <30.428892, 33.094700, 26.732893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.300343, 33.297367, 26.731592>,  <30.086094, 33.635143, 26.729425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300343, 33.297367, 26.731592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214037, 0.129550, -0.968197,
		0.816883, 0.519746, 0.250132,
		0.535621, -0.844441, 0.005417,
		30.461029, 33.044033, 26.733217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.645485, 35.243031, 48.047535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.260963, 35.176895, 47.959393>,  <39.030251, 35.137215, 47.906506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.260963, 35.176895, 47.959393>,  <39.645485, 35.243031, 48.047535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260963, 35.176895, 47.959393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275356, 0.552047, 0.787034,
		-0.008477, 0.817257, -0.576212,
		-0.961305, -0.165335, -0.220357,
		38.972572, 35.127296, 47.893284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327606, 35.847515, 48.119591>,  <39.645485, 35.243031, 48.047535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327606, 35.847515, 48.119591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.021511, 35.592476, 48.155071>,  <38.837852, 35.439453, 48.176357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.021511, 35.592476, 48.155071>,  <39.327606, 35.847515, 48.119591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021511, 35.592476, 48.155071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324626, 0.501199, 0.802133,
		-0.555898, 0.585032, -0.590521,
		-0.765242, -0.637603, 0.088699,
		38.791939, 35.401196, 48.181683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845951, 36.241199, 48.391743>,  <39.327606, 35.847515, 48.119591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845951, 36.241199, 48.391743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673267, 35.882519, 48.430832>,  <38.569656, 35.667309, 48.454285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673267, 35.882519, 48.430832>,  <38.845951, 36.241199, 48.391743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673267, 35.882519, 48.430832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428849, 0.299354, 0.852336,
		-0.793549, 0.326048, -0.513784,
		-0.431705, -0.896705, 0.097726,
		38.543755, 35.613506, 48.460152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178764, 36.328247, 48.643894>,  <38.845951, 36.241199, 48.391743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178764, 36.328247, 48.643894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217178, 35.943584, 48.746647>,  <38.240227, 35.712788, 48.808300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217178, 35.943584, 48.746647>,  <38.178764, 36.328247, 48.643894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217178, 35.943584, 48.746647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427717, 0.193166, 0.883032,
		-0.898797, -0.194673, -0.392767,
		0.096033, -0.961660, 0.256882,
		38.245987, 35.655087, 48.823711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503506, 36.043045, 49.005970>,  <38.178764, 36.328247, 48.643894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503506, 36.043045, 49.005970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775646, 35.775963, 49.126827>,  <37.938931, 35.615715, 49.199341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775646, 35.775963, 49.126827>,  <37.503506, 36.043045, 49.005970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775646, 35.775963, 49.126827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463493, -0.072653, 0.883117,
		-0.567707, -0.740875, -0.358905,
		0.680355, -0.667701, 0.302145,
		37.979752, 35.575653, 49.217472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137562, 35.489014, 49.342884>,  <37.503506, 36.043045, 49.005970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137562, 35.489014, 49.342884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514946, 35.460785, 49.472435>,  <37.741379, 35.443848, 49.550163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514946, 35.460785, 49.472435>,  <37.137562, 35.489014, 49.342884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514946, 35.460785, 49.472435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327635, -0.050293, 0.943465,
		-0.050293, -0.996238, -0.070572,
		-0.943465, 0.070572, -0.323873,
		37.797985, 35.439613, 49.569595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144150, 34.843765, 49.827698>,  <37.137562, 35.489014, 49.342884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144150, 34.843765, 49.827698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.443844, 35.089123, 49.927608>,  <37.623661, 35.236340, 49.987556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.443844, 35.089123, 49.927608>,  <37.144150, 34.843765, 49.827698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443844, 35.089123, 49.927608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192522, -0.159144, 0.968302,
		0.633703, -0.773576, -0.001144,
		0.749237, 0.613395, 0.249780,
		37.668613, 35.273140, 50.002544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552151, 34.491375, 50.383808>,  <37.144150, 34.843765, 49.827698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552151, 34.491375, 50.383808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653973, 34.875923, 50.425709>,  <37.715065, 35.106651, 50.450851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653973, 34.875923, 50.425709>,  <37.552151, 34.491375, 50.383808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653973, 34.875923, 50.425709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238201, -0.042656, 0.970279,
		0.937264, -0.271939, 0.218141,
		0.254552, 0.961369, 0.104756,
		37.730339, 35.164333, 50.457134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975227, 34.398331, 50.919971>,  <37.552151, 34.491375, 50.383808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975227, 34.398331, 50.919971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882225, 34.786377, 50.892208>,  <37.826424, 35.019203, 50.875549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882225, 34.786377, 50.892208>,  <37.975227, 34.398331, 50.919971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882225, 34.786377, 50.892208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102876, 0.046431, 0.993610,
		0.967138, 0.238162, 0.089006,
		-0.232508, 0.970115, -0.069406,
		37.812473, 35.077412, 50.871387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442741, 34.761913, 51.355907>,  <37.975227, 34.398331, 50.919971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442741, 34.761913, 51.355907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.139969, 35.016052, 51.294735>,  <37.958305, 35.168537, 51.258030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.139969, 35.016052, 51.294735>,  <38.442741, 34.761913, 51.355907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139969, 35.016052, 51.294735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236486, -0.048154, 0.970441,
		0.609202, 0.770724, 0.186700,
		-0.756933, 0.635347, -0.152930,
		37.912888, 35.206657, 51.248856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627052, 35.357803, 51.766739>,  <38.442741, 34.761913, 51.355907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627052, 35.357803, 51.766739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.231415, 35.360523, 51.707893>,  <37.994030, 35.362156, 51.672588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.231415, 35.360523, 51.707893>,  <38.627052, 35.357803, 51.766739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231415, 35.360523, 51.707893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146197, 0.074911, 0.986415,
		0.017728, 0.997167, -0.073100,
		-0.989097, 0.006800, -0.147111,
		37.934685, 35.362564, 51.663761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330269, 35.845928, 52.246128>,  <38.627052, 35.357803, 51.766739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330269, 35.845928, 52.246128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020451, 35.614487, 52.143913>,  <37.834560, 35.475620, 52.082584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020451, 35.614487, 52.143913>,  <38.330269, 35.845928, 52.246128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020451, 35.614487, 52.143913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378829, 0.100827, 0.919958,
		-0.506525, 0.809353, -0.297287,
		-0.774546, -0.578602, -0.255535,
		37.788086, 35.440907, 52.067253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818085, 36.168861, 52.518764>,  <38.330269, 35.845928, 52.246128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818085, 36.168861, 52.518764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.681686, 35.793629, 52.494366>,  <37.599846, 35.568489, 52.479725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.681686, 35.793629, 52.494366>,  <37.818085, 36.168861, 52.518764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681686, 35.793629, 52.494366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428121, 0.097204, 0.898479,
		-0.836918, 0.332494, -0.434759,
		-0.340999, -0.938083, -0.060996,
		37.579388, 35.512203, 52.476067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123993, 36.234875, 52.745838>,  <37.818085, 36.168861, 52.518764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123993, 36.234875, 52.745838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276062, 35.872772, 52.821705>,  <37.367302, 35.655510, 52.867226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276062, 35.872772, 52.821705>,  <37.123993, 36.234875, 52.745838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276062, 35.872772, 52.821705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354813, 0.046628, 0.933774,
		-0.854152, -0.422291, -0.303471,
		0.380174, -0.905260, 0.189662,
		37.390114, 35.601192, 52.878605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006878, 36.914780, 52.948967>,  <37.123993, 36.234875, 52.745838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006878, 36.914780, 52.948967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959759, 37.311729, 52.963478>,  <36.931488, 37.549900, 52.972183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959759, 37.311729, 52.963478>,  <37.006878, 36.914780, 52.948967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959759, 37.311729, 52.963478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453698, -0.021286, -0.890901,
		-0.883336, -0.121402, 0.452746,
		-0.117794, 0.992375, 0.036277,
		36.924419, 37.609444, 52.974361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391403, 37.033710, 52.577061>,  <37.006878, 36.914780, 52.948967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391403, 37.033710, 52.577061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.585014, 37.383598, 52.567505>,  <36.701183, 37.593533, 52.561771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.585014, 37.383598, 52.567505>,  <36.391403, 37.033710, 52.577061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585014, 37.383598, 52.567505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100617, 0.028510, -0.994517,
		-0.869247, 0.483782, 0.101812,
		0.484032, 0.874724, -0.023894,
		36.730225, 37.646015, 52.560337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079750, 37.439068, 52.084637>,  <36.391403, 37.033710, 52.577061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079750, 37.439068, 52.084637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404358, 37.672359, 52.098881>,  <36.599125, 37.812336, 52.107426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404358, 37.672359, 52.098881>,  <36.079750, 37.439068, 52.084637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404358, 37.672359, 52.098881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135317, 0.246864, -0.959556,
		-0.568435, 0.773884, 0.279258,
		0.811524, 0.583233, 0.035606,
		36.647816, 37.847328, 52.109562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908188, 38.104256, 51.773273>,  <36.079750, 37.439068, 52.084637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908188, 38.104256, 51.773273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296608, 38.010029, 51.757408>,  <36.529659, 37.953491, 51.747890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.296608, 38.010029, 51.757408>,  <35.908188, 38.104256, 51.773273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296608, 38.010029, 51.757408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023514, 0.259486, -0.965460,
		0.237722, 0.936576, 0.257513,
		0.971048, -0.235566, -0.039663,
		36.587921, 37.939358, 51.745510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232685, 38.651802, 51.501453>,  <35.908188, 38.104256, 51.773273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232685, 38.651802, 51.501453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498119, 38.357914, 51.445110>,  <36.657379, 38.181580, 51.411304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498119, 38.357914, 51.445110>,  <36.232685, 38.651802, 51.501453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498119, 38.357914, 51.445110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053033, 0.234013, -0.970786,
		0.746220, 0.636728, 0.194252,
		0.663584, -0.734721, -0.140857,
		36.697193, 38.137497, 51.402855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727047, 38.939407, 51.013214>,  <36.232685, 38.651802, 51.501453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727047, 38.939407, 51.013214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724087, 38.539627, 51.000252>,  <36.722309, 38.299759, 50.992474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724087, 38.539627, 51.000252>,  <36.727047, 38.939407, 51.013214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724087, 38.539627, 51.000252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161099, 0.030795, -0.986458,
		0.986911, -0.012522, 0.160782,
		-0.007401, -0.999447, -0.032409,
		36.721867, 38.239792, 50.990528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254318, 38.793007, 50.455250>,  <36.727047, 38.939407, 51.013214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254318, 38.793007, 50.455250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053921, 38.452656, 50.518513>,  <36.933681, 38.248447, 50.556469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053921, 38.452656, 50.518513>,  <37.254318, 38.793007, 50.455250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053921, 38.452656, 50.518513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039134, -0.204833, -0.978014,
		0.864564, -0.483793, 0.135918,
		-0.500997, -0.850875, 0.158159,
		36.903622, 38.197392, 50.565960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574390, 38.403328, 49.996262>,  <37.254318, 38.793007, 50.455250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574390, 38.403328, 49.996262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229137, 38.215012, 50.069317>,  <37.021984, 38.102020, 50.113152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229137, 38.215012, 50.069317>,  <37.574390, 38.403328, 49.996262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229137, 38.215012, 50.069317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005855, -0.352322, -0.935860,
		0.504945, -0.808840, 0.301344,
		-0.863131, -0.470794, 0.182639,
		36.970200, 38.073772, 50.124107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660686, 37.644085, 49.859364>,  <37.574390, 38.403328, 49.996262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660686, 37.644085, 49.859364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.275681, 37.745480, 49.820782>,  <37.044678, 37.806316, 49.797634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.275681, 37.745480, 49.820782>,  <37.660686, 37.644085, 49.859364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275681, 37.745480, 49.820782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009707, -0.323211, -0.946277,
		-0.271047, -0.911744, 0.308635,
		-0.962517, 0.253490, -0.096455,
		36.986927, 37.821526, 49.791847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434223, 37.123608, 49.550606>,  <37.660686, 37.644085, 49.859364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434223, 37.123608, 49.550606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166965, 37.411480, 49.475079>,  <37.006611, 37.584202, 49.429764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166965, 37.411480, 49.475079>,  <37.434223, 37.123608, 49.550606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166965, 37.411480, 49.475079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099876, -0.338231, -0.935748,
		-0.737300, -0.606354, 0.297865,
		-0.668141, 0.719677, -0.188818,
		36.966522, 37.627384, 49.418434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137169, 36.854500, 49.015995>,  <37.434223, 37.123608, 49.550606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137169, 36.854500, 49.015995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988056, 37.224205, 48.983059>,  <36.898590, 37.446026, 48.963299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988056, 37.224205, 48.983059>,  <37.137169, 36.854500, 49.015995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988056, 37.224205, 48.983059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083332, -0.121724, -0.989060,
		-0.924171, -0.361838, 0.122396,
		-0.372778, 0.924260, -0.082342,
		36.876225, 37.501484, 48.958355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557407, 36.799824, 48.655853>,  <37.137169, 36.854500, 49.015995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557407, 36.799824, 48.655853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668228, 37.177284, 48.583454>,  <36.734722, 37.403763, 48.540012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668228, 37.177284, 48.583454>,  <36.557407, 36.799824, 48.655853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668228, 37.177284, 48.583454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173703, -0.136081, -0.975351,
		-0.945023, 0.301663, 0.126214,
		0.277052, 0.943653, -0.180999,
		36.751343, 37.460381, 48.529156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056396, 37.012794, 48.153267>,  <36.557407, 36.799824, 48.655853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056396, 37.012794, 48.153267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347778, 37.286098, 48.133251>,  <36.522606, 37.450081, 48.121243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.347778, 37.286098, 48.133251>,  <36.056396, 37.012794, 48.153267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347778, 37.286098, 48.133251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030663, -0.105479, -0.993949,
		-0.684407, 0.722512, -0.097787,
		0.728455, 0.683264, -0.050036,
		36.566315, 37.491077, 48.118240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885811, 37.642876, 47.745407>,  <36.056396, 37.012794, 48.153267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885811, 37.642876, 47.745407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285439, 37.642849, 47.728146>,  <36.525215, 37.642834, 47.717789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285439, 37.642849, 47.728146>,  <35.885811, 37.642876, 47.745407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285439, 37.642849, 47.728146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041992, 0.228697, -0.972592,
		0.009935, 0.973498, 0.228481,
		0.999069, -0.000069, -0.043152,
		36.585159, 37.642830, 47.715199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275017, 37.906250, 47.510056>,  <35.885811, 37.642876, 47.745407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275017, 37.906250, 47.510056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952740, 37.688702, 47.416187>,  <34.759373, 37.558174, 47.359867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952740, 37.688702, 47.416187>,  <35.275017, 37.906250, 47.510056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952740, 37.688702, 47.416187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167892, -0.170245, 0.970994,
		-0.568042, 0.821721, 0.045855,
		-0.805693, -0.543867, -0.234667,
		34.711033, 37.525543, 47.345787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744118, 38.176979, 47.905945>,  <35.275017, 37.906250, 47.510056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744118, 38.176979, 47.905945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592960, 37.815884, 47.823715>,  <34.502266, 37.599228, 47.774376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592960, 37.815884, 47.823715>,  <34.744118, 38.176979, 47.905945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592960, 37.815884, 47.823715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102821, -0.179749, 0.978324,
		-0.920123, 0.390838, -0.024895,
		-0.377891, -0.902738, -0.205578,
		34.479591, 37.545063, 47.762043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100826, 38.137310, 48.361473>,  <34.744118, 38.176979, 47.905945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100826, 38.137310, 48.361473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221840, 37.771832, 48.252934>,  <34.294449, 37.552544, 48.187809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221840, 37.771832, 48.252934>,  <34.100826, 38.137310, 48.361473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221840, 37.771832, 48.252934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187500, -0.336183, 0.922944,
		-0.934514, -0.228343, -0.273025,
		0.302534, -0.913696, -0.271353,
		34.312599, 37.497723, 48.171528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630043, 37.678253, 48.658695>,  <34.100826, 38.137310, 48.361473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630043, 37.678253, 48.658695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947178, 37.444229, 48.590454>,  <34.137459, 37.303814, 48.549507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947178, 37.444229, 48.590454>,  <33.630043, 37.678253, 48.658695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947178, 37.444229, 48.590454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128390, -0.434012, 0.891712,
		-0.595754, -0.685079, -0.419218,
		0.792838, -0.585064, -0.170607,
		34.185028, 37.268711, 48.539272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439377, 37.018726, 48.900513>,  <33.630043, 37.678253, 48.658695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439377, 37.018726, 48.900513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838978, 37.005619, 48.888340>,  <34.078739, 36.997757, 48.881035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838978, 37.005619, 48.888340>,  <33.439377, 37.018726, 48.900513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838978, 37.005619, 48.888340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014967, -0.396342, 0.917981,
		-0.042141, -0.917518, -0.395455,
		0.999000, -0.032766, -0.030435,
		34.138680, 36.995789, 48.879208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515629, 36.337566, 49.272705>,  <33.439377, 37.018726, 48.900513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515629, 36.337566, 49.272705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871159, 36.518925, 49.246128>,  <34.084476, 36.627739, 49.230183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871159, 36.518925, 49.246128>,  <33.515629, 36.337566, 49.272705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871159, 36.518925, 49.246128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178957, -0.209963, 0.961192,
		0.421854, -0.866224, -0.267760,
		0.888827, 0.453401, -0.066443,
		34.137806, 36.654945, 49.226196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960457, 35.878044, 49.547504>,  <33.515629, 36.337566, 49.272705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960457, 35.878044, 49.547504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129993, 36.239170, 49.576572>,  <34.231716, 36.455845, 49.594013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129993, 36.239170, 49.576572>,  <33.960457, 35.878044, 49.547504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129993, 36.239170, 49.576572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083589, -0.118882, 0.989384,
		0.901869, -0.413271, -0.125853,
		0.423846, 0.902815, 0.072671,
		34.257149, 36.510014, 49.598373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205765, 35.285591, 50.077633>,  <33.960457, 35.878044, 49.547504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205765, 35.285591, 50.077633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950516, 34.981243, 50.124760>,  <33.797367, 34.798634, 50.153034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950516, 34.981243, 50.124760>,  <34.205765, 35.285591, 50.077633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950516, 34.981243, 50.124760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104754, -0.065797, -0.992319,
		0.762775, -0.645563, -0.037717,
		-0.638123, -0.760868, 0.117814,
		33.759079, 34.752983, 50.160103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401203, 34.810482, 49.728687>,  <34.205765, 35.285591, 50.077633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401203, 34.810482, 49.728687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010441, 34.731369, 49.761013>,  <33.775982, 34.683903, 49.780407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010441, 34.731369, 49.761013>,  <34.401203, 34.810482, 49.728687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010441, 34.731369, 49.761013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054780, -0.133739, -0.989501,
		0.206516, -0.971079, 0.119816,
		-0.976909, -0.197784, 0.080815,
		33.717369, 34.672035, 49.785259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214123, 34.130817, 49.335453>,  <34.401203, 34.810482, 49.728687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214123, 34.130817, 49.335453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874802, 34.339729, 49.370342>,  <33.671207, 34.465076, 49.391277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874802, 34.339729, 49.370342>,  <34.214123, 34.130817, 49.335453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874802, 34.339729, 49.370342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285320, -0.312084, -0.906199,
		-0.446066, -0.793618, 0.413758,
		-0.848303, 0.522278, 0.087225,
		33.620312, 34.496414, 49.396511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776684, 33.766720, 48.957142>,  <34.214123, 34.130817, 49.335453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776684, 33.766720, 48.957142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632957, 34.139431, 48.977840>,  <33.546722, 34.363060, 48.990261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632957, 34.139431, 48.977840>,  <33.776684, 33.766720, 48.957142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632957, 34.139431, 48.977840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326861, -0.073718, -0.942193,
		-0.874103, -0.355457, 0.331051,
		-0.359313, 0.931781, 0.051748,
		33.525162, 34.418964, 48.993366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273533, 33.698563, 48.537792>,  <33.776684, 33.766720, 48.957142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273533, 33.698563, 48.537792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320953, 34.095089, 48.560566>,  <33.349407, 34.333004, 48.574230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320953, 34.095089, 48.560566>,  <33.273533, 33.698563, 48.537792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320953, 34.095089, 48.560566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299122, 0.090334, -0.949929,
		-0.946822, 0.095585, 0.307233,
		0.118553, 0.991314, 0.056939,
		33.356518, 34.392483, 48.577648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776001, 33.960567, 48.060040>,  <33.273533, 33.698563, 48.537792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776001, 33.960567, 48.060040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998043, 34.289154, 48.112255>,  <33.131268, 34.486305, 48.143585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998043, 34.289154, 48.112255>,  <32.776001, 33.960567, 48.060040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998043, 34.289154, 48.112255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157045, 0.257628, -0.953396,
		-0.816817, 0.508739, 0.272019,
		0.555110, 0.821470, 0.130540,
		33.164577, 34.535595, 48.151417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352409, 34.506241, 47.759441>,  <32.776001, 33.960567, 48.060040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352409, 34.506241, 47.759441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737206, 34.615376, 47.764214>,  <32.968082, 34.680855, 47.767078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737206, 34.615376, 47.764214>,  <32.352409, 34.506241, 47.759441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737206, 34.615376, 47.764214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064075, 0.267951, -0.961299,
		-0.265474, 0.923993, 0.275248,
		0.961986, 0.272836, 0.011929,
		33.025803, 34.697227, 47.767792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.894806, 32.896729, 51.796989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.747334, 33.253735, 51.900906>,  <36.658852, 33.467937, 51.963257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.747334, 33.253735, 51.900906>,  <36.894806, 32.896729, 51.796989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747334, 33.253735, 51.900906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046552, 0.296855, -0.953787,
		-0.928390, -0.339549, -0.150993,
		-0.368680, 0.892516, 0.259790,
		36.636730, 33.521488, 51.978844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194736, 32.942516, 51.614635>,  <36.894806, 32.896729, 51.796989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194736, 32.942516, 51.614635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.383785, 33.294777, 51.601421>,  <36.497215, 33.506134, 51.593494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.383785, 33.294777, 51.601421>,  <36.194736, 32.942516, 51.614635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383785, 33.294777, 51.601421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091049, -0.086078, -0.992119,
		-0.876552, 0.465885, -0.120864,
		0.472617, 0.880648, -0.033034,
		36.525570, 33.558971, 51.591511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825356, 33.260494, 51.089237>,  <36.194736, 32.942516, 51.614635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825356, 33.260494, 51.089237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.207680, 33.362465, 51.147800>,  <36.437077, 33.423645, 51.182938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.207680, 33.362465, 51.147800>,  <35.825356, 33.260494, 51.089237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207680, 33.362465, 51.147800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188946, -0.151179, -0.970281,
		-0.225212, 0.955071, -0.192665,
		0.955813, 0.254922, 0.146410,
		36.494423, 33.438942, 51.191723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995083, 33.922005, 50.621994>,  <35.825356, 33.260494, 51.089237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995083, 33.922005, 50.621994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.322826, 33.705425, 50.697338>,  <36.519474, 33.575478, 50.742542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.322826, 33.705425, 50.697338>,  <35.995083, 33.922005, 50.621994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322826, 33.705425, 50.697338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094055, -0.197146, -0.975852,
		0.565508, 0.817292, -0.110607,
		0.819362, -0.541449, 0.188358,
		36.568634, 33.542992, 50.753845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524422, 34.180370, 50.082623>,  <35.995083, 33.922005, 50.621994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524422, 34.180370, 50.082623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.658707, 33.825073, 50.208046>,  <36.739277, 33.611897, 50.283302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.658707, 33.825073, 50.208046>,  <36.524422, 34.180370, 50.082623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658707, 33.825073, 50.208046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115585, -0.369210, -0.922130,
		0.934846, 0.273329, -0.226617,
		0.335714, -0.888243, 0.313561,
		36.759422, 33.558601, 50.302113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759987, 33.931793, 49.568306>,  <36.524422, 34.180370, 50.082623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759987, 33.931793, 49.568306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.713688, 33.597713, 49.783356>,  <36.685909, 33.397266, 49.912384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.713688, 33.597713, 49.783356>,  <36.759987, 33.931793, 49.568306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713688, 33.597713, 49.783356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061562, -0.534188, -0.843121,
		0.991369, -0.130689, 0.010416,
		-0.115751, -0.835203, 0.537623,
		36.678963, 33.347153, 49.944641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215076, 33.424297, 49.156891>,  <36.759987, 33.931793, 49.568306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215076, 33.424297, 49.156891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.979088, 33.212517, 49.400734>,  <36.837494, 33.085449, 49.547039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.979088, 33.212517, 49.400734>,  <37.215076, 33.424297, 49.156891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979088, 33.212517, 49.400734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102176, -0.699974, -0.706821,
		0.800933, -0.479292, 0.358868,
		-0.589972, -0.529449, 0.609604,
		36.802097, 33.053680, 49.583614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477444, 32.779461, 49.205074>,  <37.215076, 33.424297, 49.156891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477444, 32.779461, 49.205074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.084099, 32.760372, 49.275177>,  <36.848091, 32.748920, 49.317238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.084099, 32.760372, 49.275177>,  <37.477444, 32.779461, 49.205074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084099, 32.760372, 49.275177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089901, -0.710539, -0.697891,
		0.157834, -0.702037, 0.694429,
		-0.983365, -0.047721, 0.175261,
		36.789089, 32.746056, 49.327755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304863, 32.035915, 49.255604>,  <37.477444, 32.779461, 49.205074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304863, 32.035915, 49.255604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.967331, 32.235580, 49.176834>,  <36.764812, 32.355381, 49.129574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.967331, 32.235580, 49.176834>,  <37.304863, 32.035915, 49.255604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967331, 32.235580, 49.176834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099052, -0.505573, -0.857079,
		-0.527389, -0.703723, 0.476062,
		-0.843831, 0.499169, -0.196928,
		36.714180, 32.385330, 49.117756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765514, 31.518787, 48.999683>,  <37.304863, 32.035915, 49.255604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765514, 31.518787, 48.999683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.637463, 31.876383, 48.874268>,  <36.560631, 32.090939, 48.799019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.637463, 31.876383, 48.874268>,  <36.765514, 31.518787, 48.999683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637463, 31.876383, 48.874268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095481, -0.359713, -0.928165,
		-0.942551, -0.267193, 0.200512,
		-0.320126, 0.893988, -0.313536,
		36.541424, 32.144581, 48.780209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393326, 31.351580, 48.360271>,  <36.765514, 31.518787, 48.999683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393326, 31.351580, 48.360271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.445503, 31.747889, 48.345566>,  <36.476810, 31.985674, 48.336742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.445503, 31.747889, 48.345566>,  <36.393326, 31.351580, 48.360271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445503, 31.747889, 48.345566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095982, -0.049528, -0.994150,
		-0.986798, 0.126154, -0.101557,
		0.130446, 0.990773, -0.036766,
		36.484638, 32.045120, 48.334538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783325, 31.776852, 47.987392>,  <36.393326, 31.351580, 48.360271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783325, 31.776852, 47.987392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.120914, 31.987291, 47.945568>,  <36.323467, 32.113556, 47.920475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.120914, 31.987291, 47.945568>,  <35.783325, 31.776852, 47.987392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120914, 31.987291, 47.945568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076320, -0.075174, -0.994245,
		-0.530930, 0.847095, -0.023294,
		0.843972, 0.526097, -0.104562,
		36.374107, 32.145119, 47.914200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985214, 32.028484, 48.201660>,  <35.783325, 31.776852, 47.987392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985214, 32.028484, 48.201660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.624264, 31.861599, 48.158501>,  <34.407692, 31.761467, 48.132603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.624264, 31.861599, 48.158501>,  <34.985214, 32.028484, 48.201660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624264, 31.861599, 48.158501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152940, 0.075964, 0.985312,
		-0.402892, 0.905627, -0.132358,
		-0.902379, -0.417217, -0.107901,
		34.353550, 31.736433, 48.126129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509434, 32.405594, 48.589813>,  <34.985214, 32.028484, 48.201660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509434, 32.405594, 48.589813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.317181, 32.055950, 48.561733>,  <34.201828, 31.846165, 48.544884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.317181, 32.055950, 48.561733>,  <34.509434, 32.405594, 48.589813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317181, 32.055950, 48.561733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283263, 0.078992, 0.955784,
		-0.829913, 0.479265, -0.285568,
		-0.480631, -0.874109, -0.070201,
		34.172993, 31.793718, 48.540672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908104, 32.459949, 49.025246>,  <34.509434, 32.405594, 48.589813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908104, 32.459949, 49.025246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.958382, 32.065544, 48.981468>,  <33.988548, 31.828901, 48.955200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.958382, 32.065544, 48.981468>,  <33.908104, 32.459949, 49.025246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958382, 32.065544, 48.981468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132649, -0.126034, 0.983117,
		-0.983161, -0.109050, -0.146635,
		0.125690, -0.986014, -0.109447,
		33.996090, 31.769739, 48.948635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438995, 32.178692, 49.422523>,  <33.908104, 32.459949, 49.025246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438995, 32.178692, 49.422523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.702881, 31.880022, 49.388466>,  <33.861214, 31.700819, 49.368031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.702881, 31.880022, 49.388466>,  <33.438995, 32.178692, 49.422523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702881, 31.880022, 49.388466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208487, -0.290690, 0.933827,
		-0.722018, -0.598308, -0.347445,
		0.659715, -0.746677, -0.085144,
		33.900795, 31.656019, 49.362923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062420, 31.719215, 49.812065>,  <33.438995, 32.178692, 49.422523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062420, 31.719215, 49.812065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.440372, 31.598505, 49.761257>,  <33.667145, 31.526079, 49.730774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.440372, 31.598505, 49.761257>,  <33.062420, 31.719215, 49.812065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440372, 31.598505, 49.761257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074998, -0.178139, 0.981143,
		-0.318713, -0.936588, -0.145687,
		0.944879, -0.301777, -0.127018,
		33.723835, 31.507973, 49.723152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128212, 31.294603, 50.343918>,  <33.062420, 31.719215, 49.812065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128212, 31.294603, 50.343918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.497814, 31.415051, 50.249653>,  <33.719578, 31.487320, 50.193092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.497814, 31.415051, 50.249653>,  <33.128212, 31.294603, 50.343918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497814, 31.415051, 50.249653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283680, -0.126595, 0.950526,
		0.256389, -0.945146, -0.202396,
		0.924008, 0.301120, -0.235662,
		33.775017, 31.505386, 50.178955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632240, 30.714258, 50.517826>,  <33.128212, 31.294603, 50.343918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632240, 30.714258, 50.517826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.813580, 31.070654, 50.527721>,  <33.922382, 31.284491, 50.533657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.813580, 31.070654, 50.527721>,  <33.632240, 30.714258, 50.517826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813580, 31.070654, 50.527721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261618, -0.159541, 0.951894,
		0.852074, -0.425070, -0.305427,
		0.453350, 0.890989, 0.024735,
		33.949585, 31.337950, 50.535141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052151, 30.626940, 51.046547>,  <33.632240, 30.714258, 50.517826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052151, 30.626940, 51.046547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108032, 31.020748, 51.004208>,  <34.141563, 31.257032, 50.978806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108032, 31.020748, 51.004208>,  <34.052151, 30.626940, 51.046547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108032, 31.020748, 51.004208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292942, 0.061018, 0.954181,
		0.945868, -0.164313, -0.279882,
		0.139707, 0.984519, -0.105849,
		34.149944, 31.316103, 50.972454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831314, 30.771200, 51.190506>,  <34.052151, 30.626940, 51.046547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831314, 30.771200, 51.190506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.614735, 31.103319, 51.243336>,  <34.484787, 31.302589, 51.275032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.614735, 31.103319, 51.243336>,  <34.831314, 30.771200, 51.190506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614735, 31.103319, 51.243336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317092, 0.056189, 0.946729,
		0.778644, 0.554483, -0.293703,
		-0.541448, 0.830296, 0.132071,
		34.452301, 31.352407, 51.282955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270855, 31.233540, 51.553360>,  <34.831314, 30.771200, 51.190506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270855, 31.233540, 51.553360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913727, 31.400042, 51.622181>,  <34.699451, 31.499943, 51.663471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913727, 31.400042, 51.622181>,  <35.270855, 31.233540, 51.553360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913727, 31.400042, 51.622181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312807, 0.298200, 0.901792,
		0.324072, 0.858957, -0.396447,
		-0.892821, 0.416257, 0.172050,
		34.645882, 31.524920, 51.673798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414913, 31.827343, 51.930447>,  <35.270855, 31.233540, 51.553360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414913, 31.827343, 51.930447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.024509, 31.790323, 52.009285>,  <34.790268, 31.768112, 52.056587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.024509, 31.790323, 52.009285>,  <35.414913, 31.827343, 51.930447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024509, 31.790323, 52.009285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143525, 0.407260, 0.901965,
		-0.163745, 0.908611, -0.384205,
		-0.976006, -0.092550, 0.197095,
		34.731709, 31.762558, 52.068413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238487, 32.451916, 52.155720>,  <35.414913, 31.827343, 51.930447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238487, 32.451916, 52.155720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.963512, 32.198292, 52.297367>,  <34.798527, 32.046116, 52.382355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.963512, 32.198292, 52.297367>,  <35.238487, 32.451916, 52.155720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963512, 32.198292, 52.297367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056809, 0.533051, 0.844174,
		-0.724023, 0.560196, -0.402457,
		-0.687433, -0.634064, 0.354117,
		34.757282, 32.008072, 52.403603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758240, 32.860653, 52.474907>,  <35.238487, 32.451916, 52.155720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758240, 32.860653, 52.474907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.697079, 32.507149, 52.651810>,  <34.660381, 32.295048, 52.757954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.697079, 32.507149, 52.651810>,  <34.758240, 32.860653, 52.474907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697079, 32.507149, 52.651810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157337, 0.463585, 0.871972,
		-0.975637, 0.063742, -0.209930,
		-0.152901, -0.883757, 0.442261,
		34.651207, 32.242023, 52.784489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242092, 32.989315, 52.953712>,  <34.758240, 32.860653, 52.474907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242092, 32.989315, 52.953712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.401791, 32.647835, 53.087460>,  <34.497608, 32.442947, 53.167709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.401791, 32.647835, 53.087460>,  <34.242092, 32.989315, 52.953712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401791, 32.647835, 53.087460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150549, 0.420786, 0.894581,
		-0.904399, -0.306819, 0.296521,
		0.399246, -0.853699, 0.334367,
		34.521564, 32.391724, 53.187771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953537, 33.595734, 52.794952>,  <34.242092, 32.989315, 52.953712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953537, 33.595734, 52.794952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.801434, 33.959522, 52.862198>,  <33.710171, 34.177795, 52.902546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.801434, 33.959522, 52.862198>,  <33.953537, 33.595734, 52.794952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801434, 33.959522, 52.862198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296071, 0.052507, -0.953722,
		-0.876210, -0.412438, 0.249301,
		-0.380261, 0.909471, 0.168118,
		33.687355, 34.232365, 52.912632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219238, 33.564728, 52.645081>,  <33.953537, 33.595734, 52.794952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219238, 33.564728, 52.645081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.340065, 33.944759, 52.613838>,  <33.412560, 34.172779, 52.595093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.340065, 33.944759, 52.613838>,  <33.219238, 33.564728, 52.645081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340065, 33.944759, 52.613838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300509, 0.017144, -0.953625,
		-0.904682, 0.311530, 0.290687,
		0.302066, 0.950082, -0.078108,
		33.430683, 34.229782, 52.590405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833420, 33.925644, 52.165421>,  <33.219238, 33.564728, 52.645081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833420, 33.925644, 52.165421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.139565, 34.183075, 52.163670>,  <33.323254, 34.337536, 52.162621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.139565, 34.183075, 52.163670>,  <32.833420, 33.925644, 52.165421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139565, 34.183075, 52.163670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145733, 0.166682, -0.975181,
		-0.626878, 0.747009, 0.221364,
		0.765366, 0.643580, -0.004375,
		33.369175, 34.376148, 52.162357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558189, 34.486496, 51.885113>,  <32.833420, 33.925644, 52.165421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558189, 34.486496, 51.885113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.954796, 34.498814, 51.834606>,  <33.192760, 34.506203, 51.804302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.954796, 34.498814, 51.834606>,  <32.558189, 34.486496, 51.885113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954796, 34.498814, 51.834606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129966, 0.233004, -0.963752,
		-0.000254, 0.971988, 0.235030,
		0.991518, 0.030791, -0.126266,
		33.252251, 34.508049, 51.796726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647999, 35.049831, 51.527142>,  <32.558189, 34.486496, 51.885113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647999, 35.049831, 51.527142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.001797, 34.870594, 51.475170>,  <33.214073, 34.763050, 51.443989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.001797, 34.870594, 51.475170>,  <32.647999, 35.049831, 51.527142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001797, 34.870594, 51.475170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047548, 0.363611, -0.930337,
		0.464125, 0.816698, 0.342917,
		0.884493, -0.448097, -0.129929,
		33.267143, 34.736164, 51.436192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097229, 35.485233, 51.016628>,  <32.647999, 35.049831, 51.527142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097229, 35.485233, 51.016628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.277325, 35.128086, 51.013462>,  <33.385384, 34.913795, 51.011562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.277325, 35.128086, 51.013462>,  <33.097229, 35.485233, 51.016628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277325, 35.128086, 51.013462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064617, 0.041424, -0.997050,
		0.890565, 0.448403, 0.076345,
		0.450243, -0.892871, -0.007917,
		33.412399, 34.860226, 51.011086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670990, 35.499603, 50.570442>,  <33.097229, 35.485233, 51.016628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670990, 35.499603, 50.570442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.586777, 35.109043, 50.589741>,  <33.536251, 34.874706, 50.601318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.586777, 35.109043, 50.589741>,  <33.670990, 35.499603, 50.570442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586777, 35.109043, 50.589741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086929, -0.067854, -0.993901,
		0.973715, -0.205051, 0.099162,
		-0.210529, -0.976396, 0.048245,
		33.523617, 34.816124, 50.604214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156803, 36.006840, 50.265263>,  <33.670990, 35.499603, 50.570442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156803, 36.006840, 50.265263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256836, 36.385773, 50.185246>,  <34.316856, 36.613132, 50.137234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256836, 36.385773, 50.185246>,  <34.156803, 36.006840, 50.265263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256836, 36.385773, 50.185246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070044, 0.188369, 0.979597,
		0.965688, -0.258991, -0.019247,
		0.250081, 0.947334, -0.200047,
		34.331860, 36.669971, 50.125233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768463, 36.273960, 50.713661>,  <34.156803, 36.006840, 50.265263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768463, 36.273960, 50.713661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.537334, 36.582813, 50.607880>,  <34.398659, 36.768127, 50.544411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.537334, 36.582813, 50.607880>,  <34.768463, 36.273960, 50.713661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537334, 36.582813, 50.607880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024992, 0.340602, 0.939875,
		0.815783, 0.536468, -0.216104,
		-0.577819, 0.772135, -0.264450,
		34.363991, 36.814453, 50.528545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187279, 36.910774, 50.831013>,  <34.768463, 36.273960, 50.713661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187279, 36.910774, 50.831013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.796768, 36.997349, 50.828663>,  <34.562462, 37.049294, 50.827255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.796768, 36.997349, 50.828663>,  <35.187279, 36.910774, 50.831013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796768, 36.997349, 50.828663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092399, 0.440998, 0.892739,
		0.195814, 0.871019, -0.450536,
		-0.976278, 0.216440, -0.005873,
		34.503883, 37.062283, 50.826900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215302, 37.496105, 51.115025>,  <35.187279, 36.910774, 50.831013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215302, 37.496105, 51.115025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.824955, 37.443588, 51.184830>,  <34.590748, 37.412079, 51.226715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.824955, 37.443588, 51.184830>,  <35.215302, 37.496105, 51.115025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824955, 37.443588, 51.184830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138551, 0.245490, 0.959447,
		-0.168808, 0.960468, -0.221374,
		-0.975862, -0.131290, 0.174515,
		34.532196, 37.404202, 51.237183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885113, 38.150578, 51.428387>,  <35.215302, 37.496105, 51.115025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885113, 38.150578, 51.428387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.657078, 37.835773, 51.522724>,  <34.520256, 37.646893, 51.579327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.657078, 37.835773, 51.522724>,  <34.885113, 38.150578, 51.428387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657078, 37.835773, 51.522724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087291, 0.343458, 0.935103,
		-0.816934, 0.512502, -0.264499,
		-0.570086, -0.787006, 0.235846,
		34.486053, 37.599670, 51.593479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525402, 38.412586, 52.024654>,  <34.885113, 38.150578, 51.428387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525402, 38.412586, 52.024654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.410694, 38.029678, 52.039616>,  <34.341869, 37.799934, 52.048592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.410694, 38.029678, 52.039616>,  <34.525402, 38.412586, 52.024654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410694, 38.029678, 52.039616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047328, 0.053155, 0.997464,
		-0.956830, 0.284270, -0.060548,
		-0.286768, -0.957269, 0.037407,
		34.324665, 37.742496, 52.050838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921898, 38.489902, 52.343285>,  <34.525402, 38.412586, 52.024654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921898, 38.489902, 52.343285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.101913, 38.136093, 52.392399>,  <34.209923, 37.923805, 52.421867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.101913, 38.136093, 52.392399>,  <33.921898, 38.489902, 52.343285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101913, 38.136093, 52.392399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010057, 0.142513, 0.989742,
		-0.892951, -0.444191, 0.073032,
		0.450042, -0.884525, 0.122790,
		34.236927, 37.870735, 52.429237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651699, 38.218254, 53.104538>,  <33.921898, 38.489902, 52.343285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651699, 38.218254, 53.104538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.977802, 38.008995, 53.005207>,  <34.173466, 37.883438, 52.945606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.977802, 38.008995, 53.005207>,  <33.651699, 38.218254, 53.104538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977802, 38.008995, 53.005207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304305, 0.022171, 0.952317,
		-0.492699, -0.851952, 0.177272,
		0.815259, -0.523150, -0.248330,
		34.222382, 37.852051, 52.930710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612659, 37.630733, 53.475464>,  <33.651699, 38.218254, 53.104538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612659, 37.630733, 53.475464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.002975, 37.668877, 53.396736>,  <34.237164, 37.691761, 53.349499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.002975, 37.668877, 53.396736>,  <33.612659, 37.630733, 53.475464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002975, 37.668877, 53.396736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201767, -0.045234, 0.978388,
		0.084396, -0.994415, -0.063379,
		0.975791, 0.095360, -0.196822,
		34.295712, 37.697483, 53.337688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.510864, 34.894558, 37.668213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848171, 34.701260, 37.762337>,  <36.050556, 34.585281, 37.818813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848171, 34.701260, 37.762337>,  <35.510864, 34.894558, 37.668213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848171, 34.701260, 37.762337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274759, -0.011285, 0.961447,
		-0.461962, -0.875411, -0.142293,
		0.843267, -0.483248, 0.235313,
		36.101151, 34.556286, 37.832932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424942, 34.268795, 38.134884>,  <35.510864, 34.894558, 37.668213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424942, 34.268795, 38.134884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759701, 34.486435, 38.158733>,  <35.960556, 34.617020, 38.173042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759701, 34.486435, 38.158733>,  <35.424942, 34.268795, 38.134884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759701, 34.486435, 38.158733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248410, 0.280492, 0.927155,
		0.487747, -0.790743, 0.369904,
		0.836896, 0.544105, 0.059619,
		36.010769, 34.649666, 38.176620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730122, 34.037415, 38.794197>,  <35.424942, 34.268795, 38.134884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730122, 34.037415, 38.794197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903404, 34.389603, 38.717159>,  <36.007374, 34.600918, 38.670937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903404, 34.389603, 38.717159>,  <35.730122, 34.037415, 38.794197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903404, 34.389603, 38.717159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140330, 0.276977, 0.950574,
		0.890302, -0.384770, 0.243546,
		0.433209, 0.880475, -0.192598,
		36.033367, 34.653744, 38.659378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142376, 34.216713, 39.340588>,  <35.730122, 34.037415, 38.794197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142376, 34.216713, 39.340588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064163, 34.563232, 39.156719>,  <36.017235, 34.771145, 39.046398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064163, 34.563232, 39.156719>,  <36.142376, 34.216713, 39.340588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064163, 34.563232, 39.156719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328717, 0.383710, 0.862967,
		0.923966, 0.319838, 0.209740,
		-0.195530, 0.866297, -0.459671,
		36.005505, 34.823120, 39.018818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583084, 34.759624, 39.588516>,  <36.142376, 34.216713, 39.340588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583084, 34.759624, 39.588516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252552, 34.925598, 39.436199>,  <36.054234, 35.025185, 39.344810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252552, 34.925598, 39.436199>,  <36.583084, 34.759624, 39.588516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252552, 34.925598, 39.436199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173232, 0.456094, 0.872909,
		0.535878, 0.787278, -0.305005,
		-0.826333, 0.414936, -0.380792,
		36.004654, 35.050079, 39.321960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699970, 35.431789, 39.846409>,  <36.583084, 34.759624, 39.588516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699970, 35.431789, 39.846409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311619, 35.393906, 39.758385>,  <36.078609, 35.371178, 39.705570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311619, 35.393906, 39.758385>,  <36.699970, 35.431789, 39.846409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311619, 35.393906, 39.758385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239495, 0.407391, 0.881292,
		0.006188, 0.908330, -0.418209,
		-0.970878, -0.094705, -0.220062,
		36.020355, 35.365494, 39.692368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348270, 36.062473, 40.090588>,  <36.699970, 35.431789, 39.846409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348270, 36.062473, 40.090588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036697, 35.813515, 40.059872>,  <35.849754, 35.664139, 40.041443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036697, 35.813515, 40.059872>,  <36.348270, 36.062473, 40.090588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036697, 35.813515, 40.059872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450571, 0.470272, 0.758835,
		-0.436181, 0.625678, -0.646741,
		-0.778930, -0.622392, -0.076789,
		35.803017, 35.626797, 40.036835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727764, 36.511597, 39.891968>,  <36.348270, 36.062473, 40.090588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727764, 36.511597, 39.891968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593662, 36.178375, 40.067982>,  <35.513199, 35.978443, 40.173588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593662, 36.178375, 40.067982>,  <35.727764, 36.511597, 39.891968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593662, 36.178375, 40.067982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637815, 0.544442, 0.544771,
		-0.693394, -0.098020, -0.713861,
		-0.335257, -0.833052, 0.440031,
		35.493084, 35.928459, 40.199989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077381, 36.725510, 40.086494>,  <35.727764, 36.511597, 39.891968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077381, 36.725510, 40.086494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129887, 36.394497, 40.304840>,  <35.161388, 36.195889, 40.435848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129887, 36.394497, 40.304840>,  <35.077381, 36.725510, 40.086494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129887, 36.394497, 40.304840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504993, 0.418014, 0.755146,
		-0.853083, -0.374780, -0.363026,
		0.131264, -0.827529, 0.545863,
		35.169266, 36.146236, 40.468597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402523, 36.681412, 40.374420>,  <35.077381, 36.725510, 40.086494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402523, 36.681412, 40.374420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643024, 36.432911, 40.575436>,  <34.787323, 36.283810, 40.696045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643024, 36.432911, 40.575436>,  <34.402523, 36.681412, 40.374420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643024, 36.432911, 40.575436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427594, 0.281146, 0.859139,
		-0.675028, -0.731441, -0.096603,
		0.601250, -0.621250, 0.502541,
		34.823399, 36.246536, 40.726196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948631, 36.202446, 40.713600>,  <34.402523, 36.681412, 40.374420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948631, 36.202446, 40.713600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298840, 36.265148, 40.896416>,  <34.508965, 36.302769, 41.006104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298840, 36.265148, 40.896416>,  <33.948631, 36.202446, 40.713600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298840, 36.265148, 40.896416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482924, 0.253361, 0.838208,
		0.015596, -0.954587, 0.297524,
		0.875524, 0.156754, 0.457042,
		34.561497, 36.312176, 41.033527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770157, 36.073002, 41.436581>,  <33.948631, 36.202446, 40.713600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770157, 36.073002, 41.436581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117725, 36.270981, 41.435505>,  <34.326267, 36.389771, 41.434860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117725, 36.270981, 41.435505>,  <33.770157, 36.073002, 41.436581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117725, 36.270981, 41.435505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185427, 0.330553, 0.925393,
		0.458913, -0.803590, 0.379001,
		0.868916, 0.494952, -0.002688,
		34.378399, 36.419468, 41.434700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972446, 35.328789, 41.602646>,  <33.770157, 36.073002, 41.436581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972446, 35.328789, 41.602646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687092, 35.059139, 41.679211>,  <33.515881, 34.897350, 41.725151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687092, 35.059139, 41.679211>,  <33.972446, 35.328789, 41.602646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687092, 35.059139, 41.679211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068694, -0.204558, -0.976441,
		0.697400, -0.709725, 0.099620,
		-0.713383, -0.674126, 0.191413,
		33.473076, 34.856903, 41.736633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006611, 34.878754, 41.090488>,  <33.972446, 35.328789, 41.602646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006611, 34.878754, 41.090488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656693, 34.750992, 41.236210>,  <33.446743, 34.674335, 41.323643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656693, 34.750992, 41.236210>,  <34.006611, 34.878754, 41.090488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656693, 34.750992, 41.236210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226885, -0.394308, -0.890530,
		0.428091, -0.861684, 0.272469,
		-0.874792, -0.319409, 0.364303,
		33.394257, 34.655170, 41.345501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892632, 34.134403, 40.925659>,  <34.006611, 34.878754, 41.090488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892632, 34.134403, 40.925659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527573, 34.295929, 40.951000>,  <33.308537, 34.392845, 40.966206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527573, 34.295929, 40.951000>,  <33.892632, 34.134403, 40.925659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527573, 34.295929, 40.951000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284065, -0.515141, -0.808663,
		-0.293913, -0.756019, 0.584851,
		-0.912646, 0.403812, 0.063352,
		33.253780, 34.417072, 40.970005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379646, 33.644478, 41.039898>,  <33.892632, 34.134403, 40.925659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379646, 33.644478, 41.039898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180664, 33.959015, 40.893360>,  <33.061275, 34.147736, 40.805439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180664, 33.959015, 40.893360>,  <33.379646, 33.644478, 41.039898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180664, 33.959015, 40.893360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313712, -0.556789, -0.769137,
		-0.808776, -0.267689, 0.523664,
		-0.497459, 0.786339, -0.366341,
		33.031425, 34.194916, 40.783459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795250, 33.428139, 40.800934>,  <33.379646, 33.644478, 41.039898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795250, 33.428139, 40.800934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842739, 33.761055, 40.584343>,  <32.871231, 33.960804, 40.454388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842739, 33.761055, 40.584343>,  <32.795250, 33.428139, 40.800934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842739, 33.761055, 40.584343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401340, -0.458580, -0.792862,
		-0.908202, 0.311446, 0.279589,
		0.118720, 0.832289, -0.541480,
		32.878353, 34.010742, 40.421898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121376, 33.465935, 40.476696>,  <32.795250, 33.428139, 40.800934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121376, 33.465935, 40.476696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363152, 33.715130, 40.278080>,  <32.508217, 33.864647, 40.158913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363152, 33.715130, 40.278080>,  <32.121376, 33.465935, 40.476696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363152, 33.715130, 40.278080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362000, -0.340434, -0.867791,
		-0.709659, 0.704269, 0.019751,
		0.604434, 0.622985, -0.496537,
		32.544483, 33.902027, 40.129120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685671, 33.823021, 39.837456>,  <32.121376, 33.465935, 40.476696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685671, 33.823021, 39.837456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070255, 33.887123, 39.748089>,  <32.301006, 33.925583, 39.694469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070255, 33.887123, 39.748089>,  <31.685671, 33.823021, 39.837456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070255, 33.887123, 39.748089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162951, -0.322363, -0.932486,
		-0.221452, 0.932953, -0.283826,
		0.961460, 0.160251, -0.223413,
		32.358692, 33.935200, 39.681065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765289, 34.231518, 39.196781>,  <31.685671, 33.823021, 39.837456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765289, 34.231518, 39.196781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127338, 34.065098, 39.231785>,  <32.344566, 33.965244, 39.252785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127338, 34.065098, 39.231785>,  <31.765289, 34.231518, 39.196781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127338, 34.065098, 39.231785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017748, -0.168664, -0.985514,
		0.424784, 0.893562, -0.145278,
		0.905121, -0.416052, 0.087505,
		32.398876, 33.940281, 39.258038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162613, 34.435856, 38.572498>,  <31.765289, 34.231518, 39.196781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162613, 34.435856, 38.572498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356911, 34.109524, 38.698025>,  <32.473488, 33.913727, 38.773342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356911, 34.109524, 38.698025>,  <32.162613, 34.435856, 38.572498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356911, 34.109524, 38.698025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092815, -0.308849, -0.946571,
		0.869161, 0.488915, -0.074299,
		0.485740, -0.815827, 0.313818,
		32.502632, 33.864777, 38.792171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568050, 34.302998, 38.104687>,  <32.162613, 34.435856, 38.572498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568050, 34.302998, 38.104687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521713, 33.947948, 38.282993>,  <32.493912, 33.734921, 38.389977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521713, 33.947948, 38.282993>,  <32.568050, 34.302998, 38.104687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521713, 33.947948, 38.282993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237249, -0.460521, -0.855356,
		0.964517, 0.006667, 0.263938,
		-0.115846, -0.887624, 0.445762,
		32.486958, 33.681660, 38.416721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989899, 33.939713, 37.726734>,  <32.568050, 34.302998, 38.104687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989899, 33.939713, 37.726734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788826, 33.658188, 37.927521>,  <32.668182, 33.489273, 38.047993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788826, 33.658188, 37.927521>,  <32.989899, 33.939713, 37.726734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788826, 33.658188, 37.927521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132920, -0.636682, -0.759584,
		0.854194, -0.315104, 0.413596,
		-0.502678, -0.703807, 0.501967,
		32.638023, 33.447044, 38.078110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271290, 33.336464, 37.459095>,  <32.989899, 33.939713, 37.726734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271290, 33.336464, 37.459095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929470, 33.235786, 37.640816>,  <32.724377, 33.175381, 37.749847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929470, 33.235786, 37.640816>,  <33.271290, 33.336464, 37.459095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929470, 33.235786, 37.640816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234676, -0.593204, -0.770088,
		0.463324, -0.764694, 0.447856,
		-0.854551, -0.251699, 0.454301,
		32.673103, 33.160278, 37.777107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276901, 32.702267, 37.693241>,  <33.271290, 33.336464, 37.459095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276901, 32.702267, 37.693241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902359, 32.807392, 37.600147>,  <32.677635, 32.870468, 37.544292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902359, 32.807392, 37.600147>,  <33.276901, 32.702267, 37.693241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902359, 32.807392, 37.600147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054744, -0.545542, -0.836294,
		-0.346756, -0.795810, 0.496434,
		-0.936357, 0.262813, -0.232736,
		32.621452, 32.886234, 37.530327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087696, 32.114532, 37.527218>,  <33.276901, 32.702267, 37.693241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087696, 32.114532, 37.527218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806141, 32.344273, 37.360046>,  <32.637207, 32.482117, 37.259743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806141, 32.344273, 37.360046>,  <33.087696, 32.114532, 37.527218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806141, 32.344273, 37.360046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035588, -0.559122, -0.828321,
		-0.709422, -0.597916, 0.373118,
		-0.703885, 0.574351, -0.417932,
		32.594975, 32.516579, 37.234665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542706, 31.741816, 37.165905>,  <33.087696, 32.114532, 37.527218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542706, 31.741816, 37.165905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519577, 32.111866, 37.015816>,  <32.505699, 32.333897, 36.925762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519577, 32.111866, 37.015816>,  <32.542706, 31.741816, 37.165905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519577, 32.111866, 37.015816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113545, -0.367323, -0.923137,
		-0.991849, -0.095983, -0.083804,
		-0.057823, 0.925127, -0.375227,
		32.502232, 32.389404, 36.903248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935017, 31.047770, 37.274300>,  <32.542706, 31.741816, 37.165905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935017, 31.047770, 37.274300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833027, 31.043409, 37.661053>,  <32.771835, 31.040792, 37.893105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833027, 31.043409, 37.661053>,  <32.935017, 31.047770, 37.274300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833027, 31.043409, 37.661053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931166, -0.266736, -0.248560,
		0.260613, -0.963708, 0.057860,
		-0.254972, -0.010901, 0.966887,
		32.756535, 31.040138, 37.951118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274746, 30.598852, 37.840027>,  <32.935017, 31.047770, 37.274300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274746, 30.598852, 37.840027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603951, 30.371950, 37.851856>,  <33.801472, 30.235809, 37.858955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603951, 30.371950, 37.851856>,  <33.274746, 30.598852, 37.840027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603951, 30.371950, 37.851856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021788, 0.083551, 0.996265,
		-0.567606, -0.819294, 0.081123,
		0.823012, -0.567254, 0.029573,
		33.850853, 30.201775, 37.860729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203785, 30.057957, 38.350464>,  <33.274746, 30.598852, 37.840027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203785, 30.057957, 38.350464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575752, 30.195000, 38.296986>,  <33.798931, 30.277225, 38.264900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575752, 30.195000, 38.296986>,  <33.203785, 30.057957, 38.350464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575752, 30.195000, 38.296986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086328, 0.150031, 0.984905,
		0.357494, -0.927422, 0.109940,
		0.929917, 0.342607, -0.133697,
		33.854729, 30.297781, 38.256878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745838, 29.597813, 38.653709>,  <33.203785, 30.057957, 38.350464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745838, 29.597813, 38.653709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806046, 29.992920, 38.670002>,  <33.842171, 30.229984, 38.679779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806046, 29.992920, 38.670002>,  <33.745838, 29.597813, 38.653709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806046, 29.992920, 38.670002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200445, -0.070839, 0.977141,
		0.968074, -0.138910, -0.208656,
		0.150515, 0.987768, 0.040733,
		33.851200, 30.289249, 38.682220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388603, 29.655884, 38.917839>,  <33.745838, 29.597813, 38.653709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388603, 29.655884, 38.917839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145828, 29.961401, 39.005703>,  <34.000164, 30.144711, 39.058422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145828, 29.961401, 39.005703>,  <34.388603, 29.655884, 38.917839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145828, 29.961401, 39.005703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093832, -0.205588, 0.974130,
		0.789192, 0.611846, 0.053110,
		-0.606937, 0.763792, 0.219660,
		33.963749, 30.190538, 39.071602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678421, 30.015013, 39.504097>,  <34.388603, 29.655884, 38.917839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678421, 30.015013, 39.504097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300331, 30.141760, 39.472744>,  <34.073479, 30.217808, 39.453934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300331, 30.141760, 39.472744>,  <34.678421, 30.015013, 39.504097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300331, 30.141760, 39.472744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105543, -0.069450, 0.991987,
		0.308885, 0.945924, 0.099089,
		-0.945225, 0.316868, -0.078383,
		34.016762, 30.236820, 39.449230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626637, 30.693937, 39.816044>,  <34.678421, 30.015013, 39.504097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626637, 30.693937, 39.816044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243031, 30.582647, 39.837494>,  <34.012867, 30.515873, 39.850365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243031, 30.582647, 39.837494>,  <34.626637, 30.693937, 39.816044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243031, 30.582647, 39.837494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027078, 0.278393, 0.960085,
		-0.282051, 0.919286, -0.274518,
		-0.959017, -0.278226, 0.053629,
		33.955326, 30.499180, 39.853584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327892, 31.227819, 40.191357>,  <34.626637, 30.693937, 39.816044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327892, 31.227819, 40.191357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032997, 30.957752, 40.201370>,  <33.856060, 30.795712, 40.207378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032997, 30.957752, 40.201370>,  <34.327892, 31.227819, 40.191357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032997, 30.957752, 40.201370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225430, 0.280751, 0.932931,
		-0.636915, 0.682148, -0.359184,
		-0.737239, -0.675168, 0.025038,
		33.811825, 30.755201, 40.208881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816425, 31.619993, 40.510574>,  <34.327892, 31.227819, 40.191357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816425, 31.619993, 40.510574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757507, 31.228745, 40.569336>,  <33.722157, 30.993996, 40.604591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757507, 31.228745, 40.569336>,  <33.816425, 31.619993, 40.510574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757507, 31.228745, 40.569336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081034, 0.159957, 0.983792,
		-0.985767, 0.133004, -0.102822,
		-0.147296, -0.978122, 0.146902,
		33.713318, 30.935308, 40.613407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149734, 31.611349, 40.949402>,  <33.816425, 31.619993, 40.510574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149734, 31.611349, 40.949402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334080, 31.262344, 41.014305>,  <33.444687, 31.052942, 41.053249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334080, 31.262344, 41.014305>,  <33.149734, 31.611349, 40.949402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334080, 31.262344, 41.014305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151135, 0.103002, 0.983132,
		-0.874507, -0.477612, -0.084398,
		0.460863, -0.872512, 0.162260,
		33.472340, 31.000591, 41.062984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680332, 31.206156, 41.278179>,  <33.149734, 31.611349, 40.949402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680332, 31.206156, 41.278179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029751, 31.023579, 41.345798>,  <33.239403, 30.914032, 41.386368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029751, 31.023579, 41.345798>,  <32.680332, 31.206156, 41.278179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029751, 31.023579, 41.345798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166240, 0.046636, 0.984982,
		-0.457473, -0.888529, -0.035141,
		0.873546, -0.456444, 0.169044,
		33.291813, 30.886646, 41.396511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503811, 30.701900, 41.770103>,  <32.680332, 31.206156, 41.278179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503811, 30.701900, 41.770103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901936, 30.740345, 41.774563>,  <33.140808, 30.763412, 41.777237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901936, 30.740345, 41.774563>,  <32.503811, 30.701900, 41.770103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901936, 30.740345, 41.774563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001413, -0.129606, 0.991565,
		0.096746, -0.986896, -0.129134,
		0.995308, 0.096113, 0.011144,
		33.200527, 30.769178, 41.777905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736935, 30.218655, 42.257309>,  <32.503811, 30.701900, 41.770103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736935, 30.218655, 42.257309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025631, 30.491877, 42.212551>,  <33.198849, 30.655809, 42.185696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025631, 30.491877, 42.212551>,  <32.736935, 30.218655, 42.257309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025631, 30.491877, 42.212551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184638, -0.034200, 0.982211,
		0.667078, -0.729565, -0.150802,
		0.721745, 0.683056, -0.111891,
		33.242153, 30.696793, 42.178986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414524, 29.924244, 42.579556>,  <32.736935, 30.218655, 42.257309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414524, 29.924244, 42.579556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448536, 30.321907, 42.552956>,  <33.468945, 30.560505, 42.536995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448536, 30.321907, 42.552956>,  <33.414524, 29.924244, 42.579556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448536, 30.321907, 42.552956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177543, 0.050551, 0.982814,
		0.980433, -0.095373, -0.172207,
		0.085028, 0.994157, -0.066495,
		33.474045, 30.620153, 42.533009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024471, 30.005743, 42.915314>,  <33.414524, 29.924244, 42.579556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024471, 30.005743, 42.915314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826492, 30.353275, 42.910339>,  <33.707703, 30.561794, 42.907356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826492, 30.353275, 42.910339>,  <34.024471, 30.005743, 42.915314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826492, 30.353275, 42.910339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055600, 0.045950, 0.997395,
		0.867141, 0.492968, -0.071049,
		-0.494949, 0.868833, -0.012436,
		33.678009, 30.613926, 42.906609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318794, 30.435295, 43.317493>,  <34.024471, 30.005743, 42.915314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318794, 30.435295, 43.317493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988605, 30.660641, 43.303574>,  <33.790493, 30.795849, 43.295219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988605, 30.660641, 43.303574>,  <34.318794, 30.435295, 43.317493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988605, 30.660641, 43.303574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157493, 0.289102, 0.944254,
		0.542020, 0.773978, -0.327373,
		-0.825476, 0.563363, -0.034803,
		33.740963, 30.829649, 43.293133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531929, 31.102636, 43.623947>,  <34.318794, 30.435295, 43.317493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531929, 31.102636, 43.623947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134678, 31.082071, 43.666000>,  <33.896328, 31.069733, 43.691231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134678, 31.082071, 43.666000>,  <34.531929, 31.102636, 43.623947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134678, 31.082071, 43.666000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084026, 0.312035, 0.946348,
		-0.081458, 0.948679, -0.305571,
		-0.993129, -0.051412, 0.105131,
		33.836739, 31.066648, 43.697540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360199, 31.753752, 43.873615>,  <34.531929, 31.102636, 43.623947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360199, 31.753752, 43.873615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064442, 31.497608, 43.956791>,  <33.886986, 31.343922, 44.006695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064442, 31.497608, 43.956791>,  <34.360199, 31.753752, 43.873615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064442, 31.497608, 43.956791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020731, 0.330350, 0.943631,
		-0.672951, 0.693406, -0.257534,
		-0.739396, -0.640357, 0.207934,
		33.842625, 31.305502, 44.019173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802979, 32.126808, 44.188782>,  <34.360199, 31.753752, 43.873615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802979, 32.126808, 44.188782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741592, 31.752562, 44.315945>,  <33.704762, 31.528013, 44.392242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741592, 31.752562, 44.315945>,  <33.802979, 32.126808, 44.188782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741592, 31.752562, 44.315945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249740, 0.348002, 0.903618,
		-0.956074, 0.059283, -0.287068,
		-0.153469, -0.935618, 0.317910,
		33.695553, 31.471876, 44.411316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360344, 32.219482, 44.840767>,  <33.802979, 32.126808, 44.188782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360344, 32.219482, 44.840767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508217, 31.847824, 44.843025>,  <33.596939, 31.624830, 44.844379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508217, 31.847824, 44.843025>,  <33.360344, 32.219482, 44.840767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508217, 31.847824, 44.843025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041560, -0.010468, 0.999081,
		-0.928228, -0.369577, -0.042485,
		0.369682, -0.929141, 0.005643,
		33.619122, 31.569082, 44.844719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976223, 31.832413, 45.416042>,  <33.360344, 32.219482, 44.840767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976223, 31.832413, 45.416042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307056, 31.614395, 45.361107>,  <33.505558, 31.483585, 45.328144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307056, 31.614395, 45.361107>,  <32.976223, 31.832413, 45.416042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307056, 31.614395, 45.361107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074667, -0.135635, 0.987941,
		-0.557097, -0.827365, -0.071485,
		0.827084, -0.545042, -0.137339,
		33.555183, 31.450882, 45.319904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902897, 31.241541, 45.769547>,  <32.976223, 31.832413, 45.416042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902897, 31.241541, 45.769547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296131, 31.309385, 45.741924>,  <33.532074, 31.350092, 45.725349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296131, 31.309385, 45.741924>,  <32.902897, 31.241541, 45.769547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296131, 31.309385, 45.741924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103343, -0.202514, 0.973811,
		0.151184, -0.964479, -0.216618,
		0.983089, 0.169611, -0.069055,
		33.591057, 31.360268, 45.721207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201656, 30.885708, 46.276234>,  <32.902897, 31.241541, 45.769547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201656, 30.885708, 46.276234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531330, 31.089130, 46.176556>,  <33.729134, 31.211184, 46.116749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531330, 31.089130, 46.176556>,  <33.201656, 30.885708, 46.276234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531330, 31.089130, 46.176556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261528, 0.048505, 0.963976,
		0.502325, -0.859660, -0.093025,
		0.824180, 0.508558, -0.249190,
		33.778584, 31.241697, 46.101799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775940, 30.621241, 46.641335>,  <33.201656, 30.885708, 46.276234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775940, 30.621241, 46.641335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900249, 30.980505, 46.516933>,  <33.974834, 31.196064, 46.442291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900249, 30.980505, 46.516933>,  <33.775940, 30.621241, 46.641335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900249, 30.980505, 46.516933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526037, 0.109999, 0.843318,
		0.791645, -0.425687, -0.438280,
		0.310778, 0.898160, -0.311008,
		33.993484, 31.249952, 46.423630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482941, 30.684467, 46.880978>,  <33.775940, 30.621241, 46.641335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482941, 30.684467, 46.880978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318077, 31.047106, 46.844742>,  <34.219158, 31.264688, 46.822998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318077, 31.047106, 46.844742>,  <34.482941, 30.684467, 46.880978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318077, 31.047106, 46.844742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272160, 0.217401, 0.937372,
		0.869511, 0.361694, -0.336344,
		-0.412163, 0.906595, -0.090594,
		34.194427, 31.319084, 46.817562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958630, 31.283218, 47.003998>,  <34.482941, 30.684467, 46.880978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958630, 31.283218, 47.003998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594475, 31.407494, 47.113300>,  <34.375980, 31.482058, 47.178883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594475, 31.407494, 47.113300>,  <34.958630, 31.283218, 47.003998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594475, 31.407494, 47.113300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334082, 0.162332, 0.928460,
		0.244102, 0.936548, -0.251580,
		-0.910386, 0.310687, 0.273258,
		34.321358, 31.500700, 47.195278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108280, 31.686596, 47.478531>,  <34.958630, 31.283218, 47.003998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108280, 31.686596, 47.478531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714493, 31.663393, 47.544819>,  <34.478222, 31.649471, 47.584591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714493, 31.663393, 47.544819>,  <35.108280, 31.686596, 47.478531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714493, 31.663393, 47.544819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161305, 0.073930, 0.984132,
		-0.069337, 0.995575, -0.063425,
		-0.984466, -0.058006, 0.165718,
		34.419151, 31.645990, 47.594536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620590, 32.186501, 47.232841>,  <35.108280, 31.686596, 47.478531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620590, 32.186501, 47.232841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013451, 32.203022, 47.306232>,  <36.249168, 32.212936, 47.350269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013451, 32.203022, 47.306232>,  <35.620590, 32.186501, 47.232841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013451, 32.203022, 47.306232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185687, -0.058129, -0.980888,
		-0.029853, 0.997454, -0.064762,
		0.982155, 0.041308, 0.183479,
		36.308098, 32.215416, 47.361275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964413, 32.684040, 46.798866>,  <35.620590, 32.186501, 47.232841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964413, 32.684040, 46.798866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298195, 32.503471, 46.925301>,  <36.498463, 32.395130, 47.001160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298195, 32.503471, 46.925301>,  <35.964413, 32.684040, 46.798866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298195, 32.503471, 46.925301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334882, -0.040143, -0.941405,
		0.437656, 0.891409, 0.117674,
		0.834453, -0.451418, 0.316086,
		36.548531, 32.368046, 47.020126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624882, 33.085255, 46.571926>,  <35.964413, 32.684040, 46.798866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624882, 33.085255, 46.571926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725170, 32.702183, 46.628475>,  <36.785343, 32.472340, 46.662403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725170, 32.702183, 46.628475>,  <36.624882, 33.085255, 46.571926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725170, 32.702183, 46.628475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255459, -0.075405, -0.963875,
		0.933744, 0.277782, 0.225742,
		0.250725, -0.957680, 0.141371,
		36.800388, 32.414879, 46.670887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264145, 33.045956, 46.291615>,  <36.624882, 33.085255, 46.571926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264145, 33.045956, 46.291615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128967, 32.670162, 46.314117>,  <37.047859, 32.444687, 46.327618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128967, 32.670162, 46.314117>,  <37.264145, 33.045956, 46.291615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128967, 32.670162, 46.314117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248623, -0.146765, -0.957417,
		0.907734, -0.309566, 0.283176,
		-0.337944, -0.939483, 0.056258,
		37.027584, 32.388317, 46.330994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841404, 32.688919, 46.122269>,  <37.264145, 33.045956, 46.291615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841404, 32.688919, 46.122269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539566, 32.429649, 46.081379>,  <37.358463, 32.274086, 46.056843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539566, 32.429649, 46.081379>,  <37.841404, 32.688919, 46.122269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539566, 32.429649, 46.081379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275919, -0.172074, -0.945653,
		0.595359, -0.741793, 0.308691,
		-0.754597, -0.648177, -0.102229,
		37.313187, 32.235195, 46.050709>
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
