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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.426654, 3.663083, 5.500264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.275169, 3.413330, 5.773533>,  <4.184278, 3.263478, 5.937494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.275169, 3.413330, 5.773533>,  <4.426654, 3.663083, 5.500264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.275169, 3.413330, 5.773533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321948, -0.603179, -0.729743,
		0.867714, -0.496308, 0.027413,
		-0.378712, -0.624382, 0.683172,
		4.161556, 3.226016, 5.978485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.788128, 3.043802, 5.459847>,  <4.426654, 3.663083, 5.500264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.788128, 3.043802, 5.459847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.404839, 3.013077, 5.570053>,  <4.174865, 2.994642, 5.636177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.404839, 3.013077, 5.570053>,  <4.788128, 3.043802, 5.459847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.404839, 3.013077, 5.570053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160612, -0.652552, -0.740527,
		0.236669, -0.753841, 0.612953,
		-0.958223, -0.076812, 0.275514,
		4.117372, 2.990033, 5.652708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.705335, 2.473494, 5.828044>,  <4.788128, 3.043802, 5.459847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.705335, 2.473494, 5.828044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.424324, 2.602135, 5.574106>,  <4.255717, 2.679319, 5.421744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.424324, 2.602135, 5.574106>,  <4.705335, 2.473494, 5.828044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.424324, 2.602135, 5.574106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046016, -0.869670, -0.491484,
		-0.710166, -0.374494, 0.596169,
		-0.702529, 0.321602, -0.634843,
		4.213566, 2.698615, 5.383653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.339505, 1.943645, 5.497455>,  <4.705335, 2.473494, 5.828044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.339505, 1.943645, 5.497455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.282845, 2.211884, 5.206186>,  <4.248848, 2.372827, 5.031425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.282845, 2.211884, 5.206186>,  <4.339505, 1.943645, 5.497455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.282845, 2.211884, 5.206186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204244, -0.739560, -0.641354,
		-0.968617, 0.057875, 0.241726,
		-0.141652, 0.670597, -0.728171,
		4.240349, 2.413063, 4.987735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.650271, 1.970177, 5.246757>,  <4.339505, 1.943645, 5.497455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.650271, 1.970177, 5.246757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.885513, 2.078629, 4.941963>,  <4.026659, 2.143699, 4.759087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.885513, 2.078629, 4.941963>,  <3.650271, 1.970177, 5.246757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.885513, 2.078629, 4.941963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313114, -0.792343, -0.523595,
		-0.745715, 0.546517, -0.381088,
		0.588107, 0.271128, -0.761984,
		4.061945, 2.159967, 4.713368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.197939, 2.148951, 4.562729>,  <3.650271, 1.970177, 5.246757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.197939, 2.148951, 4.562729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.573662, 2.081772, 4.443066>,  <3.799096, 2.041464, 4.371268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.573662, 2.081772, 4.443066>,  <3.197939, 2.148951, 4.562729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.573662, 2.081772, 4.443066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340848, -0.556091, -0.758015,
		-0.039052, 0.813976, -0.579585,
		0.939307, -0.167948, -0.299158,
		3.855454, 2.031388, 4.353318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.066535, 2.154804, 3.799091>,  <3.197939, 2.148951, 4.562729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.066535, 2.154804, 3.799091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.412216, 1.969406, 3.877399>,  <3.619625, 1.858167, 3.924384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.412216, 1.969406, 3.877399>,  <3.066535, 2.154804, 3.799091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.412216, 1.969406, 3.877399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216682, -0.694009, -0.686586,
		0.454096, 0.550929, -0.700196,
		0.864202, -0.463496, 0.195770,
		3.671477, 1.830357, 3.936131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.357811, 1.973900, 3.184348>,  <3.066535, 2.154804, 3.799091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.357811, 1.973900, 3.184348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.597427, 1.734062, 3.396626>,  <3.741197, 1.590160, 3.523992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.597427, 1.734062, 3.396626>,  <3.357811, 1.973900, 3.184348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.597427, 1.734062, 3.396626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181511, -0.543834, -0.819328,
		0.779874, 0.587138, -0.216946,
		0.599041, -0.599595, 0.530694,
		3.777140, 1.554184, 3.555834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.823716, 0.257096, 3.346633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.220215, 0.266022, 3.294584>,  <3.458114, 0.271377, 3.263355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.220215, 0.266022, 3.294584>,  <2.823716, 0.257096, 3.346633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.220215, 0.266022, 3.294584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052144, 0.839304, 0.541157,
		0.121288, -0.543205, 0.830794,
		0.991247, 0.022315, -0.130122,
		3.517589, 0.272716, 3.255548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.085658, 0.460437, 4.013956>,  <2.823716, 0.257096, 3.346633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.085658, 0.460437, 4.013956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.394974, 0.501991, 3.763762>,  <3.580563, 0.526924, 3.613645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.394974, 0.501991, 3.763762>,  <3.085658, 0.460437, 4.013956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.394974, 0.501991, 3.763762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385316, 0.706439, 0.593697,
		0.503544, -0.700109, 0.506252,
		0.773288, 0.103886, -0.625486,
		3.626960, 0.533157, 3.576116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.708105, 0.393455, 4.321381>,  <3.085658, 0.460437, 4.013956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.708105, 0.393455, 4.321381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.756958, 0.636803, 4.007700>,  <3.786270, 0.782811, 3.819492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.756958, 0.636803, 4.007700>,  <3.708105, 0.393455, 4.321381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.756958, 0.636803, 4.007700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355108, 0.711029, 0.606907,
		0.926813, -0.352599, -0.129198,
		0.122131, 0.608368, -0.784201,
		3.793597, 0.819313, 3.772439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.355944, 0.732260, 4.399640>,  <3.708105, 0.393455, 4.321381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.355944, 0.732260, 4.399640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.171906, 0.969093, 4.134989>,  <4.061482, 1.111193, 3.976198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.171906, 0.969093, 4.134989>,  <4.355944, 0.732260, 4.399640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.171906, 0.969093, 4.134989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473901, 0.793924, 0.380922,
		0.750819, -0.138285, -0.645870,
		-0.460096, 0.592082, -0.661627,
		4.033877, 1.146718, 3.936501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.840564, 1.271899, 4.204514>,  <4.355944, 0.732260, 4.399640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.840564, 1.271899, 4.204514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.485870, 1.424347, 4.099862>,  <4.273054, 1.515816, 4.037071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.485870, 1.424347, 4.099862>,  <4.840564, 1.271899, 4.204514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.485870, 1.424347, 4.099862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261401, 0.880169, 0.396198,
		0.381278, 0.282932, -0.880100,
		-0.886734, 0.381121, -0.261630,
		4.219850, 1.538683, 4.021373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.060102, 1.853869, 3.860205>,  <4.840564, 1.271899, 4.204514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.060102, 1.853869, 3.860205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.697304, 1.890923, 4.024537>,  <4.479625, 1.913154, 4.123136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.697304, 1.890923, 4.024537>,  <5.060102, 1.853869, 3.860205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.697304, 1.890923, 4.024537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317475, 0.791357, 0.522460,
		-0.276716, 0.604296, -0.747164,
		-0.906994, 0.092633, 0.410830,
		4.425206, 1.918712, 4.147786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.889421, 2.541118, 3.760184>,  <5.060102, 1.853869, 3.860205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.889421, 2.541118, 3.760184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.664742, 2.397858, 4.058505>,  <4.529933, 2.311901, 4.237498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.664742, 2.397858, 4.058505>,  <4.889421, 2.541118, 3.760184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.664742, 2.397858, 4.058505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198751, 0.816634, 0.541855,
		-0.803114, 0.452589, -0.387520,
		-0.561700, -0.358151, 0.745802,
		4.496232, 2.290412, 4.282246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.340474, 2.953364, 4.052549>,  <4.889421, 2.541118, 3.760184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.340474, 2.953364, 4.052549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.480042, 2.732422, 4.355378>,  <4.563782, 2.599857, 4.537076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.480042, 2.732422, 4.355378>,  <4.340474, 2.953364, 4.052549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.480042, 2.732422, 4.355378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039312, 0.815759, 0.577054,
		-0.936328, -0.171582, 0.306347,
		0.348918, -0.552356, 0.757073,
		4.584717, 2.566715, 4.582500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
