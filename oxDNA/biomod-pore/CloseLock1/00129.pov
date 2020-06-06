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
	<24.023857, 35.168514, 34.916676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382111, 35.042324, 35.042099>,  <24.597063, 34.966610, 35.117352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382111, 35.042324, 35.042099>,  <24.023857, 35.168514, 34.916676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382111, 35.042324, 35.042099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130335, -0.860147, -0.493112,
		0.425268, 0.400780, -0.811494,
		0.895634, -0.315471, 0.313558,
		24.650801, 34.947681, 35.136166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397425, 34.926582, 34.368557>,  <24.023857, 35.168514, 34.916676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397425, 34.926582, 34.368557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.552673, 34.727631, 34.678905>,  <24.645823, 34.608261, 34.865116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.552673, 34.727631, 34.678905>,  <24.397425, 34.926582, 34.368557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.552673, 34.727631, 34.678905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234481, -0.867456, -0.438793,
		0.891280, -0.011621, -0.453305,
		0.388123, -0.497379, 0.775871,
		24.669109, 34.578419, 34.911667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815107, 34.407959, 34.074715>,  <24.397425, 34.926582, 34.368557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815107, 34.407959, 34.074715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692123, 34.326424, 34.446503>,  <24.618334, 34.277504, 34.669575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692123, 34.326424, 34.446503>,  <24.815107, 34.407959, 34.074715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692123, 34.326424, 34.446503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227119, -0.932835, -0.279705,
		0.924060, -0.297099, 0.240511,
		-0.307458, -0.203839, 0.929472,
		24.599886, 34.265270, 34.725346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399780, 34.547585, 34.529083>,  <24.815107, 34.407959, 34.074715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399780, 34.547585, 34.529083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660616, 34.841278, 34.604649>,  <25.817118, 35.017494, 34.649986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660616, 34.841278, 34.604649>,  <25.399780, 34.547585, 34.529083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660616, 34.841278, 34.604649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545717, -0.281605, -0.789235,
		-0.526281, 0.617743, -0.584313,
		0.652089, 0.734229, 0.188910,
		25.856243, 35.061546, 34.661320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595882, 34.834801, 33.828709>,  <25.399780, 34.547585, 34.529083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595882, 34.834801, 33.828709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885363, 34.928837, 34.088245>,  <26.059050, 34.985260, 34.243965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885363, 34.928837, 34.088245>,  <25.595882, 34.834801, 33.828709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885363, 34.928837, 34.088245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685328, -0.355377, -0.635636,
		0.081149, 0.904676, -0.418301,
		0.723700, 0.235092, 0.648838,
		26.102472, 34.999363, 34.282898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121244, 35.434261, 33.658482>,  <25.595882, 34.834801, 33.828709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121244, 35.434261, 33.658482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259869, 35.143970, 33.896210>,  <26.343042, 34.969795, 34.038845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259869, 35.143970, 33.896210>,  <26.121244, 35.434261, 33.658482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259869, 35.143970, 33.896210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719022, -0.201370, -0.665175,
		0.602416, 0.657848, 0.452030,
		0.346559, -0.725731, 0.594316,
		26.363836, 34.926250, 34.074505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791834, 35.518108, 33.681877>,  <26.121244, 35.434261, 33.658482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791834, 35.518108, 33.681877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769396, 35.134235, 33.792053>,  <26.755934, 34.903912, 33.858158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769396, 35.134235, 33.792053>,  <26.791834, 35.518108, 33.681877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769396, 35.134235, 33.792053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744366, -0.224057, -0.629061,
		0.665411, 0.169740, 0.726922,
		-0.056095, -0.959680, 0.275439,
		26.752567, 34.846333, 33.874683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457083, 35.282486, 33.762165>,  <26.791834, 35.518108, 33.681877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457083, 35.282486, 33.762165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285326, 34.921238, 33.761570>,  <27.182272, 34.704491, 33.761215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285326, 34.921238, 33.761570>,  <27.457083, 35.282486, 33.762165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285326, 34.921238, 33.761570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803779, -0.381408, -0.456583,
		0.411782, -0.197246, 0.889680,
		-0.429390, -0.903118, -0.001485,
		27.156509, 34.650303, 33.761124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968082, 34.798908, 33.989014>,  <27.457083, 35.282486, 33.762165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968082, 34.798908, 33.989014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740896, 34.555729, 33.767090>,  <27.604584, 34.409821, 33.633938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740896, 34.555729, 33.767090>,  <27.968082, 34.798908, 33.989014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740896, 34.555729, 33.767090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815501, -0.324592, -0.479164,
		0.111222, -0.724594, 0.680142,
		-0.567968, -0.607950, -0.554806,
		27.570505, 34.373344, 33.600647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270046, 33.992447, 33.941013>,  <27.968082, 34.798908, 33.989014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270046, 33.992447, 33.941013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018559, 34.017418, 33.630966>,  <27.867666, 34.032402, 33.444939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018559, 34.017418, 33.630966>,  <28.270046, 33.992447, 33.941013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018559, 34.017418, 33.630966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665633, -0.472142, -0.577940,
		-0.402048, -0.879309, 0.255290,
		-0.628721, 0.062430, -0.775121,
		27.829943, 34.036148, 33.398430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121014, 33.257214, 33.813492>,  <28.270046, 33.992447, 33.941013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121014, 33.257214, 33.813492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031815, 33.476437, 33.491024>,  <27.978294, 33.607971, 33.297543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031815, 33.476437, 33.491024>,  <28.121014, 33.257214, 33.813492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031815, 33.476437, 33.491024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523886, -0.630039, -0.573231,
		-0.822080, -0.550170, -0.146621,
		-0.222998, 0.548054, -0.806169,
		27.964914, 33.640854, 33.249172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906420, 32.708935, 33.289936>,  <28.121014, 33.257214, 33.813492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906420, 32.708935, 33.289936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003151, 33.027241, 33.067844>,  <28.061190, 33.218224, 32.934589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003151, 33.027241, 33.067844>,  <27.906420, 32.708935, 33.289936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003151, 33.027241, 33.067844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557452, -0.582295, -0.591760,
		-0.794208, -0.166408, -0.584417,
		0.241830, 0.795764, -0.555228,
		28.075701, 33.265968, 32.901276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746838, 32.514862, 32.526382>,  <27.906420, 32.708935, 33.289936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746838, 32.514862, 32.526382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975960, 32.840740, 32.490242>,  <28.113434, 33.036266, 32.468559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975960, 32.840740, 32.490242>,  <27.746838, 32.514862, 32.526382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975960, 32.840740, 32.490242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499341, -0.434229, -0.749736,
		-0.650041, 0.384336, -0.655540,
		0.572805, 0.814697, -0.090352,
		28.147800, 33.085148, 32.463135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821117, 32.489101, 31.760557>,  <27.746838, 32.514862, 32.526382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821117, 32.489101, 31.760557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103935, 32.715137, 31.930620>,  <28.273626, 32.850758, 32.032658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103935, 32.715137, 31.930620>,  <27.821117, 32.489101, 31.760557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103935, 32.715137, 31.930620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684615, -0.396346, -0.611730,
		-0.177173, 0.723590, -0.667104,
		0.707045, 0.565091, 0.425158,
		28.316050, 32.884666, 32.058167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134350, 32.766590, 31.198608>,  <27.821117, 32.489101, 31.760557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134350, 32.766590, 31.198608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401230, 32.785015, 31.495989>,  <28.561357, 32.796070, 31.674417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401230, 32.785015, 31.495989>,  <28.134350, 32.766590, 31.198608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401230, 32.785015, 31.495989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705916, -0.357668, -0.611357,
		0.237751, 0.932712, -0.271149,
		0.667202, 0.046058, 0.743452,
		28.601391, 32.798832, 31.719025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623238, 33.201859, 30.939491>,  <28.134350, 32.766590, 31.198608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623238, 33.201859, 30.939491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782328, 32.961136, 31.216516>,  <28.877783, 32.816704, 31.382732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782328, 32.961136, 31.216516>,  <28.623238, 33.201859, 30.939491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782328, 32.961136, 31.216516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703397, -0.284661, -0.651307,
		0.589106, 0.746189, 0.310091,
		0.397727, -0.601806, 0.692563,
		28.901646, 32.780594, 31.424286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285120, 33.289265, 30.848705>,  <28.623238, 33.201859, 30.939491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285120, 33.289265, 30.848705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227232, 32.934677, 31.024538>,  <29.192499, 32.721924, 31.130037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227232, 32.934677, 31.024538>,  <29.285120, 33.289265, 30.848705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227232, 32.934677, 31.024538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599628, -0.431962, -0.673688,
		0.787084, 0.166088, 0.594065,
		-0.144722, -0.886467, 0.439581,
		29.183815, 32.668736, 31.156412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918926, 32.859428, 30.825682>,  <29.285120, 33.289265, 30.848705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918926, 32.859428, 30.825682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639257, 32.578003, 30.876524>,  <29.471457, 32.409149, 30.907030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639257, 32.578003, 30.876524>,  <29.918926, 32.859428, 30.825682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639257, 32.578003, 30.876524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419538, -0.547698, -0.723889,
		0.578919, -0.452796, 0.678107,
		-0.699172, -0.703564, 0.127108,
		29.429506, 32.366932, 30.914656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335320, 32.393116, 31.201908>,  <29.918926, 32.859428, 30.825682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335320, 32.393116, 31.201908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038660, 32.208427, 31.007273>,  <29.860664, 32.097614, 30.890491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038660, 32.208427, 31.007273>,  <30.335320, 32.393116, 31.201908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038660, 32.208427, 31.007273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666029, -0.420619, -0.616024,
		0.079767, -0.780954, 0.619474,
		-0.741649, -0.461726, -0.486586,
		29.816166, 32.069908, 30.861298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608822, 31.732452, 31.038656>,  <30.335320, 32.393116, 31.201908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608822, 31.732452, 31.038656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299278, 31.752832, 30.786135>,  <30.113552, 31.765060, 30.634623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299278, 31.752832, 30.786135>,  <30.608822, 31.732452, 31.038656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299278, 31.752832, 30.786135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506712, -0.548195, -0.665376,
		-0.379978, -0.834797, 0.398409,
		-0.773860, 0.050950, -0.631304,
		30.067120, 31.768118, 30.596743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539715, 31.029890, 30.657919>,  <30.608822, 31.732452, 31.038656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539715, 31.029890, 30.657919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385143, 31.331825, 30.445923>,  <30.292400, 31.512987, 30.318726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385143, 31.331825, 30.445923>,  <30.539715, 31.029890, 30.657919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385143, 31.331825, 30.445923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642717, -0.191746, -0.741720,
		-0.661503, -0.627256, -0.411052,
		-0.386431, 0.754840, -0.529989,
		30.269215, 31.558277, 30.286926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738129, 30.853186, 29.927713>,  <30.539715, 31.029890, 30.657919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738129, 30.853186, 29.927713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574085, 31.213951, 29.873508>,  <30.475660, 31.430410, 29.840986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574085, 31.213951, 29.873508>,  <30.738129, 30.853186, 29.927713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574085, 31.213951, 29.873508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505908, 0.101336, -0.856614,
		-0.758861, -0.419859, -0.497844,
		-0.410107, 0.901914, -0.135511,
		30.451054, 31.484526, 29.832855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489752, 30.765757, 29.306732>,  <30.738129, 30.853186, 29.927713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489752, 30.765757, 29.306732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546223, 31.154003, 29.384682>,  <30.580105, 31.386951, 29.431452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546223, 31.154003, 29.384682>,  <30.489752, 30.765757, 29.306732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546223, 31.154003, 29.384682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616325, 0.067874, -0.784561,
		-0.774734, 0.230867, -0.588632,
		0.141177, 0.970615, 0.194873,
		30.588575, 31.445189, 29.443144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207554, 31.054726, 28.652884>,  <30.489752, 30.765757, 29.306732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207554, 31.054726, 28.652884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459599, 31.298706, 28.845098>,  <30.610826, 31.445093, 28.960428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459599, 31.298706, 28.845098>,  <30.207554, 31.054726, 28.652884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459599, 31.298706, 28.845098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647723, -0.071558, -0.758508,
		-0.428265, 0.789202, -0.440169,
		0.630114, 0.609950, 0.480539,
		30.648632, 31.481691, 28.989260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444019, 31.693628, 28.169004>,  <30.207554, 31.054726, 28.652884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444019, 31.693628, 28.169004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712786, 31.575212, 28.440559>,  <30.874046, 31.504162, 28.603493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712786, 31.575212, 28.440559>,  <30.444019, 31.693628, 28.169004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712786, 31.575212, 28.440559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662633, -0.169153, -0.729592,
		0.330825, 0.940078, 0.082510,
		0.671916, -0.296041, 0.678887,
		30.914360, 31.486401, 28.644226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988375, 32.099060, 28.026028>,  <30.444019, 31.693628, 28.169004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988375, 32.099060, 28.026028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088318, 31.755770, 28.205370>,  <31.148283, 31.549795, 28.312975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088318, 31.755770, 28.205370>,  <30.988375, 32.099060, 28.026028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088318, 31.755770, 28.205370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763905, -0.109818, -0.635916,
		0.594996, 0.501388, 0.628164,
		0.249857, -0.858225, 0.448354,
		31.163275, 31.498302, 28.339876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761843, 32.096416, 28.269794>,  <30.988375, 32.099060, 28.026028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761843, 32.096416, 28.269794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643217, 31.726706, 28.173655>,  <31.572042, 31.504879, 28.115971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643217, 31.726706, 28.173655>,  <31.761843, 32.096416, 28.269794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643217, 31.726706, 28.173655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813858, -0.112917, -0.569986,
		0.499684, -0.364647, 0.785715,
		-0.296564, -0.924274, -0.240348,
		31.554247, 31.449423, 28.101549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288143, 31.529478, 28.331394>,  <31.761843, 32.096416, 28.269794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288143, 31.529478, 28.331394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047604, 31.390600, 28.043550>,  <31.903280, 31.307274, 27.870844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047604, 31.390600, 28.043550>,  <32.288143, 31.529478, 28.331394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047604, 31.390600, 28.043550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784330, -0.084803, -0.614521,
		0.152333, -0.933951, 0.323310,
		-0.601350, -0.347193, -0.719608,
		31.867199, 31.286442, 27.827669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852608, 31.254461, 28.796667>,  <32.288143, 31.529478, 28.331394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852608, 31.254461, 28.796667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245132, 31.273146, 28.722004>,  <33.480648, 31.284357, 28.677206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245132, 31.273146, 28.722004>,  <32.852608, 31.254461, 28.796667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245132, 31.273146, 28.722004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135568, 0.520562, 0.842992,
		0.136545, -0.852545, 0.504502,
		0.981314, 0.046712, -0.186658,
		33.539528, 31.287159, 28.666006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364872, 30.948231, 29.331333>,  <32.852608, 31.254461, 28.796667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364872, 30.948231, 29.331333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537357, 31.242798, 29.122818>,  <33.640850, 31.419538, 28.997709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537357, 31.242798, 29.122818>,  <33.364872, 30.948231, 29.331333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537357, 31.242798, 29.122818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108142, 0.531412, 0.840182,
		0.895744, -0.418674, 0.149516,
		0.431217, 0.736419, -0.521286,
		33.666721, 31.463724, 28.966433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104908, 31.006010, 29.508871>,  <33.364872, 30.948231, 29.331333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104908, 31.006010, 29.508871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934185, 31.360014, 29.434467>,  <33.831753, 31.572416, 29.389826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934185, 31.360014, 29.434467>,  <34.104908, 31.006010, 29.508871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934185, 31.360014, 29.434467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357629, 0.354091, 0.864130,
		0.830626, 0.302293, -0.467632,
		-0.426805, 0.885008, -0.186008,
		33.806145, 31.625517, 29.378664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804790, 31.289942, 30.101761>,  <34.104908, 31.006010, 29.508871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804790, 31.289942, 30.101761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852455, 30.895697, 30.053822>,  <33.881054, 30.659149, 30.025057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852455, 30.895697, 30.053822>,  <33.804790, 31.289942, 30.101761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852455, 30.895697, 30.053822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244103, -0.146088, 0.958682,
		-0.962400, -0.084985, -0.258000,
		0.119165, -0.985615, -0.119850,
		33.888203, 30.600012, 30.017866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206768, 30.785500, 30.314299>,  <33.804790, 31.289942, 30.101761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206768, 30.785500, 30.314299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570751, 30.642719, 30.398745>,  <33.789139, 30.557051, 30.449411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570751, 30.642719, 30.398745>,  <33.206768, 30.785500, 30.314299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570751, 30.642719, 30.398745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247109, -0.057870, 0.967258,
		-0.333048, -0.932328, -0.140865,
		0.909954, -0.356952, 0.211113,
		33.843739, 30.535633, 30.462078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171837, 30.201733, 30.708776>,  <33.206768, 30.785500, 30.314299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171837, 30.201733, 30.708776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495625, 30.415518, 30.806023>,  <33.689896, 30.543789, 30.864370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495625, 30.415518, 30.806023>,  <33.171837, 30.201733, 30.708776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495625, 30.415518, 30.806023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346758, 0.101007, 0.932500,
		0.473832, -0.839133, 0.267092,
		0.809470, 0.534465, 0.243116,
		33.738464, 30.575857, 30.878958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553425, 29.877474, 31.312246>,  <33.171837, 30.201733, 30.708776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553425, 29.877474, 31.312246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573772, 30.276707, 31.298145>,  <33.585979, 30.516247, 31.289684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573772, 30.276707, 31.298145>,  <33.553425, 29.877474, 31.312246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573772, 30.276707, 31.298145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679770, 0.060458, 0.730929,
		0.731660, -0.013217, 0.681542,
		0.050866, 0.998083, -0.035250,
		33.589031, 30.576132, 31.287571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769073, 30.183378, 31.952229>,  <33.553425, 29.877474, 31.312246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769073, 30.183378, 31.952229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540424, 30.445284, 31.754427>,  <33.403236, 30.602427, 31.635746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540424, 30.445284, 31.754427>,  <33.769073, 30.183378, 31.952229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540424, 30.445284, 31.754427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701868, -0.078014, 0.708022,
		0.425008, 0.751797, 0.504151,
		-0.571620, 0.654763, -0.494506,
		33.368938, 30.641712, 31.606075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549889, 30.652105, 32.434875>,  <33.769073, 30.183378, 31.952229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549889, 30.652105, 32.434875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286160, 30.718061, 32.141453>,  <33.127922, 30.757635, 31.965399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286160, 30.718061, 32.141453>,  <33.549889, 30.652105, 32.434875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286160, 30.718061, 32.141453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696170, 0.234621, 0.678454,
		0.283978, 0.958000, -0.039901,
		-0.659321, 0.164888, -0.733558,
		33.088364, 30.767529, 31.921385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310658, 31.345638, 32.544304>,  <33.549889, 30.652105, 32.434875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310658, 31.345638, 32.544304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050789, 31.132786, 32.327133>,  <32.894867, 31.005074, 32.196831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050789, 31.132786, 32.327133>,  <33.310658, 31.345638, 32.544304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050789, 31.132786, 32.327133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739854, 0.278372, 0.612474,
		-0.174782, 0.799590, -0.574550,
		-0.649667, -0.532132, -0.542925,
		32.855888, 30.973146, 32.164257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836910, 31.775694, 32.525696>,  <33.310658, 31.345638, 32.544304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836910, 31.775694, 32.525696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642868, 31.437426, 32.436695>,  <32.526443, 31.234465, 32.383293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642868, 31.437426, 32.436695>,  <32.836910, 31.775694, 32.525696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642868, 31.437426, 32.436695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715926, 0.237986, 0.656363,
		-0.502116, 0.477703, -0.720888,
		-0.485108, -0.845673, -0.222503,
		32.497337, 31.183723, 32.369946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184181, 31.986032, 32.534485>,  <32.836910, 31.775694, 32.525696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184181, 31.986032, 32.534485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128334, 31.590660, 32.558193>,  <32.094826, 31.353437, 32.572418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128334, 31.590660, 32.558193>,  <32.184181, 31.986032, 32.534485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128334, 31.590660, 32.558193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746645, 0.144408, 0.649359,
		-0.650405, 0.046408, -0.758168,
		-0.139621, -0.988429, 0.059273,
		32.086449, 31.294132, 32.575974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491121, 31.774710, 32.293682>,  <32.184181, 31.986032, 32.534485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491121, 31.774710, 32.293682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585110, 31.474987, 32.541336>,  <31.641502, 31.295155, 32.689930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585110, 31.474987, 32.541336>,  <31.491121, 31.774710, 32.293682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585110, 31.474987, 32.541336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855968, 0.142294, 0.497063,
		-0.460551, -0.646756, -0.607946,
		0.234971, -0.749305, 0.619136,
		31.655602, 31.250195, 32.727077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873293, 31.391609, 32.318211>,  <31.491121, 31.774710, 32.293682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873293, 31.391609, 32.318211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076777, 31.282558, 32.644863>,  <31.198866, 31.217129, 32.840855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076777, 31.282558, 32.644863>,  <30.873293, 31.391609, 32.318211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076777, 31.282558, 32.644863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860524, -0.131545, 0.492132,
		-0.026743, -0.953085, -0.301518,
		0.508707, -0.272624, 0.816635,
		31.229389, 31.200771, 32.889854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396439, 30.969910, 32.654079>,  <30.873293, 31.391609, 32.318211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396439, 30.969910, 32.654079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664053, 31.056576, 32.938457>,  <30.824621, 31.108576, 33.109085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664053, 31.056576, 32.938457>,  <30.396439, 30.969910, 32.654079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664053, 31.056576, 32.938457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708946, -0.101139, 0.697973,
		0.223131, -0.970993, 0.085938,
		0.669035, 0.216665, 0.710949,
		30.864763, 31.121574, 33.151741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157423, 30.614170, 33.206062>,  <30.396439, 30.969910, 32.654079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157423, 30.614170, 33.206062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402206, 30.872967, 33.388012>,  <30.549076, 31.028246, 33.497181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402206, 30.872967, 33.388012>,  <30.157423, 30.614170, 33.206062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402206, 30.872967, 33.388012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666610, 0.112447, 0.736876,
		0.425605, -0.754159, 0.500105,
		0.611957, 0.646993, 0.454872,
		30.585794, 31.067064, 33.524475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029980, 30.440498, 33.816532>,  <30.157423, 30.614170, 33.206062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029980, 30.440498, 33.816532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195557, 30.802271, 33.857826>,  <30.294903, 31.019335, 33.882603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195557, 30.802271, 33.857826>,  <30.029980, 30.440498, 33.816532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195557, 30.802271, 33.857826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531313, 0.147963, 0.834155,
		0.739160, -0.400141, 0.541783,
		0.413943, 0.904431, 0.103232,
		30.319740, 31.073601, 33.888794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144274, 30.396160, 34.523239>,  <30.029980, 30.440498, 33.816532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144274, 30.396160, 34.523239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103008, 30.764906, 34.373825>,  <30.078249, 30.986153, 34.284176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103008, 30.764906, 34.373825>,  <30.144274, 30.396160, 34.523239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103008, 30.764906, 34.373825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609566, 0.238156, 0.756116,
		0.785994, 0.305696, 0.537367,
		-0.103164, 0.921863, -0.373531,
		30.072060, 31.041466, 34.261765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328491, 30.916613, 35.071842>,  <30.144274, 30.396160, 34.523239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328491, 30.916613, 35.071842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095978, 31.093630, 34.798706>,  <29.956470, 31.199841, 34.634827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095978, 31.093630, 34.798706>,  <30.328491, 30.916613, 35.071842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095978, 31.093630, 34.798706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587105, 0.352933, 0.728523,
		0.563398, 0.824375, 0.054664,
		-0.581284, 0.442542, -0.682836,
		29.921593, 31.226393, 34.593857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044350, 31.511595, 35.478481>,  <30.328491, 30.916613, 35.071842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044350, 31.511595, 35.478481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811335, 31.503166, 35.153469>,  <29.671526, 31.498110, 34.958462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811335, 31.503166, 35.153469>,  <30.044350, 31.511595, 35.478481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811335, 31.503166, 35.153469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682078, 0.556366, 0.474580,
		0.442065, 0.830670, -0.338475,
		-0.582536, -0.021071, -0.812532,
		29.636574, 31.496845, 34.909710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673479, 32.126354, 35.451469>,  <30.044350, 31.511595, 35.478481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673479, 32.126354, 35.451469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445114, 31.902296, 35.211372>,  <29.308096, 31.767860, 35.067314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445114, 31.902296, 35.211372>,  <29.673479, 32.126354, 35.451469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445114, 31.902296, 35.211372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818864, 0.441338, 0.366990,
		0.059341, 0.701037, -0.710651,
		-0.570911, -0.560149, -0.600244,
		29.273840, 31.734251, 35.031300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222675, 32.561089, 35.077625>,  <29.673479, 32.126354, 35.451469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222675, 32.561089, 35.077625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046469, 32.202274, 35.063400>,  <28.940744, 31.986984, 35.054863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046469, 32.202274, 35.063400>,  <29.222675, 32.561089, 35.077625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046469, 32.202274, 35.063400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865495, 0.413836, 0.282238,
		-0.238460, 0.155113, -0.958685,
		-0.440517, -0.897040, -0.035566,
		28.914314, 31.933163, 35.052731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532057, 32.522770, 34.574730>,  <29.222675, 32.561089, 35.077625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532057, 32.522770, 34.574730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497681, 32.226967, 34.841785>,  <28.477055, 32.049484, 35.002018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497681, 32.226967, 34.841785>,  <28.532057, 32.522770, 34.574730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497681, 32.226967, 34.841785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934504, 0.292168, 0.203323,
		-0.345422, -0.606441, -0.716180,
		-0.085941, -0.739505, 0.667642,
		28.471899, 32.005116, 35.042080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786930, 32.363625, 34.469807>,  <28.532057, 32.522770, 34.574730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786930, 32.363625, 34.469807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899431, 32.151375, 34.789639>,  <27.966932, 32.024025, 34.981537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899431, 32.151375, 34.789639>,  <27.786930, 32.363625, 34.469807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899431, 32.151375, 34.789639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909888, 0.117331, 0.397916,
		-0.304962, -0.839444, -0.449814,
		0.281251, -0.530629, 0.799581,
		27.983807, 31.992186, 35.029514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203121, 31.983065, 34.629230>,  <27.786930, 32.363625, 34.469807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203121, 31.983065, 34.629230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418039, 32.044003, 34.961037>,  <27.546991, 32.080566, 35.160122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418039, 32.044003, 34.961037>,  <27.203121, 31.983065, 34.629230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418039, 32.044003, 34.961037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811738, 0.360346, 0.459600,
		-0.228896, -0.920294, 0.317277,
		0.537297, 0.152345, 0.829520,
		27.579227, 32.089706, 35.209892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752722, 31.885109, 35.097225>,  <27.203121, 31.983065, 34.629230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752722, 31.885109, 35.097225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046997, 32.045212, 35.315788>,  <27.223562, 32.141273, 35.446926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046997, 32.045212, 35.315788>,  <26.752722, 31.885109, 35.097225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046997, 32.045212, 35.315788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677252, 0.423072, 0.601947,
		0.009766, -0.812899, 0.582323,
		0.735686, 0.400258, 0.546406,
		27.267702, 32.165291, 35.479710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659588, 31.759312, 35.860043>,  <26.752722, 31.885109, 35.097225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659588, 31.759312, 35.860043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867176, 32.100948, 35.846207>,  <26.991730, 32.305931, 35.837906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867176, 32.100948, 35.846207>,  <26.659588, 31.759312, 35.860043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867176, 32.100948, 35.846207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673442, 0.433456, 0.598826,
		0.526447, -0.287476, 0.800132,
		0.518971, 0.854092, -0.034593,
		27.022867, 32.357174, 35.835831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599953, 31.995743, 36.479450>,  <26.659588, 31.759312, 35.860043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599953, 31.995743, 36.479450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703127, 32.301968, 36.243694>,  <26.765032, 32.485703, 36.102242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703127, 32.301968, 36.243694>,  <26.599953, 31.995743, 36.479450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703127, 32.301968, 36.243694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633113, 0.594736, 0.495436,
		0.729820, 0.245362, 0.638091,
		0.257934, 0.765563, -0.589392,
		26.780508, 32.531635, 36.066875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670481, 32.641930, 36.999500>,  <26.599953, 31.995743, 36.479450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670481, 32.641930, 36.999500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619820, 32.752876, 36.618549>,  <26.589422, 32.819443, 36.389977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619820, 32.752876, 36.618549>,  <26.670481, 32.641930, 36.999500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619820, 32.752876, 36.618549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718070, 0.636748, 0.280939,
		0.684349, 0.719457, 0.118522,
		-0.126655, 0.277368, -0.952379,
		26.581823, 32.836086, 36.332836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378809, 32.244751, 37.240971>,  <26.670481, 32.641930, 36.999500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378809, 32.244751, 37.240971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577133, 31.941195, 37.072090>,  <27.696127, 31.759060, 36.970760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577133, 31.941195, 37.072090>,  <27.378809, 32.244751, 37.240971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577133, 31.941195, 37.072090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520224, 0.129738, -0.844117,
		0.695370, 0.638163, -0.330468,
		0.495810, -0.758892, -0.422204,
		27.725876, 31.713528, 36.945431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984911, 32.598896, 36.859241>,  <27.378809, 32.244751, 37.240971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984911, 32.598896, 36.859241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998903, 32.954117, 37.042606>,  <28.007298, 33.167248, 37.152626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998903, 32.954117, 37.042606>,  <27.984911, 32.598896, 36.859241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998903, 32.954117, 37.042606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898552, -0.228734, 0.374548,
		0.437472, 0.398803, -0.805962,
		0.034980, 0.888052, 0.458410,
		28.009398, 33.220531, 37.180130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622168, 32.388103, 37.081581>,  <27.984911, 32.598896, 36.859241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622168, 32.388103, 37.081581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726919, 32.746983, 36.939335>,  <28.789770, 32.962311, 36.853989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726919, 32.746983, 36.939335>,  <28.622168, 32.388103, 37.081581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726919, 32.746983, 36.939335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555453, 0.161212, 0.815772,
		0.789236, -0.411157, -0.456132,
		0.261877, 0.897196, -0.355613,
		28.805483, 33.016140, 36.832649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279367, 32.429768, 36.880653>,  <28.622168, 32.388103, 37.081581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279367, 32.429768, 36.880653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164103, 32.786594, 37.019894>,  <29.094944, 33.000690, 37.103439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164103, 32.786594, 37.019894>,  <29.279367, 32.429768, 36.880653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164103, 32.786594, 37.019894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676331, -0.067741, 0.733476,
		0.677892, 0.446794, -0.583813,
		-0.288165, 0.892069, 0.348101,
		29.077654, 33.054214, 37.124325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859440, 32.769737, 36.975437>,  <29.279367, 32.429768, 36.880653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859440, 32.769737, 36.975437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586309, 32.942780, 37.210926>,  <29.422432, 33.046604, 37.352219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586309, 32.942780, 37.210926>,  <29.859440, 32.769737, 36.975437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586309, 32.942780, 37.210926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592901, -0.142705, 0.792530,
		0.426868, 0.890217, -0.159051,
		-0.682827, 0.432607, 0.588726,
		29.381462, 33.072563, 37.387543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124868, 33.350887, 37.505993>,  <29.859440, 32.769737, 36.975437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124868, 33.350887, 37.505993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827417, 33.117706, 37.636951>,  <29.648947, 32.977798, 37.715527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827417, 33.117706, 37.636951>,  <30.124868, 33.350887, 37.505993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827417, 33.117706, 37.636951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543761, -0.242389, 0.803474,
		-0.389028, 0.775510, 0.497233,
		-0.743627, -0.582950, 0.327396,
		29.604330, 32.942822, 37.735172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743500, 33.585041, 38.159679>,  <30.124868, 33.350887, 37.505993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743500, 33.585041, 38.159679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779598, 33.192245, 38.093277>,  <29.801258, 32.956570, 38.053436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779598, 33.192245, 38.093277>,  <29.743500, 33.585041, 38.159679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779598, 33.192245, 38.093277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585068, -0.082614, 0.806766,
		-0.805948, -0.169930, 0.567073,
		0.090246, -0.981987, -0.166003,
		29.806673, 32.897648, 38.043476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517687, 33.152027, 38.840954>,  <29.743500, 33.585041, 38.159679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517687, 33.152027, 38.840954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809063, 32.986774, 38.622341>,  <29.983889, 32.887623, 38.491173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809063, 32.986774, 38.622341>,  <29.517687, 33.152027, 38.840954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809063, 32.986774, 38.622341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528367, -0.169053, 0.832015,
		-0.436126, -0.894842, 0.095141,
		0.728438, -0.413132, -0.546534,
		30.027594, 32.862835, 38.458382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722868, 32.543354, 39.205227>,  <29.517687, 33.152027, 38.840954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722868, 32.543354, 39.205227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030304, 32.628536, 38.963924>,  <30.214766, 32.679646, 38.819141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030304, 32.628536, 38.963924>,  <29.722868, 32.543354, 39.205227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030304, 32.628536, 38.963924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638919, -0.207793, 0.740679,
		0.032379, -0.954711, -0.295769,
		0.768592, 0.212954, -0.603254,
		30.260881, 32.692421, 38.782948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198900, 32.014755, 39.294884>,  <29.722868, 32.543354, 39.205227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198900, 32.014755, 39.294884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421663, 32.315220, 39.153114>,  <30.555321, 32.495499, 39.068054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421663, 32.315220, 39.153114>,  <30.198900, 32.014755, 39.294884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421663, 32.315220, 39.153114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679053, -0.166063, 0.715059,
		0.478267, -0.638893, -0.602558,
		0.556909, 0.751158, -0.354420,
		30.588736, 32.540565, 39.046787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823309, 31.778936, 39.319740>,  <30.198900, 32.014755, 39.294884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823309, 31.778936, 39.319740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881205, 32.174595, 39.309647>,  <30.915941, 32.411991, 39.303589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881205, 32.174595, 39.309647>,  <30.823309, 31.778936, 39.319740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881205, 32.174595, 39.309647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714153, -0.086778, 0.694590,
		0.684862, -0.118558, -0.718963,
		0.144740, 0.989148, -0.025237,
		30.924627, 32.471340, 39.302074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505266, 31.903780, 39.222511>,  <30.823309, 31.778936, 39.319740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505266, 31.903780, 39.222511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398470, 32.252827, 39.386101>,  <31.334393, 32.462254, 39.484253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398470, 32.252827, 39.386101>,  <31.505266, 31.903780, 39.222511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398470, 32.252827, 39.386101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789956, -0.044901, 0.611517,
		0.551982, 0.486340, -0.677340,
		-0.266992, 0.872615, 0.408972,
		31.318373, 32.514610, 39.508793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128254, 32.340065, 39.144192>,  <31.505266, 31.903780, 39.222511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128254, 32.340065, 39.144192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904818, 32.499393, 39.435211>,  <31.770756, 32.594990, 39.609821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904818, 32.499393, 39.435211>,  <32.128254, 32.340065, 39.144192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904818, 32.499393, 39.435211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750714, -0.130216, 0.647667,
		0.352717, 0.907956, -0.226287,
		-0.558587, 0.398320, 0.727545,
		31.737242, 32.618889, 39.653473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636105, 32.706596, 39.632587>,  <32.128254, 32.340065, 39.144192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636105, 32.706596, 39.632587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309654, 32.636494, 39.852852>,  <32.113785, 32.594433, 39.985012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309654, 32.636494, 39.852852>,  <32.636105, 32.706596, 39.632587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309654, 32.636494, 39.852852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577198, -0.200930, 0.791498,
		-0.028073, 0.963800, 0.265143,
		-0.816121, -0.175260, 0.550663,
		32.064819, 32.583916, 40.018051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827965, 33.021362, 40.267914>,  <32.636105, 32.706596, 39.632587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827965, 33.021362, 40.267914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505886, 32.796436, 40.343243>,  <32.312641, 32.661480, 40.388439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505886, 32.796436, 40.343243>,  <32.827965, 33.021362, 40.267914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505886, 32.796436, 40.343243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370428, -0.228948, 0.900203,
		-0.463083, 0.794597, 0.392645,
		-0.805194, -0.562315, 0.188319,
		32.264328, 32.627743, 40.399738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763790, 33.117634, 40.846542>,  <32.827965, 33.021362, 40.267914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763790, 33.117634, 40.846542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557396, 32.777145, 40.808197>,  <32.433559, 32.572853, 40.785191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557396, 32.777145, 40.808197>,  <32.763790, 33.117634, 40.846542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557396, 32.777145, 40.808197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139641, -0.194001, 0.971012,
		-0.845140, 0.487639, 0.218966,
		-0.515983, -0.851218, -0.095863,
		32.402599, 32.521782, 40.779438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184692, 33.119904, 41.389294>,  <32.763790, 33.117634, 40.846542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184692, 33.119904, 41.389294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319828, 32.759415, 41.280727>,  <32.400909, 32.543121, 41.215588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319828, 32.759415, 41.280727>,  <32.184692, 33.119904, 41.389294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319828, 32.759415, 41.280727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258603, -0.188388, 0.947436,
		-0.904981, -0.390266, 0.169415,
		0.337836, -0.901223, -0.271412,
		32.421181, 32.489048, 41.199303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056866, 32.720150, 41.985889>,  <32.184692, 33.119904, 41.389294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056866, 32.720150, 41.985889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282455, 32.475227, 41.764256>,  <32.417809, 32.328274, 41.631275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282455, 32.475227, 41.764256>,  <32.056866, 32.720150, 41.985889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282455, 32.475227, 41.764256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350142, -0.430366, 0.831977,
		-0.747885, -0.663224, -0.028321,
		0.563976, -0.612306, -0.554087,
		32.451649, 32.291534, 41.598030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816355, 32.104286, 42.291500>,  <32.056866, 32.720150, 41.985889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816355, 32.104286, 42.291500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166183, 32.092506, 42.097900>,  <32.376080, 32.085438, 41.981743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166183, 32.092506, 42.097900>,  <31.816355, 32.104286, 42.291500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166183, 32.092506, 42.097900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384241, -0.566749, 0.728803,
		-0.295768, -0.823364, -0.484348,
		0.874574, -0.029450, -0.483996,
		32.428555, 32.083672, 41.952702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061565, 31.358366, 42.311119>,  <31.816355, 32.104286, 42.291500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061565, 31.358366, 42.311119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350845, 31.625048, 42.239033>,  <32.524414, 31.785057, 42.195782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350845, 31.625048, 42.239033>,  <32.061565, 31.358366, 42.311119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350845, 31.625048, 42.239033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576247, -0.438682, 0.689563,
		0.380677, -0.602546, -0.701444,
		0.723204, 0.666706, -0.180220,
		32.567806, 31.825060, 42.184967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770943, 30.955177, 42.385075>,  <32.061565, 31.358366, 42.311119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770943, 30.955177, 42.385075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867840, 31.341589, 42.421093>,  <32.925980, 31.573435, 42.442703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867840, 31.341589, 42.421093>,  <32.770943, 30.955177, 42.385075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867840, 31.341589, 42.421093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583069, -0.219135, 0.782311,
		0.775466, -0.137010, -0.616345,
		0.242247, 0.966027, 0.090045,
		32.940514, 31.631397, 42.448105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562267, 30.982920, 42.325748>,  <32.770943, 30.955177, 42.385075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562267, 30.982920, 42.325748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416042, 31.314859, 42.494370>,  <33.328308, 31.514023, 42.595543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416042, 31.314859, 42.494370>,  <33.562267, 30.982920, 42.325748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416042, 31.314859, 42.494370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463255, -0.230610, 0.855695,
		0.807314, 0.508101, -0.300129,
		-0.365567, 0.829851, 0.421556,
		33.306374, 31.563814, 42.620834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058956, 31.134624, 42.811848>,  <33.562267, 30.982920, 42.325748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058956, 31.134624, 42.811848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746910, 31.352690, 42.934631>,  <33.559685, 31.483528, 43.008301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746910, 31.352690, 42.934631>,  <34.058956, 31.134624, 42.811848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746910, 31.352690, 42.934631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229049, -0.207699, 0.950998,
		0.582202, 0.812194, 0.037160,
		-0.780113, 0.545162, 0.306955,
		33.512875, 31.516239, 43.026718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355644, 31.439245, 43.335461>,  <34.058956, 31.134624, 42.811848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355644, 31.439245, 43.335461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963577, 31.481672, 43.402424>,  <33.728336, 31.507128, 43.442600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963577, 31.481672, 43.402424>,  <34.355644, 31.439245, 43.335461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963577, 31.481672, 43.402424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100630, -0.461352, 0.881492,
		0.170731, 0.880854, 0.441528,
		-0.980166, 0.106067, 0.167407,
		33.669529, 31.513493, 43.452644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307838, 31.779989, 43.938461>,  <34.355644, 31.439245, 43.335461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307838, 31.779989, 43.938461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983326, 31.556997, 43.867989>,  <33.788620, 31.423203, 43.825706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983326, 31.556997, 43.867989>,  <34.307838, 31.779989, 43.938461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983326, 31.556997, 43.867989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180536, -0.525484, 0.831429,
		-0.556087, 0.642714, 0.526960,
		-0.811279, -0.557482, -0.176182,
		33.739941, 31.389753, 43.815132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959736, 31.666031, 44.607948>,  <34.307838, 31.779989, 43.938461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959736, 31.666031, 44.607948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791988, 31.378344, 44.386372>,  <33.691338, 31.205730, 44.253426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791988, 31.378344, 44.386372>,  <33.959736, 31.666031, 44.607948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791988, 31.378344, 44.386372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044584, -0.625775, 0.778728,
		-0.906719, 0.301880, 0.294499,
		-0.419372, -0.719218, -0.553943,
		33.666176, 31.162579, 44.220188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465355, 31.449797, 45.004196>,  <33.959736, 31.666031, 44.607948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465355, 31.449797, 45.004196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529472, 31.142288, 44.756554>,  <33.567944, 30.957783, 44.607967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529472, 31.142288, 44.756554>,  <33.465355, 31.449797, 45.004196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529472, 31.142288, 44.756554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000838, -0.627325, 0.778756,
		-0.987069, -0.124312, -0.101201,
		0.160294, -0.768771, -0.619109,
		33.577560, 30.911657, 44.570820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094070, 30.961359, 45.367657>,  <33.465355, 31.449797, 45.004196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094070, 30.961359, 45.367657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323387, 30.767357, 45.103504>,  <33.460979, 30.650955, 44.945011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323387, 30.767357, 45.103504>,  <33.094070, 30.961359, 45.367657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323387, 30.767357, 45.103504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207472, -0.693788, 0.689648,
		-0.792647, -0.532382, -0.297119,
		0.573294, -0.485004, -0.660383,
		33.495377, 30.621857, 44.905388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896709, 30.304911, 45.386242>,  <33.094070, 30.961359, 45.367657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896709, 30.304911, 45.386242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278744, 30.303728, 45.267712>,  <33.507965, 30.303019, 45.196594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278744, 30.303728, 45.267712>,  <32.896709, 30.304911, 45.386242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278744, 30.303728, 45.267712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234570, -0.603510, 0.762071,
		-0.181086, -0.797350, -0.575710,
		0.955084, -0.002956, -0.296322,
		33.565269, 30.302841, 45.178814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081299, 29.607340, 45.520702>,  <32.896709, 30.304911, 45.386242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081299, 29.607340, 45.520702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400700, 29.841213, 45.463371>,  <33.592339, 29.981537, 45.428974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400700, 29.841213, 45.463371>,  <33.081299, 29.607340, 45.520702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400700, 29.841213, 45.463371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478062, -0.471184, 0.741244,
		0.365860, -0.660403, -0.655755,
		0.798501, 0.584683, -0.143326,
		33.640251, 30.016619, 45.420372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569099, 29.126905, 45.420303>,  <33.081299, 29.607340, 45.520702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569099, 29.126905, 45.420303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735992, 29.467367, 45.547714>,  <33.836128, 29.671644, 45.624161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735992, 29.467367, 45.547714>,  <33.569099, 29.126905, 45.420303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735992, 29.467367, 45.547714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355735, -0.475480, 0.804594,
		0.836285, -0.222391, -0.501169,
		0.417230, 0.851153, 0.318524,
		33.861160, 29.722713, 45.643272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200211, 28.930716, 45.465603>,  <33.569099, 29.126905, 45.420303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200211, 28.930716, 45.465603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202942, 29.268211, 45.680286>,  <34.204582, 29.470709, 45.809097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202942, 29.268211, 45.680286>,  <34.200211, 28.930716, 45.465603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202942, 29.268211, 45.680286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567972, -0.445018, 0.692363,
		0.823019, 0.300106, -0.482261,
		0.006833, 0.843739, 0.536710,
		34.204990, 29.521334, 45.841301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928471, 28.964994, 45.758095>,  <34.200211, 28.930716, 45.465603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928471, 28.964994, 45.758095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706852, 29.211592, 45.981869>,  <34.573879, 29.359550, 46.116135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706852, 29.211592, 45.981869>,  <34.928471, 28.964994, 45.758095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706852, 29.211592, 45.981869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451452, -0.342110, 0.824106,
		0.699446, 0.709151, -0.088773,
		-0.554045, 0.616495, 0.559436,
		34.540638, 29.396540, 46.149700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436695, 29.326124, 46.189213>,  <34.928471, 28.964994, 45.758095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436695, 29.326124, 46.189213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078022, 29.334837, 46.366070>,  <34.862820, 29.340065, 46.472183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078022, 29.334837, 46.366070>,  <35.436695, 29.326124, 46.189213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078022, 29.334837, 46.366070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422405, -0.256689, 0.869301,
		0.132428, 0.966249, 0.220967,
		-0.896681, 0.021782, 0.442141,
		34.809017, 29.341372, 46.498711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609982, 29.635000, 46.811188>,  <35.436695, 29.326124, 46.189213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609982, 29.635000, 46.811188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257942, 29.468904, 46.903275>,  <35.046719, 29.369247, 46.958527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257942, 29.468904, 46.903275>,  <35.609982, 29.635000, 46.811188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257942, 29.468904, 46.903275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397634, -0.379690, 0.835298,
		-0.259439, 0.826687, 0.499279,
		-0.880101, -0.415239, 0.230212,
		34.993912, 29.344332, 46.972340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412315, 29.847467, 47.550434>,  <35.609982, 29.635000, 46.811188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412315, 29.847467, 47.550434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194866, 29.518227, 47.484726>,  <35.064396, 29.320683, 47.445301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194866, 29.518227, 47.484726>,  <35.412315, 29.847467, 47.550434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194866, 29.518227, 47.484726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387684, -0.419826, 0.820638,
		-0.744432, 0.382430, 0.547328,
		-0.543620, -0.823100, -0.164270,
		35.031780, 29.271297, 47.435444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963837, 29.811989, 48.133156>,  <35.412315, 29.847467, 47.550434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963837, 29.811989, 48.133156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016670, 29.445181, 47.982620>,  <35.048370, 29.225096, 47.892300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016670, 29.445181, 47.982620>,  <34.963837, 29.811989, 48.133156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016670, 29.445181, 47.982620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279087, -0.329900, 0.901818,
		-0.951138, -0.224150, 0.212352,
		0.132088, -0.917018, -0.376338,
		35.056297, 29.170074, 47.869720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635399, 29.358553, 48.620705>,  <34.963837, 29.811989, 48.133156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635399, 29.358553, 48.620705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843765, 29.111238, 48.385292>,  <34.968784, 28.962851, 48.244045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843765, 29.111238, 48.385292>,  <34.635399, 29.358553, 48.620705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843765, 29.111238, 48.385292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144438, -0.615675, 0.774650,
		-0.841297, -0.488535, -0.231412,
		0.520919, -0.618286, -0.588529,
		35.000042, 28.925753, 48.208733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285316, 28.680063, 48.724281>,  <34.635399, 29.358553, 48.620705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285316, 28.680063, 48.724281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661358, 28.654203, 48.590401>,  <34.886982, 28.638687, 48.510075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661358, 28.654203, 48.590401>,  <34.285316, 28.680063, 48.724281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661358, 28.654203, 48.590401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220748, -0.632716, 0.742254,
		-0.259754, -0.771681, -0.580549,
		0.940105, -0.064649, -0.334698,
		34.943390, 28.634809, 48.489990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366127, 28.026358, 49.021252>,  <34.285316, 28.680063, 48.724281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366127, 28.026358, 49.021252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721573, 28.175205, 48.914005>,  <34.934841, 28.264513, 48.849659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721573, 28.175205, 48.914005>,  <34.366127, 28.026358, 49.021252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721573, 28.175205, 48.914005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457950, -0.687702, 0.563336,
		0.025246, -0.623373, -0.781517,
		0.888619, 0.372118, -0.268112,
		34.988159, 28.286840, 48.833572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822140, 27.443003, 49.073349>,  <34.366127, 28.026358, 49.021252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822140, 27.443003, 49.073349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073505, 27.751928, 49.036182>,  <35.224323, 27.937283, 49.013882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073505, 27.751928, 49.036182>,  <34.822140, 27.443003, 49.073349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073505, 27.751928, 49.036182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685593, -0.493458, 0.535222,
		0.367509, -0.400041, -0.839586,
		0.628411, 0.772312, -0.092916,
		35.262028, 27.983622, 49.008308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386047, 27.095789, 49.124641>,  <34.822140, 27.443003, 49.073349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386047, 27.095789, 49.124641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501350, 27.474751, 49.180264>,  <35.570534, 27.702127, 49.213634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501350, 27.474751, 49.180264>,  <35.386047, 27.095789, 49.124641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501350, 27.474751, 49.180264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778758, -0.316450, 0.541660,
		0.557173, -0.047851, -0.829016,
		0.288261, 0.947402, 0.139053,
		35.587830, 27.758970, 49.221981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114807, 27.179193, 48.919697>,  <35.386047, 27.095789, 49.124641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114807, 27.179193, 48.919697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003754, 27.434355, 49.207027>,  <35.937122, 27.587452, 49.379425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003754, 27.434355, 49.207027>,  <36.114807, 27.179193, 48.919697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003754, 27.434355, 49.207027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705661, -0.371970, 0.603060,
		0.651892, 0.674326, -0.346873,
		-0.277632, 0.637905, 0.718330,
		35.920464, 27.625727, 49.422527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751675, 27.519100, 49.163265>,  <36.114807, 27.179193, 48.919697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751675, 27.519100, 49.163265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497044, 27.594791, 49.462322>,  <36.344265, 27.640205, 49.641758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497044, 27.594791, 49.462322>,  <36.751675, 27.519100, 49.163265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497044, 27.594791, 49.462322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694918, -0.279683, 0.662470,
		0.334459, 0.941260, 0.046542,
		-0.636574, 0.189227, 0.747641,
		36.306072, 27.651560, 49.686615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173031, 27.851492, 49.767242>,  <36.751675, 27.519100, 49.163265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173031, 27.851492, 49.767242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833488, 27.704361, 49.919113>,  <36.629765, 27.616083, 50.010235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833488, 27.704361, 49.919113>,  <37.173031, 27.851492, 49.767242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833488, 27.704361, 49.919113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512241, -0.394883, 0.762677,
		-0.130605, 0.841886, 0.523613,
		-0.848853, -0.367825, 0.379675,
		36.578831, 27.594013, 50.033016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379604, 27.910498, 50.436920>,  <37.173031, 27.851492, 49.767242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379604, 27.910498, 50.436920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049248, 27.685959, 50.458027>,  <36.851032, 27.551235, 50.470692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049248, 27.685959, 50.458027>,  <37.379604, 27.910498, 50.436920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049248, 27.685959, 50.458027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392097, -0.504570, 0.769201,
		-0.405164, 0.655970, 0.636825,
		-0.825895, -0.561349, 0.052770,
		36.801479, 27.517553, 50.473858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122261, 27.916245, 51.130474>,  <37.379604, 27.910498, 50.436920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122261, 27.916245, 51.130474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966915, 27.578951, 50.981812>,  <36.873707, 27.376574, 50.892612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966915, 27.578951, 50.981812>,  <37.122261, 27.916245, 51.130474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966915, 27.578951, 50.981812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305386, -0.498296, 0.811444,
		-0.869434, 0.201634, 0.451030,
		-0.388361, -0.843235, -0.371659,
		36.850407, 27.325981, 50.870316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709003, 27.658833, 51.637379>,  <37.122261, 27.916245, 51.130474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709003, 27.658833, 51.637379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830708, 27.362717, 51.397579>,  <36.903728, 27.185047, 51.253700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830708, 27.362717, 51.397579>,  <36.709003, 27.658833, 51.637379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830708, 27.362717, 51.397579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419650, -0.460816, 0.782012,
		-0.855174, -0.489513, 0.170455,
		0.304257, -0.740287, -0.599502,
		36.921986, 27.140631, 51.217728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474674, 27.090803, 51.965584>,  <36.709003, 27.658833, 51.637379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474674, 27.090803, 51.965584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781342, 26.983734, 51.732151>,  <36.965343, 26.919493, 51.592091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781342, 26.983734, 51.732151>,  <36.474674, 27.090803, 51.965584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781342, 26.983734, 51.732151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464571, -0.396115, 0.792002,
		-0.443165, -0.878319, -0.179334,
		0.766667, -0.267674, -0.583586,
		37.011341, 26.903433, 51.557076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321384, 26.721304, 52.616982>,  <36.474674, 27.090803, 51.965584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321384, 26.721304, 52.616982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502827, 27.054392, 52.489975>,  <36.611694, 27.254244, 52.413769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502827, 27.054392, 52.489975>,  <36.321384, 26.721304, 52.616982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502827, 27.054392, 52.489975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734370, -0.147401, 0.662550,
		0.504915, -0.533716, -0.678386,
		0.453609, 0.832718, -0.317521,
		36.638908, 27.304207, 52.394718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958145, 26.464128, 52.344967>,  <36.321384, 26.721304, 52.616982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958145, 26.464128, 52.344967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999943, 26.835241, 52.488243>,  <37.025021, 27.057909, 52.574207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999943, 26.835241, 52.488243>,  <36.958145, 26.464128, 52.344967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999943, 26.835241, 52.488243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725241, -0.317529, 0.610901,
		0.680519, 0.195940, -0.706046,
		0.104490, 0.927784, 0.358188,
		37.031288, 27.113577, 52.595699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395855, 26.034546, 52.655891>,  <36.958145, 26.464128, 52.344967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395855, 26.034546, 52.655891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567245, 25.694918, 52.532288>,  <37.670078, 25.491140, 52.458126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567245, 25.694918, 52.532288>,  <37.395855, 26.034546, 52.655891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567245, 25.694918, 52.532288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265817, 0.208406, -0.941227,
		0.863569, 0.485431, -0.136401,
		0.428474, -0.849072, -0.309008,
		37.695789, 25.440195, 52.439587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679932, 26.157663, 51.974968>,  <37.395855, 26.034546, 52.655891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679932, 26.157663, 51.974968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667648, 25.758883, 52.003654>,  <37.660278, 25.519613, 52.020866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667648, 25.758883, 52.003654>,  <37.679932, 26.157663, 51.974968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667648, 25.758883, 52.003654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289543, -0.059799, -0.955295,
		0.956672, -0.050102, -0.286824,
		-0.030710, -0.996952, 0.071714,
		37.658436, 25.459797, 52.025169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036221, 25.961016, 51.363720>,  <37.679932, 26.157663, 51.974968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036221, 25.961016, 51.363720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828537, 25.651697, 51.509285>,  <37.703926, 25.466106, 51.596626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828537, 25.651697, 51.509285>,  <38.036221, 25.961016, 51.363720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828537, 25.651697, 51.509285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164086, -0.327690, -0.930427,
		0.838747, -0.542801, 0.043253,
		-0.519211, -0.773295, 0.363915,
		37.672775, 25.419708, 51.618458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273582, 25.389002, 51.097126>,  <38.036221, 25.961016, 51.363720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273582, 25.389002, 51.097126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903683, 25.276474, 51.199657>,  <37.681744, 25.208958, 51.261177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903683, 25.276474, 51.199657>,  <38.273582, 25.389002, 51.097126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903683, 25.276474, 51.199657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072640, -0.530661, -0.844465,
		0.373587, -0.799536, 0.470292,
		-0.924746, -0.281319, 0.256326,
		37.626259, 25.192078, 51.276554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112034, 24.668114, 51.005569>,  <38.273582, 25.389002, 51.097126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112034, 24.668114, 51.005569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748760, 24.835091, 50.993229>,  <37.530796, 24.935276, 50.985825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748760, 24.835091, 50.993229>,  <38.112034, 24.668114, 51.005569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748760, 24.835091, 50.993229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148952, -0.391182, -0.908179,
		-0.391182, -0.820194, 0.417442,
		0.908179, -0.417442, 0.030854,
		37.476307, 24.960323, 50.983974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792076, 24.195616, 50.672520>,  <38.112034, 24.668114, 51.005569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792076, 24.195616, 50.672520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569717, 24.526398, 50.638748>,  <37.436302, 24.724867, 50.618484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569717, 24.526398, 50.638748>,  <37.792076, 24.195616, 50.672520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569717, 24.526398, 50.638748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281916, -0.283100, -0.916721,
		-0.781988, -0.485799, 0.390506,
		-0.555894, 0.826955, -0.084426,
		37.402950, 24.774485, 50.613419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633598, 24.028381, 50.043148>,  <37.792076, 24.195616, 50.672520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633598, 24.028381, 50.043148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438675, 24.360718, 50.150654>,  <37.321720, 24.560120, 50.215157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438675, 24.360718, 50.150654>,  <37.633598, 24.028381, 50.043148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438675, 24.360718, 50.150654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287725, 0.137819, -0.947745,
		-0.824464, -0.539177, 0.171892,
		-0.487312, 0.830840, 0.268762,
		37.292480, 24.609970, 50.231281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954746, 23.935272, 49.793568>,  <37.633598, 24.028381, 50.043148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954746, 23.935272, 49.793568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068504, 24.318007, 49.817528>,  <37.136761, 24.547647, 49.831905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068504, 24.318007, 49.817528>,  <36.954746, 23.935272, 49.793568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068504, 24.318007, 49.817528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287766, 0.144796, -0.946691,
		-0.914500, 0.251998, 0.316524,
		0.284396, 0.956834, 0.059900,
		37.153824, 24.605057, 49.835499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573452, 24.271767, 49.321495>,  <36.954746, 23.935272, 49.793568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573452, 24.271767, 49.321495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845951, 24.561106, 49.366524>,  <37.009449, 24.734709, 49.393539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845951, 24.561106, 49.366524>,  <36.573452, 24.271767, 49.321495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845951, 24.561106, 49.366524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042453, 0.192555, -0.980367,
		-0.730822, 0.663093, 0.161886,
		0.681247, 0.723347, 0.112573,
		37.050323, 24.778111, 49.400295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279469, 24.792574, 48.981632>,  <36.573452, 24.271767, 49.321495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279469, 24.792574, 48.981632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671726, 24.869509, 48.996334>,  <36.907082, 24.915668, 49.005154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671726, 24.869509, 48.996334>,  <36.279469, 24.792574, 48.981632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671726, 24.869509, 48.996334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005068, 0.212547, -0.977138,
		-0.195750, 0.958035, 0.209407,
		0.980641, 0.192336, 0.036750,
		36.965919, 24.927210, 49.007359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347111, 25.532356, 48.681313>,  <36.279469, 24.792574, 48.981632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347111, 25.532356, 48.681313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696808, 25.338257, 48.675117>,  <36.906624, 25.221798, 48.671398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696808, 25.338257, 48.675117>,  <36.347111, 25.532356, 48.681313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696808, 25.338257, 48.675117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196449, 0.382750, -0.902724,
		0.443974, 0.786154, 0.429942,
		0.874240, -0.485247, -0.015492,
		36.959080, 25.192682, 48.670471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883648, 26.119488, 48.654152>,  <36.347111, 25.532356, 48.681313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883648, 26.119488, 48.654152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012890, 25.775541, 48.496044>,  <37.090435, 25.569174, 48.401180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012890, 25.775541, 48.496044>,  <36.883648, 26.119488, 48.654152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012890, 25.775541, 48.496044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142295, 0.457066, -0.877977,
		0.935605, 0.227432, 0.270034,
		0.323103, -0.859864, -0.395271,
		37.109821, 25.517582, 48.377464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499878, 26.245037, 48.260761>,  <36.883648, 26.119488, 48.654152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499878, 26.245037, 48.260761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353497, 25.897806, 48.126587>,  <37.265667, 25.689468, 48.046082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353497, 25.897806, 48.126587>,  <37.499878, 26.245037, 48.260761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353497, 25.897806, 48.126587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095409, 0.323542, -0.941391,
		0.925728, -0.376513, -0.035580,
		-0.365958, -0.868077, -0.335435,
		37.243710, 25.637383, 48.025955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993996, 26.121262, 47.774418>,  <37.499878, 26.245037, 48.260761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993996, 26.121262, 47.774418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661743, 25.912251, 47.697468>,  <37.462391, 25.786844, 47.651299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661743, 25.912251, 47.697468>,  <37.993996, 26.121262, 47.774418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661743, 25.912251, 47.697468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019315, 0.318248, -0.947811,
		0.556484, -0.791000, -0.254255,
		-0.830634, -0.522530, -0.192378,
		37.412552, 25.755491, 47.639755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145199, 25.909525, 47.183903>,  <37.993996, 26.121262, 47.774418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145199, 25.909525, 47.183903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747189, 25.888264, 47.217621>,  <37.508385, 25.875507, 47.237850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747189, 25.888264, 47.217621>,  <38.145199, 25.909525, 47.183903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747189, 25.888264, 47.217621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098704, 0.409127, -0.907123,
		0.013729, -0.910928, -0.412337,
		-0.995022, -0.053153, 0.084295,
		37.448681, 25.872318, 47.242908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891308, 25.739115, 46.474728>,  <38.145199, 25.909525, 47.183903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891308, 25.739115, 46.474728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557964, 25.871937, 46.651478>,  <37.357960, 25.951630, 46.757526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557964, 25.871937, 46.651478>,  <37.891308, 25.739115, 46.474728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557964, 25.871937, 46.651478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205835, 0.555500, -0.805637,
		-0.512977, -0.762338, -0.394582,
		-0.833358, 0.332055, 0.441874,
		37.307957, 25.971554, 46.784039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276680, 25.560951, 46.035820>,  <37.891308, 25.739115, 46.474728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276680, 25.560951, 46.035820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180462, 25.880939, 46.255707>,  <37.122730, 26.072933, 46.387638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180462, 25.880939, 46.255707>,  <37.276680, 25.560951, 46.035820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180462, 25.880939, 46.255707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236411, 0.501003, -0.832530,
		-0.941408, -0.330218, 0.068609,
		-0.240543, 0.799970, 0.549715,
		37.108299, 26.120930, 46.420620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755524, 25.779829, 45.688202>,  <37.276680, 25.560951, 46.035820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755524, 25.779829, 45.688202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842854, 26.099857, 45.911709>,  <36.895252, 26.291874, 46.045815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842854, 26.099857, 45.911709>,  <36.755524, 25.779829, 45.688202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842854, 26.099857, 45.911709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334607, 0.599245, -0.727285,
		-0.916718, -0.028181, 0.398541,
		0.218328, 0.800070, 0.558768,
		36.908352, 26.339878, 46.079338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362988, 26.306030, 45.417171>,  <36.755524, 25.779829, 45.688202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362988, 26.306030, 45.417171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577511, 26.547199, 45.653427>,  <36.706223, 26.691900, 45.795181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577511, 26.547199, 45.653427>,  <36.362988, 26.306030, 45.417171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577511, 26.547199, 45.653427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036559, 0.715731, -0.697418,
		-0.843233, 0.352435, 0.405892,
		0.536304, 0.602925, 0.590643,
		36.738403, 26.728077, 45.830620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003819, 26.888891, 45.504261>,  <36.362988, 26.306030, 45.417171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003819, 26.888891, 45.504261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391056, 26.985455, 45.531128>,  <36.623398, 27.043392, 45.547249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391056, 26.985455, 45.531128>,  <36.003819, 26.888891, 45.504261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391056, 26.985455, 45.531128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112058, 0.656842, -0.745655,
		-0.224123, 0.714340, 0.662938,
		0.968097, 0.241406, 0.067165,
		36.681484, 27.057877, 45.551277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981171, 27.470640, 45.267483>,  <36.003819, 26.888891, 45.504261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981171, 27.470640, 45.267483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377590, 27.417524, 45.272968>,  <36.615440, 27.385654, 45.276260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377590, 27.417524, 45.272968>,  <35.981171, 27.470640, 45.267483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377590, 27.417524, 45.272968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107209, 0.730460, -0.674489,
		0.079545, 0.669922, 0.738158,
		0.991049, -0.132790, 0.013717,
		36.674904, 27.377687, 45.277084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257141, 28.062286, 45.583496>,  <35.981171, 27.470640, 45.267483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257141, 28.062286, 45.583496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506706, 27.875160, 45.333092>,  <36.656445, 27.762884, 45.182850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506706, 27.875160, 45.333092>,  <36.257141, 28.062286, 45.583496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506706, 27.875160, 45.333092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039593, 0.818930, -0.572527,
		0.780492, 0.332420, 0.529461,
		0.623910, -0.467816, -0.626007,
		36.693878, 27.734816, 45.145290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817310, 28.499449, 45.411308>,  <36.257141, 28.062286, 45.583496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817310, 28.499449, 45.411308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795124, 28.236359, 45.110825>,  <36.781811, 28.078505, 44.930534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795124, 28.236359, 45.110825>,  <36.817310, 28.499449, 45.411308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795124, 28.236359, 45.110825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052720, 0.753251, -0.655617,
		0.997068, 0.003238, -0.076457,
		-0.055468, -0.657725, -0.751213,
		36.778484, 28.039042, 44.885460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300362, 28.798431, 44.804665>,  <36.817310, 28.499449, 45.411308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300362, 28.798431, 44.804665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048378, 28.543797, 44.626717>,  <36.897190, 28.391016, 44.519947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048378, 28.543797, 44.626717>,  <37.300362, 28.798431, 44.804665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048378, 28.543797, 44.626717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007102, 0.568078, -0.822944,
		0.776599, -0.521577, -0.353343,
		-0.629956, -0.636588, -0.444874,
		36.859390, 28.352819, 44.493256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617073, 28.675238, 44.144581>,  <37.300362, 28.798431, 44.804665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617073, 28.675238, 44.144581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233234, 28.570995, 44.102142>,  <37.002930, 28.508450, 44.076679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233234, 28.570995, 44.102142>,  <37.617073, 28.675238, 44.144581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233234, 28.570995, 44.102142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018542, 0.434805, -0.900334,
		0.280761, -0.861992, -0.422070,
		-0.959599, -0.260605, -0.106093,
		36.945354, 28.492813, 44.070312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577160, 28.206905, 43.588276>,  <37.617073, 28.675238, 44.144581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577160, 28.206905, 43.588276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211452, 28.365303, 43.622448>,  <36.992027, 28.460340, 43.642952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211452, 28.365303, 43.622448>,  <37.577160, 28.206905, 43.588276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211452, 28.365303, 43.622448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000858, 0.208983, -0.977919,
		-0.405102, -0.894156, -0.190727,
		-0.914271, 0.395994, 0.085427,
		36.937172, 28.484100, 43.648075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307312, 28.107567, 42.953148>,  <37.577160, 28.206905, 43.588276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307312, 28.107567, 42.953148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032806, 28.362873, 43.092667>,  <36.868103, 28.516056, 43.176380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032806, 28.362873, 43.092667>,  <37.307312, 28.107567, 42.953148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032806, 28.362873, 43.092667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183562, 0.312047, -0.932165,
		-0.703810, -0.703737, -0.096985,
		-0.686263, 0.638265, 0.348801,
		36.826927, 28.554352, 43.197308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894859, 28.089436, 42.395317>,  <37.307312, 28.107567, 42.953148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894859, 28.089436, 42.395317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799374, 28.421822, 42.596317>,  <36.742081, 28.621254, 42.716919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799374, 28.421822, 42.596317>,  <36.894859, 28.089436, 42.395317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799374, 28.421822, 42.596317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476528, 0.350639, -0.806209,
		-0.846130, -0.431914, 0.312274,
		-0.238717, 0.830965, 0.502505,
		36.727760, 28.671110, 42.747070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101784, 28.215307, 42.287415>,  <36.894859, 28.089436, 42.395317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101784, 28.215307, 42.287415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250828, 28.566402, 42.407906>,  <36.340256, 28.777060, 42.480202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250828, 28.566402, 42.407906>,  <36.101784, 28.215307, 42.287415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250828, 28.566402, 42.407906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513910, 0.465457, -0.720587,
		-0.772694, 0.113697, 0.624513,
		0.372613, 0.877737, 0.301226,
		36.362610, 28.829723, 42.498272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466862, 28.666471, 42.488251>,  <36.101784, 28.215307, 42.287415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466862, 28.666471, 42.488251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785431, 28.889345, 42.394226>,  <35.976574, 29.023069, 42.337811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785431, 28.889345, 42.394226>,  <35.466862, 28.666471, 42.488251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785431, 28.889345, 42.394226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558791, 0.529426, -0.638326,
		-0.231216, 0.639730, 0.732997,
		0.796424, 0.557183, -0.235064,
		36.024357, 29.056499, 42.323708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110687, 29.195675, 42.265770>,  <35.466862, 28.666471, 42.488251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110687, 29.195675, 42.265770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484608, 29.311945, 42.184128>,  <35.708961, 29.381706, 42.135143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484608, 29.311945, 42.184128>,  <35.110687, 29.195675, 42.265770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484608, 29.311945, 42.184128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351700, 0.677374, -0.646121,
		-0.049558, 0.675776, 0.735439,
		0.934800, 0.290674, -0.204101,
		35.765049, 29.399147, 42.122898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154545, 29.881252, 42.364948>,  <35.110687, 29.195675, 42.265770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154545, 29.881252, 42.364948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434517, 29.793339, 42.093128>,  <35.602501, 29.740591, 41.930035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434517, 29.793339, 42.093128>,  <35.154545, 29.881252, 42.364948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434517, 29.793339, 42.093128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513505, 0.506442, -0.692697,
		0.496398, 0.833794, 0.241613,
		0.699930, -0.219784, -0.679554,
		35.644497, 29.727404, 41.889263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356411, 30.464861, 42.084312>,  <35.154545, 29.881252, 42.364948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356411, 30.464861, 42.084312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490917, 30.204073, 41.812469>,  <35.571621, 30.047600, 41.649364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490917, 30.204073, 41.812469>,  <35.356411, 30.464861, 42.084312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490917, 30.204073, 41.812469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464521, 0.512914, -0.721900,
		0.819237, 0.558437, -0.130381,
		0.336262, -0.651972, -0.679603,
		35.591797, 30.008482, 41.608589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742207, 30.865290, 41.589993>,  <35.356411, 30.464861, 42.084312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742207, 30.865290, 41.589993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608219, 30.520870, 41.436943>,  <35.527828, 30.314219, 41.345116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608219, 30.520870, 41.436943>,  <35.742207, 30.865290, 41.589993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608219, 30.520870, 41.436943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301480, 0.482672, -0.822276,
		0.892698, -0.160081, -0.421266,
		-0.334964, -0.861047, -0.382619,
		35.507729, 30.262556, 41.322159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850117, 30.935347, 40.821144>,  <35.742207, 30.865290, 41.589993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850117, 30.935347, 40.821144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599850, 30.626873, 40.868168>,  <35.449692, 30.441790, 40.896381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599850, 30.626873, 40.868168>,  <35.850117, 30.935347, 40.821144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599850, 30.626873, 40.868168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480282, 0.262049, -0.837054,
		0.614715, -0.580177, -0.534340,
		-0.625663, -0.771184, 0.117563,
		35.412151, 30.395517, 40.903439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875671, 30.662865, 40.167873>,  <35.850117, 30.935347, 40.821144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875671, 30.662865, 40.167873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542583, 30.541525, 40.353157>,  <35.342731, 30.468721, 40.464329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542583, 30.541525, 40.353157>,  <35.875671, 30.662865, 40.167873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542583, 30.541525, 40.353157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549417, 0.348849, -0.759240,
		0.068725, -0.886726, -0.457158,
		-0.832717, -0.303349, 0.463207,
		35.292767, 30.450521, 40.492119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451412, 30.326649, 39.647350>,  <35.875671, 30.662865, 40.167873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451412, 30.326649, 39.647350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203201, 30.375217, 39.957241>,  <35.054276, 30.404360, 40.143177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203201, 30.375217, 39.957241>,  <35.451412, 30.326649, 39.647350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203201, 30.375217, 39.957241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765669, 0.119610, -0.632016,
		-0.169409, -0.985368, 0.018751,
		-0.620525, 0.121426, 0.774729,
		35.017044, 30.411644, 40.189659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850079, 29.800993, 39.552517>,  <35.451412, 30.326649, 39.647350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850079, 29.800993, 39.552517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740959, 30.095467, 39.800262>,  <34.675488, 30.272150, 39.948910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740959, 30.095467, 39.800262>,  <34.850079, 29.800993, 39.552517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740959, 30.095467, 39.800262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839035, 0.132951, -0.527584,
		-0.470744, -0.663594, 0.581415,
		-0.272802, 0.736184, 0.619364,
		34.659119, 30.316322, 39.986073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164867, 29.628302, 39.852928>,  <34.850079, 29.800993, 39.552517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164867, 29.628302, 39.852928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174034, 30.022104, 39.922462>,  <34.179535, 30.258387, 39.964184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174034, 30.022104, 39.922462>,  <34.164867, 29.628302, 39.852928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174034, 30.022104, 39.922462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831875, 0.115221, -0.542871,
		-0.554490, -0.132163, 0.821629,
		0.022921, 0.984509, 0.173832,
		34.180912, 30.317457, 39.974613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396484, 29.859823, 39.950443>,  <34.164867, 29.628302, 39.852928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396484, 29.859823, 39.950443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608719, 30.189257, 39.870251>,  <33.736057, 30.386917, 39.822136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608719, 30.189257, 39.870251>,  <33.396484, 29.859823, 39.950443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608719, 30.189257, 39.870251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653280, 0.246614, -0.715826,
		-0.540099, 0.510777, 0.668879,
		0.530582, 0.823583, -0.200484,
		33.767895, 30.436331, 39.810104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925934, 30.465899, 39.814430>,  <33.396484, 29.859823, 39.950443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925934, 30.465899, 39.814430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270020, 30.588348, 39.651302>,  <33.476471, 30.661818, 39.553425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270020, 30.588348, 39.651302>,  <32.925934, 30.465899, 39.814430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270020, 30.588348, 39.651302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502755, 0.375418, -0.778652,
		-0.085260, 0.874842, 0.476845,
		0.860214, 0.306124, -0.407823,
		33.528084, 30.680185, 39.528954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782719, 31.201256, 39.747280>,  <32.925934, 30.465899, 39.814430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782719, 31.201256, 39.747280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056931, 31.083063, 39.481125>,  <33.221458, 31.012148, 39.321430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056931, 31.083063, 39.481125>,  <32.782719, 31.201256, 39.747280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056931, 31.083063, 39.481125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587054, 0.316206, -0.745239,
		0.430605, 0.901501, 0.043304,
		0.685527, -0.295482, -0.665389,
		33.262589, 30.994419, 39.281509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806519, 31.705225, 39.334187>,  <32.782719, 31.201256, 39.747280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806519, 31.705225, 39.334187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936127, 31.403521, 39.105766>,  <33.013889, 31.222498, 38.968712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936127, 31.403521, 39.105766>,  <32.806519, 31.705225, 39.334187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936127, 31.403521, 39.105766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564730, 0.330070, -0.756395,
		0.759008, 0.567575, -0.319008,
		0.324016, -0.754263, -0.571052,
		33.033333, 31.177242, 38.934452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755241, 31.895502, 38.696934>,  <32.806519, 31.705225, 39.334187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755241, 31.895502, 38.696934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764729, 31.501234, 38.630131>,  <32.770420, 31.264673, 38.590050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764729, 31.501234, 38.630131>,  <32.755241, 31.895502, 38.696934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764729, 31.501234, 38.630131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543766, 0.127462, -0.829501,
		0.838902, 0.110486, -0.532952,
		0.023717, -0.985671, -0.167007,
		32.771843, 31.205532, 38.580029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832134, 31.867340, 38.003601>,  <32.755241, 31.895502, 38.696934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832134, 31.867340, 38.003601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736153, 31.488667, 38.089588>,  <32.678566, 31.261461, 38.141182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736153, 31.488667, 38.089588>,  <32.832134, 31.867340, 38.003601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736153, 31.488667, 38.089588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604825, -0.027426, -0.795886,
		0.759349, -0.320992, -0.565997,
		-0.239950, -0.946685, 0.214970,
		32.664169, 31.204660, 38.154079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984646, 31.419489, 37.423969>,  <32.832134, 31.867340, 38.003601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984646, 31.419489, 37.423969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701462, 31.260641, 37.657581>,  <32.531551, 31.165333, 37.797749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701462, 31.260641, 37.657581>,  <32.984646, 31.419489, 37.423969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701462, 31.260641, 37.657581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575446, -0.155079, -0.803002,
		0.409459, -0.904569, -0.118733,
		-0.707958, -0.397121, 0.584029,
		32.489075, 31.141504, 37.832790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814949, 30.842661, 37.095249>,  <32.984646, 31.419489, 37.423969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814949, 30.842661, 37.095249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494312, 30.935705, 37.315556>,  <32.301929, 30.991531, 37.447739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494312, 30.935705, 37.315556>,  <32.814949, 30.842661, 37.095249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494312, 30.935705, 37.315556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579486, -0.075614, -0.811467,
		-0.147112, -0.969626, 0.195407,
		-0.801594, 0.232613, 0.550761,
		32.253834, 31.005487, 37.480785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553654, 30.729776, 37.235279>,  <32.814949, 30.842661, 37.095249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553654, 30.729776, 37.235279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841278, 30.563896, 37.012218>,  <34.013855, 30.464369, 36.878384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841278, 30.563896, 37.012218>,  <33.553654, 30.729776, 37.235279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841278, 30.563896, 37.012218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484888, -0.275435, 0.830072,
		-0.497827, -0.867271, 0.003029,
		0.719063, -0.414701, -0.557649,
		34.056995, 30.439486, 36.844925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704372, 29.952997, 37.444931>,  <33.553654, 30.729776, 37.235279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704372, 29.952997, 37.444931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034500, 30.085331, 37.261890>,  <34.232578, 30.164732, 37.152065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034500, 30.085331, 37.261890>,  <33.704372, 29.952997, 37.444931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034500, 30.085331, 37.261890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555807, -0.618953, 0.554956,
		-0.099633, -0.712352, -0.694714,
		0.825319, 0.330835, -0.457598,
		34.282097, 30.184582, 37.124611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949627, 29.433771, 37.231693>,  <33.704372, 29.952997, 37.444931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949627, 29.433771, 37.231693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261326, 29.683372, 37.255005>,  <34.448345, 29.833134, 37.268993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261326, 29.683372, 37.255005>,  <33.949627, 29.433771, 37.231693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261326, 29.683372, 37.255005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509025, -0.684413, 0.521990,
		0.365610, -0.377092, -0.850959,
		0.779245, 0.624004, 0.058279,
		34.495098, 29.870573, 37.272488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560226, 29.120441, 37.006569>,  <33.949627, 29.433771, 37.231693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560226, 29.120441, 37.006569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739399, 29.399664, 37.230022>,  <34.846905, 29.567198, 37.364094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739399, 29.399664, 37.230022>,  <34.560226, 29.120441, 37.006569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739399, 29.399664, 37.230022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681275, -0.671121, 0.292339,
		0.578981, 0.249636, -0.776185,
		0.447936, 0.698054, 0.558636,
		34.873779, 29.609079, 37.397614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410332, 29.100986, 36.802017>,  <34.560226, 29.120441, 37.006569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410332, 29.100986, 36.802017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337673, 29.268930, 37.157707>,  <35.294079, 29.369696, 37.371120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337673, 29.268930, 37.157707>,  <35.410332, 29.100986, 36.802017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337673, 29.268930, 37.157707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692279, -0.587622, 0.418868,
		0.698394, 0.691678, -0.183919,
		-0.181647, 0.419859, 0.889226,
		35.283180, 29.394888, 37.424477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086887, 29.229025, 37.194439>,  <35.410332, 29.100986, 36.802017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086887, 29.229025, 37.194439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819347, 29.250465, 37.491024>,  <35.658821, 29.263329, 37.668976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819347, 29.250465, 37.491024>,  <36.086887, 29.229025, 37.194439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819347, 29.250465, 37.491024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612955, -0.524575, 0.590853,
		0.420621, 0.849675, 0.318010,
		-0.668853, 0.053600, 0.741460,
		35.618690, 29.266546, 37.713463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385712, 29.631712, 37.873871>,  <36.086887, 29.229025, 37.194439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385712, 29.631712, 37.873871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088814, 29.380768, 37.968102>,  <35.910675, 29.230202, 38.024639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088814, 29.380768, 37.968102>,  <36.385712, 29.631712, 37.873871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088814, 29.380768, 37.968102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589708, -0.444500, 0.674288,
		-0.318309, 0.639405, 0.699886,
		-0.742242, -0.627360, 0.235574,
		35.866142, 29.192560, 38.038773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445133, 29.645010, 38.568954>,  <36.385712, 29.631712, 37.873871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445133, 29.645010, 38.568954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219875, 29.315207, 38.546837>,  <36.084721, 29.117325, 38.533566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219875, 29.315207, 38.546837>,  <36.445133, 29.645010, 38.568954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219875, 29.315207, 38.546837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447740, -0.360679, 0.818193,
		-0.694549, 0.436003, 0.572278,
		-0.563143, -0.824507, -0.055293,
		36.050934, 29.067854, 38.530251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130917, 29.566896, 39.184334>,  <36.445133, 29.645010, 38.568954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130917, 29.566896, 39.184334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145771, 29.196772, 39.033382>,  <36.154682, 28.974697, 38.942810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145771, 29.196772, 39.033382>,  <36.130917, 29.566896, 39.184334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145771, 29.196772, 39.033382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252653, -0.356680, 0.899414,
		-0.966844, -0.128744, 0.220539,
		0.037132, -0.925313, -0.377382,
		36.156910, 28.919178, 38.920166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926613, 29.054569, 39.736717>,  <36.130917, 29.566896, 39.184334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926613, 29.054569, 39.736717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059891, 28.795506, 39.462631>,  <36.139858, 28.640066, 39.298180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059891, 28.795506, 39.462631>,  <35.926613, 29.054569, 39.736717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059891, 28.795506, 39.462631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331279, -0.599989, 0.728195,
		-0.882744, -0.469626, 0.014644,
		0.333193, -0.647661, -0.685214,
		36.159847, 28.601208, 39.257069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635952, 28.347267, 39.891373>,  <35.926613, 29.054569, 39.736717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635952, 28.347267, 39.891373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961967, 28.289740, 39.666866>,  <36.157578, 28.255222, 39.532162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961967, 28.289740, 39.666866>,  <35.635952, 28.347267, 39.891373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961967, 28.289740, 39.666866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320661, -0.694860, 0.643697,
		-0.482578, -0.704617, -0.520224,
		0.815043, -0.143818, -0.561267,
		36.206482, 28.246593, 39.498486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791119, 27.667051, 39.880459>,  <35.635952, 28.347267, 39.891373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791119, 27.667051, 39.880459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141079, 27.799423, 39.739017>,  <36.351055, 27.878845, 39.654152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141079, 27.799423, 39.739017>,  <35.791119, 27.667051, 39.880459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141079, 27.799423, 39.739017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475217, -0.727360, 0.495092,
		-0.093354, -0.601193, -0.793632,
		0.874902, 0.330928, -0.353599,
		36.403549, 27.898701, 39.632938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153675, 26.997715, 39.614639>,  <35.791119, 27.667051, 39.880459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153675, 26.997715, 39.614639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427937, 27.279491, 39.688000>,  <36.592495, 27.448557, 39.732018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427937, 27.279491, 39.688000>,  <36.153675, 26.997715, 39.614639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427937, 27.279491, 39.688000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581654, -0.681693, 0.443817,
		0.437667, -0.197629, -0.877149,
		0.685658, 0.704441, 0.183403,
		36.633633, 27.490824, 39.743019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766674, 26.585812, 39.557358>,  <36.153675, 26.997715, 39.614639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766674, 26.585812, 39.557358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867096, 26.910582, 39.768166>,  <36.927349, 27.105444, 39.894650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867096, 26.910582, 39.768166>,  <36.766674, 26.585812, 39.557358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867096, 26.910582, 39.768166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595999, -0.558671, 0.576777,
		0.762729, 0.169297, -0.624165,
		0.251056, 0.811927, 0.527016,
		36.942413, 27.154160, 39.926270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531559, 26.543888, 39.584694>,  <36.766674, 26.585812, 39.557358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531559, 26.543888, 39.584694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414360, 26.781580, 39.884304>,  <37.344040, 26.924196, 40.064072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414360, 26.781580, 39.884304>,  <37.531559, 26.543888, 39.584694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414360, 26.781580, 39.884304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470322, -0.592495, 0.654023,
		0.832437, 0.543910, -0.105882,
		-0.292996, 0.594231, 0.749028,
		37.326462, 26.959850, 40.109013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096298, 26.660477, 40.048553>,  <37.531559, 26.543888, 39.584694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096298, 26.660477, 40.048553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778809, 26.748339, 40.275448>,  <37.588314, 26.801056, 40.411583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778809, 26.748339, 40.275448>,  <38.096298, 26.660477, 40.048553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778809, 26.748339, 40.275448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473661, -0.361884, 0.802923,
		0.381639, 0.905976, 0.183194,
		-0.793724, 0.219655, 0.567234,
		37.540691, 26.814236, 40.445618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329586, 26.954283, 40.681114>,  <38.096298, 26.660477, 40.048553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329586, 26.954283, 40.681114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969826, 26.844969, 40.817581>,  <37.753971, 26.779381, 40.899460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969826, 26.844969, 40.817581>,  <38.329586, 26.954283, 40.681114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969826, 26.844969, 40.817581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373352, -0.074330, 0.924707,
		-0.227351, 0.959057, 0.168884,
		-0.899400, -0.273287, 0.341166,
		37.700005, 26.762983, 40.919930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258358, 27.276342, 41.269810>,  <38.329586, 26.954283, 40.681114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258358, 27.276342, 41.269810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024975, 26.954613, 41.314793>,  <37.884945, 26.761576, 41.341782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024975, 26.954613, 41.314793>,  <38.258358, 27.276342, 41.269810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024975, 26.954613, 41.314793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256344, -0.050997, 0.965239,
		-0.770628, 0.592001, 0.235938,
		-0.583455, -0.804322, 0.112456,
		37.849937, 26.713316, 41.348530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047752, 27.308950, 41.920593>,  <38.258358, 27.276342, 41.269810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047752, 27.308950, 41.920593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948524, 26.925201, 41.866825>,  <37.888988, 26.694952, 41.834564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948524, 26.925201, 41.866825>,  <38.047752, 27.308950, 41.920593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948524, 26.925201, 41.866825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315992, -0.211301, 0.924933,
		-0.915756, 0.186977, 0.355571,
		-0.248074, -0.959370, -0.134416,
		37.874104, 26.637390, 41.826500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747276, 27.105656, 42.555611>,  <38.047752, 27.308950, 41.920593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747276, 27.105656, 42.555611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857651, 26.774389, 42.360470>,  <37.923874, 26.575628, 42.243385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857651, 26.774389, 42.360470>,  <37.747276, 27.105656, 42.555611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857651, 26.774389, 42.360470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361934, -0.380673, 0.850936,
		-0.890430, -0.411370, 0.194702,
		0.275932, -0.828168, -0.487852,
		37.940430, 26.525938, 42.214115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418201, 26.525265, 42.932369>,  <37.747276, 27.105656, 42.555611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418201, 26.525265, 42.932369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734230, 26.393696, 42.725449>,  <37.923847, 26.314754, 42.601295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734230, 26.393696, 42.725449>,  <37.418201, 26.525265, 42.932369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734230, 26.393696, 42.725449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392257, -0.377228, 0.838948,
		-0.471088, -0.865742, -0.169015,
		0.790070, -0.328921, -0.517301,
		37.971252, 26.295019, 42.570259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587166, 25.989592, 43.319637>,  <37.418201, 26.525265, 42.932369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587166, 25.989592, 43.319637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916924, 26.074068, 43.109585>,  <38.114780, 26.124754, 42.983551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916924, 26.074068, 43.109585>,  <37.587166, 25.989592, 43.319637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916924, 26.074068, 43.109585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556501, -0.133077, 0.820120,
		0.103318, -0.968343, -0.227236,
		0.824398, 0.211191, -0.525135,
		38.164242, 26.137424, 42.952045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996269, 25.513824, 43.589668>,  <37.587166, 25.989592, 43.319637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996269, 25.513824, 43.589668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249626, 25.769062, 43.414558>,  <38.401642, 25.922205, 43.309494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249626, 25.769062, 43.414558>,  <37.996269, 25.513824, 43.589668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249626, 25.769062, 43.414558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538068, 0.043412, 0.841782,
		0.556142, -0.768733, -0.315842,
		0.633394, 0.638095, -0.437774,
		38.439644, 25.960491, 43.283226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594906, 25.333094, 43.895828>,  <37.996269, 25.513824, 43.589668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594906, 25.333094, 43.895828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682930, 25.693443, 43.746166>,  <38.735744, 25.909653, 43.656368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682930, 25.693443, 43.746166>,  <38.594906, 25.333094, 43.895828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682930, 25.693443, 43.746166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578459, 0.188331, 0.793673,
		0.785467, -0.391094, -0.479674,
		0.220064, 0.900876, -0.374159,
		38.748951, 25.963705, 43.633919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425785, 25.471485, 43.942120>,  <38.594906, 25.333094, 43.895828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425785, 25.471485, 43.942120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214676, 25.811012, 43.929707>,  <39.088009, 26.014729, 43.922256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214676, 25.811012, 43.929707>,  <39.425785, 25.471485, 43.942120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214676, 25.811012, 43.929707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435478, 0.301779, 0.848109,
		0.729257, 0.434093, -0.528912,
		-0.527773, 0.848818, -0.031036,
		39.056343, 26.065659, 43.920395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863529, 25.994822, 44.268730>,  <39.425785, 25.471485, 43.942120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863529, 25.994822, 44.268730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506660, 26.174938, 44.282932>,  <39.292538, 26.283009, 44.291454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506660, 26.174938, 44.282932>,  <39.863529, 25.994822, 44.268730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506660, 26.174938, 44.282932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288146, 0.506858, 0.812445,
		0.347842, 0.735073, -0.581956,
		-0.892176, 0.450291, 0.035502,
		39.239006, 26.310026, 44.293583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098480, 26.694174, 44.579903>,  <39.863529, 25.994822, 44.268730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098480, 26.694174, 44.579903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700897, 26.676636, 44.620144>,  <39.462345, 26.666113, 44.644287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700897, 26.676636, 44.620144>,  <40.098480, 26.694174, 44.579903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700897, 26.676636, 44.620144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071233, 0.439580, 0.895374,
		-0.083482, 0.897132, -0.433801,
		-0.993960, -0.043847, 0.100602,
		39.402710, 26.663481, 44.650326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783710, 27.369965, 44.810501>,  <40.098480, 26.694174, 44.579903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783710, 27.369965, 44.810501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551174, 27.062479, 44.917171>,  <39.411652, 26.877987, 44.981174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551174, 27.062479, 44.917171>,  <39.783710, 27.369965, 44.810501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551174, 27.062479, 44.917171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138229, 0.416294, 0.898661,
		-0.801831, 0.485568, -0.348268,
		-0.581343, -0.768715, 0.266678,
		39.376770, 26.831865, 44.997173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314327, 27.657005, 45.204353>,  <39.783710, 27.369965, 44.810501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314327, 27.657005, 45.204353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288876, 27.269888, 45.301785>,  <39.273605, 27.037619, 45.360245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288876, 27.269888, 45.301785>,  <39.314327, 27.657005, 45.204353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288876, 27.269888, 45.301785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147809, 0.250518, 0.956762,
		-0.986967, 0.024872, -0.158988,
		-0.063626, -0.967793, 0.243577,
		39.269787, 26.979549, 45.374859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831257, 27.674032, 45.840946>,  <39.314327, 27.657005, 45.204353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831257, 27.674032, 45.840946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016720, 27.320799, 45.869743>,  <39.127998, 27.108858, 45.887020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016720, 27.320799, 45.869743>,  <38.831257, 27.674032, 45.840946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016720, 27.320799, 45.869743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050615, 0.107520, 0.992914,
		-0.884568, -0.456728, 0.094550,
		0.463658, -0.883085, 0.071992,
		39.155819, 27.055874, 45.891342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552975, 27.335213, 46.504311>,  <38.831257, 27.674032, 45.840946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552975, 27.335213, 46.504311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897434, 27.153023, 46.414005>,  <39.104111, 27.043709, 46.359821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897434, 27.153023, 46.414005>,  <38.552975, 27.335213, 46.504311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897434, 27.153023, 46.414005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198989, -0.106657, 0.974181,
		-0.467796, -0.883836, -0.001213,
		0.861145, -0.455476, -0.225767,
		39.155777, 27.016380, 46.346275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532375, 26.708130, 46.885269>,  <38.552975, 27.335213, 46.504311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532375, 26.708130, 46.885269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918495, 26.784901, 46.814438>,  <39.150169, 26.830963, 46.771938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918495, 26.784901, 46.814438>,  <38.532375, 26.708130, 46.885269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918495, 26.784901, 46.814438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196777, -0.088822, 0.976417,
		0.171675, -0.977381, -0.123507,
		0.965301, 0.191930, -0.177078,
		39.208084, 26.842480, 46.761314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819687, 26.254833, 47.347744>,  <38.532375, 26.708130, 46.885269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819687, 26.254833, 47.347744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115570, 26.508970, 47.259041>,  <39.293098, 26.661453, 47.205818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115570, 26.508970, 47.259041>,  <38.819687, 26.254833, 47.347744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115570, 26.508970, 47.259041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273320, 0.017468, 0.961765,
		0.614924, -0.772032, -0.160731,
		0.739706, 0.635343, -0.221754,
		39.337482, 26.699574, 47.192516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399807, 25.906130, 47.660496>,  <38.819687, 26.254833, 47.347744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399807, 25.906130, 47.660496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521885, 26.283129, 47.606010>,  <39.595131, 26.509329, 47.573318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521885, 26.283129, 47.606010>,  <39.399807, 25.906130, 47.660496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521885, 26.283129, 47.606010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253575, 0.057443, 0.965609,
		0.917908, -0.329241, -0.221462,
		0.305197, 0.942497, -0.136215,
		39.613445, 26.565878, 47.565147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036610, 25.991156, 47.907658>,  <39.399807, 25.906130, 47.660496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036610, 25.991156, 47.907658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883194, 26.360296, 47.921787>,  <39.791145, 26.581779, 47.930267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883194, 26.360296, 47.921787>,  <40.036610, 25.991156, 47.907658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883194, 26.360296, 47.921787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110286, 0.007790, 0.993869,
		0.916917, 0.385082, -0.104765,
		-0.383537, 0.922849, 0.035326,
		39.768131, 26.637152, 47.932384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510063, 26.340296, 48.340103>,  <40.036610, 25.991156, 47.907658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510063, 26.340296, 48.340103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176655, 26.558821, 48.373058>,  <39.976612, 26.689936, 48.392830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176655, 26.558821, 48.373058>,  <40.510063, 26.340296, 48.340103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176655, 26.558821, 48.373058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215967, 0.184925, 0.958729,
		0.508532, 0.816911, -0.272124,
		-0.833519, 0.546314, 0.082386,
		39.926598, 26.722715, 48.397774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593098, 27.052706, 48.598816>,  <40.510063, 26.340296, 48.340103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593098, 27.052706, 48.598816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227161, 26.947227, 48.721146>,  <40.007599, 26.883942, 48.794544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227161, 26.947227, 48.721146>,  <40.593098, 27.052706, 48.598816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227161, 26.947227, 48.721146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198574, 0.365666, 0.909317,
		-0.351610, 0.892610, -0.282164,
		-0.914843, -0.263695, 0.305821,
		39.952709, 26.868118, 48.812893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853092, 27.466640, 49.122536>,  <40.593098, 27.052706, 48.598816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853092, 27.466640, 49.122536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859875, 27.861027, 49.188965>,  <40.863945, 28.097658, 49.228825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859875, 27.861027, 49.188965>,  <40.853092, 27.466640, 49.122536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859875, 27.861027, 49.188965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258728, 0.156118, -0.953251,
		-0.965801, 0.059129, -0.252451,
		0.016953, 0.985967, 0.166078,
		40.864960, 28.156816, 49.238789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625626, 27.815853, 48.581585>,  <40.853092, 27.466640, 49.122536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625626, 27.815853, 48.581585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810112, 28.130459, 48.745861>,  <40.920803, 28.319223, 48.844429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810112, 28.130459, 48.745861>,  <40.625626, 27.815853, 48.581585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810112, 28.130459, 48.745861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092695, 0.417620, -0.903881,
		-0.882431, 0.454956, 0.119708,
		0.461219, 0.786517, 0.410693,
		40.948479, 28.366413, 48.869068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172123, 28.468599, 48.379448>,  <40.625626, 27.815853, 48.581585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172123, 28.468599, 48.379448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545387, 28.590666, 48.455433>,  <40.769344, 28.663906, 48.501022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545387, 28.590666, 48.455433>,  <40.172123, 28.468599, 48.379448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545387, 28.590666, 48.455433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011915, 0.501911, -0.864837,
		-0.359264, 0.809295, 0.464728,
		0.933160, 0.305167, 0.189961,
		40.825336, 28.682217, 48.512421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151493, 29.155968, 48.246178>,  <40.172123, 28.468599, 48.379448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151493, 29.155968, 48.246178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531811, 29.036057, 48.214863>,  <40.760002, 28.964109, 48.196075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531811, 29.036057, 48.214863>,  <40.151493, 29.155968, 48.246178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531811, 29.036057, 48.214863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097382, 0.529004, -0.843014,
		0.294131, 0.793906, 0.532165,
		0.950791, -0.299780, -0.078284,
		40.817047, 28.946123, 48.191376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477459, 29.783278, 47.955128>,  <40.151493, 29.155968, 48.246178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477459, 29.783278, 47.955128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745617, 29.493401, 47.891392>,  <40.906513, 29.319475, 47.853149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745617, 29.493401, 47.891392>,  <40.477459, 29.783278, 47.955128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745617, 29.493401, 47.891392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171655, 0.360387, -0.916873,
		0.721872, 0.587320, 0.366001,
		0.670400, -0.724690, -0.159337,
		40.946735, 29.275993, 47.843590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045021, 30.084011, 47.523369>,  <40.477459, 29.783278, 47.955128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045021, 30.084011, 47.523369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049019, 29.686617, 47.477970>,  <41.051418, 29.448179, 47.450729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049019, 29.686617, 47.477970>,  <41.045021, 30.084011, 47.523369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049019, 29.686617, 47.477970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036059, 0.113790, -0.992850,
		0.999300, 0.005835, 0.036962,
		0.009999, -0.993488, -0.113500,
		41.052017, 29.388571, 47.443920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422211, 30.034492, 46.942734>,  <41.045021, 30.084011, 47.523369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422211, 30.034492, 46.942734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261929, 29.668671, 46.964710>,  <41.165760, 29.449177, 46.977898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261929, 29.668671, 46.964710>,  <41.422211, 30.034492, 46.942734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261929, 29.668671, 46.964710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039478, -0.042680, -0.998308,
		0.915355, -0.402199, -0.019003,
		-0.400708, -0.914557, 0.054945,
		41.141716, 29.394304, 46.981194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823456, 29.683426, 46.488819>,  <41.422211, 30.034492, 46.942734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823456, 29.683426, 46.488819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458191, 29.528503, 46.539627>,  <41.239033, 29.435551, 46.570110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458191, 29.528503, 46.539627>,  <41.823456, 29.683426, 46.488819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458191, 29.528503, 46.539627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164974, 0.066239, -0.984071,
		0.372721, -0.919570, -0.124382,
		-0.913161, -0.387304, 0.127016,
		41.184242, 29.412312, 46.577732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801853, 29.233522, 46.031651>,  <41.823456, 29.683426, 46.488819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801853, 29.233522, 46.031651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416004, 29.309397, 46.104881>,  <41.184494, 29.354921, 46.148819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416004, 29.309397, 46.104881>,  <41.801853, 29.233522, 46.031651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416004, 29.309397, 46.104881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227432, -0.247606, -0.941789,
		-0.133314, -0.950111, 0.281987,
		-0.964625, 0.189686, 0.183076,
		41.126617, 29.366302, 46.159805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601036, 29.128542, 45.377319>,  <41.801853, 29.233522, 46.031651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601036, 29.128542, 45.377319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278934, 29.251009, 45.580425>,  <41.085674, 29.324490, 45.702290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278934, 29.251009, 45.580425>,  <41.601036, 29.128542, 45.377319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278934, 29.251009, 45.580425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497206, 0.117864, -0.859589,
		-0.323026, -0.944653, 0.057318,
		-0.805258, 0.306168, 0.507760,
		41.037357, 29.342859, 45.732754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068081, 28.643929, 45.233192>,  <41.601036, 29.128542, 45.377319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068081, 28.643929, 45.233192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951416, 29.015636, 45.323875>,  <40.881416, 29.238661, 45.378284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951416, 29.015636, 45.323875>,  <41.068081, 28.643929, 45.233192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951416, 29.015636, 45.323875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512061, 0.048499, -0.857579,
		-0.807917, -0.366206, 0.461697,
		-0.291659, 0.929269, 0.226703,
		40.863918, 29.294416, 45.391888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297680, 28.626709, 45.173035>,  <41.068081, 28.643929, 45.233192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297680, 28.626709, 45.173035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447433, 28.995728, 45.135635>,  <40.537285, 29.217138, 45.113197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447433, 28.995728, 45.135635>,  <40.297680, 28.626709, 45.173035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447433, 28.995728, 45.135635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428242, 0.082587, -0.899883,
		-0.822462, 0.376945, 0.425992,
		0.374388, 0.922547, -0.093499,
		40.559750, 29.272491, 45.107586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680191, 28.904884, 44.939018>,  <40.297680, 28.626709, 45.173035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680191, 28.904884, 44.939018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967373, 29.174036, 44.867714>,  <40.139683, 29.335527, 44.824932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967373, 29.174036, 44.867714>,  <39.680191, 28.904884, 44.939018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967373, 29.174036, 44.867714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488324, 0.304359, -0.817866,
		-0.496069, 0.674239, 0.547098,
		0.717952, 0.672879, -0.178264,
		40.182758, 29.375900, 44.814236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398773, 29.538263, 44.779373>,  <39.680191, 28.904884, 44.939018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398773, 29.538263, 44.779373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755283, 29.569187, 44.600643>,  <39.969189, 29.587742, 44.493404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755283, 29.569187, 44.600643>,  <39.398773, 29.538263, 44.779373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755283, 29.569187, 44.600643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434740, 0.425875, -0.793493,
		0.128945, 0.901473, 0.413183,
		0.891277, 0.077310, -0.446821,
		40.022667, 29.592381, 44.466599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458721, 30.218920, 44.601055>,  <39.398773, 29.538263, 44.779373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458721, 30.218920, 44.601055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706417, 29.998371, 44.377438>,  <39.855034, 29.866043, 44.243267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706417, 29.998371, 44.377438>,  <39.458721, 30.218920, 44.601055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706417, 29.998371, 44.377438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454934, 0.328364, -0.827776,
		0.639981, 0.766922, -0.047500,
		0.619241, -0.551370, -0.559045,
		39.892189, 29.832960, 44.209724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618225, 30.638590, 44.017426>,  <39.458721, 30.218920, 44.601055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618225, 30.638590, 44.017426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714317, 30.270142, 43.894905>,  <39.771973, 30.049072, 43.821392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714317, 30.270142, 43.894905>,  <39.618225, 30.638590, 44.017426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714317, 30.270142, 43.894905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433517, 0.180524, -0.882878,
		0.868535, 0.344882, -0.355955,
		0.240231, -0.921123, -0.306303,
		39.786388, 29.993805, 43.803013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797443, 30.721601, 43.359425>,  <39.618225, 30.638590, 44.017426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797443, 30.721601, 43.359425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759373, 30.324678, 43.391083>,  <39.736530, 30.086525, 43.410076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759373, 30.324678, 43.391083>,  <39.797443, 30.721601, 43.359425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759373, 30.324678, 43.391083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337152, -0.042673, -0.940482,
		0.936627, -0.116195, -0.330498,
		-0.095176, -0.992309, 0.079144,
		39.730820, 30.026985, 43.414825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060368, 30.471455, 42.730221>,  <39.797443, 30.721601, 43.359425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060368, 30.471455, 42.730221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845219, 30.170723, 42.882774>,  <39.716129, 29.990284, 42.974308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845219, 30.170723, 42.882774>,  <40.060368, 30.471455, 42.730221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845219, 30.170723, 42.882774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365420, -0.199766, -0.909154,
		0.759715, -0.628370, -0.167285,
		-0.537868, -0.751827, 0.381384,
		39.683857, 29.945175, 42.997189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139210, 29.910578, 42.352036>,  <40.060368, 30.471455, 42.730221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139210, 29.910578, 42.352036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786854, 29.859802, 42.534431>,  <39.575439, 29.829336, 42.643867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786854, 29.859802, 42.534431>,  <40.139210, 29.910578, 42.352036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786854, 29.859802, 42.534431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409448, -0.278957, -0.868640,
		0.237465, -0.951877, 0.193755,
		-0.880887, -0.126939, 0.455987,
		39.522587, 29.821720, 42.671227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899105, 29.369093, 42.018936>,  <40.139210, 29.910578, 42.352036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899105, 29.369093, 42.018936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573071, 29.535654, 42.180054>,  <39.377449, 29.635592, 42.276722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573071, 29.535654, 42.180054>,  <39.899105, 29.369093, 42.018936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573071, 29.535654, 42.180054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531038, -0.259083, -0.806768,
		-0.231584, -0.871484, 0.432302,
		-0.815087, 0.416404, 0.402792,
		39.328545, 29.660576, 42.300892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480350, 28.988104, 42.081150>,  <39.899105, 29.369093, 42.018936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480350, 28.988104, 42.081150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254936, 29.318539, 42.080807>,  <39.119686, 29.516800, 42.080601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254936, 29.318539, 42.080807>,  <39.480350, 28.988104, 42.081150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254936, 29.318539, 42.080807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509793, -0.348582, -0.786512,
		-0.650027, -0.442795, 0.617574,
		-0.563539, 0.826089, -0.000854,
		39.085876, 29.566366, 42.080551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884846, 28.760822, 41.832077>,  <39.480350, 28.988104, 42.081150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884846, 28.760822, 41.832077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776077, 29.145430, 41.816383>,  <38.710815, 29.376194, 41.806969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776077, 29.145430, 41.816383>,  <38.884846, 28.760822, 41.832077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776077, 29.145430, 41.816383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632114, -0.209206, -0.746100,
		-0.725598, -0.178079, 0.664677,
		-0.271919, 0.961520, -0.039233,
		38.694500, 29.433886, 41.804615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045090, 28.807329, 41.772636>,  <38.884846, 28.760822, 41.832077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045090, 28.807329, 41.772636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224365, 29.135853, 41.631454>,  <38.331928, 29.332968, 41.546745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224365, 29.135853, 41.631454>,  <38.045090, 28.807329, 41.772636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224365, 29.135853, 41.631454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603306, -0.013458, -0.797396,
		-0.659660, 0.570322, 0.489471,
		0.448185, 0.821311, -0.352956,
		38.358822, 29.382246, 41.525566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544178, 29.200476, 41.339771>,  <38.045090, 28.807329, 41.772636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544178, 29.200476, 41.339771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883816, 29.378098, 41.225327>,  <38.087597, 29.484671, 41.156658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883816, 29.378098, 41.225327>,  <37.544178, 29.200476, 41.339771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883816, 29.378098, 41.225327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413682, 0.222137, -0.882906,
		-0.328503, 0.868026, 0.372312,
		0.849090, 0.444055, -0.286114,
		38.138542, 29.511314, 41.139492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375137, 29.951403, 41.046566>,  <37.544178, 29.200476, 41.339771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375137, 29.951403, 41.046566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722546, 29.814856, 40.902821>,  <37.930988, 29.732927, 40.816574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722546, 29.814856, 40.902821>,  <37.375137, 29.951403, 41.046566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722546, 29.814856, 40.902821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255390, 0.313166, -0.914715,
		0.424797, 0.886224, 0.184808,
		0.868518, -0.341370, -0.359365,
		37.983101, 29.712444, 40.795010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531464, 30.481752, 40.529430>,  <37.375137, 29.951403, 41.046566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531464, 30.481752, 40.529430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740250, 30.151400, 40.444138>,  <37.865520, 29.953188, 40.392963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740250, 30.151400, 40.444138>,  <37.531464, 30.481752, 40.529430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740250, 30.151400, 40.444138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060738, 0.213365, -0.975083,
		0.850800, 0.521913, 0.061208,
		0.521968, -0.825882, -0.213231,
		37.896839, 29.903635, 40.380169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086113, 30.757872, 40.215122>,  <37.531464, 30.481752, 40.529430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086113, 30.757872, 40.215122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070000, 30.373579, 40.105305>,  <38.060333, 30.143003, 40.039413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070000, 30.373579, 40.105305>,  <38.086113, 30.757872, 40.215122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070000, 30.373579, 40.105305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046390, 0.272676, -0.960987,
		0.998111, -0.051446, 0.033584,
		-0.040282, -0.960729, -0.274548,
		38.057915, 30.085360, 40.022942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575287, 30.695612, 39.779366>,  <38.086113, 30.757872, 40.215122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575287, 30.695612, 39.779366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334137, 30.388796, 39.691551>,  <38.189449, 30.204706, 39.638863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334137, 30.388796, 39.691551>,  <38.575287, 30.695612, 39.779366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334137, 30.388796, 39.691551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058354, 0.232038, -0.970955,
		0.795703, -0.598171, -0.095129,
		-0.602870, -0.767040, -0.219539,
		38.153275, 30.158684, 39.625690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942642, 30.267063, 39.363075>,  <38.575287, 30.695612, 39.779366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942642, 30.267063, 39.363075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562817, 30.176882, 39.275894>,  <38.334923, 30.122772, 39.223587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562817, 30.176882, 39.275894>,  <38.942642, 30.267063, 39.363075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562817, 30.176882, 39.275894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213204, 0.045499, -0.975948,
		0.229949, -0.973190, 0.004864,
		-0.949562, -0.225455, -0.217950,
		38.277946, 30.109245, 39.210510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075356, 29.945032, 38.824917>,  <38.942642, 30.267063, 39.363075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075356, 29.945032, 38.824917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681492, 30.011080, 38.802387>,  <38.445171, 30.050709, 38.788868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681492, 30.011080, 38.802387>,  <39.075356, 29.945032, 38.824917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681492, 30.011080, 38.802387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083838, 0.164704, -0.982774,
		-0.153000, -0.972424, -0.176022,
		-0.984663, 0.165122, -0.056326,
		38.386093, 30.060616, 38.785488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950146, 29.656340, 38.236713>,  <39.075356, 29.945032, 38.824917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950146, 29.656340, 38.236713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657116, 29.919369, 38.307064>,  <38.481297, 30.077187, 38.349274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657116, 29.919369, 38.307064>,  <38.950146, 29.656340, 38.236713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657116, 29.919369, 38.307064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164109, 0.421377, -0.891914,
		-0.660606, -0.624533, -0.416604,
		-0.732577, 0.657571, 0.175873,
		38.437344, 30.116640, 38.359825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587318, 29.616665, 37.630901>,  <38.950146, 29.656340, 38.236713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587318, 29.616665, 37.630901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477497, 29.962084, 37.800091>,  <38.411606, 30.169334, 37.901604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477497, 29.962084, 37.800091>,  <38.587318, 29.616665, 37.630901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477497, 29.962084, 37.800091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047053, 0.427287, -0.902891,
		-0.960420, -0.267795, -0.076681,
		-0.274554, 0.863546, 0.422976,
		38.395130, 30.221148, 37.926983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128319, 29.795830, 37.256535>,  <38.587318, 29.616665, 37.630901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128319, 29.795830, 37.256535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231819, 30.132294, 37.446480>,  <38.293919, 30.334173, 37.560448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231819, 30.132294, 37.446480>,  <38.128319, 29.795830, 37.256535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231819, 30.132294, 37.446480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316571, 0.538300, -0.781035,
		-0.912596, 0.051764, 0.405572,
		0.258749, 0.841162, 0.474864,
		38.309444, 30.384642, 37.588940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814056, 30.218264, 36.848522>,  <38.128319, 29.795830, 37.256535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814056, 30.218264, 36.848522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070095, 30.466003, 37.030369>,  <38.223721, 30.614647, 37.139477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070095, 30.466003, 37.030369>,  <37.814056, 30.218264, 36.848522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070095, 30.466003, 37.030369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012815, 0.600252, -0.799708,
		-0.768184, 0.506067, 0.392159,
		0.640100, 0.619349, 0.454619,
		38.262127, 30.651808, 37.166756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500851, 30.871647, 36.778126>,  <37.814056, 30.218264, 36.848522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500851, 30.871647, 36.778126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885979, 30.952465, 36.849850>,  <38.117054, 31.000956, 36.892883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885979, 30.952465, 36.849850>,  <37.500851, 30.871647, 36.778126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885979, 30.952465, 36.849850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031294, 0.742727, -0.668863,
		-0.268321, 0.638384, 0.721436,
		0.962821, 0.202047, 0.179311,
		38.174824, 31.013079, 36.903645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585739, 31.537104, 36.771603>,  <37.500851, 30.871647, 36.778126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585739, 31.537104, 36.771603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974922, 31.451380, 36.737137>,  <38.208431, 31.399946, 36.716457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974922, 31.451380, 36.737137>,  <37.585739, 31.537104, 36.771603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974922, 31.451380, 36.737137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137841, 0.838044, -0.527904,
		0.185346, 0.501751, 0.844922,
		0.972958, -0.214310, -0.086166,
		38.266811, 31.387087, 36.711288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981697, 32.146362, 36.939098>,  <37.585739, 31.537104, 36.771603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981697, 32.146362, 36.939098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238693, 31.942215, 36.710457>,  <38.392891, 31.819727, 36.573273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238693, 31.942215, 36.710457>,  <37.981697, 32.146362, 36.939098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238693, 31.942215, 36.710457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224350, 0.838529, -0.496524,
		0.732717, 0.190771, 0.653247,
		0.642489, -0.510368, -0.571605,
		38.431438, 31.789104, 36.538975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668522, 32.542229, 36.999550>,  <37.981697, 32.146362, 36.939098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668522, 32.542229, 36.999550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652832, 32.320744, 36.666836>,  <38.643417, 32.187855, 36.467209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652832, 32.320744, 36.666836>,  <38.668522, 32.542229, 36.999550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652832, 32.320744, 36.666836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407853, 0.751058, -0.519199,
		0.912205, -0.359610, 0.196375,
		-0.039220, -0.553708, -0.831787,
		38.641068, 32.154633, 36.417301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317059, 32.651196, 36.749622>,  <38.668522, 32.542229, 36.999550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317059, 32.651196, 36.749622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113087, 32.513367, 36.434345>,  <38.990704, 32.430672, 36.245178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113087, 32.513367, 36.434345>,  <39.317059, 32.651196, 36.749622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113087, 32.513367, 36.434345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389140, 0.724756, -0.568594,
		0.767167, -0.596658, -0.235487,
		-0.509927, -0.344569, -0.788192,
		38.960110, 32.409996, 36.197887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830032, 32.551971, 36.235264>,  <39.317059, 32.651196, 36.749622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830032, 32.551971, 36.235264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487522, 32.573238, 36.029755>,  <39.282017, 32.585999, 35.906448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487522, 32.573238, 36.029755>,  <39.830032, 32.551971, 36.235264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487522, 32.573238, 36.029755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480586, 0.446501, -0.754768,
		0.189274, -0.893202, -0.407878,
		-0.856279, 0.053163, -0.513772,
		39.230640, 32.589188, 35.875622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006275, 32.403835, 35.517094>,  <39.830032, 32.551971, 36.235264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006275, 32.403835, 35.517094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654514, 32.593483, 35.534370>,  <39.443459, 32.707272, 35.544735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654514, 32.593483, 35.534370>,  <40.006275, 32.403835, 35.517094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654514, 32.593483, 35.534370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283787, 0.594880, -0.752052,
		-0.382255, -0.649099, -0.657687,
		-0.879401, 0.474119, 0.043190,
		39.390694, 32.735718, 35.547329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625820, 32.492073, 34.832806>,  <40.006275, 32.403835, 35.517094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625820, 32.492073, 34.832806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564575, 32.790249, 35.092308>,  <39.527828, 32.969154, 35.248009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564575, 32.790249, 35.092308>,  <39.625820, 32.492073, 34.832806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564575, 32.790249, 35.092308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479546, 0.630063, -0.610784,
		-0.864056, 0.217588, -0.453942,
		-0.153113, 0.745437, 0.648753,
		39.518642, 33.013882, 35.286934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277004, 33.008060, 34.554569>,  <39.625820, 32.492073, 34.832806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277004, 33.008060, 34.554569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475597, 33.182644, 34.854706>,  <39.594753, 33.287392, 35.034786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475597, 33.182644, 34.854706>,  <39.277004, 33.008060, 34.554569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475597, 33.182644, 34.854706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340453, 0.697236, -0.630835,
		-0.798497, 0.568654, 0.197572,
		0.496482, 0.436456, 0.750342,
		39.624542, 33.313580, 35.079807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090385, 33.812778, 34.639637>,  <39.277004, 33.008060, 34.554569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090385, 33.812778, 34.639637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462063, 33.702877, 34.738522>,  <39.685070, 33.636936, 34.797852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462063, 33.702877, 34.738522>,  <39.090385, 33.812778, 34.639637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462063, 33.702877, 34.738522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367168, 0.609573, -0.702572,
		0.042343, 0.743592, 0.667292,
		0.929190, -0.274757, 0.247212,
		39.740822, 33.620449, 34.812687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445137, 34.496712, 34.797665>,  <39.090385, 33.812778, 34.639637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445137, 34.496712, 34.797665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646210, 34.180889, 34.656864>,  <39.766853, 33.991394, 34.572384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646210, 34.180889, 34.656864>,  <39.445137, 34.496712, 34.797665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646210, 34.180889, 34.656864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204103, 0.504077, -0.839195,
		0.840031, 0.350004, 0.414543,
		0.502683, -0.789559, -0.352004,
		39.797016, 33.944023, 34.551262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076271, 34.762985, 34.586170>,  <39.445137, 34.496712, 34.797665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076271, 34.762985, 34.586170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015739, 34.437012, 34.362392>,  <39.979420, 34.241428, 34.228127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015739, 34.437012, 34.362392>,  <40.076271, 34.762985, 34.586170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015739, 34.437012, 34.362392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295195, 0.502882, -0.812385,
		0.943376, -0.288085, 0.164463,
		-0.151331, -0.814933, -0.559448,
		39.970341, 34.192532, 34.194557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660664, 34.632748, 34.202618>,  <40.076271, 34.762985, 34.586170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660664, 34.632748, 34.202618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332272, 34.508129, 34.011234>,  <40.135235, 34.433357, 33.896404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332272, 34.508129, 34.011234>,  <40.660664, 34.632748, 34.202618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332272, 34.508129, 34.011234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179250, 0.654989, -0.734070,
		0.542082, -0.688425, -0.481891,
		-0.820985, -0.311547, -0.478457,
		40.085976, 34.414665, 33.867695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868507, 35.181229, 34.612923>,  <40.660664, 34.632748, 34.202618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868507, 35.181229, 34.612923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059193, 35.531219, 34.579071>,  <41.173603, 35.741215, 34.558758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059193, 35.531219, 34.579071>,  <40.868507, 35.181229, 34.612923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059193, 35.531219, 34.579071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317990, -0.261400, -0.911346,
		-0.819528, 0.407540, -0.402846,
		0.476714, 0.874975, -0.084631,
		41.202206, 35.793713, 34.553680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858234, 35.355007, 33.863499>,  <40.868507, 35.181229, 34.612923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858234, 35.355007, 33.863499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153488, 35.563484, 34.034855>,  <41.330639, 35.688572, 34.137669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153488, 35.563484, 34.034855>,  <40.858234, 35.355007, 33.863499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153488, 35.563484, 34.034855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552297, -0.102144, -0.827366,
		-0.387461, 0.847303, -0.363250,
		0.738134, 0.521195, 0.428386,
		41.374928, 35.719841, 34.163372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275398, 35.757877, 33.309971>,  <40.858234, 35.355007, 33.863499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275398, 35.757877, 33.309971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525982, 35.712002, 33.618362>,  <41.676331, 35.684475, 33.803398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525982, 35.712002, 33.618362>,  <41.275398, 35.757877, 33.309971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525982, 35.712002, 33.618362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748939, -0.185501, -0.636144,
		0.215975, 0.975928, -0.030313,
		0.626454, -0.114689, 0.770974,
		41.713917, 35.677597, 33.849655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746620, 36.243286, 33.152866>,  <41.275398, 35.757877, 33.309971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746620, 36.243286, 33.152866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922710, 35.961777, 33.375904>,  <42.028366, 35.792873, 33.509727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922710, 35.961777, 33.375904>,  <41.746620, 36.243286, 33.152866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922710, 35.961777, 33.375904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757570, -0.042210, -0.651388,
		0.481963, 0.709173, 0.514573,
		0.440227, -0.703770, 0.557592,
		42.054779, 35.750645, 33.543182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403122, 36.276890, 32.955048>,  <41.746620, 36.243286, 33.152866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403122, 36.276890, 32.955048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431587, 35.956985, 33.193481>,  <42.448666, 35.765041, 33.336540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431587, 35.956985, 33.193481>,  <42.403122, 36.276890, 32.955048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431587, 35.956985, 33.193481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860666, -0.252825, -0.441965,
		0.504172, 0.544483, 0.670335,
		0.071165, -0.799761, 0.596085,
		42.452938, 35.717056, 33.372307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034008, 36.319584, 33.382690>,  <42.403122, 36.276890, 32.955048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034008, 36.319584, 33.382690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893517, 35.951817, 33.311909>,  <42.809219, 35.731155, 33.269440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893517, 35.951817, 33.311909>,  <43.034008, 36.319584, 33.382690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893517, 35.951817, 33.311909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796864, -0.194313, -0.572059,
		0.491575, -0.341933, 0.800897,
		-0.351231, -0.919415, -0.176955,
		42.788147, 35.675991, 33.258823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575127, 35.882927, 33.490166>,  <43.034008, 36.319584, 33.382690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575127, 35.882927, 33.490166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308937, 35.691315, 33.261196>,  <43.149223, 35.576347, 33.123817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308937, 35.691315, 33.261196>,  <43.575127, 35.882927, 33.490166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308937, 35.691315, 33.261196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737310, -0.302450, -0.604067,
		0.116242, -0.824044, 0.554472,
		-0.665478, -0.479036, -0.572419,
		43.109295, 35.547604, 33.089470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831238, 35.275688, 33.334072>,  <43.575127, 35.882927, 33.490166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831238, 35.275688, 33.334072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562660, 35.270775, 33.037689>,  <43.401516, 35.267826, 32.859859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562660, 35.270775, 33.037689>,  <43.831238, 35.275688, 33.334072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562660, 35.270775, 33.037689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705805, -0.315323, -0.634359,
		-0.225848, -0.948905, 0.220390,
		-0.671441, -0.012284, -0.740957,
		43.361229, 35.267090, 32.815403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988995, 34.669193, 32.944263>,  <43.831238, 35.275688, 33.334072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988995, 34.669193, 32.944263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774662, 34.917290, 32.715115>,  <43.646065, 35.066147, 32.577625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774662, 34.917290, 32.715115>,  <43.988995, 34.669193, 32.944263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774662, 34.917290, 32.715115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568677, -0.236407, -0.787857,
		-0.624094, -0.747937, -0.226044,
		-0.535829, 0.620243, -0.572874,
		43.613914, 35.103363, 32.543251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924564, 34.321320, 32.382912>,  <43.988995, 34.669193, 32.944263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924564, 34.321320, 32.382912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850494, 34.695084, 32.261204>,  <43.806053, 34.919342, 32.188179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850494, 34.695084, 32.261204>,  <43.924564, 34.321320, 32.382912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850494, 34.695084, 32.261204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684234, -0.099644, -0.722423,
		-0.705361, -0.341969, -0.620906,
		-0.185177, 0.934413, -0.304271,
		43.794941, 34.975407, 32.169922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839783, 34.239456, 31.659830>,  <43.924564, 34.321320, 32.382912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839783, 34.239456, 31.659830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877254, 34.636116, 31.695286>,  <43.899738, 34.874111, 31.716560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877254, 34.636116, 31.695286>,  <43.839783, 34.239456, 31.659830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877254, 34.636116, 31.695286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632344, 0.009505, -0.774629,
		-0.769002, 0.128619, -0.626173,
		0.093680, 0.991648, 0.088641,
		43.905357, 34.933609, 31.721878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611526, 34.540424, 31.039793>,  <43.839783, 34.239456, 31.659830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611526, 34.540424, 31.039793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849850, 34.812248, 31.211006>,  <43.992844, 34.975342, 31.313734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849850, 34.812248, 31.211006>,  <43.611526, 34.540424, 31.039793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849850, 34.812248, 31.211006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514705, 0.086032, -0.853040,
		-0.616517, 0.728557, -0.298514,
		0.595807, 0.679560, 0.428032,
		44.028591, 35.016117, 31.339417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796730, 34.980770, 30.480112>,  <43.611526, 34.540424, 31.039793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796730, 34.980770, 30.480112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092251, 35.048595, 30.741009>,  <44.269562, 35.089291, 30.897547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092251, 35.048595, 30.741009>,  <43.796730, 34.980770, 30.480112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092251, 35.048595, 30.741009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670566, -0.088486, -0.736553,
		-0.067179, 0.981539, -0.179078,
		0.738802, 0.169564, 0.652242,
		44.313892, 35.099464, 30.936682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117065, 35.585243, 30.240360>,  <43.796730, 34.980770, 30.480112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117065, 35.585243, 30.240360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386452, 35.405277, 30.474974>,  <44.548084, 35.297298, 30.615742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386452, 35.405277, 30.474974>,  <44.117065, 35.585243, 30.240360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386452, 35.405277, 30.474974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716820, 0.203634, -0.666860,
		0.180589, 0.869548, 0.459645,
		0.673466, -0.449910, 0.586536,
		44.588493, 35.270306, 30.650934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672783, 35.989262, 30.273664>,  <44.117065, 35.585243, 30.240360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672783, 35.989262, 30.273664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809486, 35.638905, 30.409906>,  <44.891506, 35.428688, 30.491652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809486, 35.638905, 30.409906>,  <44.672783, 35.989262, 30.273664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809486, 35.638905, 30.409906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796922, 0.078004, -0.599025,
		0.498114, 0.476155, 0.724678,
		0.341757, -0.875895, 0.340603,
		44.912014, 35.376137, 30.512087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309505, 36.077423, 30.546841>,  <44.672783, 35.989262, 30.273664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309505, 36.077423, 30.546841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314713, 35.686680, 30.461443>,  <45.317837, 35.452232, 30.410204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314713, 35.686680, 30.461443>,  <45.309505, 36.077423, 30.546841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314713, 35.686680, 30.461443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794375, 0.139776, -0.591128,
		0.607289, -0.161902, 0.777810,
		0.013014, -0.976857, -0.213495,
		45.318615, 35.393623, 30.397394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997871, 36.057369, 30.360470>,  <45.309505, 36.077423, 30.546841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997871, 36.057369, 30.360470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823341, 35.714207, 30.251944>,  <45.718624, 35.508308, 30.186829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823341, 35.714207, 30.251944>,  <45.997871, 36.057369, 30.360470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.823341, 35.714207, 30.251944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726332, -0.157840, -0.668975,
		0.531096, -0.488955, 0.691997,
		-0.436324, -0.857910, -0.271315,
		45.692444, 35.456833, 30.170549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517765, 35.631054, 30.228889>,  <45.997871, 36.057369, 30.360470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517765, 35.631054, 30.228889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218006, 35.479900, 30.011414>,  <46.038151, 35.389206, 29.880928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218006, 35.479900, 30.011414>,  <46.517765, 35.631054, 30.228889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218006, 35.479900, 30.011414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575058, 0.035541, -0.817340,
		0.328187, -0.925169, 0.190673,
		-0.749401, -0.377888, -0.543690,
		45.993187, 35.366535, 29.848307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.880062, 35.191807, 29.831041>,  <46.517765, 35.631054, 30.228889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.880062, 35.191807, 29.831041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532574, 35.254761, 29.643188>,  <46.324081, 35.292534, 29.530476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532574, 35.254761, 29.643188>,  <46.880062, 35.191807, 29.831041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532574, 35.254761, 29.643188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481430, 0.045465, -0.875305,
		-0.116404, -0.986491, -0.115264,
		-0.868721, 0.157381, -0.469634,
		46.271957, 35.301975, 29.502298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.817860, 34.635063, 29.250881>,  <46.880062, 35.191807, 29.831041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.817860, 34.635063, 29.250881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564060, 34.918644, 29.127720>,  <46.411781, 35.088791, 29.053823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564060, 34.918644, 29.127720>,  <46.817860, 34.635063, 29.250881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564060, 34.918644, 29.127720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373040, -0.068010, -0.925320,
		-0.676944, -0.701974, -0.221314,
		-0.634499, 0.708948, -0.307903,
		46.373711, 35.131329, 29.035349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708721, 34.525520, 28.562288>,  <46.817860, 34.635063, 29.250881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708721, 34.525520, 28.562288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553917, 34.893715, 28.583933>,  <46.461033, 35.114632, 28.596920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553917, 34.893715, 28.583933>,  <46.708721, 34.525520, 28.562288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553917, 34.893715, 28.583933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300533, 0.181402, -0.936362,
		-0.871725, -0.346118, -0.346841,
		-0.387010, 0.920487, 0.054112,
		46.437813, 35.169861, 28.600166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257111, 34.651672, 27.992683>,  <46.708721, 34.525520, 28.562288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257111, 34.651672, 27.992683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419987, 34.991798, 28.126049>,  <46.517712, 35.195873, 28.206068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419987, 34.991798, 28.126049>,  <46.257111, 34.651672, 27.992683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419987, 34.991798, 28.126049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319791, 0.209207, -0.924103,
		-0.855530, 0.482905, -0.186737,
		0.407187, 0.850315, 0.333412,
		46.542141, 35.246891, 28.226072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126965, 35.159561, 27.504314>,  <46.257111, 34.651672, 27.992683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126965, 35.159561, 27.504314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447044, 35.326447, 27.676649>,  <46.639091, 35.426579, 27.780050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.447044, 35.326447, 27.676649>,  <46.126965, 35.159561, 27.504314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.447044, 35.326447, 27.676649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316948, 0.315683, -0.894365,
		-0.509148, 0.852220, 0.120374,
		0.800195, 0.417212, 0.430839,
		46.687103, 35.451611, 27.805901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312965, 35.910358, 27.252331>,  <46.126965, 35.159561, 27.504314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312965, 35.910358, 27.252331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662037, 35.732559, 27.333183>,  <46.871479, 35.625881, 27.381695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662037, 35.732559, 27.333183>,  <46.312965, 35.910358, 27.252331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.662037, 35.732559, 27.333183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407537, 0.434989, -0.802931,
		0.268977, 0.783075, 0.560754,
		0.872677, -0.444498, 0.202130,
		46.923840, 35.599209, 27.393822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861374, 36.364605, 27.510408>,  <46.312965, 35.910358, 27.252331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861374, 36.364605, 27.510408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942619, 36.049786, 27.277411>,  <46.991367, 35.860893, 27.137611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942619, 36.049786, 27.277411>,  <46.861374, 36.364605, 27.510408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942619, 36.049786, 27.277411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268747, 0.616861, -0.739768,
		0.941552, -0.006287, 0.336809,
		0.203114, -0.787047, -0.582497,
		47.003555, 35.813671, 27.102661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.209858, 37.091240, 27.764845>,  <46.861374, 36.364605, 27.510408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.209858, 37.091240, 27.764845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.388313, 37.246975, 27.442511>,  <47.495388, 37.340416, 27.249111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.388313, 37.246975, 27.442511>,  <47.209858, 37.091240, 27.764845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.388313, 37.246975, 27.442511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547712, -0.830883, -0.098208,
		-0.707791, -0.397551, -0.583940,
		0.446143, 0.389342, -0.805835,
		47.522156, 37.363777, 27.200760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.260330, 37.842453, 28.052946>,  <47.209858, 37.091240, 27.764845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.260330, 37.842453, 28.052946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.862282, 37.811314, 28.077217>,  <46.623455, 37.792629, 28.091780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.862282, 37.811314, 28.077217>,  <47.260330, 37.842453, 28.052946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.862282, 37.811314, 28.077217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062396, 0.972485, 0.224454,
		-0.076482, 0.219572, -0.972594,
		-0.995117, -0.077852, 0.060677,
		46.563747, 37.787956, 28.095421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119087, 38.444016, 28.055344>,  <47.260330, 37.842453, 28.052946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119087, 38.444016, 28.055344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758797, 38.309063, 28.164787>,  <46.542622, 38.228092, 28.230453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758797, 38.309063, 28.164787>,  <47.119087, 38.444016, 28.055344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758797, 38.309063, 28.164787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228255, 0.903521, 0.362697,
		-0.369580, 0.264239, -0.890836,
		-0.900728, -0.337383, 0.273609,
		46.488579, 38.207848, 28.246870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583694, 38.767052, 27.768328>,  <47.119087, 38.444016, 28.055344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583694, 38.767052, 27.768328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474125, 38.623829, 28.125372>,  <46.408382, 38.537895, 28.339600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.474125, 38.623829, 28.125372>,  <46.583694, 38.767052, 27.768328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474125, 38.623829, 28.125372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339392, 0.904391, 0.258632,
		-0.899876, -0.232099, -0.369259,
		-0.273926, -0.358060, 0.892613,
		46.391949, 38.516411, 28.393156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909878, 38.802856, 27.782795>,  <46.583694, 38.767052, 27.768328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909878, 38.802856, 27.782795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048481, 38.892929, 28.147041>,  <46.131645, 38.946972, 28.365589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048481, 38.892929, 28.147041>,  <45.909878, 38.802856, 27.782795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048481, 38.892929, 28.147041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280393, 0.951241, -0.128533,
		-0.895160, -0.210792, 0.392754,
		0.346510, 0.225183, 0.910617,
		46.152435, 38.960484, 28.420227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393963, 38.961365, 28.366798>,  <45.909878, 38.802856, 27.782795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393963, 38.961365, 28.366798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745632, 39.151878, 28.372501>,  <45.956635, 39.266186, 28.375923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745632, 39.151878, 28.372501>,  <45.393963, 38.961365, 28.366798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.745632, 39.151878, 28.372501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465471, 0.864838, -0.188128,
		-0.101933, 0.158761, 0.982041,
		0.879174, 0.476288, 0.014257,
		46.009384, 39.294765, 28.376778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331497, 39.076939, 29.031187>,  <45.393963, 38.961365, 28.366798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331497, 39.076939, 29.031187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942406, 39.169537, 29.037031>,  <44.708950, 39.225094, 29.040539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942406, 39.169537, 29.037031>,  <45.331497, 39.076939, 29.031187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942406, 39.169537, 29.037031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058011, -0.303784, 0.950973,
		0.224582, 0.924190, 0.308928,
		-0.972727, 0.231493, 0.014611,
		44.650589, 39.238983, 29.041414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304226, 39.603027, 29.493608>,  <45.331497, 39.076939, 29.031187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304226, 39.603027, 29.493608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953617, 39.411846, 29.470722>,  <44.743252, 39.297138, 29.456991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953617, 39.411846, 29.470722>,  <45.304226, 39.603027, 29.493608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953617, 39.411846, 29.470722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107093, 0.077747, 0.991205,
		-0.469299, 0.874939, -0.119333,
		-0.876521, -0.477951, -0.057213,
		44.690662, 39.268459, 29.453558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829426, 39.950871, 29.846649>,  <45.304226, 39.603027, 29.493608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829426, 39.950871, 29.846649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655113, 39.590851, 29.846844>,  <44.550526, 39.374840, 29.846960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655113, 39.590851, 29.846844>,  <44.829426, 39.950871, 29.846649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655113, 39.590851, 29.846844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156711, 0.076407, 0.984685,
		-0.886304, 0.429033, -0.174344,
		-0.435784, -0.900051, 0.000485,
		44.524380, 39.320835, 29.846989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400822, 39.956577, 30.380526>,  <44.829426, 39.950871, 29.846649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400822, 39.956577, 30.380526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435307, 39.563820, 30.313063>,  <44.455997, 39.328163, 30.272585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435307, 39.563820, 30.313063>,  <44.400822, 39.956577, 30.380526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435307, 39.563820, 30.313063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032444, -0.171967, 0.984569,
		-0.995748, -0.079413, -0.046682,
		0.086216, -0.981897, -0.168659,
		44.461170, 39.269253, 30.262465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919640, 39.737328, 30.756094>,  <44.400822, 39.956577, 30.380526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919640, 39.737328, 30.756094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107330, 39.391525, 30.684038>,  <44.219944, 39.184044, 30.640804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107330, 39.391525, 30.684038>,  <43.919640, 39.737328, 30.756094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107330, 39.391525, 30.684038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130605, -0.269687, 0.954050,
		-0.873365, -0.424141, -0.239454,
		0.469229, -0.864507, -0.180140,
		44.248100, 39.132172, 30.629995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478016, 39.162930, 30.919384>,  <43.919640, 39.737328, 30.756094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478016, 39.162930, 30.919384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860641, 39.049114, 30.944756>,  <44.090218, 38.980827, 30.959978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860641, 39.049114, 30.944756>,  <43.478016, 39.162930, 30.919384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860641, 39.049114, 30.944756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163348, -0.342933, 0.925048,
		-0.241454, -0.895231, -0.374516,
		0.956565, -0.284533, 0.063432,
		44.147610, 38.963753, 30.963785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410049, 38.587410, 31.177574>,  <43.478016, 39.162930, 30.919384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410049, 38.587410, 31.177574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795784, 38.671986, 31.241264>,  <44.027225, 38.722733, 31.279478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.795784, 38.671986, 31.241264>,  <43.410049, 38.587410, 31.177574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795784, 38.671986, 31.241264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087338, -0.313684, 0.945502,
		0.249868, -0.925685, -0.284029,
		0.964333, 0.211444, 0.159227,
		44.085083, 38.735420, 31.289032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706989, 38.046413, 31.441339>,  <43.410049, 38.587410, 31.177574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706989, 38.046413, 31.441339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965969, 38.325573, 31.563814>,  <44.121357, 38.493069, 31.637299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965969, 38.325573, 31.563814>,  <43.706989, 38.046413, 31.441339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965969, 38.325573, 31.563814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012353, -0.392099, 0.919840,
		0.762007, -0.599333, -0.245244,
		0.647451, 0.697895, 0.306186,
		44.160206, 38.534943, 31.655670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241966, 37.698399, 31.821598>,  <43.706989, 38.046413, 31.441339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241966, 37.698399, 31.821598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268764, 38.077972, 31.944904>,  <44.284843, 38.305717, 32.018887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268764, 38.077972, 31.944904>,  <44.241966, 37.698399, 31.821598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268764, 38.077972, 31.944904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201458, -0.315461, 0.927307,
		0.977204, -0.000020, -0.212304,
		0.066992, 0.948939, 0.308266,
		44.288860, 38.362656, 32.037384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870380, 37.793922, 32.254639>,  <44.241966, 37.698399, 31.821598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870380, 37.793922, 32.254639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611309, 38.081287, 32.356148>,  <44.455868, 38.253708, 32.417053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611309, 38.081287, 32.356148>,  <44.870380, 37.793922, 32.254639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611309, 38.081287, 32.356148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180352, -0.179055, 0.967167,
		0.740264, 0.672179, -0.013597,
		-0.647675, 0.718411, 0.253776,
		44.417007, 38.296810, 32.432281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146576, 38.073280, 32.844002>,  <44.870380, 37.793922, 32.254639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146576, 38.073280, 32.844002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770885, 38.210136, 32.855236>,  <44.545471, 38.292248, 32.861977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770885, 38.210136, 32.855236>,  <45.146576, 38.073280, 32.844002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770885, 38.210136, 32.855236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015706, -0.124559, 0.992088,
		0.342927, 0.931358, 0.122363,
		-0.939231, 0.342136, 0.028087,
		44.489117, 38.312778, 32.863663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135578, 38.563656, 33.407650>,  <45.146576, 38.073280, 32.844002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135578, 38.563656, 33.407650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761086, 38.444576, 33.332977>,  <44.536392, 38.373127, 33.288174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761086, 38.444576, 33.332977>,  <45.135578, 38.563656, 33.407650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761086, 38.444576, 33.332977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149212, -0.144171, 0.978239,
		-0.318138, 0.943710, 0.090556,
		-0.936229, -0.297703, -0.186679,
		44.480217, 38.355267, 33.276974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870636, 38.669991, 34.040070>,  <45.135578, 38.563656, 33.407650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870636, 38.669991, 34.040070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586754, 38.436768, 33.881901>,  <44.416424, 38.296833, 33.786999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586754, 38.436768, 33.881901>,  <44.870636, 38.669991, 34.040070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586754, 38.436768, 33.881901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303479, -0.253509, 0.918495,
		-0.635778, 0.771866, 0.002972,
		-0.709709, -0.583057, -0.395421,
		44.373840, 38.261852, 33.763275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306049, 38.672367, 34.565868>,  <44.870636, 38.669991, 34.040070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306049, 38.672367, 34.565868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243732, 38.352150, 34.334400>,  <44.206341, 38.160019, 34.195518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243732, 38.352150, 34.334400>,  <44.306049, 38.672367, 34.565868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243732, 38.352150, 34.334400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356276, -0.500854, 0.788805,
		-0.921301, 0.329058, -0.207184,
		-0.155794, -0.800541, -0.578673,
		44.196995, 38.111988, 34.160797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747822, 38.392792, 34.904106>,  <44.306049, 38.672367, 34.565868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747822, 38.392792, 34.904106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.893532, 38.099064, 34.674992>,  <43.980957, 37.922829, 34.537525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.893532, 38.099064, 34.674992>,  <43.747822, 38.392792, 34.904106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893532, 38.099064, 34.674992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179960, -0.658953, 0.730339,
		-0.913737, -0.162969, -0.372191,
		0.364279, -0.734317, -0.572782,
		44.002815, 37.878769, 34.503159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192711, 37.839264, 34.829300>,  <43.747822, 38.392792, 34.904106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192711, 37.839264, 34.829300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550385, 37.665325, 34.786701>,  <43.764988, 37.560963, 34.761143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550385, 37.665325, 34.786701>,  <43.192711, 37.839264, 34.829300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550385, 37.665325, 34.786701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309427, -0.772187, 0.554961,
		-0.323556, -0.463286, -0.825032,
		0.894185, -0.434848, -0.106492,
		43.818642, 37.534870, 34.754753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986320, 37.115788, 34.779182>,  <43.192711, 37.839264, 34.829300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986320, 37.115788, 34.779182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378689, 37.070770, 34.842579>,  <43.614109, 37.043758, 34.880619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378689, 37.070770, 34.842579>,  <42.986320, 37.115788, 34.779182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378689, 37.070770, 34.842579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166069, -0.908964, 0.382369,
		0.101033, -0.401397, -0.910315,
		0.980925, -0.112544, 0.158495,
		43.672966, 37.037006, 34.890129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242893, 36.429901, 34.466351>,  <42.986320, 37.115788, 34.779182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242893, 36.429901, 34.466351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497372, 36.528728, 34.758709>,  <43.650059, 36.588024, 34.934124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497372, 36.528728, 34.758709>,  <43.242893, 36.429901, 34.466351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497372, 36.528728, 34.758709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213350, -0.854060, 0.474409,
		0.741443, -0.457754, -0.490636,
		0.636195, 0.247070, 0.730898,
		43.688229, 36.602848, 34.977978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591412, 35.797787, 34.596073>,  <43.242893, 36.429901, 34.466351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591412, 35.797787, 34.596073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654575, 36.026741, 34.917927>,  <43.692474, 36.164116, 35.111038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654575, 36.026741, 34.917927>,  <43.591412, 35.797787, 34.596073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654575, 36.026741, 34.917927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128986, -0.819831, 0.557888,
		0.978993, 0.015690, -0.203289,
		0.157910, 0.572390, 0.804633,
		43.701950, 36.198460, 35.159317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140900, 35.569736, 34.838833>,  <43.591412, 35.797787, 34.596073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140900, 35.569736, 34.838833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938438, 35.749775, 35.133102>,  <43.816963, 35.857800, 35.309666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938438, 35.749775, 35.133102>,  <44.140900, 35.569736, 34.838833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938438, 35.749775, 35.133102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026034, -0.844652, 0.534682,
		0.862052, 0.289783, 0.415804,
		-0.506152, 0.450098, 0.735678,
		43.786594, 35.884804, 35.353806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559219, 35.432514, 35.376614>,  <44.140900, 35.569736, 34.838833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559219, 35.432514, 35.376614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182461, 35.437389, 35.510887>,  <43.956406, 35.440315, 35.591454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182461, 35.437389, 35.510887>,  <44.559219, 35.432514, 35.376614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182461, 35.437389, 35.510887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190305, -0.804137, 0.563159,
		0.276801, 0.594319, 0.755093,
		-0.941894, 0.012185, 0.335688,
		43.899891, 35.441044, 35.611595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206291, 35.049873, 35.698208>,  <44.559219, 35.432514, 35.376614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206291, 35.049873, 35.698208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428570, 34.718098, 35.720932>,  <45.561939, 34.519032, 35.734566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428570, 34.718098, 35.720932>,  <45.206291, 35.049873, 35.698208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428570, 34.718098, 35.720932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717568, 0.443995, -0.536624,
		0.419876, 0.338963, 0.841907,
		0.555699, -0.829441, 0.056806,
		45.595280, 34.469265, 35.737972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796913, 35.104816, 36.160095>,  <45.206291, 35.049873, 35.698208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796913, 35.104816, 36.160095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836430, 34.985050, 35.780499>,  <45.860138, 34.913193, 35.552738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836430, 34.985050, 35.780499>,  <45.796913, 35.104816, 36.160095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836430, 34.985050, 35.780499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840599, 0.535500, -0.081450,
		0.532574, -0.789678, 0.304587,
		0.098787, -0.299414, -0.948995,
		45.866066, 34.895226, 35.495800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.484776, 34.774288, 35.965900>,  <45.796913, 35.104816, 36.160095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.484776, 34.774288, 35.965900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294884, 34.962383, 35.668308>,  <46.180946, 35.075241, 35.489754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294884, 34.962383, 35.668308>,  <46.484776, 34.774288, 35.965900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294884, 34.962383, 35.668308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825303, 0.531525, -0.190672,
		0.305781, -0.704526, -0.640423,
		-0.474734, 0.470239, -0.743978,
		46.152462, 35.103455, 35.445114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.946842, 34.746033, 35.324444>,  <46.484776, 34.774288, 35.965900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.946842, 34.746033, 35.324444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.344742, 34.724194, 35.359081>,  <47.583481, 34.711090, 35.379864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.344742, 34.724194, 35.359081>,  <46.946842, 34.746033, 35.324444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.344742, 34.724194, 35.359081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102273, 0.566805, -0.817479,
		-0.004452, 0.822041, 0.569411,
		0.994746, -0.054596, 0.086596,
		47.643166, 34.707813, 35.385059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.162937, 35.021664, 34.701164>,  <46.946842, 34.746033, 35.324444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.162937, 35.021664, 34.701164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.503933, 34.946827, 34.896412>,  <47.708530, 34.901924, 35.013561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.503933, 34.946827, 34.896412>,  <47.162937, 35.021664, 34.701164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.503933, 34.946827, 34.896412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519646, 0.404823, -0.752387,
		-0.056836, 0.895050, 0.442329,
		0.852489, -0.187091, 0.488118,
		47.759678, 34.890701, 35.042847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.471169, 32.886528, 45.838665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.080853, 32.890697, 45.926052>,  <35.846664, 32.893200, 45.978485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.080853, 32.890697, 45.926052>,  <36.471169, 32.886528, 45.838665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080853, 32.890697, 45.926052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217151, 0.073080, -0.973399,
		-0.026118, -0.997271, -0.069046,
		-0.975788, 0.010429, 0.218467,
		35.788116, 32.893826, 45.991592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187103, 32.608711, 45.233265>,  <36.471169, 32.886528, 45.838665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187103, 32.608711, 45.233265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859009, 32.746132, 45.416206>,  <35.662151, 32.828587, 45.525970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859009, 32.746132, 45.416206>,  <36.187103, 32.608711, 45.233265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859009, 32.746132, 45.416206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450296, 0.105269, -0.886652,
		-0.352761, -0.933213, 0.068356,
		-0.820240, 0.343557, 0.457357,
		35.612938, 32.849197, 45.553413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675797, 32.294155, 44.913147>,  <36.187103, 32.608711, 45.233265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675797, 32.294155, 44.913147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507114, 32.611717, 45.088367>,  <35.405907, 32.802254, 45.193501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507114, 32.611717, 45.088367>,  <35.675797, 32.294155, 44.913147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507114, 32.611717, 45.088367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584645, 0.131202, -0.800610,
		-0.693078, -0.593723, 0.408823,
		-0.421702, 0.793901, 0.438050,
		35.380604, 32.849888, 45.219784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032719, 32.265579, 44.571842>,  <35.675797, 32.294155, 44.913147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032719, 32.265579, 44.571842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052258, 32.639210, 44.713329>,  <35.063980, 32.863388, 44.798222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052258, 32.639210, 44.713329>,  <35.032719, 32.265579, 44.571842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052258, 32.639210, 44.713329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479008, 0.332665, -0.812333,
		-0.876451, -0.129757, 0.463678,
		0.048844, 0.934076, 0.353719,
		35.066910, 32.919434, 44.819447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341866, 32.591591, 44.528465>,  <35.032719, 32.265579, 44.571842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341866, 32.591591, 44.528465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.604858, 32.892841, 44.537552>,  <34.762653, 33.073593, 44.543003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.604858, 32.892841, 44.537552>,  <34.341866, 32.591591, 44.528465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604858, 32.892841, 44.537552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508676, 0.465920, -0.723994,
		-0.555844, 0.464457, 0.689432,
		0.657484, 0.753126, 0.022720,
		34.802105, 33.118778, 44.544369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958950, 33.243576, 44.504322>,  <34.341866, 32.591591, 44.528465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958950, 33.243576, 44.504322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318535, 33.334309, 44.354435>,  <34.534286, 33.388748, 44.264503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318535, 33.334309, 44.354435>,  <33.958950, 33.243576, 44.504322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318535, 33.334309, 44.354435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427260, 0.265612, -0.864233,
		-0.096503, 0.937016, 0.335690,
		0.898964, 0.226828, -0.374717,
		34.588223, 33.402359, 44.242020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864174, 33.749367, 43.866261>,  <33.958950, 33.243576, 44.504322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864174, 33.749367, 43.866261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.254646, 33.694706, 43.798847>,  <34.488930, 33.661907, 43.758400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.254646, 33.694706, 43.798847>,  <33.864174, 33.749367, 43.866261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254646, 33.694706, 43.798847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146074, 0.160439, -0.976177,
		0.160439, 0.977540, 0.136655,
		0.976177, -0.136655, -0.168534,
		34.547501, 33.653709, 43.748287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092445, 34.420158, 43.522171>,  <33.864174, 33.749367, 43.866261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092445, 34.420158, 43.522171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346745, 34.120205, 43.448956>,  <34.499325, 33.940235, 43.405025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346745, 34.120205, 43.448956>,  <34.092445, 34.420158, 43.522171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346745, 34.120205, 43.448956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114688, 0.142735, -0.983094,
		0.763328, 0.645994, 0.004741,
		0.635749, -0.749880, -0.183041,
		34.537468, 33.895241, 43.394043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531982, 34.698742, 43.083565>,  <34.092445, 34.420158, 43.522171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531982, 34.698742, 43.083565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.579899, 34.304825, 43.033226>,  <34.608646, 34.068474, 43.003025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.579899, 34.304825, 43.033226>,  <34.531982, 34.698742, 43.083565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579899, 34.304825, 43.033226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036871, 0.131082, -0.990686,
		0.992115, 0.114032, 0.052013,
		0.119788, -0.984791, -0.125844,
		34.615833, 34.009388, 42.995472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066830, 34.651260, 42.621449>,  <34.531982, 34.698742, 43.083565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066830, 34.651260, 42.621449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897980, 34.289314, 42.599400>,  <34.796669, 34.072147, 42.586170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897980, 34.289314, 42.599400>,  <35.066830, 34.651260, 42.621449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897980, 34.289314, 42.599400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021745, 0.050681, -0.998478,
		0.906277, -0.422680, -0.001718,
		-0.422124, -0.904861, -0.055122,
		34.771343, 34.017857, 42.582863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474686, 34.334133, 42.223904>,  <35.066830, 34.651260, 42.621449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474686, 34.334133, 42.223904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149998, 34.106121, 42.173016>,  <34.955185, 33.969315, 42.142483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149998, 34.106121, 42.173016>,  <35.474686, 34.334133, 42.223904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149998, 34.106121, 42.173016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190352, -0.052279, -0.980323,
		0.552159, -0.819962, 0.150942,
		-0.811718, -0.570026, -0.127216,
		34.906483, 33.935112, 42.134850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729050, 33.839928, 41.859943>,  <35.474686, 34.334133, 42.223904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729050, 33.839928, 41.859943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.338947, 33.813965, 41.775410>,  <35.104885, 33.798386, 41.724689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.338947, 33.813965, 41.775410>,  <35.729050, 33.839928, 41.859943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338947, 33.813965, 41.775410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220905, -0.323964, -0.919917,
		-0.008755, -0.943840, 0.330287,
		-0.975256, -0.064908, -0.211335,
		35.046371, 33.794491, 41.712009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739445, 33.325718, 41.328068>,  <35.729050, 33.839928, 41.859943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739445, 33.325718, 41.328068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371681, 33.481354, 41.305122>,  <35.151024, 33.574734, 41.291355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371681, 33.481354, 41.305122>,  <35.739445, 33.325718, 41.328068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371681, 33.481354, 41.305122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067428, -0.299640, -0.951667,
		-0.387475, -0.871105, 0.301728,
		-0.919411, 0.389092, -0.057366,
		35.095860, 33.598080, 41.287914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422493, 32.864983, 41.003155>,  <35.739445, 33.325718, 41.328068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422493, 32.864983, 41.003155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204250, 33.196411, 40.952923>,  <35.073303, 33.395267, 40.922783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204250, 33.196411, 40.952923>,  <35.422493, 32.864983, 41.003155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204250, 33.196411, 40.952923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080473, -0.097361, -0.991990,
		-0.834166, -0.551347, -0.013557,
		-0.545611, 0.828575, -0.125584,
		35.040565, 33.444984, 40.915249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883595, 32.732647, 40.500763>,  <35.422493, 32.864983, 41.003155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883595, 32.732647, 40.500763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.982239, 33.119858, 40.519096>,  <35.041428, 33.352184, 40.530098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.982239, 33.119858, 40.519096>,  <34.883595, 32.732647, 40.500763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982239, 33.119858, 40.519096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163513, 0.005053, -0.986528,
		-0.955220, 0.250786, -0.157040,
		0.246614, 0.968029, 0.045834,
		35.056225, 33.410267, 40.532845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559036, 32.992847, 39.894100>,  <34.883595, 32.732647, 40.500763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559036, 32.992847, 39.894100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.847744, 33.241329, 40.016182>,  <35.020969, 33.390419, 40.089432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.847744, 33.241329, 40.016182>,  <34.559036, 32.992847, 39.894100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847744, 33.241329, 40.016182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432883, -0.061086, -0.899378,
		-0.540056, 0.781262, -0.312999,
		0.721770, 0.621206, 0.305205,
		35.064274, 33.427692, 40.107742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659481, 33.471416, 39.374630>,  <34.559036, 32.992847, 39.894100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659481, 33.471416, 39.374630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004810, 33.500389, 39.574398>,  <35.212009, 33.517773, 39.694260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004810, 33.500389, 39.574398>,  <34.659481, 33.471416, 39.374630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004810, 33.500389, 39.574398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502920, -0.041706, -0.863326,
		-0.041706, 0.996501, -0.072435,
		0.863326, 0.072435, 0.499420,
		35.263809, 33.522121, 39.724224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030937, 33.976807, 39.082367>,  <34.659481, 33.471416, 39.374630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030937, 33.976807, 39.082367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.297180, 33.762352, 39.290028>,  <35.456924, 33.633678, 39.414623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.297180, 33.762352, 39.290028>,  <35.030937, 33.976807, 39.082367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297180, 33.762352, 39.290028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594235, -0.040111, -0.803291,
		0.451500, 0.843176, 0.291895,
		0.665607, -0.536139, 0.519155,
		35.496861, 33.601509, 39.445774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571808, 34.294891, 38.834148>,  <35.030937, 33.976807, 39.082367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571808, 34.294891, 38.834148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734131, 33.962791, 38.986992>,  <35.831524, 33.763531, 39.078697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734131, 33.962791, 38.986992>,  <35.571808, 34.294891, 38.834148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734131, 33.962791, 38.986992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599626, -0.073671, -0.796882,
		0.689762, 0.552501, 0.467944,
		0.405804, -0.830250, 0.382109,
		35.855873, 33.713715, 39.101624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234695, 34.405792, 38.685951>,  <35.571808, 34.294891, 38.834148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234695, 34.405792, 38.685951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231300, 34.015686, 38.774296>,  <36.229263, 33.781620, 38.827301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231300, 34.015686, 38.774296>,  <36.234695, 34.405792, 38.685951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231300, 34.015686, 38.774296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754569, -0.151177, -0.638570,
		0.656166, 0.161237, 0.737190,
		-0.008485, -0.975268, 0.220862,
		36.228756, 33.723106, 38.840553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941231, 34.191544, 38.620335>,  <36.234695, 34.405792, 38.685951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941231, 34.191544, 38.620335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717056, 33.861965, 38.586826>,  <36.582550, 33.664219, 38.566719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717056, 33.861965, 38.586826>,  <36.941231, 34.191544, 38.620335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717056, 33.861965, 38.586826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465503, -0.229729, -0.854712,
		0.684992, -0.518011, 0.512299,
		-0.560440, -0.823947, -0.083773,
		36.548923, 33.614780, 38.561695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468048, 33.626774, 38.363457>,  <36.941231, 34.191544, 38.620335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468048, 33.626774, 38.363457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078815, 33.548550, 38.314686>,  <36.845276, 33.501614, 38.285423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078815, 33.548550, 38.314686>,  <37.468048, 33.626774, 38.363457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078815, 33.548550, 38.314686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200755, -0.459478, -0.865204,
		0.113177, -0.866392, 0.486370,
		-0.973082, -0.195563, -0.121930,
		36.786892, 33.489880, 38.278107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598442, 32.997105, 37.887447>,  <37.468048, 33.626774, 38.363457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598442, 32.997105, 37.887447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944828, 33.122234, 37.731377>,  <38.152660, 33.197311, 37.637733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944828, 33.122234, 37.731377>,  <37.598442, 32.997105, 37.887447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944828, 33.122234, 37.731377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463516, -0.209142, 0.861053,
		0.187751, -0.926501, -0.326108,
		0.865969, 0.312820, -0.390182,
		38.204620, 33.216080, 37.614323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057453, 32.471161, 38.074402>,  <37.598442, 32.997105, 37.887447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057453, 32.471161, 38.074402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284317, 32.780769, 37.961819>,  <38.420437, 32.966534, 37.894268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284317, 32.780769, 37.961819>,  <38.057453, 32.471161, 38.074402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284317, 32.780769, 37.961819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515201, -0.066799, 0.854462,
		0.642572, -0.629623, -0.436664,
		0.567158, 0.774023, -0.281460,
		38.454464, 33.012978, 37.877380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676674, 32.313232, 38.400661>,  <38.057453, 32.471161, 38.074402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676674, 32.313232, 38.400661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727856, 32.687012, 38.267738>,  <38.758564, 32.911282, 38.187984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727856, 32.687012, 38.267738>,  <38.676674, 32.313232, 38.400661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727856, 32.687012, 38.267738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737557, 0.134348, 0.661786,
		0.663051, -0.329777, -0.672020,
		0.127957, 0.934451, -0.332309,
		38.766243, 32.967346, 38.168045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448612, 32.426014, 38.307461>,  <38.676674, 32.313232, 38.400661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448612, 32.426014, 38.307461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.268185, 32.781055, 38.344746>,  <39.159927, 32.994080, 38.367119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.268185, 32.781055, 38.344746>,  <39.448612, 32.426014, 38.307461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268185, 32.781055, 38.344746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547168, 0.192518, 0.814582,
		0.705082, 0.418441, -0.572510,
		-0.451073, 0.887606, 0.093217,
		39.132862, 33.047337, 38.372711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978500, 32.852722, 38.450352>,  <39.448612, 32.426014, 38.307461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978500, 32.852722, 38.450352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.639957, 32.993839, 38.609959>,  <39.436832, 33.078510, 38.705723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.639957, 32.993839, 38.609959>,  <39.978500, 32.852722, 38.450352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639957, 32.993839, 38.609959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457196, 0.096904, 0.884071,
		0.273227, 0.930670, -0.243311,
		-0.846356, 0.352793, 0.399022,
		39.386051, 33.099678, 38.729664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223633, 33.320179, 38.906982>,  <39.978500, 32.852722, 38.450352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223633, 33.320179, 38.906982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848476, 33.273235, 39.037579>,  <39.623383, 33.245068, 39.115936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848476, 33.273235, 39.037579>,  <40.223633, 33.320179, 38.906982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848476, 33.273235, 39.037579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296953, 0.215091, 0.930352,
		-0.179410, 0.969517, -0.166881,
		-0.937886, -0.117359, 0.326490,
		39.567112, 33.238029, 39.135525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152225, 33.845650, 39.490887>,  <40.223633, 33.320179, 38.906982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152225, 33.845650, 39.490887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859528, 33.577068, 39.537708>,  <39.683910, 33.415920, 39.565804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859528, 33.577068, 39.537708>,  <40.152225, 33.845650, 39.490887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859528, 33.577068, 39.537708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099080, 0.065126, 0.992946,
		-0.674342, 0.738178, 0.018872,
		-0.731742, -0.671455, 0.117056,
		39.640003, 33.375633, 39.572826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908699, 34.044079, 40.118359>,  <40.152225, 33.845650, 39.490887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908699, 34.044079, 40.118359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782551, 33.666241, 40.081951>,  <39.706860, 33.439537, 40.060108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.782551, 33.666241, 40.081951>,  <39.908699, 34.044079, 40.118359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782551, 33.666241, 40.081951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017033, -0.090263, 0.995772,
		-0.948815, 0.315590, 0.012377,
		-0.315373, -0.944593, -0.091018,
		39.687939, 33.382862, 40.054646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466843, 33.955673, 40.621441>,  <39.908699, 34.044079, 40.118359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466843, 33.955673, 40.621441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.504814, 33.569836, 40.523022>,  <39.527596, 33.338333, 40.463970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.504814, 33.569836, 40.523022>,  <39.466843, 33.955673, 40.621441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504814, 33.569836, 40.523022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314386, -0.263565, 0.911973,
		-0.944537, -0.009215, -0.328275,
		0.094926, -0.964598, -0.246050,
		39.533291, 33.280457, 40.449207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853634, 33.610840, 40.777309>,  <39.466843, 33.955673, 40.621441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853634, 33.610840, 40.777309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.143501, 33.335388, 40.787483>,  <39.317421, 33.170116, 40.793587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.143501, 33.335388, 40.787483>,  <38.853634, 33.610840, 40.777309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143501, 33.335388, 40.787483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359042, -0.345817, 0.866891,
		-0.588174, -0.637337, -0.497849,
		0.724666, -0.688631, 0.025430,
		39.360901, 33.128799, 40.795113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588036, 33.031647, 41.049625>,  <38.853634, 33.610840, 40.777309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588036, 33.031647, 41.049625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972576, 32.933132, 41.098843>,  <39.203300, 32.874023, 41.128372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972576, 32.933132, 41.098843>,  <38.588036, 33.031647, 41.049625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972576, 32.933132, 41.098843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192736, -0.282912, 0.939582,
		-0.196596, -0.926986, -0.319447,
		0.961354, -0.246287, 0.123044,
		39.260983, 32.859245, 41.135757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591202, 32.341003, 41.433491>,  <38.588036, 33.031647, 41.049625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591202, 32.341003, 41.433491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956066, 32.487461, 41.507130>,  <39.174984, 32.575336, 41.551315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956066, 32.487461, 41.507130>,  <38.591202, 32.341003, 41.433491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956066, 32.487461, 41.507130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083212, -0.274393, 0.958011,
		0.401290, -0.889182, -0.219823,
		0.912163, 0.366149, 0.184101,
		39.229713, 32.597305, 41.562359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026661, 31.888687, 41.847317>,  <38.591202, 32.341003, 41.433491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026661, 31.888687, 41.847317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155651, 32.261688, 41.912376>,  <39.233044, 32.485489, 41.951412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155651, 32.261688, 41.912376>,  <39.026661, 31.888687, 41.847317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155651, 32.261688, 41.912376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033849, -0.183075, 0.982516,
		0.945973, -0.311330, -0.090601,
		0.322473, 0.932501, 0.162645,
		39.252392, 32.541439, 41.961170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548019, 31.827660, 42.315968>,  <39.026661, 31.888687, 41.847317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548019, 31.827660, 42.315968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402153, 32.199699, 42.333580>,  <39.314632, 32.422924, 42.344147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402153, 32.199699, 42.333580>,  <39.548019, 31.827660, 42.315968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402153, 32.199699, 42.333580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032724, -0.034453, 0.998870,
		0.930564, 0.365693, -0.017873,
		-0.364664, 0.930098, 0.044028,
		39.292755, 32.478729, 42.346786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905567, 32.274151, 42.804142>,  <39.548019, 31.827660, 42.315968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905567, 32.274151, 42.804142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539654, 32.432602, 42.772526>,  <39.320107, 32.527672, 42.753555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539654, 32.432602, 42.772526>,  <39.905567, 32.274151, 42.804142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539654, 32.432602, 42.772526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013531, 0.165506, 0.986116,
		0.403709, 0.903156, -0.146043,
		-0.914787, 0.396128, -0.079036,
		39.265217, 32.551441, 42.748814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995384, 32.851509, 43.277622>,  <39.905567, 32.274151, 42.804142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995384, 32.851509, 43.277622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.609356, 32.771477, 43.209972>,  <39.377739, 32.723457, 43.169380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.609356, 32.771477, 43.209972>,  <39.995384, 32.851509, 43.277622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609356, 32.771477, 43.209972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221188, 0.276280, 0.935278,
		-0.140408, 0.940019, -0.310886,
		-0.965071, -0.200085, -0.169129,
		39.319836, 32.711452, 43.159233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589306, 33.383514, 43.643318>,  <39.995384, 32.851509, 43.277622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589306, 33.383514, 43.643318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333183, 33.082905, 43.579781>,  <39.179512, 32.902538, 43.541656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333183, 33.082905, 43.579781>,  <39.589306, 33.383514, 43.643318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333183, 33.082905, 43.579781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471236, 0.221023, 0.853865,
		-0.606589, 0.621584, -0.495665,
		-0.640302, -0.751520, -0.158843,
		39.141094, 32.857449, 43.532127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077236, 33.549824, 44.117603>,  <39.589306, 33.383514, 43.643318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077236, 33.549824, 44.117603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.977535, 33.177670, 44.010082>,  <38.917713, 32.954376, 43.945568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.977535, 33.177670, 44.010082>,  <39.077236, 33.549824, 44.117603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977535, 33.177670, 44.010082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247212, -0.207241, 0.946540,
		-0.936354, 0.302379, -0.178347,
		-0.249253, -0.930386, -0.268802,
		38.902760, 32.898552, 43.929443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.328899, 33.453995, 44.491192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478123, 33.095467, 44.395329>,  <38.567657, 32.880348, 44.337811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478123, 33.095467, 44.395329>,  <38.328899, 33.453995, 44.491192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478123, 33.095467, 44.395329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197553, -0.329120, 0.923392,
		-0.906532, -0.297134, -0.299852,
		0.373058, -0.896321, -0.239658,
		38.590038, 32.826569, 44.323433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786930, 32.950317, 44.682171>,  <38.328899, 33.453995, 44.491192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786930, 32.950317, 44.682171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158550, 32.802338, 44.681553>,  <38.381523, 32.713551, 44.681183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158550, 32.802338, 44.681553>,  <37.786930, 32.950317, 44.682171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158550, 32.802338, 44.681553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126736, -0.322195, 0.938152,
		-0.347578, -0.871390, -0.346221,
		0.929046, -0.369960, -0.001552,
		38.437263, 32.691353, 44.681087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714504, 32.346462, 44.973091>,  <37.786930, 32.950317, 44.682171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714504, 32.346462, 44.973091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112164, 32.370701, 45.008865>,  <38.350758, 32.385242, 45.030331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112164, 32.370701, 45.008865>,  <37.714504, 32.346462, 44.973091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112164, 32.370701, 45.008865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053616, -0.441969, 0.895427,
		0.093787, -0.894981, -0.436133,
		0.994147, 0.060595, 0.089436,
		38.410408, 32.388878, 45.035698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012554, 31.603447, 45.234921>,  <37.714504, 32.346462, 44.973091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012554, 31.603447, 45.234921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.231621, 31.921480, 45.339157>,  <38.363060, 32.112301, 45.401699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.231621, 31.921480, 45.339157>,  <38.012554, 31.603447, 45.234921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231621, 31.921480, 45.339157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118552, -0.382047, 0.916507,
		0.828255, -0.471047, -0.303493,
		0.547666, 0.795082, 0.260589,
		38.395920, 32.160004, 45.417336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412544, 31.352501, 45.669701>,  <38.012554, 31.603447, 45.234921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412544, 31.352501, 45.669701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451710, 31.739122, 45.764515>,  <38.475208, 31.971096, 45.821404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451710, 31.739122, 45.764515>,  <38.412544, 31.352501, 45.669701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451710, 31.739122, 45.764515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075741, -0.230251, 0.970179,
		0.992309, -0.112944, 0.050664,
		0.097911, 0.966555, 0.237035,
		38.481083, 32.029087, 45.835625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702114, 31.362162, 46.340282>,  <38.412544, 31.352501, 45.669701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702114, 31.362162, 46.340282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632175, 31.755348, 46.317642>,  <38.590210, 31.991261, 46.304058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632175, 31.755348, 46.317642>,  <38.702114, 31.362162, 46.340282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632175, 31.755348, 46.317642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003694, 0.056828, 0.998377,
		0.984588, 0.174776, -0.006306,
		-0.174850, 0.982967, -0.056598,
		38.579720, 32.050240, 46.300663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160172, 31.735281, 46.759838>,  <38.702114, 31.362162, 46.340282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160172, 31.735281, 46.759838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843727, 31.975719, 46.714527>,  <38.653862, 32.119984, 46.687340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843727, 31.975719, 46.714527>,  <39.160172, 31.735281, 46.759838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843727, 31.975719, 46.714527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071250, 0.093372, 0.993079,
		0.607510, 0.793705, -0.031039,
		-0.791110, 0.601094, -0.113276,
		38.606396, 32.156048, 46.680546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389778, 32.343052, 47.101940>,  <39.160172, 31.735281, 46.759838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389778, 32.343052, 47.101940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989990, 32.344231, 47.088966>,  <38.750118, 32.344940, 47.081184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989990, 32.344231, 47.088966>,  <39.389778, 32.343052, 47.101940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989990, 32.344231, 47.088966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031500, 0.165041, 0.985784,
		0.008261, 0.986282, -0.164860,
		-0.999470, 0.002951, -0.032431,
		38.690151, 32.345116, 47.079239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187363, 32.949379, 47.376579>,  <39.389778, 32.343052, 47.101940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187363, 32.949379, 47.376579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861938, 32.726475, 47.443008>,  <38.666683, 32.592731, 47.482864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861938, 32.726475, 47.443008>,  <39.187363, 32.949379, 47.376579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861938, 32.726475, 47.443008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169007, 0.046656, 0.984510,
		-0.556379, 0.829024, 0.056224,
		-0.813560, -0.557263, 0.166069,
		38.617870, 32.559296, 47.492828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014675, 33.066582, 48.063877>,  <39.187363, 32.949379, 47.376579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014675, 33.066582, 48.063877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.802498, 32.740166, 47.972034>,  <38.675194, 32.544315, 47.916931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.802498, 32.740166, 47.972034>,  <39.014675, 33.066582, 48.063877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802498, 32.740166, 47.972034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117278, -0.338886, 0.933489,
		-0.839570, 0.468233, 0.275462,
		-0.530441, -0.816036, -0.229605,
		38.643364, 32.495354, 47.903152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531044, 32.906132, 48.642731>,  <39.014675, 33.066582, 48.063877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531044, 32.906132, 48.642731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564075, 32.567371, 48.432613>,  <38.583893, 32.364117, 48.306541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564075, 32.567371, 48.432613>,  <38.531044, 32.906132, 48.642731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564075, 32.567371, 48.432613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155900, -0.509630, 0.846151,
		-0.984315, -0.151767, 0.089948,
		0.082577, -0.846903, -0.525297,
		38.588848, 32.313301, 48.275024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084957, 32.402596, 49.018425>,  <38.531044, 32.906132, 48.642731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084957, 32.402596, 49.018425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343521, 32.190708, 48.798767>,  <38.498657, 32.063576, 48.666973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343521, 32.190708, 48.798767>,  <38.084957, 32.402596, 49.018425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343521, 32.190708, 48.798767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102180, -0.653136, 0.750315,
		-0.756121, -0.541120, -0.368063,
		0.646406, -0.529720, -0.549141,
		38.537441, 32.031792, 48.634026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937923, 31.697748, 49.153454>,  <38.084957, 32.402596, 49.018425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937923, 31.697748, 49.153454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309208, 31.695601, 49.004646>,  <38.531979, 31.694311, 48.915363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309208, 31.695601, 49.004646>,  <37.937923, 31.697748, 49.153454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309208, 31.695601, 49.004646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289197, -0.618667, 0.730490,
		-0.234078, -0.785634, -0.572700,
		0.928209, -0.005369, -0.372019,
		38.587669, 31.693991, 48.893040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060272, 31.039459, 49.245495>,  <37.937923, 31.697748, 49.153454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060272, 31.039459, 49.245495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.409191, 31.228487, 49.195251>,  <38.618542, 31.341904, 49.165104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.409191, 31.228487, 49.195251>,  <38.060272, 31.039459, 49.245495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409191, 31.228487, 49.195251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447237, -0.667217, 0.595651,
		0.197677, -0.575761, -0.793362,
		0.872297, 0.472567, -0.125608,
		38.670879, 31.370256, 49.157570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528793, 30.517195, 49.284714>,  <38.060272, 31.039459, 49.245495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528793, 30.517195, 49.284714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749165, 30.844995, 49.347828>,  <38.881386, 31.041676, 49.385696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749165, 30.844995, 49.347828>,  <38.528793, 30.517195, 49.284714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749165, 30.844995, 49.347828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591761, -0.516917, 0.618559,
		0.588471, -0.247412, -0.769733,
		0.550927, 0.819502, 0.157782,
		38.914444, 31.090847, 49.395164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268234, 30.246822, 49.239162>,  <38.528793, 30.517195, 49.284714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268234, 30.246822, 49.239162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316833, 30.615240, 49.387173>,  <39.345993, 30.836290, 49.475979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316833, 30.615240, 49.387173>,  <39.268234, 30.246822, 49.239162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316833, 30.615240, 49.387173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552489, -0.372455, 0.745677,
		0.824617, 0.113832, -0.554120,
		0.121502, 0.921043, 0.370024,
		39.353283, 30.891554, 49.498180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999973, 30.308920, 49.325710>,  <39.268234, 30.246822, 49.239162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999973, 30.308920, 49.325710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796577, 30.558187, 49.563400>,  <39.674541, 30.707748, 49.706013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796577, 30.558187, 49.563400>,  <39.999973, 30.308920, 49.325710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796577, 30.558187, 49.563400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490725, -0.357337, 0.794670,
		0.707549, 0.695681, -0.124101,
		-0.508491, 0.623168, 0.594221,
		39.644032, 30.745138, 49.741665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464970, 30.673666, 49.742981>,  <39.999973, 30.308920, 49.325710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464970, 30.673666, 49.742981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.101231, 30.664501, 49.909142>,  <39.882988, 30.659002, 50.008839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.101231, 30.664501, 49.909142>,  <40.464970, 30.673666, 49.742981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101231, 30.664501, 49.909142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371572, -0.493821, 0.786178,
		0.187119, 0.869262, 0.457570,
		-0.909352, -0.022911, 0.415397,
		39.828426, 30.657627, 50.033760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562687, 31.012508, 50.443260>,  <40.464970, 30.673666, 49.742981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562687, 31.012508, 50.443260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.206722, 30.831377, 50.465160>,  <39.993141, 30.722698, 50.478302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.206722, 30.831377, 50.465160>,  <40.562687, 31.012508, 50.443260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206722, 30.831377, 50.465160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269022, -0.424143, 0.864713,
		-0.368346, 0.784250, 0.499272,
		-0.889915, -0.452829, 0.054749,
		39.939747, 30.695528, 50.481586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329262, 31.080376, 51.245941>,  <40.562687, 31.012508, 50.443260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329262, 31.080376, 51.245941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.151352, 30.763342, 51.079094>,  <40.044605, 30.573122, 50.978985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.151352, 30.763342, 51.079094>,  <40.329262, 31.080376, 51.245941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151352, 30.763342, 51.079094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136303, -0.520192, 0.843102,
		-0.885208, 0.318140, 0.339402,
		-0.444778, -0.792583, -0.417115,
		40.017918, 30.525568, 50.953960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037643, 30.771370, 51.817181>,  <40.329262, 31.080376, 51.245941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037643, 30.771370, 51.817181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.029778, 30.490314, 51.532673>,  <40.025059, 30.321680, 51.361969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.029778, 30.490314, 51.532673>,  <40.037643, 30.771370, 51.817181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029778, 30.490314, 51.532673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270601, -0.688598, 0.672761,
		-0.962491, -0.179244, 0.203675,
		-0.019662, -0.702641, -0.711273,
		40.023880, 30.279522, 51.319290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550270, 30.226793, 52.049122>,  <40.037643, 30.771370, 51.817181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550270, 30.226793, 52.049122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777393, 30.058033, 51.766392>,  <39.913666, 29.956778, 51.596756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777393, 30.058033, 51.766392>,  <39.550270, 30.226793, 52.049122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777393, 30.058033, 51.766392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179243, -0.774694, 0.606401,
		-0.803414, -0.471008, -0.364249,
		0.567801, -0.421902, -0.706824,
		39.947735, 29.931463, 51.554344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287792, 29.635389, 52.054306>,  <39.550270, 30.226793, 52.049122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287792, 29.635389, 52.054306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.659500, 29.606567, 51.909386>,  <39.882526, 29.589275, 51.822433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.659500, 29.606567, 51.909386>,  <39.287792, 29.635389, 52.054306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659500, 29.606567, 51.909386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150770, -0.821396, 0.550070,
		-0.337228, -0.565788, -0.752437,
		0.929272, -0.072054, -0.362301,
		39.938282, 29.584951, 51.800694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651257, 29.306629, 51.943245>,  <39.287792, 29.635389, 52.054306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651257, 29.306629, 51.943245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524677, 29.686073, 51.943089>,  <38.448730, 29.913740, 51.942997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524677, 29.686073, 51.943089>,  <38.651257, 29.306629, 51.943245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524677, 29.686073, 51.943089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569364, 0.190259, 0.799767,
		0.758741, 0.252863, -0.600311,
		-0.316446, 0.948611, -0.000386,
		38.429745, 29.970657, 51.942974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204334, 29.129642, 52.521805>,  <38.651257, 29.306629, 51.943245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204334, 29.129642, 52.521805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.844238, 28.962378, 52.570332>,  <37.628181, 28.862019, 52.599445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.844238, 28.962378, 52.570332>,  <38.204334, 29.129642, 52.521805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844238, 28.962378, 52.570332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300773, 0.395788, -0.867691,
		0.314815, -0.817616, -0.482073,
		-0.900237, -0.418157, 0.121317,
		37.574169, 28.836929, 52.606728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016300, 28.735443, 51.849136>,  <38.204334, 29.129642, 52.521805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016300, 28.735443, 51.849136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692486, 28.829689, 52.064224>,  <37.498199, 28.886236, 52.193275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692486, 28.829689, 52.064224>,  <38.016300, 28.735443, 51.849136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692486, 28.829689, 52.064224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393830, 0.461310, -0.795041,
		-0.435382, -0.855382, -0.280652,
		-0.809531, 0.235617, 0.537721,
		37.449627, 28.900373, 52.225540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435326, 28.568888, 51.422295>,  <38.016300, 28.735443, 51.849136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435326, 28.568888, 51.422295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298969, 28.820740, 51.701538>,  <37.217155, 28.971851, 51.869083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298969, 28.820740, 51.701538>,  <37.435326, 28.568888, 51.422295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298969, 28.820740, 51.701538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477419, 0.523761, -0.705511,
		-0.809853, -0.573796, 0.122050,
		-0.340894, 0.629629, 0.698110,
		37.196701, 29.009628, 51.910973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766117, 28.615780, 51.326477>,  <37.435326, 28.568888, 51.422295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766117, 28.615780, 51.326477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808392, 28.954782, 51.534542>,  <36.833755, 29.158184, 51.659382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808392, 28.954782, 51.534542>,  <36.766117, 28.615780, 51.326477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808392, 28.954782, 51.534542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704119, 0.433148, -0.562671,
		-0.702172, -0.306787, 0.642523,
		0.105688, 0.847505, 0.520159,
		36.840099, 29.209034, 51.690590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072701, 28.829170, 51.438961>,  <36.766117, 28.615780, 51.326477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072701, 28.829170, 51.438961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337196, 29.126537, 51.479149>,  <36.495895, 29.304956, 51.503262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337196, 29.126537, 51.479149>,  <36.072701, 28.829170, 51.438961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337196, 29.126537, 51.479149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524220, 0.553710, -0.646992,
		-0.536614, 0.375151, 0.755849,
		0.661241, 0.743416, 0.100467,
		36.535568, 29.349562, 51.509289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674255, 29.386217, 51.152351>,  <36.072701, 28.829170, 51.438961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674255, 29.386217, 51.152351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.020424, 29.578339, 51.209419>,  <36.228127, 29.693611, 51.243660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.020424, 29.578339, 51.209419>,  <35.674255, 29.386217, 51.152351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020424, 29.578339, 51.209419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258461, 0.671876, -0.694103,
		-0.429238, 0.563816, 0.705596,
		0.865420, 0.480305, 0.142671,
		36.280048, 29.722429, 51.252220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595863, 30.099911, 51.115589>,  <35.674255, 29.386217, 51.152351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595863, 30.099911, 51.115589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983742, 30.050047, 51.031551>,  <36.216469, 30.020128, 50.981129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983742, 30.050047, 51.031551>,  <35.595863, 30.099911, 51.115589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983742, 30.050047, 51.031551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076661, 0.661294, -0.746199,
		0.231959, 0.739695, 0.631701,
		0.969700, -0.124661, -0.210099,
		36.274651, 30.012650, 50.968521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869064, 30.793989, 51.068447>,  <35.595863, 30.099911, 51.115589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869064, 30.793989, 51.068447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085350, 30.530355, 50.859360>,  <36.215122, 30.372175, 50.733906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085350, 30.530355, 50.859360>,  <35.869064, 30.793989, 51.068447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085350, 30.530355, 50.859360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049350, 0.595466, -0.801863,
		0.839757, 0.459375, 0.289452,
		0.540715, -0.659086, -0.522717,
		36.247566, 30.332630, 50.702545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197838, 31.238922, 50.664940>,  <35.869064, 30.793989, 51.068447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197838, 31.238922, 50.664940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290283, 30.895864, 50.481190>,  <36.345753, 30.690029, 50.370937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290283, 30.895864, 50.481190>,  <36.197838, 31.238922, 50.664940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290283, 30.895864, 50.481190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027751, 0.466157, -0.884266,
		0.972530, 0.217118, 0.083936,
		0.231118, -0.857646, -0.459377,
		36.359619, 30.638571, 50.343376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825863, 31.311398, 50.323135>,  <36.197838, 31.238922, 50.664940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825863, 31.311398, 50.323135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634274, 31.008524, 50.145485>,  <36.519318, 30.826799, 50.038895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634274, 31.008524, 50.145485>,  <36.825863, 31.311398, 50.323135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634274, 31.008524, 50.145485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050782, 0.481193, -0.875142,
		0.876358, -0.441726, -0.192028,
		-0.478976, -0.757186, -0.444129,
		36.490582, 30.781368, 50.012245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138012, 31.238531, 49.734463>,  <36.825863, 31.311398, 50.323135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138012, 31.238531, 49.734463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790081, 31.059395, 49.651665>,  <36.581322, 30.951912, 49.601986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790081, 31.059395, 49.651665>,  <37.138012, 31.238531, 49.734463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790081, 31.059395, 49.651665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051301, 0.499378, -0.864864,
		0.490679, -0.741666, -0.457347,
		-0.869829, -0.447833, -0.206986,
		36.529133, 30.925043, 49.589569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181244, 30.901814, 49.008224>,  <37.138012, 31.238531, 49.734463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181244, 30.901814, 49.008224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796223, 30.977318, 49.086060>,  <36.565208, 31.022621, 49.132759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796223, 30.977318, 49.086060>,  <37.181244, 30.901814, 49.008224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796223, 30.977318, 49.086060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098208, 0.426227, -0.899270,
		-0.252686, -0.884703, -0.391727,
		-0.962551, 0.188762, 0.194586,
		36.507458, 31.033947, 49.144436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809124, 30.740871, 48.397263>,  <37.181244, 30.901814, 49.008224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809124, 30.740871, 48.397263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522324, 30.948105, 48.583809>,  <36.350243, 31.072445, 48.695736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522324, 30.948105, 48.583809>,  <36.809124, 30.740871, 48.397263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522324, 30.948105, 48.583809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286083, 0.391395, -0.874624,
		-0.635661, -0.760527, -0.132416,
		-0.717002, 0.518083, 0.466368,
		36.307224, 31.103529, 48.723721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170158, 30.664120, 47.991753>,  <36.809124, 30.740871, 48.397263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170158, 30.664120, 47.991753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144436, 31.001793, 48.204624>,  <36.129002, 31.204397, 48.332348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144436, 31.001793, 48.204624>,  <36.170158, 30.664120, 47.991753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144436, 31.001793, 48.204624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118223, 0.523086, -0.844040,
		-0.990903, -0.117191, 0.066166,
		-0.064303, 0.844184, 0.532182,
		36.125145, 31.255049, 48.364281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626820, 31.016670, 47.682800>,  <36.170158, 30.664120, 47.991753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626820, 31.016670, 47.682800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814381, 31.303854, 47.888580>,  <35.926918, 31.476164, 48.012051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814381, 31.303854, 47.888580>,  <35.626820, 31.016670, 47.682800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814381, 31.303854, 47.888580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156958, 0.640917, -0.751392,
		-0.869192, 0.271583, 0.413218,
		0.468903, 0.717961, 0.514453,
		35.955051, 31.519243, 48.042915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185490, 31.517780, 47.781593>,  <35.626820, 31.016670, 47.682800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185490, 31.517780, 47.781593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536301, 31.702885, 47.833244>,  <35.746788, 31.813948, 47.864235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536301, 31.702885, 47.833244>,  <35.185490, 31.517780, 47.781593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536301, 31.702885, 47.833244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327389, 0.772359, -0.544314,
		-0.351620, 0.435104, 0.828883,
		0.877029, 0.462759, 0.129129,
		35.799408, 31.841713, 47.871983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027275, 32.250389, 47.897522>,  <35.185490, 31.517780, 47.781593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027275, 32.250389, 47.897522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388954, 32.238411, 47.727100>,  <35.605961, 32.231224, 47.624847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388954, 32.238411, 47.727100>,  <35.027275, 32.250389, 47.897522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388954, 32.238411, 47.727100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271952, 0.728824, -0.628377,
		0.329340, 0.684046, 0.650858,
		0.904200, -0.029947, -0.426059,
		35.660213, 32.229427, 47.599281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367760, 32.971180, 47.878139>,  <35.027275, 32.250389, 47.897522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367760, 32.971180, 47.878139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541573, 32.747822, 47.595470>,  <35.645859, 32.613808, 47.425869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541573, 32.747822, 47.595470>,  <35.367760, 32.971180, 47.878139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541573, 32.747822, 47.595470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247169, 0.680559, -0.689744,
		0.866078, 0.474381, 0.157706,
		0.434530, -0.558392, -0.706669,
		35.671932, 32.580303, 47.383469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772537, 33.364273, 47.415012>,  <35.367760, 32.971180, 47.878139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772537, 33.364273, 47.415012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658375, 33.054588, 47.189041>,  <35.589878, 32.868778, 47.053459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658375, 33.054588, 47.189041>,  <35.772537, 33.364273, 47.415012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658375, 33.054588, 47.189041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285820, 0.631377, -0.720881,
		0.914797, -0.044273, -0.401481,
		-0.285402, -0.774211, -0.564928,
		35.572754, 32.822327, 47.019562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956982, 33.637768, 46.730251>,  <35.772537, 33.364273, 47.415012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956982, 33.637768, 46.730251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.757477, 33.302258, 46.642891>,  <35.637772, 33.100952, 46.590477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.757477, 33.302258, 46.642891>,  <35.956982, 33.637768, 46.730251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757477, 33.302258, 46.642891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253203, 0.381989, -0.888804,
		0.828929, -0.388004, -0.402902,
		-0.498764, -0.838771, -0.218398,
		35.607849, 33.050625, 46.577370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.825508, 36.406944, 28.724733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.709568, 36.075417, 28.533297>,  <46.640003, 35.876499, 28.418434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.709568, 36.075417, 28.533297>,  <46.825508, 36.406944, 28.724733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.709568, 36.075417, 28.533297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688943, -0.166420, 0.705452,
		-0.664337, 0.534198, -0.522770,
		-0.289852, -0.828816, -0.478591,
		46.622612, 35.826771, 28.389719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087669, 36.395107, 28.749243>,  <46.825508, 36.406944, 28.724733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087669, 36.395107, 28.749243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223011, 36.021564, 28.702879>,  <46.304214, 35.797440, 28.675060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223011, 36.021564, 28.702879>,  <46.087669, 36.395107, 28.749243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223011, 36.021564, 28.702879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577710, -0.303369, 0.757772,
		-0.742812, -0.189428, -0.642142,
		0.338349, -0.933854, -0.115911,
		46.324516, 35.741409, 28.668106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500996, 36.074165, 28.752710>,  <46.087669, 36.395107, 28.749243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500996, 36.074165, 28.752710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.769070, 35.788654, 28.834078>,  <45.929913, 35.617348, 28.882898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.769070, 35.788654, 28.834078>,  <45.500996, 36.074165, 28.752710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769070, 35.788654, 28.834078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525315, -0.262573, 0.809382,
		-0.524304, -0.649294, -0.550929,
		0.670186, -0.713773, 0.203416,
		45.970127, 35.574524, 28.895103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151722, 35.533352, 28.924353>,  <45.500996, 36.074165, 28.752710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151722, 35.533352, 28.924353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.498650, 35.453564, 29.106766>,  <45.706806, 35.405689, 29.216213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.498650, 35.453564, 29.106766>,  <45.151722, 35.533352, 28.924353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498650, 35.453564, 29.106766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497492, -0.376807, 0.781356,
		0.015977, -0.904559, -0.426049,
		0.867321, -0.199473, 0.456031,
		45.758846, 35.393723, 29.243574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996914, 34.926228, 29.162668>,  <45.151722, 35.533352, 28.924353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996914, 34.926228, 29.162668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313011, 35.049648, 29.374443>,  <45.502670, 35.123703, 29.501509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313011, 35.049648, 29.374443>,  <44.996914, 34.926228, 29.162668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313011, 35.049648, 29.374443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457932, -0.276754, 0.844811,
		0.407195, -0.910055, -0.077407,
		0.790247, 0.308556, 0.529437,
		45.550087, 35.142216, 29.533274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098206, 34.401371, 29.712982>,  <44.996914, 34.926228, 29.162668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098206, 34.401371, 29.712982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293060, 34.724640, 29.845377>,  <45.409973, 34.918602, 29.924814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293060, 34.724640, 29.845377>,  <45.098206, 34.401371, 29.712982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293060, 34.724640, 29.845377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362606, -0.157611, 0.918518,
		0.794490, -0.567462, 0.216270,
		0.487138, 0.808174, 0.330986,
		45.439201, 34.967091, 29.944674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379478, 34.106869, 30.272991>,  <45.098206, 34.401371, 29.712982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379478, 34.106869, 30.272991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.350029, 34.503681, 30.313887>,  <45.332359, 34.741768, 30.338425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.350029, 34.503681, 30.313887>,  <45.379478, 34.106869, 30.272991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350029, 34.503681, 30.313887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349320, -0.121676, 0.929070,
		0.934106, 0.032689, 0.355495,
		-0.073626, 0.992032, 0.102239,
		45.327942, 34.801292, 30.344559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376171, 34.231541, 30.994633>,  <45.379478, 34.106869, 30.272991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376171, 34.231541, 30.994633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.249302, 34.578972, 30.842333>,  <45.173180, 34.787430, 30.750952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.249302, 34.578972, 30.842333>,  <45.376171, 34.231541, 30.994633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249302, 34.578972, 30.842333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615491, 0.116917, 0.779423,
		0.721508, 0.481559, 0.497521,
		-0.317170, 0.868580, -0.380752,
		45.154152, 34.839546, 30.728107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446655, 34.697613, 31.547409>,  <45.376171, 34.231541, 30.994633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446655, 34.697613, 31.547409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.202717, 34.873959, 31.283978>,  <45.056355, 34.979767, 31.125919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.202717, 34.873959, 31.283978>,  <45.446655, 34.697613, 31.547409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202717, 34.873959, 31.283978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652286, 0.192757, 0.733054,
		0.450126, 0.876630, 0.170021,
		-0.609844, 0.440869, -0.658578,
		45.019764, 35.006218, 31.086405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207172, 35.282688, 31.806993>,  <45.446655, 34.697613, 31.547409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207172, 35.282688, 31.806993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927071, 35.238132, 31.524933>,  <44.759010, 35.211399, 31.355698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927071, 35.238132, 31.524933>,  <45.207172, 35.282688, 31.806993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927071, 35.238132, 31.524933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669831, 0.444159, 0.595020,
		0.246920, 0.888997, -0.385637,
		-0.700255, -0.111390, -0.705150,
		44.716995, 35.204716, 31.313389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831150, 35.942574, 31.787884>,  <45.207172, 35.282688, 31.806993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831150, 35.942574, 31.787884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.590714, 35.646198, 31.668085>,  <44.446449, 35.468372, 31.596207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.590714, 35.646198, 31.668085>,  <44.831150, 35.942574, 31.787884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590714, 35.646198, 31.668085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707689, 0.319380, 0.630217,
		-0.371298, 0.590769, -0.716330,
		-0.601094, -0.740937, -0.299495,
		44.410385, 35.423916, 31.578236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194313, 36.195633, 31.877447>,  <44.831150, 35.942574, 31.787884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194313, 36.195633, 31.877447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097744, 35.810345, 31.830240>,  <44.039803, 35.579174, 31.801916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097744, 35.810345, 31.830240>,  <44.194313, 36.195633, 31.877447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097744, 35.810345, 31.830240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692083, 0.085650, 0.716719,
		-0.680248, 0.254709, -0.687304,
		-0.241422, -0.963217, -0.118017,
		44.025318, 35.521381, 31.794836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457088, 36.215977, 31.883856>,  <44.194313, 36.195633, 31.877447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457088, 36.215977, 31.883856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545837, 35.828571, 31.929035>,  <43.599087, 35.596130, 31.956142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545837, 35.828571, 31.929035>,  <43.457088, 36.215977, 31.883856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545837, 35.828571, 31.929035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764374, -0.100842, 0.636838,
		-0.605395, -0.227633, -0.762679,
		0.221875, -0.968511, 0.112948,
		43.612400, 35.538017, 31.962919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856995, 35.850533, 31.785397>,  <43.457088, 36.215977, 31.883856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856995, 35.850533, 31.785397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080963, 35.602837, 32.005592>,  <43.215343, 35.454220, 32.137711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080963, 35.602837, 32.005592>,  <42.856995, 35.850533, 31.785397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080963, 35.602837, 32.005592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706792, -0.010270, 0.707347,
		-0.432363, -0.785136, -0.443423,
		0.559917, -0.619239, 0.550487,
		43.248940, 35.417065, 32.170738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435371, 35.246067, 31.923847>,  <42.856995, 35.850533, 31.785397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435371, 35.246067, 31.923847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721310, 35.291729, 32.199810>,  <42.892872, 35.319126, 32.365387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721310, 35.291729, 32.199810>,  <42.435371, 35.246067, 31.923847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721310, 35.291729, 32.199810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699237, 0.105038, 0.707132,
		0.008253, -0.987895, 0.154904,
		0.714842, 0.114151, 0.689906,
		42.935764, 35.325974, 32.406780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298557, 34.703712, 32.474514>,  <42.435371, 35.246067, 31.923847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298557, 34.703712, 32.474514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514500, 34.991409, 32.649441>,  <42.644066, 35.164028, 32.754395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514500, 34.991409, 32.649441>,  <42.298557, 34.703712, 32.474514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514500, 34.991409, 32.649441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588914, -0.048478, 0.806741,
		0.601441, -0.693067, 0.397399,
		0.539860, 0.719241, 0.437314,
		42.676456, 35.207180, 32.780636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275795, 34.489613, 33.142475>,  <42.298557, 34.703712, 32.474514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275795, 34.489613, 33.142475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452324, 34.845314, 33.190590>,  <42.558243, 35.058735, 33.219460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452324, 34.845314, 33.190590>,  <42.275795, 34.489613, 33.142475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452324, 34.845314, 33.190590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502183, 0.133656, 0.854370,
		0.743672, -0.437458, 0.505552,
		0.441321, 0.889251, 0.120288,
		42.584721, 35.112091, 33.226677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427269, 34.541924, 33.831219>,  <42.275795, 34.489613, 33.142475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427269, 34.541924, 33.831219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.426128, 34.918015, 33.695011>,  <42.425442, 35.143669, 33.613285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.426128, 34.918015, 33.695011>,  <42.427269, 34.541924, 33.831219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426128, 34.918015, 33.695011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678383, 0.248364, 0.691456,
		0.734703, 0.232978, 0.637128,
		-0.002854, 0.940232, -0.340522,
		42.425274, 35.200085, 33.592854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555080, 34.943398, 34.476158>,  <42.427269, 34.541924, 33.831219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555080, 34.943398, 34.476158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.419189, 35.188900, 34.191093>,  <42.337654, 35.336201, 34.020054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.419189, 35.188900, 34.191093>,  <42.555080, 34.943398, 34.476158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419189, 35.188900, 34.191093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583827, 0.456451, 0.671416,
		0.737381, 0.644170, 0.203260,
		-0.339727, 0.613758, -0.712662,
		42.317272, 35.373028, 33.977295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701416, 35.609619, 34.648682>,  <42.555080, 34.943398, 34.476158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701416, 35.609619, 34.648682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380405, 35.614605, 34.410088>,  <42.187798, 35.617596, 34.266930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380405, 35.614605, 34.410088>,  <42.701416, 35.609619, 34.648682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380405, 35.614605, 34.410088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485163, 0.568238, 0.664622,
		0.347230, 0.822770, -0.449979,
		-0.802526, 0.012463, -0.596487,
		42.139648, 35.618343, 34.231140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399864, 36.326038, 34.731941>,  <42.701416, 35.609619, 34.648682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399864, 36.326038, 34.731941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111374, 36.086452, 34.592758>,  <41.938278, 35.942703, 34.509251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111374, 36.086452, 34.592758>,  <42.399864, 36.326038, 34.731941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111374, 36.086452, 34.592758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588775, 0.265444, 0.763468,
		-0.364926, 0.755503, -0.544100,
		-0.721230, -0.598962, -0.347954,
		41.895004, 35.906765, 34.488373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469025, 36.278637, 35.397633>,  <42.399864, 36.326038, 34.731941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469025, 36.278637, 35.397633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.329746, 36.618923, 35.240135>,  <42.246178, 36.823093, 35.145638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.329746, 36.618923, 35.240135>,  <42.469025, 36.278637, 35.397633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329746, 36.618923, 35.240135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295400, -0.498210, -0.815185,
		-0.889660, -0.167534, 0.424778,
		-0.348200, 0.850717, -0.393748,
		42.225285, 36.874138, 35.122009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971462, 35.863312, 35.715401>,  <42.469025, 36.278637, 35.397633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971462, 35.863312, 35.715401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350704, 35.806129, 35.829002>,  <43.578251, 35.771820, 35.897163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350704, 35.806129, 35.829002>,  <42.971462, 35.863312, 35.715401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350704, 35.806129, 35.829002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247860, 0.891774, -0.378555,
		-0.199154, 0.429304, 0.880929,
		0.948105, -0.142956, 0.284008,
		43.635136, 35.763241, 35.914204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149754, 36.472191, 36.263229>,  <42.971462, 35.863312, 35.715401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149754, 36.472191, 36.263229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.384136, 36.301418, 35.987728>,  <43.524765, 36.198956, 35.822426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.384136, 36.301418, 35.987728>,  <43.149754, 36.472191, 36.263229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384136, 36.301418, 35.987728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050277, 0.867471, -0.494941,
		0.808780, 0.255386, 0.529766,
		0.585958, -0.426934, -0.688753,
		43.559925, 36.173340, 35.781101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849998, 36.932384, 36.234287>,  <43.149754, 36.472191, 36.263229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849998, 36.932384, 36.234287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852398, 36.684891, 35.920059>,  <43.853836, 36.536392, 35.731522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852398, 36.684891, 35.920059>,  <43.849998, 36.932384, 36.234287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852398, 36.684891, 35.920059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476074, 0.692614, -0.541885,
		0.879385, -0.370740, 0.298721,
		0.006000, -0.618738, -0.785574,
		43.854198, 36.499268, 35.684387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502129, 37.072605, 35.863335>,  <43.849998, 36.932384, 36.234287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502129, 37.072605, 35.863335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.260735, 36.917084, 35.584869>,  <44.115898, 36.823769, 35.417789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.260735, 36.917084, 35.584869>,  <44.502129, 37.072605, 35.863335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260735, 36.917084, 35.584869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346153, 0.658761, -0.667991,
		0.718323, -0.644097, -0.262963,
		-0.603481, -0.388808, -0.696160,
		44.079689, 36.800442, 35.376022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926956, 36.945812, 35.193081>,  <44.502129, 37.072605, 35.863335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926956, 36.945812, 35.193081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543526, 36.975464, 35.083069>,  <44.313469, 36.993256, 35.017059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543526, 36.975464, 35.083069>,  <44.926956, 36.945812, 35.193081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543526, 36.975464, 35.083069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258251, 0.633559, -0.729321,
		0.120189, -0.770135, -0.626456,
		-0.958572, 0.074127, -0.275034,
		44.255955, 36.997704, 35.000557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965633, 36.904163, 34.500317>,  <44.926956, 36.945812, 35.193081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965633, 36.904163, 34.500317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.619076, 37.087257, 34.580147>,  <44.411140, 37.197113, 34.628044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.619076, 37.087257, 34.580147>,  <44.965633, 36.904163, 34.500317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619076, 37.087257, 34.580147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116704, 0.574214, -0.810345,
		-0.485528, -0.678788, -0.550917,
		-0.866396, 0.457739, 0.199580,
		44.359158, 37.224579, 34.640022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471848, 36.903511, 33.812332>,  <44.965633, 36.904163, 34.500317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471848, 36.903511, 33.812332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.315636, 37.208260, 34.019039>,  <44.221909, 37.391109, 34.143063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.315636, 37.208260, 34.019039>,  <44.471848, 36.903511, 33.812332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315636, 37.208260, 34.019039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027143, 0.551565, -0.833690,
		-0.920191, -0.339605, -0.194721,
		-0.390526, 0.761869, 0.516764,
		44.198479, 37.436821, 34.174068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938412, 37.067966, 33.417427>,  <44.471848, 36.903511, 33.812332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938412, 37.067966, 33.417427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038761, 37.380756, 33.645664>,  <44.098972, 37.568432, 33.782608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038761, 37.380756, 33.645664>,  <43.938412, 37.067966, 33.417427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038761, 37.380756, 33.645664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137105, 0.612208, -0.778719,
		-0.958261, 0.117128, 0.260799,
		0.250873, 0.781973, 0.570597,
		44.114021, 37.615349, 33.816845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411327, 37.568523, 33.335514>,  <43.938412, 37.067966, 33.417427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411327, 37.568523, 33.335514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.731251, 37.782730, 33.443974>,  <43.923206, 37.911255, 33.509048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.731251, 37.782730, 33.443974>,  <43.411327, 37.568523, 33.335514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731251, 37.782730, 33.443974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058875, 0.519537, -0.852417,
		-0.597361, 0.665806, 0.447059,
		0.799808, 0.535521, 0.271152,
		43.971191, 37.943386, 33.525318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206303, 38.149342, 33.082985>,  <43.411327, 37.568523, 33.335514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206303, 38.149342, 33.082985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.596775, 38.212112, 33.142918>,  <43.831059, 38.249775, 33.178879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.596775, 38.212112, 33.142918>,  <43.206303, 38.149342, 33.082985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596775, 38.212112, 33.142918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049916, 0.509615, -0.858954,
		-0.211155, 0.845970, 0.489641,
		0.976177, 0.156931, 0.149835,
		43.889629, 38.259193, 33.187866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373417, 38.919121, 33.003689>,  <43.206303, 38.149342, 33.082985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373417, 38.919121, 33.003689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721153, 38.725655, 32.963058>,  <43.929794, 38.609573, 32.938679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721153, 38.725655, 32.963058>,  <43.373417, 38.919121, 33.003689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721153, 38.725655, 32.963058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209575, 0.546910, -0.810536,
		0.447584, 0.683341, 0.576814,
		0.869337, -0.483669, -0.101576,
		43.981953, 38.580555, 32.932587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859993, 39.375145, 32.839622>,  <43.373417, 38.919121, 33.003689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859993, 39.375145, 32.839622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022942, 39.031376, 32.716045>,  <44.120712, 38.825115, 32.641899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022942, 39.031376, 32.716045>,  <43.859993, 39.375145, 32.839622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022942, 39.031376, 32.716045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192414, 0.411461, -0.890886,
		0.892763, 0.303477, 0.332982,
		0.407372, -0.859419, -0.308944,
		44.145153, 38.773552, 32.623363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414005, 39.574715, 32.504330>,  <43.859993, 39.375145, 32.839622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414005, 39.574715, 32.504330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378937, 39.201496, 32.364769>,  <44.357895, 38.977566, 32.281033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378937, 39.201496, 32.364769>,  <44.414005, 39.574715, 32.504330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378937, 39.201496, 32.364769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298179, 0.309610, -0.902901,
		0.950475, -0.183197, 0.251071,
		-0.087674, -0.933049, -0.348902,
		44.352634, 38.921581, 32.260098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931469, 39.518520, 32.039539>,  <44.414005, 39.574715, 32.504330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931469, 39.518520, 32.039539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.702862, 39.211613, 31.923153>,  <44.565697, 39.027470, 31.853321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.702862, 39.211613, 31.923153>,  <44.931469, 39.518520, 32.039539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702862, 39.211613, 31.923153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257752, 0.168778, -0.951356,
		0.779055, -0.618717, 0.101304,
		-0.571522, -0.767270, -0.290963,
		44.531406, 38.981430, 31.835863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363338, 39.047768, 31.641174>,  <44.931469, 39.518520, 32.039539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363338, 39.047768, 31.641174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.982906, 38.966339, 31.548225>,  <44.754646, 38.917480, 31.492456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.982906, 38.966339, 31.548225>,  <45.363338, 39.047768, 31.641174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982906, 38.966339, 31.548225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225653, 0.055951, -0.972600,
		0.211000, -0.977459, -0.007277,
		-0.951083, -0.203577, -0.232373,
		44.697582, 38.905266, 31.478514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414688, 38.602711, 31.074230>,  <45.363338, 39.047768, 31.641174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414688, 38.602711, 31.074230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030895, 38.710461, 31.041182>,  <44.800617, 38.775112, 31.021353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030895, 38.710461, 31.041182>,  <45.414688, 38.602711, 31.074230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030895, 38.710461, 31.041182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085613, -0.000645, -0.996328,
		-0.268439, -0.963035, -0.022443,
		-0.959485, 0.269375, -0.082621,
		44.743050, 38.791271, 31.016396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130508, 38.176163, 30.475323>,  <45.414688, 38.602711, 31.074230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130508, 38.176163, 30.475323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870590, 38.476696, 30.521389>,  <44.714638, 38.657017, 30.549028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870590, 38.476696, 30.521389>,  <45.130508, 38.176163, 30.475323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870590, 38.476696, 30.521389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189156, -0.013090, -0.981860,
		-0.736195, -0.659795, 0.150625,
		-0.649797, 0.751332, 0.115168,
		44.675652, 38.702095, 30.555939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524220, 37.970360, 30.077944>,  <45.130508, 38.176163, 30.475323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524220, 37.970360, 30.077944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.509277, 38.367798, 30.120611>,  <44.500313, 38.606258, 30.146212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.509277, 38.367798, 30.120611>,  <44.524220, 37.970360, 30.077944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509277, 38.367798, 30.120611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236870, 0.094896, -0.966896,
		-0.970823, -0.061387, 0.231807,
		-0.037358, 0.993593, 0.106668,
		44.498070, 38.665874, 30.152611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933014, 38.140343, 29.726454>,  <44.524220, 37.970360, 30.077944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933014, 38.140343, 29.726454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121281, 38.490509, 29.770487>,  <44.234241, 38.700607, 29.796906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121281, 38.490509, 29.770487>,  <43.933014, 38.140343, 29.726454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121281, 38.490509, 29.770487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236811, 0.245526, -0.940020,
		-0.849937, 0.416369, 0.322869,
		0.470668, 0.875416, 0.110081,
		44.262482, 38.753136, 29.803511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531368, 38.671082, 29.427908>,  <43.933014, 38.140343, 29.726454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531368, 38.671082, 29.427908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.893070, 38.841549, 29.438486>,  <44.110092, 38.943829, 29.444832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.893070, 38.841549, 29.438486>,  <43.531368, 38.671082, 29.427908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893070, 38.841549, 29.438486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063062, 0.194545, -0.978865,
		-0.422306, 0.883478, 0.202793,
		0.904257, 0.426169, 0.026444,
		44.164349, 38.969398, 29.446419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.488209, 33.060341, 41.775787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121941, 32.913467, 41.710396>,  <39.902180, 32.825344, 41.671162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121941, 32.913467, 41.710396>,  <40.488209, 33.060341, 41.775787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121941, 32.913467, 41.710396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088931, 0.211571, -0.973308,
		0.391969, -0.905767, -0.161075,
		-0.915670, -0.367183, -0.163480,
		39.847240, 32.803314, 41.661350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457497, 32.477554, 41.251945>,  <40.488209, 33.060341, 41.775787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457497, 32.477554, 41.251945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084942, 32.621555, 41.230324>,  <39.861408, 32.707954, 41.217350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084942, 32.621555, 41.230324>,  <40.457497, 32.477554, 41.251945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084942, 32.621555, 41.230324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053208, -0.012279, -0.998508,
		-0.360129, -0.932871, -0.007718,
		-0.931384, 0.360002, -0.054058,
		39.805527, 32.729557, 41.214108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176109, 32.173180, 40.719383>,  <40.457497, 32.477554, 41.251945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176109, 32.173180, 40.719383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933910, 32.488400, 40.763836>,  <39.788589, 32.677532, 40.790508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933910, 32.488400, 40.763836>,  <40.176109, 32.173180, 40.719383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933910, 32.488400, 40.763836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113023, 0.053074, -0.992174,
		-0.787780, -0.613320, 0.056931,
		-0.605498, 0.788049, 0.111130,
		39.752262, 32.724815, 40.797176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809978, 32.059784, 40.076176>,  <40.176109, 32.173180, 40.719383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809978, 32.059784, 40.076176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692936, 32.422241, 40.198349>,  <39.622711, 32.639717, 40.271652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692936, 32.422241, 40.198349>,  <39.809978, 32.059784, 40.076176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692936, 32.422241, 40.198349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251722, 0.235155, -0.938796,
		-0.922507, -0.351578, 0.159290,
		-0.292602, 0.906143, 0.305432,
		39.605156, 32.694084, 40.289978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173672, 32.211796, 39.799160>,  <39.809978, 32.059784, 40.076176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173672, 32.211796, 39.799160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345158, 32.564137, 39.879456>,  <39.448051, 32.775543, 39.927635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345158, 32.564137, 39.879456>,  <39.173672, 32.211796, 39.799160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345158, 32.564137, 39.879456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152797, 0.289694, -0.944844,
		-0.890424, 0.374399, 0.258789,
		0.428718, 0.880854, 0.200744,
		39.473774, 32.828392, 39.939678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620773, 32.646782, 39.879173>,  <39.173672, 32.211796, 39.799160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620773, 32.646782, 39.879173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951546, 32.845219, 39.773285>,  <39.150009, 32.964279, 39.709751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951546, 32.845219, 39.773285>,  <38.620773, 32.646782, 39.879173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951546, 32.845219, 39.773285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388963, 0.164676, -0.906416,
		-0.406069, 0.852512, 0.329136,
		0.826932, 0.496090, -0.264725,
		39.199627, 32.994045, 39.693867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302029, 33.142250, 39.504471>,  <38.620773, 32.646782, 39.879173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302029, 33.142250, 39.504471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687637, 33.157059, 39.399181>,  <38.919003, 33.165943, 39.336006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687637, 33.157059, 39.399181>,  <38.302029, 33.142250, 39.504471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687637, 33.157059, 39.399181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262128, 0.296786, -0.918263,
		0.044122, 0.954226, 0.295815,
		0.964024, 0.037025, -0.263224,
		38.976845, 33.168167, 39.320213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274281, 33.698555, 38.928852>,  <38.302029, 33.142250, 39.504471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274281, 33.698555, 38.928852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634491, 33.528893, 38.890606>,  <38.850616, 33.427094, 38.867657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634491, 33.528893, 38.890606>,  <38.274281, 33.698555, 38.928852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634491, 33.528893, 38.890606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075977, 0.370032, -0.925907,
		0.428113, 0.826538, 0.365449,
		0.900526, -0.424159, -0.095618,
		38.904648, 33.401646, 38.861919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770950, 34.172138, 38.746197>,  <38.274281, 33.698555, 38.928852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770950, 34.172138, 38.746197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869381, 33.813385, 38.599201>,  <38.928440, 33.598133, 38.511002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869381, 33.813385, 38.599201>,  <38.770950, 34.172138, 38.746197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869381, 33.813385, 38.599201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147839, 0.339981, -0.928739,
		0.957908, 0.282874, -0.048931,
		0.246080, -0.896881, -0.367491,
		38.943207, 33.544319, 38.488953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984119, 34.287430, 37.998924>,  <38.770950, 34.172138, 38.746197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984119, 34.287430, 37.998924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936935, 33.890938, 38.022739>,  <38.908627, 33.653042, 38.037029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936935, 33.890938, 38.022739>,  <38.984119, 34.287430, 37.998924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936935, 33.890938, 38.022739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111810, -0.046322, -0.992649,
		0.986704, -0.123746, -0.105366,
		-0.117955, -0.991232, 0.059542,
		38.901550, 33.593567, 38.040604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246086, 34.007946, 37.352989>,  <38.984119, 34.287430, 37.998924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246086, 34.007946, 37.352989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021412, 33.716152, 37.509121>,  <38.886608, 33.541077, 37.602802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021412, 33.716152, 37.509121>,  <39.246086, 34.007946, 37.352989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021412, 33.716152, 37.509121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310551, -0.251396, -0.916710,
		0.766853, -0.636124, -0.085336,
		-0.561688, -0.729483, 0.390333,
		38.852905, 33.497307, 37.626221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301292, 33.490932, 36.870621>,  <39.246086, 34.007946, 37.352989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301292, 33.490932, 36.870621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981274, 33.399139, 37.092346>,  <38.789261, 33.344063, 37.225380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981274, 33.399139, 37.092346>,  <39.301292, 33.490932, 36.870621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981274, 33.399139, 37.092346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567962, -0.007886, -0.823017,
		0.193243, -0.973280, -0.124031,
		-0.800048, -0.229487, 0.554309,
		38.741261, 33.330296, 37.258640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244553, 33.667786, 36.080791>,  <39.301292, 33.490932, 36.870621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244553, 33.667786, 36.080791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257275, 33.598869, 35.686977>,  <39.264908, 33.557522, 35.450691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257275, 33.598869, 35.686977>,  <39.244553, 33.667786, 36.080791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257275, 33.598869, 35.686977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458250, -0.877915, 0.138824,
		-0.888254, 0.446746, -0.106876,
		0.031808, -0.172287, -0.984533,
		39.266815, 33.547184, 35.391617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608078, 33.586342, 35.834515>,  <39.244553, 33.667786, 36.080791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608078, 33.586342, 35.834515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814911, 33.412037, 35.539829>,  <38.939011, 33.307453, 35.363018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814911, 33.412037, 35.539829>,  <38.608078, 33.586342, 35.834515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814911, 33.412037, 35.539829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411168, -0.881352, 0.232724,
		-0.750712, 0.182575, -0.634900,
		0.517081, -0.435759, -0.736710,
		38.970036, 33.281311, 35.318817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213062, 33.110638, 35.454205>,  <38.608078, 33.586342, 35.834515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213062, 33.110638, 35.454205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596828, 32.999630, 35.474258>,  <38.827087, 32.933025, 35.486290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596828, 32.999630, 35.474258>,  <38.213062, 33.110638, 35.454205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596828, 32.999630, 35.474258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276539, -0.890959, 0.360163,
		-0.055279, -0.359410, -0.931541,
		0.959412, -0.277517, 0.050139,
		38.884651, 32.916374, 35.489300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221573, 32.572216, 35.052551>,  <38.213062, 33.110638, 35.454205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221573, 32.572216, 35.052551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509190, 32.564930, 35.330441>,  <38.681759, 32.560558, 35.497173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509190, 32.564930, 35.330441>,  <38.221573, 32.572216, 35.052551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509190, 32.564930, 35.330441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328272, -0.890007, 0.316426,
		0.612548, -0.455583, -0.645933,
		0.719043, -0.018216, 0.694727,
		38.724903, 32.559464, 35.538860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239365, 31.859526, 35.330013>,  <38.221573, 32.572216, 35.052551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239365, 31.859526, 35.330013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521187, 32.011612, 35.569695>,  <38.690281, 32.102863, 35.713505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521187, 32.011612, 35.569695>,  <38.239365, 31.859526, 35.330013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521187, 32.011612, 35.569695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071584, -0.801976, 0.593051,
		0.706033, -0.460728, -0.537816,
		0.704552, 0.380215, 0.599203,
		38.732552, 32.125675, 35.749454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779209, 31.411865, 35.374130>,  <38.239365, 31.859526, 35.330013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779209, 31.411865, 35.374130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751850, 31.631180, 35.707527>,  <38.735435, 31.762768, 35.907566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751850, 31.631180, 35.707527>,  <38.779209, 31.411865, 35.374130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751850, 31.631180, 35.707527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033057, -0.833741, 0.551165,
		0.997110, 0.065252, 0.038903,
		-0.068399, 0.548286, 0.833489,
		38.731331, 31.795666, 35.957573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285622, 31.098955, 35.918949>,  <38.779209, 31.411865, 35.374130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285622, 31.098955, 35.918949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028416, 31.328566, 36.121738>,  <38.874092, 31.466331, 36.243412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028416, 31.328566, 36.121738>,  <39.285622, 31.098955, 35.918949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028416, 31.328566, 36.121738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003551, -0.659731, 0.751493,
		0.765845, 0.485022, 0.422179,
		-0.643015, 0.574028, 0.506975,
		38.835510, 31.500774, 36.273830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494518, 31.149490, 36.538090>,  <39.285622, 31.098955, 35.918949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494518, 31.149490, 36.538090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102978, 31.218903, 36.581421>,  <38.868053, 31.260550, 36.607418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102978, 31.218903, 36.581421>,  <39.494518, 31.149490, 36.538090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102978, 31.218903, 36.581421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034712, -0.662761, 0.748026,
		0.201599, 0.728448, 0.654769,
		-0.978853, 0.173530, 0.108326,
		38.809322, 31.270962, 36.613918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428509, 31.187889, 37.206406>,  <39.494518, 31.149490, 36.538090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428509, 31.187889, 37.206406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038425, 31.173241, 37.119102>,  <38.804375, 31.164452, 37.066723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038425, 31.173241, 37.119102>,  <39.428509, 31.187889, 37.206406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038425, 31.173241, 37.119102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160624, -0.561292, 0.811881,
		-0.152235, 0.826807, 0.541492,
		-0.975205, -0.036620, -0.218254,
		38.745865, 31.162254, 37.053627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100945, 31.414854, 37.750229>,  <39.428509, 31.187889, 37.206406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100945, 31.414854, 37.750229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818661, 31.188042, 37.580311>,  <38.649292, 31.051954, 37.478359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818661, 31.188042, 37.580311>,  <39.100945, 31.414854, 37.750229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818661, 31.188042, 37.580311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213092, -0.401939, 0.890526,
		-0.675700, 0.718971, 0.162821,
		-0.705706, -0.567033, -0.424798,
		38.606949, 31.017931, 37.452873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556767, 31.463358, 38.184296>,  <39.100945, 31.414854, 37.750229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556767, 31.463358, 38.184296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491135, 31.123108, 37.984489>,  <38.451756, 30.918957, 37.864605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491135, 31.123108, 37.984489>,  <38.556767, 31.463358, 38.184296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491135, 31.123108, 37.984489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169740, -0.474477, 0.863748,
		-0.971734, 0.226510, -0.066533,
		-0.164079, -0.850626, -0.499513,
		38.441910, 30.867920, 37.834637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909874, 31.279957, 38.451633>,  <38.556767, 31.463358, 38.184296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909874, 31.279957, 38.451633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066128, 30.943428, 38.302189>,  <38.159882, 30.741510, 38.212521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066128, 30.943428, 38.302189>,  <37.909874, 31.279957, 38.451633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066128, 30.943428, 38.302189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282440, -0.495821, 0.821212,
		-0.876146, -0.215272, -0.431308,
		0.390635, -0.841320, -0.373610,
		38.183319, 30.691032, 38.190105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376163, 30.884670, 38.592339>,  <37.909874, 31.279957, 38.451633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376163, 30.884670, 38.592339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700241, 30.661530, 38.520351>,  <37.894688, 30.527645, 38.477161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700241, 30.661530, 38.520351>,  <37.376163, 30.884670, 38.592339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700241, 30.661530, 38.520351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209600, -0.562437, 0.799832,
		-0.547399, -0.610304, -0.572611,
		0.810198, -0.557847, -0.179958,
		37.943298, 30.494175, 38.466362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150333, 30.235828, 38.597485>,  <37.376163, 30.884670, 38.592339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150333, 30.235828, 38.597485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540005, 30.228329, 38.687492>,  <37.773808, 30.223829, 38.741497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540005, 30.228329, 38.687492>,  <37.150333, 30.235828, 38.597485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540005, 30.228329, 38.687492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207014, -0.472103, 0.856892,
		0.090168, -0.881344, -0.463791,
		0.974174, -0.018747, 0.225019,
		37.832256, 30.222704, 38.754997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028324, 29.734079, 39.059261>,  <37.150333, 30.235828, 38.597485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028324, 29.734079, 39.059261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419628, 29.810095, 39.092472>,  <37.654411, 29.855703, 39.112400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419628, 29.810095, 39.092472>,  <37.028324, 29.734079, 39.059261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419628, 29.810095, 39.092472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027604, -0.277472, 0.960337,
		0.205537, -0.941751, -0.266194,
		0.978260, 0.190036, 0.083027,
		37.713104, 29.867105, 39.117382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320419, 29.181179, 39.313484>,  <37.028324, 29.734079, 39.059261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320419, 29.181179, 39.313484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586025, 29.462433, 39.415215>,  <37.745388, 29.631186, 39.476254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586025, 29.462433, 39.415215>,  <37.320419, 29.181179, 39.313484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586025, 29.462433, 39.415215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033031, -0.367384, 0.929483,
		0.746987, -0.608792, -0.267175,
		0.664018, 0.703136, 0.254322,
		37.785229, 29.673374, 39.491512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553143, 28.374254, 39.268482>,  <37.320419, 29.181179, 39.313484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553143, 28.374254, 39.268482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203938, 28.212978, 39.378235>,  <36.994415, 28.116213, 39.444088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203938, 28.212978, 39.378235>,  <37.553143, 28.374254, 39.268482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203938, 28.212978, 39.378235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445826, 0.431711, -0.784133,
		0.197699, -0.806886, -0.556642,
		-0.873014, -0.403188, 0.274382,
		36.942032, 28.092022, 39.460548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225430, 28.074224, 38.661743>,  <37.553143, 28.374254, 39.268482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225430, 28.074224, 38.661743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924358, 28.121328, 38.920853>,  <36.743717, 28.149590, 39.076321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924358, 28.121328, 38.920853>,  <37.225430, 28.074224, 38.661743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924358, 28.121328, 38.920853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579341, 0.348982, -0.736597,
		-0.312803, -0.929701, -0.194448,
		-0.752674, 0.117758, 0.647777,
		36.698555, 28.156656, 39.115185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644390, 27.747040, 38.367081>,  <37.225430, 28.074224, 38.661743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644390, 27.747040, 38.367081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525425, 28.026217, 38.627670>,  <36.454044, 28.193722, 38.784023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525425, 28.026217, 38.627670>,  <36.644390, 27.747040, 38.367081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525425, 28.026217, 38.627670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686670, 0.317722, -0.653863,
		-0.663346, -0.641820, 0.384758,
		-0.297416, 0.697940, 0.651478,
		36.436199, 28.235598, 38.823112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012009, 27.840353, 38.144791>,  <36.644390, 27.747040, 38.367081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012009, 27.840353, 38.144791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040691, 28.140902, 38.407181>,  <36.057899, 28.321230, 38.564613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040691, 28.140902, 38.407181>,  <36.012009, 27.840353, 38.144791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040691, 28.140902, 38.407181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776379, 0.454922, -0.436213,
		-0.626174, -0.478005, 0.615969,
		0.071706, 0.751370, 0.655973,
		36.062202, 28.366312, 38.603973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338524, 27.996506, 38.463402>,  <36.012009, 27.840353, 38.144791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338524, 27.996506, 38.463402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567505, 28.323259, 38.491688>,  <35.704895, 28.519312, 38.508659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567505, 28.323259, 38.491688>,  <35.338524, 27.996506, 38.463402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567505, 28.323259, 38.491688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706593, 0.535236, -0.462869,
		-0.415962, 0.215001, 0.883601,
		0.572453, 0.816882, 0.070719,
		35.739243, 28.568323, 38.512905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857784, 28.631491, 38.641159>,  <35.338524, 27.996506, 38.463402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857784, 28.631491, 38.641159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176849, 28.806543, 38.475163>,  <35.368286, 28.911575, 38.375565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176849, 28.806543, 38.475163>,  <34.857784, 28.631491, 38.641159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176849, 28.806543, 38.475163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602606, 0.606356, -0.518844,
		0.024571, 0.663938, 0.747384,
		0.797661, 0.437630, -0.414991,
		35.416149, 28.937832, 38.350666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750000, 29.367556, 38.651859>,  <34.857784, 28.631491, 38.641159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750000, 29.367556, 38.651859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023903, 29.344080, 38.361298>,  <35.188244, 29.329994, 38.186962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023903, 29.344080, 38.361298>,  <34.750000, 29.367556, 38.651859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023903, 29.344080, 38.361298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436514, 0.765136, -0.473310,
		0.583575, 0.641188, 0.498315,
		0.684759, -0.058690, -0.726402,
		35.229332, 29.326473, 38.143375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096806, 30.013720, 38.559380>,  <34.750000, 29.367556, 38.651859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096806, 30.013720, 38.559380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155308, 29.828213, 38.209858>,  <35.190411, 29.716909, 38.000145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155308, 29.828213, 38.209858>,  <35.096806, 30.013720, 38.559380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155308, 29.828213, 38.209858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310412, 0.817172, -0.485669,
		0.939283, 0.342272, -0.024440,
		0.146260, -0.463767, -0.873801,
		35.199184, 29.689083, 37.947716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343346, 30.584103, 38.088066>,  <35.096806, 30.013720, 38.559380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343346, 30.584103, 38.088066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187534, 30.277559, 37.883732>,  <35.094048, 30.093634, 37.761131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187534, 30.277559, 37.883732>,  <35.343346, 30.584103, 38.088066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187534, 30.277559, 37.883732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461994, 0.642408, -0.611452,
		0.796760, -0.002175, -0.604292,
		-0.389532, -0.766360, -0.510840,
		35.070675, 30.047651, 37.730480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381927, 30.783278, 37.335537>,  <35.343346, 30.584103, 38.088066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381927, 30.783278, 37.335537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109829, 30.490091, 37.337521>,  <34.946568, 30.314180, 37.338711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109829, 30.490091, 37.337521>,  <35.381927, 30.783278, 37.335537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109829, 30.490091, 37.337521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559287, 0.514664, -0.649861,
		0.473769, -0.444845, -0.760037,
		-0.680251, -0.732962, 0.004964,
		34.905754, 30.270203, 37.339008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265366, 30.785887, 36.612675>,  <35.381927, 30.783278, 37.335537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265366, 30.785887, 36.612675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972462, 30.600744, 36.812500>,  <34.796719, 30.489658, 36.932396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972462, 30.600744, 36.812500>,  <35.265366, 30.785887, 36.612675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972462, 30.600744, 36.812500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681015, 0.501682, -0.533417,
		-0.003725, -0.730807, -0.682573,
		-0.732260, -0.462855, 0.499560,
		34.752785, 30.461887, 36.962368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783146, 30.448999, 36.160748>,  <35.265366, 30.785887, 36.612675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783146, 30.448999, 36.160748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610851, 30.546124, 36.508427>,  <34.507477, 30.604399, 36.717033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610851, 30.546124, 36.508427>,  <34.783146, 30.448999, 36.160748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610851, 30.546124, 36.508427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683861, 0.540658, -0.489922,
		-0.588900, -0.805438, -0.066830,
		-0.430734, 0.242813, 0.869201,
		34.481632, 30.618967, 36.769188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.913578, 25.750744, 41.824383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.627258, 25.926378, 42.041576>,  <38.455467, 26.031759, 42.171894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.627258, 25.926378, 42.041576>,  <38.913578, 25.750744, 41.824383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627258, 25.926378, 42.041576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558357, 0.107093, -0.822659,
		-0.419368, -0.892040, 0.168510,
		-0.715799, 0.439086, 0.542989,
		38.412518, 26.058104, 42.204472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300556, 25.453833, 41.575401>,  <38.913578, 25.750744, 41.824383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300556, 25.453833, 41.575401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188454, 25.782875, 41.773300>,  <38.121193, 25.980301, 41.892040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.188454, 25.782875, 41.773300>,  <38.300556, 25.453833, 41.575401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188454, 25.782875, 41.773300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554597, 0.281928, -0.782904,
		-0.783505, -0.493799, 0.377203,
		-0.280253, 0.822605, 0.494752,
		38.104378, 26.029657, 41.921726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610794, 25.428860, 41.498913>,  <38.300556, 25.453833, 41.575401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610794, 25.428860, 41.498913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717350, 25.803102, 41.591583>,  <37.781284, 26.027649, 41.647186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717350, 25.803102, 41.591583>,  <37.610794, 25.428860, 41.498913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717350, 25.803102, 41.591583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589518, 0.348318, -0.728796,
		-0.762564, 0.057567, 0.644346,
		0.266392, 0.935607, 0.231678,
		37.797268, 26.083784, 41.661087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998081, 25.866335, 41.775581>,  <37.610794, 25.428860, 41.498913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998081, 25.866335, 41.775581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279549, 26.099590, 41.613201>,  <37.448429, 26.239544, 41.515774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279549, 26.099590, 41.613201>,  <36.998081, 25.866335, 41.775581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279549, 26.099590, 41.613201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684269, 0.402290, -0.608226,
		-0.191369, 0.705771, 0.682104,
		0.703671, 0.583138, -0.405951,
		37.490650, 26.274532, 41.491417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606403, 26.457697, 41.524776>,  <36.998081, 25.866335, 41.775581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606403, 26.457697, 41.524776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.935917, 26.558662, 41.321735>,  <37.133625, 26.619242, 41.199909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.935917, 26.558662, 41.321735>,  <36.606403, 26.457697, 41.524776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935917, 26.558662, 41.321735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565326, 0.432424, -0.702436,
		0.042197, 0.865620, 0.498921,
		0.823788, 0.252412, -0.507605,
		37.183052, 26.634386, 41.169453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562370, 27.181684, 41.297348>,  <36.606403, 26.457697, 41.524776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562370, 27.181684, 41.297348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.862785, 27.073788, 41.056290>,  <37.043034, 27.009050, 40.911655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.862785, 27.073788, 41.056290>,  <36.562370, 27.181684, 41.297348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862785, 27.073788, 41.056290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339426, 0.625164, -0.702822,
		0.566334, 0.732400, 0.377964,
		0.751036, -0.269741, -0.602647,
		37.088097, 26.992865, 40.875496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795532, 27.782043, 40.985020>,  <36.562370, 27.181684, 41.297348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795532, 27.782043, 40.985020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972408, 27.544769, 40.715919>,  <37.078533, 27.402405, 40.554459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972408, 27.544769, 40.715919>,  <36.795532, 27.782043, 40.985020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972408, 27.544769, 40.715919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189429, 0.671388, -0.716488,
		0.876688, 0.444265, 0.184517,
		0.442193, -0.593183, -0.672755,
		37.105064, 27.366814, 40.514091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182804, 28.222120, 40.641224>,  <36.795532, 27.782043, 40.985020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182804, 28.222120, 40.641224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111477, 27.894457, 40.423168>,  <37.068680, 27.697859, 40.292336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111477, 27.894457, 40.423168>,  <37.182804, 28.222120, 40.641224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111477, 27.894457, 40.423168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266522, 0.573520, -0.774624,
		0.947189, 0.007160, -0.320595,
		-0.178321, -0.819160, -0.545140,
		37.057980, 27.648708, 40.259624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595356, 28.376156, 40.004436>,  <37.182804, 28.222120, 40.641224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595356, 28.376156, 40.004436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312199, 28.107752, 39.916225>,  <37.142303, 27.946709, 39.863300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312199, 28.107752, 39.916225>,  <37.595356, 28.376156, 40.004436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312199, 28.107752, 39.916225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265526, 0.542131, -0.797239,
		0.654509, -0.505806, -0.561942,
		-0.707894, -0.671010, -0.220525,
		37.099831, 27.906448, 39.850067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032635, 28.871571, 39.635750>,  <37.595356, 28.376156, 40.004436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032635, 28.871571, 39.635750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.015732, 29.256384, 39.743607>,  <38.005592, 29.487272, 39.808323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.015732, 29.256384, 39.743607>,  <38.032635, 28.871571, 39.635750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015732, 29.256384, 39.743607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396692, -0.231548, 0.888269,
		0.916979, 0.144501, -0.371846,
		-0.042256, 0.962032, 0.269646,
		38.003056, 29.544994, 39.824501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623016, 28.843796, 39.979275>,  <38.032635, 28.871571, 39.635750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623016, 28.843796, 39.979275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430351, 29.173239, 40.099056>,  <38.314751, 29.370905, 40.170925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430351, 29.173239, 40.099056>,  <38.623016, 28.843796, 39.979275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430351, 29.173239, 40.099056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398747, -0.098309, 0.911777,
		0.780383, 0.558577, -0.281058,
		-0.481667, 0.823606, 0.299449,
		38.285851, 29.420321, 40.188892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149368, 29.318602, 40.261662>,  <38.623016, 28.843796, 39.979275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149368, 29.318602, 40.261662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794052, 29.431719, 40.406422>,  <38.580864, 29.499590, 40.493279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794052, 29.431719, 40.406422>,  <39.149368, 29.318602, 40.261662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794052, 29.431719, 40.406422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404426, 0.108142, 0.908155,
		0.217682, 0.953066, -0.210430,
		-0.888287, 0.282792, 0.361903,
		38.527565, 29.516556, 40.514992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178532, 30.062725, 40.564766>,  <39.149368, 29.318602, 40.261662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178532, 30.062725, 40.564766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878605, 29.878149, 40.754440>,  <38.698650, 29.767403, 40.868244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878605, 29.878149, 40.754440>,  <39.178532, 30.062725, 40.564766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878605, 29.878149, 40.754440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373855, 0.295829, 0.879044,
		-0.545904, 0.836396, -0.049304,
		-0.749814, -0.461441, 0.474185,
		38.653660, 29.739717, 40.896694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018253, 30.442541, 41.079182>,  <39.178532, 30.062725, 40.564766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018253, 30.442541, 41.079182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830761, 30.109320, 41.196697>,  <38.718266, 29.909386, 41.267208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830761, 30.109320, 41.196697>,  <39.018253, 30.442541, 41.079182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830761, 30.109320, 41.196697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166223, 0.243466, 0.955560,
		-0.867562, 0.496733, 0.024353,
		-0.468729, -0.833055, 0.293790,
		38.690144, 29.859404, 41.284836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566929, 30.688751, 41.660599>,  <39.018253, 30.442541, 41.079182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566929, 30.688751, 41.660599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598331, 30.292273, 41.703243>,  <38.617172, 30.054386, 41.728828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598331, 30.292273, 41.703243>,  <38.566929, 30.688751, 41.660599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598331, 30.292273, 41.703243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158518, 0.117990, 0.980281,
		-0.984230, -0.060060, 0.166386,
		0.078508, -0.991197, 0.106609,
		38.621883, 29.994913, 41.735226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048840, 30.501190, 42.256134>,  <38.566929, 30.688751, 41.660599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048840, 30.501190, 42.256134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.346161, 30.241398, 42.192036>,  <38.524551, 30.085524, 42.153576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.346161, 30.241398, 42.192036>,  <38.048840, 30.501190, 42.256134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346161, 30.241398, 42.192036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143097, -0.079632, 0.986500,
		-0.653472, -0.756198, 0.033748,
		0.743302, -0.649480, -0.160247,
		38.569153, 30.046555, 42.143963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302799, 30.401320, 42.894829>,  <38.048840, 30.501190, 42.256134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302799, 30.401320, 42.894829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.577835, 30.165876, 42.724766>,  <38.742859, 30.024611, 42.622730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.577835, 30.165876, 42.724766>,  <38.302799, 30.401320, 42.894829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577835, 30.165876, 42.724766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459781, -0.100227, 0.882358,
		-0.561975, -0.802181, 0.201716,
		0.687593, -0.588609, -0.425153,
		38.784115, 29.989294, 42.597221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433468, 29.846138, 43.378513>,  <38.302799, 30.401320, 42.894829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433468, 29.846138, 43.378513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758686, 29.826828, 43.146435>,  <38.953815, 29.815243, 43.007187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758686, 29.826828, 43.146435>,  <38.433468, 29.846138, 43.378513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758686, 29.826828, 43.146435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576500, -0.072357, 0.813887,
		-0.081274, -0.996209, -0.030997,
		0.813045, -0.048278, -0.580195,
		39.002598, 29.812346, 42.972378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804508, 29.185677, 43.544762>,  <38.433468, 29.846138, 43.378513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804508, 29.185677, 43.544762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.074730, 29.434868, 43.387012>,  <39.236862, 29.584383, 43.292362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.074730, 29.434868, 43.387012>,  <38.804508, 29.185677, 43.544762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074730, 29.434868, 43.387012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658514, -0.269198, 0.702775,
		0.331648, -0.734460, -0.592096,
		0.675551, 0.622977, -0.394373,
		39.277397, 29.621761, 43.268700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409000, 28.735670, 43.529083>,  <38.804508, 29.185677, 43.544762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409000, 28.735670, 43.529083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517673, 29.119799, 43.503868>,  <39.582878, 29.350275, 43.488739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517673, 29.119799, 43.503868>,  <39.409000, 28.735670, 43.529083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517673, 29.119799, 43.503868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660893, -0.138553, 0.737579,
		0.699577, -0.242053, -0.672311,
		0.271684, 0.960320, -0.063042,
		39.599178, 29.407894, 43.484955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122791, 28.775339, 43.618034>,  <39.409000, 28.735670, 43.529083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122791, 28.775339, 43.618034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.041821, 29.164804, 43.660000>,  <39.993240, 29.398483, 43.685181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.041821, 29.164804, 43.660000>,  <40.122791, 28.775339, 43.618034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041821, 29.164804, 43.660000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645315, 0.052036, 0.762142,
		0.736609, 0.221980, -0.638852,
		-0.202423, 0.973662, 0.104916,
		39.981094, 29.456903, 43.691475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807564, 29.075062, 43.645336>,  <40.122791, 28.775339, 43.618034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807564, 29.075062, 43.645336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.539295, 29.324841, 43.805470>,  <40.378334, 29.474709, 43.901550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.539295, 29.324841, 43.805470>,  <40.807564, 29.075062, 43.645336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539295, 29.324841, 43.805470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580763, 0.106311, 0.807101,
		0.461433, 0.773797, -0.433956,
		-0.670667, 0.624449, 0.400337,
		40.338097, 29.512175, 43.925571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221039, 29.612209, 43.918217>,  <40.807564, 29.075062, 43.645336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221039, 29.612209, 43.918217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.855862, 29.583986, 44.078999>,  <40.636757, 29.567053, 44.175468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.855862, 29.583986, 44.078999>,  <41.221039, 29.612209, 43.918217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855862, 29.583986, 44.078999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407807, -0.120659, 0.905061,
		-0.015361, 0.990183, 0.138929,
		-0.912939, -0.070559, 0.401950,
		40.581982, 29.562819, 44.199585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.626755, 29.400629, 47.099533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.983109, 29.399393, 46.917843>,  <34.196918, 29.398651, 46.808826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.983109, 29.399393, 46.917843>,  <33.626755, 29.400629, 47.099533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983109, 29.399393, 46.917843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370296, 0.574221, -0.730172,
		0.263083, 0.818694, 0.510418,
		0.890880, -0.003090, -0.454227,
		34.250374, 29.398466, 46.781574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730824, 30.128572, 46.861141>,  <33.626755, 29.400629, 47.099533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730824, 30.128572, 46.861141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.986755, 29.905544, 46.649582>,  <34.140316, 29.771727, 46.522648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.986755, 29.905544, 46.649582>,  <33.730824, 30.128572, 46.861141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986755, 29.905544, 46.649582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269214, 0.481981, -0.833798,
		0.719820, 0.675875, 0.158280,
		0.639831, -0.557573, -0.528894,
		34.178703, 29.738272, 46.490913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118801, 30.586966, 46.515671>,  <33.730824, 30.128572, 46.861141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118801, 30.586966, 46.515671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149830, 30.248079, 46.305447>,  <34.168446, 30.044748, 46.179314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149830, 30.248079, 46.305447>,  <34.118801, 30.586966, 46.515671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149830, 30.248079, 46.305447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180771, 0.506456, -0.843104,
		0.980462, 0.160404, -0.113866,
		0.077569, -0.847215, -0.525557,
		34.173100, 29.993916, 46.147781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586208, 30.703754, 46.035233>,  <34.118801, 30.586966, 46.515671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586208, 30.703754, 46.035233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.360332, 30.400328, 45.905186>,  <34.224808, 30.218271, 45.827160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.360332, 30.400328, 45.905186>,  <34.586208, 30.703754, 46.035233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360332, 30.400328, 45.905186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174619, 0.494830, -0.851265,
		0.806619, -0.423929, -0.411886,
		-0.564690, -0.758569, -0.325113,
		34.190926, 30.172756, 45.807652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756607, 30.501347, 45.380119>,  <34.586208, 30.703754, 46.035233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756607, 30.501347, 45.380119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.371304, 30.394384, 45.390171>,  <34.140121, 30.330206, 45.396202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.371304, 30.394384, 45.390171>,  <34.756607, 30.501347, 45.380119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371304, 30.394384, 45.390171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115398, 0.327577, -0.937751,
		0.242528, -0.906194, -0.346399,
		-0.963256, -0.267405, 0.025126,
		34.082325, 30.314161, 45.397709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729931, 30.165665, 44.760044>,  <34.756607, 30.501347, 45.380119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729931, 30.165665, 44.760044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.348450, 30.203245, 44.874329>,  <34.119560, 30.225794, 44.942898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.348450, 30.203245, 44.874329>,  <34.729931, 30.165665, 44.760044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348450, 30.203245, 44.874329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239953, 0.335034, -0.911139,
		-0.181324, -0.937510, -0.296978,
		-0.953701, 0.093950, 0.285708,
		34.062340, 30.231430, 44.960041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341034, 29.988743, 44.185032>,  <34.729931, 30.165665, 44.760044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341034, 29.988743, 44.185032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.087513, 30.205582, 44.405731>,  <33.935402, 30.335686, 44.538151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.087513, 30.205582, 44.405731>,  <34.341034, 29.988743, 44.185032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087513, 30.205582, 44.405731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353454, 0.431506, -0.829984,
		-0.688014, -0.721063, -0.081883,
		-0.633803, 0.542099, 0.551744,
		33.897373, 30.368212, 44.571255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687084, 29.947172, 43.757576>,  <34.341034, 29.988743, 44.185032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687084, 29.947172, 43.757576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646152, 30.252403, 44.012836>,  <33.621593, 30.435543, 44.165993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646152, 30.252403, 44.012836>,  <33.687084, 29.947172, 43.757576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646152, 30.252403, 44.012836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190171, 0.614681, -0.765508,
		-0.976403, -0.199692, 0.082216,
		-0.102330, 0.763080, 0.638152,
		33.615452, 30.481327, 44.204281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157719, 30.255564, 43.441067>,  <33.687084, 29.947172, 43.757576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157719, 30.255564, 43.441067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.315556, 30.531080, 43.684330>,  <33.410259, 30.696390, 43.830288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.315556, 30.531080, 43.684330>,  <33.157719, 30.255564, 43.441067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315556, 30.531080, 43.684330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169872, 0.705143, -0.688416,
		-0.903017, 0.168335, 0.395252,
		0.394594, 0.688793, 0.608161,
		33.433933, 30.737719, 43.866779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570019, 30.756432, 43.601212>,  <33.157719, 30.255564, 43.441067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570019, 30.756432, 43.601212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.915146, 30.943214, 43.678665>,  <33.122223, 31.055285, 43.725140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.915146, 30.943214, 43.678665>,  <32.570019, 30.756432, 43.601212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915146, 30.943214, 43.678665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310965, 0.792279, -0.524971,
		-0.398555, 0.392740, 0.828800,
		0.862818, 0.466958, 0.193638,
		33.173992, 31.083302, 43.736755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417999, 31.517128, 43.613338>,  <32.570019, 30.756432, 43.601212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417999, 31.517128, 43.613338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.816147, 31.535061, 43.579315>,  <33.055035, 31.545820, 43.558899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.816147, 31.535061, 43.579315>,  <32.417999, 31.517128, 43.613338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816147, 31.535061, 43.579315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087660, 0.786618, -0.611185,
		0.039511, 0.615810, 0.786903,
		0.995367, 0.044831, -0.085062,
		33.114758, 31.548510, 43.553795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557518, 32.195084, 43.520538>,  <32.417999, 31.517128, 43.613338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557518, 32.195084, 43.520538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867882, 31.984194, 43.381973>,  <33.054100, 31.857660, 43.298836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867882, 31.984194, 43.381973>,  <32.557518, 32.195084, 43.520538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867882, 31.984194, 43.381973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060359, 0.608651, -0.791139,
		0.627948, 0.592944, 0.504082,
		0.775911, -0.527220, -0.346412,
		33.100655, 31.826027, 43.278049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922066, 32.667580, 43.099476>,  <32.557518, 32.195084, 43.520538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922066, 32.667580, 43.099476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.085453, 32.333401, 42.952408>,  <33.183487, 32.132893, 42.864166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.085453, 32.333401, 42.952408>,  <32.922066, 32.667580, 43.099476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085453, 32.333401, 42.952408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126905, 0.346916, -0.929271,
		0.903907, 0.426239, 0.035683,
		0.408471, -0.835446, -0.367672,
		33.207993, 32.082767, 42.842106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378960, 32.839188, 42.508198>,  <32.922066, 32.667580, 43.099476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378960, 32.839188, 42.508198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.253239, 32.460182, 42.484745>,  <33.177807, 32.232780, 42.470673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.253239, 32.460182, 42.484745>,  <33.378960, 32.839188, 42.508198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253239, 32.460182, 42.484745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207833, 0.128947, -0.969628,
		0.926293, -0.292570, -0.237452,
		-0.314303, -0.947510, -0.058636,
		33.158947, 32.175930, 42.467155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227314, 32.870197, 42.451820>,  <33.378960, 32.839188, 42.508198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227314, 32.870197, 42.451820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.407185, 33.225357, 42.490650>,  <34.515106, 33.438454, 42.513947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.407185, 33.225357, 42.490650>,  <34.227314, 32.870197, 42.451820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407185, 33.225357, 42.490650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065408, -0.141125, 0.987829,
		0.890794, -0.437854, -0.121536,
		0.449677, 0.887901, 0.097074,
		34.542088, 33.491726, 42.519772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848148, 32.758656, 42.736549>,  <34.227314, 32.870197, 42.451820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848148, 32.758656, 42.736549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.818306, 33.146011, 42.831760>,  <34.800400, 33.378426, 42.888885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.818306, 33.146011, 42.831760>,  <34.848148, 32.758656, 42.736549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818306, 33.146011, 42.831760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347814, -0.198433, 0.916324,
		0.934591, 0.151150, -0.322015,
		-0.074604, 0.968389, 0.238026,
		34.795925, 33.436527, 42.903168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409504, 32.965115, 43.047596>,  <34.848148, 32.758656, 42.736549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409504, 32.965115, 43.047596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.159660, 33.258064, 43.156029>,  <35.009754, 33.433834, 43.221088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.159660, 33.258064, 43.156029>,  <35.409504, 32.965115, 43.047596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159660, 33.258064, 43.156029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167990, -0.212993, 0.962504,
		0.762655, 0.646728, 0.010006,
		-0.624610, 0.732378, 0.271083,
		34.972279, 33.477779, 43.237354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759285, 33.333298, 43.579556>,  <35.409504, 32.965115, 43.047596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759285, 33.333298, 43.579556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373043, 33.429726, 43.618519>,  <35.141296, 33.487583, 43.641895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373043, 33.429726, 43.618519>,  <35.759285, 33.333298, 43.579556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373043, 33.429726, 43.618519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093836, -0.026281, 0.995241,
		0.242481, 0.970152, 0.002756,
		-0.965608, 0.241068, 0.097407,
		35.083363, 33.502045, 43.647739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779819, 33.869076, 44.040035>,  <35.759285, 33.333298, 43.579556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779819, 33.869076, 44.040035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413284, 33.715290, 44.084770>,  <35.193363, 33.623016, 44.111610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413284, 33.715290, 44.084770>,  <35.779819, 33.869076, 44.040035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413284, 33.715290, 44.084770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134410, -0.032252, 0.990401,
		-0.377169, 0.922575, 0.081230,
		-0.916339, -0.384466, 0.111839,
		35.138382, 33.599949, 44.118320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561832, 34.154442, 44.703091>,  <35.779819, 33.869076, 44.040035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561832, 34.154442, 44.703091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.330227, 33.831966, 44.654419>,  <35.191265, 33.638481, 44.625217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.330227, 33.831966, 44.654419>,  <35.561832, 34.154442, 44.703091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330227, 33.831966, 44.654419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163824, -0.261232, 0.951272,
		-0.798691, 0.530864, 0.283330,
		-0.579011, -0.806189, -0.121675,
		35.156525, 33.590111, 44.617916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212257, 34.096371, 45.393303>,  <35.561832, 34.154442, 44.703091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212257, 34.096371, 45.393303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.175625, 33.741619, 45.212170>,  <35.153645, 33.528767, 45.103489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.175625, 33.741619, 45.212170>,  <35.212257, 34.096371, 45.393303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175625, 33.741619, 45.212170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156344, -0.461913, 0.873037,
		-0.983447, 0.009159, 0.180963,
		-0.091586, -0.886878, -0.452835,
		35.148148, 33.475555, 45.076321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595951, 33.709213, 45.721302>,  <35.212257, 34.096371, 45.393303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595951, 33.709213, 45.721302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.882618, 33.474846, 45.569992>,  <35.054619, 33.334225, 45.479206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.882618, 33.474846, 45.569992>,  <34.595951, 33.709213, 45.721302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882618, 33.474846, 45.569992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109078, -0.441553, 0.890580,
		-0.688837, -0.679507, -0.252534,
		0.716663, -0.585919, -0.378277,
		35.097618, 33.299068, 45.456509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619408, 33.320114, 46.280178>,  <34.595951, 33.709213, 45.721302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619408, 33.320114, 46.280178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.906033, 33.172810, 46.043224>,  <35.078007, 33.084427, 45.901051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.906033, 33.172810, 46.043224>,  <34.619408, 33.320114, 46.280178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906033, 33.172810, 46.043224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380736, -0.505095, 0.774544,
		-0.584448, -0.780552, -0.221720,
		0.716562, -0.368264, -0.592386,
		35.121002, 33.062332, 45.865509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575462, 32.642357, 46.386745>,  <34.619408, 33.320114, 46.280178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575462, 32.642357, 46.386745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942799, 32.735485, 46.258717>,  <35.163200, 32.791363, 46.181900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942799, 32.735485, 46.258717>,  <34.575462, 32.642357, 46.386745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942799, 32.735485, 46.258717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382654, -0.315675, 0.868289,
		0.101117, -0.919861, -0.378987,
		0.918342, 0.232820, -0.320068,
		35.218300, 32.805332, 46.162697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912674, 31.944212, 46.281364>,  <34.575462, 32.642357, 46.386745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912674, 31.944212, 46.281364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149605, 32.256123, 46.362461>,  <35.291763, 32.443268, 46.411118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149605, 32.256123, 46.362461>,  <34.912674, 31.944212, 46.281364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149605, 32.256123, 46.362461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405765, -0.506097, 0.761065,
		0.696066, -0.368532, -0.616179,
		0.592323, 0.779776, 0.202739,
		35.327301, 32.490055, 46.423283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676075, 31.798492, 46.244003>,  <34.912674, 31.944212, 46.281364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676075, 31.798492, 46.244003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.624916, 32.107456, 46.492847>,  <35.594219, 32.292835, 46.642155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.624916, 32.107456, 46.492847>,  <35.676075, 31.798492, 46.244003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624916, 32.107456, 46.492847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469515, -0.505371, 0.723986,
		0.873612, 0.384687, -0.298023,
		-0.127896, 0.772409, 0.622115,
		35.586548, 32.339180, 46.679482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277512, 31.770208, 46.557583>,  <35.676075, 31.798492, 46.244003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277512, 31.770208, 46.557583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098431, 32.033974, 46.799156>,  <35.990982, 32.192234, 46.944099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098431, 32.033974, 46.799156>,  <36.277512, 31.770208, 46.557583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098431, 32.033974, 46.799156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456384, -0.412297, 0.788495,
		0.768944, 0.628638, -0.116358,
		-0.447704, 0.659413, 0.603934,
		35.964119, 32.231796, 46.980335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801098, 32.070419, 47.032177>,  <36.277512, 31.770208, 46.557583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801098, 32.070419, 47.032177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452271, 32.116306, 47.222473>,  <36.242973, 32.143837, 47.336651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452271, 32.116306, 47.222473>,  <36.801098, 32.070419, 47.032177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452271, 32.116306, 47.222473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399719, -0.393889, 0.827693,
		0.282337, 0.911972, 0.297646,
		-0.872072, 0.114714, 0.475742,
		36.190647, 32.150719, 47.365196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391224, 32.441490, 46.977535>,  <36.801098, 32.070419, 47.032177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391224, 32.441490, 46.977535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.788361, 32.407925, 47.011536>,  <38.026642, 32.387787, 47.031937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.788361, 32.407925, 47.011536>,  <37.391224, 32.441490, 46.977535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788361, 32.407925, 47.011536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101103, 0.211518, -0.972131,
		0.063595, 0.973765, 0.218487,
		0.992841, -0.083913, 0.084999,
		38.086212, 32.382751, 47.037037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620743, 32.951340, 46.456127>,  <37.391224, 32.441490, 46.977535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620743, 32.951340, 46.456127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.919979, 32.700405, 46.542675>,  <38.099522, 32.549847, 46.594604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.919979, 32.700405, 46.542675>,  <37.620743, 32.951340, 46.456127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919979, 32.700405, 46.542675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338118, 0.079777, -0.937716,
		0.570999, 0.774655, 0.271793,
		0.748089, -0.627333, 0.216372,
		38.144405, 32.512207, 46.607586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106277, 33.222080, 46.028652>,  <37.620743, 32.951340, 46.456127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106277, 33.222080, 46.028652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.235863, 32.856339, 46.125809>,  <38.313614, 32.636894, 46.184105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.235863, 32.856339, 46.125809>,  <38.106277, 33.222080, 46.028652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235863, 32.856339, 46.125809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461562, -0.071359, -0.884233,
		0.825839, 0.398568, 0.398916,
		0.323961, -0.914359, 0.242894,
		38.333050, 32.582031, 46.198677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782509, 33.276028, 45.929379>,  <38.106277, 33.222080, 46.028652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782509, 33.276028, 45.929379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.686161, 32.887848, 45.923687>,  <38.628353, 32.654938, 45.920273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.686161, 32.887848, 45.923687>,  <38.782509, 33.276028, 45.929379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686161, 32.887848, 45.923687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402369, -0.086506, -0.911381,
		0.883222, -0.225247, 0.411317,
		-0.240868, -0.970454, -0.014229,
		38.613899, 32.596710, 45.919418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394962, 32.945049, 45.765823>,  <38.782509, 33.276028, 45.929379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394962, 32.945049, 45.765823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.078876, 32.729187, 45.649666>,  <38.889225, 32.599670, 45.579971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.078876, 32.729187, 45.649666>,  <39.394962, 32.945049, 45.765823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078876, 32.729187, 45.649666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346599, -0.002767, -0.938009,
		0.505399, -0.841881, 0.189230,
		-0.790216, -0.539656, -0.290397,
		38.841812, 32.567291, 45.562546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655743, 32.538193, 45.248520>,  <39.394962, 32.945049, 45.765823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655743, 32.538193, 45.248520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.261082, 32.511429, 45.189129>,  <39.024284, 32.495369, 45.153492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.261082, 32.511429, 45.189129>,  <39.655743, 32.538193, 45.248520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261082, 32.511429, 45.189129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147846, 0.014372, -0.988906,
		0.068309, -0.997655, -0.004287,
		-0.986649, -0.066917, -0.148482,
		38.965088, 32.491356, 45.144585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573498, 32.056263, 44.672546>,  <39.655743, 32.538193, 45.248520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573498, 32.056263, 44.672546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.232498, 32.264671, 44.689404>,  <39.027897, 32.389717, 44.699520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.232498, 32.264671, 44.689404>,  <39.573498, 32.056263, 44.672546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232498, 32.264671, 44.689404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005773, 0.071237, -0.997443,
		-0.522690, -0.850567, -0.057722,
		-0.852504, 0.521020, 0.042145,
		38.976746, 32.420979, 44.702045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262394, 31.743937, 44.099396>,  <39.573498, 32.056263, 44.672546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262394, 31.743937, 44.099396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.049835, 32.077938, 44.156513>,  <38.922302, 32.278339, 44.190784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.049835, 32.077938, 44.156513>,  <39.262394, 31.743937, 44.099396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049835, 32.077938, 44.156513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073629, 0.122403, -0.989746,
		-0.843919, -0.536459, -0.003564,
		-0.531394, 0.835003, 0.142797,
		38.890415, 32.328438, 44.199352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593571, 31.676434, 43.723381>,  <39.262394, 31.743937, 44.099396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593571, 31.676434, 43.723381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641289, 32.070343, 43.773964>,  <38.669922, 32.306690, 43.804314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641289, 32.070343, 43.773964>,  <38.593571, 31.676434, 43.723381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641289, 32.070343, 43.773964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014966, 0.129136, -0.991514,
		-0.992746, 0.116394, 0.030144,
		0.119299, 0.984772, 0.126457,
		38.677078, 32.365776, 43.811901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216560, 32.075199, 43.123684>,  <38.593571, 31.676434, 43.723381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216560, 32.075199, 43.123684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498604, 32.321781, 43.263863>,  <38.667831, 32.469730, 43.347969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498604, 32.321781, 43.263863>,  <38.216560, 32.075199, 43.123684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498604, 32.321781, 43.263863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212562, 0.287733, -0.933824,
		-0.676491, 0.732938, 0.071848,
		0.705108, 0.616451, 0.350444,
		38.710136, 32.506718, 43.368996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039371, 32.694622, 42.814297>,  <38.216560, 32.075199, 43.123684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039371, 32.694622, 42.814297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.424404, 32.713963, 42.920948>,  <38.655426, 32.725567, 42.984940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.424404, 32.713963, 42.920948>,  <38.039371, 32.694622, 42.814297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424404, 32.713963, 42.920948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249537, 0.225420, -0.941763,
		-0.105638, 0.973061, 0.204921,
		0.962586, 0.048351, 0.266628,
		38.713181, 32.728466, 43.000935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273533, 33.262943, 42.526699>,  <38.039371, 32.694622, 42.814297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273533, 33.262943, 42.526699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.599503, 33.046505, 42.609749>,  <38.795086, 32.916641, 42.659580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.599503, 33.046505, 42.609749>,  <38.273533, 33.262943, 42.526699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599503, 33.046505, 42.609749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430450, 0.325206, -0.841994,
		0.388080, 0.775535, 0.497935,
		0.814928, -0.541097, 0.207623,
		38.843983, 32.884174, 42.672035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794140, 33.698093, 42.401485>,  <38.273533, 33.262943, 42.526699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794140, 33.698093, 42.401485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.940475, 33.327305, 42.368298>,  <39.028278, 33.104832, 42.348385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.940475, 33.327305, 42.368298>,  <38.794140, 33.698093, 42.401485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940475, 33.327305, 42.368298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338849, 0.215697, -0.915782,
		0.866799, 0.306919, 0.393014,
		0.365843, -0.926971, -0.082967,
		39.050228, 33.049213, 42.343407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546780, 33.785545, 42.288055>,  <38.794140, 33.698093, 42.401485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546780, 33.785545, 42.288055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.417309, 33.422977, 42.179516>,  <39.339626, 33.205437, 42.114391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.417309, 33.422977, 42.179516>,  <39.546780, 33.785545, 42.288055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417309, 33.422977, 42.179516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436948, 0.111179, -0.892590,
		0.839230, -0.407481, 0.360072,
		-0.323681, -0.906421, -0.271353,
		39.320206, 33.151051, 42.098110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.734167, 31.720680, 29.374605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.424601, 31.792282, 29.131620>,  <31.238861, 31.835243, 28.985830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.424601, 31.792282, 29.131620>,  <31.734167, 31.720680, 29.374605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424601, 31.792282, 29.131620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601308, 0.093248, 0.793557,
		0.198694, 0.979419, 0.035471,
		-0.773918, 0.179004, -0.607461,
		31.192425, 31.845984, 28.949383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400312, 32.332592, 29.511595>,  <31.734167, 31.720680, 29.374605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400312, 32.332592, 29.511595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148359, 32.064056, 29.355362>,  <30.997187, 31.902935, 29.261621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148359, 32.064056, 29.355362>,  <31.400312, 32.332592, 29.511595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148359, 32.064056, 29.355362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577122, 0.068007, 0.813821,
		-0.519787, 0.738025, -0.430280,
		-0.629882, -0.671338, -0.390581,
		30.959394, 31.862656, 29.238188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802912, 32.634357, 29.748077>,  <31.400312, 32.332592, 29.511595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802912, 32.634357, 29.748077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722782, 32.264801, 29.617668>,  <30.674704, 32.043068, 29.539423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722782, 32.264801, 29.617668>,  <30.802912, 32.634357, 29.748077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722782, 32.264801, 29.617668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731562, -0.080290, 0.677031,
		-0.651680, 0.374133, -0.659801,
		-0.200324, -0.923893, -0.326025,
		30.662685, 31.987633, 29.519861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020350, 32.676231, 29.592266>,  <30.802912, 32.634357, 29.748077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020350, 32.676231, 29.592266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.147285, 32.307629, 29.681810>,  <30.223448, 32.086468, 29.735537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.147285, 32.307629, 29.681810>,  <30.020350, 32.676231, 29.592266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147285, 32.307629, 29.681810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836995, -0.161204, 0.522927,
		-0.445796, -0.353314, -0.822456,
		0.317341, -0.921511, 0.223858,
		30.242487, 32.031174, 29.748968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485886, 32.338097, 29.579260>,  <30.020350, 32.676231, 29.592266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485886, 32.338097, 29.579260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716528, 32.091007, 29.793154>,  <29.854914, 31.942753, 29.921490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716528, 32.091007, 29.793154>,  <29.485886, 32.338097, 29.579260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716528, 32.091007, 29.793154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710332, -0.055651, 0.701664,
		-0.403676, -0.784424, -0.470877,
		0.576607, -0.617724, 0.534736,
		29.889509, 31.905689, 29.953575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045284, 31.915522, 29.784332>,  <29.485886, 32.338097, 29.579260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045284, 31.915522, 29.784332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.355677, 31.875654, 30.033464>,  <29.541912, 31.851734, 30.182943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.355677, 31.875654, 30.033464>,  <29.045284, 31.915522, 29.784332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355677, 31.875654, 30.033464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625766, 0.002289, 0.780007,
		-0.079168, -0.995018, -0.060593,
		0.775983, -0.099669, 0.622830,
		29.588472, 31.845753, 30.220314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720837, 31.521677, 30.318878>,  <29.045284, 31.915522, 29.784332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720837, 31.521677, 30.318878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057514, 31.673458, 30.472538>,  <29.259520, 31.764526, 30.564734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057514, 31.673458, 30.472538>,  <28.720837, 31.521677, 30.318878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057514, 31.673458, 30.472538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505747, 0.304805, 0.807040,
		0.189143, -0.873562, 0.448458,
		0.841692, 0.379452, 0.384150,
		29.310022, 31.787294, 30.587784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651892, 31.391005, 31.075058>,  <28.720837, 31.521677, 30.318878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651892, 31.391005, 31.075058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.904995, 31.699697, 31.049620>,  <29.056858, 31.884912, 31.034357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.904995, 31.699697, 31.049620>,  <28.651892, 31.391005, 31.075058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904995, 31.699697, 31.049620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373435, 0.376070, 0.848008,
		0.678353, -0.512834, 0.526154,
		0.632758, 0.771733, -0.063598,
		29.094822, 31.931217, 31.030540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996973, 31.541441, 31.763783>,  <28.651892, 31.391005, 31.075058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996973, 31.541441, 31.763783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059656, 31.878305, 31.557402>,  <29.097265, 32.080425, 31.433573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059656, 31.878305, 31.557402>,  <28.996973, 31.541441, 31.763783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059656, 31.878305, 31.557402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241756, 0.539224, 0.806717,
		0.957600, -0.001684, 0.288098,
		0.156708, 0.842161, -0.515954,
		29.106668, 32.130955, 31.402617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463713, 31.942455, 32.316265>,  <28.996973, 31.541441, 31.763783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463713, 31.942455, 32.316265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266430, 32.164608, 32.048447>,  <29.148060, 32.297901, 31.887754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266430, 32.164608, 32.048447>,  <29.463713, 31.942455, 32.316265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266430, 32.164608, 32.048447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230215, 0.658904, 0.716133,
		0.838897, 0.507342, -0.197119,
		-0.493207, 0.555382, -0.669550,
		29.118467, 32.331223, 31.847582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518951, 32.720219, 32.592873>,  <29.463713, 31.942455, 32.316265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518951, 32.720219, 32.592873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225470, 32.770409, 32.325760>,  <29.049379, 32.800522, 32.165493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225470, 32.770409, 32.325760>,  <29.518951, 32.720219, 32.592873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225470, 32.770409, 32.325760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560957, 0.442716, 0.699521,
		0.383409, 0.887839, -0.254438,
		-0.733706, 0.125474, -0.667781,
		29.005358, 32.808052, 32.125427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341713, 33.471443, 32.651131>,  <29.518951, 32.720219, 32.592873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341713, 33.471443, 32.651131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.020674, 33.293026, 32.492699>,  <28.828051, 33.185974, 32.397640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.020674, 33.293026, 32.492699>,  <29.341713, 33.471443, 32.651131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020674, 33.293026, 32.492699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596214, 0.621066, 0.508730,
		0.019073, 0.644453, -0.764406,
		-0.802599, -0.446046, -0.396077,
		28.779894, 33.159210, 32.373875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931112, 34.072556, 32.642300>,  <29.341713, 33.471443, 32.651131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931112, 34.072556, 32.642300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.706898, 33.745522, 32.589592>,  <28.572369, 33.549301, 32.557968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.706898, 33.745522, 32.589592>,  <28.931112, 34.072556, 32.642300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706898, 33.745522, 32.589592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767039, 0.452588, 0.454769,
		-0.312173, 0.355987, -0.880807,
		-0.560534, -0.817580, -0.131770,
		28.538738, 33.500248, 32.550060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412601, 34.354977, 32.319813>,  <28.931112, 34.072556, 32.642300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412601, 34.354977, 32.319813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.299721, 34.019066, 32.505344>,  <28.231993, 33.817520, 32.616661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.299721, 34.019066, 32.505344>,  <28.412601, 34.354977, 32.319813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299721, 34.019066, 32.505344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679684, 0.516218, 0.521103,
		-0.677046, -0.168198, -0.716462,
		-0.282202, -0.839779, 0.463824,
		28.215059, 33.767132, 32.644493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763712, 34.342812, 32.190643>,  <28.412601, 34.354977, 32.319813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763712, 34.342812, 32.190643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.805073, 34.102715, 32.507885>,  <27.829889, 33.958656, 32.698231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.805073, 34.102715, 32.507885>,  <27.763712, 34.342812, 32.190643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805073, 34.102715, 32.507885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823422, 0.395619, 0.406770,
		-0.557928, -0.695123, -0.453344,
		0.103404, -0.600242, 0.793106,
		27.836094, 33.922642, 32.745815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068903, 34.085083, 32.358028>,  <27.763712, 34.342812, 32.190643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068903, 34.085083, 32.358028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279240, 34.061176, 32.697422>,  <27.405441, 34.046833, 32.901058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279240, 34.061176, 32.697422>,  <27.068903, 34.085083, 32.358028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279240, 34.061176, 32.697422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784132, 0.352464, 0.510789,
		-0.329588, -0.933915, 0.138475,
		0.525841, -0.059767, 0.848480,
		27.436993, 34.043247, 32.951965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647659, 33.760387, 32.861931>,  <27.068903, 34.085083, 32.358028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647659, 33.760387, 32.861931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925211, 33.942680, 33.084946>,  <27.091742, 34.052055, 33.218754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.925211, 33.942680, 33.084946>,  <26.647659, 33.760387, 32.861931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925211, 33.942680, 33.084946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675094, 0.142291, 0.723879,
		0.250561, -0.878672, 0.406393,
		0.693878, 0.455729, 0.557534,
		27.133375, 34.079399, 33.252205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583588, 33.531033, 33.589520>,  <26.647659, 33.760387, 32.861931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583588, 33.531033, 33.589520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.768564, 33.880703, 33.648808>,  <26.879551, 34.090504, 33.684380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.768564, 33.880703, 33.648808>,  <26.583588, 33.531033, 33.589520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768564, 33.880703, 33.648808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659793, 0.227611, 0.716147,
		0.592300, -0.428971, 0.682030,
		0.462444, 0.874172, 0.148218,
		26.907297, 34.142956, 33.693272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731617, 33.620216, 34.413513>,  <26.583588, 33.531033, 33.589520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731617, 33.620216, 34.413513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.723852, 33.981064, 34.241096>,  <26.719193, 34.197575, 34.137646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.723852, 33.981064, 34.241096>,  <26.731617, 33.620216, 34.413513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723852, 33.981064, 34.241096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709034, 0.291539, 0.642087,
		0.704907, 0.318088, 0.633976,
		-0.019412, 0.902122, -0.431043,
		26.718029, 34.251701, 34.111782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628628, 34.015800, 35.005650>,  <26.731617, 33.620216, 34.413513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628628, 34.015800, 35.005650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.561544, 34.283924, 34.716496>,  <26.521294, 34.444798, 34.543003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.561544, 34.283924, 34.716496>,  <26.628628, 34.015800, 35.005650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561544, 34.283924, 34.716496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604707, 0.509170, 0.612434,
		0.778591, 0.539841, 0.319950,
		-0.167708, 0.670311, -0.722881,
		26.511232, 34.485016, 34.499630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507828, 33.334286, 35.153606>,  <26.628628, 34.015800, 35.005650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507828, 33.334286, 35.153606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.538685, 33.196842, 35.527981>,  <26.557199, 33.114376, 35.752605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.538685, 33.196842, 35.527981>,  <26.507828, 33.334286, 35.153606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538685, 33.196842, 35.527981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903539, -0.372769, -0.211329,
		0.421504, 0.861959, 0.281710,
		0.077144, -0.343612, 0.935938,
		26.561829, 33.093758, 35.808762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210928, 33.553398, 35.408962>,  <26.507828, 33.334286, 35.153606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210928, 33.553398, 35.408962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067368, 33.252792, 35.630379>,  <26.981232, 33.072430, 35.763229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067368, 33.252792, 35.630379>,  <27.210928, 33.553398, 35.408962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067368, 33.252792, 35.630379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894886, -0.445608, -0.024760,
		0.265271, 0.486471, 0.832453,
		-0.358902, -0.751518, 0.553543,
		26.959698, 33.027336, 35.796440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729868, 33.411484, 35.780975>,  <27.210928, 33.553398, 35.408962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729868, 33.411484, 35.780975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508785, 33.078468, 35.766029>,  <27.376135, 32.878658, 35.757061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508785, 33.078468, 35.766029>,  <27.729868, 33.411484, 35.780975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508785, 33.078468, 35.766029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829203, -0.544904, -0.124509,
		0.083297, -0.099803, 0.991514,
		-0.552706, -0.832538, -0.037368,
		27.342974, 32.828709, 35.754818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129890, 32.939762, 36.135967>,  <27.729868, 33.411484, 35.780975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129890, 32.939762, 36.135967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882853, 32.681347, 35.956543>,  <27.734631, 32.526299, 35.848888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882853, 32.681347, 35.956543>,  <28.129890, 32.939762, 36.135967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882853, 32.681347, 35.956543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776612, -0.591068, -0.217974,
		-0.124312, -0.482980, 0.866763,
		-0.617593, -0.646041, -0.448564,
		27.697575, 32.487534, 35.821972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351175, 32.240528, 36.291637>,  <28.129890, 32.939762, 36.135967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351175, 32.240528, 36.291637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115025, 32.209251, 35.970303>,  <27.973335, 32.190487, 35.777504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115025, 32.209251, 35.970303>,  <28.351175, 32.240528, 36.291637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115025, 32.209251, 35.970303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691093, -0.563125, -0.453080,
		-0.416951, -0.822665, 0.386490,
		-0.590375, -0.078188, -0.803333,
		27.937912, 32.185795, 35.729301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360901, 31.541706, 36.182869>,  <28.351175, 32.240528, 36.291637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360901, 31.541706, 36.182869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265345, 31.694206, 35.825638>,  <28.208012, 31.785706, 35.611301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265345, 31.694206, 35.825638>,  <28.360901, 31.541706, 36.182869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265345, 31.694206, 35.825638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737689, -0.526822, -0.422225,
		-0.631463, -0.759676, -0.155390,
		-0.238891, 0.381249, -0.893073,
		28.193678, 31.808580, 35.557716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247276, 30.962721, 35.730507>,  <28.360901, 31.541706, 36.182869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247276, 30.962721, 35.730507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.331495, 31.279659, 35.501472>,  <28.382027, 31.469822, 35.364052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.331495, 31.279659, 35.501472>,  <28.247276, 30.962721, 35.730507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331495, 31.279659, 35.501472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731253, -0.516377, -0.445671,
		-0.648797, -0.324871, -0.688128,
		0.210548, 0.792346, -0.572588,
		28.394659, 31.517363, 35.329697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329727, 30.767733, 35.090870>,  <28.247276, 30.962721, 35.730507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329727, 30.767733, 35.090870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.508238, 31.125063, 35.069668>,  <28.615345, 31.339460, 35.056946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.508238, 31.125063, 35.069668>,  <28.329727, 30.767733, 35.090870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508238, 31.125063, 35.069668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771874, -0.414221, -0.482320,
		-0.452822, 0.174339, -0.874391,
		0.446278, 0.893324, -0.053001,
		28.642120, 31.393061, 35.053768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506632, 30.953068, 34.387074>,  <28.329727, 30.767733, 35.090870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506632, 30.953068, 34.387074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755135, 31.173147, 34.610260>,  <28.904236, 31.305195, 34.744171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755135, 31.173147, 34.610260>,  <28.506632, 30.953068, 34.387074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755135, 31.173147, 34.610260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779255, -0.358829, -0.513812,
		-0.082483, 0.754006, -0.651668,
		0.621255, 0.550196, 0.557966,
		28.941511, 31.338205, 34.777649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882629, 31.430262, 33.864067>,  <28.506632, 30.953068, 34.387074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882629, 31.430262, 33.864067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121964, 31.464409, 34.182743>,  <29.265564, 31.484898, 34.373947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121964, 31.464409, 34.182743>,  <28.882629, 31.430262, 33.864067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121964, 31.464409, 34.182743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799266, -0.133474, -0.585969,
		0.056314, 0.987369, -0.148094,
		0.598334, 0.085368, 0.796686,
		29.301464, 31.490019, 34.421749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384012, 31.927671, 33.689922>,  <28.882629, 31.430262, 33.864067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384012, 31.927671, 33.689922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.545828, 31.706511, 33.981304>,  <29.642918, 31.573814, 34.156132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.545828, 31.706511, 33.981304>,  <29.384012, 31.927671, 33.689922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545828, 31.706511, 33.981304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825315, -0.122412, -0.551244,
		0.393957, 0.824204, 0.406799,
		0.404541, -0.552904, 0.728453,
		29.667191, 31.540640, 34.199841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974432, 32.316067, 33.891483>,  <29.384012, 31.927671, 33.689922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974432, 32.316067, 33.891483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.015327, 31.930761, 33.990814>,  <30.039865, 31.699577, 34.050411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.015327, 31.930761, 33.990814>,  <29.974432, 32.316067, 33.891483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015327, 31.930761, 33.990814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900059, -0.016726, -0.435447,
		0.423605, 0.268027, 0.865286,
		0.102238, -0.963266, 0.248325,
		30.046000, 31.641781, 34.065311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691565, 32.302322, 33.958893>,  <29.974432, 32.316067, 33.891483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691565, 32.302322, 33.958893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.608467, 31.911610, 33.979839>,  <30.558609, 31.677183, 33.992409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.608467, 31.911610, 33.979839>,  <30.691565, 32.302322, 33.958893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608467, 31.911610, 33.979839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805436, -0.201191, -0.557489,
		0.555081, -0.073634, 0.828531,
		-0.207743, -0.976780, 0.052370,
		30.546144, 31.618576, 33.995552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298107, 32.022095, 34.090015>,  <30.691565, 32.302322, 33.958893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298107, 32.022095, 34.090015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.094969, 31.722061, 33.920559>,  <30.973085, 31.542042, 33.818886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.094969, 31.722061, 33.920559>,  <31.298107, 32.022095, 34.090015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094969, 31.722061, 33.920559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810459, -0.249336, -0.530083,
		0.291978, -0.612541, 0.734535,
		-0.507844, -0.750083, -0.423639,
		30.942616, 31.497036, 33.793468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693256, 31.476973, 34.097851>,  <31.298107, 32.022095, 34.090015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693256, 31.476973, 34.097851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.453716, 31.343468, 33.806652>,  <31.309992, 31.263365, 33.631931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.453716, 31.343468, 33.806652>,  <31.693256, 31.476973, 34.097851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453716, 31.343468, 33.806652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795341, -0.354387, -0.491775,
		-0.093856, -0.873505, 0.477681,
		-0.598852, -0.333764, -0.727996,
		31.274061, 31.243340, 33.588253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887241, 30.748999, 33.953049>,  <31.693256, 31.476973, 34.097851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887241, 30.748999, 33.953049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.690786, 30.883518, 33.631630>,  <31.572914, 30.964230, 33.438778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.690786, 30.883518, 33.631630>,  <31.887241, 30.748999, 33.953049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690786, 30.883518, 33.631630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744645, -0.316553, -0.587620,
		-0.451981, -0.886959, -0.094953,
		-0.491138, 0.336300, -0.803546,
		31.543446, 30.984407, 33.390568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995998, 30.283291, 33.454098>,  <31.887241, 30.748999, 33.953049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995998, 30.283291, 33.454098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871588, 30.581429, 33.218227>,  <31.796942, 30.760311, 33.076706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871588, 30.581429, 33.218227>,  <31.995998, 30.283291, 33.454098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871588, 30.581429, 33.218227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535013, -0.375493, -0.756813,
		-0.785508, -0.550875, -0.281981,
		-0.311027, 0.745347, -0.589678,
		31.778280, 30.805033, 33.041325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021889, 29.980520, 32.816589>,  <31.995998, 30.283291, 33.454098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021889, 29.980520, 32.816589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015820, 30.371141, 32.730694>,  <32.012177, 30.605515, 32.679157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015820, 30.371141, 32.730694>,  <32.021889, 29.980520, 32.816589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015820, 30.371141, 32.730694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561274, -0.169414, -0.810105,
		-0.827491, -0.132818, -0.545544,
		-0.015174, 0.976554, -0.214736,
		32.011269, 30.664108, 32.666271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820103, 30.075396, 32.092060>,  <32.021889, 29.980520, 32.816589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820103, 30.075396, 32.092060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.023140, 30.410872, 32.171001>,  <32.144962, 30.612158, 32.218365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.023140, 30.410872, 32.171001>,  <31.820103, 30.075396, 32.092060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023140, 30.410872, 32.171001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516005, -0.112477, -0.849169,
		-0.689993, 0.532866, -0.489861,
		0.507591, 0.838691, 0.197353,
		32.175419, 30.662479, 32.230209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051678, 30.335218, 31.367224>,  <31.820103, 30.075396, 32.092060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051678, 30.335218, 31.367224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.282490, 30.530064, 31.629446>,  <32.420979, 30.646971, 31.786779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.282490, 30.530064, 31.629446>,  <32.051678, 30.335218, 31.367224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282490, 30.530064, 31.629446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723445, 0.067654, -0.687059,
		-0.379026, 0.870715, -0.313361,
		0.577032, 0.487113, 0.655557,
		32.455601, 30.676197, 31.826113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180359, 30.944464, 30.963711>,  <32.051678, 30.335218, 31.367224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180359, 30.944464, 30.963711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.449089, 30.893179, 31.255522>,  <32.610329, 30.862408, 31.430609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.449089, 30.893179, 31.255522>,  <32.180359, 30.944464, 30.963711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449089, 30.893179, 31.255522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739638, 0.063210, -0.670030,
		0.039792, 0.989731, 0.137295,
		0.671828, -0.128210, 0.729527,
		32.650639, 30.854715, 31.474380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577511, 31.499062, 31.016413>,  <32.180359, 30.944464, 30.963711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577511, 31.499062, 31.016413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.832333, 31.251461, 31.200151>,  <32.985226, 31.102901, 31.310394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.832333, 31.251461, 31.200151>,  <32.577511, 31.499062, 31.016413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832333, 31.251461, 31.200151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734044, 0.305311, -0.606601,
		0.235243, 0.723618, 0.648874,
		0.637056, -0.619001, 0.459346,
		33.023449, 31.065762, 31.337955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.227314, 30.150320, 44.551804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.917110, 29.906351, 44.617012>,  <40.730988, 29.759970, 44.656136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.917110, 29.906351, 44.617012>,  <41.227314, 30.150320, 44.551804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917110, 29.906351, 44.617012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109358, 0.124539, 0.986170,
		-0.621788, 0.782616, -0.029882,
		-0.775513, -0.609921, 0.163022,
		40.684456, 29.723375, 44.665920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625793, 30.501064, 45.037277>,  <41.227314, 30.150320, 44.551804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625793, 30.501064, 45.037277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.665737, 30.103687, 45.059544>,  <40.689705, 29.865261, 45.072903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.665737, 30.103687, 45.059544>,  <40.625793, 30.501064, 45.037277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665737, 30.103687, 45.059544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077737, 0.047983, 0.995819,
		-0.991960, -0.103772, -0.072435,
		0.099862, -0.993443, 0.055664,
		40.695698, 29.805655, 45.076244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355713, 30.458221, 45.685707>,  <40.625793, 30.501064, 45.037277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355713, 30.458221, 45.685707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.513809, 30.103342, 45.590492>,  <40.608665, 29.890415, 45.533363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.513809, 30.103342, 45.590492>,  <40.355713, 30.458221, 45.685707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513809, 30.103342, 45.590492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143590, -0.196280, 0.969977,
		-0.907285, -0.417555, 0.049815,
		0.395241, -0.887199, -0.238039,
		40.632381, 29.837183, 45.519081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012337, 30.038031, 46.099979>,  <40.355713, 30.458221, 45.685707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012337, 30.038031, 46.099979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.336235, 29.823038, 46.005806>,  <40.530575, 29.694042, 45.949303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.336235, 29.823038, 46.005806>,  <40.012337, 30.038031, 46.099979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336235, 29.823038, 46.005806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148758, -0.200091, 0.968419,
		-0.567614, -0.819194, -0.082068,
		0.809745, -0.537480, -0.235436,
		40.579159, 29.661795, 45.935177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880569, 29.419785, 46.466072>,  <40.012337, 30.038031, 46.099979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880569, 29.419785, 46.466072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.263542, 29.393564, 46.353626>,  <40.493324, 29.377832, 46.286160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.263542, 29.393564, 46.353626>,  <39.880569, 29.419785, 46.466072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263542, 29.393564, 46.353626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243623, -0.338861, 0.908747,
		-0.154828, -0.938550, -0.308467,
		0.957432, -0.065550, -0.281118,
		40.550774, 29.373899, 46.269291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015110, 28.727125, 46.644974>,  <39.880569, 29.419785, 46.466072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015110, 28.727125, 46.644974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354572, 28.937689, 46.624294>,  <40.558250, 29.064028, 46.611889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354572, 28.937689, 46.624294>,  <40.015110, 28.727125, 46.644974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354572, 28.937689, 46.624294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193911, -0.218698, 0.956331,
		0.492117, -0.821622, -0.287676,
		0.848657, 0.526411, -0.051697,
		40.609169, 29.095612, 46.608784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361702, 28.435951, 47.107193>,  <40.015110, 28.727125, 46.644974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361702, 28.435951, 47.107193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.588257, 28.762892, 47.064964>,  <40.724190, 28.959057, 47.039627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.588257, 28.762892, 47.064964>,  <40.361702, 28.435951, 47.107193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588257, 28.762892, 47.064964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469299, -0.214563, 0.856575,
		0.677471, -0.534696, -0.505107,
		0.566384, 0.817351, -0.105572,
		40.758171, 29.008097, 47.033291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155830, 28.206255, 47.092678>,  <40.361702, 28.435951, 47.107193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155830, 28.206255, 47.092678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.072090, 28.571493, 47.232635>,  <41.021847, 28.790636, 47.316612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.072090, 28.571493, 47.232635>,  <41.155830, 28.206255, 47.092678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072090, 28.571493, 47.232635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456791, -0.225063, 0.860633,
		0.864589, 0.340005, -0.369976,
		-0.209351, 0.913095, 0.349898,
		41.009285, 28.845421, 47.337605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770550, 28.300932, 47.593746>,  <41.155830, 28.206255, 47.092678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770550, 28.300932, 47.593746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.511395, 28.594294, 47.676075>,  <41.355900, 28.770311, 47.725471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.511395, 28.594294, 47.676075>,  <41.770550, 28.300932, 47.593746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511395, 28.594294, 47.676075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175390, -0.119310, 0.977243,
		0.741270, 0.669241, -0.051333,
		-0.647887, 0.733404, 0.205819,
		41.317028, 28.814314, 47.737820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099720, 28.619017, 48.115921>,  <41.770550, 28.300932, 47.593746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099720, 28.619017, 48.115921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.718849, 28.737898, 48.144276>,  <41.490326, 28.809227, 48.161289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.718849, 28.737898, 48.144276>,  <42.099720, 28.619017, 48.115921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718849, 28.737898, 48.144276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012544, -0.193775, 0.980966,
		0.305280, 0.934945, 0.180780,
		-0.952180, 0.297202, 0.070883,
		41.433197, 28.827059, 48.165539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068569, 28.861320, 48.799587>,  <42.099720, 28.619017, 48.115921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068569, 28.861320, 48.799587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.679684, 28.821629, 48.714779>,  <41.446354, 28.797813, 48.663895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.679684, 28.821629, 48.714779>,  <42.068569, 28.861320, 48.799587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679684, 28.821629, 48.714779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202958, -0.094016, 0.974664,
		-0.116649, 0.990613, 0.071264,
		-0.972215, -0.099230, -0.212020,
		41.388020, 28.791859, 48.651173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654743, 29.342333, 49.289963>,  <42.068569, 28.861320, 48.799587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654743, 29.342333, 49.289963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.444004, 29.027227, 49.162304>,  <41.317562, 28.838163, 49.085709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.444004, 29.027227, 49.162304>,  <41.654743, 29.342333, 49.289963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444004, 29.027227, 49.162304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099844, -0.315528, 0.943649,
		-0.844074, 0.529025, 0.087582,
		-0.526848, -0.787765, -0.319149,
		41.285950, 28.790897, 49.066559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280983, 29.272366, 49.861263>,  <41.654743, 29.342333, 49.289963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280983, 29.272366, 49.861263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.233685, 28.949066, 49.630527>,  <41.205307, 28.755087, 49.492085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.233685, 28.949066, 49.630527>,  <41.280983, 29.272366, 49.861263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233685, 28.949066, 49.630527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022244, -0.578618, 0.815295,
		-0.992735, 0.109235, 0.050440,
		-0.118244, -0.808251, -0.576844,
		41.198212, 28.706591, 49.457474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234821, 28.899092, 50.464573>,  <41.280983, 29.272366, 49.861263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234821, 28.899092, 50.464573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.363094, 28.665043, 50.166634>,  <41.440060, 28.524614, 49.987869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.363094, 28.665043, 50.166634>,  <41.234821, 28.899092, 50.464573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363094, 28.665043, 50.166634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620705, -0.723814, 0.301360,
		-0.715459, 0.365683, -0.595310,
		0.320692, -0.585123, -0.744841,
		41.459301, 28.489506, 49.943180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603664, 29.183056, 50.729099>,  <41.234821, 28.899092, 50.464573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603664, 29.183056, 50.729099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.412964, 29.423733, 50.985435>,  <40.298542, 29.568140, 51.139236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.412964, 29.423733, 50.985435>,  <40.603664, 29.183056, 50.729099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412964, 29.423733, 50.985435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168814, 0.652780, -0.738498,
		-0.862675, -0.460264, -0.209641,
		-0.476754, 0.601693, 0.640836,
		40.269939, 29.604240, 51.177685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082314, 29.363834, 50.375462>,  <40.603664, 29.183056, 50.729099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082314, 29.363834, 50.375462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.040588, 29.627815, 50.673073>,  <40.015553, 29.786203, 50.851639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.040588, 29.627815, 50.673073>,  <40.082314, 29.363834, 50.375462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040588, 29.627815, 50.673073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355922, 0.673793, -0.647551,
		-0.928676, -0.332364, 0.164607,
		-0.104312, 0.659952, 0.744031,
		40.009296, 29.825800, 50.896282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393135, 29.539536, 50.448124>,  <40.082314, 29.363834, 50.375462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393135, 29.539536, 50.448124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.597355, 29.853821, 50.587837>,  <39.719887, 30.042391, 50.671665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.597355, 29.853821, 50.587837>,  <39.393135, 29.539536, 50.448124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597355, 29.853821, 50.587837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576473, 0.614174, -0.538952,
		-0.637982, 0.073806, 0.766506,
		0.510546, 0.785712, 0.349284,
		39.750519, 30.089535, 50.692623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842060, 30.004135, 50.521866>,  <39.393135, 29.539536, 50.448124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842060, 30.004135, 50.521866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.180214, 30.217617, 50.513023>,  <39.383106, 30.345705, 50.507717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.180214, 30.217617, 50.513023>,  <38.842060, 30.004135, 50.521866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180214, 30.217617, 50.513023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408340, 0.619020, -0.670875,
		-0.344365, 0.576172, 0.741241,
		0.845383, 0.533704, -0.022105,
		39.433830, 30.377728, 50.506393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618511, 30.628651, 50.315491>,  <38.842060, 30.004135, 50.521866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618511, 30.628651, 50.315491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.015156, 30.631020, 50.263832>,  <39.253143, 30.632441, 50.232838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.015156, 30.631020, 50.263832>,  <38.618511, 30.628651, 50.315491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015156, 30.631020, 50.263832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098666, 0.680197, -0.726359,
		0.083543, 0.733006, 0.675073,
		0.991608, 0.005924, -0.129148,
		39.312637, 30.632797, 50.225086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812607, 31.338709, 50.518314>,  <38.618511, 30.628651, 50.315491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812607, 31.338709, 50.518314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078613, 31.173700, 50.269291>,  <39.238216, 31.074696, 50.119877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078613, 31.173700, 50.269291>,  <38.812607, 31.338709, 50.518314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078613, 31.173700, 50.269291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157253, 0.737570, -0.656706,
		0.730084, 0.534620, 0.425627,
		0.665018, -0.412519, -0.622558,
		39.278118, 31.049944, 50.082523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397251, 31.828976, 50.326317>,  <38.812607, 31.338709, 50.518314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397251, 31.828976, 50.326317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.350853, 31.544735, 50.048729>,  <39.323013, 31.374191, 49.882175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.350853, 31.544735, 50.048729>,  <39.397251, 31.828976, 50.326317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350853, 31.544735, 50.048729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115389, 0.703594, -0.701171,
		0.986524, -0.001258, -0.163611,
		-0.115998, -0.710601, -0.693967,
		39.316055, 31.331554, 49.840538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603840, 32.091171, 49.723362>,  <39.397251, 31.828976, 50.326317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603840, 32.091171, 49.723362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397652, 31.778635, 49.582623>,  <39.273937, 31.591114, 49.498180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397652, 31.778635, 49.582623>,  <39.603840, 32.091171, 49.723362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397652, 31.778635, 49.582623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162657, 0.492357, -0.855060,
		0.841326, -0.383530, -0.380886,
		-0.515473, -0.781338, -0.351849,
		39.243011, 31.544233, 49.477066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793358, 32.032745, 49.009766>,  <39.603840, 32.091171, 49.723362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793358, 32.032745, 49.009766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.457737, 31.819180, 49.051567>,  <39.256363, 31.691040, 49.076649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.457737, 31.819180, 49.051567>,  <39.793358, 32.032745, 49.009766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457737, 31.819180, 49.051567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334790, 0.355295, -0.872743,
		0.428843, -0.767265, -0.476862,
		-0.839053, -0.533919, 0.104507,
		39.206020, 31.659004, 49.082920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768093, 31.795416, 48.379536>,  <39.793358, 32.032745, 49.009766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768093, 31.795416, 48.379536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.406258, 31.703894, 48.523411>,  <39.189156, 31.648981, 48.609737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.406258, 31.703894, 48.523411>,  <39.768093, 31.795416, 48.379536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406258, 31.703894, 48.523411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422092, 0.362551, -0.830900,
		0.059709, -0.903441, -0.424535,
		-0.904585, -0.228805, 0.359687,
		39.134884, 31.635252, 48.631317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307236, 31.326391, 47.857735>,  <39.768093, 31.795416, 48.379536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307236, 31.326391, 47.857735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.084713, 31.569700, 48.084194>,  <38.951199, 31.715685, 48.220070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.084713, 31.569700, 48.084194>,  <39.307236, 31.326391, 47.857735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084713, 31.569700, 48.084194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542976, 0.249663, -0.801776,
		-0.629044, -0.753442, 0.191387,
		-0.556310, 0.608271, 0.566151,
		38.917820, 31.752182, 48.254040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623745, 31.119127, 47.717644>,  <39.307236, 31.326391, 47.857735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623745, 31.119127, 47.717644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602974, 31.485189, 47.877541>,  <38.590511, 31.704826, 47.973480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602974, 31.485189, 47.877541>,  <38.623745, 31.119127, 47.717644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602974, 31.485189, 47.877541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540187, 0.310932, -0.781997,
		-0.839941, -0.256544, 0.478209,
		-0.051926, 0.915154, 0.399746,
		38.587395, 31.759735, 47.997463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908489, 31.486116, 47.695549>,  <38.623745, 31.119127, 47.717644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908489, 31.486116, 47.695549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181839, 31.776672, 47.724846>,  <38.345848, 31.951006, 47.742424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181839, 31.776672, 47.724846>,  <37.908489, 31.486116, 47.695549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181839, 31.776672, 47.724846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415802, 0.469705, -0.778772,
		-0.600094, 0.501734, 0.623017,
		0.683371, 0.726388, 0.073245,
		38.386848, 31.994589, 47.746819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422623, 32.067127, 47.655106>,  <37.908489, 31.486116, 47.695549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422623, 32.067127, 47.655106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.793201, 32.176331, 47.551445>,  <38.015549, 32.241852, 47.489250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.793201, 32.176331, 47.551445>,  <37.422623, 32.067127, 47.655106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793201, 32.176331, 47.551445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368788, 0.520370, -0.770201,
		-0.075422, 0.809123, 0.582780,
		0.926449, 0.273012, -0.259148,
		38.071136, 32.258236, 47.473701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968822, 32.400818, 48.066013>,  <37.422623, 32.067127, 47.655106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968822, 32.400818, 48.066013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618668, 32.219196, 47.999634>,  <36.408577, 32.110222, 47.959808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618668, 32.219196, 47.999634>,  <36.968822, 32.400818, 48.066013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618668, 32.219196, 47.999634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045150, -0.418559, 0.907067,
		-0.481314, 0.786540, 0.386900,
		-0.875384, -0.454053, -0.165946,
		36.356052, 32.082981, 47.949848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627930, 32.467533, 48.712875>,  <36.968822, 32.400818, 48.066013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627930, 32.467533, 48.712875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410744, 32.189281, 48.524712>,  <36.280430, 32.022331, 48.411816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410744, 32.189281, 48.524712>,  <36.627930, 32.467533, 48.712875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410744, 32.189281, 48.524712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017257, -0.550810, 0.834452,
		-0.839575, 0.461199, 0.287068,
		-0.542969, -0.695632, -0.470406,
		36.247852, 31.980593, 48.383591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207581, 32.259975, 49.226685>,  <36.627930, 32.467533, 48.712875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207581, 32.259975, 49.226685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173389, 31.976835, 48.946217>,  <36.152874, 31.806952, 48.777935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173389, 31.976835, 48.946217>,  <36.207581, 32.259975, 49.226685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173389, 31.976835, 48.946217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075540, -0.706324, 0.703847,
		-0.993472, 0.007198, 0.113848,
		-0.085480, -0.707852, -0.701169,
		36.147747, 31.764479, 48.735867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588806, 31.908686, 49.395107>,  <36.207581, 32.259975, 49.226685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588806, 31.908686, 49.395107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802532, 31.655510, 49.171001>,  <35.930767, 31.503605, 49.036537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802532, 31.655510, 49.171001>,  <35.588806, 31.908686, 49.395107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802532, 31.655510, 49.171001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069238, -0.627809, 0.775282,
		-0.842444, -0.453037, -0.291625,
		0.534316, -0.632941, -0.560261,
		35.962826, 31.465628, 49.002922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232197, 31.237831, 49.468380>,  <35.588806, 31.908686, 49.395107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232197, 31.237831, 49.468380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614861, 31.172737, 49.371777>,  <35.844460, 31.133680, 49.313816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614861, 31.172737, 49.371777>,  <35.232197, 31.237831, 49.468380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614861, 31.172737, 49.371777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068495, -0.680297, 0.729729,
		-0.283048, -0.714642, -0.639664,
		0.956657, -0.162735, -0.241506,
		35.901859, 31.123917, 49.299324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369228, 30.444731, 49.336388>,  <35.232197, 31.237831, 49.468380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369228, 30.444731, 49.336388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721504, 30.612078, 49.425243>,  <35.932869, 30.712486, 49.478558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721504, 30.612078, 49.425243>,  <35.369228, 30.444731, 49.336388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721504, 30.612078, 49.425243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125427, -0.658186, 0.742334,
		0.456778, -0.625907, -0.632135,
		0.880694, 0.418369, 0.222139,
		35.985714, 30.737589, 49.491886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803185, 29.847242, 49.439415>,  <35.369228, 30.444731, 49.336388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803185, 29.847242, 49.439415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.006931, 30.150183, 49.602863>,  <36.129177, 30.331947, 49.700932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.006931, 30.150183, 49.602863>,  <35.803185, 29.847242, 49.439415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006931, 30.150183, 49.602863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220939, -0.574008, 0.788480,
		0.831706, -0.311343, -0.459707,
		0.509364, 0.757351, 0.408618,
		36.159740, 30.377388, 49.725449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703110, 29.180294, 49.054852>,  <35.803185, 29.847242, 49.439415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703110, 29.180294, 49.054852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631546, 28.787130, 49.037502>,  <35.588608, 28.551231, 49.027092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631546, 28.787130, 49.037502>,  <35.703110, 29.180294, 49.054852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631546, 28.787130, 49.037502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296888, 0.095965, -0.950078,
		0.938002, -0.157104, -0.308983,
		-0.178912, -0.982908, -0.043374,
		35.577873, 28.492258, 49.024490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146282, 28.904753, 48.606228>,  <35.703110, 29.180294, 49.054852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146282, 28.904753, 48.606228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821209, 28.672956, 48.630650>,  <35.626163, 28.533878, 48.645302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821209, 28.672956, 48.630650>,  <36.146282, 28.904753, 48.606228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821209, 28.672956, 48.630650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235396, 0.230650, -0.944134,
		0.533037, -0.781658, -0.323856,
		-0.812687, -0.579493, 0.061054,
		35.577404, 28.499109, 48.648968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112793, 28.488607, 47.963589>,  <36.146282, 28.904753, 48.606228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112793, 28.488607, 47.963589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757896, 28.531900, 48.142956>,  <35.544956, 28.557877, 48.250576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757896, 28.531900, 48.142956>,  <36.112793, 28.488607, 47.963589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757896, 28.531900, 48.142956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415514, 0.234698, -0.878786,
		-0.200359, -0.966024, -0.163262,
		-0.887245, 0.108235, 0.448420,
		35.491722, 28.564371, 48.277481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681576, 28.105875, 47.506618>,  <36.112793, 28.488607, 47.963589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681576, 28.105875, 47.506618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472778, 28.359722, 47.734577>,  <35.347500, 28.512032, 47.871353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472778, 28.359722, 47.734577>,  <35.681576, 28.105875, 47.506618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472778, 28.359722, 47.734577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511878, 0.301380, -0.804457,
		-0.682280, -0.711638, 0.167530,
		-0.521992, 0.634620, 0.569897,
		35.316181, 28.550108, 47.905544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029114, 28.015381, 47.240208>,  <35.681576, 28.105875, 47.506618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029114, 28.015381, 47.240208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027664, 28.349232, 47.460529>,  <35.026794, 28.549541, 47.592724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027664, 28.349232, 47.460529>,  <35.029114, 28.015381, 47.240208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027664, 28.349232, 47.460529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669915, 0.406914, -0.620995,
		-0.742429, -0.371244, 0.557653,
		-0.003623, 0.834625, 0.550807,
		35.026577, 28.599619, 47.625771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289799, 28.192221, 47.378990>,  <35.029114, 28.015381, 47.240208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289799, 28.192221, 47.378990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524937, 28.515648, 47.389214>,  <34.666019, 28.709705, 47.395348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524937, 28.515648, 47.389214>,  <34.289799, 28.192221, 47.378990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524937, 28.515648, 47.389214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590442, 0.450432, -0.669694,
		-0.553008, 0.378583, 0.742198,
		0.587844, 0.808570, 0.025561,
		34.701290, 28.758219, 47.396881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880085, 28.719070, 47.246616>,  <34.289799, 28.192221, 47.378990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880085, 28.719070, 47.246616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213505, 28.914263, 47.143028>,  <34.413559, 29.031378, 47.080875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213505, 28.914263, 47.143028>,  <33.880085, 28.719070, 47.246616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213505, 28.914263, 47.143028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507424, 0.490943, -0.708164,
		-0.218431, 0.721699, 0.656840,
		0.833552, 0.487981, -0.258970,
		34.463570, 29.060658, 47.065338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.149220, 27.270189, 48.398346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.285217, 27.166656, 48.036701>,  <38.366814, 27.104538, 47.819714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.285217, 27.166656, 48.036701>,  <38.149220, 27.270189, 48.398346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285217, 27.166656, 48.036701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797803, -0.429622, 0.423007,
		-0.497913, -0.865119, 0.060428,
		0.339990, -0.258830, -0.904109,
		38.387215, 27.089008, 47.765469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674034, 26.728369, 48.575569>,  <38.149220, 27.270189, 48.398346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674034, 26.728369, 48.575569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.014866, 26.908066, 48.683006>,  <39.219364, 27.015884, 48.747467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.014866, 26.908066, 48.683006>,  <38.674034, 26.728369, 48.575569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014866, 26.908066, 48.683006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310631, -0.021010, -0.950298,
		-0.421270, 0.893163, -0.157451,
		0.852080, 0.449242, 0.268593,
		39.270489, 27.042839, 48.763584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822502, 27.486433, 48.332695>,  <38.674034, 26.728369, 48.575569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822502, 27.486433, 48.332695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.154560, 27.266071, 48.367008>,  <39.353794, 27.133854, 48.387596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.154560, 27.266071, 48.367008>,  <38.822502, 27.486433, 48.332695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154560, 27.266071, 48.367008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174148, 0.110049, -0.978551,
		0.529648, 0.827280, 0.187296,
		0.830148, -0.550905, 0.085782,
		39.403603, 27.100800, 48.392742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370457, 27.841343, 47.830540>,  <38.822502, 27.486433, 48.332695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370457, 27.841343, 47.830540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.498260, 27.466999, 47.889977>,  <39.574944, 27.242392, 47.925636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.498260, 27.466999, 47.889977>,  <39.370457, 27.841343, 47.830540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498260, 27.466999, 47.889977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148421, -0.105449, -0.983286,
		0.935888, 0.336220, 0.105210,
		0.319507, -0.935861, 0.148590,
		39.594112, 27.186241, 47.934555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979874, 27.832039, 47.449707>,  <39.370457, 27.841343, 47.830540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979874, 27.832039, 47.449707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.861607, 27.451820, 47.487740>,  <39.790646, 27.223690, 47.510559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.861607, 27.451820, 47.487740>,  <39.979874, 27.832039, 47.449707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861607, 27.451820, 47.487740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076526, -0.122776, -0.989480,
		0.952220, -0.285283, 0.109043,
		-0.295669, -0.950547, 0.095078,
		39.772907, 27.166656, 47.516262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347893, 27.529118, 46.950916>,  <39.979874, 27.832039, 47.449707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347893, 27.529118, 46.950916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.046730, 27.273436, 47.013599>,  <39.866032, 27.120028, 47.051208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.046730, 27.273436, 47.013599>,  <40.347893, 27.529118, 46.950916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046730, 27.273436, 47.013599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125406, -0.094407, -0.987604,
		0.646073, -0.763221, -0.009080,
		-0.752903, -0.639203, 0.156706,
		39.820858, 27.081675, 47.060612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517796, 26.899881, 46.637486>,  <40.347893, 27.529118, 46.950916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517796, 26.899881, 46.637486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.118961, 26.910276, 46.666176>,  <39.879662, 26.916513, 46.683392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.118961, 26.910276, 46.666176>,  <40.517796, 26.899881, 46.637486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118961, 26.910276, 46.666176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073754, -0.087862, -0.993399,
		-0.019510, -0.995794, 0.089522,
		-0.997086, 0.025983, 0.071730,
		39.819836, 26.918074, 46.687695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296688, 26.382570, 46.164959>,  <40.517796, 26.899881, 46.637486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296688, 26.382570, 46.164959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.952667, 26.580330, 46.215359>,  <39.746254, 26.698986, 46.245598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.952667, 26.580330, 46.215359>,  <40.296688, 26.382570, 46.164959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952667, 26.580330, 46.215359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187173, -0.076005, -0.979382,
		-0.474632, -0.865904, 0.157907,
		-0.860053, 0.494402, 0.125999,
		39.694653, 26.728651, 46.253159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796951, 25.909426, 45.998955>,  <40.296688, 26.382570, 46.164959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796951, 25.909426, 45.998955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.655212, 26.280609, 45.952766>,  <39.570168, 26.503319, 45.925053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.655212, 26.280609, 45.952766>,  <39.796951, 25.909426, 45.998955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655212, 26.280609, 45.952766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263471, -0.217557, -0.939814,
		-0.897230, -0.302596, 0.321581,
		-0.354346, 0.927957, -0.115473,
		39.548908, 26.558996, 45.918125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185040, 25.796963, 45.749340>,  <39.796951, 25.909426, 45.998955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185040, 25.796963, 45.749340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.265713, 26.168167, 45.624046>,  <39.314117, 26.390890, 45.548870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.265713, 26.168167, 45.624046>,  <39.185040, 25.796963, 45.749340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265713, 26.168167, 45.624046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198430, -0.274459, -0.940903,
		-0.959139, 0.251923, 0.128791,
		0.201687, 0.928012, -0.313234,
		39.326218, 26.446571, 45.530075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571068, 25.906830, 45.378948>,  <39.185040, 25.796963, 45.749340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571068, 25.906830, 45.378948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.857132, 26.160824, 45.262100>,  <39.028770, 26.313221, 45.191990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.857132, 26.160824, 45.262100>,  <38.571068, 25.906830, 45.378948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857132, 26.160824, 45.262100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345276, -0.042440, -0.937541,
		-0.607724, 0.771356, 0.188894,
		0.715162, 0.634987, -0.292122,
		39.071682, 26.351320, 45.174465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157787, 26.364218, 45.021484>,  <38.571068, 25.906830, 45.378948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157787, 26.364218, 45.021484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.537128, 26.431709, 44.914040>,  <38.764732, 26.472204, 44.849571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.537128, 26.431709, 44.914040>,  <38.157787, 26.364218, 45.021484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537128, 26.431709, 44.914040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207745, -0.309556, -0.927910,
		-0.239713, 0.935792, -0.258517,
		0.948356, 0.168727, -0.268611,
		38.821636, 26.482327, 44.833458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937622, 27.087070, 45.185822>,  <38.157787, 26.364218, 45.021484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937622, 27.087070, 45.185822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.561802, 27.209927, 45.246353>,  <37.336308, 27.283640, 45.282673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.561802, 27.209927, 45.246353>,  <37.937622, 27.087070, 45.185822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561802, 27.209927, 45.246353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106251, -0.681690, 0.723885,
		0.325496, 0.664051, 0.673119,
		-0.939555, 0.307142, 0.151331,
		37.279934, 27.302069, 45.291752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888741, 27.360466, 45.828297>,  <37.937622, 27.087070, 45.185822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888741, 27.360466, 45.828297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.509987, 27.277601, 45.729916>,  <37.282734, 27.227882, 45.670887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.509987, 27.277601, 45.729916>,  <37.888741, 27.360466, 45.828297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509987, 27.277601, 45.729916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111318, -0.506383, 0.855094,
		-0.301688, 0.837054, 0.456426,
		-0.946886, -0.207163, -0.245948,
		37.225922, 27.215452, 45.656132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566643, 27.498104, 46.404968>,  <37.888741, 27.360466, 45.828297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566643, 27.498104, 46.404968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.300137, 27.248095, 46.242275>,  <37.140232, 27.098089, 46.144661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.300137, 27.248095, 46.242275>,  <37.566643, 27.498104, 46.404968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300137, 27.248095, 46.242275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100969, -0.464793, 0.879643,
		-0.738846, 0.627145, 0.246568,
		-0.666267, -0.625025, -0.406733,
		37.100258, 27.060587, 46.120255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084785, 27.326214, 46.949081>,  <37.566643, 27.498104, 46.404968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084785, 27.326214, 46.949081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.034019, 27.035719, 46.678829>,  <37.003559, 26.861422, 46.516678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.034019, 27.035719, 46.678829>,  <37.084785, 27.326214, 46.949081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034019, 27.035719, 46.678829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115482, -0.665687, 0.737241,
		-0.985168, 0.171591, 0.000619,
		-0.126917, -0.726235, -0.675629,
		36.995945, 26.817848, 46.476139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587280, 26.930916, 47.256081>,  <37.084785, 27.326214, 46.949081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587280, 26.930916, 47.256081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.754417, 26.693350, 46.981075>,  <36.854698, 26.550810, 46.816071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.754417, 26.693350, 46.981075>,  <36.587280, 26.930916, 47.256081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754417, 26.693350, 46.981075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112856, -0.716947, 0.687932,
		-0.901484, -0.365035, -0.232542,
		0.417839, -0.593916, -0.687513,
		36.879768, 26.515175, 46.774822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200314, 26.299049, 47.321442>,  <36.587280, 26.930916, 47.256081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200314, 26.299049, 47.321442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.543480, 26.196049, 47.143597>,  <36.749378, 26.134249, 47.036892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.543480, 26.196049, 47.143597>,  <36.200314, 26.299049, 47.321442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543480, 26.196049, 47.143597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121129, -0.739588, 0.662071,
		-0.499310, -0.621855, -0.603312,
		0.857914, -0.257500, -0.444608,
		36.800854, 26.118799, 47.010216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219372, 25.548532, 47.382828>,  <36.200314, 26.299049, 47.321442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219372, 25.548532, 47.382828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.597656, 25.668472, 47.332668>,  <36.824627, 25.740437, 47.302574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.597656, 25.668472, 47.332668>,  <36.219372, 25.548532, 47.382828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597656, 25.668472, 47.332668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295835, -0.634378, 0.714175,
		0.134595, -0.712499, -0.688643,
		0.945709, 0.299849, -0.125399,
		36.881371, 25.758427, 47.295048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474220, 24.888218, 47.362698>,  <36.219372, 25.548532, 47.382828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474220, 24.888218, 47.362698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.748455, 25.167305, 47.445801>,  <36.912994, 25.334757, 47.495663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.748455, 25.167305, 47.445801>,  <36.474220, 24.888218, 47.362698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748455, 25.167305, 47.445801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191512, -0.448185, 0.873185,
		0.702352, -0.558853, -0.440890,
		0.685583, 0.697720, 0.207757,
		36.954128, 25.376621, 47.508129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096745, 24.538900, 47.401958>,  <36.474220, 24.888218, 47.362698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096745, 24.538900, 47.401958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.141716, 24.874960, 47.614189>,  <37.168701, 25.076595, 47.741528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.141716, 24.874960, 47.614189>,  <37.096745, 24.538900, 47.401958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141716, 24.874960, 47.614189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230326, -0.541451, 0.808567,
		0.966596, 0.031295, -0.254385,
		0.112433, 0.840150, 0.530573,
		37.175446, 25.127005, 47.773361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662178, 24.464678, 47.897148>,  <37.096745, 24.538900, 47.401958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662178, 24.464678, 47.897148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.473370, 24.781229, 48.052536>,  <37.360085, 24.971159, 48.145771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.473370, 24.781229, 48.052536>,  <37.662178, 24.464678, 47.897148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473370, 24.781229, 48.052536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247183, -0.304172, 0.919989,
		0.846222, 0.530283, -0.052038,
		-0.472026, 0.791378, 0.388474,
		37.331760, 25.018642, 48.169079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082726, 24.603781, 48.569149>,  <37.662178, 24.464678, 47.897148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082726, 24.603781, 48.569149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.761059, 24.836164, 48.619434>,  <37.568058, 24.975594, 48.649605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.761059, 24.836164, 48.619434>,  <38.082726, 24.603781, 48.569149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761059, 24.836164, 48.619434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072546, -0.113983, 0.990830,
		0.589959, 0.805913, 0.049516,
		-0.804167, 0.580957, 0.125711,
		37.519810, 25.010452, 48.657146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167515, 25.295507, 49.032810>,  <38.082726, 24.603781, 48.569149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167515, 25.295507, 49.032810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.781094, 25.192387, 49.039593>,  <37.549240, 25.130514, 49.043663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.781094, 25.192387, 49.039593>,  <38.167515, 25.295507, 49.032810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781094, 25.192387, 49.039593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003424, 0.052863, 0.998596,
		-0.258336, 0.964751, -0.050185,
		-0.966049, -0.257802, 0.016960,
		37.491280, 25.115046, 49.044682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858627, 25.787668, 49.513519>,  <38.167515, 25.295507, 49.032810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858627, 25.787668, 49.513519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.615719, 25.470900, 49.487980>,  <37.469975, 25.280838, 49.472656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.615719, 25.470900, 49.487980>,  <37.858627, 25.787668, 49.513519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615719, 25.470900, 49.487980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055128, -0.038169, 0.997750,
		-0.792577, 0.609428, -0.020478,
		-0.607275, -0.791922, -0.063848,
		37.433537, 25.233322, 49.468826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263428, 25.905304, 49.960899>,  <37.858627, 25.787668, 49.513519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263428, 25.905304, 49.960899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.244537, 25.509783, 49.904282>,  <37.233204, 25.272470, 49.870312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.244537, 25.509783, 49.904282>,  <37.263428, 25.905304, 49.960899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244537, 25.509783, 49.904282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026167, -0.140425, 0.989745,
		-0.998541, 0.050448, -0.019242,
		-0.047229, -0.988805, -0.141541,
		37.230370, 25.213140, 49.861820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203152, 26.027468, 50.586838>,  <37.263428, 25.905304, 49.960899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203152, 26.027468, 50.586838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.116016, 26.377443, 50.759823>,  <37.063736, 26.587429, 50.863613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.116016, 26.377443, 50.759823>,  <37.203152, 26.027468, 50.586838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116016, 26.377443, 50.759823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593813, 0.232836, -0.770178,
		-0.774552, -0.424581, 0.468829,
		-0.217843, 0.874939, 0.432465,
		37.050663, 26.639925, 50.889561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535725, 26.189863, 50.389400>,  <37.203152, 26.027468, 50.586838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535725, 26.189863, 50.389400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.632027, 26.548397, 50.538330>,  <36.689808, 26.763517, 50.627686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.632027, 26.548397, 50.538330>,  <36.535725, 26.189863, 50.389400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632027, 26.548397, 50.538330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696612, 0.426692, -0.576771,
		-0.675845, -0.120500, 0.727126,
		0.240758, 0.896333, 0.372319,
		36.704254, 26.817297, 50.650024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894482, 26.570801, 50.271431>,  <36.535725, 26.189863, 50.389400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894482, 26.570801, 50.271431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.145168, 26.867485, 50.367008>,  <36.295578, 27.045496, 50.424355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.145168, 26.867485, 50.367008>,  <35.894482, 26.570801, 50.271431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145168, 26.867485, 50.367008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621302, 0.660688, -0.421279,
		-0.470333, 0.115567, 0.874889,
		0.626714, 0.741712, 0.238941,
		36.333183, 27.089998, 50.438690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535427, 27.246944, 50.675308>,  <35.894482, 26.570801, 50.271431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535427, 27.246944, 50.675308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.855373, 27.361385, 50.464272>,  <36.047340, 27.430050, 50.337650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.855373, 27.361385, 50.464272>,  <35.535427, 27.246944, 50.675308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855373, 27.361385, 50.464272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584327, 0.571908, -0.575745,
		0.137012, 0.768808, 0.624630,
		0.799868, 0.286105, -0.527593,
		36.095333, 27.447216, 50.305992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394264, 27.980682, 50.490055>,  <35.535427, 27.246944, 50.675308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394264, 27.980682, 50.490055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.698376, 27.879004, 50.250935>,  <35.880840, 27.817997, 50.107464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.698376, 27.879004, 50.250935>,  <35.394264, 27.980682, 50.490055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698376, 27.879004, 50.250935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405013, 0.534004, -0.742162,
		0.507882, 0.806365, 0.303038,
		0.760277, -0.254196, -0.597799,
		35.926460, 27.802744, 50.071594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627483, 28.674431, 50.227909>,  <35.394264, 27.980682, 50.490055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627483, 28.674431, 50.227909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.727123, 28.361439, 49.999638>,  <35.786907, 28.173643, 49.862675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.727123, 28.361439, 49.999638>,  <35.627483, 28.674431, 50.227909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727123, 28.361439, 49.999638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352279, 0.475682, -0.805994,
		0.902135, 0.401812, -0.157158,
		0.249101, -0.782479, -0.570680,
		35.801853, 28.126696, 49.828434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054729, 28.911034, 49.655277>,  <35.627483, 28.674431, 50.227909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054729, 28.911034, 49.655277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885971, 28.573063, 49.523762>,  <35.784718, 28.370281, 49.444851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885971, 28.573063, 49.523762>,  <36.054729, 28.911034, 49.655277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885971, 28.573063, 49.523762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259927, 0.460143, -0.848945,
		0.868587, -0.272704, -0.413751,
		-0.421895, -0.844927, -0.328791,
		35.759403, 28.319584, 49.425125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623455, 29.515963, 49.679070>,  <36.054729, 28.911034, 49.655277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623455, 29.515963, 49.679070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.535576, 29.840677, 49.895489>,  <36.482849, 30.035505, 50.025341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.535576, 29.840677, 49.895489>,  <36.623455, 29.515963, 49.679070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535576, 29.840677, 49.895489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294892, -0.473396, 0.830021,
		0.929930, 0.341908, -0.135383,
		-0.219701, 0.811785, 0.541051,
		36.469666, 30.084213, 50.057804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124817, 29.521717, 50.158840>,  <36.623455, 29.515963, 49.679070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124817, 29.521717, 50.158840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.854084, 29.771530, 50.314713>,  <36.691643, 29.921419, 50.408234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.854084, 29.771530, 50.314713>,  <37.124817, 29.521717, 50.158840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854084, 29.771530, 50.314713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272065, -0.279650, 0.920748,
		0.684012, 0.729214, 0.019363,
		-0.676837, 0.624535, 0.389677,
		36.651031, 29.958891, 50.431614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489845, 29.839403, 50.648808>,  <37.124817, 29.521717, 50.158840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489845, 29.839403, 50.648808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101246, 29.874125, 50.737041>,  <36.868088, 29.894957, 50.789982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101246, 29.874125, 50.737041>,  <37.489845, 29.839403, 50.648808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101246, 29.874125, 50.737041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213519, -0.083769, 0.973341,
		0.102967, 0.992697, 0.062847,
		-0.971498, 0.086803, 0.220585,
		36.809795, 29.900166, 50.803215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541916, 30.114719, 51.197460>,  <37.489845, 29.839403, 50.648808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541916, 30.114719, 51.197460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.158161, 30.003372, 51.215725>,  <36.927906, 29.936563, 51.226685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.158161, 30.003372, 51.215725>,  <37.541916, 30.114719, 51.197460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158161, 30.003372, 51.215725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072424, -0.086624, 0.993605,
		-0.272632, 0.956561, 0.103267,
		-0.959389, -0.278367, 0.045662,
		36.870346, 29.919863, 51.229424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218407, 30.466009, 51.746872>,  <37.541916, 30.114719, 51.197460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218407, 30.466009, 51.746872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.012985, 30.128437, 51.684849>,  <36.889732, 29.925894, 51.647633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.012985, 30.128437, 51.684849>,  <37.218407, 30.466009, 51.746872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012985, 30.128437, 51.684849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346744, -0.369413, 0.862150,
		-0.784875, 0.388996, 0.482342,
		-0.513557, -0.843929, -0.155061,
		36.858917, 29.875259, 51.638329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133575, 30.258686, 52.408909>,  <37.218407, 30.466009, 51.746872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133575, 30.258686, 52.408909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.020546, 29.944942, 52.188026>,  <36.952728, 29.756697, 52.055496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.020546, 29.944942, 52.188026>,  <37.133575, 30.258686, 52.408909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020546, 29.944942, 52.188026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165075, -0.606842, 0.777492,
		-0.944935, 0.128544, 0.300957,
		-0.282575, -0.784359, -0.552206,
		36.935772, 29.709635, 52.022366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662704, 29.828363, 52.771755>,  <37.133575, 30.258686, 52.408909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662704, 29.828363, 52.771755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.839622, 29.572792, 52.519993>,  <36.945774, 29.419449, 52.368935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.839622, 29.572792, 52.519993>,  <36.662704, 29.828363, 52.771755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839622, 29.572792, 52.519993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197051, -0.615400, 0.763187,
		-0.874955, -0.461578, -0.146287,
		0.442295, -0.638928, -0.629401,
		36.972313, 29.381113, 52.331173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501385, 29.185133, 52.993347>,  <36.662704, 29.828363, 52.771755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501385, 29.185133, 52.993347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.793556, 29.094311, 52.735687>,  <36.968857, 29.039818, 52.581093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.793556, 29.094311, 52.735687>,  <36.501385, 29.185133, 52.993347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793556, 29.094311, 52.735687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189686, -0.838582, 0.510685,
		-0.656123, -0.495203, -0.569453,
		0.730425, -0.227055, -0.644147,
		37.012684, 29.026194, 52.542442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297390, 28.565895, 52.800049>,  <36.501385, 29.185133, 52.993347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297390, 28.565895, 52.800049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.686527, 28.646488, 52.754478>,  <36.920010, 28.694843, 52.727135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.686527, 28.646488, 52.754478>,  <36.297390, 28.565895, 52.800049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686527, 28.646488, 52.754478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226862, -0.732329, 0.642050,
		0.045928, -0.650460, -0.758151,
		0.972844, 0.201483, -0.113930,
		36.978382, 28.706934, 52.720299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.718422, 33.069027, 37.883720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095886, 33.026062, 38.008915>,  <36.322365, 33.000282, 38.084034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095886, 33.026062, 38.008915>,  <35.718422, 33.069027, 37.883720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095886, 33.026062, 38.008915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273397, 0.279788, 0.920311,
		-0.186420, -0.954035, 0.234660,
		0.943664, -0.107409, 0.312988,
		36.378986, 32.993839, 38.102810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794498, 32.490635, 38.400341>,  <35.718422, 33.069027, 37.883720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794498, 32.490635, 38.400341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027802, 32.808743, 38.466492>,  <36.167786, 32.999607, 38.506180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027802, 32.808743, 38.466492>,  <35.794498, 32.490635, 38.400341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027802, 32.808743, 38.466492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412825, 0.114882, 0.903536,
		0.699561, -0.595266, 0.395315,
		0.583259, 0.795274, 0.165374,
		36.202778, 33.047325, 38.516106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058109, 32.449711, 39.085312>,  <35.794498, 32.490635, 38.400341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058109, 32.449711, 39.085312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100430, 32.834179, 38.983356>,  <36.125820, 33.064857, 38.922184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100430, 32.834179, 38.983356>,  <36.058109, 32.449711, 39.085312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100430, 32.834179, 38.983356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455713, 0.274690, 0.846683,
		0.883817, 0.026576, 0.467077,
		0.105800, 0.961166, -0.254887,
		36.132168, 33.122528, 38.906891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366493, 32.636211, 39.643852>,  <36.058109, 32.449711, 39.085312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366493, 32.636211, 39.643852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203484, 32.963551, 39.481754>,  <36.105679, 33.159954, 39.384495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203484, 32.963551, 39.481754>,  <36.366493, 32.636211, 39.643852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203484, 32.963551, 39.481754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354858, 0.266981, 0.895989,
		0.841426, 0.508945, 0.181596,
		-0.407527, 0.818349, -0.405248,
		36.081226, 33.209057, 39.360180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409447, 33.039703, 40.173687>,  <36.366493, 32.636211, 39.643852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409447, 33.039703, 40.173687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129536, 33.212605, 39.946186>,  <35.961590, 33.316345, 39.809685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129536, 33.212605, 39.946186>,  <36.409447, 33.039703, 40.173687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129536, 33.212605, 39.946186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477801, 0.308661, 0.822456,
		0.531059, 0.847282, -0.009463,
		-0.699773, 0.432251, -0.568750,
		35.919605, 33.342281, 39.775562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395065, 33.720772, 40.383022>,  <36.409447, 33.039703, 40.173687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395065, 33.720772, 40.383022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047707, 33.643219, 40.200462>,  <35.839291, 33.596687, 40.090927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047707, 33.643219, 40.200462>,  <36.395065, 33.720772, 40.383022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047707, 33.643219, 40.200462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495857, 0.346579, 0.796247,
		0.003798, 0.917765, -0.397106,
		-0.868396, -0.193884, -0.456396,
		35.787189, 33.585052, 40.063545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994331, 34.280499, 40.520924>,  <36.395065, 33.720772, 40.383022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994331, 34.280499, 40.520924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704533, 34.037834, 40.390041>,  <35.530651, 33.892235, 40.311512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704533, 34.037834, 40.390041>,  <35.994331, 34.280499, 40.520924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704533, 34.037834, 40.390041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572675, 0.265608, 0.775562,
		-0.383594, 0.749276, -0.539852,
		-0.724499, -0.606661, -0.327207,
		35.487183, 33.855835, 40.291878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352680, 34.667709, 40.569870>,  <35.994331, 34.280499, 40.520924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352680, 34.667709, 40.569870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263847, 34.279091, 40.536949>,  <35.210548, 34.045921, 40.517197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263847, 34.279091, 40.536949>,  <35.352680, 34.667709, 40.569870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263847, 34.279091, 40.536949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574294, 0.062129, 0.816288,
		-0.787949, 0.228552, -0.571752,
		-0.222086, -0.971547, -0.082302,
		35.197220, 33.987625, 40.512260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635036, 34.598701, 40.603661>,  <35.352680, 34.667709, 40.569870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635036, 34.598701, 40.603661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742950, 34.230232, 40.715847>,  <34.807697, 34.009151, 40.783157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742950, 34.230232, 40.715847>,  <34.635036, 34.598701, 40.603661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742950, 34.230232, 40.715847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522009, 0.104842, 0.846472,
		-0.809150, -0.374770, -0.452575,
		0.269783, -0.921171, 0.280466,
		34.823887, 33.953880, 40.799988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048077, 34.253716, 40.958019>,  <34.635036, 34.598701, 40.603661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048077, 34.253716, 40.958019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366970, 34.039474, 41.069412>,  <34.558304, 33.910931, 41.136250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366970, 34.039474, 41.069412>,  <34.048077, 34.253716, 40.958019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366970, 34.039474, 41.069412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265554, 0.103133, 0.958564,
		-0.542132, -0.838148, -0.060012,
		0.797229, -0.535604, 0.278485,
		34.606140, 33.878792, 41.152958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823620, 33.764915, 41.389801>,  <34.048077, 34.253716, 40.958019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823620, 33.764915, 41.389801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203205, 33.795368, 41.512218>,  <34.430958, 33.813641, 41.585670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203205, 33.795368, 41.512218>,  <33.823620, 33.764915, 41.389801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203205, 33.795368, 41.512218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301855, -0.061803, 0.951348,
		0.091346, -0.995180, -0.035668,
		0.948968, 0.076136, 0.306045,
		34.487896, 33.818211, 41.604031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780975, 33.305897, 41.917747>,  <33.823620, 33.764915, 41.389801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780975, 33.305897, 41.917747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119629, 33.504528, 41.994289>,  <34.322823, 33.623707, 42.040215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119629, 33.504528, 41.994289>,  <33.780975, 33.305897, 41.917747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119629, 33.504528, 41.994289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165115, -0.096707, 0.981521,
		0.505911, -0.862586, 0.000117,
		0.846635, 0.496582, 0.191352,
		34.373619, 33.653503, 42.051697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671646, 32.532684, 41.771286>,  <33.780975, 33.305897, 41.917747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671646, 32.532684, 41.771286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358917, 32.335381, 41.923836>,  <33.171280, 32.216999, 42.015366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358917, 32.335381, 41.923836>,  <33.671646, 32.532684, 41.771286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358917, 32.335381, 41.923836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473569, 0.071904, -0.877817,
		0.405567, -0.866906, -0.289807,
		-0.781823, -0.493257, 0.381378,
		33.124371, 32.187405, 42.038250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648727, 31.988138, 41.348827>,  <33.671646, 32.532684, 41.771286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648727, 31.988138, 41.348827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289852, 32.042480, 41.516922>,  <33.074528, 32.075085, 41.617779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289852, 32.042480, 41.516922>,  <33.648727, 31.988138, 41.348827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289852, 32.042480, 41.516922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407686, 0.111173, -0.906330,
		-0.169850, -0.984471, -0.044356,
		-0.897187, 0.135857, 0.420237,
		33.020695, 32.083237, 41.642994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320034, 31.631094, 40.891544>,  <33.648727, 31.988138, 41.348827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320034, 31.631094, 40.891544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036919, 31.810755, 41.109646>,  <32.867050, 31.918550, 41.240505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036919, 31.810755, 41.109646>,  <33.320034, 31.631094, 40.891544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036919, 31.810755, 41.109646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567200, 0.098766, -0.817637,
		-0.421097, -0.887979, 0.184854,
		-0.707787, 0.449153, 0.545251,
		32.824581, 31.945501, 41.273220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657917, 31.261833, 40.784683>,  <33.320034, 31.631094, 40.891544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657917, 31.261833, 40.784683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583851, 31.633587, 40.912403>,  <32.539410, 31.856640, 40.989037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583851, 31.633587, 40.912403>,  <32.657917, 31.261833, 40.784683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583851, 31.633587, 40.912403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524301, 0.181378, -0.831992,
		-0.831156, -0.321469, 0.453693,
		-0.185170, 0.929386, 0.319300,
		32.528301, 31.912403, 41.008194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936947, 31.361620, 40.516228>,  <32.657917, 31.261833, 40.784683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936947, 31.361620, 40.516228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048737, 31.726847, 40.635021>,  <32.115810, 31.945984, 40.706299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048737, 31.726847, 40.635021>,  <31.936947, 31.361620, 40.516228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048737, 31.726847, 40.635021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687889, 0.406196, -0.601509,
		-0.669853, -0.036186, 0.741611,
		0.279474, 0.913069, 0.296984,
		32.132580, 32.000767, 40.724117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329399, 31.785032, 40.745975>,  <31.936947, 31.361620, 40.516228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329399, 31.785032, 40.745975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609140, 32.044418, 40.625710>,  <31.776985, 32.200050, 40.553551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609140, 32.044418, 40.625710>,  <31.329399, 31.785032, 40.745975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609140, 32.044418, 40.625710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669027, 0.445793, -0.594702,
		-0.251611, 0.617058, 0.745608,
		0.699353, 0.648466, -0.300662,
		31.818947, 32.238956, 40.535511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981956, 32.425838, 40.708416>,  <31.329399, 31.785032, 40.745975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981956, 32.425838, 40.708416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319960, 32.495007, 40.506008>,  <31.522762, 32.536507, 40.384563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319960, 32.495007, 40.506008>,  <30.981956, 32.425838, 40.708416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319960, 32.495007, 40.506008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529045, 0.408189, -0.743971,
		0.077905, 0.896371, 0.436407,
		0.845010, 0.172920, -0.506021,
		31.573463, 32.546883, 40.354202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997398, 33.182873, 40.547520>,  <30.981956, 32.425838, 40.708416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997398, 33.182873, 40.547520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211058, 32.956993, 40.295868>,  <31.339252, 32.821465, 40.144878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211058, 32.956993, 40.295868>,  <30.997398, 33.182873, 40.547520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211058, 32.956993, 40.295868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502805, 0.386046, -0.773405,
		0.679612, 0.729442, -0.077727,
		0.534148, -0.564697, -0.629129,
		31.371302, 32.787582, 40.107128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935431, 33.659576, 39.992134>,  <30.997398, 33.182873, 40.547520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935431, 33.659576, 39.992134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078444, 33.320255, 39.835903>,  <31.164251, 33.116661, 39.742165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078444, 33.320255, 39.835903>,  <30.935431, 33.659576, 39.992134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078444, 33.320255, 39.835903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541047, 0.152735, -0.827006,
		0.761208, 0.507001, -0.404365,
		0.357532, -0.848305, -0.390575,
		31.185703, 33.065765, 39.718731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232103, 33.730492, 39.334858>,  <30.935431, 33.659576, 39.992134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232103, 33.730492, 39.334858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139065, 33.343182, 39.298325>,  <31.083242, 33.110794, 39.276405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139065, 33.343182, 39.298325>,  <31.232103, 33.730492, 39.334858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139065, 33.343182, 39.298325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322778, 0.165436, -0.931904,
		0.917450, -0.187276, -0.351018,
		-0.232594, -0.968276, -0.091330,
		31.069286, 33.052700, 39.270924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359558, 33.509438, 38.691029>,  <31.232103, 33.730492, 39.334858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359558, 33.509438, 38.691029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112246, 33.212502, 38.794304>,  <30.963858, 33.034340, 38.856270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112246, 33.212502, 38.794304>,  <31.359558, 33.509438, 38.691029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112246, 33.212502, 38.794304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479269, 0.095744, -0.872430,
		0.622919, -0.663149, -0.414976,
		-0.618283, -0.742338, 0.258186,
		30.926760, 32.989799, 38.871761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151735, 33.256695, 38.017731>,  <31.359558, 33.509438, 38.691029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151735, 33.256695, 38.017731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901180, 33.066444, 38.264767>,  <30.750847, 32.952293, 38.412991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901180, 33.066444, 38.264767>,  <31.151735, 33.256695, 38.017731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901180, 33.066444, 38.264767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544654, -0.299757, -0.783261,
		0.557667, -0.826998, -0.071288,
		-0.626386, -0.475627, 0.617592,
		30.713264, 32.923756, 38.450043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054379, 32.596455, 37.783604>,  <31.151735, 33.256695, 38.017731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054379, 32.596455, 37.783604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720556, 32.657684, 37.995296>,  <30.520262, 32.694424, 38.122311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720556, 32.657684, 37.995296>,  <31.054379, 32.596455, 37.783604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720556, 32.657684, 37.995296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549104, -0.153157, -0.821601,
		-0.044711, -0.976274, 0.211872,
		-0.834557, 0.153074, 0.529228,
		30.470188, 32.703606, 38.154064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643888, 32.018837, 37.735584>,  <31.054379, 32.596455, 37.783604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643888, 32.018837, 37.735584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459015, 32.368210, 37.796909>,  <30.348091, 32.577835, 37.833706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459015, 32.368210, 37.796909>,  <30.643888, 32.018837, 37.735584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459015, 32.368210, 37.796909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531421, -0.134394, -0.836379,
		-0.709915, -0.468034, 0.526274,
		-0.462182, 0.873431, 0.153315,
		30.320360, 32.630238, 37.842903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859158, 31.608377, 37.183628>,  <30.643888, 32.018837, 37.735584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859158, 31.608377, 37.183628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854340, 31.271311, 36.968307>,  <30.851448, 31.069071, 36.839115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854340, 31.271311, 36.968307>,  <30.859158, 31.608377, 37.183628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854340, 31.271311, 36.968307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867031, 0.276975, -0.414177,
		0.498109, 0.461737, -0.733953,
		-0.012046, -0.842665, -0.538304,
		30.850725, 31.018511, 36.806816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332344, 31.709290, 37.804348>,  <30.859158, 31.608377, 37.183628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332344, 31.709290, 37.804348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454136, 31.364922, 37.641323>,  <31.527212, 31.158300, 37.543507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454136, 31.364922, 37.641323>,  <31.332344, 31.709290, 37.804348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454136, 31.364922, 37.641323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631671, -0.137758, 0.762899,
		-0.712940, -0.489734, 0.501874,
		0.304480, -0.860920, -0.407563,
		31.545481, 31.106646, 37.519054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329819, 31.155325, 38.278309>,  <31.332344, 31.709290, 37.804348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329819, 31.155325, 38.278309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634861, 31.080099, 38.030739>,  <31.817886, 31.034964, 37.882198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634861, 31.080099, 38.030739>,  <31.329819, 31.155325, 38.278309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634861, 31.080099, 38.030739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579340, -0.227047, 0.782825,
		-0.287746, -0.955553, -0.064194,
		0.762606, -0.188065, -0.618922,
		31.863642, 31.023680, 37.845062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530317, 30.498684, 38.454082>,  <31.329819, 31.155325, 38.278309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530317, 30.498684, 38.454082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833611, 30.648788, 38.240818>,  <32.015587, 30.738852, 38.112858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833611, 30.648788, 38.240818>,  <31.530317, 30.498684, 38.454082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833611, 30.648788, 38.240818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647749, -0.340497, 0.681530,
		0.074212, -0.862113, -0.501251,
		0.758231, 0.375263, -0.533164,
		32.061081, 30.761368, 38.080868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131977, 30.032803, 38.355289>,  <31.530317, 30.498684, 38.454082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131977, 30.032803, 38.355289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280525, 30.403143, 38.327328>,  <32.369656, 30.625347, 38.310551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280525, 30.403143, 38.327328>,  <32.131977, 30.032803, 38.355289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280525, 30.403143, 38.327328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813203, -0.288002, 0.505722,
		0.448090, -0.244658, -0.859859,
		0.371370, 0.925849, -0.069906,
		32.391937, 30.680899, 38.306355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809742, 29.945776, 38.345421>,  <32.131977, 30.032803, 38.355289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809742, 29.945776, 38.345421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801666, 30.337938, 38.423801>,  <32.796822, 30.573235, 38.470829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801666, 30.337938, 38.423801>,  <32.809742, 29.945776, 38.345421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801666, 30.337938, 38.423801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871241, -0.078895, 0.484474,
		0.490441, 0.180505, -0.852576,
		-0.020186, 0.980405, 0.195956,
		32.795612, 30.632059, 38.482590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465878, 30.212896, 38.186565>,  <32.809742, 29.945776, 38.345421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465878, 30.212896, 38.186565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343224, 30.519686, 38.412033>,  <33.269630, 30.703758, 38.547314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343224, 30.519686, 38.412033>,  <33.465878, 30.212896, 38.186565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343224, 30.519686, 38.412033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730027, -0.190495, 0.656332,
		0.610766, 0.612753, -0.501497,
		-0.306637, 0.766972, 0.563674,
		33.251232, 30.749777, 38.581135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151672, 30.510519, 38.459377>,  <33.465878, 30.212896, 38.186565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151672, 30.510519, 38.459377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892284, 30.670918, 38.718201>,  <33.736652, 30.767157, 38.873497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892284, 30.670918, 38.718201>,  <34.151672, 30.510519, 38.459377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892284, 30.670918, 38.718201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635243, -0.183331, 0.750237,
		0.419467, 0.897549, -0.135844,
		-0.648470, 0.400994, 0.647063,
		33.697742, 30.791216, 38.912319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526966, 31.061008, 38.855469>,  <34.151672, 30.510519, 38.459377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526966, 31.061008, 38.855469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214176, 30.947725, 39.077572>,  <34.026501, 30.879755, 39.210835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214176, 30.947725, 39.077572>,  <34.526966, 31.061008, 38.855469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214176, 30.947725, 39.077572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601582, -0.109757, 0.791235,
		-0.163140, 0.952757, 0.256200,
		-0.781975, -0.283208, 0.555256,
		33.979584, 30.862762, 39.244148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575268, 31.441723, 39.531822>,  <34.526966, 31.061008, 38.855469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575268, 31.441723, 39.531822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328613, 31.136377, 39.608799>,  <34.180622, 30.953169, 39.654984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328613, 31.136377, 39.608799>,  <34.575268, 31.441723, 39.531822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328613, 31.136377, 39.608799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482451, -0.173269, 0.858614,
		-0.622092, 0.622296, 0.475131,
		-0.616637, -0.763365, 0.192438,
		34.143623, 30.907368, 39.666531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279289, 31.569756, 40.142750>,  <34.575268, 31.441723, 39.531822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279289, 31.569756, 40.142750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246819, 31.173729, 40.096832>,  <34.227337, 30.936113, 40.069283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246819, 31.173729, 40.096832>,  <34.279289, 31.569756, 40.142750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246819, 31.173729, 40.096832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630412, -0.140209, 0.763494,
		-0.772005, -0.010391, 0.635531,
		-0.081173, -0.990068, -0.114793,
		34.222466, 30.876709, 40.062393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206673, 31.292265, 40.782490>,  <34.279289, 31.569756, 40.142750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206673, 31.292265, 40.782490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334373, 30.993319, 40.549416>,  <34.410995, 30.813950, 40.409573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334373, 30.993319, 40.549416>,  <34.206673, 31.292265, 40.782490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334373, 30.993319, 40.549416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525905, -0.371770, 0.764991,
		-0.788353, -0.550662, 0.274355,
		0.319255, -0.747367, -0.582682,
		34.430149, 30.769108, 40.374611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286804, 30.718363, 41.215611>,  <34.206673, 31.292265, 40.782490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286804, 30.718363, 41.215611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502796, 30.641441, 40.887844>,  <34.632389, 30.595289, 40.691185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502796, 30.641441, 40.887844>,  <34.286804, 30.718363, 41.215611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502796, 30.641441, 40.887844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611059, -0.579939, 0.538773,
		-0.578791, -0.791648, -0.195690,
		0.540007, -0.192259, -0.819408,
		34.664791, 30.583750, 40.642017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232128, 29.953465, 41.153454>,  <34.286804, 30.718363, 41.215611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232128, 29.953465, 41.153454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544792, 30.119616, 40.967350>,  <34.732391, 30.219307, 40.855686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544792, 30.119616, 40.967350>,  <34.232128, 29.953465, 41.153454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544792, 30.119616, 40.967350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621718, -0.578400, 0.528128,
		-0.049734, -0.702078, -0.710361,
		0.781660, 0.415378, -0.465261,
		34.779289, 30.244228, 40.827770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640629, 29.390112, 40.858162>,  <34.232128, 29.953465, 41.153454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640629, 29.390112, 40.858162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868874, 29.715107, 40.905933>,  <35.005821, 29.910105, 40.934597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868874, 29.715107, 40.905933>,  <34.640629, 29.390112, 40.858162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868874, 29.715107, 40.905933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648270, -0.534932, 0.541842,
		0.504128, -0.231758, -0.831951,
		0.570614, 0.812487, 0.119432,
		35.040058, 29.958853, 40.941765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317806, 29.206503, 40.617550>,  <34.640629, 29.390112, 40.858162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317806, 29.206503, 40.617550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382629, 29.524288, 40.851665>,  <35.421524, 29.714960, 40.992134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382629, 29.524288, 40.851665>,  <35.317806, 29.206503, 40.617550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382629, 29.524288, 40.851665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730882, -0.495142, 0.469730,
		0.662986, 0.351655, -0.660900,
		0.162057, 0.794464, 0.585290,
		35.431248, 29.762627, 41.027252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019863, 29.123508, 40.761002>,  <35.317806, 29.206503, 40.617550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019863, 29.123508, 40.761002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885166, 29.395679, 41.021347>,  <35.804348, 29.558981, 41.177555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885166, 29.395679, 41.021347>,  <36.019863, 29.123508, 40.761002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885166, 29.395679, 41.021347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575643, -0.398252, 0.714164,
		0.745144, 0.615156, -0.257573,
		-0.336744, 0.680425, 0.650865,
		35.784142, 29.599808, 41.216606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590153, 29.289877, 41.101433>,  <36.019863, 29.123508, 40.761002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590153, 29.289877, 41.101433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286011, 29.420990, 41.325722>,  <36.103523, 29.499659, 41.460297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286011, 29.420990, 41.325722>,  <36.590153, 29.289877, 41.101433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286011, 29.420990, 41.325722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469283, -0.319589, 0.823187,
		0.449028, 0.889056, 0.089178,
		-0.760360, 0.327784, 0.560724,
		36.057903, 29.519325, 41.493938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978065, 29.611324, 41.635483>,  <36.590153, 29.289877, 41.101433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978065, 29.611324, 41.635483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612297, 29.538807, 41.780239>,  <36.392838, 29.495296, 41.867092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612297, 29.538807, 41.780239>,  <36.978065, 29.611324, 41.635483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612297, 29.538807, 41.780239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400596, -0.277417, 0.873248,
		-0.057918, 0.943490, 0.326301,
		-0.914422, -0.181291, 0.361891,
		36.337971, 29.484419, 41.888805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934860, 29.988037, 42.131935>,  <36.978065, 29.611324, 41.635483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934860, 29.988037, 42.131935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668907, 29.698334, 42.205017>,  <36.509335, 29.524511, 42.248867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668907, 29.698334, 42.205017>,  <36.934860, 29.988037, 42.131935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668907, 29.698334, 42.205017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341829, -0.077551, 0.936557,
		-0.664139, 0.685155, 0.299135,
		-0.664885, -0.724257, 0.182701,
		36.469440, 29.481056, 42.259827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902630, 30.021978, 42.863873>,  <36.934860, 29.988037, 42.131935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902630, 30.021978, 42.863873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714252, 29.683172, 42.765263>,  <36.601227, 29.479889, 42.706097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714252, 29.683172, 42.765263>,  <36.902630, 30.021978, 42.863873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714252, 29.683172, 42.765263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219184, -0.383042, 0.897350,
		-0.854499, 0.368569, 0.366044,
		-0.470945, -0.847016, -0.246524,
		36.572968, 29.429068, 42.691307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448841, 29.810791, 43.386246>,  <36.902630, 30.021978, 42.863873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448841, 29.810791, 43.386246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538132, 29.471407, 43.194294>,  <36.591705, 29.267776, 43.079124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538132, 29.471407, 43.194294>,  <36.448841, 29.810791, 43.386246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538132, 29.471407, 43.194294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159206, -0.517424, 0.840789,
		-0.961677, -0.111289, -0.250584,
		0.223228, -0.848462, -0.479876,
		36.605099, 29.216867, 43.050331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991722, 29.449831, 43.716518>,  <36.448841, 29.810791, 43.386246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991722, 29.449831, 43.716518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250088, 29.187761, 43.559780>,  <36.405106, 29.030519, 43.465736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250088, 29.187761, 43.559780>,  <35.991722, 29.449831, 43.716518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250088, 29.187761, 43.559780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063878, -0.557866, 0.827469,
		-0.760736, -0.509440, -0.402183,
		0.645910, -0.655176, -0.391847,
		36.443863, 28.991209, 43.442226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662838, 28.808069, 43.682220>,  <35.991722, 29.449831, 43.716518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662838, 28.808069, 43.682220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056606, 28.738239, 43.690594>,  <36.292866, 28.696341, 43.695618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056606, 28.738239, 43.690594>,  <35.662838, 28.808069, 43.682220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056606, 28.738239, 43.690594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129301, -0.638094, 0.759024,
		-0.119146, -0.749907, -0.650726,
		0.984421, -0.174575, 0.020937,
		36.351933, 28.685867, 43.696877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692669, 28.094700, 43.870369>,  <35.662838, 28.808069, 43.682220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692669, 28.094700, 43.870369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072392, 28.202961, 43.934315>,  <36.300224, 28.267918, 43.972683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072392, 28.202961, 43.934315>,  <35.692669, 28.094700, 43.870369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072392, 28.202961, 43.934315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078270, -0.696069, 0.713695,
		0.304439, -0.665006, -0.681970,
		0.949311, 0.270654, 0.159860,
		36.357185, 28.284157, 43.982273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017303, 27.524088, 43.986565>,  <35.692669, 28.094700, 43.870369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017303, 27.524088, 43.986565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284595, 27.770739, 44.153053>,  <36.444969, 27.918730, 44.252945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284595, 27.770739, 44.153053>,  <36.017303, 27.524088, 43.986565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284595, 27.770739, 44.153053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310723, -0.739664, 0.596949,
		0.675961, -0.269568, -0.685864,
		0.668227, 0.616628, 0.416223,
		36.485065, 27.955727, 44.277920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649456, 27.199139, 43.964081>,  <36.017303, 27.524088, 43.986565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649456, 27.199139, 43.964081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712631, 27.478106, 44.243698>,  <36.750538, 27.645485, 44.411469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712631, 27.478106, 44.243698>,  <36.649456, 27.199139, 43.964081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712631, 27.478106, 44.243698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346367, -0.702077, 0.622187,
		0.924708, 0.143859, -0.352447,
		0.157938, 0.697418, 0.699045,
		36.760014, 27.687330, 44.453411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304131, 27.114655, 44.217197>,  <36.649456, 27.199139, 43.964081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304131, 27.114655, 44.217197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138210, 27.315264, 44.520885>,  <37.038658, 27.435629, 44.703098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138210, 27.315264, 44.520885>,  <37.304131, 27.114655, 44.217197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138210, 27.315264, 44.520885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385210, -0.659137, 0.645873,
		0.824350, 0.560367, 0.080219,
		-0.414801, 0.501524, 0.759219,
		37.013771, 27.465721, 44.748650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110191, 26.896017, 44.359535>,  <37.304131, 27.114655, 44.217197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110191, 26.896017, 44.359535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474937, 26.732498, 44.344608>,  <38.693783, 26.634386, 44.335651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474937, 26.732498, 44.344608>,  <38.110191, 26.896017, 44.359535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474937, 26.732498, 44.344608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133533, -0.209426, -0.968664,
		0.388171, 0.888271, -0.245555,
		0.911862, -0.408796, -0.037320,
		38.748497, 26.609859, 44.333412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482143, 27.214001, 43.858322>,  <38.110191, 26.896017, 44.359535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482143, 27.214001, 43.858322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655361, 26.854326, 43.883415>,  <38.759293, 26.638521, 43.898472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655361, 26.854326, 43.883415>,  <38.482143, 27.214001, 43.858322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655361, 26.854326, 43.883415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144197, -0.137812, -0.979905,
		0.889764, 0.415295, -0.189339,
		0.433043, -0.899187, 0.062736,
		38.785275, 26.584570, 43.902237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047882, 27.199955, 43.295624>,  <38.482143, 27.214001, 43.858322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047882, 27.199955, 43.295624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926571, 26.832687, 43.397594>,  <38.853786, 26.612328, 43.458778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926571, 26.832687, 43.397594>,  <39.047882, 27.199955, 43.295624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926571, 26.832687, 43.397594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241675, -0.184670, -0.952623,
		0.921747, -0.350516, -0.165893,
		-0.303274, -0.918169, 0.254930,
		38.835590, 26.557236, 43.474075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345573, 26.721813, 42.705170>,  <39.047882, 27.199955, 43.295624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345573, 26.721813, 42.705170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062008, 26.504732, 42.885353>,  <38.891869, 26.374483, 42.993462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062008, 26.504732, 42.885353>,  <39.345573, 26.721813, 42.705170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062008, 26.504732, 42.885353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454401, -0.137022, -0.880196,
		0.539409, -0.828672, -0.149469,
		-0.708913, -0.542704, 0.450460,
		38.849335, 26.341921, 43.020493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206985, 26.281977, 42.193096>,  <39.345573, 26.721813, 42.705170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206985, 26.281977, 42.193096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887318, 26.248085, 42.431137>,  <38.695518, 26.227749, 42.573963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887318, 26.248085, 42.431137>,  <39.206985, 26.281977, 42.193096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887318, 26.248085, 42.431137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599058, 0.030622, -0.800120,
		0.049598, -0.995930, -0.075250,
		-0.799168, -0.084764, 0.595102,
		38.647568, 26.222666, 42.609669>
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
