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
	<24.088514, 35.021080, 35.316067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263866, 34.994766, 34.957516>,  <24.369078, 34.978977, 34.742386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263866, 34.994766, 34.957516>,  <24.088514, 35.021080, 35.316067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263866, 34.994766, 34.957516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868139, 0.289218, 0.403345,
		0.232716, -0.955000, 0.183895,
		0.438381, -0.065782, -0.896379,
		24.395380, 34.975033, 34.688602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694006, 34.552334, 35.491245>,  <24.088514, 35.021080, 35.316067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694006, 34.552334, 35.491245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734350, 34.804214, 35.183140>,  <24.758556, 34.955341, 34.998276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734350, 34.804214, 35.183140>,  <24.694006, 34.552334, 35.491245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734350, 34.804214, 35.183140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913322, 0.248426, 0.322687,
		0.394550, -0.736044, -0.550063,
		0.100862, 0.629701, -0.770262,
		24.764608, 34.993126, 34.952061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310612, 34.383579, 34.959953>,  <24.694006, 34.552334, 35.491245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310612, 34.383579, 34.959953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209394, 34.768532, 34.999542>,  <25.148664, 34.999504, 35.023296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209394, 34.768532, 34.999542>,  <25.310612, 34.383579, 34.959953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209394, 34.768532, 34.999542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913863, 0.204196, 0.350940,
		0.317529, 0.179247, -0.931153,
		-0.253043, 0.962380, 0.098969,
		25.133482, 35.057247, 35.029232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978827, 34.656822, 35.125221>,  <25.310612, 34.383579, 34.959953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978827, 34.656822, 35.125221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672035, 34.887169, 35.238445>,  <25.487961, 35.025375, 35.306381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672035, 34.887169, 35.238445>,  <25.978827, 34.656822, 35.125221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672035, 34.887169, 35.238445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570293, 0.409550, 0.712064,
		0.294123, 0.707567, -0.642527,
		-0.766979, 0.575863, 0.283063,
		25.441942, 35.059929, 35.323364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072945, 34.541229, 35.867027>,  <25.978827, 34.656822, 35.125221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072945, 34.541229, 35.867027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018333, 34.194611, 35.675003>,  <25.985567, 33.986641, 35.559788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018333, 34.194611, 35.675003>,  <26.072945, 34.541229, 35.867027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018333, 34.194611, 35.675003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016862, -0.486564, 0.873482,
		-0.990493, 0.111161, 0.081042,
		-0.136529, -0.866544, -0.480064,
		25.977375, 33.934647, 35.530983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563683, 34.036606, 36.086620>,  <26.072945, 34.541229, 35.867027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563683, 34.036606, 36.086620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869925, 33.835091, 35.926598>,  <26.053669, 33.714180, 35.830585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869925, 33.835091, 35.926598>,  <25.563683, 34.036606, 36.086620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869925, 33.835091, 35.926598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075399, -0.547309, 0.833528,
		-0.638879, -0.668316, -0.381036,
		0.765604, -0.503793, -0.400054,
		26.099606, 33.683952, 35.806580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459452, 33.301292, 36.164364>,  <25.563683, 34.036606, 36.086620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459452, 33.301292, 36.164364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853672, 33.354153, 36.121990>,  <26.090204, 33.385868, 36.096565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853672, 33.354153, 36.121990>,  <25.459452, 33.301292, 36.164364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853672, 33.354153, 36.121990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167274, -0.661402, 0.731141,
		0.026558, -0.738298, -0.673952,
		0.985553, 0.132152, -0.105933,
		26.149338, 33.393799, 36.090210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835773, 32.659924, 35.977020>,  <25.459452, 33.301292, 36.164364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835773, 32.659924, 35.977020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076406, 32.888824, 36.199955>,  <26.220785, 33.026165, 36.333717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076406, 32.888824, 36.199955>,  <25.835773, 32.659924, 35.977020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076406, 32.888824, 36.199955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035025, -0.715932, 0.697291,
		0.798044, -0.399956, -0.450735,
		0.601581, 0.572255, 0.557336,
		26.256882, 33.060501, 36.367157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456785, 32.282261, 36.104034>,  <25.835773, 32.659924, 35.977020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456785, 32.282261, 36.104034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401415, 32.552753, 36.393463>,  <26.368193, 32.715050, 36.567120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401415, 32.552753, 36.393463>,  <26.456785, 32.282261, 36.104034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401415, 32.552753, 36.393463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031536, -0.733243, 0.679235,
		0.989871, 0.071204, 0.122825,
		-0.138425, 0.676229, 0.723570,
		26.359888, 32.755623, 36.610535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938770, 32.142212, 36.671532>,  <26.456785, 32.282261, 36.104034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938770, 32.142212, 36.671532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649076, 32.342148, 36.861538>,  <26.475260, 32.462109, 36.975540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649076, 32.342148, 36.861538>,  <26.938770, 32.142212, 36.671532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649076, 32.342148, 36.861538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092090, -0.612595, 0.785014,
		0.683375, 0.612280, 0.397633,
		-0.724237, 0.499840, 0.475017,
		26.431805, 32.492100, 37.004044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195393, 32.185383, 37.334457>,  <26.938770, 32.142212, 36.671532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195393, 32.185383, 37.334457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809519, 32.283085, 37.373890>,  <26.577993, 32.341705, 37.397549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809519, 32.283085, 37.373890>,  <27.195393, 32.185383, 37.334457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809519, 32.283085, 37.373890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091094, -0.660547, 0.745238,
		0.247151, 0.709940, 0.659470,
		-0.964686, 0.244260, 0.098584,
		26.520113, 32.356361, 37.403465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113653, 32.420055, 38.048447>,  <27.195393, 32.185383, 37.334457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113653, 32.420055, 38.048447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760824, 32.292923, 37.909348>,  <26.549126, 32.216644, 37.825886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760824, 32.292923, 37.909348>,  <27.113653, 32.420055, 38.048447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760824, 32.292923, 37.909348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043572, -0.790023, 0.611527,
		-0.469092, 0.524260, 0.710707,
		-0.882074, -0.317829, -0.347751,
		26.496202, 32.197575, 37.805023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616295, 32.265675, 38.592152>,  <27.113653, 32.420055, 38.048447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616295, 32.265675, 38.592152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498226, 32.046204, 38.279274>,  <26.427385, 31.914522, 38.091549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498226, 32.046204, 38.279274>,  <26.616295, 32.265675, 38.592152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498226, 32.046204, 38.279274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208324, -0.762016, 0.613134,
		-0.932456, 0.343929, 0.110624,
		-0.295172, -0.548675, -0.782195,
		26.409676, 31.881601, 38.044617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927860, 32.139126, 38.536179>,  <26.616295, 32.265675, 38.592152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927860, 32.139126, 38.536179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113018, 31.829113, 38.364109>,  <26.224113, 31.643105, 38.260868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113018, 31.829113, 38.364109>,  <25.927860, 32.139126, 38.536179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113018, 31.829113, 38.364109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419210, -0.619006, 0.664149,
		-0.781019, -0.127097, -0.611437,
		0.462895, -0.775034, -0.430175,
		26.251886, 31.596603, 38.235058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488867, 31.629829, 38.057697>,  <25.927860, 32.139126, 38.536179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488867, 31.629829, 38.057697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794538, 31.464128, 38.255455>,  <25.977942, 31.364708, 38.374111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794538, 31.464128, 38.255455>,  <25.488867, 31.629829, 38.057697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794538, 31.464128, 38.255455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642281, -0.559083, 0.524310,
		0.059210, -0.718206, -0.693307,
		0.764179, -0.414254, 0.494393,
		26.023792, 31.339853, 38.403774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321693, 31.915951, 37.457443>,  <25.488867, 31.629829, 38.057697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321693, 31.915951, 37.457443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673613, 32.035568, 37.605244>,  <25.884764, 32.107338, 37.693924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673613, 32.035568, 37.605244>,  <25.321693, 31.915951, 37.457443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673613, 32.035568, 37.605244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016759, 0.757329, -0.652819,
		-0.475054, 0.580540, 0.661284,
		0.879797, 0.299042, 0.369501,
		25.937551, 32.125282, 37.716095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276712, 32.727329, 37.514153>,  <25.321693, 31.915951, 37.457443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276712, 32.727329, 37.514153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661427, 32.617805, 37.514587>,  <25.892254, 32.552090, 37.514847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661427, 32.617805, 37.514587>,  <25.276712, 32.727329, 37.514153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661427, 32.617805, 37.514587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220064, 0.770623, -0.598090,
		0.162926, 0.575472, 0.801428,
		0.961783, -0.273810, 0.001086,
		25.949961, 32.535664, 37.514912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600609, 33.277615, 37.564598>,  <25.276712, 32.727329, 37.514153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600609, 33.277615, 37.564598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880812, 33.042366, 37.402908>,  <26.048933, 32.901215, 37.305893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880812, 33.042366, 37.402908>,  <25.600609, 33.277615, 37.564598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880812, 33.042366, 37.402908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222147, 0.717988, -0.659654,
		0.678190, 0.372293, 0.633606,
		0.700506, -0.588124, -0.404229,
		26.090963, 32.865929, 37.281639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167377, 33.708118, 37.483963>,  <25.600609, 33.277615, 37.564598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167377, 33.708118, 37.483963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227997, 33.407234, 37.227459>,  <26.264368, 33.226704, 37.073555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227997, 33.407234, 37.227459>,  <26.167377, 33.708118, 37.483963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227997, 33.407234, 37.227459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353698, 0.647069, -0.675426,
		0.923001, -0.124453, 0.364117,
		0.151550, -0.752206, -0.641264,
		26.273462, 33.181572, 37.035080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904293, 33.792183, 37.137589>,  <26.167377, 33.708118, 37.483963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904293, 33.792183, 37.137589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650270, 33.581654, 36.911427>,  <26.497856, 33.455338, 36.775730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650270, 33.581654, 36.911427>,  <26.904293, 33.792183, 37.137589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650270, 33.581654, 36.911427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152442, 0.632167, -0.759689,
		0.757275, -0.568636, -0.321227,
		-0.635055, -0.526325, -0.565408,
		26.459753, 33.423756, 36.741806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250185, 33.708614, 36.503956>,  <26.904293, 33.792183, 37.137589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250185, 33.708614, 36.503956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857609, 33.667072, 36.439472>,  <26.622063, 33.642147, 36.400780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857609, 33.667072, 36.439472>,  <27.250185, 33.708614, 36.503956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857609, 33.667072, 36.439472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053117, 0.660547, -0.748903,
		0.184264, -0.743567, -0.642771,
		-0.981440, -0.103854, -0.161212,
		26.563177, 33.635918, 36.391109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046833, 33.603756, 35.786980>,  <27.250185, 33.708614, 36.503956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046833, 33.603756, 35.786980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719492, 33.768066, 35.947758>,  <26.523087, 33.866653, 36.044224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719492, 33.768066, 35.947758>,  <27.046833, 33.603756, 35.786980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719492, 33.768066, 35.947758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006157, 0.693069, -0.720845,
		-0.574681, -0.592381, -0.564647,
		-0.818354, 0.410780, 0.401940,
		26.473986, 33.891300, 36.068340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735409, 33.509289, 35.158298>,  <27.046833, 33.603756, 35.786980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735409, 33.509289, 35.158298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806215, 33.652756, 34.791687>,  <26.848700, 33.738838, 34.571720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806215, 33.652756, 34.791687>,  <26.735409, 33.509289, 35.158298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806215, 33.652756, 34.791687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001734, -0.931345, -0.364133,
		-0.984206, 0.062869, -0.165486,
		0.177017, 0.358669, -0.916527,
		26.859320, 33.760357, 34.516727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024479, 33.471737, 34.757057>,  <26.735409, 33.509289, 35.158298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024479, 33.471737, 34.757057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361025, 33.436069, 34.543831>,  <26.562952, 33.414669, 34.415894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361025, 33.436069, 34.543831>,  <26.024479, 33.471737, 34.757057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361025, 33.436069, 34.543831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313676, -0.883751, -0.347264,
		-0.440131, 0.459384, -0.771525,
		0.841363, -0.089167, -0.533064,
		26.613434, 33.409321, 34.383911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834288, 33.305115, 34.101032>,  <26.024479, 33.471737, 34.757057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834288, 33.305115, 34.101032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205219, 33.159061, 34.133869>,  <26.427778, 33.071430, 34.153572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205219, 33.159061, 34.133869>,  <25.834288, 33.305115, 34.101032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205219, 33.159061, 34.133869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337904, -0.911172, -0.235766,
		0.160890, 0.190892, -0.968336,
		0.927327, -0.365137, 0.082096,
		26.483418, 33.049519, 34.158497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097965, 33.036591, 33.438503>,  <25.834288, 33.305115, 34.101032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097965, 33.036591, 33.438503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281410, 32.852612, 33.742641>,  <26.391478, 32.742222, 33.925125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281410, 32.852612, 33.742641>,  <26.097965, 33.036591, 33.438503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281410, 32.852612, 33.742641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332751, -0.882263, -0.332999,
		0.823986, -0.100288, -0.557665,
		0.458611, -0.459950, 0.760343,
		26.418993, 32.714626, 33.970745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566431, 32.528587, 33.176678>,  <26.097965, 33.036591, 33.438503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566431, 32.528587, 33.176678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429674, 32.416634, 33.535515>,  <26.347620, 32.349461, 33.750816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429674, 32.416634, 33.535515>,  <26.566431, 32.528587, 33.176678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429674, 32.416634, 33.535515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281304, -0.880365, -0.381872,
		0.896648, -0.382915, 0.222257,
		-0.341892, -0.279883, 0.897093,
		26.327106, 32.332668, 33.804642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371899, 31.785519, 33.253113>,  <26.566431, 32.528587, 33.176678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371899, 31.785519, 33.253113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536926, 32.036652, 33.517117>,  <26.635942, 32.187332, 33.675518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536926, 32.036652, 33.517117>,  <26.371899, 31.785519, 33.253113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536926, 32.036652, 33.517117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618791, -0.724879, 0.302735,
		0.668494, 0.283509, -0.687559,
		0.412569, 0.627832, 0.660010,
		26.660698, 32.225002, 33.715118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098045, 31.961746, 33.144699>,  <26.371899, 31.785519, 33.253113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098045, 31.961746, 33.144699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050541, 31.985172, 33.541176>,  <27.022038, 31.999228, 33.779064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050541, 31.985172, 33.541176>,  <27.098045, 31.961746, 33.144699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050541, 31.985172, 33.541176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534998, -0.837185, 0.113568,
		0.836464, 0.543775, 0.068092,
		-0.118761, 0.058566, 0.991194,
		27.014912, 32.002743, 33.838535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717888, 31.712833, 33.582752>,  <27.098045, 31.961746, 33.144699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717888, 31.712833, 33.582752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388166, 31.694376, 33.808456>,  <27.190334, 31.683302, 33.943878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388166, 31.694376, 33.808456>,  <27.717888, 31.712833, 33.582752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388166, 31.694376, 33.808456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334278, -0.844062, 0.419306,
		0.456926, 0.534257, 0.711188,
		-0.824304, -0.046143, 0.564264,
		27.140875, 31.680532, 33.977737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011005, 31.522326, 34.351578>,  <27.717888, 31.712833, 33.582752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011005, 31.522326, 34.351578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625799, 31.421038, 34.314743>,  <27.394676, 31.360266, 34.292645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625799, 31.421038, 34.314743>,  <28.011005, 31.522326, 34.351578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625799, 31.421038, 34.314743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197164, -0.895189, 0.399702,
		-0.183646, 0.366764, 0.912008,
		-0.963016, -0.253219, -0.092085,
		27.336895, 31.345072, 34.287117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982252, 31.233301, 35.046551>,  <28.011005, 31.522326, 34.351578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982252, 31.233301, 35.046551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691957, 31.146786, 34.785316>,  <27.517780, 31.094877, 34.628574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691957, 31.146786, 34.785316>,  <27.982252, 31.233301, 35.046551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691957, 31.146786, 34.785316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140112, -0.975867, 0.167487,
		-0.673555, 0.030045, 0.738526,
		-0.725736, -0.216288, -0.653090,
		27.474237, 31.081900, 34.589390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518095, 30.756641, 35.291889>,  <27.982252, 31.233301, 35.046551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518095, 30.756641, 35.291889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532322, 30.707409, 34.895187>,  <27.540857, 30.677870, 34.657166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532322, 30.707409, 34.895187>,  <27.518095, 30.756641, 35.291889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532322, 30.707409, 34.895187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071542, -0.989527, 0.125368,
		-0.996803, -0.075412, -0.026390,
		0.035568, -0.123080, -0.991760,
		27.542992, 30.670485, 34.597660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879486, 30.339994, 35.029930>,  <27.518095, 30.756641, 35.291889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879486, 30.339994, 35.029930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235287, 30.291075, 34.853828>,  <27.448767, 30.261723, 34.748165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235287, 30.291075, 34.853828>,  <26.879486, 30.339994, 35.029930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235287, 30.291075, 34.853828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094453, -0.991919, 0.084713,
		-0.447060, -0.033768, -0.893866,
		0.889503, -0.122300, -0.440257,
		27.502138, 30.254385, 34.721752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810446, 29.937334, 34.266846>,  <26.879486, 30.339994, 35.029930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810446, 29.937334, 34.266846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159241, 29.893669, 34.457726>,  <27.368517, 29.867470, 34.572254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159241, 29.893669, 34.457726>,  <26.810446, 29.937334, 34.266846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159241, 29.893669, 34.457726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141447, -0.989424, 0.032126,
		0.468648, -0.095512, -0.878206,
		0.871987, -0.109164, 0.477202,
		27.420837, 29.860920, 34.600887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490513, 30.521385, 33.920845>,  <26.810446, 29.937334, 34.266846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490513, 30.521385, 33.920845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707432, 30.713516, 34.196583>,  <26.837584, 30.828794, 34.362026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707432, 30.713516, 34.196583>,  <26.490513, 30.521385, 33.920845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707432, 30.713516, 34.196583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270533, 0.876598, -0.397979,
		-0.795442, 0.029331, 0.605319,
		0.542295, 0.480328, 0.689348,
		26.870121, 30.857615, 34.403389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082399, 31.128107, 34.196739>,  <26.490513, 30.521385, 33.920845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082399, 31.128107, 34.196739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472706, 31.195734, 34.252308>,  <26.706890, 31.236311, 34.285648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472706, 31.195734, 34.252308>,  <26.082399, 31.128107, 34.196739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472706, 31.195734, 34.252308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146155, 0.976031, -0.161253,
		-0.162856, 0.137041, 0.977086,
		0.975765, 0.169067, 0.138923,
		26.765436, 31.246454, 34.293983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048864, 31.638790, 34.652351>,  <26.082399, 31.128107, 34.196739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048864, 31.638790, 34.652351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382347, 31.642323, 34.431496>,  <26.582438, 31.644442, 34.298985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382347, 31.642323, 34.431496>,  <26.048864, 31.638790, 34.652351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382347, 31.642323, 34.431496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073945, 0.992652, -0.095781,
		0.547234, 0.120681, 0.828234,
		0.833707, 0.008829, -0.552137,
		26.632460, 31.644972, 34.265854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547630, 32.056931, 34.983055>,  <26.048864, 31.638790, 34.652351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547630, 32.056931, 34.983055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644970, 32.043278, 34.595322>,  <26.703373, 32.035088, 34.362682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644970, 32.043278, 34.595322>,  <26.547630, 32.056931, 34.983055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644970, 32.043278, 34.595322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104311, 0.994506, -0.008832,
		0.964314, -0.098964, 0.245573,
		0.243350, -0.034133, -0.969338,
		26.717976, 32.033039, 34.304520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284405, 32.243755, 34.813553>,  <26.547630, 32.056931, 34.983055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284405, 32.243755, 34.813553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036587, 32.370579, 34.526321>,  <26.887896, 32.446671, 34.353981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036587, 32.370579, 34.526321>,  <27.284405, 32.243755, 34.813553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036587, 32.370579, 34.526321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322112, 0.936916, 0.135766,
		0.715828, -0.147190, -0.682587,
		-0.619543, 0.317055, -0.718082,
		26.850723, 32.465694, 34.310898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684658, 32.545605, 34.415840>,  <27.284405, 32.243755, 34.813553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684658, 32.545605, 34.415840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317327, 32.696312, 34.367313>,  <27.096930, 32.786736, 34.338196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317327, 32.696312, 34.367313>,  <27.684658, 32.545605, 34.415840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317327, 32.696312, 34.367313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382064, 0.923852, -0.022908,
		0.103451, -0.067390, -0.992349,
		-0.918328, 0.376771, -0.121321,
		27.041830, 32.809341, 34.330917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625900, 33.025642, 33.766586>,  <27.684658, 32.545605, 34.415840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625900, 33.025642, 33.766586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344614, 33.119759, 34.034950>,  <27.175842, 33.176228, 34.195969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344614, 33.119759, 34.034950>,  <27.625900, 33.025642, 33.766586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344614, 33.119759, 34.034950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338382, 0.940683, 0.024775,
		-0.625287, 0.244447, -0.741122,
		-0.703217, 0.235291, 0.670913,
		27.133650, 33.190346, 34.236225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322321, 33.637066, 33.570210>,  <27.625900, 33.025642, 33.766586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322321, 33.637066, 33.570210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267876, 33.596825, 33.964439>,  <27.235209, 33.572678, 34.200977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267876, 33.596825, 33.964439>,  <27.322321, 33.637066, 33.570210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267876, 33.596825, 33.964439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395238, 0.906717, 0.147144,
		-0.908438, 0.409564, -0.083654,
		-0.136115, -0.100608, 0.985571,
		27.227041, 33.566643, 34.260109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061460, 34.187363, 33.733757>,  <27.322321, 33.637066, 33.570210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061460, 34.187363, 33.733757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266077, 34.037098, 34.042873>,  <27.388847, 33.946938, 34.228344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266077, 34.037098, 34.042873>,  <27.061460, 34.187363, 33.733757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266077, 34.037098, 34.042873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386814, 0.903760, 0.183283,
		-0.767269, 0.205170, 0.607621,
		0.511539, -0.375664, 0.772790,
		27.419538, 33.924400, 34.274712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379288, 34.615780, 34.293720>,  <27.061460, 34.187363, 33.733757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379288, 34.615780, 34.293720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061823, 34.461258, 34.481705>,  <26.871344, 34.368546, 34.594498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061823, 34.461258, 34.481705>,  <27.379288, 34.615780, 34.293720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061823, 34.461258, 34.481705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539353, 0.804165, -0.249834,
		-0.281417, -0.451761, -0.846591,
		-0.793664, -0.386304, 0.469965,
		26.823723, 34.345367, 34.622696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528898, 34.956688, 33.653645>,  <27.379288, 34.615780, 34.293720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528898, 34.956688, 33.653645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863119, 34.796341, 33.803928>,  <28.063652, 34.700134, 33.894100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863119, 34.796341, 33.803928>,  <27.528898, 34.956688, 33.653645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863119, 34.796341, 33.803928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404039, 0.911727, 0.074208,
		-0.372293, 0.089798, 0.923761,
		0.835554, -0.400863, 0.375711,
		28.113785, 34.676083, 33.916641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747080, 35.314903, 34.372589>,  <27.528898, 34.956688, 33.653645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747080, 35.314903, 34.372589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009569, 35.168274, 34.108772>,  <28.167063, 35.080296, 33.950481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009569, 35.168274, 34.108772>,  <27.747080, 35.314903, 34.372589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009569, 35.168274, 34.108772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547029, 0.833166, 0.081203,
		0.519741, -0.414077, 0.747268,
		0.656222, -0.366573, -0.659543,
		28.206436, 35.058304, 33.910908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490540, 35.281731, 35.076370>,  <27.747080, 35.314903, 34.372589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490540, 35.281731, 35.076370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855309, 35.203945, 35.220917>,  <28.074169, 35.157276, 35.307644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855309, 35.203945, 35.220917>,  <27.490540, 35.281731, 35.076370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855309, 35.203945, 35.220917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311953, 0.900630, -0.302575,
		-0.266617, 0.388654, 0.881966,
		0.911921, -0.194460, 0.361365,
		28.128885, 35.145607, 35.329327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796438, 35.772369, 35.473545>,  <27.490540, 35.281731, 35.076370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796438, 35.772369, 35.473545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121580, 35.596973, 35.320190>,  <28.316666, 35.491734, 35.228176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121580, 35.596973, 35.320190>,  <27.796438, 35.772369, 35.473545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121580, 35.596973, 35.320190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283118, 0.872677, -0.397843,
		0.509026, 0.214845, 0.833507,
		0.812857, -0.438494, -0.383389,
		28.365437, 35.465424, 35.205173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386366, 36.094963, 35.688198>,  <27.796438, 35.772369, 35.473545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386366, 36.094963, 35.688198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441740, 35.929359, 35.328323>,  <28.474964, 35.829998, 35.112400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441740, 35.929359, 35.328323>,  <28.386366, 36.094963, 35.688198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441740, 35.929359, 35.328323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198641, 0.901580, -0.384311,
		0.970246, -0.125512, 0.207048,
		0.138435, -0.414005, -0.899687,
		28.483271, 35.805157, 35.058418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238876, 36.791416, 35.968868>,  <28.386366, 36.094963, 35.688198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238876, 36.791416, 35.968868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924219, 36.993721, 35.827225>,  <27.735424, 37.115105, 35.742241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924219, 36.993721, 35.827225>,  <28.238876, 36.791416, 35.968868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924219, 36.993721, 35.827225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215139, 0.762137, 0.610625,
		0.578710, 0.404163, -0.708341,
		-0.786645, 0.505767, -0.354105,
		27.688225, 37.145451, 35.720993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613495, 37.479649, 35.880066>,  <28.238876, 36.791416, 35.968868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613495, 37.479649, 35.880066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217766, 37.469284, 35.937435>,  <27.980328, 37.463066, 35.971855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217766, 37.469284, 35.937435>,  <28.613495, 37.479649, 35.880066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217766, 37.469284, 35.937435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028558, 0.930522, 0.365121,
		-0.142917, 0.365318, -0.919846,
		-0.989323, -0.025913, 0.143420,
		27.920969, 37.461510, 35.980461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223734, 37.700119, 36.345661>,  <28.613495, 37.479649, 35.880066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223734, 37.700119, 36.345661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305410, 37.315228, 36.417686>,  <29.354416, 37.084293, 36.460899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305410, 37.315228, 36.417686>,  <29.223734, 37.700119, 36.345661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305410, 37.315228, 36.417686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015732, 0.187138, 0.982208,
		-0.978805, -0.197724, 0.053349,
		0.204190, -0.962229, 0.180061,
		29.366667, 37.026558, 36.471706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620373, 37.432060, 36.671558>,  <29.223734, 37.700119, 36.345661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620373, 37.432060, 36.671558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935970, 37.206764, 36.769741>,  <29.125328, 37.071587, 36.828651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935970, 37.206764, 36.769741>,  <28.620373, 37.432060, 36.671558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935970, 37.206764, 36.769741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134870, 0.230993, 0.963562,
		-0.599418, -0.793348, 0.106287,
		0.788992, -0.563242, 0.245460,
		29.172668, 37.037792, 36.843380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317549, 37.123619, 37.246124>,  <28.620373, 37.432060, 36.671558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317549, 37.123619, 37.246124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717077, 37.104275, 37.247578>,  <28.956795, 37.092667, 37.248447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717077, 37.104275, 37.247578>,  <28.317549, 37.123619, 37.246124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717077, 37.104275, 37.247578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004755, -0.023132, 0.999721,
		-0.048277, -0.998562, -0.023335,
		0.998822, -0.048375, 0.003631,
		29.016724, 37.089764, 37.248669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744637, 36.496895, 37.594097>,  <28.317549, 37.123619, 37.246124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744637, 36.496895, 37.594097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914326, 36.858742, 37.610615>,  <29.016140, 37.075851, 37.620525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914326, 36.858742, 37.610615>,  <28.744637, 36.496895, 37.594097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914326, 36.858742, 37.610615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065577, -0.076174, 0.994936,
		0.903181, -0.419366, -0.091637,
		0.424222, 0.904616, 0.041298,
		29.041592, 37.130127, 37.623005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450171, 36.457840, 37.851028>,  <28.744637, 36.496895, 37.594097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450171, 36.457840, 37.851028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276327, 36.801834, 37.958019>,  <29.172020, 37.008228, 38.022213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276327, 36.801834, 37.958019>,  <29.450171, 36.457840, 37.851028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276327, 36.801834, 37.958019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135587, -0.231126, 0.963430,
		0.890354, 0.454983, -0.016153,
		-0.434610, 0.859983, 0.267474,
		29.145945, 37.059830, 38.038261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618589, 36.849178, 38.503857>,  <29.450171, 36.457840, 37.851028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618589, 36.849178, 38.503857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734774, 37.101372, 38.791779>,  <29.804485, 37.252689, 38.964531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734774, 37.101372, 38.791779>,  <29.618589, 36.849178, 38.503857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734774, 37.101372, 38.791779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947886, -0.086654, -0.306598,
		-0.130931, 0.771350, -0.622797,
		0.290463, 0.630484, 0.719807,
		29.821913, 37.290516, 39.007721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091240, 37.489140, 38.235439>,  <29.618589, 36.849178, 38.503857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091240, 37.489140, 38.235439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143234, 37.317520, 38.592991>,  <30.174431, 37.214550, 38.807522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143234, 37.317520, 38.592991>,  <30.091240, 37.489140, 38.235439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143234, 37.317520, 38.592991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925805, -0.270217, -0.264326,
		0.354950, 0.861918, 0.362089,
		0.129984, -0.429046, 0.893881,
		30.182230, 37.188805, 38.861156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708977, 37.867157, 38.676533>,  <30.091240, 37.489140, 38.235439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708977, 37.867157, 38.676533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636568, 37.491268, 38.792572>,  <30.593122, 37.265736, 38.862194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636568, 37.491268, 38.792572>,  <30.708977, 37.867157, 38.676533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636568, 37.491268, 38.792572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932257, -0.257911, -0.253730,
		0.313255, 0.224516, 0.922748,
		-0.181020, -0.939721, 0.290098,
		30.582262, 37.209351, 38.879601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363024, 37.896690, 38.220726>,  <30.708977, 37.867157, 38.676533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363024, 37.896690, 38.220726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712708, 38.070362, 38.307671>,  <31.922518, 38.174564, 38.359837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712708, 38.070362, 38.307671>,  <31.363024, 37.896690, 38.220726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712708, 38.070362, 38.307671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473652, -0.664062, -0.578511,
		-0.106833, 0.608694, -0.786179,
		0.874208, 0.434180, 0.217365,
		31.974970, 38.200615, 38.372879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693829, 37.816975, 37.551983>,  <31.363024, 37.896690, 38.220726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693829, 37.816975, 37.551983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960468, 37.861092, 37.846867>,  <32.120453, 37.887562, 38.023796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960468, 37.861092, 37.846867>,  <31.693829, 37.816975, 37.551983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960468, 37.861092, 37.846867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606917, -0.654502, -0.450864,
		0.432779, 0.747972, -0.503230,
		0.666598, 0.110295, 0.737212,
		32.160446, 37.894180, 38.068031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389847, 37.808205, 37.204483>,  <31.693829, 37.816975, 37.551983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389847, 37.808205, 37.204483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394676, 37.711895, 37.592686>,  <32.397575, 37.654110, 37.825607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394676, 37.711895, 37.592686>,  <32.389847, 37.808205, 37.204483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394676, 37.711895, 37.592686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729814, -0.661353, -0.173158,
		0.683539, 0.710379, 0.167739,
		0.012073, -0.240778, 0.970505,
		32.398296, 37.639660, 37.883839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027393, 37.950348, 37.483837>,  <32.389847, 37.808205, 37.204483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027393, 37.950348, 37.483837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833870, 37.630283, 37.625637>,  <32.717754, 37.438244, 37.710716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833870, 37.630283, 37.625637>,  <33.027393, 37.950348, 37.483837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833870, 37.630283, 37.625637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650162, -0.599766, -0.466443,
		0.585849, 0.004817, 0.810405,
		-0.483807, -0.800161, 0.354504,
		32.688728, 37.390236, 37.731987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486168, 37.547981, 37.398621>,  <33.027393, 37.950348, 37.483837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486168, 37.547981, 37.398621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191025, 37.293900, 37.489910>,  <33.013939, 37.141453, 37.544685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191025, 37.293900, 37.489910>,  <33.486168, 37.547981, 37.398621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191025, 37.293900, 37.489910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563993, -0.765988, -0.308504,
		0.370779, -0.098915, 0.923438,
		-0.737858, -0.635200, 0.228225,
		32.969666, 37.103340, 37.558376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750797, 37.069199, 37.913136>,  <33.486168, 37.547981, 37.398621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750797, 37.069199, 37.913136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439743, 36.914097, 37.715172>,  <33.253109, 36.821037, 37.596394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439743, 36.914097, 37.715172>,  <33.750797, 37.069199, 37.913136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439743, 36.914097, 37.715172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546036, -0.806724, -0.225922,
		-0.311650, -0.445921, 0.839064,
		-0.777636, -0.387750, -0.494905,
		33.206451, 36.797771, 37.566700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679127, 36.258381, 38.106785>,  <33.750797, 37.069199, 37.913136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679127, 36.258381, 38.106785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562229, 36.393360, 37.748852>,  <33.492092, 36.474346, 37.534092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562229, 36.393360, 37.748852>,  <33.679127, 36.258381, 38.106785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562229, 36.393360, 37.748852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651237, -0.614995, -0.444604,
		-0.700347, -0.712680, -0.040030,
		-0.292242, 0.337446, -0.894832,
		33.474556, 36.494595, 37.480404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456806, 35.674080, 37.714428>,  <33.679127, 36.258381, 38.106785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456806, 35.674080, 37.714428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573009, 35.962193, 37.462463>,  <33.642731, 36.135059, 37.311283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573009, 35.962193, 37.462463>,  <33.456806, 35.674080, 37.714428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573009, 35.962193, 37.462463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647604, -0.632630, -0.424722,
		-0.704424, -0.284550, -0.650244,
		0.290509, 0.720285, -0.629916,
		33.660164, 36.178280, 37.273487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394318, 35.402012, 36.991280>,  <33.456806, 35.674080, 37.714428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394318, 35.402012, 36.991280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642872, 35.710938, 36.938503>,  <33.792004, 35.896294, 36.906837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642872, 35.710938, 36.938503>,  <33.394318, 35.402012, 36.991280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642872, 35.710938, 36.938503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636046, -0.595574, -0.490649,
		-0.457516, 0.220962, -0.861310,
		0.621389, 0.772312, -0.131943,
		33.829288, 35.942631, 36.898922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729561, 35.347420, 36.231770>,  <33.394318, 35.402012, 36.991280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729561, 35.347420, 36.231770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993301, 35.578007, 36.424828>,  <34.151546, 35.716358, 36.540661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993301, 35.578007, 36.424828>,  <33.729561, 35.347420, 36.231770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993301, 35.578007, 36.424828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749114, -0.449139, -0.486932,
		-0.063924, 0.682616, -0.727976,
		0.659350, 0.576464, 0.482646,
		34.191105, 35.750946, 36.569622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101345, 35.697807, 35.704903>,  <33.729561, 35.347420, 36.231770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101345, 35.697807, 35.704903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304329, 35.703999, 36.049515>,  <34.426121, 35.707714, 36.256283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304329, 35.703999, 36.049515>,  <34.101345, 35.697807, 35.704903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304329, 35.703999, 36.049515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765826, -0.466388, -0.442710,
		0.394958, 0.884445, -0.248528,
		0.507463, 0.015477, 0.861534,
		34.456570, 35.708641, 36.307976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796329, 35.961201, 35.531624>,  <34.101345, 35.697807, 35.704903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796329, 35.961201, 35.531624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854046, 35.784298, 35.885708>,  <34.888676, 35.678158, 36.098160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854046, 35.784298, 35.885708>,  <34.796329, 35.961201, 35.531624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854046, 35.784298, 35.885708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809205, -0.462140, -0.362785,
		0.569533, 0.768660, 0.291192,
		0.144287, -0.442253, 0.885208,
		34.897331, 35.651623, 36.151272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507320, 36.057663, 35.583309>,  <34.796329, 35.961201, 35.531624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507320, 36.057663, 35.583309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400581, 35.780567, 35.851307>,  <35.336536, 35.614307, 36.012108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400581, 35.780567, 35.851307>,  <35.507320, 36.057663, 35.583309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400581, 35.780567, 35.851307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833651, -0.514737, -0.200180,
		0.483547, 0.505127, 0.714863,
		-0.266850, -0.692743, 0.669999,
		35.320526, 35.572742, 36.052307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115822, 35.865543, 35.955067>,  <35.507320, 36.057663, 35.583309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115822, 35.865543, 35.955067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863403, 35.560760, 36.013306>,  <35.711952, 35.377892, 36.048248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863403, 35.560760, 36.013306>,  <36.115822, 35.865543, 35.955067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863403, 35.560760, 36.013306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682331, -0.634485, -0.363115,
		0.369060, -0.129795, 0.920298,
		-0.631046, -0.761959, 0.145600,
		35.674091, 35.332172, 36.056984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394791, 35.417789, 36.517673>,  <36.115822, 35.865543, 35.955067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394791, 35.417789, 36.517673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149200, 35.214455, 36.276134>,  <36.001846, 35.092453, 36.131210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149200, 35.214455, 36.276134>,  <36.394791, 35.417789, 36.517673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149200, 35.214455, 36.276134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743364, -0.629622, -0.225801,
		-0.265410, -0.587511, 0.764453,
		-0.613977, -0.508337, -0.603843,
		35.965008, 35.061954, 36.094982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632584, 34.678917, 36.634075>,  <36.394791, 35.417789, 36.517673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632584, 34.678917, 36.634075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400505, 34.652287, 36.309376>,  <36.261257, 34.636307, 36.114555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400505, 34.652287, 36.309376>,  <36.632584, 34.678917, 36.634075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400505, 34.652287, 36.309376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624326, -0.676404, -0.390760,
		-0.523055, -0.733515, 0.434015,
		-0.580198, -0.066578, -0.811750,
		36.226444, 34.632313, 36.065849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562603, 34.026169, 36.588055>,  <36.632584, 34.678917, 36.634075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562603, 34.026169, 36.588055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478920, 34.160034, 36.220528>,  <36.428711, 34.240353, 36.000011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478920, 34.160034, 36.220528>,  <36.562603, 34.026169, 36.588055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478920, 34.160034, 36.220528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651596, -0.652911, -0.386174,
		-0.729147, -0.679490, -0.081472,
		-0.209207, 0.334665, -0.918821,
		36.416157, 34.260433, 35.944881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692715, 33.444000, 36.214817>,  <36.562603, 34.026169, 36.588055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692715, 33.444000, 36.214817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662735, 33.702473, 35.911018>,  <36.644749, 33.857555, 35.728741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662735, 33.702473, 35.911018>,  <36.692715, 33.444000, 36.214817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662735, 33.702473, 35.911018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457051, -0.654665, -0.602095,
		-0.886277, -0.392255, -0.246271,
		-0.074950, 0.646181, -0.759495,
		36.640251, 33.896328, 35.683170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469009, 33.067123, 35.646713>,  <36.692715, 33.444000, 36.214817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469009, 33.067123, 35.646713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666672, 33.383980, 35.503422>,  <36.785267, 33.574093, 35.417446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666672, 33.383980, 35.503422>,  <36.469009, 33.067123, 35.646713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666672, 33.383980, 35.503422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444691, -0.584374, -0.678790,
		-0.747037, 0.176125, -0.641028,
		0.494152, 0.792140, -0.358228,
		36.814919, 33.621620, 35.395954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535915, 32.934624, 34.925323>,  <36.469009, 33.067123, 35.646713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535915, 32.934624, 34.925323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820755, 33.212097, 34.968636>,  <36.991657, 33.378582, 34.994621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820755, 33.212097, 34.968636>,  <36.535915, 32.934624, 34.925323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820755, 33.212097, 34.968636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580475, -0.494960, -0.646578,
		-0.394928, 0.523277, -0.755125,
		0.712096, 0.693683, 0.108276,
		37.034386, 33.420200, 35.001118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641357, 33.044762, 34.310543>,  <36.535915, 32.934624, 34.925323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641357, 33.044762, 34.310543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961254, 33.177952, 34.510361>,  <37.153191, 33.257866, 34.630253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961254, 33.177952, 34.510361>,  <36.641357, 33.044762, 34.310543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961254, 33.177952, 34.510361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600243, -0.459016, -0.654991,
		0.011207, 0.823671, -0.566957,
		0.799739, 0.332972, 0.499547,
		37.201176, 33.277843, 34.660225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064621, 33.315392, 33.830738>,  <36.641357, 33.044762, 34.310543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064621, 33.315392, 33.830738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305710, 33.249027, 34.142944>,  <37.450363, 33.209209, 34.330269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305710, 33.249027, 34.142944>,  <37.064621, 33.315392, 33.830738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305710, 33.249027, 34.142944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586045, -0.571812, -0.574093,
		0.541556, 0.803433, -0.247411,
		0.602718, -0.165909, 0.780516,
		37.486526, 33.199253, 34.377098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651112, 33.558933, 33.506042>,  <37.064621, 33.315392, 33.830738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651112, 33.558933, 33.506042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724957, 33.306908, 33.807755>,  <37.769264, 33.155693, 33.988781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724957, 33.306908, 33.807755>,  <37.651112, 33.558933, 33.506042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724957, 33.306908, 33.807755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694907, -0.459039, -0.553523,
		0.694998, 0.626342, 0.353091,
		0.184612, -0.630063, 0.754281,
		37.780338, 33.117889, 34.034039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324551, 33.515217, 33.689724>,  <37.651112, 33.558933, 33.506042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324551, 33.515217, 33.689724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222630, 33.156178, 33.833611>,  <38.161476, 32.940754, 33.919945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222630, 33.156178, 33.833611>,  <38.324551, 33.515217, 33.689724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222630, 33.156178, 33.833611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845476, -0.387334, -0.367619,
		0.469305, 0.210465, 0.857588,
		-0.254802, -0.897595, 0.359720,
		38.146191, 32.886898, 33.941528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968178, 33.203438, 33.754711>,  <38.324551, 33.515217, 33.689724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968178, 33.203438, 33.754711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699249, 32.907333, 33.755032>,  <38.537891, 32.729671, 33.755222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699249, 32.907333, 33.755032>,  <38.968178, 33.203438, 33.754711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699249, 32.907333, 33.755032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564642, -0.513520, -0.646124,
		0.478710, -0.433951, 0.763232,
		-0.672321, -0.740259, 0.000801,
		38.497555, 32.685257, 33.755272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401882, 32.602390, 33.852257>,  <38.968178, 33.203438, 33.754711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401882, 32.602390, 33.852257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069702, 32.434162, 33.706123>,  <38.870392, 32.333225, 33.618443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069702, 32.434162, 33.706123>,  <39.401882, 32.602390, 33.852257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069702, 32.434162, 33.706123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556147, -0.587828, -0.587502,
		0.032331, -0.691072, 0.722062,
		-0.830455, -0.420568, -0.365333,
		38.820564, 32.307991, 33.596523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464069, 31.753548, 33.823490>,  <39.401882, 32.602390, 33.852257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464069, 31.753548, 33.823490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201347, 31.886507, 33.552750>,  <39.043716, 31.966282, 33.390305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201347, 31.886507, 33.552750>,  <39.464069, 31.753548, 33.823490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201347, 31.886507, 33.552750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484090, -0.502345, -0.716454,
		-0.578160, -0.798223, 0.169030,
		-0.656802, 0.332399, -0.676847,
		39.004307, 31.986227, 33.349697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626629, 31.316824, 33.360920>,  <39.464069, 31.753548, 33.823490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626629, 31.316824, 33.360920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366482, 31.531916, 33.146309>,  <39.210392, 31.660971, 33.017544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366482, 31.531916, 33.146309>,  <39.626629, 31.316824, 33.360920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366482, 31.531916, 33.146309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335709, -0.430125, -0.838029,
		-0.681407, -0.725148, 0.099220,
		-0.650372, 0.537729, -0.536529,
		39.171371, 31.693233, 32.985352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175671, 30.823305, 32.872269>,  <39.626629, 31.316824, 33.360920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175671, 30.823305, 32.872269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215660, 31.203030, 32.753059>,  <39.239655, 31.430864, 32.681534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215660, 31.203030, 32.753059>,  <39.175671, 30.823305, 32.872269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215660, 31.203030, 32.753059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302607, -0.314342, -0.899788,
		-0.947858, -0.000231, -0.318693,
		0.099971, 0.949310, -0.298021,
		39.245651, 31.487823, 32.663654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874638, 30.870401, 32.272408>,  <39.175671, 30.823305, 32.872269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874638, 30.870401, 32.272408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117355, 31.188272, 32.265663>,  <39.262985, 31.378996, 32.261616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117355, 31.188272, 32.265663>,  <38.874638, 30.870401, 32.272408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117355, 31.188272, 32.265663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243800, -0.206272, -0.947635,
		-0.756544, 0.570911, -0.318908,
		0.606797, 0.794678, -0.016866,
		39.299393, 31.426676, 32.260605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617027, 31.270914, 31.683956>,  <38.874638, 30.870401, 32.272408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617027, 31.270914, 31.683956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989311, 31.392191, 31.765797>,  <39.212681, 31.464956, 31.814901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989311, 31.392191, 31.765797>,  <38.617027, 31.270914, 31.683956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989311, 31.392191, 31.765797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301419, -0.318877, -0.898590,
		-0.207201, 0.897994, -0.388168,
		0.930706, 0.303190, 0.204601,
		39.268524, 31.483149, 31.827177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708027, 31.622160, 31.086206>,  <38.617027, 31.270914, 31.683956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708027, 31.622160, 31.086206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065090, 31.552105, 31.252335>,  <39.279327, 31.510073, 31.352013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065090, 31.552105, 31.252335>,  <38.708027, 31.622160, 31.086206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065090, 31.552105, 31.252335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351120, -0.307576, -0.884371,
		0.282629, 0.935267, -0.213066,
		0.892656, -0.175137, 0.415321,
		39.332886, 31.499563, 31.376930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276493, 31.942661, 30.647408>,  <38.708027, 31.622160, 31.086206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276493, 31.942661, 30.647408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447033, 31.648529, 30.858124>,  <39.549358, 31.472050, 30.984554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447033, 31.648529, 30.858124>,  <39.276493, 31.942661, 30.647408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447033, 31.648529, 30.858124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463887, -0.322218, -0.825218,
		0.776551, 0.596206, 0.203732,
		0.426354, -0.735332, 0.526791,
		39.574940, 31.427929, 31.016161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025841, 31.918736, 30.500149>,  <39.276493, 31.942661, 30.647408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025841, 31.918736, 30.500149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935696, 31.556152, 30.643002>,  <39.881607, 31.338602, 30.728714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935696, 31.556152, 30.643002>,  <40.025841, 31.918736, 30.500149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935696, 31.556152, 30.643002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576444, -0.419578, -0.701189,
		0.785444, 0.047844, 0.617081,
		-0.225366, -0.906458, 0.357134,
		39.868084, 31.284216, 30.750141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564091, 31.537535, 30.495478>,  <40.025841, 31.918736, 30.500149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564091, 31.537535, 30.495478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305023, 31.235516, 30.536310>,  <40.149582, 31.054304, 30.560810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305023, 31.235516, 30.536310>,  <40.564091, 31.537535, 30.495478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305023, 31.235516, 30.536310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481405, -0.509378, -0.713291,
		0.590567, -0.412838, 0.693394,
		-0.647673, -0.755049, 0.102080,
		40.110722, 31.009001, 30.566935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969383, 30.896235, 30.438828>,  <40.564091, 31.537535, 30.495478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969383, 30.896235, 30.438828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598160, 30.773493, 30.354395>,  <40.375427, 30.699848, 30.303736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598160, 30.773493, 30.354395>,  <40.969383, 30.896235, 30.438828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598160, 30.773493, 30.354395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364939, -0.635994, -0.679949,
		0.074396, -0.708062, 0.702220,
		-0.928054, -0.306853, -0.211084,
		40.319744, 30.681437, 30.291069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039402, 30.205868, 30.406483>,  <40.969383, 30.896235, 30.438828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039402, 30.205868, 30.406483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701733, 30.288076, 30.208439>,  <40.499130, 30.337402, 30.089613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701733, 30.288076, 30.208439>,  <41.039402, 30.205868, 30.406483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701733, 30.288076, 30.208439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255538, -0.657627, -0.708680,
		-0.471246, -0.724767, 0.502632,
		-0.844173, 0.205521, -0.495110,
		40.448483, 30.349733, 30.059906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760391, 29.573460, 30.279919>,  <41.039402, 30.205868, 30.406483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760391, 29.573460, 30.279919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625866, 29.838953, 30.012680>,  <40.545151, 29.998249, 29.852337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625866, 29.838953, 30.012680>,  <40.760391, 29.573460, 30.279919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625866, 29.838953, 30.012680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296930, -0.598500, -0.744064,
		-0.893714, -0.448618, 0.004203,
		-0.336316, 0.663732, -0.668095,
		40.524971, 30.038073, 29.812252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504135, 29.110712, 29.732504>,  <40.760391, 29.573460, 30.279919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504135, 29.110712, 29.732504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503120, 29.480532, 29.580082>,  <40.502510, 29.702423, 29.488628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503120, 29.480532, 29.580082>,  <40.504135, 29.110712, 29.732504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503120, 29.480532, 29.580082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407901, -0.346956, -0.844535,
		-0.913023, -0.157579, -0.376242,
		-0.002541, 0.924549, -0.381055,
		40.502357, 29.757896, 29.465765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472858, 29.044744, 28.932919>,  <40.504135, 29.110712, 29.732504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472858, 29.044744, 28.932919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603489, 29.420275, 28.976656>,  <40.681866, 29.645594, 29.002899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603489, 29.420275, 28.976656>,  <40.472858, 29.044744, 28.932919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603489, 29.420275, 28.976656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604664, -0.118603, -0.787601,
		-0.726451, 0.323328, -0.606406,
		0.326575, 0.938825, 0.109345,
		40.701462, 29.701921, 29.009460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495480, 29.395260, 28.325184>,  <40.472858, 29.044744, 28.932919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495480, 29.395260, 28.325184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765739, 29.607769, 28.529631>,  <40.927895, 29.735275, 28.652300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765739, 29.607769, 28.529631>,  <40.495480, 29.395260, 28.325184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765739, 29.607769, 28.529631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634624, -0.066334, -0.769969,
		-0.375159, 0.844600, -0.381977,
		0.675653, 0.531273, 0.511118,
		40.968437, 29.767151, 28.682966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719814, 29.912687, 27.837141>,  <40.495480, 29.395260, 28.325184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719814, 29.912687, 27.837141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998890, 29.923174, 28.123510>,  <41.166336, 29.929466, 28.295332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998890, 29.923174, 28.123510>,  <40.719814, 29.912687, 27.837141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998890, 29.923174, 28.123510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713637, 0.062271, -0.697743,
		-0.062874, 0.997715, 0.024736,
		0.697689, 0.026218, 0.715921,
		41.208195, 29.931040, 28.338287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097683, 30.522205, 27.701239>,  <40.719814, 29.912687, 27.837141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097683, 30.522205, 27.701239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326759, 30.253578, 27.889292>,  <41.464203, 30.092402, 28.002123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326759, 30.253578, 27.889292>,  <41.097683, 30.522205, 27.701239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326759, 30.253578, 27.889292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673464, 0.058432, -0.736907,
		0.467413, 0.738634, 0.485742,
		0.572687, -0.671570, 0.470132,
		41.498566, 30.052107, 28.030331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680851, 30.904650, 27.789482>,  <41.097683, 30.522205, 27.701239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680851, 30.904650, 27.789482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792336, 30.524940, 27.847729>,  <41.859226, 30.297115, 27.882677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792336, 30.524940, 27.847729>,  <41.680851, 30.904650, 27.789482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792336, 30.524940, 27.847729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643095, 0.071862, -0.762407,
		0.713267, 0.306135, 0.630500,
		0.278709, -0.949272, 0.145617,
		41.875950, 30.240158, 27.891415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264542, 30.882534, 27.474905>,  <41.680851, 30.904650, 27.789482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264542, 30.882534, 27.474905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178108, 30.494810, 27.521807>,  <42.126247, 30.262177, 27.549948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178108, 30.494810, 27.521807>,  <42.264542, 30.882534, 27.474905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178108, 30.494810, 27.521807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626671, -0.229775, -0.744638,
		0.748727, -0.087423, 0.657088,
		-0.216081, -0.969309, 0.117254,
		42.113285, 30.204018, 27.556982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955849, 30.573925, 27.310614>,  <42.264542, 30.882534, 27.474905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955849, 30.573925, 27.310614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648930, 30.321146, 27.266983>,  <42.464779, 30.169477, 27.240805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648930, 30.321146, 27.266983>,  <42.955849, 30.573925, 27.310614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648930, 30.321146, 27.266983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375647, -0.305048, -0.875120,
		0.519758, -0.712450, 0.471452,
		-0.767295, -0.631950, -0.109079,
		42.418739, 30.131561, 27.234259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260506, 30.028063, 27.105536>,  <42.955849, 30.573925, 27.310614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260506, 30.028063, 27.105536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877216, 29.949083, 27.022760>,  <42.647243, 29.901695, 26.973095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877216, 29.949083, 27.022760>,  <43.260506, 30.028063, 27.105536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877216, 29.949083, 27.022760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273119, -0.416804, -0.866995,
		0.084935, -0.887293, 0.453318,
		-0.958224, -0.197448, -0.206936,
		42.589748, 29.889849, 26.960680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209015, 29.230103, 26.999344>,  <43.260506, 30.028063, 27.105536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209015, 29.230103, 26.999344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907581, 29.432577, 26.831587>,  <42.726723, 29.554062, 26.730932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907581, 29.432577, 26.831587>,  <43.209015, 29.230103, 26.999344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907581, 29.432577, 26.831587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365464, -0.207692, -0.907359,
		-0.546395, -0.837043, -0.028479,
		-0.753584, 0.506184, -0.419391,
		42.681507, 29.584433, 26.705770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910255, 28.844913, 26.442976>,  <43.209015, 29.230103, 26.999344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910255, 28.844913, 26.442976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807007, 29.221144, 26.354712>,  <42.745056, 29.446882, 26.301752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807007, 29.221144, 26.354712>,  <42.910255, 28.844913, 26.442976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807007, 29.221144, 26.354712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350347, -0.121724, -0.928676,
		-0.900349, -0.317023, -0.298108,
		-0.258125, 0.940574, -0.220662,
		42.729568, 29.503317, 26.288513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349857, 28.849302, 25.988617>,  <42.910255, 28.844913, 26.442976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349857, 28.849302, 25.988617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564350, 29.185143, 25.953899>,  <42.693047, 29.386646, 25.933069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564350, 29.185143, 25.953899>,  <42.349857, 28.849302, 25.988617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564350, 29.185143, 25.953899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314914, -0.294404, -0.902305,
		-0.783128, 0.456508, -0.422269,
		0.536228, 0.839599, -0.086795,
		42.725220, 29.437023, 25.927860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076771, 29.216215, 25.393974>,  <42.349857, 28.849302, 25.988617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076771, 29.216215, 25.393974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467411, 29.253683, 25.471420>,  <42.701794, 29.276163, 25.517887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467411, 29.253683, 25.471420>,  <42.076771, 29.216215, 25.393974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467411, 29.253683, 25.471420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214933, -0.391504, -0.894722,
		-0.008007, 0.915396, -0.402474,
		0.976596, 0.093669, 0.193614,
		42.760391, 29.281784, 25.529505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255203, 29.520063, 24.753571>,  <42.076771, 29.216215, 25.393974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255203, 29.520063, 24.753571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588661, 29.366327, 24.912228>,  <42.788734, 29.274086, 25.007421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588661, 29.366327, 24.912228>,  <42.255203, 29.520063, 24.753571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588661, 29.366327, 24.912228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152469, -0.530100, -0.834115,
		0.530844, 0.755828, -0.383313,
		0.833641, -0.384341, 0.396641,
		42.838753, 29.251024, 25.031219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023262, 30.276669, 24.635366>,  <42.255203, 29.520063, 24.753571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023262, 30.276669, 24.635366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376896, 30.094980, 24.591412>,  <42.589077, 29.985968, 24.565039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376896, 30.094980, 24.591412>,  <42.023262, 30.276669, 24.635366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376896, 30.094980, 24.591412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011226, 0.255715, -0.966687,
		0.467188, 0.853402, 0.231173,
		0.884087, -0.454220, -0.109887,
		42.642120, 29.958714, 24.558445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593956, 30.763741, 24.447031>,  <42.023262, 30.276669, 24.635366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593956, 30.763741, 24.447031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589943, 30.411697, 24.257166>,  <42.587536, 30.200472, 24.143246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589943, 30.411697, 24.257166>,  <42.593956, 30.763741, 24.447031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589943, 30.411697, 24.257166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073439, 0.474054, -0.877427,
		0.997249, 0.026057, -0.069390,
		-0.010031, -0.880110, -0.474664,
		42.586933, 30.147665, 24.114767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293297, 30.663860, 24.333620>,  <42.593956, 30.763741, 24.447031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293297, 30.663860, 24.333620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427971, 31.011915, 24.477568>,  <43.508778, 31.220747, 24.563936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427971, 31.011915, 24.477568>,  <43.293297, 30.663860, 24.333620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427971, 31.011915, 24.477568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476187, -0.487051, 0.732138,
		0.812334, -0.075138, -0.578332,
		0.336689, 0.870135, 0.359869,
		43.528976, 31.272955, 24.585527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059669, 30.673565, 24.428421>,  <43.293297, 30.663860, 24.333620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059669, 30.673565, 24.428421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904808, 30.964705, 24.654818>,  <43.811890, 31.139389, 24.790655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904808, 30.964705, 24.654818>,  <44.059669, 30.673565, 24.428421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904808, 30.964705, 24.654818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395150, -0.423648, 0.815094,
		0.833047, 0.539219, -0.123592,
		-0.387155, 0.727850, 0.565991,
		43.788662, 31.183060, 24.824615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504044, 31.166033, 24.858955>,  <44.059669, 30.673565, 24.428421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504044, 31.166033, 24.858955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164906, 31.105585, 25.062254>,  <43.961422, 31.069317, 25.184233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164906, 31.105585, 25.062254>,  <44.504044, 31.166033, 24.858955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164906, 31.105585, 25.062254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525503, -0.367287, 0.767429,
		0.070697, 0.917749, 0.390819,
		-0.847850, -0.151121, 0.508245,
		43.910549, 31.060249, 25.214727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288418, 31.263348, 24.082804>,  <44.504044, 31.166033, 24.858955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288418, 31.263348, 24.082804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915989, 31.300968, 23.941805>,  <43.692532, 31.323540, 23.857206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915989, 31.300968, 23.941805>,  <44.288418, 31.263348, 24.082804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915989, 31.300968, 23.941805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298378, 0.359655, 0.884092,
		0.209927, 0.928333, -0.306803,
		-0.931075, 0.094051, -0.352496,
		43.636665, 31.329184, 23.836056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976639, 31.901140, 24.332062>,  <44.288418, 31.263348, 24.082804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976639, 31.901140, 24.332062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632164, 31.717829, 24.244123>,  <43.425480, 31.607841, 24.191360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632164, 31.717829, 24.244123>,  <43.976639, 31.901140, 24.332062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632164, 31.717829, 24.244123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443467, 0.466096, 0.765566,
		-0.248374, 0.756792, -0.604629,
		-0.861189, -0.458280, -0.219846,
		43.373806, 31.580345, 24.178169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361046, 32.422939, 24.278214>,  <43.976639, 31.901140, 24.332062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361046, 32.422939, 24.278214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255844, 32.061916, 24.414572>,  <43.192722, 31.845301, 24.496387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255844, 32.061916, 24.414572>,  <43.361046, 32.422939, 24.278214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255844, 32.061916, 24.414572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413486, 0.424689, 0.805400,
		-0.871698, 0.070869, -0.484892,
		-0.263006, -0.902561, 0.340897,
		43.176941, 31.791147, 24.516840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655777, 32.451599, 24.278128>,  <43.361046, 32.422939, 24.278214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655777, 32.451599, 24.278128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804146, 32.215988, 24.565311>,  <42.893166, 32.074623, 24.737621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804146, 32.215988, 24.565311>,  <42.655777, 32.451599, 24.278128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804146, 32.215988, 24.565311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394197, 0.600138, 0.696020,
		-0.840849, -0.541185, -0.009590,
		0.370920, -0.589028, 0.717958,
		42.915421, 32.039280, 24.780699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129482, 32.285236, 24.655655>,  <42.655777, 32.451599, 24.278128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129482, 32.285236, 24.655655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425510, 32.224350, 24.917688>,  <42.603127, 32.187820, 25.074907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425510, 32.224350, 24.917688>,  <42.129482, 32.285236, 24.655655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425510, 32.224350, 24.917688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526123, 0.475702, 0.704912,
		-0.418922, -0.866336, 0.271968,
		0.740067, -0.152214, 0.655082,
		42.647530, 32.178684, 25.114212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841614, 32.011143, 25.244240>,  <42.129482, 32.285236, 24.655655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841614, 32.011143, 25.244240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196476, 32.159363, 25.354250>,  <42.409393, 32.248295, 25.420256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196476, 32.159363, 25.354250>,  <41.841614, 32.011143, 25.244240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196476, 32.159363, 25.354250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427904, 0.437462, 0.790901,
		0.172759, -0.819339, 0.546660,
		0.887160, 0.370553, 0.275023,
		42.462624, 32.270527, 25.436756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827736, 31.913197, 25.960447>,  <41.841614, 32.011143, 25.244240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827736, 31.913197, 25.960447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085583, 32.206123, 25.872644>,  <42.240292, 32.381882, 25.819963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085583, 32.206123, 25.872644>,  <41.827736, 31.913197, 25.960447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085583, 32.206123, 25.872644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336142, 0.529370, 0.778958,
		0.686647, -0.428340, 0.587402,
		0.644613, 0.732320, -0.219507,
		42.278965, 32.425819, 25.806793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265991, 32.019520, 26.606674>,  <41.827736, 31.913197, 25.960447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265991, 32.019520, 26.606674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273869, 32.345913, 26.375578>,  <42.278595, 32.541748, 26.236919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273869, 32.345913, 26.375578>,  <42.265991, 32.019520, 26.606674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273869, 32.345913, 26.375578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337673, 0.549325, 0.764342,
		0.941057, 0.180037, 0.286352,
		0.019691, 0.815983, -0.577740,
		42.279778, 32.590710, 26.202255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576538, 32.555729, 27.038774>,  <42.265991, 32.019520, 26.606674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576538, 32.555729, 27.038774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419243, 32.758606, 26.732018>,  <42.324867, 32.880333, 26.547964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419243, 32.758606, 26.732018>,  <42.576538, 32.555729, 27.038774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419243, 32.758606, 26.732018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332868, 0.698976, 0.632954,
		0.857067, 0.504175, -0.106036,
		-0.393237, 0.507188, -0.766893,
		42.301273, 32.910763, 26.501949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615971, 33.162476, 27.254383>,  <42.576538, 32.555729, 27.038774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615971, 33.162476, 27.254383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323700, 33.156837, 26.981352>,  <42.148338, 33.153454, 26.817533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323700, 33.156837, 26.981352>,  <42.615971, 33.162476, 27.254383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323700, 33.156837, 26.981352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538561, 0.626367, 0.563575,
		0.419600, 0.779401, -0.465263,
		-0.730676, -0.014096, -0.682579,
		42.104496, 33.152607, 26.776579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476822, 33.741005, 27.427526>,  <42.615971, 33.162476, 27.254383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476822, 33.741005, 27.427526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178879, 33.600185, 27.200811>,  <42.000111, 33.515694, 27.064783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178879, 33.600185, 27.200811>,  <42.476822, 33.741005, 27.427526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178879, 33.600185, 27.200811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651970, 0.564606, 0.506118,
		0.141834, 0.746515, -0.650075,
		-0.744861, -0.352044, -0.566786,
		41.955421, 33.494572, 27.030775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113953, 34.340778, 27.058498>,  <42.476822, 33.741005, 27.427526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113953, 34.340778, 27.058498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846684, 34.043484, 27.072027>,  <41.686321, 33.865108, 27.080145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846684, 34.043484, 27.072027>,  <42.113953, 34.340778, 27.058498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846684, 34.043484, 27.072027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661980, 0.614642, 0.428950,
		-0.339600, 0.264223, -0.902695,
		-0.668172, -0.743238, 0.033822,
		41.646233, 33.820511, 27.082174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320549, 34.633209, 26.963238>,  <42.113953, 34.340778, 27.058498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320549, 34.633209, 26.963238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251522, 34.272697, 27.122196>,  <41.210106, 34.056393, 27.217571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251522, 34.272697, 27.122196>,  <41.320549, 34.633209, 26.963238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251522, 34.272697, 27.122196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598766, 0.416332, 0.684213,
		-0.782113, -0.119876, -0.611497,
		-0.172565, -0.901275, 0.397397,
		41.199753, 34.002316, 27.241415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653648, 34.576912, 26.935160>,  <41.320549, 34.633209, 26.963238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653648, 34.576912, 26.935160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769344, 34.315765, 27.215189>,  <40.838764, 34.159077, 27.383205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769344, 34.315765, 27.215189>,  <40.653648, 34.576912, 26.935160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769344, 34.315765, 27.215189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591526, 0.453092, 0.666937,
		-0.752619, -0.607017, -0.255135,
		0.289243, -0.652869, 0.700072,
		40.856117, 34.119904, 27.425211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066090, 34.154793, 27.240751>,  <40.653648, 34.576912, 26.935160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066090, 34.154793, 27.240751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333790, 34.110657, 27.534670>,  <40.494411, 34.084175, 27.711021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333790, 34.110657, 27.534670>,  <40.066090, 34.154793, 27.240751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333790, 34.110657, 27.534670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698311, 0.244511, 0.672737,
		-0.253895, -0.963348, 0.086589,
		0.669252, -0.110339, 0.734797,
		40.534565, 34.077557, 27.755110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776726, 33.586437, 27.807121>,  <40.066090, 34.154793, 27.240751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776726, 33.586437, 27.807121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071331, 33.803837, 27.968191>,  <40.248096, 33.934277, 28.064833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071331, 33.803837, 27.968191>,  <39.776726, 33.586437, 27.807121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071331, 33.803837, 27.968191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479912, 0.000346, 0.877316,
		0.476686, -0.839406, 0.261089,
		0.736515, 0.543504, 0.402676,
		40.292286, 33.966888, 28.088995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802418, 33.155083, 28.400745>,  <39.776726, 33.586437, 27.807121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802418, 33.155083, 28.400745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998913, 33.499924, 28.450493>,  <40.116810, 33.706829, 28.480341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998913, 33.499924, 28.450493>,  <39.802418, 33.155083, 28.400745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998913, 33.499924, 28.450493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319831, 0.045715, 0.946371,
		0.810184, -0.504667, 0.298184,
		0.491234, 0.862103, 0.124370,
		40.146282, 33.758556, 28.487804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894489, 33.113777, 28.992214>,  <39.802418, 33.155083, 28.400745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894489, 33.113777, 28.992214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936668, 33.505005, 28.920370>,  <39.961975, 33.739742, 28.877264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936668, 33.505005, 28.920370>,  <39.894489, 33.113777, 28.992214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936668, 33.505005, 28.920370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501017, 0.208274, 0.840003,
		0.858989, 0.001408, 0.511992,
		0.105452, 0.978070, -0.179611,
		39.968304, 33.798428, 28.866488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181755, 33.456581, 29.532322>,  <39.894489, 33.113777, 28.992214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181755, 33.456581, 29.532322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993477, 33.742378, 29.325268>,  <39.880508, 33.913857, 29.201035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993477, 33.742378, 29.325268>,  <40.181755, 33.456581, 29.532322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993477, 33.742378, 29.325268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346868, 0.389595, 0.853169,
		0.811251, 0.581134, 0.064454,
		-0.470695, 0.714492, -0.517637,
		39.852268, 33.956726, 29.169977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290939, 34.163658, 29.865715>,  <40.181755, 33.456581, 29.532322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290939, 34.163658, 29.865715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943188, 34.147270, 29.668739>,  <39.734535, 34.137436, 29.550554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943188, 34.147270, 29.668739>,  <40.290939, 34.163658, 29.865715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943188, 34.147270, 29.668739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487378, 0.235407, 0.840861,
		0.081474, 0.971033, -0.224626,
		-0.869382, -0.040969, -0.492439,
		39.682373, 34.134979, 29.521008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952896, 34.710049, 30.103655>,  <40.290939, 34.163658, 29.865715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952896, 34.710049, 30.103655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658134, 34.527847, 29.903856>,  <39.481277, 34.418526, 29.783978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658134, 34.527847, 29.903856>,  <39.952896, 34.710049, 30.103655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658134, 34.527847, 29.903856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657152, 0.309439, 0.687312,
		-0.158507, 0.834726, -0.527359,
		-0.736903, -0.455499, -0.499494,
		39.437065, 34.391197, 29.754007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406006, 35.170254, 30.031122>,  <39.952896, 34.710049, 30.103655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406006, 35.170254, 30.031122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202381, 34.827953, 29.994150>,  <39.080208, 34.622574, 29.971968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202381, 34.827953, 29.994150>,  <39.406006, 35.170254, 30.031122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202381, 34.827953, 29.994150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716183, 0.361561, 0.596955,
		-0.477427, 0.370084, -0.796933,
		-0.509063, -0.855752, -0.092429,
		39.049664, 34.571228, 29.966421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742767, 35.365944, 29.978994>,  <39.406006, 35.170254, 30.031122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742767, 35.365944, 29.978994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689098, 34.978794, 30.064047>,  <38.656895, 34.746502, 30.115078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689098, 34.978794, 30.064047>,  <38.742767, 35.365944, 29.978994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689098, 34.978794, 30.064047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684421, 0.245684, 0.686446,
		-0.716635, -0.053423, -0.695400,
		-0.134177, -0.967877, 0.212629,
		38.648846, 34.688431, 30.127836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053818, 35.279797, 29.980587>,  <38.742767, 35.365944, 29.978994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053818, 35.279797, 29.980587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170853, 34.961910, 30.193312>,  <38.241074, 34.771179, 30.320948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170853, 34.961910, 30.193312>,  <38.053818, 35.279797, 29.980587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170853, 34.961910, 30.193312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704052, 0.197305, 0.682189,
		-0.647073, -0.574024, -0.501790,
		0.292587, -0.794712, 0.531814,
		38.258629, 34.723495, 30.352856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460506, 34.912247, 30.111839>,  <38.053818, 35.279797, 29.980587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460506, 34.912247, 30.111839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715134, 34.785812, 30.393229>,  <37.867908, 34.709949, 30.562061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715134, 34.785812, 30.393229>,  <37.460506, 34.912247, 30.111839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715134, 34.785812, 30.393229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706813, 0.125820, 0.696121,
		-0.308547, -0.940350, -0.143323,
		0.636564, -0.316088, 0.703473,
		37.906101, 34.690987, 30.604271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062969, 34.590706, 30.471121>,  <37.460506, 34.912247, 30.111839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062969, 34.590706, 30.471121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373199, 34.647774, 30.717091>,  <37.559338, 34.682014, 30.864672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373199, 34.647774, 30.717091>,  <37.062969, 34.590706, 30.471121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373199, 34.647774, 30.717091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630764, 0.213697, 0.745970,
		-0.024978, -0.966426, 0.255730,
		0.775573, 0.142673, 0.614924,
		37.605873, 34.690575, 30.901567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969093, 34.105347, 30.930521>,  <37.062969, 34.590706, 30.471121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969093, 34.105347, 30.930521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180561, 34.390823, 31.114326>,  <37.307442, 34.562111, 31.224609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180561, 34.390823, 31.114326>,  <36.969093, 34.105347, 30.930521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180561, 34.390823, 31.114326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726338, 0.100216, 0.679993,
		0.439256, -0.693252, 0.571363,
		0.528666, 0.713693, 0.459515,
		37.339161, 34.604931, 31.252182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791412, 33.989109, 31.647070>,  <36.969093, 34.105347, 30.930521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791412, 33.989109, 31.647070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939522, 34.359440, 31.616747>,  <37.028389, 34.581638, 31.598553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939522, 34.359440, 31.616747>,  <36.791412, 33.989109, 31.647070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939522, 34.359440, 31.616747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672602, 0.323496, 0.665550,
		0.640706, -0.195447, 0.742493,
		0.370273, 0.925824, -0.075808,
		37.050606, 34.637188, 31.594006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738495, 34.250523, 32.372852>,  <36.791412, 33.989109, 31.647070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738495, 34.250523, 32.372852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781689, 34.574455, 32.142200>,  <36.807606, 34.768814, 32.003807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781689, 34.574455, 32.142200>,  <36.738495, 34.250523, 32.372852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781689, 34.574455, 32.142200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450424, 0.556932, 0.697814,
		0.886260, 0.184374, 0.424911,
		0.107988, 0.809835, -0.576633,
		36.814087, 34.817406, 31.969212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069977, 34.777863, 32.791878>,  <36.738495, 34.250523, 32.372852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069977, 34.777863, 32.791878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853863, 34.970139, 32.515610>,  <36.724194, 35.085503, 32.349850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853863, 34.970139, 32.515610>,  <37.069977, 34.777863, 32.791878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853863, 34.970139, 32.515610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517340, 0.457587, 0.723169,
		0.663662, 0.748031, 0.001452,
		-0.540289, 0.480691, -0.690670,
		36.691776, 35.114346, 32.308411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209797, 35.405464, 32.870182>,  <37.069977, 34.777863, 32.791878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209797, 35.405464, 32.870182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843761, 35.401241, 32.708935>,  <36.624142, 35.398708, 32.612186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843761, 35.401241, 32.708935>,  <37.209797, 35.405464, 32.870182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843761, 35.401241, 32.708935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307786, 0.664174, 0.681278,
		0.260549, 0.747503, -0.611026,
		-0.915086, -0.010559, -0.403121,
		36.569237, 35.398075, 32.587997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049828, 36.117622, 32.670635>,  <37.209797, 35.405464, 32.870182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049828, 36.117622, 32.670635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707275, 35.912117, 32.691254>,  <36.501743, 35.788815, 32.703625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707275, 35.912117, 32.691254>,  <37.049828, 36.117622, 32.670635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707275, 35.912117, 32.691254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434883, 0.771494, 0.464407,
		-0.278365, 0.375291, -0.884121,
		-0.856382, -0.513763, 0.051550,
		36.450359, 35.757988, 32.706718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553833, 36.683586, 32.696678>,  <37.049828, 36.117622, 32.670635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553833, 36.683586, 32.696678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286678, 36.388451, 32.735737>,  <36.126385, 36.211369, 32.759171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286678, 36.388451, 32.735737>,  <36.553833, 36.683586, 32.696678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286678, 36.388451, 32.735737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635598, 0.633695, 0.440960,
		-0.387232, 0.232447, -0.892199,
		-0.667882, -0.737834, 0.097644,
		36.086315, 36.167099, 32.765030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857155, 36.938328, 32.509109>,  <36.553833, 36.683586, 32.696678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857155, 36.938328, 32.509109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825542, 36.622383, 32.752380>,  <35.806576, 36.432816, 32.898342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825542, 36.622383, 32.752380>,  <35.857155, 36.938328, 32.509109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825542, 36.622383, 32.752380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710072, 0.472808, 0.521775,
		-0.699679, -0.390613, -0.598223,
		-0.079033, -0.789857, 0.608177,
		35.801834, 36.385426, 32.934834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117111, 36.897892, 32.662468>,  <35.857155, 36.938328, 32.509109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117111, 36.897892, 32.662468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295723, 36.706692, 32.965023>,  <35.402889, 36.591972, 33.146557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295723, 36.706692, 32.965023>,  <35.117111, 36.897892, 32.662468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295723, 36.706692, 32.965023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650773, 0.406669, 0.641182,
		-0.614086, -0.778545, -0.129480,
		0.446534, -0.478004, 0.756387,
		35.429684, 36.563290, 33.191940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627270, 36.600063, 32.974468>,  <35.117111, 36.897892, 32.662468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627270, 36.600063, 32.974468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911724, 36.600239, 33.255692>,  <35.082397, 36.600346, 33.424423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911724, 36.600239, 33.255692>,  <34.627270, 36.600063, 32.974468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911724, 36.600239, 33.255692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678358, 0.263153, 0.685989,
		-0.184711, -0.964754, 0.187434,
		0.711134, 0.000438, 0.703056,
		35.125065, 36.600368, 33.466610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399826, 36.212467, 33.509033>,  <34.627270, 36.600063, 32.974468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399826, 36.212467, 33.509033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661201, 36.466278, 33.674145>,  <34.818027, 36.618565, 33.773212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661201, 36.466278, 33.674145>,  <34.399826, 36.212467, 33.509033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661201, 36.466278, 33.674145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639631, 0.171212, 0.749372,
		0.404827, -0.753696, 0.517742,
		0.653443, 0.634530, 0.412776,
		34.857235, 36.656635, 33.797977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273457, 36.184544, 34.220020>,  <34.399826, 36.212467, 33.509033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273457, 36.184544, 34.220020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508640, 36.506683, 34.189774>,  <34.649750, 36.699966, 34.171627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508640, 36.506683, 34.189774>,  <34.273457, 36.184544, 34.220020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508640, 36.506683, 34.189774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367613, 0.349302, 0.861886,
		0.720534, -0.478953, 0.501432,
		0.587955, 0.805352, -0.075615,
		34.685028, 36.748287, 34.167088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600704, 36.336922, 34.873352>,  <34.273457, 36.184544, 34.220020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600704, 36.336922, 34.873352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635605, 36.701675, 34.712925>,  <34.656544, 36.920528, 34.616669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635605, 36.701675, 34.712925>,  <34.600704, 36.336922, 34.873352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635605, 36.701675, 34.712925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416124, 0.399156, 0.817016,
		0.905113, 0.095609, 0.414283,
		0.087250, 0.911884, -0.401066,
		34.661781, 36.975243, 34.592606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994450, 36.826397, 35.315762>,  <34.600704, 36.336922, 34.873352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994450, 36.826397, 35.315762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773468, 37.068008, 35.085999>,  <34.640881, 37.212975, 34.948143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773468, 37.068008, 35.085999>,  <34.994450, 36.826397, 35.315762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773468, 37.068008, 35.085999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186920, 0.581786, 0.791572,
		0.812314, 0.544676, -0.208506,
		-0.552456, 0.604031, -0.574403,
		34.607731, 37.249218, 34.913677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047466, 37.540546, 35.552494>,  <34.994450, 36.826397, 35.315762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047466, 37.540546, 35.552494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713886, 37.557007, 35.332375>,  <34.513737, 37.566883, 35.200302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713886, 37.557007, 35.332375>,  <35.047466, 37.540546, 35.552494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713886, 37.557007, 35.332375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382328, 0.676005, 0.629955,
		0.397930, 0.735747, -0.548021,
		-0.833952, 0.041154, -0.550299,
		34.463699, 37.569355, 35.167286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379642, 37.580627, 36.233250>,  <35.047466, 37.540546, 35.552494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379642, 37.580627, 36.233250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436649, 37.207481, 36.365582>,  <35.470852, 36.983593, 36.444981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436649, 37.207481, 36.365582>,  <35.379642, 37.580627, 36.233250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436649, 37.207481, 36.365582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783802, 0.097746, 0.613270,
		-0.604436, -0.346706, -0.717253,
		0.142516, -0.932867, 0.330831,
		35.479404, 36.927620, 36.464832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918934, 38.046207, 36.199600>,  <35.379642, 37.580627, 36.233250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918934, 38.046207, 36.199600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105560, 38.399658, 36.184010>,  <36.217537, 38.611729, 36.174656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105560, 38.399658, 36.184010>,  <35.918934, 38.046207, 36.199600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105560, 38.399658, 36.184010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071571, -0.006203, -0.997416,
		-0.881586, 0.468150, 0.060348,
		0.466567, 0.883627, -0.038974,
		36.245529, 38.664745, 36.172318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503639, 38.432621, 35.678528>,  <35.918934, 38.046207, 36.199600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503639, 38.432621, 35.678528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855988, 38.621174, 35.695786>,  <36.067398, 38.734306, 35.706139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855988, 38.621174, 35.695786>,  <35.503639, 38.432621, 35.678528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855988, 38.621174, 35.695786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003109, 0.085384, -0.996343,
		-0.473344, 0.877785, 0.073747,
		0.880872, 0.471384, 0.043145,
		36.120251, 38.762589, 35.708729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497139, 38.898373, 35.040764>,  <35.503639, 38.432621, 35.678528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497139, 38.898373, 35.040764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874416, 38.864845, 35.169365>,  <36.100780, 38.844730, 35.246525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874416, 38.864845, 35.169365>,  <35.497139, 38.898373, 35.040764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874416, 38.864845, 35.169365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330350, 0.133255, -0.934405,
		0.035477, 0.987531, 0.153374,
		0.943192, -0.083817, 0.321503,
		36.157375, 38.839699, 35.265816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720455, 39.418526, 34.809116>,  <35.497139, 38.898373, 35.040764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720455, 39.418526, 34.809116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035370, 39.176346, 34.855789>,  <36.224319, 39.031040, 34.883793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035370, 39.176346, 34.855789>,  <35.720455, 39.418526, 34.809116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035370, 39.176346, 34.855789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234810, 0.119421, -0.964677,
		0.570126, 0.786876, 0.236183,
		0.787287, -0.605446, 0.116681,
		36.271557, 38.994713, 34.890793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418587, 39.650375, 34.476913>,  <35.720455, 39.418526, 34.809116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418587, 39.650375, 34.476913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508205, 39.261501, 34.504238>,  <36.561977, 39.028179, 34.520634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508205, 39.261501, 34.504238>,  <36.418587, 39.650375, 34.476913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508205, 39.261501, 34.504238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267014, -0.006184, -0.963673,
		0.937287, 0.234147, 0.258201,
		0.224044, -0.972181, 0.068316,
		36.575420, 38.969849, 34.524734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086040, 39.563530, 34.267483>,  <36.418587, 39.650375, 34.476913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086040, 39.563530, 34.267483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927845, 39.200371, 34.211903>,  <36.832928, 38.982475, 34.178555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927845, 39.200371, 34.211903>,  <37.086040, 39.563530, 34.267483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927845, 39.200371, 34.211903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416392, -0.042392, -0.908197,
		0.818661, -0.417038, 0.394808,
		-0.395489, -0.907900, -0.138947,
		36.809196, 38.928001, 34.170219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645672, 39.358253, 34.102570>,  <37.086040, 39.563530, 34.267483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645672, 39.358253, 34.102570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376015, 39.101364, 33.956642>,  <37.214222, 38.947231, 33.869087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376015, 39.101364, 33.956642>,  <37.645672, 39.358253, 34.102570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376015, 39.101364, 33.956642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632170, -0.246272, -0.734650,
		0.381963, -0.725882, 0.572014,
		-0.674140, -0.642219, -0.364814,
		37.173771, 38.908699, 33.847198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963364, 38.719234, 33.938820>,  <37.645672, 39.358253, 34.102570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963364, 38.719234, 33.938820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638351, 38.659378, 33.713467>,  <37.443344, 38.623466, 33.578255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638351, 38.659378, 33.713467>,  <37.963364, 38.719234, 33.938820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638351, 38.659378, 33.713467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577753, -0.335122, -0.744241,
		-0.077436, -0.930216, 0.358751,
		-0.812530, -0.149638, -0.563385,
		37.394592, 38.614487, 33.544453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021763, 38.028744, 33.718895>,  <37.963364, 38.719234, 33.938820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021763, 38.028744, 33.718895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785168, 38.233963, 33.470085>,  <37.643211, 38.357094, 33.320801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785168, 38.233963, 33.470085>,  <38.021763, 38.028744, 33.718895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785168, 38.233963, 33.470085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526663, -0.338312, -0.779853,
		-0.610543, -0.788875, -0.070097,
		-0.591492, 0.513052, -0.622025,
		37.607719, 38.387878, 33.283478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783298, 37.486156, 33.121033>,  <38.021763, 38.028744, 33.718895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783298, 37.486156, 33.121033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730751, 37.861927, 32.994404>,  <37.699223, 38.087391, 32.918427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730751, 37.861927, 32.994404>,  <37.783298, 37.486156, 33.121033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730751, 37.861927, 32.994404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421544, -0.236090, -0.875536,
		-0.897242, -0.248464, -0.364997,
		-0.131367, 0.939429, -0.316568,
		37.691341, 38.143757, 32.899433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594879, 37.410217, 32.468803>,  <37.783298, 37.486156, 33.121033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594879, 37.410217, 32.468803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711258, 37.792538, 32.485790>,  <37.781086, 38.021931, 32.495983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711258, 37.792538, 32.485790>,  <37.594879, 37.410217, 32.468803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711258, 37.792538, 32.485790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546643, -0.129644, -0.827268,
		-0.785196, 0.263902, -0.560199,
		0.290944, 0.955797, 0.042464,
		37.798542, 38.079277, 32.498531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451828, 37.641209, 31.838707>,  <37.594879, 37.410217, 32.468803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451828, 37.641209, 31.838707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710861, 37.901375, 31.997501>,  <37.866280, 38.057476, 32.092777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710861, 37.901375, 31.997501>,  <37.451828, 37.641209, 31.838707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710861, 37.901375, 31.997501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586692, -0.093143, -0.804436,
		-0.486240, 0.753848, -0.441910,
		0.647583, 0.650414, 0.396987,
		37.905136, 38.096500, 32.116596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566891, 38.093563, 31.328356>,  <37.451828, 37.641209, 31.838707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566891, 38.093563, 31.328356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876640, 38.156296, 31.573549>,  <38.062489, 38.193935, 31.720665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876640, 38.156296, 31.573549>,  <37.566891, 38.093563, 31.328356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876640, 38.156296, 31.573549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607361, 0.087314, -0.789613,
		-0.177357, 0.983758, -0.027639,
		0.774375, 0.156830, 0.612983,
		38.108952, 38.203346, 31.757444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975662, 38.639797, 31.113260>,  <37.566891, 38.093563, 31.328356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975662, 38.639797, 31.113260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214142, 38.414764, 31.342363>,  <38.357231, 38.279743, 31.479824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214142, 38.414764, 31.342363>,  <37.975662, 38.639797, 31.113260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214142, 38.414764, 31.342363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571822, -0.203198, -0.794815,
		0.563531, 0.801382, 0.200550,
		0.596198, -0.562582, 0.572756,
		38.393002, 38.245991, 31.514191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594124, 38.698780, 30.860266>,  <37.975662, 38.639797, 31.113260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594124, 38.698780, 30.860266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634727, 38.363708, 31.074923>,  <38.659088, 38.162666, 31.203716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634727, 38.363708, 31.074923>,  <38.594124, 38.698780, 30.860266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634727, 38.363708, 31.074923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535071, -0.408787, -0.739318,
		0.838686, 0.362188, 0.406724,
		0.101509, -0.837683, 0.536641,
		38.665180, 38.112404, 31.235914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272900, 38.569984, 30.675686>,  <38.594124, 38.698780, 30.860266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272900, 38.569984, 30.675686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142681, 38.228424, 30.838100>,  <39.064548, 38.023487, 30.935549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142681, 38.228424, 30.838100>,  <39.272900, 38.569984, 30.675686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142681, 38.228424, 30.838100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555090, -0.520238, -0.649021,
		0.765438, 0.014102, 0.643355,
		-0.325545, -0.853905, 0.406038,
		39.045017, 37.972252, 30.959911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831718, 38.190460, 30.832663>,  <39.272900, 38.569984, 30.675686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831718, 38.190460, 30.832663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543877, 37.912888, 30.822609>,  <39.371174, 37.746342, 30.816578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543877, 37.912888, 30.822609>,  <39.831718, 38.190460, 30.832663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543877, 37.912888, 30.822609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593046, -0.595348, -0.542086,
		0.361210, -0.404989, 0.839947,
		-0.719600, -0.693934, -0.025132,
		39.327995, 37.704708, 30.815069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135876, 37.619022, 30.979593>,  <39.831718, 38.190460, 30.832663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135876, 37.619022, 30.979593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807842, 37.481205, 30.796835>,  <39.611023, 37.398514, 30.687180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807842, 37.481205, 30.796835>,  <40.135876, 37.619022, 30.979593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807842, 37.481205, 30.796835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561140, -0.640699, -0.524049,
		-0.112177, -0.686146, 0.718762,
		-0.820084, -0.344540, -0.456896,
		39.561817, 37.377842, 30.659767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133354, 36.909302, 30.944784>,  <40.135876, 37.619022, 30.979593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133354, 36.909302, 30.944784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888588, 36.976555, 30.635645>,  <39.741730, 37.016907, 30.450161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888588, 36.976555, 30.635645>,  <40.133354, 36.909302, 30.944784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888588, 36.976555, 30.635645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609640, -0.522260, -0.596309,
		-0.503882, -0.836049, 0.217084,
		-0.611917, 0.168126, -0.772846,
		39.705013, 37.026993, 30.403791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138573, 36.249969, 30.650660>,  <40.133354, 36.909302, 30.944784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138573, 36.249969, 30.650660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025444, 36.503670, 30.362844>,  <39.957565, 36.655891, 30.190155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025444, 36.503670, 30.362844>,  <40.138573, 36.249969, 30.650660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025444, 36.503670, 30.362844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572313, -0.490405, -0.657237,
		-0.769719, -0.597684, -0.224292,
		-0.282825, 0.634253, -0.719536,
		39.940598, 36.693947, 30.146984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937218, 35.803459, 30.042843>,  <40.138573, 36.249969, 30.650660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937218, 35.803459, 30.042843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018929, 36.179798, 29.934717>,  <40.067955, 36.405602, 29.869843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018929, 36.179798, 29.934717>,  <39.937218, 35.803459, 30.042843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018929, 36.179798, 29.934717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565792, -0.338819, -0.751719,
		-0.798844, 0.000617, -0.601539,
		0.204276, 0.940852, -0.270314,
		40.080212, 36.462055, 29.853622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691483, 35.968136, 29.347828>,  <39.937218, 35.803459, 30.042843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691483, 35.968136, 29.347828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020969, 36.169483, 29.452219>,  <40.218662, 36.290291, 29.514853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020969, 36.169483, 29.452219>,  <39.691483, 35.968136, 29.347828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020969, 36.169483, 29.452219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534290, -0.535017, -0.654439,
		-0.189799, 0.678510, -0.709648,
		0.823717, 0.503370, 0.260976,
		40.268085, 36.320496, 29.530512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246861, 36.008415, 28.772871>,  <39.691483, 35.968136, 29.347828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246861, 36.008415, 28.772871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450089, 36.122589, 29.097929>,  <40.572025, 36.191093, 29.292963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450089, 36.122589, 29.097929>,  <40.246861, 36.008415, 28.772871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450089, 36.122589, 29.097929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856154, -0.270508, -0.440256,
		0.094161, 0.919429, -0.381816,
		0.508069, 0.285439, 0.812644,
		40.602509, 36.208221, 29.341722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910347, 36.441242, 28.483534>,  <40.246861, 36.008415, 28.772871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910347, 36.441242, 28.483534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000301, 36.310802, 28.850813>,  <41.054276, 36.232540, 29.071180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000301, 36.310802, 28.850813>,  <40.910347, 36.441242, 28.483534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000301, 36.310802, 28.850813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897328, -0.297973, -0.325600,
		0.379775, 0.897147, 0.225605,
		0.224887, -0.326097, 0.918198,
		41.067768, 36.212975, 29.126272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591381, 36.549297, 28.546818>,  <40.910347, 36.441242, 28.483534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591381, 36.549297, 28.546818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543896, 36.311264, 28.864756>,  <41.515404, 36.168442, 29.055519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543896, 36.311264, 28.864756>,  <41.591381, 36.549297, 28.546818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543896, 36.311264, 28.864756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892017, -0.415533, -0.177871,
		0.436133, 0.687899, 0.580158,
		-0.118717, -0.595086, 0.794845,
		41.508282, 36.132740, 29.103209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206081, 36.570675, 28.879276>,  <41.591381, 36.549297, 28.546818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206081, 36.570675, 28.879276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014824, 36.222561, 28.926588>,  <41.900070, 36.013695, 28.954975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014824, 36.222561, 28.926588>,  <42.206081, 36.570675, 28.879276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014824, 36.222561, 28.926588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778261, -0.482245, -0.402180,
		0.407050, -0.100247, 0.907888,
		-0.478142, -0.870282, 0.118279,
		41.871380, 35.961475, 28.962072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518230, 36.126484, 29.381567>,  <42.206081, 36.570675, 28.879276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518230, 36.126484, 29.381567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316635, 35.897438, 29.122919>,  <42.195679, 35.760010, 28.967731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316635, 35.897438, 29.122919>,  <42.518230, 36.126484, 29.381567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316635, 35.897438, 29.122919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852508, -0.449982, -0.265980,
		-0.138664, -0.685298, 0.714940,
		-0.503986, -0.572610, -0.646619,
		42.165440, 35.725655, 28.928934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766796, 35.436317, 29.450094>,  <42.518230, 36.126484, 29.381567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766796, 35.436317, 29.450094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612209, 35.514526, 29.089558>,  <42.519459, 35.561451, 28.873236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612209, 35.514526, 29.089558>,  <42.766796, 35.436317, 29.450094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612209, 35.514526, 29.089558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855099, -0.290250, -0.429605,
		-0.345614, -0.936762, -0.055023,
		-0.386467, 0.195527, -0.901339,
		42.496269, 35.573185, 28.819157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016911, 34.798679, 28.972721>,  <42.766796, 35.436317, 29.450094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016911, 34.798679, 28.972721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940704, 35.095261, 28.715364>,  <42.894981, 35.273209, 28.560951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940704, 35.095261, 28.715364>,  <43.016911, 34.798679, 28.972721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940704, 35.095261, 28.715364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759138, -0.304273, -0.575437,
		-0.622425, -0.598052, -0.504897,
		-0.190515, 0.741453, -0.643391,
		42.883549, 35.317696, 28.522346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146118, 34.408577, 28.410959>,  <43.016911, 34.798679, 28.972721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146118, 34.408577, 28.410959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121326, 34.779480, 28.263260>,  <43.106453, 35.002022, 28.174641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121326, 34.779480, 28.263260>,  <43.146118, 34.408577, 28.410959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121326, 34.779480, 28.263260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685686, -0.229275, -0.690846,
		-0.725254, -0.296003, -0.621602,
		-0.061975, 0.927262, -0.369248,
		43.102734, 35.057659, 28.152485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931656, 34.312939, 27.638826>,  <43.146118, 34.408577, 28.410959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931656, 34.312939, 27.638826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128342, 34.656696, 27.694920>,  <43.246353, 34.862949, 27.728577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128342, 34.656696, 27.694920>,  <42.931656, 34.312939, 27.638826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128342, 34.656696, 27.694920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679010, -0.277607, -0.679618,
		-0.545126, 0.429399, -0.720037,
		0.491715, 0.859390, 0.140235,
		43.275856, 34.914513, 27.736990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151356, 34.564140, 26.984184>,  <42.931656, 34.312939, 27.638826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151356, 34.564140, 26.984184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409363, 34.751759, 27.225494>,  <43.564167, 34.864330, 27.370281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409363, 34.751759, 27.225494>,  <43.151356, 34.564140, 26.984184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409363, 34.751759, 27.225494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740501, -0.188705, -0.645018,
		-0.188705, 0.862776, -0.469050,
		0.645018, 0.469050, 0.603277,
		43.602867, 34.892475, 27.406477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638096, 35.020958, 26.557129>,  <43.151356, 34.564140, 26.984184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638096, 35.020958, 26.557129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851700, 34.987232, 26.893635>,  <43.979862, 34.966999, 27.095537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851700, 34.987232, 26.893635>,  <43.638096, 35.020958, 26.557129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851700, 34.987232, 26.893635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833481, -0.114524, -0.540549,
		0.141919, 0.989836, 0.009115,
		0.534011, -0.084312, 0.841263,
		44.011902, 34.961937, 27.146013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303257, 35.288822, 26.381165>,  <43.638096, 35.020958, 26.557129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303257, 35.288822, 26.381165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336174, 35.071175, 26.715151>,  <44.355923, 34.940586, 26.915543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336174, 35.071175, 26.715151>,  <44.303257, 35.288822, 26.381165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336174, 35.071175, 26.715151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967196, -0.158435, -0.198572,
		0.240334, 0.823915, 0.513229,
		0.082293, -0.544116, 0.834964,
		44.360863, 34.907940, 26.965641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945290, 35.386799, 26.477270>,  <44.303257, 35.288822, 26.381165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945290, 35.386799, 26.477270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890018, 35.111671, 26.762312>,  <44.856857, 34.946594, 26.933338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890018, 35.111671, 26.762312>,  <44.945290, 35.386799, 26.477270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890018, 35.111671, 26.762312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988731, -0.137652, 0.058854,
		0.057610, 0.712707, 0.699092,
		-0.138177, -0.687823, 0.712606,
		44.848564, 34.905323, 26.976093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548622, 35.459400, 27.018578>,  <44.945290, 35.386799, 26.477270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548622, 35.459400, 27.018578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416740, 35.082104, 27.002598>,  <45.337612, 34.855728, 26.993010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416740, 35.082104, 27.002598>,  <45.548622, 35.459400, 27.018578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416740, 35.082104, 27.002598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936092, -0.332112, 0.115900,
		-0.122589, 0.000817, 0.992457,
		-0.329702, -0.943239, -0.039948,
		45.317829, 34.799133, 26.990614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975048, 35.030613, 27.514448>,  <45.548622, 35.459400, 27.018578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975048, 35.030613, 27.514448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822857, 34.789032, 27.234310>,  <45.731544, 34.644085, 27.066227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822857, 34.789032, 27.234310>,  <45.975048, 35.030613, 27.514448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822857, 34.789032, 27.234310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901323, -0.411693, -0.134630,
		-0.207017, -0.682460, 0.700994,
		-0.380474, -0.603951, -0.700345,
		45.708714, 34.607845, 27.024206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.125889, 34.291130, 27.678402>,  <45.975048, 35.030613, 27.514448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.125889, 34.291130, 27.678402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094891, 34.336033, 27.282141>,  <46.076290, 34.362976, 27.044384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094891, 34.336033, 27.282141>,  <46.125889, 34.291130, 27.678402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094891, 34.336033, 27.282141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937166, -0.330823, -0.110801,
		-0.340169, -0.936992, -0.079571,
		-0.077496, 0.112262, -0.990652,
		46.071640, 34.369713, 26.984945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593849, 33.812706, 27.949627>,  <46.125889, 34.291130, 27.678402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593849, 33.812706, 27.949627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833122, 33.631401, 28.213972>,  <45.976685, 33.522617, 28.372580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833122, 33.631401, 28.213972>,  <45.593849, 33.812706, 27.949627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833122, 33.631401, 28.213972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766183, -0.081824, 0.637392,
		-0.234830, -0.887615, -0.396226,
		0.598179, -0.453260, 0.660860,
		46.012577, 33.495422, 28.412230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294842, 33.154507, 28.260187>,  <45.593849, 33.812706, 27.949627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294842, 33.154507, 28.260187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555683, 33.307812, 28.521833>,  <45.712189, 33.399796, 28.678822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555683, 33.307812, 28.521833>,  <45.294842, 33.154507, 28.260187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555683, 33.307812, 28.521833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705130, -0.010301, 0.709003,
		0.278474, -0.923581, 0.263535,
		0.652107, 0.383265, 0.654113,
		45.751316, 33.422791, 28.718067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008133, 32.979744, 28.876265>,  <45.294842, 33.154507, 28.260187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008133, 32.979744, 28.876265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291962, 33.228653, 29.008490>,  <45.462261, 33.377998, 29.087826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291962, 33.228653, 29.008490>,  <45.008133, 32.979744, 28.876265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291962, 33.228653, 29.008490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559167, 0.211822, 0.801538,
		0.428758, -0.753593, 0.498261,
		0.709576, 0.622278, 0.330564,
		45.504833, 33.415337, 29.107658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118465, 32.844090, 29.588482>,  <45.008133, 32.979744, 28.876265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118465, 32.844090, 29.588482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259289, 33.217621, 29.563107>,  <45.343784, 33.441738, 29.547882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259289, 33.217621, 29.563107>,  <45.118465, 32.844090, 29.588482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259289, 33.217621, 29.563107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557016, 0.263503, 0.787591,
		0.752189, -0.241943, 0.612924,
		0.352060, 0.933825, -0.063438,
		45.364906, 33.497768, 29.544075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413666, 33.066414, 30.346031>,  <45.118465, 32.844090, 29.588482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413666, 33.066414, 30.346031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322018, 33.382484, 30.118658>,  <45.267029, 33.572128, 29.982233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322018, 33.382484, 30.118658>,  <45.413666, 33.066414, 30.346031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322018, 33.382484, 30.118658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466219, 0.423545, 0.776691,
		0.854484, 0.442971, 0.271354,
		-0.229121, 0.790181, -0.568435,
		45.253281, 33.619537, 29.948128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600113, 33.676540, 30.776779>,  <45.413666, 33.066414, 30.346031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600113, 33.676540, 30.776779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330044, 33.800205, 30.508881>,  <45.168003, 33.874405, 30.348141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330044, 33.800205, 30.508881>,  <45.600113, 33.676540, 30.776779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330044, 33.800205, 30.508881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514590, 0.453127, 0.727924,
		0.528527, 0.836119, -0.146847,
		-0.675171, 0.309162, -0.669748,
		45.127491, 33.892952, 30.307957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538166, 34.268105, 30.958323>,  <45.600113, 33.676540, 30.776779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538166, 34.268105, 30.958323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225651, 34.221210, 30.713097>,  <45.038143, 34.193073, 30.565962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225651, 34.221210, 30.713097>,  <45.538166, 34.268105, 30.958323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225651, 34.221210, 30.713097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592376, 0.448765, 0.669105,
		0.196680, 0.885926, -0.420061,
		-0.781286, -0.117235, -0.613064,
		44.991264, 34.186039, 30.529177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271610, 35.002296, 30.773479>,  <45.538166, 34.268105, 30.958323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271610, 35.002296, 30.773479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.976364, 34.743916, 30.695580>,  <44.799217, 34.588886, 30.648840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.976364, 34.743916, 30.695580>,  <45.271610, 35.002296, 30.773479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976364, 34.743916, 30.695580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652749, 0.610745, 0.448228,
		-0.170590, 0.457969, -0.872447,
		-0.738117, -0.645952, -0.194752,
		44.754929, 34.550129, 30.637154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728565, 35.382351, 30.734894>,  <45.271610, 35.002296, 30.773479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728565, 35.382351, 30.734894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573479, 35.017647, 30.789110>,  <44.480427, 34.798824, 30.821640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573479, 35.017647, 30.789110>,  <44.728565, 35.382351, 30.734894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573479, 35.017647, 30.789110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789375, 0.404348, 0.461942,
		-0.475984, 0.072113, -0.876492,
		-0.387720, -0.911758, 0.135539,
		44.457161, 34.744118, 30.829771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034634, 35.348259, 30.453739>,  <44.728565, 35.382351, 30.734894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034634, 35.348259, 30.453739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039143, 35.050701, 30.721022>,  <44.041847, 34.872166, 30.881392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039143, 35.050701, 30.721022>,  <44.034634, 35.348259, 30.453739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039143, 35.050701, 30.721022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904397, 0.277472, 0.324153,
		-0.426543, -0.607977, -0.669645,
		0.011270, -0.743891, 0.668207,
		44.042522, 34.827534, 30.921484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456585, 34.984524, 30.259710>,  <44.034634, 35.348259, 30.453739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456585, 34.984524, 30.259710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571697, 34.940029, 30.640196>,  <43.640766, 34.913334, 30.868486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571697, 34.940029, 30.640196>,  <43.456585, 34.984524, 30.259710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571697, 34.940029, 30.640196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905396, 0.292136, 0.308082,
		-0.312154, -0.949886, -0.016640,
		0.287782, -0.111234, 0.951214,
		43.658031, 34.906658, 30.925560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956310, 34.596649, 30.612930>,  <43.456585, 34.984524, 30.259710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956310, 34.596649, 30.612930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157009, 34.780045, 30.906334>,  <43.277428, 34.890083, 31.082376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157009, 34.780045, 30.906334>,  <42.956310, 34.596649, 30.612930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157009, 34.780045, 30.906334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848183, 0.427227, 0.313150,
		-0.169800, -0.779273, 0.603242,
		0.501751, 0.458487, 0.733509,
		43.307533, 34.917591, 31.126387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557228, 34.411541, 31.125063>,  <42.956310, 34.596649, 30.612930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557228, 34.411541, 31.125063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796597, 34.700619, 31.263399>,  <42.940220, 34.874065, 31.346401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796597, 34.700619, 31.263399>,  <42.557228, 34.411541, 31.125063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796597, 34.700619, 31.263399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770923, 0.401905, 0.494116,
		0.218098, -0.562307, 0.797649,
		0.598424, 0.722692, 0.345841,
		42.976124, 34.917427, 31.367151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575901, 34.353687, 31.890114>,  <42.557228, 34.411541, 31.125063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575901, 34.353687, 31.890114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695889, 34.716881, 31.773098>,  <42.767883, 34.934799, 31.702888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695889, 34.716881, 31.773098>,  <42.575901, 34.353687, 31.890114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695889, 34.716881, 31.773098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804848, 0.405511, 0.433336,
		0.512091, 0.105462, 0.852432,
		0.299971, 0.907986, -0.292539,
		42.785881, 34.989277, 31.685337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486355, 34.781410, 32.554073>,  <42.575901, 34.353687, 31.890114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486355, 34.781410, 32.554073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527199, 35.057564, 32.267593>,  <42.551704, 35.223255, 32.095707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527199, 35.057564, 32.267593>,  <42.486355, 34.781410, 32.554073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527199, 35.057564, 32.267593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708542, 0.555824, 0.434774,
		0.698242, 0.463061, 0.545924,
		0.102111, 0.690387, -0.716198,
		42.557831, 35.264679, 32.052734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553394, 35.373119, 32.937843>,  <42.486355, 34.781410, 32.554073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553394, 35.373119, 32.937843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452183, 35.469727, 32.563114>,  <42.391457, 35.527691, 32.338276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452183, 35.469727, 32.563114>,  <42.553394, 35.373119, 32.937843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452183, 35.469727, 32.563114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801811, 0.489505, 0.342759,
		0.541364, 0.837886, 0.069795,
		-0.253028, 0.241520, -0.936827,
		42.376274, 35.542183, 32.282066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613895, 36.086529, 32.889256>,  <42.553394, 35.373119, 32.937843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613895, 36.086529, 32.889256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358559, 35.972221, 32.603359>,  <42.205357, 35.903637, 32.431820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358559, 35.972221, 32.603359>,  <42.613895, 36.086529, 32.889256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358559, 35.972221, 32.603359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622883, 0.737309, 0.261520,
		0.452251, 0.612139, -0.648656,
		-0.638346, -0.285764, -0.714740,
		42.167053, 35.886494, 32.388939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471466, 36.662079, 32.604996>,  <42.613895, 36.086529, 32.889256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471466, 36.662079, 32.604996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176754, 36.421837, 32.480782>,  <41.999928, 36.277691, 32.406254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176754, 36.421837, 32.480782>,  <42.471466, 36.662079, 32.604996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176754, 36.421837, 32.480782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648248, 0.758023, 0.071945,
		0.192183, 0.254313, -0.947835,
		-0.736777, -0.600605, -0.310537,
		41.955719, 36.241657, 32.387619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051899, 37.125111, 32.332603>,  <42.471466, 36.662079, 32.604996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051899, 37.125111, 32.332603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818562, 36.801262, 32.358593>,  <41.678558, 36.606953, 32.374187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818562, 36.801262, 32.358593>,  <42.051899, 37.125111, 32.332603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818562, 36.801262, 32.358593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771421, 0.577301, 0.267644,
		-0.254202, 0.106004, -0.961324,
		-0.583344, -0.809622, 0.064977,
		41.643559, 36.558376, 32.378086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497219, 37.216446, 31.893599>,  <42.051899, 37.125111, 32.332603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497219, 37.216446, 31.893599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364868, 36.954201, 32.165096>,  <41.285458, 36.796852, 32.327995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364868, 36.954201, 32.165096>,  <41.497219, 37.216446, 31.893599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364868, 36.954201, 32.165096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716795, 0.642424, 0.271101,
		-0.613777, -0.396817, -0.682505,
		-0.330880, -0.655612, 0.678742,
		41.265602, 36.757519, 32.368717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777527, 37.279919, 31.835674>,  <41.497219, 37.216446, 31.893599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777527, 37.279919, 31.835674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814865, 37.109322, 32.195538>,  <40.837269, 37.006962, 32.411457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814865, 37.109322, 32.195538>,  <40.777527, 37.279919, 31.835674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814865, 37.109322, 32.195538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811533, 0.490894, 0.316919,
		-0.576802, -0.759687, -0.300291,
		0.093348, -0.426495, 0.899660,
		40.842869, 36.981373, 32.465435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158554, 37.044495, 32.104038>,  <40.777527, 37.279919, 31.835674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158554, 37.044495, 32.104038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363441, 37.061310, 32.447170>,  <40.486374, 37.071400, 32.653049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363441, 37.061310, 32.447170>,  <40.158554, 37.044495, 32.104038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363441, 37.061310, 32.447170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721547, 0.562805, 0.403261,
		-0.465839, -0.825520, 0.318607,
		0.512214, 0.042035, 0.857829,
		40.517105, 37.073921, 32.704517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599182, 37.027683, 32.649956>,  <40.158554, 37.044495, 32.104038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599182, 37.027683, 32.649956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928635, 37.151970, 32.839729>,  <40.126308, 37.226540, 32.953594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928635, 37.151970, 32.839729>,  <39.599182, 37.027683, 32.649956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928635, 37.151970, 32.839729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560189, 0.576146, 0.595184,
		-0.088409, -0.755985, 0.648592,
		0.823634, 0.310714, 0.474431,
		40.175724, 37.245186, 32.982059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369804, 37.060905, 33.450443>,  <39.599182, 37.027683, 32.649956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369804, 37.060905, 33.450443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674698, 37.310883, 33.382973>,  <39.857635, 37.460869, 33.342491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674698, 37.310883, 33.382973>,  <39.369804, 37.060905, 33.450443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674698, 37.310883, 33.382973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429900, 0.683554, 0.589864,
		0.483926, -0.377103, 0.789690,
		0.762235, 0.624938, -0.168672,
		39.903370, 37.498363, 33.332371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642796, 37.242950, 34.038845>,  <39.369804, 37.060905, 33.450443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642796, 37.242950, 34.038845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751656, 37.533630, 33.786549>,  <39.816971, 37.708038, 33.635170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751656, 37.533630, 33.786549>,  <39.642796, 37.242950, 34.038845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751656, 37.533630, 33.786549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198968, 0.683818, 0.702001,
		0.941461, -0.065548, 0.330689,
		0.272146, 0.726703, -0.630746,
		39.833298, 37.751640, 33.597324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227524, 37.583294, 34.416847>,  <39.642796, 37.242950, 34.038845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227524, 37.583294, 34.416847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076710, 37.816338, 34.128845>,  <39.986221, 37.956165, 33.956043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076710, 37.816338, 34.128845>,  <40.227524, 37.583294, 34.416847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076710, 37.816338, 34.128845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000903, 0.777148, 0.629318,
		0.926197, 0.237928, -0.292489,
		-0.377040, 0.582608, -0.720007,
		39.963596, 37.991119, 33.912842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609299, 38.185272, 34.320469>,  <40.227524, 37.583294, 34.416847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609299, 38.185272, 34.320469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285751, 38.342995, 34.146000>,  <40.091621, 38.437630, 34.041317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285751, 38.342995, 34.146000>,  <40.609299, 38.185272, 34.320469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285751, 38.342995, 34.146000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089588, 0.815798, 0.571356,
		0.581119, 0.423079, -0.695202,
		-0.808873, 0.394308, -0.436173,
		40.043091, 38.461288, 34.015148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776257, 38.866066, 34.131954>,  <40.609299, 38.185272, 34.320469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776257, 38.866066, 34.131954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376526, 38.854786, 34.122517>,  <40.136688, 38.848019, 34.116852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376526, 38.854786, 34.122517>,  <40.776257, 38.866066, 34.131954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376526, 38.854786, 34.122517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036753, 0.747451, 0.663300,
		-0.001065, 0.663719, -0.747981,
		-0.999324, -0.028197, -0.023598,
		40.076729, 38.846325, 34.115437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648064, 39.537209, 34.128441>,  <40.776257, 38.866066, 34.131954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648064, 39.537209, 34.128441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303787, 39.385620, 34.264439>,  <40.097221, 39.294666, 34.346039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303787, 39.385620, 34.264439>,  <40.648064, 39.537209, 34.128441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303787, 39.385620, 34.264439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115429, 0.795655, 0.594651,
		-0.495875, 0.472563, -0.728554,
		-0.860688, -0.378969, 0.339998,
		40.045582, 39.271931, 34.366440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214989, 40.097492, 34.192417>,  <40.648064, 39.537209, 34.128441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214989, 40.097492, 34.192417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035248, 39.834881, 34.434753>,  <39.927402, 39.677315, 34.580154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035248, 39.834881, 34.434753>,  <40.214989, 40.097492, 34.192417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035248, 39.834881, 34.434753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251256, 0.743672, 0.619534,
		-0.857293, 0.126168, -0.499130,
		-0.449354, -0.656532, 0.605844,
		39.900440, 39.637920, 34.616508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636490, 40.404907, 34.691498>,  <40.214989, 40.097492, 34.192417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636490, 40.404907, 34.691498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720341, 40.070316, 34.894024>,  <39.770653, 39.869560, 35.015537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720341, 40.070316, 34.894024>,  <39.636490, 40.404907, 34.691498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720341, 40.070316, 34.894024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057833, 0.506305, 0.860413,
		-0.976069, -0.209651, 0.057761,
		0.209631, -0.836481, 0.506313,
		39.783230, 39.819370, 35.045918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277767, 40.479809, 35.274315>,  <39.636490, 40.404907, 34.691498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277767, 40.479809, 35.274315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529797, 40.194344, 35.396755>,  <39.681015, 40.023064, 35.470219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529797, 40.194344, 35.396755>,  <39.277767, 40.479809, 35.274315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529797, 40.194344, 35.396755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068423, 0.341627, 0.937342,
		-0.773516, -0.611537, 0.166419,
		0.630072, -0.713662, 0.306097,
		39.718819, 39.980244, 35.488583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997585, 40.283230, 35.992641>,  <39.277767, 40.479809, 35.274315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997585, 40.283230, 35.992641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379288, 40.166374, 35.967171>,  <39.608307, 40.096260, 35.951889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379288, 40.166374, 35.967171>,  <38.997585, 40.283230, 35.992641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379288, 40.166374, 35.967171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115045, 0.162167, 0.980034,
		-0.275983, -0.942526, 0.188358,
		0.954253, -0.292143, -0.063677,
		39.665562, 40.078732, 35.948067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040356, 39.835701, 36.582489>,  <38.997585, 40.283230, 35.992641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040356, 39.835701, 36.582489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420448, 39.934258, 36.506226>,  <39.648506, 39.993389, 36.460468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420448, 39.934258, 36.506226>,  <39.040356, 39.835701, 36.582489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420448, 39.934258, 36.506226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155768, 0.154248, 0.975676,
		0.269804, -0.956818, 0.108192,
		0.950232, 0.246389, -0.190658,
		39.705517, 40.008175, 36.449028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402519, 39.546078, 37.118084>,  <39.040356, 39.835701, 36.582489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402519, 39.546078, 37.118084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637814, 39.832470, 36.967701>,  <39.778988, 40.004307, 36.877472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637814, 39.832470, 36.967701>,  <39.402519, 39.546078, 37.118084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637814, 39.832470, 36.967701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421485, 0.125327, 0.898133,
		0.690167, -0.686775, -0.228055,
		0.588234, 0.715984, -0.375962,
		39.814285, 40.047264, 36.854912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045231, 39.337841, 37.329487>,  <39.402519, 39.546078, 37.118084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045231, 39.337841, 37.329487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036854, 39.731812, 37.260807>,  <40.031826, 39.968193, 37.219601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036854, 39.731812, 37.260807>,  <40.045231, 39.337841, 37.329487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036854, 39.731812, 37.260807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354820, 0.167881, 0.919738,
		0.934700, -0.041656, -0.352988,
		-0.020947, 0.984927, -0.171699,
		40.030571, 40.027290, 37.209297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663498, 39.687077, 37.626026>,  <40.045231, 39.337841, 37.329487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663498, 39.687077, 37.626026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448769, 40.020809, 37.575901>,  <40.319931, 40.221050, 37.545826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448769, 40.020809, 37.575901>,  <40.663498, 39.687077, 37.626026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448769, 40.020809, 37.575901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249967, 0.299148, 0.920884,
		0.805812, 0.463031, -0.369147,
		-0.536828, 0.834333, -0.125315,
		40.287720, 40.271111, 37.538307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052555, 40.201660, 37.773510>,  <40.663498, 39.687077, 37.626026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052555, 40.201660, 37.773510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684498, 40.353657, 37.811344>,  <40.463665, 40.444855, 37.834045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684498, 40.353657, 37.811344>,  <41.052555, 40.201660, 37.773510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684498, 40.353657, 37.811344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230497, 0.330319, 0.915292,
		0.316558, 0.864001, -0.391527,
		-0.920143, 0.379989, 0.094584,
		40.408455, 40.467655, 37.839718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184032, 40.784119, 38.292839>,  <41.052555, 40.201660, 37.773510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184032, 40.784119, 38.292839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788612, 40.729504, 38.267139>,  <40.551361, 40.696735, 38.251720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788612, 40.729504, 38.267139>,  <41.184032, 40.784119, 38.292839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788612, 40.729504, 38.267139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101241, 0.284399, 0.953345,
		-0.111897, 0.948933, -0.294966,
		-0.988549, -0.136539, -0.064248,
		40.492046, 40.688541, 38.247864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779396, 41.438484, 38.533813>,  <41.184032, 40.784119, 38.292839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779396, 41.438484, 38.533813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610912, 41.078693, 38.580315>,  <40.509823, 40.862820, 38.608215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610912, 41.078693, 38.580315>,  <40.779396, 41.438484, 38.533813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610912, 41.078693, 38.580315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151186, 0.056750, 0.986875,
		-0.894272, 0.433260, 0.112085,
		-0.421212, -0.899480, 0.116253,
		40.484550, 40.808849, 38.615192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313255, 41.445461, 39.050365>,  <40.779396, 41.438484, 38.533813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313255, 41.445461, 39.050365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453148, 41.072105, 39.018177>,  <40.537083, 40.848091, 38.998863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453148, 41.072105, 39.018177>,  <40.313255, 41.445461, 39.050365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453148, 41.072105, 39.018177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186279, -0.014897, 0.982384,
		-0.918146, -0.358556, 0.168661,
		0.349727, -0.933390, -0.080469,
		40.558067, 40.792088, 38.994038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985115, 41.043900, 39.485497>,  <40.313255, 41.445461, 39.050365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985115, 41.043900, 39.485497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326439, 40.848263, 39.413208>,  <40.531231, 40.730881, 39.369835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326439, 40.848263, 39.413208>,  <39.985115, 41.043900, 39.485497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326439, 40.848263, 39.413208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323940, 0.225688, 0.918764,
		-0.408571, -0.842530, 0.351017,
		0.853307, -0.489089, -0.180720,
		40.582432, 40.701538, 39.358994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009914, 40.441101, 39.930431>,  <39.985115, 41.043900, 39.485497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009914, 40.441101, 39.930431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389519, 40.534985, 39.846245>,  <40.617283, 40.591312, 39.795734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389519, 40.534985, 39.846245>,  <40.009914, 40.441101, 39.930431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389519, 40.534985, 39.846245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221043, -0.019413, 0.975071,
		0.224769, -0.971873, -0.070303,
		0.949009, 0.234706, -0.210462,
		40.674221, 40.605396, 39.783108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476078, 39.956322, 40.300541>,  <40.009914, 40.441101, 39.930431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476078, 39.956322, 40.300541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645977, 40.310947, 40.227226>,  <40.747917, 40.523724, 40.183239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645977, 40.310947, 40.227226>,  <40.476078, 39.956322, 40.300541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645977, 40.310947, 40.227226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413956, -0.010142, 0.910240,
		0.805128, -0.462494, -0.371306,
		0.424747, 0.886564, -0.183287,
		40.773399, 40.576916, 40.172241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803993, 40.212334, 40.971615>,  <40.476078, 39.956322, 40.300541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803993, 40.212334, 40.971615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985882, 40.498104, 40.758892>,  <41.095016, 40.669567, 40.631256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985882, 40.498104, 40.758892>,  <40.803993, 40.212334, 40.971615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985882, 40.498104, 40.758892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586674, 0.208993, 0.782390,
		0.670107, -0.667768, -0.324103,
		0.454720, 0.714428, -0.531810,
		41.122299, 40.712433, 40.599350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418854, 40.161182, 41.239677>,  <40.803993, 40.212334, 40.971615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418854, 40.161182, 41.239677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413158, 40.523441, 41.070160>,  <41.409740, 40.740795, 40.968449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413158, 40.523441, 41.070160>,  <41.418854, 40.161182, 41.239677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413158, 40.523441, 41.070160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424251, 0.389267, 0.817608,
		0.905433, -0.168153, -0.389764,
		-0.014239, 0.905647, -0.423794,
		41.408886, 40.795135, 40.943024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102005, 40.460743, 41.277176>,  <41.418854, 40.161182, 41.239677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102005, 40.460743, 41.277176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838696, 40.760723, 41.251095>,  <41.680710, 40.940712, 41.235447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838696, 40.760723, 41.251095>,  <42.102005, 40.460743, 41.277176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838696, 40.760723, 41.251095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465422, 0.473544, 0.747756,
		0.591655, 0.461881, -0.660764,
		-0.658275, 0.749948, -0.065205,
		41.641212, 40.985706, 41.231533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495056, 41.081425, 41.336884>,  <42.102005, 40.460743, 41.277176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495056, 41.081425, 41.336884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121937, 41.179375, 41.442661>,  <41.898067, 41.238144, 41.506126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121937, 41.179375, 41.442661>,  <42.495056, 41.081425, 41.336884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121937, 41.179375, 41.442661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348163, 0.422613, 0.836768,
		0.093149, 0.872601, -0.479468,
		-0.932795, 0.244877, 0.264441,
		41.842098, 41.252838, 41.521996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481331, 41.786205, 41.422260>,  <42.495056, 41.081425, 41.336884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481331, 41.786205, 41.422260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195583, 41.610699, 41.640312>,  <42.024136, 41.505394, 41.771141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195583, 41.610699, 41.640312>,  <42.481331, 41.786205, 41.422260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195583, 41.610699, 41.640312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353945, 0.445455, 0.822371,
		-0.603657, 0.780420, -0.162919,
		-0.714367, -0.438766, 0.545128,
		41.981274, 41.479069, 41.803852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485100, 42.332378, 41.995285>,  <42.481331, 41.786205, 41.422260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485100, 42.332378, 41.995285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206573, 42.084709, 42.140484>,  <42.039455, 41.936108, 42.227604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206573, 42.084709, 42.140484>,  <42.485100, 42.332378, 41.995285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206573, 42.084709, 42.140484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211645, 0.306137, 0.928163,
		-0.685818, 0.723124, -0.082125,
		-0.696319, -0.619170, 0.363000,
		41.997677, 41.898956, 42.249382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911926, 42.727493, 42.520542>,  <42.485100, 42.332378, 41.995285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911926, 42.727493, 42.520542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953312, 42.337017, 42.596809>,  <41.978142, 42.102734, 42.642570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953312, 42.337017, 42.596809>,  <41.911926, 42.727493, 42.520542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953312, 42.337017, 42.596809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085780, 0.199744, 0.976086,
		-0.990927, -0.084635, 0.104403,
		0.103465, -0.976186, 0.190672,
		41.984352, 42.044163, 42.654011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394146, 42.594330, 42.956356>,  <41.911926, 42.727493, 42.520542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394146, 42.594330, 42.956356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660095, 42.314323, 43.060596>,  <41.819664, 42.146320, 43.123138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660095, 42.314323, 43.060596>,  <41.394146, 42.594330, 42.956356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660095, 42.314323, 43.060596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193370, 0.175682, 0.965269,
		-0.721491, -0.692175, -0.018556,
		0.664876, -0.700021, 0.260599,
		41.859558, 42.104317, 43.138775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023373, 42.133553, 43.519020>,  <41.394146, 42.594330, 42.956356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023373, 42.133553, 43.519020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423111, 42.119640, 43.522984>,  <41.662952, 42.111294, 43.525364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423111, 42.119640, 43.522984>,  <41.023373, 42.133553, 43.519020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423111, 42.119640, 43.522984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004597, 0.149710, 0.988719,
		-0.035873, -0.988118, 0.149452,
		0.999346, -0.034782, 0.009913,
		41.722916, 42.109207, 43.525959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211376, 41.653286, 44.068783>,  <41.023373, 42.133553, 43.519020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211376, 41.653286, 44.068783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519726, 41.901634, 44.011829>,  <41.704735, 42.050644, 43.977657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519726, 41.901634, 44.011829>,  <41.211376, 41.653286, 44.068783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519726, 41.901634, 44.011829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010347, 0.211287, 0.977369,
		0.636904, -0.754902, 0.156452,
		0.770874, 0.620872, -0.142380,
		41.750988, 42.087894, 43.969116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811634, 41.464409, 44.560356>,  <41.211376, 41.653286, 44.068783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811634, 41.464409, 44.560356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831486, 41.851597, 44.461918>,  <41.843399, 42.083912, 44.402855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831486, 41.851597, 44.461918>,  <41.811634, 41.464409, 44.560356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831486, 41.851597, 44.461918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199016, 0.251046, 0.947295,
		0.978738, 0.001963, 0.205102,
		0.049631, 0.967973, -0.246099,
		41.846375, 42.141991, 44.388088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864548, 41.682323, 45.202621>,  <41.811634, 41.464409, 44.560356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864548, 41.682323, 45.202621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862625, 42.021904, 44.991238>,  <41.861473, 42.225651, 44.864407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862625, 42.021904, 44.991238>,  <41.864548, 41.682323, 45.202621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862625, 42.021904, 44.991238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021637, 0.528250, 0.848813,
		0.999754, 0.015511, 0.015831,
		-0.004804, 0.848947, -0.528456,
		41.861183, 42.276588, 44.832703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389111, 42.154366, 45.408661>,  <41.864548, 41.682323, 45.202621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389111, 42.154366, 45.408661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114601, 42.403294, 45.258068>,  <41.949894, 42.552650, 45.167713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114601, 42.403294, 45.258068>,  <42.389111, 42.154366, 45.408661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114601, 42.403294, 45.258068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105897, 0.426610, 0.898215,
		0.719592, 0.656291, -0.226869,
		-0.686275, 0.622323, -0.376485,
		41.908718, 42.589993, 45.145123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595890, 42.872101, 45.523514>,  <42.389111, 42.154366, 45.408661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595890, 42.872101, 45.523514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200481, 42.903248, 45.471722>,  <41.963238, 42.921936, 45.440647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200481, 42.903248, 45.471722>,  <42.595890, 42.872101, 45.523514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200481, 42.903248, 45.471722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062115, 0.571760, 0.818066,
		0.137734, 0.816717, -0.560359,
		-0.988520, 0.077869, -0.129481,
		41.903927, 42.926609, 45.432877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408333, 43.604259, 45.542168>,  <42.595890, 42.872101, 45.523514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408333, 43.604259, 45.542168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076248, 43.396812, 45.623932>,  <41.876995, 43.272346, 45.672993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076248, 43.396812, 45.623932>,  <42.408333, 43.604259, 45.542168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076248, 43.396812, 45.623932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184194, 0.601317, 0.777490,
		-0.526135, 0.607830, -0.594747,
		-0.830213, -0.518614, 0.204415,
		41.827183, 43.241230, 45.685257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761295, 44.071651, 45.626534>,  <42.408333, 43.604259, 45.542168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761295, 44.071651, 45.626534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751068, 43.727478, 45.830101>,  <41.744934, 43.520973, 45.952244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751068, 43.727478, 45.830101>,  <41.761295, 44.071651, 45.626534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751068, 43.727478, 45.830101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386030, 0.478096, 0.788926,
		-0.922132, -0.176289, -0.344377,
		-0.025566, -0.860434, 0.508921,
		41.743397, 43.469349, 45.982777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178314, 44.113094, 45.970699>,  <41.761295, 44.071651, 45.626534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178314, 44.113094, 45.970699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417076, 43.885975, 46.197433>,  <41.560333, 43.749702, 46.333473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417076, 43.885975, 46.197433>,  <41.178314, 44.113094, 45.970699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417076, 43.885975, 46.197433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319294, 0.480031, 0.817081,
		-0.736040, -0.668708, 0.105237,
		0.596905, -0.567804, 0.566836,
		41.596149, 43.715633, 46.367485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713978, 44.573597, 46.411053>,  <41.178314, 44.113094, 45.970699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713978, 44.573597, 46.411053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561775, 44.409893, 46.742771>,  <40.470455, 44.311672, 46.941803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561775, 44.409893, 46.742771>,  <40.713978, 44.573597, 46.411053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561775, 44.409893, 46.742771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419551, -0.875545, -0.239577,
		0.824131, 0.256770, 0.504854,
		-0.380506, -0.409255, 0.829292,
		40.447624, 44.287117, 46.991558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098270, 43.974033, 46.685963>,  <40.713978, 44.573597, 46.411053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098270, 43.974033, 46.685963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147312, 43.706501, 46.979256>,  <41.176739, 43.545982, 47.155231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147312, 43.706501, 46.979256>,  <41.098270, 43.974033, 46.685963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147312, 43.706501, 46.979256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205881, -0.705597, -0.678046,
		0.970866, 0.234093, 0.051188,
		0.122608, -0.668830, 0.733235,
		41.184093, 43.505852, 47.199226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782997, 43.660065, 46.932888>,  <41.098270, 43.974033, 46.685963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782997, 43.660065, 46.932888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451111, 43.439106, 46.900814>,  <41.251980, 43.306530, 46.881569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451111, 43.439106, 46.900814>,  <41.782997, 43.660065, 46.932888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451111, 43.439106, 46.900814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440606, -0.559956, -0.701652,
		0.342687, -0.617504, 0.707994,
		-0.829718, -0.552393, -0.080186,
		41.202194, 43.273388, 46.876759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810017, 42.873013, 46.793766>,  <41.782997, 43.660065, 46.932888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810017, 42.873013, 46.793766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491539, 43.052551, 46.631474>,  <41.300453, 43.160275, 46.534096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491539, 43.052551, 46.631474>,  <41.810017, 42.873013, 46.793766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491539, 43.052551, 46.631474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377247, -0.156012, -0.912877,
		-0.473040, -0.879885, -0.045111,
		-0.796190, 0.448846, -0.405734,
		41.252682, 43.187206, 46.509754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323067, 42.422123, 46.406822>,  <41.810017, 42.873013, 46.793766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323067, 42.422123, 46.406822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340683, 42.794052, 46.260681>,  <41.351254, 43.017212, 46.172997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340683, 42.794052, 46.260681>,  <41.323067, 42.422123, 46.406822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340683, 42.794052, 46.260681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382724, -0.353510, -0.853553,
		-0.922812, -0.102235, -0.371437,
		0.044043, 0.929827, -0.365351,
		41.353897, 43.073002, 46.151077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787315, 42.520142, 45.832275>,  <41.323067, 42.422123, 46.406822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787315, 42.520142, 45.832275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095020, 42.773136, 45.796066>,  <41.279644, 42.924934, 45.774342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095020, 42.773136, 45.796066>,  <40.787315, 42.520142, 45.832275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095020, 42.773136, 45.796066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116751, -0.278437, -0.953332,
		-0.628177, 0.722793, -0.288035,
		0.769261, 0.632490, -0.090521,
		41.325798, 42.962883, 45.768909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620728, 42.935940, 45.205467>,  <40.787315, 42.520142, 45.832275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620728, 42.935940, 45.205467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010548, 42.933353, 45.295097>,  <41.244438, 42.931801, 45.348873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010548, 42.933353, 45.295097>,  <40.620728, 42.935940, 45.205467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010548, 42.933353, 45.295097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218841, -0.189146, -0.957253,
		0.048573, 0.981928, -0.182917,
		0.974551, -0.006467, 0.224073,
		41.302914, 42.931412, 45.362320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907013, 43.252472, 44.666714>,  <40.620728, 42.935940, 45.205467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907013, 43.252472, 44.666714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205738, 43.040638, 44.827614>,  <41.384975, 42.913536, 44.924152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205738, 43.040638, 44.827614>,  <40.907013, 43.252472, 44.666714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205738, 43.040638, 44.827614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343626, -0.210560, -0.915197,
		0.569373, 0.821707, 0.024730,
		0.746817, -0.529586, 0.402247,
		41.429783, 42.881763, 44.948288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456989, 43.358448, 44.169342>,  <40.907013, 43.252472, 44.666714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456989, 43.358448, 44.169342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584370, 43.052071, 44.392738>,  <41.660797, 42.868244, 44.526775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584370, 43.052071, 44.392738>,  <41.456989, 43.358448, 44.169342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584370, 43.052071, 44.392738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490652, -0.370918, -0.788467,
		0.811078, 0.525118, 0.257692,
		0.318456, -0.765945, 0.558493,
		41.679905, 42.822289, 44.560287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091511, 43.310295, 43.886227>,  <41.456989, 43.358448, 44.169342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091511, 43.310295, 43.886227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007431, 42.958862, 44.057766>,  <41.956982, 42.748001, 44.160690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007431, 42.958862, 44.057766>,  <42.091511, 43.310295, 43.886227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007431, 42.958862, 44.057766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424937, -0.477153, -0.769255,
		0.880479, 0.020533, 0.473641,
		-0.210204, -0.878580, 0.428848,
		41.944370, 42.695290, 44.186420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701225, 42.970436, 43.894951>,  <42.091511, 43.310295, 43.886227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701225, 42.970436, 43.894951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407421, 42.700024, 43.918491>,  <42.231136, 42.537777, 43.932617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407421, 42.700024, 43.918491>,  <42.701225, 42.970436, 43.894951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407421, 42.700024, 43.918491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307924, -0.409333, -0.858854,
		0.604707, -0.612718, 0.508829,
		-0.734515, -0.676035, 0.058856,
		42.187065, 42.497211, 43.936150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030533, 42.320538, 43.658302>,  <42.701225, 42.970436, 43.894951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030533, 42.320538, 43.658302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.633034, 42.280380, 43.638771>,  <42.394535, 42.256287, 43.627052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.633034, 42.280380, 43.638771>,  <43.030533, 42.320538, 43.658302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633034, 42.280380, 43.638771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101149, -0.624636, -0.774338,
		0.047243, -0.774436, 0.630886,
		-0.993749, -0.100396, -0.048824,
		42.334908, 42.250263, 43.624123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855522, 41.615894, 43.622566>,  <43.030533, 42.320538, 43.658302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855522, 41.615894, 43.622566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536366, 41.811871, 43.482090>,  <42.344872, 41.929455, 43.397804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536366, 41.811871, 43.482090>,  <42.855522, 41.615894, 43.622566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536366, 41.811871, 43.482090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031672, -0.615861, -0.787218,
		-0.601965, -0.616994, 0.506909,
		-0.797894, 0.489933, -0.351185,
		42.297001, 41.958851, 43.376732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292442, 41.107182, 43.467358>,  <42.855522, 41.615894, 43.622566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292442, 41.107182, 43.467358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227798, 41.446045, 43.264893>,  <42.189011, 41.649364, 43.143414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227798, 41.446045, 43.264893>,  <42.292442, 41.107182, 43.467358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227798, 41.446045, 43.264893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199506, -0.530358, -0.823965,
		-0.966478, -0.032181, 0.254726,
		-0.161612, 0.847163, -0.506159,
		42.179314, 41.700195, 43.113045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214020, 40.777763, 42.866501>,  <42.292442, 41.107182, 43.467358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214020, 40.777763, 42.866501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123917, 41.162079, 42.801823>,  <42.069855, 41.392670, 42.763016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123917, 41.162079, 42.801823>,  <42.214020, 40.777763, 42.866501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123917, 41.162079, 42.801823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276110, -0.222108, -0.935110,
		-0.934356, -0.166000, 0.315315,
		-0.225262, 0.960787, -0.161694,
		42.056339, 41.450314, 42.753315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555241, 40.721813, 42.599174>,  <42.214020, 40.777763, 42.866501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555241, 40.721813, 42.599174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674042, 41.092861, 42.508575>,  <41.745323, 41.315491, 42.454216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674042, 41.092861, 42.508575>,  <41.555241, 40.721813, 42.599174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674042, 41.092861, 42.508575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510909, -0.046015, -0.858402,
		-0.806697, 0.370670, 0.460265,
		0.297005, 0.927624, -0.226499,
		41.763142, 41.371147, 42.440624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965054, 41.109112, 42.282436>,  <41.555241, 40.721813, 42.599174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965054, 41.109112, 42.282436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272118, 41.317863, 42.133656>,  <41.456356, 41.443115, 42.044388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272118, 41.317863, 42.133656>,  <40.965054, 41.109112, 42.282436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272118, 41.317863, 42.133656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370478, -0.112197, -0.922040,
		-0.522923, 0.845610, 0.107215,
		0.767657, 0.521876, -0.371951,
		41.502415, 41.474426, 42.022072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629169, 41.596436, 41.857296>,  <40.965054, 41.109112, 42.282436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629169, 41.596436, 41.857296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998871, 41.481281, 41.757000>,  <41.220692, 41.412189, 41.696823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998871, 41.481281, 41.757000>,  <40.629169, 41.596436, 41.857296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998871, 41.481281, 41.757000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310601, -0.185142, -0.932336,
		0.221981, 0.939599, -0.260536,
		0.924257, -0.287883, -0.250742,
		41.276150, 41.394917, 41.681778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793415, 41.932961, 41.161179>,  <40.629169, 41.596436, 41.857296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793415, 41.932961, 41.161179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052105, 41.627880, 41.163296>,  <41.207321, 41.444832, 41.164566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052105, 41.627880, 41.163296>,  <40.793415, 41.932961, 41.161179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052105, 41.627880, 41.163296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220195, -0.193353, -0.956101,
		0.730245, 0.617170, -0.292990,
		0.646728, -0.762703, 0.005297,
		41.246124, 41.399071, 41.164886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325024, 42.048237, 40.588425>,  <40.793415, 41.932961, 41.161179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325024, 42.048237, 40.588425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269341, 41.663700, 40.683460>,  <41.235931, 41.432980, 40.740482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269341, 41.663700, 40.683460>,  <41.325024, 42.048237, 40.588425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269341, 41.663700, 40.683460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059526, -0.231372, -0.971043,
		0.988472, -0.149321, -0.025015,
		-0.139209, -0.961338, 0.237593,
		41.227577, 41.375298, 40.754738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659489, 41.762634, 40.105488>,  <41.325024, 42.048237, 40.588425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659489, 41.762634, 40.105488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435383, 41.459118, 40.238361>,  <41.300919, 41.277008, 40.318085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435383, 41.459118, 40.238361>,  <41.659489, 41.762634, 40.105488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435383, 41.459118, 40.238361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063009, -0.360835, -0.930499,
		0.825917, -0.542252, 0.154351,
		-0.560261, -0.758789, 0.332187,
		41.267303, 41.231480, 40.338017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786320, 41.342331, 39.717266>,  <41.659489, 41.762634, 40.105488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786320, 41.342331, 39.717266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534912, 41.077862, 39.881130>,  <41.384068, 40.919182, 39.979450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534912, 41.077862, 39.881130>,  <41.786320, 41.342331, 39.717266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534912, 41.077862, 39.881130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092021, -0.459785, -0.883250,
		0.772333, -0.592835, 0.228141,
		-0.628517, -0.661169, 0.409660,
		41.346355, 40.879513, 40.004028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885265, 40.707027, 39.406113>,  <41.786320, 41.342331, 39.717266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885265, 40.707027, 39.406113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511902, 40.649628, 39.537666>,  <41.287884, 40.615189, 39.616600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511902, 40.649628, 39.537666>,  <41.885265, 40.707027, 39.406113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511902, 40.649628, 39.537666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247360, -0.406646, -0.879461,
		0.259940, -0.902246, 0.344069,
		-0.933404, -0.143498, 0.328883,
		41.231880, 40.606579, 39.636330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696289, 40.086983, 39.083107>,  <41.885265, 40.707027, 39.406113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696289, 40.086983, 39.083107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355904, 40.270226, 39.185871>,  <41.151672, 40.380169, 39.247532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355904, 40.270226, 39.185871>,  <41.696289, 40.086983, 39.083107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355904, 40.270226, 39.185871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340667, -0.109106, -0.933832,
		-0.399761, -0.882178, 0.248906,
		-0.850963, 0.458104, 0.256912,
		41.100616, 40.407658, 39.262943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113850, 39.630722, 38.929035>,  <41.696289, 40.086983, 39.083107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113850, 39.630722, 38.929035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002735, 40.014812, 38.917728>,  <40.936066, 40.245266, 38.910942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002735, 40.014812, 38.917728>,  <41.113850, 39.630722, 38.929035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002735, 40.014812, 38.917728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207874, -0.088816, -0.974115,
		-0.937881, -0.264722, 0.224278,
		-0.277789, 0.960226, -0.028270,
		40.919399, 40.302879, 38.909248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745613, 39.198494, 39.037193>,  <41.113850, 39.630722, 38.929035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745613, 39.198494, 39.037193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980194, 38.879414, 38.980980>,  <42.120941, 38.687965, 38.947250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980194, 38.879414, 38.980980>,  <41.745613, 39.198494, 39.037193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980194, 38.879414, 38.980980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551095, 0.520112, -0.652516,
		0.593607, 0.305219, 0.744629,
		0.586451, -0.797700, -0.140537,
		42.156128, 38.640102, 38.938820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454166, 39.470016, 39.037834>,  <41.745613, 39.198494, 39.037193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454166, 39.470016, 39.037834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458637, 39.128353, 38.829876>,  <42.461319, 38.923355, 38.705101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458637, 39.128353, 38.829876>,  <42.454166, 39.470016, 39.037834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458637, 39.128353, 38.829876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500573, 0.454869, -0.736560,
		0.865622, -0.252015, 0.432650,
		0.011175, -0.854156, -0.519897,
		42.461990, 38.872105, 38.673908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945206, 40.061630, 38.986942>,  <42.454166, 39.470016, 39.037834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945206, 40.061630, 38.986942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036392, 39.692818, 38.861786>,  <43.091103, 39.471531, 38.786694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036392, 39.692818, 38.861786>,  <42.945206, 40.061630, 38.986942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036392, 39.692818, 38.861786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962272, 0.262372, -0.072070,
		0.148543, -0.284653, 0.947052,
		0.227965, -0.922027, -0.312888,
		43.104782, 39.416210, 38.767921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517006, 39.858238, 39.276672>,  <42.945206, 40.061630, 38.986942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517006, 39.858238, 39.276672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518105, 39.637653, 38.942993>,  <43.518764, 39.505302, 38.742786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518105, 39.637653, 38.942993>,  <43.517006, 39.858238, 39.276672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518105, 39.637653, 38.942993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921440, 0.325490, -0.212141,
		0.388510, -0.768078, 0.509034,
		0.002744, -0.551464, -0.834194,
		43.518929, 39.472214, 38.692734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133606, 39.623253, 39.131592>,  <43.517006, 39.858238, 39.276672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133606, 39.623253, 39.131592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985802, 39.650536, 38.760902>,  <43.897118, 39.666904, 38.538490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985802, 39.650536, 38.760902>,  <44.133606, 39.623253, 39.131592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985802, 39.650536, 38.760902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840140, 0.450631, -0.301823,
		0.397021, -0.890101, -0.223818,
		-0.369512, 0.068208, -0.926719,
		43.874947, 39.670998, 38.482887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616302, 39.375443, 38.720993>,  <44.133606, 39.623253, 39.131592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616302, 39.375443, 38.720993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395058, 39.639137, 38.517239>,  <44.262310, 39.797352, 38.394985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395058, 39.639137, 38.517239>,  <44.616302, 39.375443, 38.720993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395058, 39.639137, 38.517239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832733, 0.455808, -0.314317,
		0.024974, -0.598038, -0.801079,
		-0.553111, 0.659235, -0.509389,
		44.229126, 39.836906, 38.364422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761410, 39.340294, 37.979023>,  <44.616302, 39.375443, 38.720993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761410, 39.340294, 37.979023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640274, 39.710094, 38.071617>,  <44.567593, 39.931976, 38.127174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640274, 39.710094, 38.071617>,  <44.761410, 39.340294, 37.979023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640274, 39.710094, 38.071617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868966, 0.367603, -0.331311,
		-0.391392, 0.100818, -0.914685,
		-0.302839, 0.924502, 0.231484,
		44.549423, 39.987446, 38.141064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925304, 38.677868, 38.421425>,  <44.761410, 39.340294, 37.979023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925304, 38.677868, 38.421425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750423, 38.769966, 38.073669>,  <44.645496, 38.825226, 37.865017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750423, 38.769966, 38.073669>,  <44.925304, 38.677868, 38.421425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750423, 38.769966, 38.073669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865221, -0.156143, -0.476458,
		-0.245453, -0.960523, -0.130948,
		-0.437203, 0.230247, -0.869391,
		44.619263, 38.839039, 37.812851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208817, 38.241543, 37.976994>,  <44.925304, 38.677868, 38.421425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208817, 38.241543, 37.976994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064835, 38.501152, 37.708900>,  <44.978447, 38.656918, 37.548046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064835, 38.501152, 37.708900>,  <45.208817, 38.241543, 37.976994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064835, 38.501152, 37.708900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847881, -0.072170, -0.525251,
		-0.389269, -0.757341, -0.524313,
		-0.359955, 0.649019, -0.670229,
		44.956848, 38.695858, 37.507832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135250, 38.004433, 37.287609>,  <45.208817, 38.241543, 37.976994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135250, 38.004433, 37.287609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238125, 38.390800, 37.275978>,  <45.299850, 38.622623, 37.269001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238125, 38.390800, 37.275978>,  <45.135250, 38.004433, 37.287609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238125, 38.390800, 37.275978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918881, -0.253756, -0.302102,
		-0.299186, 0.050981, -0.952832,
		0.257189, 0.965924, -0.029075,
		45.315281, 38.680576, 37.267254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269264, 38.175644, 36.618526>,  <45.135250, 38.004433, 37.287609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269264, 38.175644, 36.618526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506481, 38.338348, 36.896477>,  <45.648811, 38.435970, 37.063248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506481, 38.338348, 36.896477>,  <45.269264, 38.175644, 36.618526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506481, 38.338348, 36.896477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796607, -0.421945, -0.432874,
		0.117124, 0.810254, -0.574256,
		0.593043, 0.406757, 0.694874,
		45.684395, 38.460377, 37.104939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602970, 38.693836, 36.293232>,  <45.269264, 38.175644, 36.618526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602970, 38.693836, 36.293232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785675, 38.500553, 36.591995>,  <45.895298, 38.384583, 36.771255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785675, 38.500553, 36.591995>,  <45.602970, 38.693836, 36.293232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785675, 38.500553, 36.591995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752258, -0.238362, -0.614241,
		0.474839, 0.842436, 0.254618,
		0.456767, -0.483204, 0.746912,
		45.922707, 38.355591, 36.816071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.285713, 38.835682, 36.177841>,  <45.602970, 38.693836, 36.293232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.285713, 38.835682, 36.177841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284504, 38.497383, 36.391273>,  <46.283779, 38.294403, 36.519333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284504, 38.497383, 36.391273>,  <46.285713, 38.835682, 36.177841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284504, 38.497383, 36.391273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732080, -0.365356, -0.574956,
		0.681212, 0.388883, 0.620259,
		-0.003025, -0.845746, 0.533578,
		46.283596, 38.243660, 36.551346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.980618, 38.730278, 36.323498>,  <46.285713, 38.835682, 36.177841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.980618, 38.730278, 36.323498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.775093, 38.387226, 36.314838>,  <46.651779, 38.181396, 36.309643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.775093, 38.387226, 36.314838>,  <46.980618, 38.730278, 36.323498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.775093, 38.387226, 36.314838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698407, -0.403499, -0.591114,
		0.498224, -0.318838, 0.806297,
		-0.513810, -0.857631, -0.021646,
		46.620949, 38.129936, 36.308346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.323544, 38.070572, 36.616318>,  <46.980618, 38.730278, 36.323498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.323544, 38.070572, 36.616318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095501, 38.005280, 36.294243>,  <46.958675, 37.966106, 36.100998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095501, 38.005280, 36.294243>,  <47.323544, 38.070572, 36.616318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.095501, 38.005280, 36.294243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786500, -0.391720, -0.477466,
		-0.237473, -0.905490, 0.351703,
		-0.570109, -0.163229, -0.805190,
		46.924469, 37.956310, 36.052685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.109383, 37.357124, 36.444675>,  <47.323544, 38.070572, 36.616318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.109383, 37.357124, 36.444675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162830, 37.600056, 36.131420>,  <47.194897, 37.745815, 35.943466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162830, 37.600056, 36.131420>,  <47.109383, 37.357124, 36.444675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.162830, 37.600056, 36.131420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960850, -0.272930, -0.047720,
		-0.242723, -0.746099, -0.620017,
		0.133618, 0.607326, -0.783136,
		47.202915, 37.782253, 35.896481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992596, 36.855904, 35.816898>,  <47.109383, 37.357124, 36.444675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992596, 36.855904, 35.816898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.681023, 36.850826, 36.067692>,  <46.494080, 36.847778, 36.218166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.681023, 36.850826, 36.067692>,  <46.992596, 36.855904, 35.816898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681023, 36.850826, 36.067692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465410, -0.681803, 0.564393,
		0.420315, 0.731426, 0.536984,
		-0.778928, -0.012695, 0.626985,
		46.447346, 36.847019, 36.255787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.581329, 36.347515, 35.819950>,  <46.992596, 36.855904, 35.816898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.581329, 36.347515, 35.819950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774548, 36.005398, 35.744972>,  <47.890480, 35.800125, 35.699986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774548, 36.005398, 35.744972>,  <47.581329, 36.347515, 35.819950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.774548, 36.005398, 35.744972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783453, -0.326597, -0.528712,
		0.390985, 0.402249, -0.827845,
		0.483045, -0.855295, -0.187449,
		47.919460, 35.748810, 35.688736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.811523, 36.207108, 35.128593>,  <47.581329, 36.347515, 35.819950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.811523, 36.207108, 35.128593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682919, 35.888966, 35.334133>,  <47.605755, 35.698082, 35.457458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682919, 35.888966, 35.334133>,  <47.811523, 36.207108, 35.128593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682919, 35.888966, 35.334133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804931, -0.056244, -0.590697,
		0.498714, -0.603531, -0.622121,
		-0.321513, -0.795353, 0.513850,
		47.586464, 35.650360, 35.488289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.580189, 35.703922, 34.675842>,  <47.811523, 36.207108, 35.128593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.580189, 35.703922, 34.675842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379040, 35.677803, 35.020599>,  <47.258350, 35.662132, 35.227451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379040, 35.677803, 35.020599>,  <47.580189, 35.703922, 34.675842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.379040, 35.677803, 35.020599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860985, 0.125865, -0.492812,
		-0.076301, -0.989896, -0.119517,
		-0.502876, -0.065300, 0.861889,
		47.228176, 35.658215, 35.279167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054611, 35.034275, 34.564037>,  <47.580189, 35.703922, 34.675842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054611, 35.034275, 34.564037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.822243, 34.853195, 34.834621>,  <47.682823, 34.744549, 34.996971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.822243, 34.853195, 34.834621>,  <48.054611, 35.034275, 34.564037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.822243, 34.853195, 34.834621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563389, 0.376193, 0.735576,
		-0.587474, 0.808419, 0.036509,
		-0.580919, -0.452700, 0.676458,
		47.647968, 34.717384, 35.037560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.093002, 31.590338, 33.666191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.742367, 31.397881, 33.670193>,  <41.531986, 31.282406, 33.672592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.742367, 31.397881, 33.670193>,  <42.093002, 31.590338, 33.666191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742367, 31.397881, 33.670193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338442, 0.631108, 0.697968,
		-0.342135, 0.608443, -0.716059,
		-0.876585, -0.481143, 0.010001,
		41.479393, 31.253538, 33.673195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643585, 32.137680, 33.596878>,  <42.093002, 31.590338, 33.666191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643585, 32.137680, 33.596878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.409752, 31.843798, 33.734554>,  <41.269451, 31.667467, 33.817158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.409752, 31.843798, 33.734554>,  <41.643585, 32.137680, 33.596878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409752, 31.843798, 33.734554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408994, 0.633239, 0.657064,
		-0.700702, 0.243340, -0.670674,
		-0.584586, -0.734707, 0.344187,
		41.234375, 31.623386, 33.837811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004208, 32.421799, 33.693714>,  <41.643585, 32.137680, 33.596878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004208, 32.421799, 33.693714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.983727, 32.096291, 33.925285>,  <40.971439, 31.900986, 34.064228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.983727, 32.096291, 33.925285>,  <41.004208, 32.421799, 33.693714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983727, 32.096291, 33.925285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463268, 0.532900, 0.708097,
		-0.884738, -0.231942, -0.404279,
		-0.051202, -0.813769, 0.578928,
		40.968365, 31.852160, 34.098965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308018, 32.387886, 33.935707>,  <41.004208, 32.421799, 33.693714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308018, 32.387886, 33.935707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.495129, 32.143925, 34.191582>,  <40.607395, 31.997549, 34.345108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.495129, 32.143925, 34.191582>,  <40.308018, 32.387886, 33.935707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495129, 32.143925, 34.191582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419957, 0.483467, 0.768047,
		-0.777701, -0.627919, -0.029976,
		0.467780, -0.609899, 0.639691,
		40.635464, 31.960955, 34.383488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805000, 32.127502, 34.462029>,  <40.308018, 32.387886, 33.935707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805000, 32.127502, 34.462029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.150024, 32.065598, 34.654709>,  <40.357040, 32.028454, 34.770317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.150024, 32.065598, 34.654709>,  <39.805000, 32.127502, 34.462029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150024, 32.065598, 34.654709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393281, 0.393863, 0.830784,
		-0.318301, -0.906046, 0.278865,
		0.862563, -0.154767, 0.481697,
		40.408794, 32.019169, 34.799217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602749, 31.906330, 35.080055>,  <39.805000, 32.127502, 34.462029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602749, 31.906330, 35.080055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980045, 32.033245, 35.119297>,  <40.206425, 32.109394, 35.142841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980045, 32.033245, 35.119297>,  <39.602749, 31.906330, 35.080055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980045, 32.033245, 35.119297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228792, 0.406681, 0.884457,
		0.240726, -0.856703, 0.456191,
		0.943242, 0.317285, 0.098108,
		40.263020, 32.128429, 35.148731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688351, 32.032337, 35.856819>,  <39.602749, 31.906330, 35.080055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688351, 32.032337, 35.856819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.977863, 32.252571, 35.690449>,  <40.151573, 32.384712, 35.590626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.977863, 32.252571, 35.690449>,  <39.688351, 32.032337, 35.856819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977863, 32.252571, 35.690449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169379, 0.726086, 0.666415,
		0.668911, -0.411895, 0.618790,
		0.723788, 0.550582, -0.415920,
		40.195000, 32.417747, 35.565670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168228, 32.228806, 36.459427>,  <39.688351, 32.032337, 35.856819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168228, 32.228806, 36.459427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183903, 32.481304, 36.149590>,  <40.193310, 32.632801, 35.963688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183903, 32.481304, 36.149590>,  <40.168228, 32.228806, 36.459427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183903, 32.481304, 36.149590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444375, 0.705324, 0.552313,
		0.894984, 0.322565, 0.308150,
		0.039188, 0.631245, -0.774593,
		40.195660, 32.670677, 35.917213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361725, 32.873760, 36.689514>,  <40.168228, 32.228806, 36.459427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361725, 32.873760, 36.689514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.212849, 32.996033, 36.338963>,  <40.123524, 33.069397, 36.128632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.212849, 32.996033, 36.338963>,  <40.361725, 32.873760, 36.689514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212849, 32.996033, 36.338963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484498, 0.741375, 0.464353,
		0.791668, 0.597429, -0.127828,
		-0.372187, 0.305681, -0.876377,
		40.101192, 33.087738, 36.076050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381622, 33.600658, 36.728649>,  <40.361725, 32.873760, 36.689514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381622, 33.600658, 36.728649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.105968, 33.516602, 36.451252>,  <39.940575, 33.466167, 36.284813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.105968, 33.516602, 36.451252>,  <40.381622, 33.600658, 36.728649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105968, 33.516602, 36.451252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542546, 0.784029, 0.301568,
		0.480346, 0.584072, -0.654315,
		-0.689139, -0.210139, -0.693491,
		39.899227, 33.453560, 36.243206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349575, 34.151665, 36.209362>,  <40.381622, 33.600658, 36.728649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349575, 34.151665, 36.209362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.993053, 33.970459, 36.216839>,  <39.779140, 33.861736, 36.221325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.993053, 33.970459, 36.216839>,  <40.349575, 34.151665, 36.209362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993053, 33.970459, 36.216839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441903, 0.877192, 0.187766,
		-0.101459, 0.159096, -0.982036,
		-0.891307, -0.453015, 0.018694,
		39.725662, 33.834553, 36.222446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921917, 34.616379, 35.793049>,  <40.349575, 34.151665, 36.209362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921917, 34.616379, 35.793049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.691002, 34.398800, 36.036640>,  <39.552452, 34.268253, 36.182796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.691002, 34.398800, 36.036640>,  <39.921917, 34.616379, 35.793049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691002, 34.398800, 36.036640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500390, 0.825025, 0.262573,
		-0.645248, -0.153145, -0.748466,
		-0.577291, -0.543949, 0.608977,
		39.517815, 34.235615, 36.219334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211075, 34.781193, 35.636353>,  <39.921917, 34.616379, 35.793049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211075, 34.781193, 35.636353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.176174, 34.641758, 36.009636>,  <39.155235, 34.558098, 36.233604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.176174, 34.641758, 36.009636>,  <39.211075, 34.781193, 35.636353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176174, 34.641758, 36.009636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566983, 0.787626, 0.241196,
		-0.819095, -0.508067, -0.266365,
		-0.087252, -0.348587, 0.933206,
		39.149998, 34.537182, 36.289597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357910, 34.916439, 35.888565>,  <39.211075, 34.781193, 35.636353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357910, 34.916439, 35.888565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570576, 34.847343, 36.220226>,  <38.698174, 34.805885, 36.419224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570576, 34.847343, 36.220226>,  <38.357910, 34.916439, 35.888565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570576, 34.847343, 36.220226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666290, 0.519075, 0.535368,
		-0.522871, -0.837092, 0.160879,
		0.531661, -0.172736, 0.829156,
		38.730076, 34.795521, 36.468971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840317, 34.634373, 36.454441>,  <38.357910, 34.916439, 35.888565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840317, 34.634373, 36.454441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169930, 34.779095, 36.628826>,  <38.367699, 34.865929, 36.733459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169930, 34.779095, 36.628826>,  <37.840317, 34.634373, 36.454441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169930, 34.779095, 36.628826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562516, 0.430907, 0.705616,
		0.067436, -0.826689, 0.558604,
		0.824031, 0.361808, 0.435967,
		38.417137, 34.887638, 36.759617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656170, 34.621799, 37.119392>,  <37.840317, 34.634373, 36.454441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656170, 34.621799, 37.119392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957859, 34.884445, 37.120251>,  <38.138874, 35.042034, 37.120766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957859, 34.884445, 37.120251>,  <37.656170, 34.621799, 37.119392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957859, 34.884445, 37.120251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443444, 0.506951, 0.739160,
		0.484255, -0.558444, 0.673526,
		0.754224, 0.656613, 0.002145,
		38.184128, 35.081429, 37.120895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673073, 34.930573, 37.855343>,  <37.656170, 34.621799, 37.119392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673073, 34.930573, 37.855343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891281, 35.188194, 37.640831>,  <38.022205, 35.342766, 37.512123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891281, 35.188194, 37.640831>,  <37.673073, 34.930573, 37.855343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891281, 35.188194, 37.640831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446963, 0.764864, 0.463904,
		0.708963, -0.013371, 0.705118,
		0.545523, 0.644052, -0.536285,
		38.054939, 35.381409, 37.479946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725758, 35.406429, 38.244022>,  <37.673073, 34.930573, 37.855343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725758, 35.406429, 38.244022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846809, 35.624546, 37.931339>,  <37.919441, 35.755417, 37.743729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846809, 35.624546, 37.931339>,  <37.725758, 35.406429, 38.244022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846809, 35.624546, 37.931339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351884, 0.826150, 0.440062,
		0.885772, 0.141895, 0.441898,
		0.302631, 0.545291, -0.781711,
		37.937599, 35.788132, 37.696827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099377, 35.943008, 38.513554>,  <37.725758, 35.406429, 38.244022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099377, 35.943008, 38.513554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992935, 36.063156, 38.147175>,  <37.929070, 36.135242, 37.927345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992935, 36.063156, 38.147175>,  <38.099377, 35.943008, 38.513554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992935, 36.063156, 38.147175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368636, 0.846274, 0.384614,
		0.890671, 0.440001, -0.114475,
		-0.266108, 0.300365, -0.915951,
		37.913101, 36.153267, 37.872391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278923, 36.646595, 38.581814>,  <38.099377, 35.943008, 38.513554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278923, 36.646595, 38.581814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053490, 36.618488, 38.252590>,  <37.918228, 36.601624, 38.055054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053490, 36.618488, 38.252590>,  <38.278923, 36.646595, 38.581814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053490, 36.618488, 38.252590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455732, 0.857470, 0.238858,
		0.688968, 0.509714, -0.515280,
		-0.563587, -0.070264, -0.823063,
		37.884415, 36.597408, 38.005672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395058, 37.278641, 38.241634>,  <38.278923, 36.646595, 38.581814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395058, 37.278641, 38.241634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041641, 37.121094, 38.140263>,  <37.829594, 37.026566, 38.079441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041641, 37.121094, 38.140263>,  <38.395058, 37.278641, 38.241634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041641, 37.121094, 38.140263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460035, 0.831370, 0.311755,
		0.087899, 0.392032, -0.915743,
		-0.883539, -0.393871, -0.253425,
		37.776581, 37.002934, 38.064236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104568, 37.731133, 37.849678>,  <38.395058, 37.278641, 38.241634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104568, 37.731133, 37.849678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812481, 37.522068, 38.025684>,  <37.637230, 37.396629, 38.131287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812481, 37.522068, 38.025684>,  <38.104568, 37.731133, 37.849678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812481, 37.522068, 38.025684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468792, 0.851800, 0.233819,
		-0.497012, -0.035537, -0.867016,
		-0.730214, -0.522661, 0.440014,
		37.593418, 37.365269, 38.157688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319443, 38.520775, 37.812077>,  <38.104568, 37.731133, 37.849678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319443, 38.520775, 37.812077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682072, 38.561462, 37.975922>,  <38.899651, 38.585876, 38.074230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682072, 38.561462, 37.975922>,  <38.319443, 38.520775, 37.812077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682072, 38.561462, 37.975922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370355, -0.657151, -0.656498,
		0.202399, 0.746864, -0.633426,
		0.906571, 0.101718, 0.409612,
		38.954044, 38.591976, 38.098804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849331, 38.707047, 37.293507>,  <38.319443, 38.520775, 37.812077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849331, 38.707047, 37.293507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.035778, 38.509415, 37.587067>,  <39.147648, 38.390835, 37.763203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.035778, 38.509415, 37.587067>,  <38.849331, 38.707047, 37.293507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035778, 38.509415, 37.587067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403298, -0.619669, -0.673321,
		0.787454, 0.609830, -0.089577,
		0.466119, -0.494083, 0.733904,
		39.175613, 38.361191, 37.807240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449249, 38.586586, 37.035011>,  <38.849331, 38.707047, 37.293507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449249, 38.586586, 37.035011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.461323, 38.332119, 37.343395>,  <39.468567, 38.179440, 37.528427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.461323, 38.332119, 37.343395>,  <39.449249, 38.586586, 37.035011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461323, 38.332119, 37.343395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643689, -0.577711, -0.501910,
		0.764691, 0.511408, 0.392057,
		0.030185, -0.636169, 0.770959,
		39.470379, 38.141270, 37.574684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112942, 38.517406, 37.245853>,  <39.449249, 38.586586, 37.035011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112942, 38.517406, 37.245853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.937862, 38.182755, 37.377594>,  <39.832813, 37.981964, 37.456638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.937862, 38.182755, 37.377594>,  <40.112942, 38.517406, 37.245853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937862, 38.182755, 37.377594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827753, -0.517973, -0.215707,
		0.351063, 0.178209, 0.919237,
		-0.437699, -0.836627, 0.329354,
		39.806553, 37.931767, 37.476398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594673, 38.134468, 37.609367>,  <40.112942, 38.517406, 37.245853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594673, 38.134468, 37.609367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.330894, 37.845493, 37.526218>,  <40.172626, 37.672108, 37.476330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.330894, 37.845493, 37.526218>,  <40.594673, 38.134468, 37.609367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330894, 37.845493, 37.526218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751281, -0.643111, -0.148277,
		-0.026564, -0.253952, 0.966852,
		-0.659448, -0.722438, -0.207873,
		40.133060, 37.628761, 37.463856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720997, 37.552673, 38.028439>,  <40.594673, 38.134468, 37.609367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720997, 37.552673, 38.028439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.510300, 37.411686, 37.719040>,  <40.383881, 37.327095, 37.533401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.510300, 37.411686, 37.719040>,  <40.720997, 37.552673, 38.028439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510300, 37.411686, 37.719040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726493, -0.659104, -0.194394,
		-0.441299, -0.664339, 0.603249,
		-0.526747, -0.352470, -0.773500,
		40.352276, 37.305946, 37.486988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901814, 36.859600, 38.018425>,  <40.720997, 37.552673, 38.028439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901814, 36.859600, 38.018425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.716961, 36.916054, 37.668221>,  <40.606049, 36.949924, 37.458099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.716961, 36.916054, 37.668221>,  <40.901814, 36.859600, 38.018425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716961, 36.916054, 37.668221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534158, -0.743770, -0.401849,
		-0.707891, -0.653367, 0.268333,
		-0.462132, 0.141133, -0.875508,
		40.578320, 36.958393, 37.405567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678566, 36.193562, 37.812393>,  <40.901814, 36.859600, 38.018425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678566, 36.193562, 37.812393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.677357, 36.408657, 37.475151>,  <40.676632, 36.537716, 37.272804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.677357, 36.408657, 37.475151>,  <40.678566, 36.193562, 37.812393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677357, 36.408657, 37.475151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167267, -0.830959, -0.530593,
		-0.985907, -0.142628, -0.087434,
		-0.003024, 0.537741, -0.843105,
		40.676449, 36.569981, 37.222221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313946, 35.822556, 37.384895>,  <40.678566, 36.193562, 37.812393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313946, 35.822556, 37.384895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.533287, 36.045414, 37.135452>,  <40.664894, 36.179131, 36.985786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.533287, 36.045414, 37.135452>,  <40.313946, 35.822556, 37.384895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533287, 36.045414, 37.135452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407878, -0.829204, -0.382173,
		-0.730029, -0.044791, -0.681947,
		0.548355, 0.557149, -0.623612,
		40.697792, 36.212559, 36.948368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120739, 35.629555, 36.715588>,  <40.313946, 35.822556, 37.384895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120739, 35.629555, 36.715588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.482853, 35.798019, 36.693401>,  <40.700123, 35.899097, 36.680092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.482853, 35.798019, 36.693401>,  <40.120739, 35.629555, 36.715588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482853, 35.798019, 36.693401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323834, -0.768714, -0.551553,
		-0.274929, 0.481353, -0.832294,
		0.905287, 0.421163, -0.055463,
		40.754440, 35.924370, 36.676762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295006, 35.496887, 36.060207>,  <40.120739, 35.629555, 36.715588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295006, 35.496887, 36.060207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.648239, 35.601131, 36.216282>,  <40.860180, 35.663677, 36.309929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.648239, 35.601131, 36.216282>,  <40.295006, 35.496887, 36.060207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648239, 35.601131, 36.216282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461536, -0.632295, -0.622244,
		0.084552, 0.729579, -0.678650,
		0.883083, 0.260609, 0.390189,
		40.913162, 35.679314, 36.333340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795200, 35.604679, 35.433254>,  <40.295006, 35.496887, 36.060207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795200, 35.604679, 35.433254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.000206, 35.514942, 35.764797>,  <41.123207, 35.461102, 35.963722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.000206, 35.514942, 35.764797>,  <40.795200, 35.604679, 35.433254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000206, 35.514942, 35.764797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613532, -0.579658, -0.536260,
		0.600758, 0.783370, -0.159441,
		0.512511, -0.224341, 0.828857,
		41.153961, 35.447639, 36.013454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582554, 35.726486, 35.240074>,  <40.795200, 35.604679, 35.433254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582554, 35.726486, 35.240074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.538849, 35.493160, 35.562019>,  <41.512627, 35.353165, 35.755188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.538849, 35.493160, 35.562019>,  <41.582554, 35.726486, 35.240074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538849, 35.493160, 35.562019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854271, -0.469090, -0.223999,
		0.508215, 0.663096, 0.549564,
		-0.109262, -0.583317, 0.804862,
		41.506069, 35.318165, 35.803478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241146, 35.678436, 35.545189>,  <41.582554, 35.726486, 35.240074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241146, 35.678436, 35.545189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.056126, 35.345547, 35.667461>,  <41.945114, 35.145813, 35.740826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.056126, 35.345547, 35.667461>,  <42.241146, 35.678436, 35.545189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056126, 35.345547, 35.667461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801319, -0.539968, -0.257531,
		0.379383, 0.125826, 0.916644,
		-0.462554, -0.832227, 0.305681,
		41.917358, 35.095879, 35.759167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755898, 35.217754, 35.613808>,  <42.241146, 35.678436, 35.545189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755898, 35.217754, 35.613808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.443321, 34.968201, 35.609459>,  <42.255775, 34.818470, 35.606850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.443321, 34.968201, 35.609459>,  <42.755898, 35.217754, 35.613808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443321, 34.968201, 35.609459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554588, -0.686449, -0.470341,
		0.285977, -0.373571, 0.882418,
		-0.781440, -0.623886, -0.010869,
		42.208889, 34.781036, 35.606197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070621, 34.658184, 35.865547>,  <42.755898, 35.217754, 35.613808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070621, 34.658184, 35.865547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.718430, 34.526638, 35.728962>,  <42.507114, 34.447712, 35.647011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.718430, 34.526638, 35.728962>,  <43.070621, 34.658184, 35.865547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718430, 34.526638, 35.728962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467768, -0.719769, -0.512957,
		-0.077085, -0.611377, 0.787576,
		-0.880483, -0.328861, -0.341466,
		42.454285, 34.427979, 35.626522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150326, 33.891571, 35.911030>,  <43.070621, 34.658184, 35.865547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150326, 33.891571, 35.911030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.867744, 34.002350, 35.650501>,  <42.698196, 34.068817, 35.494183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.867744, 34.002350, 35.650501>,  <43.150326, 33.891571, 35.911030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867744, 34.002350, 35.650501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211663, -0.795472, -0.567824,
		-0.675368, -0.539002, 0.503343,
		-0.706453, 0.276951, -0.651323,
		42.655807, 34.085434, 35.455105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728241, 33.222458, 35.745178>,  <43.150326, 33.891571, 35.911030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728241, 33.222458, 35.745178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.683395, 33.496815, 35.457573>,  <42.656490, 33.661430, 35.285011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.683395, 33.496815, 35.457573>,  <42.728241, 33.222458, 35.745178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683395, 33.496815, 35.457573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197536, -0.693751, -0.692596,
		-0.973864, -0.219679, -0.057711,
		-0.112112, 0.685894, -0.719013,
		42.649761, 33.702583, 35.241867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.317551, 32.919392, 35.151318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.501450, 33.218422, 34.959583>,  <42.611790, 33.397839, 34.844543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.501450, 33.218422, 34.959583>,  <42.317551, 32.919392, 35.151318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501450, 33.218422, 34.959583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278378, -0.633884, -0.721593,
		-0.843288, 0.198315, -0.499536,
		0.459750, 0.747571, -0.479340,
		42.639374, 33.442692, 34.815781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120770, 32.777149, 34.484467>,  <42.317551, 32.919392, 35.151318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120770, 32.777149, 34.484467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.437271, 33.021053, 34.466122>,  <42.627174, 33.167397, 34.455116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.437271, 33.021053, 34.466122>,  <42.120770, 32.777149, 34.484467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437271, 33.021053, 34.466122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411048, -0.585921, -0.698381,
		-0.452715, 0.533749, -0.714256,
		0.791258, 0.609761, -0.045859,
		42.674648, 33.203983, 34.452362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219673, 32.853394, 33.815525>,  <42.120770, 32.777149, 34.484467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219673, 32.853394, 33.815525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.563393, 32.938416, 34.001610>,  <42.769623, 32.989429, 34.113262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.563393, 32.938416, 34.001610>,  <42.219673, 32.853394, 33.815525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563393, 32.938416, 34.001610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475823, -0.665854, -0.574657,
		0.187618, 0.715162, -0.673307,
		0.859297, 0.212560, 0.465217,
		42.821182, 33.002182, 34.141174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643425, 32.960922, 33.323986>,  <42.219673, 32.853394, 33.815525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643425, 32.960922, 33.323986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.855331, 32.856976, 33.646927>,  <42.982475, 32.794605, 33.840691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.855331, 32.856976, 33.646927>,  <42.643425, 32.960922, 33.323986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855331, 32.856976, 33.646927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468124, -0.704188, -0.533834,
		0.707257, 0.660746, -0.251400,
		0.529762, -0.259871, 0.807353,
		43.014259, 32.779015, 33.889133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233566, 32.825718, 33.013916>,  <42.643425, 32.960922, 33.323986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233566, 32.825718, 33.013916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.351280, 32.670254, 33.363163>,  <43.421909, 32.576973, 33.572712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.351280, 32.670254, 33.363163>,  <43.233566, 32.825718, 33.013916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351280, 32.670254, 33.363163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589312, -0.645431, -0.485933,
		0.752403, 0.657542, 0.039105,
		0.294281, -0.388663, 0.873121,
		43.439564, 32.553654, 33.625099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978519, 32.993324, 33.113750>,  <43.233566, 32.825718, 33.013916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978519, 32.993324, 33.113750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.876671, 32.665699, 33.319389>,  <43.815563, 32.469124, 33.442772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.876671, 32.665699, 33.319389>,  <43.978519, 32.993324, 33.113750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876671, 32.665699, 33.319389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671061, -0.532442, -0.515929,
		0.696309, 0.213627, 0.685214,
		-0.254621, -0.819066, 0.514101,
		43.800285, 32.419979, 33.473621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570877, 32.651157, 33.119068>,  <43.978519, 32.993324, 33.113750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570877, 32.651157, 33.119068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.312988, 32.364494, 33.225460>,  <44.158257, 32.192497, 33.289295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.312988, 32.364494, 33.225460>,  <44.570877, 32.651157, 33.119068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312988, 32.364494, 33.225460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555336, -0.678216, -0.481275,
		0.525301, -0.162576, 0.835241,
		-0.644718, -0.716653, 0.265983,
		44.119572, 32.149498, 33.305256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041965, 32.098289, 33.267632>,  <44.570877, 32.651157, 33.119068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041965, 32.098289, 33.267632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.682415, 31.932552, 33.210567>,  <44.466686, 31.833111, 33.176331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.682415, 31.932552, 33.210567>,  <45.041965, 32.098289, 33.267632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682415, 31.932552, 33.210567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418115, -0.713479, -0.562253,
		0.131182, -0.565040, 0.814568,
		-0.898872, -0.414341, -0.142656,
		44.412754, 31.808250, 33.167770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240276, 31.428671, 33.374680>,  <45.041965, 32.098289, 33.267632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240276, 31.428671, 33.374680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.882278, 31.448587, 33.197365>,  <44.667480, 31.460537, 33.090977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.882278, 31.448587, 33.197365>,  <45.240276, 31.428671, 33.374680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882278, 31.448587, 33.197365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272564, -0.725623, -0.631808,
		-0.353118, -0.686289, 0.635858,
		-0.894995, 0.049791, -0.443288,
		44.613781, 31.463526, 33.064377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056343, 30.685087, 33.221092>,  <45.240276, 31.428671, 33.374680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056343, 30.685087, 33.221092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.855167, 30.927622, 32.974705>,  <44.734463, 31.073143, 32.826874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.855167, 30.927622, 32.974705>,  <45.056343, 30.685087, 33.221092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855167, 30.927622, 32.974705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065299, -0.683964, -0.726588,
		-0.861854, -0.405648, 0.304396,
		-0.502934, 0.606336, -0.615965,
		44.704288, 31.109522, 32.789917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652138, 30.235809, 32.728226>,  <45.056343, 30.685087, 33.221092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652138, 30.235809, 32.728226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.672821, 30.595276, 32.553993>,  <44.685230, 30.810955, 32.449455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.672821, 30.595276, 32.553993>,  <44.652138, 30.235809, 32.728226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672821, 30.595276, 32.553993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103881, -0.438635, -0.892641,
		-0.993245, 0.000904, -0.116033,
		0.051704, 0.898665, -0.435579,
		44.688332, 30.864876, 32.423321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368347, 30.166567, 32.087959>,  <44.652138, 30.235809, 32.728226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368347, 30.166567, 32.087959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.576813, 30.504881, 32.042282>,  <44.701893, 30.707869, 32.014877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.576813, 30.504881, 32.042282>,  <44.368347, 30.166567, 32.087959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576813, 30.504881, 32.042282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323866, -0.319783, -0.890421,
		-0.789620, 0.427072, -0.440579,
		0.521164, 0.845783, -0.114193,
		44.733162, 30.758615, 32.008026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210457, 30.490433, 31.469618>,  <44.368347, 30.166567, 32.087959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210457, 30.490433, 31.469618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.579720, 30.602234, 31.575197>,  <44.801277, 30.669315, 31.638544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.579720, 30.602234, 31.575197>,  <44.210457, 30.490433, 31.469618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579720, 30.602234, 31.575197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347334, -0.312131, -0.884270,
		-0.164771, 0.907993, -0.385226,
		0.923152, 0.279504, 0.263947,
		44.856667, 30.686085, 31.654381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480579, 30.849106, 30.867205>,  <44.210457, 30.490433, 31.469618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480579, 30.849106, 30.867205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.817322, 30.776136, 31.070381>,  <45.019367, 30.732355, 31.192287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.817322, 30.776136, 31.070381>,  <44.480579, 30.849106, 30.867205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817322, 30.776136, 31.070381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506987, -0.055408, -0.860171,
		0.185061, 0.981657, 0.045841,
		0.841853, -0.182425, 0.507941,
		45.069878, 30.721409, 31.222763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940937, 31.231916, 30.601442>,  <44.480579, 30.849106, 30.867205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940937, 31.231916, 30.601442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.174274, 30.962862, 30.783552>,  <45.314278, 30.801430, 30.892818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.174274, 30.962862, 30.783552>,  <44.940937, 31.231916, 30.601442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174274, 30.962862, 30.783552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533441, -0.105418, -0.839242,
		0.612498, 0.732427, 0.297316,
		0.583341, -0.672635, 0.455275,
		45.349277, 30.761072, 30.920135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533325, 31.490337, 30.369295>,  <44.940937, 31.231916, 30.601442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533325, 31.490337, 30.369295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.605152, 31.111990, 30.477436>,  <45.648247, 30.884981, 30.542320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.605152, 31.111990, 30.477436>,  <45.533325, 31.490337, 30.369295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605152, 31.111990, 30.477436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603777, -0.111003, -0.789386,
		0.776664, 0.304983, 0.551160,
		0.179569, -0.945867, 0.270354,
		45.659023, 30.828230, 30.558542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232121, 31.469707, 30.269983>,  <45.533325, 31.490337, 30.369295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232121, 31.469707, 30.269983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.115990, 31.086941, 30.268213>,  <46.046310, 30.857281, 30.267151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.115990, 31.086941, 30.268213>,  <46.232121, 31.469707, 30.269983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115990, 31.086941, 30.268213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566267, -0.168074, -0.806903,
		0.771395, -0.236775, 0.590667,
		-0.290330, -0.956917, -0.004426,
		46.028893, 30.799866, 30.266886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819088, 31.151171, 30.190292>,  <46.232121, 31.469707, 30.269983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819088, 31.151171, 30.190292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.545250, 30.889143, 30.062407>,  <46.380947, 30.731926, 29.985676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.545250, 30.889143, 30.062407>,  <46.819088, 31.151171, 30.190292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.545250, 30.889143, 30.062407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480117, -0.075204, -0.873974,
		0.548470, -0.751817, 0.365994,
		-0.684593, -0.655069, -0.319713,
		46.339870, 30.692621, 29.966492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179314, 30.646492, 29.878574>,  <46.819088, 31.151171, 30.190292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179314, 30.646492, 29.878574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.812042, 30.574535, 29.737385>,  <46.591679, 30.531363, 29.652672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.812042, 30.574535, 29.737385>,  <47.179314, 30.646492, 29.878574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.812042, 30.574535, 29.737385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370879, -0.077080, -0.925477,
		0.139278, -0.980662, 0.137491,
		-0.918177, -0.179891, -0.352971,
		46.536591, 30.520569, 29.631493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.267006, 30.121706, 29.284132>,  <47.179314, 30.646492, 29.878574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.267006, 30.121706, 29.284132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.906487, 30.286388, 29.230223>,  <46.690174, 30.385197, 29.197876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.906487, 30.286388, 29.230223>,  <47.267006, 30.121706, 29.284132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.906487, 30.286388, 29.230223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140059, -0.017467, -0.989989,
		-0.409937, -0.911150, -0.041920,
		-0.901296, 0.411704, -0.134775,
		46.636097, 30.409899, 29.189791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.004223, 29.770430, 28.689476>,  <47.267006, 30.121706, 29.284132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.004223, 29.770430, 28.689476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.821136, 30.124756, 28.720020>,  <46.711285, 30.337351, 28.738348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.821136, 30.124756, 28.720020>,  <47.004223, 29.770430, 28.689476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.821136, 30.124756, 28.720020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190878, 0.181786, -0.964634,
		-0.868368, -0.426951, -0.252288,
		-0.457714, 0.885814, 0.076362,
		46.683823, 30.390501, 28.742929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502842, 29.875832, 28.089540>,  <47.004223, 29.770430, 28.689476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502842, 29.875832, 28.089540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.666763, 30.229372, 28.179752>,  <46.765118, 30.441496, 28.233879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.666763, 30.229372, 28.179752>,  <46.502842, 29.875832, 28.089540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.666763, 30.229372, 28.179752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211972, 0.148199, -0.965974,
		-0.887201, 0.443668, -0.126619,
		0.409807, 0.883853, 0.225527,
		46.789707, 30.494528, 28.247410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.665047, 29.118099, 28.063690>,  <46.502842, 29.875832, 28.089540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.665047, 29.118099, 28.063690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.924232, 29.318174, 27.833923>,  <47.079742, 29.438219, 27.696062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.924232, 29.318174, 27.833923>,  <46.665047, 29.118099, 28.063690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.924232, 29.318174, 27.833923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213202, -0.843115, -0.493661,
		-0.731224, 0.197407, -0.652948,
		0.647963, 0.500187, -0.574419,
		47.118622, 29.468231, 27.661598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.522583, 29.229687, 27.351789>,  <46.665047, 29.118099, 28.063690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.522583, 29.229687, 27.351789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.907841, 29.163473, 27.436602>,  <47.138996, 29.123745, 27.487490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.907841, 29.163473, 27.436602>,  <46.522583, 29.229687, 27.351789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.907841, 29.163473, 27.436602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103547, -0.955644, -0.275722,
		0.248269, 0.243603, -0.937561,
		0.963141, -0.165535, 0.212033,
		47.196781, 29.113813, 27.500212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908676, 28.822973, 27.350819>,  <46.522583, 29.229687, 27.351789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908676, 28.822973, 27.350819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.650322, 28.517851, 27.338409>,  <45.495312, 28.334778, 27.330965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.650322, 28.517851, 27.338409>,  <45.908676, 28.822973, 27.350819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650322, 28.517851, 27.338409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664486, 0.541698, 0.514802,
		-0.375889, 0.353116, -0.856748,
		-0.645884, -0.762805, -0.031022,
		45.456558, 28.289009, 27.329103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208031, 29.103111, 27.110613>,  <45.908676, 28.822973, 27.350819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208031, 29.103111, 27.110613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.189667, 28.759750, 27.314980>,  <45.178646, 28.553734, 27.437599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.189667, 28.759750, 27.314980>,  <45.208031, 29.103111, 27.110613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189667, 28.759750, 27.314980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754671, 0.364904, 0.545267,
		-0.654495, -0.360540, -0.664566,
		-0.045912, -0.858403, 0.510917,
		45.175892, 28.502230, 27.468254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567112, 29.056688, 27.221897>,  <45.208031, 29.103111, 27.110613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567112, 29.056688, 27.221897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.709335, 28.806444, 27.499659>,  <44.794670, 28.656298, 27.666315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.709335, 28.806444, 27.499659>,  <44.567112, 29.056688, 27.221897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.709335, 28.806444, 27.499659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757316, 0.242585, 0.606320,
		-0.547771, -0.741462, -0.387532,
		0.355554, -0.625609, 0.694402,
		44.816002, 28.618761, 27.707979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997738, 28.768675, 27.578583>,  <44.567112, 29.056688, 27.221897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997738, 28.768675, 27.578583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.284370, 28.680021, 27.843122>,  <44.456352, 28.626829, 28.001846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.284370, 28.680021, 27.843122>,  <43.997738, 28.768675, 27.578583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284370, 28.680021, 27.843122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657390, 0.102297, 0.746574,
		-0.233122, -0.969749, -0.072397,
		0.716583, -0.221636, 0.661351,
		44.499344, 28.613531, 28.041529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613277, 28.384830, 28.075958>,  <43.997738, 28.768675, 27.578583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613277, 28.384830, 28.075958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.936607, 28.521919, 28.267437>,  <44.130608, 28.604172, 28.382324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.936607, 28.521919, 28.267437>,  <43.613277, 28.384830, 28.075958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936607, 28.521919, 28.267437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570120, 0.252838, 0.781688,
		0.146867, -0.904774, 0.399768,
		0.808327, 0.342720, 0.478696,
		44.179104, 28.624735, 28.411045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460899, 28.296125, 28.781952>,  <43.613277, 28.384830, 28.075958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460899, 28.296125, 28.781952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.763424, 28.557247, 28.799114>,  <43.944939, 28.713921, 28.809412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.763424, 28.557247, 28.799114>,  <43.460899, 28.296125, 28.781952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763424, 28.557247, 28.799114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345497, 0.342865, 0.873542,
		0.555541, -0.675493, 0.484854,
		0.756311, 0.652804, 0.042905,
		43.990318, 28.753088, 28.811985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799702, 28.211813, 29.515841>,  <43.460899, 28.296125, 28.781952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799702, 28.211813, 29.515841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.854542, 28.578243, 29.365107>,  <43.887447, 28.798101, 29.274666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.854542, 28.578243, 29.365107>,  <43.799702, 28.211813, 29.515841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854542, 28.578243, 29.365107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336662, 0.400878, 0.852031,
		0.931591, 0.010050, 0.363370,
		0.137105, 0.916077, -0.376837,
		43.895672, 28.853065, 29.252056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177422, 28.476484, 29.970205>,  <43.799702, 28.211813, 29.515841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177422, 28.476484, 29.970205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.025356, 28.798155, 29.787436>,  <43.934116, 28.991158, 29.677774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.025356, 28.798155, 29.787436>,  <44.177422, 28.476484, 29.970205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025356, 28.798155, 29.787436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056628, 0.472850, 0.879322,
		0.923183, 0.360163, -0.134222,
		-0.380166, 0.804174, -0.456922,
		43.911308, 29.039408, 29.650358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334167, 29.036238, 30.383757>,  <44.177422, 28.476484, 29.970205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334167, 29.036238, 30.383757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.076862, 29.231194, 30.147566>,  <43.922478, 29.348167, 30.005852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.076862, 29.231194, 30.147566>,  <44.334167, 29.036238, 30.383757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076862, 29.231194, 30.147566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178883, 0.654198, 0.734865,
		0.744454, 0.578338, -0.333636,
		-0.643264, 0.487391, -0.590475,
		43.883884, 29.377411, 29.970423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335136, 29.746620, 30.465506>,  <44.334167, 29.036238, 30.383757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335136, 29.746620, 30.465506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.969955, 29.703289, 30.308136>,  <43.750847, 29.677290, 30.213715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.969955, 29.703289, 30.308136>,  <44.335136, 29.746620, 30.465506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969955, 29.703289, 30.308136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384462, 0.551481, 0.740309,
		0.136771, 0.827124, -0.545123,
		-0.912953, -0.108326, -0.393425,
		43.696068, 29.670792, 30.190109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970875, 30.410608, 30.559341>,  <44.335136, 29.746620, 30.465506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970875, 30.410608, 30.559341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.682644, 30.144417, 30.481461>,  <43.509705, 29.984703, 30.434732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.682644, 30.144417, 30.481461>,  <43.970875, 30.410608, 30.559341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682644, 30.144417, 30.481461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611649, 0.477810, 0.630542,
		-0.326580, 0.573444, -0.751337,
		-0.720577, -0.665477, -0.194703,
		43.466473, 29.944775, 30.423050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302998, 30.749743, 30.506092>,  <43.970875, 30.410608, 30.559341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302998, 30.749743, 30.506092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.194992, 30.370098, 30.570934>,  <43.130188, 30.142311, 30.609840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.194992, 30.370098, 30.570934>,  <43.302998, 30.749743, 30.506092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194992, 30.370098, 30.570934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732140, 0.311732, 0.605636,
		-0.625349, 0.044849, -0.779056,
		-0.270019, -0.949111, 0.162105,
		43.113987, 30.085365, 30.619566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545948, 30.807922, 30.579138>,  <43.302998, 30.749743, 30.506092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545948, 30.807922, 30.579138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.646355, 30.474926, 30.776703>,  <42.706596, 30.275127, 30.895243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.646355, 30.474926, 30.776703>,  <42.545948, 30.807922, 30.579138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646355, 30.474926, 30.776703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594437, 0.270133, 0.757412,
		-0.763962, -0.483720, -0.427057,
		0.251013, -0.832493, 0.493912,
		42.721657, 30.225178, 30.924877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932407, 30.632149, 30.977226>,  <42.545948, 30.807922, 30.579138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932407, 30.632149, 30.977226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.225990, 30.437117, 31.166361>,  <42.402142, 30.320097, 31.279842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.225990, 30.437117, 31.166361>,  <41.932407, 30.632149, 30.977226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225990, 30.437117, 31.166361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514576, 0.055199, 0.855666,
		-0.443306, -0.871331, -0.210384,
		0.733956, -0.487581, 0.472836,
		42.446178, 30.290842, 31.308212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580765, 30.111877, 31.395573>,  <41.932407, 30.632149, 30.977226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580765, 30.111877, 31.395573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944286, 30.190504, 31.542784>,  <42.162399, 30.237680, 31.631109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944286, 30.190504, 31.542784>,  <41.580765, 30.111877, 31.395573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944286, 30.190504, 31.542784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399558, 0.156025, 0.903332,
		0.120137, -0.967998, 0.220333,
		0.908802, 0.196560, 0.368027,
		42.216927, 30.249474, 31.653193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503006, 29.730728, 31.978500>,  <41.580765, 30.111877, 31.395573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503006, 29.730728, 31.978500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.838261, 29.930452, 32.066334>,  <42.039413, 30.050287, 32.119034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.838261, 29.930452, 32.066334>,  <41.503006, 29.730728, 31.978500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838261, 29.930452, 32.066334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341917, 0.167268, 0.924724,
		0.424997, -0.850123, 0.310917,
		0.838135, 0.499313, 0.219583,
		42.089703, 30.080246, 32.132210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739277, 29.522005, 32.631710>,  <41.503006, 29.730728, 31.978500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739277, 29.522005, 32.631710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.898712, 29.884590, 32.575920>,  <41.994373, 30.102140, 32.542446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.898712, 29.884590, 32.575920>,  <41.739277, 29.522005, 32.631710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898712, 29.884590, 32.575920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399804, 0.308603, 0.863088,
		0.825399, -0.288255, 0.485413,
		0.398590, 0.906462, -0.139475,
		42.018288, 30.156528, 32.534077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045570, 29.688322, 33.344978>,  <41.739277, 29.522005, 32.631710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045570, 29.688322, 33.344978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.995773, 30.033033, 33.148270>,  <41.965897, 30.239861, 33.030243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.995773, 30.033033, 33.148270>,  <42.045570, 29.688322, 33.344978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995773, 30.033033, 33.148270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424536, 0.401709, 0.811418,
		0.896812, 0.309793, 0.315844,
		-0.124494, 0.861776, -0.491776,
		41.958424, 30.291567, 33.000736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018711, 30.140297, 33.833229>,  <42.045570, 29.688322, 33.344978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018711, 30.140297, 33.833229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.855743, 30.350809, 33.534691>,  <41.757961, 30.477118, 33.355568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.855743, 30.350809, 33.534691>,  <42.018711, 30.140297, 33.833229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855743, 30.350809, 33.534691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567309, 0.494585, 0.658442,
		0.715658, 0.691674, 0.097059,
		-0.407423, 0.526282, -0.746347,
		41.733517, 30.508694, 33.310787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261875, 30.870398, 33.907993>,  <42.018711, 30.140297, 33.833229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261875, 30.870398, 33.907993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909313, 30.878435, 33.719219>,  <41.697777, 30.883257, 33.605953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909313, 30.878435, 33.719219>,  <42.261875, 30.870398, 33.907993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909313, 30.878435, 33.719219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320443, 0.708614, 0.628636,
		0.347052, 0.705310, -0.618136,
		-0.881403, 0.020092, -0.471938,
		41.644894, 30.884462, 33.577637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.033283, 35.216774, 36.886906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753170, 35.314655, 36.618660>,  <41.585102, 35.373386, 36.457710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753170, 35.314655, 36.618660>,  <42.033283, 35.216774, 36.886906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753170, 35.314655, 36.618660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285857, 0.764684, 0.577533,
		0.654137, 0.596135, -0.465541,
		-0.700279, 0.244708, -0.670617,
		41.543087, 35.388069, 36.417473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097351, 35.946381, 36.779804>,  <42.033283, 35.216774, 36.886906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097351, 35.946381, 36.779804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.728100, 35.860390, 36.652290>,  <41.506550, 35.808796, 36.575783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.728100, 35.860390, 36.652290>,  <42.097351, 35.946381, 36.779804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728100, 35.860390, 36.652290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333811, 0.859542, 0.386985,
		0.190814, 0.463649, -0.865228,
		-0.923125, -0.214981, -0.318784,
		41.451160, 35.795895, 36.556656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852654, 36.565510, 36.436852>,  <42.097351, 35.946381, 36.779804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852654, 36.565510, 36.436852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.520432, 36.352188, 36.501057>,  <41.321098, 36.224194, 36.539581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.520432, 36.352188, 36.501057>,  <41.852654, 36.565510, 36.436852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520432, 36.352188, 36.501057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489615, 0.836534, 0.245945,
		-0.265438, 0.125681, -0.955901,
		-0.830554, -0.533306, 0.160512,
		41.271267, 36.192196, 36.549210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391651, 36.890919, 36.076965>,  <41.852654, 36.565510, 36.436852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391651, 36.890919, 36.076965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.181839, 36.692379, 36.353661>,  <41.055954, 36.573254, 36.519680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.181839, 36.692379, 36.353661>,  <41.391651, 36.890919, 36.076965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181839, 36.692379, 36.353661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602314, 0.790567, 0.110549,
		-0.601740, -0.358660, -0.713633,
		-0.524526, -0.496353, 0.691741,
		41.024483, 36.543472, 36.561184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717815, 37.057968, 35.992172>,  <41.391651, 36.890919, 36.076965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717815, 37.057968, 35.992172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.721466, 36.921726, 36.368237>,  <40.723656, 36.839981, 36.593876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.721466, 36.921726, 36.368237>,  <40.717815, 37.057968, 35.992172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721466, 36.921726, 36.368237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698953, 0.670201, 0.249590,
		-0.715109, -0.659407, -0.231952,
		0.009127, -0.340608, 0.940161,
		40.724205, 36.819546, 36.650284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050667, 37.011662, 36.215530>,  <40.717815, 37.057968, 35.992172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050667, 37.011662, 36.215530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226040, 37.021305, 36.574905>,  <40.331264, 37.027092, 36.790531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226040, 37.021305, 36.574905>,  <40.050667, 37.011662, 36.215530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226040, 37.021305, 36.574905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731152, 0.590913, 0.340938,
		-0.522680, -0.806375, 0.276704,
		0.438432, 0.024111, 0.898441,
		40.357571, 37.028538, 36.844437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538120, 37.112514, 36.555382>,  <40.050667, 37.011662, 36.215530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538120, 37.112514, 36.555382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.809814, 37.138699, 36.847778>,  <39.972832, 37.154411, 37.023216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.809814, 37.138699, 36.847778>,  <39.538120, 37.112514, 36.555382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809814, 37.138699, 36.847778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679400, 0.432799, 0.592538,
		-0.277585, -0.899111, 0.338447,
		0.679237, 0.065461, 0.730994,
		40.013584, 37.158337, 37.067078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157990, 36.828880, 37.251007>,  <39.538120, 37.112514, 36.555382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157990, 36.828880, 37.251007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.473888, 37.061386, 37.329426>,  <39.663429, 37.200890, 37.376476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.473888, 37.061386, 37.329426>,  <39.157990, 36.828880, 37.251007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473888, 37.061386, 37.329426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577038, 0.595483, 0.558952,
		0.208151, -0.554560, 0.805690,
		0.789747, 0.581261, 0.196052,
		39.710812, 37.235764, 37.388241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264603, 36.867088, 38.012711>,  <39.157990, 36.828880, 37.251007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264603, 36.867088, 38.012711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.424160, 37.193550, 37.845486>,  <39.519894, 37.389427, 37.745152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.424160, 37.193550, 37.845486>,  <39.264603, 36.867088, 38.012711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424160, 37.193550, 37.845486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485055, 0.574692, 0.659128,
		0.778207, -0.060140, 0.625122,
		0.398893, 0.816157, -0.418059,
		39.543827, 37.438396, 37.720070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526039, 37.299030, 38.573929>,  <39.264603, 36.867088, 38.012711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526039, 37.299030, 38.573929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510410, 37.555672, 38.267513>,  <39.501034, 37.709656, 38.083664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510410, 37.555672, 38.267513>,  <39.526039, 37.299030, 38.573929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510410, 37.555672, 38.267513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193001, 0.747344, 0.635789,
		0.980421, 0.172686, 0.094632,
		-0.039069, 0.641604, -0.766040,
		39.498692, 37.748154, 38.037701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689972, 37.849693, 38.874302>,  <39.526039, 37.299030, 38.573929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689972, 37.849693, 38.874302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548805, 38.000381, 38.531715>,  <39.464104, 38.090794, 38.326164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548805, 38.000381, 38.531715>,  <39.689972, 37.849693, 38.874302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548805, 38.000381, 38.531715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166023, 0.875624, 0.453562,
		0.920806, 0.302264, -0.246481,
		-0.352921, 0.376721, -0.856463,
		39.442928, 38.113400, 38.274776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120033, 38.559750, 38.695171>,  <39.689972, 37.849693, 38.874302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120033, 38.559750, 38.695171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.761185, 38.565231, 38.518547>,  <39.545876, 38.568520, 38.412571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.761185, 38.565231, 38.518547>,  <40.120033, 38.559750, 38.695171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761185, 38.565231, 38.518547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177251, 0.904370, 0.388198,
		0.404659, 0.426530, -0.808903,
		-0.897125, 0.013708, -0.441564,
		39.492046, 38.569344, 38.386078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056553, 39.201534, 38.294838>,  <40.120033, 38.559750, 38.695171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056553, 39.201534, 38.294838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.687195, 39.066753, 38.368374>,  <39.465580, 38.985886, 38.412495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.687195, 39.066753, 38.368374>,  <40.056553, 39.201534, 38.294838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687195, 39.066753, 38.368374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264925, 0.906052, 0.329975,
		-0.277757, 0.255994, -0.925915,
		-0.923399, -0.336951, 0.183843,
		39.410175, 38.965668, 38.423527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587025, 39.574650, 37.914398>,  <40.056553, 39.201534, 38.294838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587025, 39.574650, 37.914398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443848, 39.439293, 38.262505>,  <39.357941, 39.358078, 38.471371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443848, 39.439293, 38.262505>,  <39.587025, 39.574650, 37.914398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443848, 39.439293, 38.262505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245494, 0.933337, 0.261943,
		-0.900895, -0.119886, -0.417152,
		-0.357940, -0.338392, 0.870270,
		39.336464, 39.337776, 38.523586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015625, 39.740738, 38.410233>,  <39.587025, 39.574650, 37.914398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015625, 39.740738, 38.410233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923164, 39.962234, 38.730217>,  <38.867687, 40.095131, 38.922207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923164, 39.962234, 38.730217>,  <39.015625, 39.740738, 38.410233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923164, 39.962234, 38.730217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385332, -0.807100, 0.447335,
		0.893358, -0.204849, 0.399937,
		-0.231153, 0.553739, 0.799964,
		38.853817, 40.128357, 38.970207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156227, 40.545673, 38.287086>,  <39.015625, 39.740738, 38.410233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156227, 40.545673, 38.287086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545940, 40.629677, 38.254421>,  <39.779770, 40.680080, 38.234821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.545940, 40.629677, 38.254421>,  <39.156227, 40.545673, 38.287086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545940, 40.629677, 38.254421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080406, -0.014530, -0.996656,
		-0.210493, 0.977592, 0.002730,
		0.974283, 0.210008, -0.081662,
		39.838226, 40.692680, 38.229923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226192, 41.071568, 37.836391>,  <39.156227, 40.545673, 38.287086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226192, 41.071568, 37.836391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596100, 40.919758, 37.825329>,  <39.818043, 40.828671, 37.818691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596100, 40.919758, 37.825329>,  <39.226192, 41.071568, 37.836391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596100, 40.919758, 37.825329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076901, -0.115214, -0.990359,
		0.372681, 0.917979, -0.135732,
		0.924768, -0.379526, -0.027656,
		39.873531, 40.805901, 37.817032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635361, 41.367050, 37.386356>,  <39.226192, 41.071568, 37.836391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635361, 41.367050, 37.386356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813210, 41.013069, 37.441742>,  <39.919918, 40.800682, 37.474972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813210, 41.013069, 37.441742>,  <39.635361, 41.367050, 37.386356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813210, 41.013069, 37.441742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082257, -0.194271, -0.977493,
		0.891935, 0.423221, -0.159170,
		0.444618, -0.884953, 0.138465,
		39.946594, 40.747581, 37.483280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883312, 41.293957, 36.760849>,  <39.635361, 41.367050, 37.386356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883312, 41.293957, 36.760849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.943436, 40.927540, 36.909588>,  <39.979511, 40.707691, 36.998833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.943436, 40.927540, 36.909588>,  <39.883312, 41.293957, 36.760849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943436, 40.927540, 36.909588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008438, -0.374922, -0.927018,
		0.988603, 0.142478, -0.048625,
		0.150310, -0.916042, 0.371851,
		39.988529, 40.652725, 37.021145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585007, 40.968922, 36.386616>,  <39.883312, 41.293957, 36.760849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585007, 40.968922, 36.386616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343201, 40.696777, 36.552345>,  <40.198116, 40.533489, 36.651783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343201, 40.696777, 36.552345>,  <40.585007, 40.968922, 36.386616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343201, 40.696777, 36.552345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029313, -0.500768, -0.865085,
		0.796053, -0.535103, 0.282779,
		-0.604517, -0.680365, 0.414323,
		40.161846, 40.492668, 36.676643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907429, 40.383121, 36.138599>,  <40.585007, 40.968922, 36.386616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907429, 40.383121, 36.138599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.536961, 40.267281, 36.235218>,  <40.314682, 40.197777, 36.293190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.536961, 40.267281, 36.235218>,  <40.907429, 40.383121, 36.138599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536961, 40.267281, 36.235218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042390, -0.556512, -0.829758,
		0.374720, -0.778735, 0.503147,
		-0.926168, -0.289598, 0.241547,
		40.259109, 40.180401, 36.307682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917683, 39.750366, 35.839085>,  <40.907429, 40.383121, 36.138599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917683, 39.750366, 35.839085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.532085, 39.845066, 35.887539>,  <40.300728, 39.901886, 35.916611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.532085, 39.845066, 35.887539>,  <40.917683, 39.750366, 35.839085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532085, 39.845066, 35.887539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241326, -0.587355, -0.772512,
		-0.111740, -0.773927, 0.623338,
		-0.963990, 0.236748, 0.121137,
		40.242889, 39.916092, 35.923882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657810, 39.126270, 35.600410>,  <40.917683, 39.750366, 35.839085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657810, 39.126270, 35.600410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356285, 39.388615, 35.584335>,  <40.175369, 39.546021, 35.574692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.356285, 39.388615, 35.584335>,  <40.657810, 39.126270, 35.600410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356285, 39.388615, 35.584335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345927, -0.448099, -0.824343,
		-0.558666, -0.607494, 0.564662,
		-0.753808, 0.655865, -0.040189,
		40.130142, 39.585373, 35.572277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033630, 38.824543, 35.810184>,  <40.657810, 39.126270, 35.600410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033630, 38.824543, 35.810184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988064, 39.124619, 35.549652>,  <39.960724, 39.304665, 35.393333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988064, 39.124619, 35.549652>,  <40.033630, 38.824543, 35.810184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988064, 39.124619, 35.549652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429902, -0.628266, -0.648433,
		-0.895660, 0.206145, 0.394077,
		-0.113914, 0.750191, -0.651335,
		39.953888, 39.349674, 35.354252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540852, 38.673649, 35.419846>,  <40.033630, 38.824543, 35.810184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540852, 38.673649, 35.419846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.642849, 38.979553, 35.183159>,  <39.704048, 39.163094, 35.041145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.642849, 38.979553, 35.183159>,  <39.540852, 38.673649, 35.419846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642849, 38.979553, 35.183159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250479, -0.538814, -0.804325,
		-0.933938, 0.353307, 0.054164,
		0.254990, 0.764757, -0.591715,
		39.719345, 39.208981, 35.005646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949875, 38.780537, 34.836483>,  <39.540852, 38.673649, 35.419846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949875, 38.780537, 34.836483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284836, 38.928055, 34.675114>,  <39.485813, 39.016567, 34.578293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284836, 38.928055, 34.675114>,  <38.949875, 38.780537, 34.836483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284836, 38.928055, 34.675114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211719, -0.461599, -0.861453,
		-0.503923, 0.806792, -0.308461,
		0.837399, 0.368799, -0.403424,
		39.536057, 39.038696, 34.554085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776524, 38.749847, 34.102264>,  <38.949875, 38.780537, 34.836483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776524, 38.749847, 34.102264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174309, 38.787121, 34.121677>,  <39.412979, 38.809483, 34.133324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174309, 38.787121, 34.121677>,  <38.776524, 38.749847, 34.102264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174309, 38.787121, 34.121677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098423, -0.664727, -0.740574,
		-0.036749, 0.741252, -0.670220,
		0.994466, 0.093181, 0.048528,
		39.472649, 38.815075, 34.136234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947376, 38.758850, 33.402115>,  <38.776524, 38.749847, 34.102264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947376, 38.758850, 33.402115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281132, 38.669193, 33.603535>,  <39.481384, 38.615398, 33.724384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281132, 38.669193, 33.603535>,  <38.947376, 38.758850, 33.402115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281132, 38.669193, 33.603535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267588, -0.633965, -0.725593,
		0.481863, 0.740169, -0.468996,
		0.834389, -0.224139, 0.503545,
		39.531448, 38.601952, 33.754597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688690, 38.944183, 32.748272>,  <38.947376, 38.758850, 33.402115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688690, 38.944183, 32.748272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.463852, 38.675484, 32.555271>,  <38.328949, 38.514263, 32.439472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.463852, 38.675484, 32.555271>,  <38.688690, 38.944183, 32.748272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463852, 38.675484, 32.555271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760027, 0.189431, 0.621671,
		-0.326205, 0.716152, -0.617023,
		-0.562094, -0.671746, -0.482501,
		38.295223, 38.473961, 32.410522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092331, 39.313290, 32.651318>,  <38.688690, 38.944183, 32.748272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092331, 39.313290, 32.651318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.990788, 38.936287, 32.564373>,  <37.929863, 38.710087, 32.512207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.990788, 38.936287, 32.564373>,  <38.092331, 39.313290, 32.651318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990788, 38.936287, 32.564373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891405, 0.140740, 0.430801,
		-0.375440, 0.303119, -0.875879,
		-0.253855, -0.942503, -0.217363,
		37.914631, 38.653538, 32.499165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377132, 39.313274, 32.336662>,  <38.092331, 39.313290, 32.651318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377132, 39.313274, 32.336662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.466019, 38.961590, 32.505234>,  <37.519352, 38.750580, 32.606377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.466019, 38.961590, 32.505234>,  <37.377132, 39.313274, 32.336662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466019, 38.961590, 32.505234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742549, 0.127506, 0.657543,
		-0.631855, -0.459051, -0.624524,
		0.222216, -0.879212, 0.421433,
		37.532684, 38.697826, 32.631664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691521, 39.008701, 32.602486>,  <37.377132, 39.313274, 32.336662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691521, 39.008701, 32.602486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983707, 38.807812, 32.787609>,  <37.159019, 38.687279, 32.898682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983707, 38.807812, 32.787609>,  <36.691521, 39.008701, 32.602486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983707, 38.807812, 32.787609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571313, -0.078057, 0.817012,
		-0.374200, -0.861206, -0.343947,
		0.730463, -0.502227, 0.462809,
		37.202847, 38.657143, 32.926453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296066, 38.522007, 32.914185>,  <36.691521, 39.008701, 32.602486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296066, 38.522007, 32.914185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.657318, 38.555862, 33.082558>,  <36.874069, 38.576176, 33.183582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.657318, 38.555862, 33.082558>,  <36.296066, 38.522007, 32.914185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657318, 38.555862, 33.082558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401611, -0.180203, 0.897906,
		0.151847, -0.979982, -0.128758,
		0.903134, 0.084634, 0.420935,
		36.928257, 38.581253, 33.208839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256393, 38.062645, 33.406841>,  <36.296066, 38.522007, 32.914185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256393, 38.062645, 33.406841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.544621, 38.314751, 33.522457>,  <36.717556, 38.466015, 33.591827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.544621, 38.314751, 33.522457>,  <36.256393, 38.062645, 33.406841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544621, 38.314751, 33.522457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312254, -0.077228, 0.946854,
		0.619092, -0.772528, 0.141155,
		0.720571, 0.630267, 0.289037,
		36.760792, 38.503830, 33.609169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416630, 37.740459, 34.027466>,  <36.256393, 38.062645, 33.406841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416630, 37.740459, 34.027466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.546177, 38.115452, 34.078449>,  <36.623905, 38.340446, 34.109039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.546177, 38.115452, 34.078449>,  <36.416630, 37.740459, 34.027466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546177, 38.115452, 34.078449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164673, -0.076804, 0.983353,
		0.931662, -0.339462, 0.129504,
		0.323865, 0.937479, 0.127455,
		36.643337, 38.396694, 34.116684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905933, 37.741619, 34.643150>,  <36.416630, 37.740459, 34.027466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905933, 37.741619, 34.643150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.790123, 38.121922, 34.598904>,  <36.720638, 38.350101, 34.572357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.790123, 38.121922, 34.598904>,  <36.905933, 37.741619, 34.643150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790123, 38.121922, 34.598904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132980, 0.074489, 0.988316,
		0.947887, 0.300853, 0.104865,
		-0.289526, 0.950757, -0.110614,
		36.703266, 38.407150, 34.565720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206913, 38.055832, 35.246986>,  <36.905933, 37.741619, 34.643150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206913, 38.055832, 35.246986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.930168, 38.312931, 35.115406>,  <36.764122, 38.467190, 35.036457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.930168, 38.312931, 35.115406>,  <37.206913, 38.055832, 35.246986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930168, 38.312931, 35.115406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069678, 0.394028, 0.916453,
		0.718663, 0.656976, -0.227826,
		-0.691858, 0.642747, -0.328950,
		36.722610, 38.505756, 35.016720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440853, 38.850620, 35.425243>,  <37.206913, 38.055832, 35.246986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440853, 38.850620, 35.425243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.042118, 38.859322, 35.394657>,  <36.802879, 38.864540, 35.376305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.042118, 38.859322, 35.394657>,  <37.440853, 38.850620, 35.425243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042118, 38.859322, 35.394657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068797, 0.245937, 0.966841,
		0.039834, 0.969042, -0.243662,
		-0.996835, 0.021750, -0.076464,
		36.743069, 38.865845, 35.371719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288033, 39.360737, 35.769974>,  <37.440853, 38.850620, 35.425243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288033, 39.360737, 35.769974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.941769, 39.160572, 35.764095>,  <36.734009, 39.040474, 35.760571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.941769, 39.160572, 35.764095>,  <37.288033, 39.360737, 35.769974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941769, 39.160572, 35.764095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053067, 0.062539, 0.996631,
		-0.497810, 0.863524, -0.080693,
		-0.865661, -0.500415, -0.014692,
		36.682072, 39.010448, 35.759689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986115, 39.737606, 36.234024>,  <37.288033, 39.360737, 35.769974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986115, 39.737606, 36.234024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.770317, 39.401367, 36.214695>,  <36.640839, 39.199623, 36.203098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.770317, 39.401367, 36.214695>,  <36.986115, 39.737606, 36.234024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770317, 39.401367, 36.214695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000371, -0.057154, 0.998365,
		-0.841989, 0.538630, 0.030523,
		-0.539494, -0.840602, -0.048323,
		36.608467, 39.149185, 36.200199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.309250, 37.645370, 29.324015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197952, 37.289558, 29.468962>,  <40.131172, 37.076069, 29.555929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197952, 37.289558, 29.468962>,  <40.309250, 37.645370, 29.324015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197952, 37.289558, 29.468962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776895, 0.430267, 0.459679,
		-0.564815, -0.153619, -0.810793,
		-0.278242, -0.889534, 0.362367,
		40.114479, 37.022697, 29.577671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639057, 37.534809, 29.240036>,  <40.309250, 37.645370, 29.324015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639057, 37.534809, 29.240036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739899, 37.288883, 29.538954>,  <39.800404, 37.141327, 29.718306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739899, 37.288883, 29.538954>,  <39.639057, 37.534809, 29.240036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739899, 37.288883, 29.538954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763052, 0.348638, 0.544246,
		-0.595145, -0.707430, -0.381242,
		0.252101, -0.614812, 0.747296,
		39.815529, 37.104439, 29.763142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994709, 37.227032, 29.374786>,  <39.639057, 37.534809, 29.240036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994709, 37.227032, 29.374786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219051, 37.174160, 29.701704>,  <39.353657, 37.142437, 29.897854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219051, 37.174160, 29.701704>,  <38.994709, 37.227032, 29.374786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219051, 37.174160, 29.701704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780794, 0.243834, 0.575244,
		-0.275320, -0.960767, 0.033550,
		0.560856, -0.132180, 0.817294,
		39.387310, 37.134506, 29.946892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534218, 37.007820, 29.920877>,  <38.994709, 37.227032, 29.374786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534218, 37.007820, 29.920877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855118, 37.121143, 30.131073>,  <39.047657, 37.189137, 30.257191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855118, 37.121143, 30.131073>,  <38.534218, 37.007820, 29.920877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855118, 37.121143, 30.131073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588065, 0.223357, 0.777362,
		0.102858, -0.932658, 0.345788,
		0.802247, 0.283304, 0.525489,
		39.095791, 37.206135, 30.288719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333214, 36.901817, 30.589844>,  <38.534218, 37.007820, 29.920877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333214, 36.901817, 30.589844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649498, 37.135212, 30.663950>,  <38.839268, 37.275249, 30.708414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649498, 37.135212, 30.663950>,  <38.333214, 36.901817, 30.589844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649498, 37.135212, 30.663950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489533, 0.420921, 0.763665,
		0.367605, -0.694530, 0.618461,
		0.790711, 0.583484, 0.185263,
		38.886711, 37.310257, 30.719530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425083, 36.882702, 31.270235>,  <38.333214, 36.901817, 30.589844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425083, 36.882702, 31.270235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611675, 37.226250, 31.185623>,  <38.723629, 37.432377, 31.134855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611675, 37.226250, 31.185623>,  <38.425083, 36.882702, 31.270235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611675, 37.226250, 31.185623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383806, 0.411995, 0.826410,
		0.796926, -0.304314, 0.521825,
		0.466478, 0.858867, -0.211532,
		38.751617, 37.483910, 31.122164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849133, 37.019726, 31.897472>,  <38.425083, 36.882702, 31.270235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849133, 37.019726, 31.897472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808147, 37.370281, 31.709244>,  <38.783558, 37.580616, 31.596306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808147, 37.370281, 31.709244>,  <38.849133, 37.019726, 31.897472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808147, 37.370281, 31.709244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367806, 0.406158, 0.836513,
		0.924240, 0.258790, 0.280727,
		-0.102462, 0.876393, -0.470572,
		38.777409, 37.633198, 31.568071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120777, 37.515869, 32.303177>,  <38.849133, 37.019726, 31.897472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120777, 37.515869, 32.303177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899311, 37.742191, 32.058777>,  <38.766430, 37.877983, 31.912136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899311, 37.742191, 32.058777>,  <39.120777, 37.515869, 32.303177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899311, 37.742191, 32.058777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404729, 0.458404, 0.791240,
		0.727771, 0.685371, -0.024805,
		-0.553664, 0.565802, -0.611003,
		38.733212, 37.911930, 31.875477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171925, 38.295883, 32.544502>,  <39.120777, 37.515869, 32.303177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171925, 38.295883, 32.544502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837315, 38.249798, 32.330231>,  <38.636547, 38.222149, 32.201668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837315, 38.249798, 32.330231>,  <39.171925, 38.295883, 32.544502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837315, 38.249798, 32.330231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534349, 0.387851, 0.751028,
		0.121238, 0.914494, -0.386009,
		-0.836524, -0.115210, -0.535681,
		38.586357, 38.215237, 32.169525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644001, 38.852066, 32.912918>,  <39.171925, 38.295883, 32.544502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644001, 38.852066, 32.912918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706306, 38.588676, 33.207443>,  <39.743690, 38.430645, 33.384159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706306, 38.588676, 33.207443>,  <39.644001, 38.852066, 32.912918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706306, 38.588676, 33.207443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478033, -0.602059, -0.639538,
		0.864420, 0.451599, 0.220990,
		0.155765, -0.658470, 0.736311,
		39.753036, 38.391136, 33.428337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233219, 38.654118, 32.729012>,  <39.644001, 38.852066, 32.912918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233219, 38.654118, 32.729012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113708, 38.386898, 33.001614>,  <40.042004, 38.226566, 33.165176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113708, 38.386898, 33.001614>,  <40.233219, 38.654118, 32.729012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113708, 38.386898, 33.001614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488107, -0.720619, -0.492402,
		0.820053, 0.185531, 0.541379,
		-0.298772, -0.668047, 0.681505,
		40.024078, 38.186485, 33.206066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904808, 38.356049, 32.980339>,  <40.233219, 38.654118, 32.729012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904808, 38.356049, 32.980339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609306, 38.109146, 33.088585>,  <40.432007, 37.961002, 33.153534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609306, 38.109146, 33.088585>,  <40.904808, 38.356049, 32.980339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609306, 38.109146, 33.088585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568604, -0.786379, -0.241449,
		0.361843, -0.024498, 0.931917,
		-0.738755, -0.617258, 0.270616,
		40.387680, 37.923969, 33.169769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213619, 37.827660, 33.414940>,  <40.904808, 38.356049, 32.980339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213619, 37.827660, 33.414940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872841, 37.644634, 33.313099>,  <40.668373, 37.534821, 33.251995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872841, 37.644634, 33.313099>,  <41.213619, 37.827660, 33.414940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872841, 37.644634, 33.313099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522430, -0.775626, -0.354219,
		-0.035401, -0.434789, 0.899836,
		-0.851947, -0.457562, -0.254605,
		40.617256, 37.507366, 33.236717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172550, 37.140804, 33.833668>,  <41.213619, 37.827660, 33.414940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172550, 37.140804, 33.833668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975830, 37.114029, 33.486416>,  <40.857800, 37.097961, 33.278065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975830, 37.114029, 33.486416>,  <41.172550, 37.140804, 33.833668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975830, 37.114029, 33.486416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606130, -0.742107, -0.286152,
		-0.625092, -0.666930, 0.405542,
		-0.491799, -0.066940, -0.868132,
		40.828289, 37.093948, 33.225975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054630, 36.465469, 33.664898>,  <41.172550, 37.140804, 33.833668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054630, 36.465469, 33.664898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995693, 36.635700, 33.307758>,  <40.960331, 36.737839, 33.093475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995693, 36.635700, 33.307758>,  <41.054630, 36.465469, 33.664898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995693, 36.635700, 33.307758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520262, -0.734383, -0.435900,
		-0.841200, -0.528741, -0.113204,
		-0.147344, 0.425575, -0.892847,
		40.951488, 36.763374, 33.039906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809437, 35.920597, 33.261932>,  <41.054630, 36.465469, 33.664898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809437, 35.920597, 33.261932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962860, 36.199577, 33.019791>,  <41.054916, 36.366966, 32.874508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962860, 36.199577, 33.019791>,  <40.809437, 35.920597, 33.261932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962860, 36.199577, 33.019791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540564, -0.701015, -0.465153,
		-0.748779, -0.148815, -0.645898,
		0.383562, 0.697446, -0.605350,
		41.077930, 36.408810, 32.838184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871765, 35.566719, 32.660885>,  <40.809437, 35.920597, 33.261932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871765, 35.566719, 32.660885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102821, 35.878571, 32.564133>,  <41.241455, 36.065681, 32.506081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102821, 35.878571, 32.564133>,  <40.871765, 35.566719, 32.660885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102821, 35.878571, 32.564133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571973, -0.597983, -0.561483,
		-0.582388, 0.185989, -0.791349,
		0.577642, 0.779631, -0.241877,
		41.276115, 36.112461, 32.491570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006435, 35.522545, 31.923607>,  <40.871765, 35.566719, 32.660885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006435, 35.522545, 31.923607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307106, 35.746311, 32.063343>,  <41.487507, 35.880569, 32.147186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307106, 35.746311, 32.063343>,  <41.006435, 35.522545, 31.923607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307106, 35.746311, 32.063343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643382, -0.505461, -0.574951,
		-0.145059, 0.656936, -0.739860,
		0.751676, 0.559415, 0.349339,
		41.532608, 35.914135, 32.168144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425728, 35.655888, 31.382311>,  <41.006435, 35.522545, 31.923607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425728, 35.655888, 31.382311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658192, 35.730480, 31.699165>,  <41.797668, 35.775234, 31.889278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658192, 35.730480, 31.699165>,  <41.425728, 35.655888, 31.382311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658192, 35.730480, 31.699165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778671, -0.410297, -0.474688,
		0.236490, 0.892682, -0.383656,
		0.581158, 0.186483, 0.792136,
		41.832539, 35.786427, 31.936806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933979, 35.838577, 31.067732>,  <41.425728, 35.655888, 31.382311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933979, 35.838577, 31.067732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078457, 35.761078, 31.432589>,  <42.165146, 35.714577, 31.651503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078457, 35.761078, 31.432589>,  <41.933979, 35.838577, 31.067732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078457, 35.761078, 31.432589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893004, -0.209764, -0.398175,
		0.268480, 0.958363, 0.097253,
		0.361196, -0.193749, 0.912139,
		42.186817, 35.702953, 31.706230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604088, 36.124634, 31.102194>,  <41.933979, 35.838577, 31.067732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604088, 36.124634, 31.102194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596676, 35.869522, 31.410191>,  <42.592228, 35.716454, 31.594990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596676, 35.869522, 31.410191>,  <42.604088, 36.124634, 31.102194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596676, 35.869522, 31.410191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968684, -0.202173, -0.144146,
		0.247605, 0.743209, 0.621556,
		-0.018531, -0.637783, 0.769993,
		42.591118, 35.678188, 31.641188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227322, 36.201797, 31.428614>,  <42.604088, 36.124634, 31.102194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227322, 36.201797, 31.428614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099094, 35.837841, 31.533943>,  <43.022160, 35.619469, 31.597141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099094, 35.837841, 31.533943>,  <43.227322, 36.201797, 31.428614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099094, 35.837841, 31.533943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825698, -0.404650, -0.393041,
		0.464177, 0.091429, 0.881011,
		-0.320566, -0.909890, 0.263322,
		43.002926, 35.564873, 31.612940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679604, 35.927322, 31.889433>,  <43.227322, 36.201797, 31.428614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679604, 35.927322, 31.889433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481186, 35.632572, 31.705711>,  <43.362137, 35.455723, 31.595478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481186, 35.632572, 31.705711>,  <43.679604, 35.927322, 31.889433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481186, 35.632572, 31.705711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867594, -0.441930, -0.227988,
		-0.034983, -0.511582, 0.858522,
		-0.496041, -0.736873, -0.459306,
		43.332375, 35.411510, 31.567919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.240906, 30.092777, 30.680464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.508797, 30.385664, 30.630941>,  <39.669529, 30.561396, 30.601229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.508797, 30.385664, 30.630941>,  <39.240906, 30.092777, 30.680464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508797, 30.385664, 30.630941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279073, 0.402657, 0.871772,
		0.688176, -0.549297, 0.474011,
		0.669725, 0.732216, -0.123805,
		39.709713, 30.605330, 30.593800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677578, 30.131687, 31.358284>,  <39.240906, 30.092777, 30.680464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677578, 30.131687, 31.358284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.698265, 30.471401, 31.148127>,  <39.710678, 30.675230, 31.022032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.698265, 30.471401, 31.148127>,  <39.677578, 30.131687, 31.358284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698265, 30.471401, 31.148127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140307, 0.527057, 0.838168,
		0.988756, 0.030367, 0.146420,
		0.051719, 0.849287, -0.525392,
		39.713779, 30.726187, 30.990509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148376, 30.522118, 31.777346>,  <39.677578, 30.131687, 31.358284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148376, 30.522118, 31.777346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978905, 30.794397, 31.538298>,  <39.877224, 30.957766, 31.394869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978905, 30.794397, 31.538298>,  <40.148376, 30.522118, 31.777346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978905, 30.794397, 31.538298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073543, 0.683432, 0.726301,
		0.902823, 0.263766, -0.339614,
		-0.423677, 0.680697, -0.597620,
		39.851803, 30.998606, 31.359013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465427, 31.130022, 32.012238>,  <40.148376, 30.522118, 31.777346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465427, 31.130022, 32.012238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129589, 31.230143, 31.819397>,  <39.928085, 31.290215, 31.703691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129589, 31.230143, 31.819397>,  <40.465427, 31.130022, 32.012238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129589, 31.230143, 31.819397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239217, 0.626450, 0.741846,
		0.487700, 0.738180, -0.466089,
		-0.839598, 0.250302, -0.482104,
		39.877708, 31.305233, 31.674767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452328, 31.935829, 32.006710>,  <40.465427, 31.130022, 32.012238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452328, 31.935829, 32.006710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.088848, 31.769793, 31.988977>,  <39.870762, 31.670170, 31.978338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.088848, 31.769793, 31.988977>,  <40.452328, 31.935829, 32.006710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088848, 31.769793, 31.988977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285542, 0.540573, 0.791358,
		-0.304522, 0.731765, -0.609744,
		-0.908698, -0.415093, -0.044333,
		39.816238, 31.645266, 31.975677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998871, 32.518742, 32.131264>,  <40.452328, 31.935829, 32.006710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998871, 32.518742, 32.131264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780678, 32.184982, 32.162815>,  <39.649761, 31.984726, 32.181747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780678, 32.184982, 32.162815>,  <39.998871, 32.518742, 32.131264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780678, 32.184982, 32.162815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446161, 0.368761, 0.815448,
		-0.709497, 0.409622, -0.573431,
		-0.545485, -0.834401, 0.078878,
		39.617031, 31.934662, 32.186478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308208, 32.740227, 32.164833>,  <39.998871, 32.518742, 32.131264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308208, 32.740227, 32.164833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.279369, 32.370518, 32.314774>,  <39.262066, 32.148693, 32.404739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.279369, 32.370518, 32.314774>,  <39.308208, 32.740227, 32.164833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279369, 32.370518, 32.314774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594289, 0.341640, 0.728082,
		-0.801013, -0.170278, -0.573919,
		-0.072097, -0.924277, 0.374852,
		39.257740, 32.093235, 32.427231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542206, 32.536633, 32.280247>,  <39.308208, 32.740227, 32.164833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542206, 32.536633, 32.280247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744370, 32.281647, 32.512867>,  <38.865669, 32.128654, 32.652439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744370, 32.281647, 32.512867>,  <38.542206, 32.536633, 32.280247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744370, 32.281647, 32.512867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606375, 0.217113, 0.764965,
		-0.613899, -0.739259, -0.276810,
		0.505409, -0.637462, 0.581554,
		38.895992, 32.090408, 32.687332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034775, 32.214031, 32.591591>,  <38.542206, 32.536633, 32.280247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034775, 32.214031, 32.591591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337307, 32.140472, 32.842716>,  <38.518826, 32.096336, 32.993393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337307, 32.140472, 32.842716>,  <38.034775, 32.214031, 32.591591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337307, 32.140472, 32.842716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549407, 0.342418, 0.762170,
		-0.355138, -0.921374, 0.157944,
		0.756326, -0.183900, 0.627815,
		38.564205, 32.085304, 33.031059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720955, 31.894989, 33.096142>,  <38.034775, 32.214031, 32.591591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720955, 31.894989, 33.096142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060795, 32.036224, 33.252861>,  <38.264698, 32.120964, 33.346893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060795, 32.036224, 33.252861>,  <37.720955, 31.894989, 33.096142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060795, 32.036224, 33.252861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508461, 0.350939, 0.786326,
		0.140146, -0.867278, 0.477690,
		0.849604, 0.353088, 0.391794,
		38.315678, 32.142151, 33.370399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770313, 31.605957, 33.747467>,  <37.720955, 31.894989, 33.096142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770313, 31.605957, 33.747467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993568, 31.937807, 33.753250>,  <38.127522, 32.136917, 33.756721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993568, 31.937807, 33.753250>,  <37.770313, 31.605957, 33.747467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993568, 31.937807, 33.753250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620751, 0.405925, 0.670741,
		0.550593, -0.383339, 0.741551,
		0.558135, 0.829624, 0.014458,
		38.161011, 32.186695, 33.757587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041916, 31.722631, 34.395241>,  <37.770313, 31.605957, 33.747467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041916, 31.722631, 34.395241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.048607, 32.093536, 34.245625>,  <38.052624, 32.316078, 34.155857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.048607, 32.093536, 34.245625>,  <38.041916, 31.722631, 34.395241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048607, 32.093536, 34.245625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456544, 0.339902, 0.822213,
		0.889544, 0.157008, 0.429022,
		0.016731, 0.927262, -0.374039,
		38.053627, 32.371716, 34.133411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076485, 32.207073, 34.961926>,  <38.041916, 31.722631, 34.395241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076485, 32.207073, 34.961926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980656, 32.474960, 34.680763>,  <37.923161, 32.635693, 34.512066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980656, 32.474960, 34.680763>,  <38.076485, 32.207073, 34.961926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980656, 32.474960, 34.680763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290038, 0.641564, 0.710122,
		0.926544, 0.373994, 0.040545,
		-0.239569, 0.669719, -0.702910,
		37.908783, 32.675877, 34.469891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247227, 32.779758, 35.339146>,  <38.076485, 32.207073, 34.961926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247227, 32.779758, 35.339146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.010738, 32.907906, 35.043087>,  <37.868847, 32.984795, 34.865452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.010738, 32.907906, 35.043087>,  <38.247227, 32.779758, 35.339146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010738, 32.907906, 35.043087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333950, 0.738107, 0.586238,
		0.734121, 0.593770, -0.329399,
		-0.591222, 0.320367, -0.740150,
		37.833370, 33.004017, 34.821041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955070, 33.206104, 35.408001>,  <38.247227, 32.779758, 35.339146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955070, 33.206104, 35.408001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266518, 33.280533, 35.647713>,  <39.453384, 33.325191, 35.791538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266518, 33.280533, 35.647713>,  <38.955070, 33.206104, 35.408001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266518, 33.280533, 35.647713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521996, -0.722076, -0.454011,
		0.348244, 0.666321, -0.659351,
		0.778618, 0.186072, 0.599275,
		39.500103, 33.336353, 35.827496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475052, 33.288975, 34.900753>,  <38.955070, 33.206104, 35.408001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475052, 33.288975, 34.900753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655212, 33.232529, 35.253395>,  <39.763309, 33.198662, 35.464981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655212, 33.232529, 35.253395>,  <39.475052, 33.288975, 34.900753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655212, 33.232529, 35.253395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642564, -0.634328, -0.429814,
		0.619880, 0.760075, -0.195024,
		0.450400, -0.141118, 0.881604,
		39.790333, 33.190193, 35.517876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237118, 33.387840, 34.796082>,  <39.475052, 33.288975, 34.900753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237118, 33.387840, 34.796082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225563, 33.174603, 35.134304>,  <40.218632, 33.046658, 35.337238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225563, 33.174603, 35.134304>,  <40.237118, 33.387840, 34.796082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225563, 33.174603, 35.134304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615793, -0.675823, -0.405045,
		0.787378, 0.508990, 0.347800,
		-0.028888, -0.533097, 0.845561,
		40.216896, 33.014675, 35.387974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922352, 33.166462, 34.869762>,  <40.237118, 33.387840, 34.796082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922352, 33.166462, 34.869762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.706795, 32.902355, 35.079006>,  <40.577461, 32.743893, 35.204552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.706795, 32.902355, 35.079006>,  <40.922352, 33.166462, 34.869762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706795, 32.902355, 35.079006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649775, -0.721016, -0.240683,
		0.536082, 0.210198, 0.817577,
		-0.538896, -0.660267, 0.523105,
		40.545128, 32.704273, 35.235939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481266, 32.666485, 35.238014>,  <40.922352, 33.166462, 34.869762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481266, 32.666485, 35.238014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.126991, 32.482349, 35.213844>,  <40.914429, 32.371868, 35.199341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.126991, 32.482349, 35.213844>,  <41.481266, 32.666485, 35.238014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126991, 32.482349, 35.213844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434895, -0.776988, -0.455145,
		0.162572, -0.429393, 0.888365,
		-0.885685, -0.460339, -0.060424,
		40.861286, 32.344246, 35.195717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550922, 31.881392, 35.310341>,  <41.481266, 32.666485, 35.238014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550922, 31.881392, 35.310341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.185211, 31.923536, 35.153881>,  <40.965786, 31.948824, 35.060005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.185211, 31.923536, 35.153881>,  <41.550922, 31.881392, 35.310341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185211, 31.923536, 35.153881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207299, -0.707890, -0.675217,
		-0.348037, -0.698420, 0.625364,
		-0.914274, 0.105363, -0.391153,
		40.910931, 31.955145, 35.036533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258060, 31.189367, 35.223576>,  <41.550922, 31.881392, 35.310341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258060, 31.189367, 35.223576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.075794, 31.435640, 34.966419>,  <40.966434, 31.583405, 34.812126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.075794, 31.435640, 34.966419>,  <41.258060, 31.189367, 35.223576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075794, 31.435640, 34.966419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117128, -0.674476, -0.728947,
		-0.882412, -0.407455, 0.235221,
		-0.455664, 0.615681, -0.642890,
		40.939095, 31.620344, 34.773552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817757, 30.819523, 34.810539>,  <41.258060, 31.189367, 35.223576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817757, 30.819523, 34.810539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.843060, 31.162165, 34.605709>,  <40.858242, 31.367750, 34.482811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.843060, 31.162165, 34.605709>,  <40.817757, 30.819523, 34.810539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843060, 31.162165, 34.605709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077829, -0.515777, -0.853180,
		-0.994958, 0.014117, -0.099297,
		0.063260, 0.856607, -0.512078,
		40.862038, 31.419147, 34.452087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416336, 30.718298, 34.188847>,  <40.817757, 30.819523, 34.810539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416336, 30.718298, 34.188847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.674271, 31.000618, 34.071522>,  <40.829033, 31.170010, 34.001125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.674271, 31.000618, 34.071522>,  <40.416336, 30.718298, 34.188847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674271, 31.000618, 34.071522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260539, -0.563751, -0.783776,
		-0.718544, 0.428988, -0.547416,
		0.644837, 0.705800, -0.293312,
		40.867722, 31.212358, 33.983528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301071, 30.673809, 33.509670>,  <40.416336, 30.718298, 34.188847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301071, 30.673809, 33.509670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.655529, 30.851587, 33.562145>,  <40.868206, 30.958254, 33.593632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.655529, 30.851587, 33.562145>,  <40.301071, 30.673809, 33.509670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655529, 30.851587, 33.562145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334591, -0.417787, -0.844691,
		-0.320610, 0.792416, -0.518928,
		0.886148, 0.444445, 0.131188,
		40.921375, 30.984921, 33.601501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593487, 31.055185, 32.842430>,  <40.301071, 30.673809, 33.509670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593487, 31.055185, 32.842430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.899693, 30.949297, 33.077007>,  <41.083416, 30.885763, 33.217754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.899693, 30.949297, 33.077007>,  <40.593487, 31.055185, 32.842430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899693, 30.949297, 33.077007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530060, -0.257197, -0.808013,
		0.364731, 0.929393, -0.056568,
		0.765511, -0.264723, 0.586442,
		41.129345, 30.869881, 33.252941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093109, 31.204382, 32.427868>,  <40.593487, 31.055185, 32.842430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093109, 31.204382, 32.427868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.302902, 31.011162, 32.708317>,  <41.428780, 30.895229, 32.876587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.302902, 31.011162, 32.708317>,  <41.093109, 31.204382, 32.427868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302902, 31.011162, 32.708317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782041, -0.052272, -0.621031,
		0.336637, 0.874032, 0.350348,
		0.524487, -0.483049, 0.701126,
		41.460247, 30.866247, 32.918655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786327, 31.471729, 32.484859>,  <41.093109, 31.204382, 32.427868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786327, 31.471729, 32.484859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.838306, 31.100595, 32.624706>,  <41.869492, 30.877914, 32.708614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.838306, 31.100595, 32.624706>,  <41.786327, 31.471729, 32.484859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838306, 31.100595, 32.624706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785909, -0.118604, -0.606861,
		0.604534, 0.353628, 0.713783,
		0.129946, -0.927836, 0.349619,
		41.877289, 30.822245, 32.729591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548668, 31.341372, 32.685181>,  <41.786327, 31.471729, 32.484859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548668, 31.341372, 32.685181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.350021, 31.009991, 32.581615>,  <42.230831, 30.811161, 32.519478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.350021, 31.009991, 32.581615>,  <42.548668, 31.341372, 32.685181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350021, 31.009991, 32.581615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672472, -0.178650, -0.718238,
		0.548773, -0.530799, 0.645833,
		-0.496618, -0.828454, -0.258909,
		42.201035, 30.761454, 32.503944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236515, 31.256254, 32.970776>,  <42.548668, 31.341372, 32.685181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236515, 31.256254, 32.970776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.593468, 31.409403, 33.066330>,  <43.807640, 31.501291, 33.123665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.593468, 31.409403, 33.066330>,  <43.236515, 31.256254, 32.970776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593468, 31.409403, 33.066330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434394, 0.585301, 0.684635,
		0.122304, -0.714727, 0.688627,
		0.892381, 0.382869, 0.238889,
		43.861183, 31.524263, 33.137997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372204, 31.211329, 33.738445>,  <43.236515, 31.256254, 32.970776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372204, 31.211329, 33.738445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.608414, 31.502041, 33.598118>,  <43.750137, 31.676468, 33.513920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.608414, 31.502041, 33.598118>,  <43.372204, 31.211329, 33.738445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608414, 31.502041, 33.598118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321859, 0.610735, 0.723471,
		0.740061, -0.314312, 0.594573,
		0.590522, 0.726781, -0.350818,
		43.785572, 31.720076, 33.492874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550186, 31.470013, 34.313217>,  <43.372204, 31.211329, 33.738445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550186, 31.470013, 34.313217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.638367, 31.762762, 34.055298>,  <43.691273, 31.938412, 33.900547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.638367, 31.762762, 34.055298>,  <43.550186, 31.470013, 34.313217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638367, 31.762762, 34.055298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174758, 0.679998, 0.712083,
		0.959616, -0.044293, 0.277805,
		0.220448, 0.731875, -0.644796,
		43.704502, 31.982325, 33.861858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825848, 32.007225, 34.699707>,  <43.550186, 31.470013, 34.313217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825848, 32.007225, 34.699707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.686184, 32.166805, 34.360550>,  <43.602386, 32.262554, 34.157055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.686184, 32.166805, 34.360550>,  <43.825848, 32.007225, 34.699707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686184, 32.166805, 34.360550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349457, 0.784131, 0.512853,
		0.869464, 0.475371, -0.134371,
		-0.349159, 0.398950, -0.847895,
		43.581436, 32.286491, 34.106182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894253, 32.670547, 34.816853>,  <43.825848, 32.007225, 34.699707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894253, 32.670547, 34.816853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.632896, 32.694298, 34.514977>,  <43.476082, 32.708546, 34.333851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.632896, 32.694298, 34.514977>,  <43.894253, 32.670547, 34.816853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632896, 32.694298, 34.514977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456051, 0.764843, 0.455009,
		0.604234, 0.641475, -0.472664,
		-0.653390, 0.059373, -0.754689,
		43.436878, 32.712109, 34.288570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955925, 33.387623, 34.649246>,  <43.894253, 32.670547, 34.816853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955925, 33.387623, 34.649246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.604729, 33.268963, 34.498981>,  <43.394009, 33.197765, 34.408825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.604729, 33.268963, 34.498981>,  <43.955925, 33.387623, 34.649246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604729, 33.268963, 34.498981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423731, 0.846740, 0.321688,
		0.222656, 0.441620, -0.869135,
		-0.877995, -0.296654, -0.375660,
		43.341331, 33.179966, 34.386284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665573, 34.006668, 34.270958>,  <43.955925, 33.387623, 34.649246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665573, 34.006668, 34.270958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.359894, 33.758430, 34.341236>,  <43.176487, 33.609489, 34.383404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.359894, 33.758430, 34.341236>,  <43.665573, 34.006668, 34.270958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359894, 33.758430, 34.341236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569293, 0.777050, 0.268510,
		-0.303158, 0.105174, -0.947119,
		-0.764199, -0.620589, 0.175694,
		43.130634, 33.572254, 34.393944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168179, 34.372429, 34.053829>,  <43.665573, 34.006668, 34.270958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168179, 34.372429, 34.053829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.009380, 34.093586, 34.292637>,  <42.914101, 33.926281, 34.435921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.009380, 34.093586, 34.292637>,  <43.168179, 34.372429, 34.053829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009380, 34.093586, 34.292637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476933, 0.712442, 0.514744,
		-0.784177, -0.080390, -0.615308,
		-0.396991, -0.697111, 0.597021,
		42.890282, 33.884453, 34.471745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438507, 34.490524, 34.215385>,  <43.168179, 34.372429, 34.053829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438507, 34.490524, 34.215385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.521782, 34.257301, 34.529507>,  <42.571747, 34.117367, 34.717979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.521782, 34.257301, 34.529507>,  <42.438507, 34.490524, 34.215385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521782, 34.257301, 34.529507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579328, 0.573400, 0.579303,
		-0.788059, -0.575553, -0.218406,
		0.208186, -0.583054, 0.785307,
		42.584236, 34.082386, 34.765099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819260, 34.305244, 34.507317>,  <42.438507, 34.490524, 34.215385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819260, 34.305244, 34.507317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.085381, 34.234871, 34.797535>,  <42.245052, 34.192646, 34.971664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.085381, 34.234871, 34.797535>,  <41.819260, 34.305244, 34.507317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085381, 34.234871, 34.797535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579413, 0.491176, 0.650405,
		-0.470797, -0.853109, 0.224846,
		0.665305, -0.175930, 0.725546,
		42.284973, 34.182091, 35.015198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520527, 33.846348, 34.956852>,  <41.819260, 34.305244, 34.507317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520527, 33.846348, 34.956852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.789326, 34.058994, 35.163074>,  <41.950607, 34.186581, 35.286808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.789326, 34.058994, 35.163074>,  <41.520527, 33.846348, 34.956852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789326, 34.058994, 35.163074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734558, 0.390114, 0.555189,
		0.094021, -0.751794, 0.652660,
		0.672000, 0.531616, 0.515558,
		41.990925, 34.218479, 35.317741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140076, 34.018585, 35.553635>,  <41.520527, 33.846348, 34.956852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140076, 34.018585, 35.553635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.476925, 34.233082, 35.576515>,  <41.679035, 34.361782, 35.590244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.476925, 34.233082, 35.576515>,  <41.140076, 34.018585, 35.553635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476925, 34.233082, 35.576515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412524, 0.572227, 0.708788,
		0.347351, -0.620483, 0.703099,
		0.842123, 0.536243, 0.057200,
		41.729561, 34.393955, 35.593674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228661, 34.049549, 36.242737>,  <41.140076, 34.018585, 35.553635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228661, 34.049549, 36.242737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.432392, 34.358589, 36.091122>,  <41.554630, 34.544014, 36.000153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.432392, 34.358589, 36.091122>,  <41.228661, 34.049549, 36.242737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432392, 34.358589, 36.091122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367457, 0.593523, 0.716035,
		0.778177, -0.225419, 0.586198,
		0.509330, 0.772603, -0.379034,
		41.585190, 34.590370, 35.977413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418072, 34.399971, 36.810543>,  <41.228661, 34.049549, 36.242737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418072, 34.399971, 36.810543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.442188, 34.677036, 36.523048>,  <41.456657, 34.843273, 36.350552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.442188, 34.677036, 36.523048>,  <41.418072, 34.399971, 36.810543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442188, 34.677036, 36.523048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354114, 0.688057, 0.633388,
		0.933257, 0.216331, 0.286762,
		0.060287, 0.692660, -0.718740,
		41.460274, 34.884834, 36.307426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.044010, 35.292431, 32.141075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.807068, 35.186089, 31.836855>,  <43.664902, 35.122284, 31.654322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.807068, 35.186089, 31.836855>,  <44.044010, 35.292431, 32.141075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807068, 35.186089, 31.836855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689105, -0.656275, -0.307306,
		-0.417433, -0.706134, 0.571947,
		-0.592354, -0.265853, -0.760552,
		43.629360, 35.106331, 31.608690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027843, 34.564484, 32.185043>,  <44.044010, 35.292431, 32.141075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027843, 34.564484, 32.185043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.930859, 34.675461, 31.813187>,  <43.872669, 34.742046, 31.590073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.930859, 34.675461, 31.813187>,  <44.027843, 34.564484, 32.185043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930859, 34.675461, 31.813187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798465, -0.487220, -0.353652,
		-0.551060, -0.828035, -0.103398,
		-0.242459, 0.277443, -0.929645,
		43.858120, 34.758694, 31.534294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135677, 33.898617, 31.820770>,  <44.027843, 34.564484, 32.185043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135677, 33.898617, 31.820770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.093632, 34.167896, 31.527990>,  <44.068405, 34.329464, 31.352322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.093632, 34.167896, 31.527990>,  <44.135677, 33.898617, 31.820770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093632, 34.167896, 31.527990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663270, -0.500949, -0.555988,
		-0.740962, -0.543922, -0.393858,
		-0.105111, 0.673200, -0.731952,
		44.062099, 34.369858, 31.308405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017174, 33.546829, 31.100561>,  <44.135677, 33.898617, 31.820770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017174, 33.546829, 31.100561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.135857, 33.919037, 31.014681>,  <44.207066, 34.142361, 30.963154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.135857, 33.919037, 31.014681>,  <44.017174, 33.546829, 31.100561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135857, 33.919037, 31.014681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679240, -0.363670, -0.637477,
		-0.671265, 0.043313, -0.739951,
		0.296709, 0.930520, -0.214699,
		44.224869, 34.198193, 30.950272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758076, 33.705750, 30.457920>,  <44.017174, 33.546829, 31.100561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758076, 33.705750, 30.457920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.062531, 33.959583, 30.511539>,  <44.245205, 34.111885, 30.543711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.062531, 33.959583, 30.511539>,  <43.758076, 33.705750, 30.457920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062531, 33.959583, 30.511539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500563, -0.443316, -0.743577,
		-0.412439, 0.633064, -0.655075,
		0.761138, 0.634587, 0.134048,
		44.290871, 34.149960, 30.551754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916161, 34.033272, 29.843138>,  <43.758076, 33.705750, 30.457920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916161, 34.033272, 29.843138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.258198, 34.088436, 30.043055>,  <44.463421, 34.121532, 30.163004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.258198, 34.088436, 30.043055>,  <43.916161, 34.033272, 29.843138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258198, 34.088436, 30.043055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517666, -0.280700, -0.808226,
		0.028832, 0.949836, -0.311415,
		0.855097, 0.137906, 0.499791,
		44.514729, 34.129807, 30.192991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382835, 34.464417, 29.441446>,  <43.916161, 34.033272, 29.843138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382835, 34.464417, 29.441446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.621780, 34.264030, 29.691948>,  <44.765148, 34.143799, 29.842249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.621780, 34.264030, 29.691948>,  <44.382835, 34.464417, 29.441446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621780, 34.264030, 29.691948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652507, -0.150390, -0.742709,
		0.466253, 0.852301, 0.237046,
		0.597363, -0.500965, 0.626253,
		44.800991, 34.113743, 29.879824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030151, 34.705624, 29.273266>,  <44.382835, 34.464417, 29.441446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030151, 34.705624, 29.273266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.081455, 34.359077, 29.466328>,  <45.112236, 34.151150, 29.582165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.081455, 34.359077, 29.466328>,  <45.030151, 34.705624, 29.273266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081455, 34.359077, 29.466328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693728, -0.269413, -0.667951,
		0.708725, 0.420502, 0.566469,
		0.128261, -0.866369, 0.482654,
		45.119934, 34.099167, 29.611124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.772041, 34.699032, 29.420179>,  <45.030151, 34.705624, 29.273266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.772041, 34.699032, 29.420179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.647728, 34.319672, 29.445326>,  <45.573139, 34.092056, 29.460415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.647728, 34.319672, 29.445326>,  <45.772041, 34.699032, 29.420179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647728, 34.319672, 29.445326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807550, -0.298352, -0.508772,
		0.501276, -0.107348, 0.858603,
		-0.310781, -0.948400, 0.062868,
		45.554493, 34.035152, 29.464186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302776, 34.310814, 29.629515>,  <45.772041, 34.699032, 29.420179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302776, 34.310814, 29.629515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.073387, 34.023907, 29.471195>,  <45.935753, 33.851761, 29.376204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.073387, 34.023907, 29.471195>,  <46.302776, 34.310814, 29.629515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073387, 34.023907, 29.471195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784574, -0.341831, -0.517295,
		0.235744, -0.607187, 0.758781,
		-0.573470, -0.717269, -0.395799,
		45.901344, 33.808727, 29.352455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.613834, 33.788380, 29.627144>,  <46.302776, 34.310814, 29.629515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.613834, 33.788380, 29.627144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.364998, 33.689964, 29.329832>,  <46.215694, 33.630913, 29.151445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.364998, 33.689964, 29.329832>,  <46.613834, 33.788380, 29.627144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364998, 33.689964, 29.329832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734746, -0.511407, -0.445659,
		-0.270468, -0.823362, 0.498920,
		-0.622090, -0.246043, -0.743281,
		46.178371, 33.616150, 29.106848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.868702, 33.215950, 29.367573>,  <46.613834, 33.788380, 29.627144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.868702, 33.215950, 29.367573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.619884, 33.318211, 29.071545>,  <46.470596, 33.379566, 28.893927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.619884, 33.318211, 29.071545>,  <46.868702, 33.215950, 29.367573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.619884, 33.318211, 29.071545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648591, -0.361257, -0.669943,
		-0.438631, -0.896735, 0.058900,
		-0.622039, 0.255656, -0.740073,
		46.433273, 33.394909, 28.849524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.958138, 32.690601, 28.870274>,  <46.868702, 33.215950, 29.367573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.958138, 32.690601, 28.870274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.836433, 33.033493, 28.704100>,  <46.763409, 33.239227, 28.604395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.836433, 33.033493, 28.704100>,  <46.958138, 32.690601, 28.870274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.836433, 33.033493, 28.704100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762277, -0.042439, -0.645858,
		-0.571277, -0.513187, -0.640532,
		-0.304262, 0.857227, -0.415436,
		46.745155, 33.290661, 28.579470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536369, 32.179794, 29.168152>,  <46.958138, 32.690601, 28.870274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536369, 32.179794, 29.168152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.385349, 31.902546, 29.413767>,  <46.294739, 31.736198, 29.561136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.385349, 31.902546, 29.413767>,  <46.536369, 32.179794, 29.168152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.385349, 31.902546, 29.413767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792150, 0.101647, 0.601803,
		-0.479535, 0.713621, 0.510676,
		-0.377551, -0.693118, 0.614038,
		46.272083, 31.694611, 29.597979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617470, 31.657148, 28.679800>,  <46.536369, 32.179794, 29.168152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617470, 31.657148, 28.679800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.547539, 31.290468, 28.536077>,  <46.505581, 31.070461, 28.449844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.547539, 31.290468, 28.536077>,  <46.617470, 31.657148, 28.679800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547539, 31.290468, 28.536077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292837, -0.300001, 0.907880,
		-0.940044, 0.263936, -0.215996,
		-0.174823, -0.916699, -0.359304,
		46.495090, 31.015459, 28.428286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987804, 31.478617, 28.926853>,  <46.617470, 31.657148, 28.679800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987804, 31.478617, 28.926853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.133347, 31.118814, 28.830101>,  <46.220673, 30.902933, 28.772051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.133347, 31.118814, 28.830101>,  <45.987804, 31.478617, 28.926853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133347, 31.118814, 28.830101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343223, -0.370879, 0.862929,
		-0.865916, -0.230960, -0.443675,
		0.363852, -0.899504, -0.241879,
		46.242500, 30.848963, 28.757538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514046, 31.021433, 29.035156>,  <45.987804, 31.478617, 28.926853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514046, 31.021433, 29.035156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.855606, 30.816084, 29.069332>,  <46.060543, 30.692875, 29.089838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.855606, 30.816084, 29.069332>,  <45.514046, 31.021433, 29.035156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.855606, 30.816084, 29.069332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297426, -0.346660, 0.889587,
		-0.427072, -0.785031, -0.448704,
		0.853901, -0.513374, 0.085440,
		46.111778, 30.662071, 29.094965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333160, 30.421303, 29.338697>,  <45.514046, 31.021433, 29.035156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333160, 30.421303, 29.338697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.728191, 30.411291, 29.400743>,  <45.965210, 30.405285, 29.437971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.728191, 30.411291, 29.400743>,  <45.333160, 30.421303, 29.338697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728191, 30.411291, 29.400743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153651, -0.360185, 0.920140,
		0.032842, -0.932545, -0.359556,
		0.987579, -0.025027, 0.155116,
		46.024464, 30.403782, 29.447279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506485, 29.748428, 29.608049>,  <45.333160, 30.421303, 29.338697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506485, 29.748428, 29.608049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.758129, 30.040081, 29.715820>,  <45.909115, 30.215073, 29.780483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.758129, 30.040081, 29.715820>,  <45.506485, 29.748428, 29.608049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758129, 30.040081, 29.715820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308610, -0.083841, 0.947486,
		0.713432, -0.679218, 0.172273,
		0.629106, 0.729132, 0.269429,
		45.946861, 30.258821, 29.796648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741291, 29.505234, 30.182602>,  <45.506485, 29.748428, 29.608049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741291, 29.505234, 30.182602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.833660, 29.891771, 30.227951>,  <45.889084, 30.123693, 30.255159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.833660, 29.891771, 30.227951>,  <45.741291, 29.505234, 30.182602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833660, 29.891771, 30.227951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348830, -0.026548, 0.936810,
		0.908290, -0.255880, 0.330959,
		0.230925, 0.966344, 0.113372,
		45.902939, 30.181675, 30.261963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019928, 29.622910, 30.879633>,  <45.741291, 29.505234, 30.182602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019928, 29.622910, 30.879633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.880215, 29.982271, 30.773148>,  <45.796387, 30.197889, 30.709257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.880215, 29.982271, 30.773148>,  <46.019928, 29.622910, 30.879633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880215, 29.982271, 30.773148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291625, 0.165771, 0.942059,
		0.890482, 0.406677, 0.204097,
		-0.349280, 0.898406, -0.266213,
		45.775429, 30.251793, 30.693283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151058, 29.993496, 31.481756>,  <46.019928, 29.622910, 30.879633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151058, 29.993496, 31.481756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.890446, 30.237129, 31.300861>,  <45.734077, 30.383310, 31.192326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.890446, 30.237129, 31.300861>,  <46.151058, 29.993496, 31.481756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890446, 30.237129, 31.300861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301406, 0.339224, 0.891113,
		0.696172, 0.716898, -0.037435,
		-0.651536, 0.609085, -0.452236,
		45.694984, 30.419855, 31.165190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218174, 30.570721, 31.882555>,  <46.151058, 29.993496, 31.481756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218174, 30.570721, 31.882555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.876087, 30.606174, 31.678301>,  <45.670834, 30.627447, 31.555748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.876087, 30.606174, 31.678301>,  <46.218174, 30.570721, 31.882555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876087, 30.606174, 31.678301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453226, 0.349988, 0.819814,
		0.251380, 0.932551, -0.259144,
		-0.855216, 0.088635, -0.510637,
		45.619522, 30.632765, 31.525110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980869, 31.283396, 31.919052>,  <46.218174, 30.570721, 31.882555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980869, 31.283396, 31.919052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.648098, 31.076000, 31.839996>,  <45.448433, 30.951563, 31.792562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.648098, 31.076000, 31.839996>,  <45.980869, 31.283396, 31.919052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648098, 31.076000, 31.839996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492008, 0.524602, 0.694781,
		-0.256554, 0.675250, -0.691533,
		-0.831930, -0.518489, -0.197640,
		45.398518, 30.920454, 31.780704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487507, 31.822321, 31.897760>,  <45.980869, 31.283396, 31.919052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487507, 31.822321, 31.897760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.285122, 31.479839, 31.939550>,  <45.163689, 31.274351, 31.964624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.285122, 31.479839, 31.939550>,  <45.487507, 31.822321, 31.897760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285122, 31.479839, 31.939550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686915, 0.473227, 0.551547,
		-0.521677, 0.207298, -0.827576,
		-0.505965, -0.856203, 0.104476,
		45.133331, 31.222979, 31.970894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812469, 31.985947, 31.822950>,  <45.487507, 31.822321, 31.897760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812469, 31.985947, 31.822950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.749825, 31.630302, 31.994978>,  <44.712238, 31.416916, 32.098194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.749825, 31.630302, 31.994978>,  <44.812469, 31.985947, 31.822950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749825, 31.630302, 31.994978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821433, 0.359028, 0.443109,
		-0.548378, -0.283874, -0.786573,
		-0.156615, -0.889108, 0.430067,
		44.702839, 31.363569, 32.123997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132118, 31.807844, 31.908091>,  <44.812469, 31.985947, 31.822950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132118, 31.807844, 31.908091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.272224, 31.553019, 32.182743>,  <44.356289, 31.400124, 32.347534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.272224, 31.553019, 32.182743>,  <44.132118, 31.807844, 31.908091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272224, 31.553019, 32.182743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682113, 0.328894, 0.653109,
		-0.641901, -0.697123, -0.319348,
		0.350266, -0.637063, 0.686633,
		44.377304, 31.361900, 32.388733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519226, 31.471991, 32.308193>,  <44.132118, 31.807844, 31.908091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519226, 31.471991, 32.308193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.843185, 31.466784, 32.542763>,  <44.037563, 31.463659, 32.683502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.843185, 31.466784, 32.542763>,  <43.519226, 31.471991, 32.308193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843185, 31.466784, 32.542763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555724, 0.302881, 0.774231,
		-0.187694, -0.952940, 0.238069,
		0.809902, -0.013018, 0.586421,
		44.086155, 31.462877, 32.718689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128418, 30.935549, 32.317112>,  <43.519226, 31.471991, 32.308193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128418, 30.935549, 32.317112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.809460, 30.699980, 32.264454>,  <42.618084, 30.558638, 32.232861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.809460, 30.699980, 32.264454>,  <43.128418, 30.935549, 32.317112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809460, 30.699980, 32.264454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439805, -0.417782, -0.795003,
		0.413197, -0.691830, 0.592149,
		-0.797396, -0.588923, -0.131644,
		42.570240, 30.523302, 32.224960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390553, 30.302292, 32.257454>,  <43.128418, 30.935549, 32.317112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390553, 30.302292, 32.257454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.033791, 30.309540, 32.076710>,  <42.819733, 30.313889, 31.968264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.033791, 30.309540, 32.076710>,  <43.390553, 30.302292, 32.257454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033791, 30.309540, 32.076710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386552, -0.488019, -0.782569,
		-0.234696, -0.872645, 0.428263,
		-0.891905, 0.018120, -0.451859,
		42.766220, 30.314976, 31.941153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314316, 29.606230, 31.966541>,  <43.390553, 30.302292, 32.257454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314316, 29.606230, 31.966541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.073353, 29.842091, 31.751350>,  <42.928776, 29.983608, 31.622236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.073353, 29.842091, 31.751350>,  <43.314316, 29.606230, 31.966541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073353, 29.842091, 31.751350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372852, -0.388065, -0.842845,
		-0.705756, -0.708318, 0.013918,
		-0.602403, 0.589653, -0.537977,
		42.892632, 30.018986, 31.589958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969769, 29.093653, 31.564838>,  <43.314316, 29.606230, 31.966541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969769, 29.093653, 31.564838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919350, 29.447683, 31.385618>,  <42.889099, 29.660103, 31.278086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919350, 29.447683, 31.385618>,  <42.969769, 29.093653, 31.564838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919350, 29.447683, 31.385618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476667, -0.342062, -0.809804,
		-0.870000, -0.315643, -0.378773,
		-0.126045, 0.885078, -0.448051,
		42.881535, 29.713207, 31.251204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763958, 28.942924, 30.937498>,  <42.969769, 29.093653, 31.564838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763958, 28.942924, 30.937498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.876827, 29.316765, 30.850868>,  <42.944550, 29.541069, 30.798891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.876827, 29.316765, 30.850868>,  <42.763958, 28.942924, 30.937498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876827, 29.316765, 30.850868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320617, -0.304634, -0.896885,
		-0.904203, 0.183639, -0.385607,
		0.282172, 0.934599, -0.216573,
		42.961479, 29.597145, 30.785896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467365, 29.149632, 30.331436>,  <42.763958, 28.942924, 30.937498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467365, 29.149632, 30.331436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.790447, 29.383093, 30.364822>,  <42.984295, 29.523170, 30.384853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.790447, 29.383093, 30.364822>,  <42.467365, 29.149632, 30.331436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790447, 29.383093, 30.364822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268726, -0.238423, -0.933242,
		-0.524790, 0.776210, -0.349417,
		0.807701, 0.583654, 0.083466,
		43.032757, 29.558189, 30.389862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540237, 29.501253, 29.683735>,  <42.467365, 29.149632, 30.331436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540237, 29.501253, 29.683735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.903328, 29.538734, 29.847317>,  <43.121181, 29.561224, 29.945467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.903328, 29.538734, 29.847317>,  <42.540237, 29.501253, 29.683735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903328, 29.538734, 29.847317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419425, -0.178458, -0.890076,
		-0.010423, 0.979475, -0.201294,
		0.907730, 0.093705, 0.408956,
		43.175648, 29.566847, 29.970003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146641, 29.891462, 29.229034>,  <42.540237, 29.501253, 29.683735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146641, 29.891462, 29.229034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.860367, 29.894640, 28.949684>,  <41.688602, 29.896547, 28.782074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.860367, 29.894640, 28.949684>,  <42.146641, 29.891462, 29.229034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860367, 29.894640, 28.949684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680475, 0.217275, 0.699818,
		0.157299, 0.976078, -0.150095,
		-0.715689, 0.007944, -0.698374,
		41.645660, 29.897024, 28.740171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803455, 30.480934, 29.371822>,  <42.146641, 29.891462, 29.229034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803455, 30.480934, 29.371822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.545177, 30.257444, 29.163626>,  <41.390213, 30.123350, 29.038708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.545177, 30.257444, 29.163626>,  <41.803455, 30.480934, 29.371822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545177, 30.257444, 29.163626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732703, 0.261409, 0.628341,
		-0.215009, 0.787079, -0.578168,
		-0.645692, -0.558724, -0.520490,
		41.351471, 30.089827, 29.007479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209476, 30.854971, 29.071728>,  <41.803455, 30.480934, 29.371822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209476, 30.854971, 29.071728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.067253, 30.481379, 29.085943>,  <40.981918, 30.257223, 29.094473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.067253, 30.481379, 29.085943>,  <41.209476, 30.854971, 29.071728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067253, 30.481379, 29.085943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804578, 0.325200, 0.496889,
		-0.475641, 0.148077, -0.867086,
		-0.355554, -0.933980, 0.035539,
		40.960587, 30.201185, 29.096605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609428, 30.947008, 28.927740>,  <41.209476, 30.854971, 29.071728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609428, 30.947008, 28.927740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.597710, 30.585291, 29.098103>,  <40.590679, 30.368261, 29.200319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.597710, 30.585291, 29.098103>,  <40.609428, 30.947008, 28.927740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597710, 30.585291, 29.098103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748109, 0.302425, 0.590653,
		-0.662929, -0.301320, -0.685370,
		-0.029297, -0.904292, 0.425907,
		40.588921, 30.314003, 29.225874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933399, 30.715649, 28.847298>,  <40.609428, 30.947008, 28.927740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933399, 30.715649, 28.847298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.098602, 30.532831, 29.162394>,  <40.197723, 30.423140, 29.351452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.098602, 30.532831, 29.162394>,  <39.933399, 30.715649, 28.847298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098602, 30.532831, 29.162394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637037, 0.473162, 0.608524,
		-0.650852, -0.753145, -0.095735,
		0.413009, -0.457046, 0.787739,
		40.222504, 30.395718, 29.398716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414814, 30.611021, 29.341223>,  <39.933399, 30.715649, 28.847298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414814, 30.611021, 29.341223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.734329, 30.519506, 29.563789>,  <39.926037, 30.464598, 29.697329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.734329, 30.519506, 29.563789>,  <39.414814, 30.611021, 29.341223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734329, 30.519506, 29.563789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488561, 0.293020, 0.821856,
		-0.351073, -0.928329, 0.122282,
		0.798784, -0.228789, 0.556417,
		39.973965, 30.450871, 29.730715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170425, 30.218599, 29.903299>,  <39.414814, 30.611021, 29.341223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170425, 30.218599, 29.903299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.519993, 30.360048, 30.036701>,  <39.729733, 30.444918, 30.116741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.519993, 30.360048, 30.036701>,  <39.170425, 30.218599, 29.903299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519993, 30.360048, 30.036701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428528, 0.236662, 0.871984,
		0.229459, -0.904941, 0.358372,
		0.873906, 0.353657, 0.333488,
		39.782166, 30.466135, 30.136751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.535831, 34.155922, 25.808033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.704727, 34.173717, 26.170189>,  <45.806065, 34.184395, 26.387484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.704727, 34.173717, 26.170189>,  <45.535831, 34.155922, 25.808033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704727, 34.173717, 26.170189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856124, 0.347846, 0.382171,
		-0.297934, -0.936496, 0.184964,
		0.422241, 0.044490, 0.905391,
		45.831398, 34.187065, 26.441807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299191, 33.606991, 26.366741>,  <45.535831, 34.155922, 25.808033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299191, 33.606991, 26.366741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.394447, 33.954399, 26.540617>,  <45.451603, 34.162846, 26.644943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.394447, 33.954399, 26.540617>,  <45.299191, 33.606991, 26.366741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394447, 33.954399, 26.540617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883465, 0.007792, 0.468432,
		0.403457, -0.495587, 0.769166,
		0.238142, 0.868523, 0.434690,
		45.465889, 34.214954, 26.671024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937267, 33.582191, 27.001381>,  <45.299191, 33.606991, 26.366741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937267, 33.582191, 27.001381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.045334, 33.967308, 27.003828>,  <45.110172, 34.198380, 27.005297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.045334, 33.967308, 27.003828>,  <44.937267, 33.582191, 27.001381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045334, 33.967308, 27.003828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905066, 0.251784, 0.342724,
		0.328433, -0.098128, 0.939416,
		0.270161, 0.962796, 0.006118,
		45.126381, 34.256145, 27.005663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505596, 33.748302, 27.498522>,  <44.937267, 33.582191, 27.001381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505596, 33.748302, 27.498522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.604717, 34.105564, 27.348392>,  <44.664188, 34.319923, 27.258316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.604717, 34.105564, 27.348392>,  <44.505596, 33.748302, 27.498522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604717, 34.105564, 27.348392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875908, 0.372083, 0.307146,
		0.413981, 0.252638, 0.874525,
		0.247799, 0.893156, -0.375323,
		44.679058, 34.373512, 27.235796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550430, 34.223263, 28.078251>,  <44.505596, 33.748302, 27.498522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550430, 34.223263, 28.078251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.483376, 34.432877, 27.744238>,  <44.443142, 34.558647, 27.543829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.483376, 34.432877, 27.744238>,  <44.550430, 34.223263, 28.078251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483376, 34.432877, 27.744238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733387, 0.499754, 0.460858,
		0.658818, 0.689660, 0.300545,
		-0.167637, 0.524037, -0.835035,
		44.433086, 34.590088, 27.493727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503540, 34.831371, 28.304596>,  <44.550430, 34.223263, 28.078251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503540, 34.831371, 28.304596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.366718, 34.883057, 27.932295>,  <44.284626, 34.914066, 27.708914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.366718, 34.883057, 27.932295>,  <44.503540, 34.831371, 28.304596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366718, 34.883057, 27.932295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796505, 0.485673, 0.360142,
		0.498575, 0.864538, -0.063212,
		-0.342057, 0.129209, -0.930754,
		44.264103, 34.921818, 27.653069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295197, 35.497173, 28.299765>,  <44.503540, 34.831371, 28.304596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295197, 35.497173, 28.299765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.086098, 35.320210, 28.008286>,  <43.960636, 35.214031, 27.833397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.086098, 35.320210, 28.008286>,  <44.295197, 35.497173, 28.299765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086098, 35.320210, 28.008286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842160, 0.400641, 0.360907,
		0.132278, 0.802346, -0.582017,
		-0.522752, -0.442412, -0.728699,
		43.929272, 35.187485, 27.789677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881500, 36.022213, 27.874302>,  <44.295197, 35.497173, 28.299765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881500, 36.022213, 27.874302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.679424, 35.677120, 27.865650>,  <43.558178, 35.470062, 27.860458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.679424, 35.677120, 27.865650>,  <43.881500, 36.022213, 27.874302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679424, 35.677120, 27.865650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792366, 0.453763, 0.407742,
		-0.341960, 0.223127, -0.912841,
		-0.505192, -0.862736, -0.021629,
		43.527866, 35.418301, 27.859161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184978, 36.313004, 27.854298>,  <43.881500, 36.022213, 27.874302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184978, 36.313004, 27.854298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.138851, 35.920132, 27.913671>,  <43.111176, 35.684410, 27.949297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.138851, 35.920132, 27.913671>,  <43.184978, 36.313004, 27.854298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138851, 35.920132, 27.913671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845746, 0.175459, 0.503912,
		-0.520974, -0.067427, -0.850905,
		-0.115322, -0.982175, 0.148436,
		43.104256, 35.625481, 27.958202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476040, 36.147282, 27.620125>,  <43.184978, 36.313004, 27.854298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476040, 36.147282, 27.620125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.609650, 35.894787, 27.900114>,  <42.689816, 35.743290, 28.068108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.609650, 35.894787, 27.900114>,  <42.476040, 36.147282, 27.620125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609650, 35.894787, 27.900114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856839, 0.106086, 0.504552,
		-0.392750, -0.768299, -0.505434,
		0.334027, -0.631239, 0.699974,
		42.709858, 35.705414, 28.110106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991211, 35.576832, 27.629562>,  <42.476040, 36.147282, 27.620125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991211, 35.576832, 27.629562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.150219, 35.584030, 27.996529>,  <42.245625, 35.588348, 28.216709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.150219, 35.584030, 27.996529>,  <41.991211, 35.576832, 27.629562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150219, 35.584030, 27.996529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913342, 0.103904, 0.393714,
		-0.088237, -0.994425, 0.057742,
		0.397519, 0.017998, 0.917418,
		42.269474, 35.589428, 28.271753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497578, 35.151005, 28.011000>,  <41.991211, 35.576832, 27.629562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497578, 35.151005, 28.011000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.720589, 35.360004, 28.269041>,  <41.854393, 35.485405, 28.423866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.720589, 35.360004, 28.269041>,  <41.497578, 35.151005, 28.011000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720589, 35.360004, 28.269041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820546, 0.228909, 0.523742,
		0.125986, -0.821336, 0.556358,
		0.557523, 0.522502, 0.645104,
		41.887844, 35.516754, 28.462572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263283, 34.667137, 28.607334>,  <41.497578, 35.151005, 28.011000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263283, 34.667137, 28.607334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.965054, 34.450809, 28.451571>,  <40.786118, 34.321014, 28.358112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.965054, 34.450809, 28.451571>,  <41.263283, 34.667137, 28.607334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965054, 34.450809, 28.451571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642159, -0.426763, -0.636793,
		0.178202, -0.724838, 0.665473,
		-0.745571, -0.540817, -0.389411,
		40.741383, 34.288563, 28.334747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507442, 33.900730, 28.610056>,  <41.263283, 34.667137, 28.607334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507442, 33.900730, 28.610056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.209625, 33.975143, 28.353603>,  <41.030937, 34.019791, 28.199732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.209625, 33.975143, 28.353603>,  <41.507442, 33.900730, 28.610056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209625, 33.975143, 28.353603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495216, -0.490137, -0.717305,
		-0.447682, -0.851563, 0.272802,
		-0.744541, 0.186029, -0.641133,
		40.986263, 34.030952, 28.161263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461269, 33.301846, 28.209864>,  <41.507442, 33.900730, 28.610056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461269, 33.301846, 28.209864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.259300, 33.554913, 27.974989>,  <41.138119, 33.706753, 27.834064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.259300, 33.554913, 27.974989>,  <41.461269, 33.301846, 28.209864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259300, 33.554913, 27.974989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375280, -0.451706, -0.809399,
		-0.777316, -0.629041, -0.009352,
		-0.504921, 0.632668, -0.587185,
		41.107822, 33.744713, 27.798834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176182, 32.864388, 27.771570>,  <41.461269, 33.301846, 28.209864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176182, 32.864388, 27.771570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.177582, 33.222874, 27.594128>,  <41.178421, 33.437965, 27.487661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.177582, 33.222874, 27.594128>,  <41.176182, 32.864388, 27.771570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177582, 33.222874, 27.594128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491795, -0.387797, -0.779584,
		-0.870704, -0.215436, -0.442111,
		0.003499, 0.896215, -0.443606,
		41.178631, 33.491737, 27.461046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818897, 32.805027, 27.081913>,  <41.176182, 32.864388, 27.771570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818897, 32.805027, 27.081913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.084595, 33.103512, 27.099566>,  <41.244015, 33.282600, 27.110157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.084595, 33.103512, 27.099566>,  <40.818897, 32.805027, 27.081913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084595, 33.103512, 27.099566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470465, -0.371451, -0.800429,
		-0.580896, 0.552444, -0.597800,
		0.664246, 0.746210, 0.044131,
		41.283867, 33.327374, 27.112804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882034, 33.017738, 26.341642>,  <40.818897, 32.805027, 27.081913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882034, 33.017738, 26.341642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201473, 33.143784, 26.546755>,  <41.393135, 33.219410, 26.669823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201473, 33.143784, 26.546755>,  <40.882034, 33.017738, 26.341642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201473, 33.143784, 26.546755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587779, -0.225094, -0.777077,
		-0.129446, 0.921973, -0.364979,
		0.798598, 0.315117, 0.512779,
		41.441051, 33.238319, 26.700588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263790, 33.482338, 25.864841>,  <40.882034, 33.017738, 26.341642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263790, 33.482338, 25.864841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.520767, 33.349781, 26.141233>,  <41.674953, 33.270248, 26.307068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.520767, 33.349781, 26.141233>,  <41.263790, 33.482338, 25.864841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520767, 33.349781, 26.141233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677642, -0.175409, -0.714166,
		0.357870, 0.927046, 0.111873,
		0.642441, -0.331388, 0.690978,
		41.713501, 33.250366, 26.348528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916931, 33.675133, 25.612331>,  <41.263790, 33.482338, 25.864841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916931, 33.675133, 25.612331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.997227, 33.375263, 25.864582>,  <42.045403, 33.195339, 26.015932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.997227, 33.375263, 25.864582>,  <41.916931, 33.675133, 25.612331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997227, 33.375263, 25.864582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707104, -0.334652, -0.622907,
		0.678019, 0.570960, 0.462921,
		0.200737, -0.749676, 0.630628,
		42.057449, 33.150360, 26.053770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639534, 33.683960, 25.701902>,  <41.916931, 33.675133, 25.612331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639534, 33.683960, 25.701902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.528107, 33.320095, 25.825138>,  <42.461250, 33.101776, 25.899080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.528107, 33.320095, 25.825138>,  <42.639534, 33.683960, 25.701902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528107, 33.320095, 25.825138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663047, -0.414226, -0.623527,
		0.694817, 0.030586, 0.718536,
		-0.278565, -0.909660, 0.308092,
		42.444538, 33.047195, 25.917566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212112, 33.333401, 25.738998>,  <42.639534, 33.683960, 25.701902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212112, 33.333401, 25.738998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.930271, 33.049767, 25.728180>,  <42.761166, 32.879585, 25.721689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.930271, 33.049767, 25.728180>,  <43.212112, 33.333401, 25.738998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930271, 33.049767, 25.728180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668377, -0.650379, -0.360942,
		0.238349, -0.272398, 0.932196,
		-0.704600, -0.709089, -0.027047,
		42.718891, 32.837040, 25.720066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590733, 32.652065, 25.800196>,  <43.212112, 33.333401, 25.738998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590733, 32.652065, 25.800196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.230576, 32.499794, 25.715931>,  <43.014481, 32.408432, 25.665373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.230576, 32.499794, 25.715931>,  <43.590733, 32.652065, 25.800196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230576, 32.499794, 25.715931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420191, -0.635279, -0.647966,
		0.112838, -0.671941, 0.731958,
		-0.900393, -0.380678, -0.210660,
		42.960457, 32.385590, 25.652733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685333, 31.902494, 25.837278>,  <43.590733, 32.652065, 25.800196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685333, 31.902494, 25.837278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.348030, 31.967411, 25.632309>,  <43.145649, 32.006363, 25.509327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.348030, 31.967411, 25.632309>,  <43.685333, 31.902494, 25.837278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348030, 31.967411, 25.632309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255375, -0.717892, -0.647622,
		-0.472968, -0.676973, 0.563923,
		-0.843259, 0.162293, -0.512422,
		43.095051, 32.016098, 25.478582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426350, 31.261061, 25.658817>,  <43.685333, 31.902494, 25.837278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426350, 31.261061, 25.658817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.267200, 31.516203, 25.395050>,  <43.171711, 31.669289, 25.236790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.267200, 31.516203, 25.395050>,  <43.426350, 31.261061, 25.658817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267200, 31.516203, 25.395050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174612, -0.652972, -0.736979,
		-0.900669, -0.408368, 0.148424,
		-0.397875, 0.637858, -0.659418,
		43.147839, 31.707560, 25.197224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042690, 30.672356, 25.894480>,  <43.426350, 31.261061, 25.658817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042690, 30.672356, 25.894480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.948151, 30.283846, 25.905527>,  <42.891426, 30.050739, 25.912155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.948151, 30.283846, 25.905527>,  <43.042690, 30.672356, 25.894480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948151, 30.283846, 25.905527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545900, 0.156245, 0.823153,
		-0.803824, 0.179471, -0.567148,
		-0.236346, -0.971276, 0.027621,
		42.877247, 29.992462, 25.913813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275269, 30.691648, 26.031172>,  <43.042690, 30.672356, 25.894480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275269, 30.691648, 26.031172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.429623, 30.330891, 26.108816>,  <42.522236, 30.114437, 26.155403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.429623, 30.330891, 26.108816>,  <42.275269, 30.691648, 26.031172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429623, 30.330891, 26.108816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547984, -0.054815, 0.834691,
		-0.742161, -0.428468, -0.515376,
		0.385888, -0.901893, 0.194112,
		42.545387, 30.060322, 26.167049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740479, 30.364471, 26.126730>,  <42.275269, 30.691648, 26.031172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740479, 30.364471, 26.126730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.015381, 30.135721, 26.305899>,  <42.180325, 29.998470, 26.413399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.015381, 30.135721, 26.305899>,  <41.740479, 30.364471, 26.126730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015381, 30.135721, 26.305899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517987, 0.046494, 0.854124,
		-0.509279, -0.819021, -0.264270,
		0.687259, -0.571876, 0.447921,
		42.221558, 29.964159, 26.440275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352001, 29.788864, 26.515604>,  <41.740479, 30.364471, 26.126730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352001, 29.788864, 26.515604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.726025, 29.796465, 26.657194>,  <41.950439, 29.801025, 26.742149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.726025, 29.796465, 26.657194>,  <41.352001, 29.788864, 26.515604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726025, 29.796465, 26.657194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347091, -0.153830, 0.925129,
		0.072033, -0.987914, -0.137245,
		0.935061, 0.019003, 0.353977,
		42.006542, 29.802166, 26.763388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403828, 29.265991, 27.011738>,  <41.352001, 29.788864, 26.515604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403828, 29.265991, 27.011738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.700737, 29.524921, 27.081017>,  <41.878883, 29.680279, 27.122583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.700737, 29.524921, 27.081017>,  <41.403828, 29.265991, 27.011738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700737, 29.524921, 27.081017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268243, 0.050185, 0.962043,
		0.614062, -0.760561, 0.210892,
		0.742276, 0.647324, 0.173198,
		41.923420, 29.719118, 27.132977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777885, 28.930105, 27.587496>,  <41.403828, 29.265991, 27.011738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777885, 28.930105, 27.587496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.890812, 29.313509, 27.571718>,  <41.958569, 29.543552, 27.562252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.890812, 29.313509, 27.571718>,  <41.777885, 28.930105, 27.587496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890812, 29.313509, 27.571718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264670, 0.117345, 0.957173,
		0.922090, -0.259782, 0.286817,
		0.282313, 0.958511, -0.039446,
		41.975506, 29.601063, 27.559885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099770, 28.942171, 28.179760>,  <41.777885, 28.930105, 27.587496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099770, 28.942171, 28.179760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.065990, 29.329556, 28.085991>,  <42.045723, 29.561987, 28.029730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.065990, 29.329556, 28.085991>,  <42.099770, 28.942171, 28.179760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065990, 29.329556, 28.085991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552553, 0.150260, 0.819821,
		0.829188, 0.198763, 0.522436,
		-0.084449, 0.968460, -0.234421,
		42.040657, 29.620094, 28.015665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342663, 29.425617, 28.720903>,  <42.099770, 28.942171, 28.179760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342663, 29.425617, 28.720903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.064594, 29.618324, 28.507496>,  <41.897755, 29.733948, 28.379452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.064594, 29.618324, 28.507496>,  <42.342663, 29.425617, 28.720903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064594, 29.618324, 28.507496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505589, 0.199912, 0.839294,
		0.511001, 0.853192, 0.104604,
		-0.695167, 0.481767, -0.533520,
		41.856045, 29.762854, 28.347441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937065, 29.590837, 29.072989>,  <42.342663, 29.425617, 28.720903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937065, 29.590837, 29.072989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.214741, 29.538483, 29.356108>,  <43.381344, 29.507069, 29.525978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.214741, 29.538483, 29.356108>,  <42.937065, 29.590837, 29.072989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214741, 29.538483, 29.356108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708928, -0.045911, -0.703785,
		0.124613, 0.990333, 0.060920,
		0.694185, -0.130888, 0.707797,
		43.422997, 29.499216, 29.568447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453629, 30.022263, 28.924932>,  <42.937065, 29.590837, 29.072989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453629, 30.022263, 28.924932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.604408, 29.735065, 29.158991>,  <43.694874, 29.562746, 29.299425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.604408, 29.735065, 29.158991>,  <43.453629, 30.022263, 28.924932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604408, 29.735065, 29.158991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695914, -0.197361, -0.690472,
		0.611241, 0.667482, 0.425268,
		0.376946, -0.717995, 0.585145,
		43.717491, 29.519667, 29.334534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220783, 30.075733, 28.878660>,  <43.453629, 30.022263, 28.924932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220783, 30.075733, 28.878660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.133224, 29.704411, 28.998882>,  <44.080688, 29.481617, 29.071014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.133224, 29.704411, 28.998882>,  <44.220783, 30.075733, 28.878660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133224, 29.704411, 28.998882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656604, -0.367989, -0.658373,
		0.721772, 0.053228, 0.690081,
		-0.218898, -0.928305, 0.300554,
		44.067554, 29.425919, 29.089048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803036, 29.660997, 29.052149>,  <44.220783, 30.075733, 28.878660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803036, 29.660997, 29.052149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.551872, 29.362267, 28.964535>,  <44.401173, 29.183027, 28.911966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.551872, 29.362267, 28.964535>,  <44.803036, 29.660997, 29.052149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551872, 29.362267, 28.964535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690675, -0.404983, -0.599130,
		0.358741, -0.527483, 0.770108,
		-0.627912, -0.746827, -0.219035,
		44.363499, 29.138218, 28.898825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217464, 28.993246, 29.108051>,  <44.803036, 29.660997, 29.052149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217464, 28.993246, 29.108051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.913963, 28.907963, 28.861855>,  <44.731861, 28.856792, 28.714136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.913963, 28.907963, 28.861855>,  <45.217464, 28.993246, 29.108051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913963, 28.907963, 28.861855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629376, -0.483468, -0.608395,
		-0.167857, -0.849000, 0.501022,
		-0.758756, -0.213208, -0.615493,
		44.686337, 28.844000, 28.677206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448612, 28.393024, 28.801670>,  <45.217464, 28.993246, 29.108051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448612, 28.393024, 28.801670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.127094, 28.464920, 28.574829>,  <44.934181, 28.508059, 28.438725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.127094, 28.464920, 28.574829>,  <45.448612, 28.393024, 28.801670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127094, 28.464920, 28.574829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432221, -0.478568, -0.764302,
		-0.408772, -0.859457, 0.306984,
		-0.803797, 0.179740, -0.567101,
		44.885956, 28.518843, 28.404699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316986, 27.748045, 28.605877>,  <45.448612, 28.393024, 28.801670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316986, 27.748045, 28.605877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.152954, 27.993835, 28.336283>,  <45.054535, 28.141310, 28.174526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.152954, 27.993835, 28.336283>,  <45.316986, 27.748045, 28.605877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152954, 27.993835, 28.336283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423036, -0.526532, -0.737431,
		-0.808009, -0.587523, -0.044027,
		-0.410076, 0.614476, -0.673986,
		45.029930, 28.178179, 28.134087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139183, 27.312201, 28.062334>,  <45.316986, 27.748045, 28.605877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139183, 27.312201, 28.062334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.164272, 27.677319, 27.900904>,  <45.179325, 27.896389, 27.804045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.164272, 27.677319, 27.900904>,  <45.139183, 27.312201, 28.062334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164272, 27.677319, 27.900904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304908, -0.402567, -0.863117,
		-0.950314, -0.068914, -0.303569,
		0.062726, 0.912793, -0.403577,
		45.183090, 27.951157, 27.779831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633202, 27.328588, 27.481453>,  <45.139183, 27.312201, 28.062334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633202, 27.328588, 27.481453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.919949, 27.601198, 27.422634>,  <45.091995, 27.764765, 27.387342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.919949, 27.601198, 27.422634>,  <44.633202, 27.328588, 27.481453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919949, 27.601198, 27.422634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053660, -0.264214, -0.962970,
		-0.695140, 0.682433, -0.225977,
		0.716869, 0.681525, -0.147046,
		45.135010, 27.805656, 27.378521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.554577, 36.624653, 38.443089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873341, 36.853291, 38.364887>,  <37.064598, 36.990475, 38.317966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873341, 36.853291, 38.364887>,  <36.554577, 36.624653, 38.443089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873341, 36.853291, 38.364887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377476, -0.723818, -0.577580,
		-0.471650, 0.386479, -0.792578,
		0.796905, 0.571595, -0.195502,
		37.112411, 37.024769, 38.306236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576290, 36.569645, 37.741379>,  <36.554577, 36.624653, 38.443089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576290, 36.569645, 37.741379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945786, 36.700459, 37.821133>,  <37.167484, 36.778946, 37.868984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945786, 36.700459, 37.821133>,  <36.576290, 36.569645, 37.741379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945786, 36.700459, 37.821133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376512, -0.679751, -0.629426,
		-0.070306, 0.656498, -0.751044,
		0.923740, 0.327029, 0.199389,
		37.222908, 36.798569, 37.880951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931450, 36.507874, 37.150444>,  <36.576290, 36.569645, 37.741379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931450, 36.507874, 37.150444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236721, 36.554573, 37.404667>,  <37.419884, 36.582592, 37.557201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236721, 36.554573, 37.404667>,  <36.931450, 36.507874, 37.150444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236721, 36.554573, 37.404667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567155, -0.592363, -0.572226,
		0.309673, 0.797168, -0.518292,
		0.763176, 0.116748, 0.635556,
		37.465675, 36.589596, 37.595333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466999, 36.656704, 36.785271>,  <36.931450, 36.507874, 37.150444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466999, 36.656704, 36.785271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582291, 36.465759, 37.117306>,  <37.651466, 36.351192, 37.316528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582291, 36.465759, 37.117306>,  <37.466999, 36.656704, 36.785271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582291, 36.465759, 37.117306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502762, -0.662336, -0.555466,
		0.814958, 0.577437, 0.049099,
		0.288226, -0.477366, 0.830088,
		37.668758, 36.322548, 37.366333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044106, 36.282021, 36.514416>,  <37.466999, 36.656704, 36.785271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044106, 36.282021, 36.514416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035381, 36.136250, 36.886806>,  <38.030148, 36.048786, 37.110241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035381, 36.136250, 36.886806>,  <38.044106, 36.282021, 36.514416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035381, 36.136250, 36.886806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585212, -0.759650, -0.283653,
		0.810587, 0.538631, 0.229838,
		-0.021812, -0.364429, 0.930976,
		38.028839, 36.026920, 37.166100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723831, 36.251762, 36.871784>,  <38.044106, 36.282021, 36.514416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723831, 36.251762, 36.871784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.487320, 35.972301, 37.032917>,  <38.345413, 35.804623, 37.129597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.487320, 35.972301, 37.032917>,  <38.723831, 36.251762, 36.871784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487320, 35.972301, 37.032917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646521, -0.709224, -0.281092,
		0.482082, 0.094235, 0.871043,
		-0.591276, -0.698657, 0.402829,
		38.309937, 35.762703, 37.153767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218002, 35.826797, 37.110989>,  <38.723831, 36.251762, 36.871784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218002, 35.826797, 37.110989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.886528, 35.602932, 37.107986>,  <38.687645, 35.468613, 37.106186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.886528, 35.602932, 37.107986>,  <39.218002, 35.826797, 37.110989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886528, 35.602932, 37.107986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514216, -0.755955, -0.405111,
		0.221054, -0.339568, 0.914237,
		-0.828684, -0.559667, -0.007504,
		38.637924, 35.435032, 37.105736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457527, 35.191792, 37.379921>,  <39.218002, 35.826797, 37.110989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457527, 35.191792, 37.379921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.113194, 35.073673, 37.214146>,  <38.906593, 35.002800, 37.114681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.113194, 35.073673, 37.214146>,  <39.457527, 35.191792, 37.379921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113194, 35.073673, 37.214146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483602, -0.728220, -0.485617,
		-0.158402, -0.618461, 0.769685,
		-0.860836, -0.295299, -0.414440,
		38.854942, 34.985085, 37.089813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339962, 34.489552, 37.580502>,  <39.457527, 35.191792, 37.379921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339962, 34.489552, 37.580502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.160133, 34.598763, 37.240303>,  <39.052235, 34.664288, 37.036186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.160133, 34.598763, 37.240303>,  <39.339962, 34.489552, 37.580502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160133, 34.598763, 37.240303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548619, -0.666994, -0.504119,
		-0.704911, -0.693237, 0.150078,
		-0.449575, 0.273024, -0.850494,
		39.025261, 34.680668, 36.985153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145317, 33.926407, 37.391724>,  <39.339962, 34.489552, 37.580502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145317, 33.926407, 37.391724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.130348, 34.116310, 37.039997>,  <39.121368, 34.230251, 36.828960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.130348, 34.116310, 37.039997>,  <39.145317, 33.926407, 37.391724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130348, 34.116310, 37.039997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345405, -0.819556, -0.457191,
		-0.937707, -0.320831, -0.133314,
		-0.037423, 0.474759, -0.879320,
		39.119122, 34.258739, 36.776199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719608, 33.502327, 36.909985>,  <39.145317, 33.926407, 37.391724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719608, 33.502327, 36.909985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.950169, 33.728157, 36.673672>,  <39.088505, 33.863655, 36.531883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.950169, 33.728157, 36.673672>,  <38.719608, 33.502327, 36.909985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950169, 33.728157, 36.673672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294140, -0.817843, -0.494586,
		-0.762395, 0.111307, -0.637468,
		0.576399, 0.564575, -0.590779,
		39.123089, 33.897530, 36.496437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575771, 33.414532, 36.097179>,  <38.719608, 33.502327, 36.909985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575771, 33.414532, 36.097179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.952522, 33.540211, 36.144756>,  <39.178574, 33.615620, 36.173302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.952522, 33.540211, 36.144756>,  <38.575771, 33.414532, 36.097179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952522, 33.540211, 36.144756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331568, -0.812319, -0.479793,
		-0.054128, 0.491344, -0.869282,
		0.941877, 0.314196, 0.118944,
		39.235085, 33.634468, 36.180439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290989, 33.524094, 35.447929>,  <38.575771, 33.414532, 36.097179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290989, 33.524094, 35.447929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970177, 33.473824, 35.214367>,  <37.777687, 33.443661, 35.074230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970177, 33.473824, 35.214367>,  <38.290989, 33.524094, 35.447929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970177, 33.473824, 35.214367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435167, 0.792580, 0.427139,
		0.409109, 0.596676, -0.690368,
		-0.802035, -0.125679, -0.583905,
		37.729565, 33.436119, 35.039196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986347, 34.191986, 35.353195>,  <38.290989, 33.524094, 35.447929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986347, 34.191986, 35.353195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684494, 33.953915, 35.242710>,  <37.503384, 33.811073, 35.176418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684494, 33.953915, 35.242710>,  <37.986347, 34.191986, 35.353195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684494, 33.953915, 35.242710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644942, 0.595368, 0.479151,
		-0.120732, 0.539724, -0.833140,
		-0.754634, -0.595176, -0.276211,
		37.458103, 33.775360, 35.159847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481380, 34.639576, 34.981182>,  <37.986347, 34.191986, 35.353195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481380, 34.639576, 34.981182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288380, 34.314148, 35.110977>,  <37.172581, 34.118889, 35.188854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288380, 34.314148, 35.110977>,  <37.481380, 34.639576, 34.981182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288380, 34.314148, 35.110977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702697, 0.580705, 0.411094,
		-0.522885, -0.029660, -0.851887,
		-0.482502, -0.813573, 0.324483,
		37.143627, 34.070076, 35.208321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877235, 34.867004, 34.776985>,  <37.481380, 34.639576, 34.981182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877235, 34.867004, 34.776985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799896, 34.580479, 35.045166>,  <36.753494, 34.408562, 35.206074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799896, 34.580479, 35.045166>,  <36.877235, 34.867004, 34.776985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799896, 34.580479, 35.045166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790512, 0.518486, 0.325979,
		-0.581125, -0.466976, -0.666504,
		-0.193349, -0.716314, 0.670456,
		36.741890, 34.365585, 35.246304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186092, 34.671127, 34.714344>,  <36.877235, 34.867004, 34.776985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186092, 34.671127, 34.714344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257431, 34.551327, 35.089256>,  <36.300232, 34.479446, 35.314205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257431, 34.551327, 35.089256>,  <36.186092, 34.671127, 34.714344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257431, 34.551327, 35.089256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847822, 0.436674, 0.300856,
		-0.499392, -0.848302, -0.176045,
		0.178342, -0.299500, 0.937280,
		36.310932, 34.461475, 35.370441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508488, 34.620396, 34.916298>,  <36.186092, 34.671127, 34.714344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508488, 34.620396, 34.916298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711594, 34.632645, 35.260677>,  <35.833458, 34.639996, 35.467304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711594, 34.632645, 35.260677>,  <35.508488, 34.620396, 34.916298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711594, 34.632645, 35.260677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801190, 0.384121, 0.458852,
		-0.316657, -0.922775, 0.219579,
		0.507762, 0.030626, 0.860953,
		35.863922, 34.641834, 35.518963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086922, 34.284763, 35.556614>,  <35.508488, 34.620396, 34.916298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086922, 34.284763, 35.556614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369984, 34.514431, 35.721321>,  <35.539822, 34.652233, 35.820145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369984, 34.514431, 35.721321>,  <35.086922, 34.284763, 35.556614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369984, 34.514431, 35.721321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693292, 0.451847, 0.561409,
		0.136288, -0.682760, 0.717819,
		0.707652, 0.574172, 0.411770,
		35.582279, 34.686684, 35.844852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993416, 34.281403, 36.312889>,  <35.086922, 34.284763, 35.556614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993416, 34.281403, 36.312889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183430, 34.619099, 36.213619>,  <35.297440, 34.821716, 36.154057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183430, 34.619099, 36.213619>,  <34.993416, 34.281403, 36.312889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183430, 34.619099, 36.213619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563121, 0.508369, 0.651503,
		0.676191, -0.169738, 0.716906,
		0.475038, 0.844245, -0.248172,
		35.325943, 34.872372, 36.139168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020618, 34.598133, 36.907909>,  <34.993416, 34.281403, 36.312889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020618, 34.598133, 36.907909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119431, 34.888855, 36.651554>,  <35.178719, 35.063286, 36.497742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119431, 34.888855, 36.651554>,  <35.020618, 34.598133, 36.907909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119431, 34.888855, 36.651554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607607, 0.631392, 0.481828,
		0.754843, 0.270380, 0.597584,
		0.247033, 0.726801, -0.640886,
		35.193542, 35.106895, 36.459290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069733, 35.138386, 37.331974>,  <35.020618, 34.598133, 36.907909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069733, 35.138386, 37.331974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016365, 35.288795, 36.965195>,  <34.984344, 35.379044, 36.745125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016365, 35.288795, 36.965195>,  <35.069733, 35.138386, 37.331974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016365, 35.288795, 36.965195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597316, 0.707785, 0.377167,
		0.790830, 0.598032, 0.130173,
		-0.133423, 0.376029, -0.916952,
		34.976337, 35.401604, 36.690109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166241, 35.858284, 37.411236>,  <35.069733, 35.138386, 37.331974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166241, 35.858284, 37.411236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936317, 35.797367, 37.089638>,  <34.798363, 35.760815, 36.896679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936317, 35.797367, 37.089638>,  <35.166241, 35.858284, 37.411236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936317, 35.797367, 37.089638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620721, 0.721372, 0.307129,
		0.533204, 0.675595, -0.509181,
		-0.574804, -0.152296, -0.803994,
		34.763878, 35.751678, 36.848438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980137, 36.548103, 37.210312>,  <35.166241, 35.858284, 37.411236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980137, 36.548103, 37.210312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.730640, 36.280209, 37.049114>,  <34.580944, 36.119473, 36.952396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.730640, 36.280209, 37.049114>,  <34.980137, 36.548103, 37.210312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730640, 36.280209, 37.049114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774495, 0.599086, 0.203110,
		0.105400, 0.438807, -0.892378,
		-0.623737, -0.669735, -0.402998,
		34.543518, 36.079288, 36.928215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640072, 36.962597, 36.910889>,  <34.980137, 36.548103, 37.210312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640072, 36.962597, 36.910889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.404583, 36.639748, 36.893181>,  <34.263290, 36.446037, 36.882557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.404583, 36.639748, 36.893181>,  <34.640072, 36.962597, 36.910889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404583, 36.639748, 36.893181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808335, 0.587811, 0.032771,
		-0.000430, 0.055074, -0.998482,
		-0.588723, -0.807122, -0.044265,
		34.227966, 36.397610, 36.879902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973598, 37.131294, 36.453831>,  <34.640072, 36.962597, 36.910889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973598, 37.131294, 36.453831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884686, 36.839199, 36.712242>,  <33.831337, 36.663944, 36.867287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884686, 36.839199, 36.712242>,  <33.973598, 37.131294, 36.453831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884686, 36.839199, 36.712242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831966, 0.487539, 0.264835,
		-0.508355, -0.478604, -0.715901,
		-0.222278, -0.730236, 0.646025,
		33.818001, 36.620129, 36.906048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323624, 36.975006, 36.346874>,  <33.973598, 37.131294, 36.453831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323624, 36.975006, 36.346874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434143, 36.897308, 36.723370>,  <33.500454, 36.850689, 36.949268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434143, 36.897308, 36.723370>,  <33.323624, 36.975006, 36.346874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434143, 36.897308, 36.723370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845272, 0.416943, 0.334175,
		-0.457353, -0.887935, -0.048986,
		0.276301, -0.194243, 0.941237,
		33.517033, 36.839035, 37.005741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540741, 37.501240, 35.768700>,  <33.323624, 36.975006, 36.346874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540741, 37.501240, 35.768700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620167, 37.789223, 35.502697>,  <33.667820, 37.962013, 35.343094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620167, 37.789223, 35.502697>,  <33.540741, 37.501240, 35.768700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620167, 37.789223, 35.502697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485780, -0.661607, -0.571222,
		-0.851229, -0.209625, -0.481110,
		0.198563, 0.719954, -0.665011,
		33.679737, 38.005207, 35.303192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303959, 37.367413, 34.971573>,  <33.540741, 37.501240, 35.768700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303959, 37.367413, 34.971573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.629665, 37.595947, 35.012653>,  <33.825089, 37.733070, 35.037300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.629665, 37.595947, 35.012653>,  <33.303959, 37.367413, 34.971573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629665, 37.595947, 35.012653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490014, -0.581654, -0.649281,
		-0.311224, 0.579009, -0.753583,
		0.814264, 0.571339, 0.102698,
		33.873943, 37.767349, 35.043461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521584, 37.488018, 34.284863>,  <33.303959, 37.367413, 34.971573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521584, 37.488018, 34.284863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822330, 37.552998, 34.540459>,  <34.002777, 37.591988, 34.693817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822330, 37.552998, 34.540459>,  <33.521584, 37.488018, 34.284863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822330, 37.552998, 34.540459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637942, -0.424039, -0.642823,
		0.166530, 0.890955, -0.422454,
		0.751863, 0.162452, 0.638992,
		34.047890, 37.601734, 34.732155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001766, 37.932625, 34.014927>,  <33.521584, 37.488018, 34.284863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001766, 37.932625, 34.014927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201393, 37.727592, 34.294411>,  <34.321167, 37.604572, 34.462101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201393, 37.727592, 34.294411>,  <34.001766, 37.932625, 34.014927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201393, 37.727592, 34.294411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586769, -0.393442, -0.707747,
		0.637680, 0.763191, 0.104415,
		0.499065, -0.512584, 0.698707,
		34.351112, 37.573818, 34.504025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648678, 38.068985, 33.883198>,  <34.001766, 37.932625, 34.014927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648678, 38.068985, 33.883198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694721, 37.747707, 34.116993>,  <34.722347, 37.554939, 34.257271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694721, 37.747707, 34.116993>,  <34.648678, 38.068985, 33.883198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694721, 37.747707, 34.116993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657406, -0.379510, -0.650991,
		0.744692, 0.459182, 0.484340,
		0.115111, -0.803196, 0.584487,
		34.729256, 37.506748, 34.292339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353920, 37.826111, 34.050117>,  <34.648678, 38.068985, 33.883198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353920, 37.826111, 34.050117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151230, 37.485661, 34.104980>,  <35.029613, 37.281391, 34.137897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151230, 37.485661, 34.104980>,  <35.353920, 37.826111, 34.050117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151230, 37.485661, 34.104980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711316, -0.502658, -0.491289,
		0.487090, -0.151391, 0.860130,
		-0.506728, -0.851126, 0.137153,
		34.999210, 37.230324, 34.146126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874432, 37.308773, 34.318535>,  <35.353920, 37.826111, 34.050117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874432, 37.308773, 34.318535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559982, 37.137089, 34.140644>,  <35.371311, 37.034077, 34.033909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559982, 37.137089, 34.140644>,  <35.874432, 37.308773, 34.318535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559982, 37.137089, 34.140644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618061, -0.543450, -0.568034,
		0.002121, -0.721414, 0.692501,
		-0.786127, -0.429213, -0.444725,
		35.324142, 37.008324, 34.007225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214577, 36.699211, 34.119202>,  <35.874432, 37.308773, 34.318535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214577, 36.699211, 34.119202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861500, 36.654152, 33.936703>,  <35.649654, 36.627117, 33.827202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861500, 36.654152, 33.936703>,  <36.214577, 36.699211, 34.119202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861500, 36.654152, 33.936703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369151, -0.767000, -0.524821,
		-0.290826, -0.631681, 0.718609,
		-0.882693, -0.112644, -0.456250,
		35.596691, 36.620358, 33.799828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068272, 35.948586, 34.118313>,  <36.214577, 36.699211, 34.119202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068272, 35.948586, 34.118313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864025, 36.131500, 33.827065>,  <35.741478, 36.241249, 33.652317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864025, 36.131500, 33.827065>,  <36.068272, 35.948586, 34.118313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864025, 36.131500, 33.827065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271155, -0.717979, -0.641078,
		-0.815934, -0.524776, 0.242614,
		-0.510614, 0.457291, -0.728119,
		35.710842, 36.268688, 33.608627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643845, 35.454624, 33.782257>,  <36.068272, 35.948586, 34.118313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643845, 35.454624, 33.782257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717133, 35.755508, 33.529083>,  <35.761105, 35.936039, 33.377178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717133, 35.755508, 33.529083>,  <35.643845, 35.454624, 33.782257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717133, 35.755508, 33.529083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290194, -0.656529, -0.696245,
		-0.939265, -0.056109, -0.338575,
		0.183218, 0.752211, -0.632938,
		35.772099, 35.981171, 33.339203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399162, 35.100140, 33.154175>,  <35.643845, 35.454624, 33.782257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399162, 35.100140, 33.154175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583946, 35.439198, 33.049793>,  <35.694817, 35.642632, 32.987164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583946, 35.439198, 33.049793>,  <35.399162, 35.100140, 33.154175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583946, 35.439198, 33.049793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481101, -0.486676, -0.729170,
		-0.745074, 0.211303, -0.632626,
		0.461960, 0.847642, -0.260952,
		35.722534, 35.693489, 32.971508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277340, 35.278858, 32.446083>,  <35.399162, 35.100140, 33.154175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277340, 35.278858, 32.446083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633266, 35.423630, 32.557247>,  <35.846821, 35.510494, 32.623943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633266, 35.423630, 32.557247>,  <35.277340, 35.278858, 32.446083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633266, 35.423630, 32.557247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424798, -0.434589, -0.794153,
		-0.166654, 0.824705, -0.540452,
		0.889816, 0.361932, 0.277907,
		35.900211, 35.532207, 32.640621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498749, 35.491348, 31.818525>,  <35.277340, 35.278858, 32.446083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498749, 35.491348, 31.818525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.827141, 35.464588, 32.045334>,  <36.024178, 35.448532, 32.181419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.827141, 35.464588, 32.045334>,  <35.498749, 35.491348, 31.818525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827141, 35.464588, 32.045334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494529, -0.413040, -0.764748,
		0.285361, 0.908253, -0.306016,
		0.820981, -0.066896, 0.567023,
		36.073437, 35.444519, 32.215443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053013, 35.697754, 31.361395>,  <35.498749, 35.491348, 31.818525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053013, 35.697754, 31.361395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257889, 35.512852, 31.650942>,  <36.380814, 35.401909, 31.824669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257889, 35.512852, 31.650942>,  <36.053013, 35.697754, 31.361395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257889, 35.512852, 31.650942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717567, -0.232837, -0.656418,
		0.471978, 0.855630, 0.212447,
		0.512186, -0.462260, 0.723866,
		36.411545, 35.374172, 31.868101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803551, 35.816723, 31.178568>,  <36.053013, 35.697754, 31.361395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803551, 35.816723, 31.178568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803917, 35.510368, 31.435759>,  <36.804134, 35.326557, 31.590073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803917, 35.510368, 31.435759>,  <36.803551, 35.816723, 31.178568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803917, 35.510368, 31.435759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909883, -0.266112, -0.318271,
		0.414863, 0.585323, 0.696625,
		0.000911, -0.765886, 0.642976,
		36.804192, 35.280602, 31.628651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483910, 35.882290, 31.468090>,  <36.803551, 35.816723, 31.178568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483910, 35.882290, 31.468090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362423, 35.504242, 31.516268>,  <37.289532, 35.277412, 31.545174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362423, 35.504242, 31.516268>,  <37.483910, 35.882290, 31.468090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362423, 35.504242, 31.516268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896513, -0.326286, -0.299672,
		0.322524, 0.016963, 0.946409,
		-0.303716, -0.945119, 0.120442,
		37.271309, 35.220707, 31.552401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055401, 35.479519, 31.832863>,  <37.483910, 35.882290, 31.468090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055401, 35.479519, 31.832863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.840454, 35.193237, 31.654421>,  <37.711487, 35.021469, 31.547356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.840454, 35.193237, 31.654421>,  <38.055401, 35.479519, 31.832863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840454, 35.193237, 31.654421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835498, -0.379760, -0.397147,
		0.114828, -0.586131, 0.802038,
		-0.537362, -0.715705, -0.446104,
		37.679245, 34.978527, 31.520590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596546, 34.997391, 31.696850>,  <38.055401, 35.479519, 31.832863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596546, 34.997391, 31.696850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.283623, 34.888489, 31.472752>,  <38.095867, 34.823147, 31.338293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.283623, 34.888489, 31.472752>,  <38.596546, 34.997391, 31.696850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283623, 34.888489, 31.472752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599102, -0.575063, -0.557117,
		-0.170499, -0.771481, 0.612983,
		-0.782309, -0.272251, -0.560243,
		38.048931, 34.806812, 31.304678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593971, 34.281937, 31.627504>,  <38.596546, 34.997391, 31.696850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593971, 34.281937, 31.627504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.399616, 34.418041, 31.305477>,  <38.283001, 34.499702, 31.112261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.399616, 34.418041, 31.305477>,  <38.593971, 34.281937, 31.627504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399616, 34.418041, 31.305477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685402, -0.423221, -0.592543,
		-0.542342, -0.839705, -0.027578,
		-0.485890, 0.340263, -0.805066,
		38.253849, 34.520119, 31.063957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658878, 33.704319, 31.090168>,  <38.593971, 34.281937, 31.627504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658878, 33.704319, 31.090168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.550404, 34.017693, 30.866495>,  <38.485317, 34.205719, 30.732292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.550404, 34.017693, 30.866495>,  <38.658878, 33.704319, 31.090168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550404, 34.017693, 30.866495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572307, -0.335858, -0.748107,
		-0.773900, -0.522900, -0.357287,
		-0.271188, 0.783438, -0.559180,
		38.469048, 34.252724, 30.698742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670425, 33.428486, 30.464535>,  <38.658878, 33.704319, 31.090168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670425, 33.428486, 30.464535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.656925, 33.815178, 30.363108>,  <38.648823, 34.047192, 30.302252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.656925, 33.815178, 30.363108>,  <38.670425, 33.428486, 30.464535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656925, 33.815178, 30.363108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414944, -0.217258, -0.883528,
		-0.909221, -0.135038, -0.393805,
		-0.033753, 0.966729, -0.253568,
		38.646801, 34.105198, 30.287037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546432, 33.372665, 29.772457>,  <38.670425, 33.428486, 30.464535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546432, 33.372665, 29.772457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.707626, 33.734364, 29.828953>,  <38.804344, 33.951382, 29.862850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.707626, 33.734364, 29.828953>,  <38.546432, 33.372665, 29.772457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707626, 33.734364, 29.828953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532630, -0.106226, -0.839655,
		-0.744248, 0.413599, -0.524434,
		0.402989, 0.904241, 0.141237,
		38.828522, 34.005634, 29.871325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392200, 33.771835, 29.172619>,  <38.546432, 33.372665, 29.772457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392200, 33.771835, 29.172619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.702618, 33.951591, 29.349613>,  <38.888870, 34.059444, 29.455811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.702618, 33.951591, 29.349613>,  <38.392200, 33.771835, 29.172619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702618, 33.951591, 29.349613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534157, -0.095338, -0.839992,
		-0.335302, 0.888232, -0.314034,
		0.776047, 0.449394, 0.442488,
		38.935432, 34.086411, 29.482359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618118, 34.468609, 28.869652>,  <38.392200, 33.771835, 29.172619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618118, 34.468609, 28.869652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956287, 34.370838, 29.059608>,  <39.159187, 34.312176, 29.173582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956287, 34.370838, 29.059608>,  <38.618118, 34.468609, 28.869652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956287, 34.370838, 29.059608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494405, 0.021758, -0.868959,
		0.202060, 0.969425, 0.139238,
		0.845420, -0.244422, 0.474892,
		39.209915, 34.297512, 29.202076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134548, 34.845169, 28.612501>,  <38.618118, 34.468609, 28.869652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134548, 34.845169, 28.612501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397846, 34.608475, 28.798649>,  <39.555824, 34.466457, 28.910337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397846, 34.608475, 28.798649>,  <39.134548, 34.845169, 28.612501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397846, 34.608475, 28.798649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673843, 0.187518, -0.714684,
		0.335639, 0.784019, 0.522169,
		0.658242, -0.591736, 0.465367,
		39.595318, 34.430954, 28.938259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900162, 35.156132, 28.644327>,  <39.134548, 34.845169, 28.612501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900162, 35.156132, 28.644327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.930347, 34.759159, 28.683084>,  <39.948460, 34.520977, 28.706339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.930347, 34.759159, 28.683084>,  <39.900162, 35.156132, 28.644327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930347, 34.759159, 28.683084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755549, -0.006505, -0.655059,
		0.650731, 0.122641, 0.749339,
		0.075463, -0.992430, 0.096894,
		39.952988, 34.461430, 28.712152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632854, 34.936726, 28.892693>,  <39.900162, 35.156132, 28.644327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632854, 34.936726, 28.892693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.474358, 34.613052, 28.719160>,  <40.379257, 34.418846, 28.615042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.474358, 34.613052, 28.719160>,  <40.632854, 34.936726, 28.892693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474358, 34.613052, 28.719160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792827, -0.063256, -0.606155,
		0.463050, -0.584137, 0.666609,
		-0.396245, -0.809186, -0.433829,
		40.355484, 34.370296, 28.589012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315842, 34.905014, 29.386221>,  <40.632854, 34.936726, 28.892693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315842, 34.905014, 29.386221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.483711, 35.247089, 29.264545>,  <41.584435, 35.452335, 29.191540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.483711, 35.247089, 29.264545>,  <41.315842, 34.905014, 29.386221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483711, 35.247089, 29.264545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724028, 0.517517, 0.456025,
		0.547411, 0.028863, 0.836366,
		0.419671, 0.855186, -0.304192,
		41.609612, 35.503647, 29.173288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203434, 35.219627, 29.963814>,  <41.315842, 34.905014, 29.386221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203434, 35.219627, 29.963814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.304497, 35.510494, 29.708506>,  <41.365135, 35.685013, 29.555321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.304497, 35.510494, 29.708506>,  <41.203434, 35.219627, 29.963814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304497, 35.510494, 29.708506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673357, 0.605862, 0.423700,
		0.694806, 0.322733, 0.642720,
		0.252658, 0.727169, -0.638271,
		41.380295, 35.728645, 29.517025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385300, 35.806271, 30.293718>,  <41.203434, 35.219627, 29.963814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385300, 35.806271, 30.293718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.289562, 35.949001, 29.932524>,  <41.232121, 36.034641, 29.715807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.289562, 35.949001, 29.932524>,  <41.385300, 35.806271, 30.293718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289562, 35.949001, 29.932524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630643, 0.649999, 0.424018,
		0.738243, 0.670949, 0.069458,
		-0.239348, 0.356832, -0.902986,
		41.217758, 36.056049, 29.661629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476830, 36.531303, 30.293663>,  <41.385300, 35.806271, 30.293718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476830, 36.531303, 30.293663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.208958, 36.436386, 30.012177>,  <41.048233, 36.379436, 29.843285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.208958, 36.436386, 30.012177>,  <41.476830, 36.531303, 30.293663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208958, 36.436386, 30.012177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637765, 0.669259, 0.381247,
		0.380501, 0.704120, -0.599528,
		-0.669683, -0.237293, -0.703716,
		41.008053, 36.365200, 29.801062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221531, 37.151695, 30.047829>,  <41.476830, 36.531303, 30.293663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221531, 37.151695, 30.047829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.946804, 36.888660, 29.923979>,  <40.781967, 36.730839, 29.849669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.946804, 36.888660, 29.923979>,  <41.221531, 37.151695, 30.047829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946804, 36.888660, 29.923979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720838, 0.561657, 0.406120,
		-0.093157, 0.502117, -0.859768,
		-0.686815, -0.657586, -0.309623,
		40.740761, 36.691383, 29.831093>
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
