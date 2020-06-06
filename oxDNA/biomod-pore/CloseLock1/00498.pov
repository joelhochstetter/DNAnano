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
	<24.103811, 35.381939, 35.022869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326698, 35.061943, 35.111881>,  <24.460430, 34.869946, 35.165291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326698, 35.061943, 35.111881>,  <24.103811, 35.381939, 35.022869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326698, 35.061943, 35.111881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827917, 0.514685, -0.222829,
		0.063726, 0.308404, 0.949118,
		0.557218, -0.799991, 0.222534,
		24.493864, 34.821945, 35.178642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619398, 35.669300, 35.354382>,  <24.103811, 35.381939, 35.022869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619398, 35.669300, 35.354382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772270, 35.315182, 35.248405>,  <24.863993, 35.102711, 35.184822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772270, 35.315182, 35.248405>,  <24.619398, 35.669300, 35.354382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772270, 35.315182, 35.248405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737556, 0.464956, -0.489722,
		0.556733, -0.008245, 0.830651,
		0.382178, -0.885296, -0.264937,
		24.886923, 35.049595, 35.168926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387798, 35.662186, 35.323685>,  <24.619398, 35.669300, 35.354382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387798, 35.662186, 35.323685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275408, 35.390591, 35.052383>,  <25.207973, 35.227634, 34.889603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275408, 35.390591, 35.052383>,  <25.387798, 35.662186, 35.323685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275408, 35.390591, 35.052383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713987, 0.324362, -0.620493,
		0.641308, -0.658606, 0.393653,
		-0.280974, -0.678990, -0.678252,
		25.191116, 35.186893, 34.848907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960018, 35.180161, 34.887955>,  <25.387798, 35.662186, 35.323685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960018, 35.180161, 34.887955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639587, 35.264309, 34.663803>,  <25.447329, 35.314800, 34.529312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639587, 35.264309, 34.663803>,  <25.960018, 35.180161, 34.887955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639587, 35.264309, 34.663803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598043, 0.320373, -0.734647,
		0.024977, -0.923636, -0.382456,
		-0.801074, 0.210376, -0.560376,
		25.399265, 35.327423, 34.495689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136387, 34.913174, 34.214367>,  <25.960018, 35.180161, 34.887955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136387, 34.913174, 34.214367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832956, 35.169941, 34.169640>,  <25.650898, 35.324001, 34.142803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832956, 35.169941, 34.169640>,  <26.136387, 34.913174, 34.214367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832956, 35.169941, 34.169640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453599, 0.397045, -0.797874,
		-0.467772, -0.655970, -0.592362,
		-0.758576, 0.641918, -0.111821,
		25.605383, 35.362514, 34.136093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868958, 34.787319, 33.563423>,  <26.136387, 34.913174, 34.214367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868958, 34.787319, 33.563423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826639, 35.167233, 33.681217>,  <25.801249, 35.395180, 33.751892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826639, 35.167233, 33.681217>,  <25.868958, 34.787319, 33.563423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826639, 35.167233, 33.681217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577684, 0.299752, -0.759229,
		-0.809375, 0.089796, -0.580387,
		-0.105796, 0.949782, 0.294486,
		25.794901, 35.452168, 33.769562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735411, 35.202312, 32.972565>,  <25.868958, 34.787319, 33.563423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735411, 35.202312, 32.972565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908117, 35.459259, 33.225845>,  <26.011742, 35.613426, 33.377811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908117, 35.459259, 33.225845>,  <25.735411, 35.202312, 32.972565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908117, 35.459259, 33.225845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622886, 0.295390, -0.724402,
		-0.652372, 0.707185, -0.272580,
		0.431769, 0.642366, 0.633200,
		26.037647, 35.651970, 33.415806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868092, 35.801292, 32.601601>,  <25.735411, 35.202312, 32.972565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868092, 35.801292, 32.601601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107285, 35.717720, 32.911121>,  <26.250801, 35.667576, 33.096832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107285, 35.717720, 32.911121>,  <25.868092, 35.801292, 32.601601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107285, 35.717720, 32.911121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782182, -0.058614, -0.620287,
		0.174952, 0.976172, 0.128371,
		0.597982, -0.208930, 0.773799,
		26.286678, 35.655041, 33.143261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209780, 36.340542, 32.690071>,  <25.868092, 35.801292, 32.601601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209780, 36.340542, 32.690071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378345, 35.981339, 32.740662>,  <26.479485, 35.765816, 32.771015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378345, 35.981339, 32.740662>,  <26.209780, 36.340542, 32.690071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378345, 35.981339, 32.740662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628851, 0.188874, -0.754237,
		0.653420, 0.397382, 0.644305,
		0.421413, -0.898006, 0.126480,
		26.504768, 35.711937, 32.778606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853994, 36.443783, 32.707306>,  <26.209780, 36.340542, 32.690071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853994, 36.443783, 32.707306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849949, 36.058487, 32.599926>,  <26.847521, 35.827309, 32.535500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849949, 36.058487, 32.599926>,  <26.853994, 36.443783, 32.707306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849949, 36.058487, 32.599926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541628, 0.220391, -0.811213,
		0.840557, -0.153603, 0.519490,
		-0.010114, -0.963241, -0.268447,
		26.846914, 35.769516, 32.519390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521671, 36.224445, 32.532425>,  <26.853994, 36.443783, 32.707306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521671, 36.224445, 32.532425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293331, 35.953453, 32.346889>,  <27.156326, 35.790855, 32.235569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293331, 35.953453, 32.346889>,  <27.521671, 36.224445, 32.532425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293331, 35.953453, 32.346889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443462, 0.221029, -0.868612,
		0.690993, -0.701541, 0.174265,
		-0.570850, -0.677485, -0.463836,
		27.122076, 35.750206, 32.207737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963531, 35.875946, 32.004925>,  <27.521671, 36.224445, 32.532425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963531, 35.875946, 32.004925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587872, 35.781929, 31.904728>,  <27.362474, 35.725517, 31.844608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587872, 35.781929, 31.904728>,  <27.963531, 35.875946, 32.004925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587872, 35.781929, 31.904728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225349, 0.128795, -0.965728,
		0.259254, -0.963413, -0.067990,
		-0.939152, -0.235047, -0.250495,
		27.306126, 35.711414, 31.829580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053385, 35.638924, 31.380503>,  <27.963531, 35.875946, 32.004925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053385, 35.638924, 31.380503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657446, 35.691486, 31.358820>,  <27.419884, 35.723026, 31.345810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657446, 35.691486, 31.358820>,  <28.053385, 35.638924, 31.380503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657446, 35.691486, 31.358820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109377, 0.460533, -0.880878,
		-0.090793, -0.877862, -0.470229,
		-0.989845, 0.131409, -0.054205,
		27.360493, 35.730907, 31.342558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829834, 35.488949, 30.702894>,  <28.053385, 35.638924, 31.380503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829834, 35.488949, 30.702894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532583, 35.740749, 30.793663>,  <27.354233, 35.891830, 30.848124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532583, 35.740749, 30.793663>,  <27.829834, 35.488949, 30.702894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532583, 35.740749, 30.793663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070753, 0.411138, -0.908823,
		-0.665398, -0.659317, -0.350067,
		-0.743128, 0.629498, 0.226922,
		27.309645, 35.929600, 30.861740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377314, 35.575130, 30.106462>,  <27.829834, 35.488949, 30.702894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377314, 35.575130, 30.106462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313467, 35.906628, 30.321018>,  <27.275160, 36.105526, 30.449753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313467, 35.906628, 30.321018>,  <27.377314, 35.575130, 30.106462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313467, 35.906628, 30.321018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198609, 0.559206, -0.804887,
		-0.966994, -0.021941, -0.253853,
		-0.159616, 0.828739, 0.536391,
		27.265583, 36.155251, 30.481936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195011, 35.998760, 29.628056>,  <27.377314, 35.575130, 30.106462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195011, 35.998760, 29.628056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253412, 36.261726, 29.923754>,  <27.288454, 36.419506, 30.101173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253412, 36.261726, 29.923754>,  <27.195011, 35.998760, 29.628056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253412, 36.261726, 29.923754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172593, 0.718868, -0.673380,
		-0.974112, 0.225905, -0.008507,
		0.146004, 0.657416, 0.739248,
		27.297213, 36.458950, 30.145529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705196, 36.564114, 29.516081>,  <27.195011, 35.998760, 29.628056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705196, 36.564114, 29.516081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020569, 36.676437, 29.734995>,  <27.209793, 36.743832, 29.866344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020569, 36.676437, 29.734995>,  <26.705196, 36.564114, 29.516081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020569, 36.676437, 29.734995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242825, 0.675377, -0.696349,
		-0.565166, 0.681918, 0.464301,
		0.788431, 0.280808, 0.547287,
		27.257099, 36.760681, 29.899181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734695, 37.350288, 29.511755>,  <26.705196, 36.564114, 29.516081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734695, 37.350288, 29.511755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110903, 37.249706, 29.603142>,  <27.336626, 37.189358, 29.657974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110903, 37.249706, 29.603142>,  <26.734695, 37.350288, 29.511755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110903, 37.249706, 29.603142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339393, 0.664707, -0.665565,
		0.015499, 0.703515, 0.710512,
		0.940517, -0.251458, 0.228466,
		27.393059, 37.174271, 29.671682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056067, 37.981010, 29.486437>,  <26.734695, 37.350288, 29.511755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056067, 37.981010, 29.486437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378347, 37.744190, 29.493607>,  <27.571716, 37.602097, 29.497908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378347, 37.744190, 29.493607>,  <27.056067, 37.981010, 29.486437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378347, 37.744190, 29.493607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392171, 0.510530, -0.765220,
		0.443897, 0.623568, 0.643520,
		0.805703, -0.592049, 0.017923,
		27.620058, 37.566574, 29.498983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741465, 38.409775, 29.527973>,  <27.056067, 37.981010, 29.486437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741465, 38.409775, 29.527973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825966, 38.056599, 29.360264>,  <27.876667, 37.844692, 29.259638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825966, 38.056599, 29.360264>,  <27.741465, 38.409775, 29.527973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825966, 38.056599, 29.360264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352043, 0.468898, -0.810062,
		0.911831, 0.023528, 0.409890,
		0.211256, -0.882939, -0.419273,
		27.889343, 37.791718, 29.234482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461617, 38.481518, 29.419827>,  <27.741465, 38.409775, 29.527973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461617, 38.481518, 29.419827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324068, 38.193417, 29.178831>,  <28.241539, 38.020557, 29.034233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324068, 38.193417, 29.178831>,  <28.461617, 38.481518, 29.419827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324068, 38.193417, 29.178831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625377, 0.302958, -0.719111,
		0.700468, -0.624065, 0.346249,
		-0.343872, -0.720250, -0.602488,
		28.220907, 37.977341, 28.998085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142765, 38.166382, 29.126707>,  <28.461617, 38.481518, 29.419827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142765, 38.166382, 29.126707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858425, 38.047638, 28.871658>,  <28.687820, 37.976391, 28.718628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858425, 38.047638, 28.871658>,  <29.142765, 38.166382, 29.126707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858425, 38.047638, 28.871658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599894, 0.217364, -0.769987,
		0.367177, -0.929852, 0.023573,
		-0.710850, -0.296863, -0.637624,
		28.645170, 37.958580, 28.680370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496237, 37.580936, 28.696594>,  <29.142765, 38.166382, 29.126707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496237, 37.580936, 28.696594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175476, 37.707878, 28.494114>,  <28.983019, 37.784042, 28.372625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175476, 37.707878, 28.494114>,  <29.496237, 37.580936, 28.696594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175476, 37.707878, 28.494114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584060, 0.237990, -0.776038,
		-0.125808, -0.917958, -0.376199,
		-0.801901, 0.317355, -0.506202,
		28.934906, 37.803085, 28.342253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613819, 37.268784, 27.977924>,  <29.496237, 37.580936, 28.696594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613819, 37.268784, 27.977924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337439, 37.556755, 27.951744>,  <29.171610, 37.729538, 27.936037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337439, 37.556755, 27.951744>,  <29.613819, 37.268784, 27.977924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337439, 37.556755, 27.951744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420346, 0.326462, -0.846600,
		-0.588128, -0.612471, -0.528190,
		-0.690952, 0.719932, -0.065449,
		29.130154, 37.772736, 27.932110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321720, 37.122231, 27.358408>,  <29.613819, 37.268784, 27.977924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321720, 37.122231, 27.358408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236250, 37.504810, 27.437952>,  <29.184967, 37.734360, 27.485678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236250, 37.504810, 27.437952>,  <29.321720, 37.122231, 27.358408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236250, 37.504810, 27.437952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430298, 0.274898, -0.859811,
		-0.877032, -0.098153, -0.470298,
		-0.213677, 0.956450, 0.198859,
		29.172146, 37.791744, 27.497610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841354, 37.598637, 27.382830>,  <29.321720, 37.122231, 27.358408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841354, 37.598637, 27.382830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089996, 37.549126, 27.692225>,  <30.239182, 37.519417, 27.877861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089996, 37.549126, 27.692225>,  <29.841354, 37.598637, 27.382830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089996, 37.549126, 27.692225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459842, 0.857052, -0.232394,
		-0.634153, 0.500140, 0.589670,
		0.621607, -0.123782, 0.773487,
		30.276478, 37.511990, 27.924271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902714, 38.204605, 27.768528>,  <29.841354, 37.598637, 27.382830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902714, 38.204605, 27.768528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255981, 38.019127, 27.796810>,  <30.467941, 37.907841, 27.813780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255981, 38.019127, 27.796810>,  <29.902714, 38.204605, 27.768528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255981, 38.019127, 27.796810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465681, 0.884845, -0.013777,
		-0.056173, 0.045093, 0.997402,
		0.883168, -0.463697, 0.070704,
		30.520931, 37.880016, 27.818022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363998, 38.511528, 28.255762>,  <29.902714, 38.204605, 27.768528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363998, 38.511528, 28.255762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605209, 38.329258, 27.993856>,  <30.749935, 38.219894, 27.836712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605209, 38.329258, 27.993856>,  <30.363998, 38.511528, 28.255762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605209, 38.329258, 27.993856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546863, 0.833714, -0.076558,
		0.580773, -0.311900, 0.751945,
		0.603028, -0.455674, -0.654766,
		30.786118, 38.192554, 27.797426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972282, 38.447617, 28.498957>,  <30.363998, 38.511528, 28.255762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972282, 38.447617, 28.498957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051811, 38.456394, 28.107040>,  <31.099529, 38.461662, 27.871891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051811, 38.456394, 28.107040>,  <30.972282, 38.447617, 28.498957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051811, 38.456394, 28.107040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589694, 0.795838, 0.137487,
		0.782771, -0.605112, 0.145290,
		0.198822, 0.021945, -0.979790,
		31.111458, 38.462978, 27.813103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686262, 38.283092, 28.200794>,  <30.972282, 38.447617, 28.498957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686262, 38.283092, 28.200794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496397, 38.551292, 27.972715>,  <31.382479, 38.712212, 27.835869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496397, 38.551292, 27.972715>,  <31.686262, 38.283092, 28.200794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496397, 38.551292, 27.972715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704622, 0.677690, 0.210341,
		0.527450, -0.301931, -0.794125,
		-0.474662, 0.670502, -0.570195,
		31.353998, 38.752441, 27.801657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208649, 38.535183, 27.711926>,  <31.686262, 38.283092, 28.200794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208649, 38.535183, 27.711926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917681, 38.803215, 27.771057>,  <31.743101, 38.964035, 27.806536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917681, 38.803215, 27.771057>,  <32.208649, 38.535183, 27.711926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917681, 38.803215, 27.771057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685847, 0.716841, 0.125512,
		-0.021868, 0.192688, -0.981016,
		-0.727418, 0.670082, 0.147830,
		31.699455, 39.004238, 27.815407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304527, 39.114185, 27.253590>,  <32.208649, 38.535183, 27.711926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304527, 39.114185, 27.253590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120174, 39.243530, 27.584171>,  <32.009563, 39.321136, 27.782520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120174, 39.243530, 27.584171>,  <32.304527, 39.114185, 27.253590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120174, 39.243530, 27.584171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707886, 0.695605, 0.122598,
		-0.535241, 0.641538, -0.549496,
		-0.460883, 0.323362, 0.826452,
		31.981909, 39.340538, 27.832108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130737, 39.877018, 27.289873>,  <32.304527, 39.114185, 27.253590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130737, 39.877018, 27.289873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169529, 39.723015, 27.656994>,  <32.192806, 39.630611, 27.877266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169529, 39.723015, 27.656994>,  <32.130737, 39.877018, 27.289873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169529, 39.723015, 27.656994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733709, 0.650745, 0.195451,
		-0.672507, 0.654444, 0.345597,
		0.096984, -0.385010, 0.917803,
		32.198624, 39.607513, 27.932335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104111, 40.534996, 27.676256>,  <32.130737, 39.877018, 27.289873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104111, 40.534996, 27.676256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310116, 40.242023, 27.854383>,  <32.433720, 40.066242, 27.961260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310116, 40.242023, 27.854383>,  <32.104111, 40.534996, 27.676256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310116, 40.242023, 27.854383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676573, 0.666326, 0.313462,
		-0.526317, 0.139854, 0.838708,
		0.515014, -0.732428, 0.445320,
		32.464619, 40.022297, 27.987980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226078, 40.596024, 28.523235>,  <32.104111, 40.534996, 27.676256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226078, 40.596024, 28.523235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505081, 40.374928, 28.340826>,  <32.672485, 40.242268, 28.231380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505081, 40.374928, 28.340826>,  <32.226078, 40.596024, 28.523235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505081, 40.374928, 28.340826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712794, 0.469913, 0.520679,
		-0.073511, -0.688228, 0.721761,
		0.697510, -0.552742, -0.456022,
		32.714333, 40.209106, 28.204020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836601, 40.802094, 29.014961>,  <32.226078, 40.596024, 28.523235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836601, 40.802094, 29.014961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494949, 41.000256, 29.078262>,  <32.289959, 41.119152, 29.116243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494949, 41.000256, 29.078262>,  <32.836601, 40.802094, 29.014961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494949, 41.000256, 29.078262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252520, -0.661068, 0.706557,
		0.454647, 0.563527, 0.689734,
		-0.854125, 0.495405, 0.158251,
		32.238712, 41.148876, 29.125738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803631, 40.853638, 29.681728>,  <32.836601, 40.802094, 29.014961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803631, 40.853638, 29.681728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429794, 40.894264, 29.545362>,  <32.205494, 40.918640, 29.463543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429794, 40.894264, 29.545362>,  <32.803631, 40.853638, 29.681728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429794, 40.894264, 29.545362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330109, -0.604718, 0.724806,
		-0.132539, 0.789936, 0.598693,
		-0.934591, 0.101569, -0.340914,
		32.149418, 40.924736, 29.443089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527424, 41.239307, 30.246445>,  <32.803631, 40.853638, 29.681728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527424, 41.239307, 30.246445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240829, 41.049206, 30.042181>,  <32.068871, 40.935143, 29.919622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240829, 41.049206, 30.042181>,  <32.527424, 41.239307, 30.246445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240829, 41.049206, 30.042181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262541, -0.494498, 0.828579,
		-0.646310, 0.727736, 0.229528,
		-0.716488, -0.475259, -0.510660,
		32.025883, 40.906628, 29.888983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896336, 41.315182, 30.649830>,  <32.527424, 41.239307, 30.246445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896336, 41.315182, 30.649830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796692, 41.015499, 30.404346>,  <31.736906, 40.835690, 30.257057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796692, 41.015499, 30.404346>,  <31.896336, 41.315182, 30.649830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796692, 41.015499, 30.404346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493042, -0.447315, 0.746203,
		-0.833579, 0.488471, -0.257958,
		-0.249110, -0.749204, -0.613709,
		31.721958, 40.790737, 30.220234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282017, 41.041576, 30.967346>,  <31.896336, 41.315182, 30.649830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282017, 41.041576, 30.967346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392834, 40.755306, 30.710890>,  <31.459324, 40.583546, 30.557016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392834, 40.755306, 30.710890>,  <31.282017, 41.041576, 30.967346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392834, 40.755306, 30.710890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533275, -0.669583, 0.516987,
		-0.799291, 0.198679, -0.567151,
		0.277040, -0.715671, -0.641142,
		31.475946, 40.540604, 30.518547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637011, 40.732563, 30.752550>,  <31.282017, 41.041576, 30.967346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637011, 40.732563, 30.752550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933086, 40.470074, 30.693903>,  <31.110731, 40.312580, 30.658714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933086, 40.470074, 30.693903>,  <30.637011, 40.732563, 30.752550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933086, 40.470074, 30.693903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507793, -0.688468, 0.517839,
		-0.440759, -0.308846, -0.842820,
		0.740187, -0.656221, -0.146618,
		31.155142, 40.273209, 30.649918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324028, 40.178959, 30.403601>,  <30.637011, 40.732563, 30.752550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324028, 40.178959, 30.403601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653181, 40.063316, 30.599266>,  <30.850674, 39.993931, 30.716665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653181, 40.063316, 30.599266>,  <30.324028, 40.178959, 30.403601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653181, 40.063316, 30.599266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560802, -0.551772, 0.617291,
		0.091448, -0.782283, -0.616174,
		0.822884, -0.289102, 0.489165,
		30.900045, 39.976585, 30.746016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417883, 39.385021, 30.425201>,  <30.324028, 40.178959, 30.403601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417883, 39.385021, 30.425201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656374, 39.485996, 30.730040>,  <30.799469, 39.546581, 30.912943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656374, 39.485996, 30.730040>,  <30.417883, 39.385021, 30.425201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656374, 39.485996, 30.730040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471259, -0.658469, 0.586799,
		0.649946, -0.709010, -0.273634,
		0.596226, 0.252435, 0.762097,
		30.835241, 39.561726, 30.958668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321754, 38.851215, 30.832851>,  <30.417883, 39.385021, 30.425201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321754, 38.851215, 30.832851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518976, 39.090416, 31.085609>,  <30.637310, 39.233936, 31.237265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518976, 39.090416, 31.085609>,  <30.321754, 38.851215, 30.832851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518976, 39.090416, 31.085609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248770, -0.599082, 0.761061,
		0.833673, -0.532441, -0.146614,
		0.493054, 0.598003, 0.631894,
		30.666893, 39.269817, 31.275177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733465, 38.395794, 31.274597>,  <30.321754, 38.851215, 30.832851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733465, 38.395794, 31.274597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698206, 38.743904, 31.468445>,  <30.677050, 38.952770, 31.584753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698206, 38.743904, 31.468445>,  <30.733465, 38.395794, 31.274597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698206, 38.743904, 31.468445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267487, -0.489324, 0.830068,
		0.959521, -0.056459, 0.275920,
		-0.088150, 0.870272, 0.484619,
		30.671761, 39.004986, 31.613831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137564, 38.326508, 31.932384>,  <30.733465, 38.395794, 31.274597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137564, 38.326508, 31.932384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863483, 38.609669, 32.000935>,  <30.699036, 38.779568, 32.042065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863483, 38.609669, 32.000935>,  <31.137564, 38.326508, 31.932384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863483, 38.609669, 32.000935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286695, -0.478435, 0.830004,
		0.669557, 0.519586, 0.530777,
		-0.685201, 0.707906, 0.171376,
		30.657923, 38.822041, 32.052349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176861, 38.447388, 32.661953>,  <31.137564, 38.326508, 31.932384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176861, 38.447388, 32.661953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835245, 38.610073, 32.532219>,  <30.630276, 38.707684, 32.454376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835245, 38.610073, 32.532219>,  <31.176861, 38.447388, 32.661953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835245, 38.610073, 32.532219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454389, -0.279693, 0.845755,
		0.253266, 0.869686, 0.423677,
		-0.854041, 0.406715, -0.324339,
		30.579033, 38.732086, 32.434917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884338, 38.679844, 33.163086>,  <31.176861, 38.447388, 32.661953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884338, 38.679844, 33.163086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561766, 38.661613, 32.927258>,  <30.368223, 38.650673, 32.785759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561766, 38.661613, 32.927258>,  <30.884338, 38.679844, 33.163086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561766, 38.661613, 32.927258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548699, -0.314020, 0.774803,
		-0.220451, 0.948322, 0.228226,
		-0.806431, -0.045578, -0.589570,
		30.319836, 38.647942, 32.750385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262581, 39.122444, 33.428432>,  <30.884338, 38.679844, 33.163086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262581, 39.122444, 33.428432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139509, 38.831932, 33.182556>,  <30.065666, 38.657623, 33.035030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139509, 38.831932, 33.182556>,  <30.262581, 39.122444, 33.428432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139509, 38.831932, 33.182556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567705, -0.378313, 0.731157,
		-0.763573, 0.573926, -0.295915,
		-0.307681, -0.726283, -0.614690,
		30.047205, 38.614048, 32.998150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606585, 38.945915, 33.711658>,  <30.262581, 39.122444, 33.428432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606585, 38.945915, 33.711658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645239, 38.640869, 33.455818>,  <29.668432, 38.457844, 33.302315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645239, 38.640869, 33.455818>,  <29.606585, 38.945915, 33.711658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645239, 38.640869, 33.455818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655416, -0.532371, 0.535734,
		-0.749060, 0.367430, -0.551275,
		0.096638, -0.762611, -0.639598,
		29.674231, 38.412086, 33.263939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924603, 38.679829, 33.352638>,  <29.606585, 38.945915, 33.711658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924603, 38.679829, 33.352638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181379, 38.373249, 33.361271>,  <29.335445, 38.189301, 33.366451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181379, 38.373249, 33.361271>,  <28.924603, 38.679829, 33.352638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181379, 38.373249, 33.361271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640892, -0.520906, 0.563839,
		-0.420913, -0.375782, -0.825603,
		0.641942, -0.766450, 0.021579,
		29.373962, 38.143314, 33.367744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535744, 38.139717, 33.393272>,  <28.924603, 38.679829, 33.352638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535744, 38.139717, 33.393272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864365, 37.940990, 33.505146>,  <29.061537, 37.821754, 33.572269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864365, 37.940990, 33.505146>,  <28.535744, 38.139717, 33.393272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864365, 37.940990, 33.505146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568914, -0.682360, 0.459044,
		-0.037215, -0.536246, -0.843241,
		0.821555, -0.496815, 0.279684,
		29.110830, 37.791946, 33.589050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548462, 37.549389, 33.030319>,  <28.535744, 38.139717, 33.393272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548462, 37.549389, 33.030319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767010, 37.461998, 33.353737>,  <28.898138, 37.409561, 33.547787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767010, 37.461998, 33.353737>,  <28.548462, 37.549389, 33.030319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767010, 37.461998, 33.353737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667268, -0.697005, 0.262560,
		0.506196, -0.682971, -0.526608,
		0.546369, -0.218482, 0.808546,
		28.930920, 37.396454, 33.596302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452808, 36.895824, 33.111267>,  <28.548462, 37.549389, 33.030319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452808, 36.895824, 33.111267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665283, 36.932308, 33.448200>,  <28.792768, 36.954201, 33.650360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665283, 36.932308, 33.448200>,  <28.452808, 36.895824, 33.111267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665283, 36.932308, 33.448200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483737, -0.783565, 0.389902,
		0.695584, -0.614578, -0.372099,
		0.531189, 0.091212, 0.842329,
		28.824640, 36.959671, 33.700897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820698, 36.258007, 33.244736>,  <28.452808, 36.895824, 33.111267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820698, 36.258007, 33.244736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740816, 36.457874, 33.581890>,  <28.692888, 36.577793, 33.784184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740816, 36.457874, 33.581890>,  <28.820698, 36.258007, 33.244736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740816, 36.457874, 33.581890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525290, -0.780749, 0.338380,
		0.827157, -0.375183, 0.418389,
		-0.199703, 0.499669, 0.842882,
		28.680904, 36.607777, 33.834755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830658, 35.736835, 33.741634>,  <28.820698, 36.258007, 33.244736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830658, 35.736835, 33.741634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657017, 36.044083, 33.929909>,  <28.552832, 36.228432, 34.042873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657017, 36.044083, 33.929909>,  <28.830658, 35.736835, 33.741634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657017, 36.044083, 33.929909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441900, -0.636872, 0.631757,
		0.785034, 0.066250, 0.615900,
		-0.434103, 0.768117, 0.470691,
		28.526785, 36.274517, 34.071117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811312, 35.566662, 34.468353>,  <28.830658, 35.736835, 33.741634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811312, 35.566662, 34.468353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512699, 35.831432, 34.441372>,  <28.333532, 35.990295, 34.425182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512699, 35.831432, 34.441372>,  <28.811312, 35.566662, 34.468353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512699, 35.831432, 34.441372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640644, -0.687731, 0.341469,
		0.179636, 0.298131, 0.937469,
		-0.746530, 0.661924, -0.067454,
		28.288740, 36.030010, 34.421135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361221, 35.440586, 35.142574>,  <28.811312, 35.566662, 34.468353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361221, 35.440586, 35.142574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132271, 35.641743, 34.883503>,  <27.994900, 35.762436, 34.728062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132271, 35.641743, 34.883503>,  <28.361221, 35.440586, 35.142574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132271, 35.641743, 34.883503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796250, -0.529558, 0.292498,
		-0.195885, 0.683129, 0.703536,
		-0.572377, 0.502895, -0.647674,
		27.960558, 35.792610, 34.689201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069454, 35.840809, 35.246998>,  <28.361221, 35.440586, 35.142574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069454, 35.840809, 35.246998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427605, 35.714821, 35.121078>,  <29.642496, 35.639229, 35.045528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427605, 35.714821, 35.121078>,  <29.069454, 35.840809, 35.246998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427605, 35.714821, 35.121078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066158, -0.793157, 0.605413,
		-0.440367, -0.521247, -0.731012,
		0.895377, -0.314966, -0.314795,
		29.696218, 35.620331, 35.026638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708296, 35.825020, 35.451641>,  <29.069454, 35.840809, 35.246998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708296, 35.825020, 35.451641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958494, 36.004005, 35.195976>,  <30.108614, 36.111397, 35.042576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958494, 36.004005, 35.195976>,  <29.708296, 35.825020, 35.451641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958494, 36.004005, 35.195976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239394, 0.669626, 0.703059,
		0.742593, -0.592773, 0.311729,
		0.625496, 0.447461, -0.639166,
		30.146143, 36.138245, 35.004227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545155, 35.983715, 35.533848>,  <29.708296, 35.825020, 35.451641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545155, 35.983715, 35.533848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335653, 36.270336, 35.349575>,  <30.209953, 36.442310, 35.239010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335653, 36.270336, 35.349575>,  <30.545155, 35.983715, 35.533848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335653, 36.270336, 35.349575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220502, 0.636397, 0.739174,
		0.822838, 0.285563, -0.491317,
		-0.523753, 0.716556, -0.460684,
		30.178528, 36.485302, 35.211369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970684, 36.603600, 35.460274>,  <30.545155, 35.983715, 35.533848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970684, 36.603600, 35.460274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601673, 36.756420, 35.438442>,  <30.380266, 36.848110, 35.425343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601673, 36.756420, 35.438442>,  <30.970684, 36.603600, 35.460274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601673, 36.756420, 35.438442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193325, 0.579885, 0.791428,
		0.334013, 0.719565, -0.608821,
		-0.922530, 0.382047, -0.054580,
		30.324915, 36.871033, 35.422070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833267, 37.324043, 35.214146>,  <30.970684, 36.603600, 35.460274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833267, 37.324043, 35.214146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545406, 37.235264, 35.477306>,  <30.372690, 37.181995, 35.635204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545406, 37.235264, 35.477306>,  <30.833267, 37.324043, 35.214146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545406, 37.235264, 35.477306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424640, 0.608981, 0.669943,
		-0.549346, 0.761498, -0.344004,
		-0.719652, -0.221952, 0.657904,
		30.329510, 37.168678, 35.674679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755007, 38.005959, 35.490368>,  <30.833267, 37.324043, 35.214146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755007, 38.005959, 35.490368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663822, 37.709675, 35.743156>,  <30.609112, 37.531906, 35.894829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663822, 37.709675, 35.743156>,  <30.755007, 38.005959, 35.490368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663822, 37.709675, 35.743156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342142, 0.546730, 0.764216,
		-0.911577, 0.390437, 0.128792,
		-0.227964, -0.740706, 0.631971,
		30.595432, 37.487461, 35.932747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393730, 38.379631, 36.083202>,  <30.755007, 38.005959, 35.490368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393730, 38.379631, 36.083202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592350, 38.041153, 36.160549>,  <30.711521, 37.838066, 36.206959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592350, 38.041153, 36.160549>,  <30.393730, 38.379631, 36.083202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592350, 38.041153, 36.160549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488214, 0.456462, 0.743834,
		-0.717696, -0.274943, 0.639780,
		0.496548, -0.846197, 0.193370,
		30.741314, 37.787292, 36.218559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331518, 38.221996, 36.815498>,  <30.393730, 38.379631, 36.083202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331518, 38.221996, 36.815498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665607, 38.048210, 36.680656>,  <30.866062, 37.943939, 36.599751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665607, 38.048210, 36.680656>,  <30.331518, 38.221996, 36.815498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665607, 38.048210, 36.680656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500803, 0.347748, 0.792634,
		-0.227149, -0.830848, 0.508031,
		0.835225, -0.434469, -0.337100,
		30.916174, 37.917870, 36.579525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502867, 37.853958, 37.359333>,  <30.331518, 38.221996, 36.815498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502867, 37.853958, 37.359333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837450, 37.874321, 37.141071>,  <31.038200, 37.886539, 37.010113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837450, 37.874321, 37.141071>,  <30.502867, 37.853958, 37.359333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837450, 37.874321, 37.141071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540624, 0.086463, 0.836809,
		0.089786, -0.994953, 0.044797,
		0.836459, 0.050916, -0.545659,
		31.088388, 37.889595, 36.977375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948177, 37.487522, 37.723763>,  <30.502867, 37.853958, 37.359333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948177, 37.487522, 37.723763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183336, 37.715607, 37.494247>,  <31.324432, 37.852459, 37.356537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183336, 37.715607, 37.494247>,  <30.948177, 37.487522, 37.723763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183336, 37.715607, 37.494247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616431, 0.143526, 0.774218,
		0.523821, -0.808863, -0.267117,
		0.587898, 0.570211, -0.573790,
		31.359705, 37.886669, 37.322109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528847, 37.287304, 37.927280>,  <30.948177, 37.487522, 37.723763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528847, 37.287304, 37.927280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607735, 37.624081, 37.726391>,  <31.655067, 37.826149, 37.605858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607735, 37.624081, 37.726391>,  <31.528847, 37.287304, 37.927280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607735, 37.624081, 37.726391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614008, 0.293284, 0.732788,
		0.764263, -0.452891, -0.459120,
		0.197220, 0.841947, -0.502225,
		31.666901, 37.876663, 37.575722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310459, 37.386902, 37.878345>,  <31.528847, 37.287304, 37.927280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310459, 37.386902, 37.878345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151783, 37.750092, 37.824348>,  <32.056580, 37.968006, 37.791950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151783, 37.750092, 37.824348>,  <32.310459, 37.386902, 37.878345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151783, 37.750092, 37.824348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575744, 0.360639, 0.733797,
		0.714952, 0.213366, -0.665821,
		-0.396689, 0.907973, -0.134995,
		32.032776, 38.022484, 37.783852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889874, 37.917351, 37.689762>,  <32.310459, 37.386902, 37.878345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889874, 37.917351, 37.689762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583530, 38.129101, 37.835762>,  <32.399723, 38.256149, 37.923363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583530, 38.129101, 37.835762>,  <32.889874, 37.917351, 37.689762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583530, 38.129101, 37.835762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582748, 0.331500, 0.741966,
		0.271781, 0.780942, -0.562374,
		-0.765859, 0.529375, 0.364996,
		32.353771, 38.287914, 37.945259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182339, 38.517593, 37.903389>,  <32.889874, 37.917351, 37.689762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182339, 38.517593, 37.903389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836143, 38.516609, 38.103756>,  <32.628426, 38.516018, 38.223976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836143, 38.516609, 38.103756>,  <33.182339, 38.517593, 37.903389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836143, 38.516609, 38.103756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450284, 0.434309, 0.780141,
		-0.219470, 0.900761, -0.374784,
		-0.865493, -0.002458, 0.500915,
		32.576496, 38.515873, 38.254032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146587, 39.246010, 38.200783>,  <33.182339, 38.517593, 37.903389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146587, 39.246010, 38.200783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879002, 39.032406, 38.407597>,  <32.718452, 38.904243, 38.531685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879002, 39.032406, 38.407597>,  <33.146587, 39.246010, 38.200783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879002, 39.032406, 38.407597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269868, 0.473642, 0.838353,
		-0.692578, 0.700356, -0.172736,
		-0.668960, -0.534009, 0.517037,
		32.678314, 38.872204, 38.562706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908325, 39.687283, 38.737366>,  <33.146587, 39.246010, 38.200783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908325, 39.687283, 38.737366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803673, 39.323448, 38.866493>,  <32.740879, 39.105148, 38.943970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803673, 39.323448, 38.866493>,  <32.908325, 39.687283, 38.737366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803673, 39.323448, 38.866493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375953, 0.212006, 0.902060,
		-0.888936, 0.357372, 0.286492,
		-0.261633, -0.909582, 0.322815,
		32.725182, 39.050575, 38.963337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443768, 39.745438, 39.397747>,  <32.908325, 39.687283, 38.737366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443768, 39.745438, 39.397747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629749, 39.391537, 39.384903>,  <32.741337, 39.179195, 39.377197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629749, 39.391537, 39.384903>,  <32.443768, 39.745438, 39.397747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629749, 39.391537, 39.384903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040573, -0.014936, 0.999065,
		-0.884404, -0.465824, 0.028953,
		0.464956, -0.884751, -0.032109,
		32.769238, 39.126110, 39.375271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209873, 39.520634, 40.085167>,  <32.443768, 39.745438, 39.397747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209873, 39.520634, 40.085167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487919, 39.266880, 39.949886>,  <32.654747, 39.114628, 39.868717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487919, 39.266880, 39.949886>,  <32.209873, 39.520634, 40.085167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487919, 39.266880, 39.949886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196185, -0.285193, 0.938177,
		-0.691617, -0.718486, -0.073783,
		0.695109, -0.634384, -0.338200,
		32.696453, 39.076565, 39.848427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078392, 38.899334, 40.499920>,  <32.209873, 39.520634, 40.085167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078392, 38.899334, 40.499920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454659, 38.866890, 40.368126>,  <32.680420, 38.847424, 40.289047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454659, 38.866890, 40.368126>,  <32.078392, 38.899334, 40.499920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454659, 38.866890, 40.368126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283537, -0.345545, 0.894542,
		-0.186405, -0.934891, -0.302047,
		0.940670, -0.081106, -0.329487,
		32.736858, 38.842556, 40.269279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244976, 38.275818, 40.517979>,  <32.078392, 38.899334, 40.499920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244976, 38.275818, 40.517979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572449, 38.500645, 40.565033>,  <32.768932, 38.635540, 40.593266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572449, 38.500645, 40.565033>,  <32.244976, 38.275818, 40.517979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572449, 38.500645, 40.565033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169453, -0.432195, 0.885716,
		0.548676, -0.705186, -0.449074,
		0.818682, 0.562068, 0.117639,
		32.818054, 38.669266, 40.600327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540665, 37.907005, 41.015778>,  <32.244976, 38.275818, 40.517979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540665, 37.907005, 41.015778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771774, 38.233467, 41.012390>,  <32.910439, 38.429344, 41.010357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771774, 38.233467, 41.012390>,  <32.540665, 37.907005, 41.015778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771774, 38.233467, 41.012390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363747, -0.248192, 0.897824,
		0.730662, -0.521817, -0.440273,
		0.577772, 0.816154, -0.008465,
		32.945107, 38.478313, 41.009850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318058, 37.781597, 41.092556>,  <32.540665, 37.907005, 41.015778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318058, 37.781597, 41.092556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240986, 38.143978, 41.243355>,  <33.194744, 38.361404, 41.333836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240986, 38.143978, 41.243355>,  <33.318058, 37.781597, 41.092556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240986, 38.143978, 41.243355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405236, -0.276441, 0.871415,
		0.893677, 0.320677, -0.313860,
		-0.192679, 0.905951, 0.376999,
		33.183182, 38.415764, 41.356453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925011, 37.856956, 41.515800>,  <33.318058, 37.781597, 41.092556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925011, 37.856956, 41.515800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648270, 38.122433, 41.629536>,  <33.482224, 38.281719, 41.697777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648270, 38.122433, 41.629536>,  <33.925011, 37.856956, 41.515800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648270, 38.122433, 41.629536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452597, 0.091807, 0.886977,
		0.562576, 0.742350, -0.363903,
		-0.691856, 0.663693, 0.284337,
		33.440712, 38.321541, 41.714836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306965, 38.273106, 41.918190>,  <33.925011, 37.856956, 41.515800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306965, 38.273106, 41.918190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928230, 38.352791, 42.019238>,  <33.700989, 38.400600, 42.079865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928230, 38.352791, 42.019238>,  <34.306965, 38.273106, 41.918190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928230, 38.352791, 42.019238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227293, -0.141488, 0.963493,
		0.227679, 0.969689, 0.088687,
		-0.946837, 0.199209, 0.252617,
		33.644180, 38.412552, 42.095024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359367, 38.868221, 42.497307>,  <34.306965, 38.273106, 41.918190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359367, 38.868221, 42.497307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020153, 38.659298, 42.533173>,  <33.816624, 38.533943, 42.554691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020153, 38.659298, 42.533173>,  <34.359367, 38.868221, 42.497307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020153, 38.659298, 42.533173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215207, -0.184796, 0.958924,
		-0.484281, 0.832495, 0.269117,
		-0.848032, -0.522304, 0.089665,
		33.765743, 38.502605, 42.560074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004158, 39.032364, 43.158287>,  <34.359367, 38.868221, 42.497307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004158, 39.032364, 43.158287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868462, 38.674446, 43.042179>,  <33.787045, 38.459694, 42.972515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868462, 38.674446, 43.042179>,  <34.004158, 39.032364, 43.158287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868462, 38.674446, 43.042179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130290, -0.350286, 0.927537,
		-0.931632, 0.276841, 0.235415,
		-0.339243, -0.894795, -0.290268,
		33.766689, 38.406006, 42.955097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522327, 38.925426, 43.740108>,  <34.004158, 39.032364, 43.158287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522327, 38.925426, 43.740108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575481, 38.572350, 43.559803>,  <33.607376, 38.360504, 43.451618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575481, 38.572350, 43.559803>,  <33.522327, 38.925426, 43.740108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575481, 38.572350, 43.559803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252319, -0.409685, 0.876638,
		-0.958476, -0.230231, 0.168279,
		0.132888, -0.882696, -0.450765,
		33.615349, 38.307541, 43.424572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041233, 38.525848, 44.070099>,  <33.522327, 38.925426, 43.740108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041233, 38.525848, 44.070099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295177, 38.268120, 43.899548>,  <33.447544, 38.113483, 43.797218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295177, 38.268120, 43.899548>,  <33.041233, 38.525848, 44.070099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295177, 38.268120, 43.899548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019497, -0.565040, 0.824834,
		-0.772383, -0.515339, -0.371282,
		0.634858, -0.644326, -0.426380,
		33.485634, 38.074821, 43.771633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729328, 37.789921, 43.854816>,  <33.041233, 38.525848, 44.070099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729328, 37.789921, 43.854816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123718, 37.772060, 43.919147>,  <33.360352, 37.761345, 43.957748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123718, 37.772060, 43.919147>,  <32.729328, 37.789921, 43.854816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123718, 37.772060, 43.919147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154632, -0.607133, 0.779409,
		0.062844, -0.793345, -0.605521,
		0.985971, -0.044652, 0.160831,
		33.419510, 37.758663, 43.967396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858150, 37.164986, 44.168728>,  <32.729328, 37.789921, 43.854816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858150, 37.164986, 44.168728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199112, 37.362591, 44.237274>,  <33.403690, 37.481152, 44.278400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199112, 37.362591, 44.237274>,  <32.858150, 37.164986, 44.168728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199112, 37.362591, 44.237274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171799, -0.574129, 0.800538,
		0.493858, -0.652940, -0.574259,
		0.852402, 0.494009, 0.171363,
		33.454834, 37.510792, 44.288685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220486, 36.779842, 44.622299>,  <32.858150, 37.164986, 44.168728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220486, 36.779842, 44.622299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499310, 37.066055, 44.640732>,  <33.666603, 37.237782, 44.651791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499310, 37.066055, 44.640732>,  <33.220486, 36.779842, 44.622299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499310, 37.066055, 44.640732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354889, -0.400142, 0.844950,
		0.623027, -0.572627, -0.532857,
		0.697059, 0.715531, 0.046080,
		33.708427, 37.280716, 44.654556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805332, 36.414818, 44.849949>,  <33.220486, 36.779842, 44.622299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805332, 36.414818, 44.849949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878666, 36.803722, 44.908047>,  <33.922665, 37.037064, 44.942905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878666, 36.803722, 44.908047>,  <33.805332, 36.414818, 44.849949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878666, 36.803722, 44.908047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336443, -0.200882, 0.920028,
		0.923686, -0.119802, -0.363939,
		0.183330, 0.972262, 0.145246,
		33.933666, 37.095402, 44.951622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548664, 36.498585, 45.078453>,  <33.805332, 36.414818, 44.849949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548664, 36.498585, 45.078453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339588, 36.817829, 45.198322>,  <34.214142, 37.009377, 45.270245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339588, 36.817829, 45.198322>,  <34.548664, 36.498585, 45.078453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339588, 36.817829, 45.198322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469821, -0.023645, 0.882445,
		0.711378, 0.602042, -0.362612,
		-0.522695, 0.798114, 0.299673,
		34.182781, 37.057262, 45.288223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004894, 36.901100, 45.462769>,  <34.548664, 36.498585, 45.078453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004894, 36.901100, 45.462769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668495, 37.076790, 45.589134>,  <34.466656, 37.182205, 45.664955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668495, 37.076790, 45.589134>,  <35.004894, 36.901100, 45.462769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668495, 37.076790, 45.589134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303223, -0.100947, 0.947558,
		0.448081, 0.892688, -0.048286,
		-0.840999, 0.439224, 0.315916,
		34.416195, 37.208557, 45.683910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129539, 37.426807, 45.963703>,  <35.004894, 36.901100, 45.462769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129539, 37.426807, 45.963703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769688, 37.284855, 46.065475>,  <34.553776, 37.199684, 46.126537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769688, 37.284855, 46.065475>,  <35.129539, 37.426807, 45.963703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769688, 37.284855, 46.065475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316172, -0.127504, 0.940095,
		-0.301177, 0.926178, 0.226908,
		-0.899626, -0.354877, 0.254430,
		34.499798, 37.178391, 46.141804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870243, 37.855564, 46.547462>,  <35.129539, 37.426807, 45.963703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870243, 37.855564, 46.547462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662971, 37.513458, 46.548965>,  <34.538609, 37.308193, 46.549866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662971, 37.513458, 46.548965>,  <34.870243, 37.855564, 46.547462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662971, 37.513458, 46.548965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214507, -0.125712, 0.968599,
		-0.827936, 0.502712, 0.248602,
		-0.518178, -0.855264, 0.003754,
		34.507519, 37.256878, 46.550091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594105, 37.982380, 47.194221>,  <34.870243, 37.855564, 46.547462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594105, 37.982380, 47.194221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545807, 37.597576, 47.096279>,  <34.516827, 37.366695, 47.037514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545807, 37.597576, 47.096279>,  <34.594105, 37.982380, 47.194221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545807, 37.597576, 47.096279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097138, -0.256931, 0.961536,
		-0.987920, 0.092315, 0.124471,
		-0.120744, -0.962011, -0.244860,
		34.509583, 37.308971, 47.022820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086353, 37.781433, 47.590893>,  <34.594105, 37.982380, 47.194221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086353, 37.781433, 47.590893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252583, 37.435879, 47.477051>,  <34.352322, 37.228546, 47.408745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252583, 37.435879, 47.477051>,  <34.086353, 37.781433, 47.590893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252583, 37.435879, 47.477051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029289, -0.300028, 0.953481,
		-0.909089, -0.404575, -0.099381,
		0.415571, -0.863888, -0.284601,
		34.377254, 37.176712, 47.391670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699600, 37.252289, 47.842342>,  <34.086353, 37.781433, 47.590893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699600, 37.252289, 47.842342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073410, 37.114452, 47.806725>,  <34.297695, 37.031750, 47.785355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073410, 37.114452, 47.806725>,  <33.699600, 37.252289, 47.842342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073410, 37.114452, 47.806725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029801, -0.325077, 0.945218,
		-0.354664, -0.880670, -0.314060,
		0.934519, -0.344595, -0.089048,
		34.353767, 37.011074, 47.780010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802284, 36.641186, 48.260822>,  <33.699600, 37.252289, 47.842342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802284, 36.641186, 48.260822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186340, 36.742695, 48.213966>,  <34.416775, 36.803600, 48.185852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186340, 36.742695, 48.213966>,  <33.802284, 36.641186, 48.260822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186340, 36.742695, 48.213966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189308, -0.282106, 0.940521,
		0.205631, -0.925212, -0.318903,
		0.960145, 0.253772, -0.117140,
		34.474384, 36.818825, 48.178825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182323, 36.075001, 48.447750>,  <33.802284, 36.641186, 48.260822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182323, 36.075001, 48.447750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430511, 36.385929, 48.489288>,  <34.579426, 36.572487, 48.514210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430511, 36.385929, 48.489288>,  <34.182323, 36.075001, 48.447750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430511, 36.385929, 48.489288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068728, -0.185806, 0.980180,
		0.781213, -0.601035, -0.168711,
		0.620470, 0.777324, 0.103846,
		34.616653, 36.619125, 48.520443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674377, 35.689491, 48.799782>,  <34.182323, 36.075001, 48.447750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674377, 35.689491, 48.799782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705753, 36.084572, 48.853889>,  <34.724579, 36.321621, 48.886353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705753, 36.084572, 48.853889>,  <34.674377, 35.689491, 48.799782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705753, 36.084572, 48.853889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121256, -0.144131, 0.982102,
		0.989517, -0.060633, -0.131070,
		0.078439, 0.987700, 0.135268,
		34.729286, 36.380882, 48.894470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242229, 35.838890, 49.182484>,  <34.674377, 35.689491, 48.799782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242229, 35.838890, 49.182484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006763, 36.156933, 49.240833>,  <34.865482, 36.347759, 49.275841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006763, 36.156933, 49.240833>,  <35.242229, 35.838890, 49.182484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006763, 36.156933, 49.240833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095299, -0.110933, 0.989248,
		0.802737, 0.596241, -0.010470,
		-0.588668, 0.795104, 0.145872,
		34.830162, 36.395466, 49.284595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542068, 36.365154, 49.722191>,  <35.242229, 35.838890, 49.182484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542068, 36.365154, 49.722191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156689, 36.468399, 49.693531>,  <34.925461, 36.530346, 49.676334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156689, 36.468399, 49.693531>,  <35.542068, 36.365154, 49.722191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156689, 36.468399, 49.693531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073214, 0.003574, 0.997310,
		0.257676, 0.966108, 0.015454,
		-0.963454, 0.258114, -0.071653,
		34.867653, 36.545834, 49.672035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442646, 36.996830, 50.154617>,  <35.542068, 36.365154, 49.722191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442646, 36.996830, 50.154617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080353, 36.827587, 50.144676>,  <34.862976, 36.726040, 50.138710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080353, 36.827587, 50.144676>,  <35.442646, 36.996830, 50.154617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080353, 36.827587, 50.144676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059036, 0.067870, 0.995946,
		-0.419707, 0.903533, -0.086451,
		-0.905738, -0.423110, -0.024855,
		34.808632, 36.700653, 50.137218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988731, 37.319740, 50.613331>,  <35.442646, 36.996830, 50.154617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988731, 37.319740, 50.613331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785370, 36.980011, 50.556507>,  <34.663353, 36.776173, 50.522411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785370, 36.980011, 50.556507>,  <34.988731, 37.319740, 50.613331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785370, 36.980011, 50.556507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238987, -0.019330, 0.970830,
		-0.827293, 0.527522, -0.193150,
		-0.508400, -0.849322, -0.142063,
		34.632851, 36.725216, 50.513889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404560, 37.443432, 50.960773>,  <34.988731, 37.319740, 50.613331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404560, 37.443432, 50.960773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391155, 37.046612, 50.912251>,  <34.383114, 36.808521, 50.883137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391155, 37.046612, 50.912251>,  <34.404560, 37.443432, 50.960773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391155, 37.046612, 50.912251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299130, -0.105853, 0.948323,
		-0.953624, 0.068065, -0.293204,
		-0.033511, -0.992050, -0.121304,
		34.381104, 36.748997, 50.875858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749126, 37.155281, 51.243282>,  <34.404560, 37.443432, 50.960773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749126, 37.155281, 51.243282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050728, 36.892544, 51.240677>,  <34.231689, 36.734901, 51.239113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050728, 36.892544, 51.240677>,  <33.749126, 37.155281, 51.243282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050728, 36.892544, 51.240677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133321, -0.162733, 0.977621,
		-0.643202, -0.736259, -0.210272,
		0.754001, -0.656841, -0.006511,
		34.276928, 36.695492, 51.238724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500107, 36.580585, 51.515854>,  <33.749126, 37.155281, 51.243282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500107, 36.580585, 51.515854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896404, 36.586060, 51.569881>,  <34.134182, 36.589344, 51.602299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896404, 36.586060, 51.569881>,  <33.500107, 36.580585, 51.515854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896404, 36.586060, 51.569881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109204, -0.510722, 0.852782,
		0.080655, -0.859637, -0.504499,
		0.990742, 0.013688, 0.135067,
		34.193626, 36.590164, 51.610401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733032, 35.933250, 51.628311>,  <33.500107, 36.580585, 51.515854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733032, 35.933250, 51.628311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994244, 36.189480, 51.789909>,  <34.150970, 36.343220, 51.886868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994244, 36.189480, 51.789909>,  <33.733032, 35.933250, 51.628311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994244, 36.189480, 51.789909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024736, -0.551202, 0.834005,
		0.756926, -0.534640, -0.375798,
		0.653033, 0.640576, 0.403994,
		34.190155, 36.381653, 51.911106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699318, 35.232464, 51.738876>,  <33.733032, 35.933250, 51.628311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699318, 35.232464, 51.738876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809502, 34.937943, 51.986095>,  <33.875610, 34.761230, 52.134426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809502, 34.937943, 51.986095>,  <33.699318, 35.232464, 51.738876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809502, 34.937943, 51.986095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897340, -0.033677, -0.440054,
		0.344828, 0.675811, 0.651440,
		0.275455, -0.736306, 0.618044,
		33.892139, 34.717052, 52.171509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334488, 35.515118, 52.103210>,  <33.699318, 35.232464, 51.738876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334488, 35.515118, 52.103210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401352, 35.120750, 52.101166>,  <34.441471, 34.884132, 52.099941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401352, 35.120750, 52.101166>,  <34.334488, 35.515118, 52.103210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401352, 35.120750, 52.101166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947863, 0.162134, -0.274352,
		0.271316, 0.041020, 0.961616,
		0.167165, -0.985916, -0.005108,
		34.451500, 34.824974, 52.099632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960915, 35.212776, 52.506878>,  <34.334488, 35.515118, 52.103210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960915, 35.212776, 52.506878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920059, 34.972183, 52.189949>,  <34.895546, 34.827827, 51.999790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920059, 34.972183, 52.189949>,  <34.960915, 35.212776, 52.506878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920059, 34.972183, 52.189949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906129, 0.272412, -0.323606,
		0.410485, -0.751003, 0.517202,
		-0.102137, -0.601487, -0.792327,
		34.889420, 34.791737, 51.952251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526375, 34.879887, 52.571072>,  <34.960915, 35.212776, 52.506878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526375, 34.879887, 52.571072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376038, 34.838928, 52.202667>,  <35.285835, 34.814354, 51.981625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376038, 34.838928, 52.202667>,  <35.526375, 34.879887, 52.571072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376038, 34.838928, 52.202667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895175, 0.216847, -0.389409,
		0.239591, -0.970820, 0.010160,
		-0.375843, -0.102394, -0.921009,
		35.263283, 34.808212, 51.926365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138500, 35.009495, 52.048809>,  <35.526375, 34.879887, 52.571072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138500, 35.009495, 52.048809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129841, 34.619049, 52.135273>,  <36.124645, 34.384781, 52.187149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129841, 34.619049, 52.135273>,  <36.138500, 35.009495, 52.048809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129841, 34.619049, 52.135273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440086, -0.184831, -0.878728,
		0.897695, -0.114152, -0.425574,
		-0.021649, -0.976118, 0.216158,
		36.123344, 34.326214, 52.200119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130032, 34.658207, 51.411526>,  <36.138500, 35.009495, 52.048809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130032, 34.658207, 51.411526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931416, 34.394974, 51.637932>,  <35.812248, 34.237034, 51.773777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931416, 34.394974, 51.637932>,  <36.130032, 34.658207, 51.411526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931416, 34.394974, 51.637932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398693, -0.406317, -0.822162,
		0.771035, -0.633900, -0.060623,
		-0.496536, -0.658086, 0.566017,
		35.782455, 34.197548, 51.807735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358391, 34.000763, 51.214081>,  <36.130032, 34.658207, 51.411526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358391, 34.000763, 51.214081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981873, 33.981586, 51.347752>,  <35.755962, 33.970081, 51.427952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981873, 33.981586, 51.347752>,  <36.358391, 34.000763, 51.214081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981873, 33.981586, 51.347752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295151, -0.363647, -0.883542,
		0.163876, -0.930302, 0.328149,
		-0.941292, -0.047938, 0.334172,
		35.699486, 33.967205, 51.448002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170906, 33.307835, 51.172859>,  <36.358391, 34.000763, 51.214081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170906, 33.307835, 51.172859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879292, 33.579926, 51.142422>,  <35.704323, 33.743179, 51.124157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879292, 33.579926, 51.142422>,  <36.170906, 33.307835, 51.172859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879292, 33.579926, 51.142422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080152, -0.195250, -0.977473,
		-0.679764, -0.706515, 0.196867,
		-0.729038, 0.680230, -0.076095,
		35.660580, 33.783993, 51.119595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585094, 32.925407, 50.893726>,  <36.170906, 33.307835, 51.172859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585094, 32.925407, 50.893726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513222, 33.314587, 50.835644>,  <35.470097, 33.548096, 50.800793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513222, 33.314587, 50.835644>,  <35.585094, 32.925407, 50.893726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513222, 33.314587, 50.835644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192328, -0.179504, -0.964774,
		-0.964740, -0.145427, 0.219379,
		-0.179684, 0.972949, -0.145205,
		35.459316, 33.606472, 50.792084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850883, 33.016216, 50.720901>,  <35.585094, 32.925407, 50.893726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850883, 33.016216, 50.720901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072319, 33.315411, 50.574448>,  <35.205181, 33.494926, 50.486576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072319, 33.315411, 50.574448>,  <34.850883, 33.016216, 50.720901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072319, 33.315411, 50.574448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235311, -0.281246, -0.930338,
		-0.798855, 0.601181, 0.020315,
		0.553588, 0.747986, -0.366139,
		35.238396, 33.539806, 50.464607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387333, 33.161858, 50.127434>,  <34.850883, 33.016216, 50.720901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387333, 33.161858, 50.127434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726139, 33.365166, 50.065189>,  <34.929424, 33.487152, 50.027843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726139, 33.365166, 50.065189>,  <34.387333, 33.161858, 50.127434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726139, 33.365166, 50.065189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084893, -0.159642, -0.983518,
		-0.524740, 0.846269, -0.092071,
		0.847019, 0.508275, -0.155613,
		34.980244, 33.517647, 50.018505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174458, 33.611141, 49.695869>,  <34.387333, 33.161858, 50.127434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174458, 33.611141, 49.695869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571106, 33.602444, 49.644939>,  <34.809093, 33.597225, 49.614380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571106, 33.602444, 49.644939>,  <34.174458, 33.611141, 49.695869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571106, 33.602444, 49.644939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123492, 0.129433, -0.983868,
		0.037878, 0.991350, 0.125663,
		0.991623, -0.021748, -0.127326,
		34.868591, 33.595921, 49.606743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290180, 34.181061, 49.187634>,  <34.174458, 33.611141, 49.695869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290180, 34.181061, 49.187634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614491, 33.946987, 49.193375>,  <34.809078, 33.806545, 49.196819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614491, 33.946987, 49.193375>,  <34.290180, 34.181061, 49.187634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614491, 33.946987, 49.193375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033263, 0.021578, -0.999214,
		0.584412, 0.810615, 0.036960,
		0.810775, -0.585182, 0.014353,
		34.857723, 33.771431, 49.197681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795116, 34.482262, 48.641769>,  <34.290180, 34.181061, 49.187634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795116, 34.482262, 48.641769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923450, 34.110073, 48.712532>,  <35.000450, 33.886761, 48.754990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923450, 34.110073, 48.712532>,  <34.795116, 34.482262, 48.641769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923450, 34.110073, 48.712532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003098, -0.187806, -0.982201,
		0.947130, 0.314576, -0.063137,
		0.320834, -0.930468, 0.176902,
		35.019699, 33.830933, 48.765602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364849, 34.384926, 48.170597>,  <34.795116, 34.482262, 48.641769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364849, 34.384926, 48.170597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195965, 34.034172, 48.262512>,  <35.094635, 33.823719, 48.317661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195965, 34.034172, 48.262512>,  <35.364849, 34.384926, 48.170597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195965, 34.034172, 48.262512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034561, -0.268877, -0.962554,
		0.905837, -0.398463, 0.143829,
		-0.422215, -0.876888, 0.229787,
		35.069302, 33.771107, 48.331448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850986, 33.900616, 47.880074>,  <35.364849, 34.384926, 48.170597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850986, 33.900616, 47.880074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514057, 33.689465, 47.923573>,  <35.311897, 33.562775, 47.949673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514057, 33.689465, 47.923573>,  <35.850986, 33.900616, 47.880074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514057, 33.689465, 47.923573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012549, -0.182504, -0.983125,
		0.538820, -0.829478, 0.147104,
		-0.842327, -0.527882, 0.108746,
		35.261360, 33.531101, 47.956196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908241, 33.144398, 47.704426>,  <35.850986, 33.900616, 47.880074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908241, 33.144398, 47.704426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533463, 33.275551, 47.656059>,  <35.308594, 33.354244, 47.627041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533463, 33.275551, 47.656059>,  <35.908241, 33.144398, 47.704426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533463, 33.275551, 47.656059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005291, -0.359272, -0.933218,
		-0.349406, -0.873745, 0.338357,
		-0.936956, 0.327863, -0.120909,
		35.252377, 33.373917, 47.619785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774967, 32.717815, 47.179501>,  <35.908241, 33.144398, 47.704426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774967, 32.717815, 47.179501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469730, 32.975193, 47.203754>,  <35.286591, 33.129620, 47.218307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469730, 32.975193, 47.203754>,  <35.774967, 32.717815, 47.179501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469730, 32.975193, 47.203754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180058, -0.121562, -0.976116,
		-0.620703, -0.755781, 0.208620,
		-0.763090, 0.643442, 0.060631,
		35.240803, 33.168224, 47.221943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265003, 32.472187, 46.872189>,  <35.774967, 32.717815, 47.179501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265003, 32.472187, 46.872189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162861, 32.858917, 46.874912>,  <35.101578, 33.090954, 46.876545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162861, 32.858917, 46.874912>,  <35.265003, 32.472187, 46.872189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162861, 32.858917, 46.874912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151546, -0.033071, -0.987897,
		-0.954898, -0.253292, 0.154963,
		-0.255351, 0.966825, 0.006806,
		35.086254, 33.148964, 46.876953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748669, 32.565166, 46.491035>,  <35.265003, 32.472187, 46.872189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748669, 32.565166, 46.491035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887211, 32.940212, 46.478912>,  <34.970337, 33.165241, 46.471638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887211, 32.940212, 46.478912>,  <34.748669, 32.565166, 46.491035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887211, 32.940212, 46.478912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079288, -0.002938, -0.996847,
		-0.934747, 0.347667, 0.073324,
		0.346355, 0.937614, -0.030312,
		34.991116, 33.221497, 46.469818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298367, 32.953197, 46.071678>,  <34.748669, 32.565166, 46.491035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298367, 32.953197, 46.071678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586781, 33.229565, 46.092655>,  <34.759827, 33.395386, 46.105244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586781, 33.229565, 46.092655>,  <34.298367, 32.953197, 46.071678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586781, 33.229565, 46.092655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273386, 0.353219, -0.894705,
		-0.636690, 0.630771, 0.443568,
		0.721031, 0.690915, 0.052447,
		34.803089, 33.436840, 46.108391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970116, 33.588657, 45.874500>,  <34.298367, 32.953197, 46.071678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970116, 33.588657, 45.874500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363075, 33.606499, 45.801952>,  <34.598850, 33.617203, 45.758423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363075, 33.606499, 45.801952>,  <33.970116, 33.588657, 45.874500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363075, 33.606499, 45.801952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186779, 0.235416, -0.953778,
		0.000152, 0.970870, 0.239605,
		0.982402, 0.044608, -0.181374,
		34.657795, 33.619881, 45.747540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084591, 34.293598, 45.491982>,  <33.970116, 33.588657, 45.874500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084591, 34.293598, 45.491982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387463, 34.050728, 45.395638>,  <34.569187, 33.905006, 45.337833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387463, 34.050728, 45.395638>,  <34.084591, 34.293598, 45.491982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387463, 34.050728, 45.395638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054240, 0.309013, -0.949510,
		0.650948, 0.732016, 0.201045,
		0.757182, -0.607177, -0.240856,
		34.614616, 33.868576, 45.323380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325630, 34.672493, 44.995792>,  <34.084591, 34.293598, 45.491982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325630, 34.672493, 44.995792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520241, 34.326054, 44.949909>,  <34.637009, 34.118191, 44.922379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520241, 34.326054, 44.949909>,  <34.325630, 34.672493, 44.995792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520241, 34.326054, 44.949909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046120, 0.105651, -0.993333,
		0.872445, 0.488577, 0.011458,
		0.486531, -0.866101, -0.114708,
		34.666199, 34.066223, 44.915497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889500, 34.782845, 44.613396>,  <34.325630, 34.672493, 44.995792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889500, 34.782845, 44.613396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812973, 34.391815, 44.578175>,  <34.767059, 34.157200, 44.557041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812973, 34.391815, 44.578175>,  <34.889500, 34.782845, 44.613396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812973, 34.391815, 44.578175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184769, 0.123974, -0.974931,
		0.963981, -0.170248, -0.204343,
		-0.191313, -0.977571, -0.088052,
		34.755577, 34.098545, 44.551758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267128, 34.624390, 44.038376>,  <34.889500, 34.782845, 44.613396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267128, 34.624390, 44.038376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005875, 34.328377, 44.102596>,  <34.849125, 34.150768, 44.141129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005875, 34.328377, 44.102596>,  <35.267128, 34.624390, 44.038376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005875, 34.328377, 44.102596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140739, -0.089703, -0.985975,
		0.744052, -0.666566, -0.045563,
		-0.653130, -0.740029, 0.160556,
		34.809937, 34.106369, 44.150764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454739, 34.117992, 43.567188>,  <35.267128, 34.624390, 44.038376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454739, 34.117992, 43.567188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063831, 34.067726, 43.635483>,  <34.829285, 34.037567, 43.676460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063831, 34.067726, 43.635483>,  <35.454739, 34.117992, 43.567188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063831, 34.067726, 43.635483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177136, 0.041556, -0.983309,
		0.116480, -0.991201, -0.062873,
		-0.977269, -0.125673, 0.170737,
		34.770649, 34.030025, 43.686703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201553, 33.546478, 43.148724>,  <35.454739, 34.117992, 43.567188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201553, 33.546478, 43.148724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873451, 33.763916, 43.219936>,  <34.676590, 33.894379, 43.262665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873451, 33.763916, 43.219936>,  <35.201553, 33.546478, 43.148724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873451, 33.763916, 43.219936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229482, -0.027643, -0.972920,
		-0.523953, -0.838892, 0.147419,
		-0.820250, 0.543595, 0.178027,
		34.627377, 33.926994, 43.273346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729599, 33.202290, 42.748806>,  <35.201553, 33.546478, 43.148724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729599, 33.202290, 42.748806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530544, 33.541752, 42.820518>,  <34.411110, 33.745430, 42.863544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530544, 33.541752, 42.820518>,  <34.729599, 33.202290, 42.748806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530544, 33.541752, 42.820518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322494, 0.010845, -0.946509,
		-0.805203, -0.528839, 0.268288,
		-0.497641, 0.848653, 0.179280,
		34.381252, 33.796349, 42.874302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091576, 33.143108, 42.559536>,  <34.729599, 33.202290, 42.748806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091576, 33.143108, 42.559536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109070, 33.542610, 42.549965>,  <34.119568, 33.782310, 42.544224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109070, 33.542610, 42.549965>,  <34.091576, 33.143108, 42.559536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109070, 33.542610, 42.549965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384557, -0.005271, -0.923086,
		-0.922065, 0.049573, 0.383848,
		0.043737, 0.998757, -0.023924,
		34.122192, 33.842236, 42.542789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344341, 33.384666, 42.389061>,  <34.091576, 33.143108, 42.559536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344341, 33.384666, 42.389061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589252, 33.678974, 42.273296>,  <33.736198, 33.855560, 42.203838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589252, 33.678974, 42.273296>,  <33.344341, 33.384666, 42.389061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589252, 33.678974, 42.273296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382551, -0.044654, -0.922854,
		-0.691934, 0.675755, 0.254130,
		0.612276, 0.735772, -0.289409,
		33.772934, 33.899704, 42.186474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920258, 33.679489, 41.863628>,  <33.344341, 33.384666, 42.389061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920258, 33.679489, 41.863628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264599, 33.876137, 41.811100>,  <33.471203, 33.994125, 41.779583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264599, 33.876137, 41.811100>,  <32.920258, 33.679489, 41.863628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264599, 33.876137, 41.811100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219058, 0.125100, -0.967659,
		-0.459287, 0.861780, 0.215385,
		0.860854, 0.491615, -0.131323,
		33.522854, 34.023621, 41.771702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775787, 34.440613, 41.553402>,  <32.920258, 33.679489, 41.863628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775787, 34.440613, 41.553402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142437, 34.307129, 41.465370>,  <33.362427, 34.227039, 41.412552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142437, 34.307129, 41.465370>,  <32.775787, 34.440613, 41.553402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142437, 34.307129, 41.465370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219225, 0.040724, -0.974824,
		0.334271, 0.941796, -0.035829,
		0.916626, -0.333710, -0.220079,
		33.417423, 34.207016, 41.399345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121941, 34.861275, 41.082413>,  <32.775787, 34.440613, 41.553402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121941, 34.861275, 41.082413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340324, 34.527035, 41.058090>,  <33.471355, 34.326492, 41.043499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340324, 34.527035, 41.058090>,  <33.121941, 34.861275, 41.082413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340324, 34.527035, 41.058090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060147, 0.111479, -0.991945,
		0.835648, 0.537908, 0.111123,
		0.545963, -0.835600, -0.060803,
		33.504112, 34.276356, 41.039848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621010, 35.106476, 40.660110>,  <33.121941, 34.861275, 41.082413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621010, 35.106476, 40.660110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643578, 34.708042, 40.632877>,  <33.657120, 34.468983, 40.616539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643578, 34.708042, 40.632877>,  <33.621010, 35.106476, 40.660110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643578, 34.708042, 40.632877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258316, 0.051306, -0.964697,
		0.964412, 0.072015, -0.254409,
		0.056420, -0.996083, -0.068082,
		33.660503, 34.409218, 40.612453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109470, 34.930122, 40.116695>,  <33.621010, 35.106476, 40.660110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109470, 34.930122, 40.116695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881119, 34.604088, 40.156143>,  <33.744106, 34.408466, 40.179813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881119, 34.604088, 40.156143>,  <34.109470, 34.930122, 40.116695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881119, 34.604088, 40.156143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063320, -0.076054, -0.995091,
		0.818588, -0.574323, -0.008194,
		-0.570881, -0.815088, 0.098623,
		33.709854, 34.359562, 40.185730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397263, 34.457638, 39.635120>,  <34.109470, 34.930122, 40.116695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397263, 34.457638, 39.635120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016285, 34.361332, 39.709831>,  <33.787697, 34.303551, 39.754658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016285, 34.361332, 39.709831>,  <34.397263, 34.457638, 39.635120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016285, 34.361332, 39.709831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199755, 0.030442, -0.979373,
		0.230109, -0.970107, -0.077087,
		-0.952443, -0.240761, 0.186779,
		33.730553, 34.289104, 39.765865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280216, 34.125000, 39.052528>,  <34.397263, 34.457638, 39.635120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280216, 34.125000, 39.052528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908070, 34.179058, 39.188854>,  <33.684784, 34.211494, 39.270649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908070, 34.179058, 39.188854>,  <34.280216, 34.125000, 39.052528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908070, 34.179058, 39.188854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350111, -0.051549, -0.935289,
		-0.108834, -0.989484, 0.095276,
		-0.930364, 0.135148, 0.340819,
		33.628960, 34.219601, 39.291100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951248, 33.574062, 38.776588>,  <34.280216, 34.125000, 39.052528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951248, 33.574062, 38.776588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711849, 33.887363, 38.843895>,  <33.568211, 34.075344, 38.884277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711849, 33.887363, 38.843895>,  <33.951248, 33.574062, 38.776588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711849, 33.887363, 38.843895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240853, 0.024401, -0.970255,
		-0.764061, -0.621224, 0.174045,
		-0.598498, 0.783253, 0.168267,
		33.532299, 34.122341, 38.894375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257721, 33.443092, 38.404247>,  <33.951248, 33.574062, 38.776588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257721, 33.443092, 38.404247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297020, 33.836071, 38.467667>,  <33.320599, 34.071857, 38.505718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297020, 33.836071, 38.467667>,  <33.257721, 33.443092, 38.404247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297020, 33.836071, 38.467667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347675, 0.183165, -0.919550,
		-0.932454, 0.035218, 0.359569,
		0.098245, 0.982451, 0.158549,
		33.326492, 34.130806, 38.515232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705341, 33.700302, 37.983917>,  <33.257721, 33.443092, 38.404247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705341, 33.700302, 37.983917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946037, 34.010181, 38.061626>,  <33.090454, 34.196110, 38.108253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946037, 34.010181, 38.061626>,  <32.705341, 33.700302, 37.983917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946037, 34.010181, 38.061626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063706, 0.289022, -0.955200,
		-0.796145, 0.562409, 0.223270,
		0.601743, 0.774702, 0.194274,
		33.126560, 34.242592, 38.119907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372578, 34.330776, 37.699963>,  <32.705341, 33.700302, 37.983917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372578, 34.330776, 37.699963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755268, 34.441460, 37.735985>,  <32.984882, 34.507870, 37.757599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755268, 34.441460, 37.735985>,  <32.372578, 34.330776, 37.699963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755268, 34.441460, 37.735985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083713, 0.558121, -0.825526,
		-0.278692, 0.782262, 0.557133,
		0.956725, 0.276707, 0.090059,
		33.042286, 34.524471, 37.763004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421646, 35.044300, 37.428638>,  <32.372578, 34.330776, 37.699963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421646, 35.044300, 37.428638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796978, 34.906044, 37.425426>,  <33.022179, 34.823090, 37.423500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796978, 34.906044, 37.425426>,  <32.421646, 35.044300, 37.428638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796978, 34.906044, 37.425426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124766, 0.360180, -0.924502,
		0.322441, 0.866487, 0.381093,
		0.938331, -0.345645, -0.008029,
		33.078476, 34.802349, 37.423019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886776, 35.656708, 37.334515>,  <32.421646, 35.044300, 37.428638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886776, 35.656708, 37.334515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079418, 35.329979, 37.207474>,  <33.195004, 35.133942, 37.131248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079418, 35.329979, 37.207474>,  <32.886776, 35.656708, 37.334515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079418, 35.329979, 37.207474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267304, 0.482032, -0.834382,
		0.834630, 0.316946, 0.450486,
		0.481602, -0.816817, -0.317598,
		33.223900, 35.084934, 37.112194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488529, 35.966782, 37.080116>,  <32.886776, 35.656708, 37.334515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488529, 35.966782, 37.080116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505108, 35.601398, 36.918186>,  <33.515053, 35.382168, 36.821030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505108, 35.601398, 36.918186>,  <33.488529, 35.966782, 37.080116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505108, 35.601398, 36.918186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314706, 0.396480, -0.862418,
		0.948284, -0.091658, 0.303901,
		0.041443, -0.913456, -0.404821,
		33.517540, 35.327362, 36.796741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199005, 35.838085, 36.819176>,  <33.488529, 35.966782, 37.080116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199005, 35.838085, 36.819176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920116, 35.626362, 36.625797>,  <33.752785, 35.499329, 36.509769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920116, 35.626362, 36.625797>,  <34.199005, 35.838085, 36.819176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920116, 35.626362, 36.625797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453575, 0.196500, -0.869286,
		0.555120, -0.825358, 0.103079,
		-0.697217, -0.529312, -0.483443,
		33.710953, 35.467567, 36.480766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607334, 35.594257, 36.408794>,  <34.199005, 35.838085, 36.819176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607334, 35.594257, 36.408794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250111, 35.600067, 36.228909>,  <34.035778, 35.603554, 36.120979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250111, 35.600067, 36.228909>,  <34.607334, 35.594257, 36.408794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250111, 35.600067, 36.228909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449895, 0.013773, -0.892975,
		-0.006787, -0.999800, -0.018840,
		-0.893056, 0.014537, -0.449711,
		33.982193, 35.604424, 36.093994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325264, 35.920864, 36.420273>,  <34.607334, 35.594257, 36.408794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325264, 35.920864, 36.420273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633942, 35.729664, 36.252457>,  <35.819149, 35.614944, 36.151768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633942, 35.729664, 36.252457>,  <35.325264, 35.920864, 36.420273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633942, 35.729664, 36.252457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497787, 0.043358, 0.866215,
		-0.395858, -0.877291, 0.271400,
		0.771690, -0.477997, -0.419540,
		35.865448, 35.586266, 36.126595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489857, 35.226536, 36.745579>,  <35.325264, 35.920864, 36.420273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489857, 35.226536, 36.745579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821255, 35.406136, 36.611713>,  <36.020092, 35.513897, 36.531395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821255, 35.406136, 36.611713>,  <35.489857, 35.226536, 36.745579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821255, 35.406136, 36.611713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411757, -0.083392, 0.907470,
		0.379545, -0.889632, -0.253969,
		0.828493, 0.448999, -0.334661,
		36.069801, 35.540836, 36.511314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061649, 34.841057, 36.742783>,  <35.489857, 35.226536, 36.745579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061649, 34.841057, 36.742783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261826, 35.187256, 36.734085>,  <36.381931, 35.394974, 36.728867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261826, 35.187256, 36.734085>,  <36.061649, 34.841057, 36.742783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261826, 35.187256, 36.734085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430068, -0.226712, 0.873867,
		0.751399, -0.446671, -0.485679,
		0.500441, 0.865498, -0.021748,
		36.411957, 35.446907, 36.727562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716099, 34.665031, 36.945843>,  <36.061649, 34.841057, 36.742783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716099, 34.665031, 36.945843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699364, 35.063454, 36.977146>,  <36.689323, 35.302505, 36.995930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699364, 35.063454, 36.977146>,  <36.716099, 34.665031, 36.945843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699364, 35.063454, 36.977146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406386, -0.054589, 0.912069,
		0.912743, 0.069966, -0.402498,
		-0.041842, 0.996055, 0.078259,
		36.686810, 35.362270, 37.000626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243080, 34.765198, 37.389683>,  <36.716099, 34.665031, 36.945843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243080, 34.765198, 37.389683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050297, 35.113983, 37.424091>,  <36.934628, 35.323254, 37.444736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050297, 35.113983, 37.424091>,  <37.243080, 34.765198, 37.389683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050297, 35.113983, 37.424091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348511, 0.100697, 0.931880,
		0.803902, 0.479106, -0.352420,
		-0.481957, 0.871962, 0.086023,
		36.905708, 35.375572, 37.449898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713104, 35.255253, 37.635452>,  <37.243080, 34.765198, 37.389683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713104, 35.255253, 37.635452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364513, 35.424740, 37.734234>,  <37.155357, 35.526432, 37.793503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364513, 35.424740, 37.734234>,  <37.713104, 35.255253, 37.635452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364513, 35.424740, 37.734234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265043, -0.016764, 0.964091,
		0.412641, 0.905640, -0.097694,
		-0.871481, 0.423717, 0.246950,
		37.103069, 35.551853, 37.808319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894470, 35.783691, 38.085430>,  <37.713104, 35.255253, 37.635452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894470, 35.783691, 38.085430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513718, 35.691040, 38.165710>,  <37.285267, 35.635448, 38.213879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513718, 35.691040, 38.165710>,  <37.894470, 35.783691, 38.085430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513718, 35.691040, 38.165710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216124, -0.042994, 0.975419,
		-0.217302, 0.971855, 0.090985,
		-0.951877, -0.231625, 0.200699,
		37.228153, 35.621552, 38.225922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717167, 36.254124, 38.580738>,  <37.894470, 35.783691, 38.085430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717167, 36.254124, 38.580738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450188, 35.959698, 38.625866>,  <37.290001, 35.783043, 38.652943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450188, 35.959698, 38.625866>,  <37.717167, 36.254124, 38.580738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450188, 35.959698, 38.625866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072673, 0.086398, 0.993607,
		-0.741104, 0.671378, -0.004174,
		-0.667446, -0.736062, 0.112821,
		37.249954, 35.738880, 38.659714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329601, 36.396603, 39.143318>,  <37.717167, 36.254124, 38.580738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329601, 36.396603, 39.143318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242561, 36.008873, 39.097588>,  <37.190338, 35.776237, 39.070148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242561, 36.008873, 39.097588>,  <37.329601, 36.396603, 39.143318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242561, 36.008873, 39.097588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022530, -0.112118, 0.993440,
		-0.975779, 0.218744, 0.002557,
		-0.217596, -0.969320, -0.114331,
		37.177284, 35.718079, 39.063290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853783, 36.276794, 39.618320>,  <37.329601, 36.396603, 39.143318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853783, 36.276794, 39.618320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004467, 35.920227, 39.517548>,  <37.094875, 35.706287, 39.457085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004467, 35.920227, 39.517548>,  <36.853783, 36.276794, 39.618320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004467, 35.920227, 39.517548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054373, -0.292775, 0.954634,
		-0.924735, -0.345919, -0.158759,
		0.376707, -0.891416, -0.251931,
		37.117477, 35.652802, 39.441967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409981, 35.698757, 39.981087>,  <36.853783, 36.276794, 39.618320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409981, 35.698757, 39.981087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772148, 35.561802, 39.880692>,  <36.989449, 35.479630, 39.820454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772148, 35.561802, 39.880692>,  <36.409981, 35.698757, 39.981087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772148, 35.561802, 39.880692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075531, -0.451859, 0.888886,
		-0.417752, -0.823769, -0.383260,
		0.905416, -0.342386, -0.250985,
		37.043774, 35.459084, 39.805397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382992, 34.947868, 40.090897>,  <36.409981, 35.698757, 39.981087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382992, 34.947868, 40.090897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772526, 35.038456, 40.098454>,  <37.006245, 35.092808, 40.102985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772526, 35.038456, 40.098454>,  <36.382992, 34.947868, 40.090897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772526, 35.038456, 40.098454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114880, -0.562305, 0.818911,
		0.196078, -0.795315, -0.573609,
		0.973835, 0.226467, 0.018890,
		37.064678, 35.106396, 40.104122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688614, 34.326931, 40.196449>,  <36.382992, 34.947868, 40.090897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688614, 34.326931, 40.196449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974079, 34.595543, 40.276180>,  <37.145359, 34.756710, 40.324017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974079, 34.595543, 40.276180>,  <36.688614, 34.326931, 40.196449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974079, 34.595543, 40.276180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130578, -0.407099, 0.904002,
		0.688208, -0.619128, -0.378220,
		0.713666, 0.671529, 0.199323,
		37.188179, 34.797001, 40.335976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191525, 33.986145, 40.527218>,  <36.688614, 34.326931, 40.196449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191525, 33.986145, 40.527218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252144, 34.367893, 40.630142>,  <37.288517, 34.596943, 40.691898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252144, 34.367893, 40.630142>,  <37.191525, 33.986145, 40.527218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252144, 34.367893, 40.630142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017923, -0.257620, 0.966080,
		0.988287, -0.151021, -0.021937,
		0.151550, 0.954371, 0.257309,
		37.297607, 34.654205, 40.707336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760437, 33.908821, 41.065411>,  <37.191525, 33.986145, 40.527218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760437, 33.908821, 41.065411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587799, 34.267708, 41.102768>,  <37.484215, 34.483040, 41.125183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587799, 34.267708, 41.102768>,  <37.760437, 33.908821, 41.065411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587799, 34.267708, 41.102768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020677, -0.093667, 0.995389,
		0.901829, 0.431539, 0.021875,
		-0.431598, 0.897218, 0.093394,
		37.458321, 34.536873, 41.130787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223652, 34.264366, 41.505661>,  <37.760437, 33.908821, 41.065411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223652, 34.264366, 41.505661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864983, 34.440228, 41.526371>,  <37.649780, 34.545742, 41.538795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864983, 34.440228, 41.526371>,  <38.223652, 34.264366, 41.505661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864983, 34.440228, 41.526371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041663, -0.032619, 0.998599,
		0.440724, 0.897576, 0.010932,
		-0.896675, 0.439651, 0.051772,
		37.595982, 34.572124, 41.541901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269028, 34.679420, 42.093548>,  <38.223652, 34.264366, 41.505661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269028, 34.679420, 42.093548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873363, 34.660690, 42.037891>,  <37.635963, 34.649452, 42.004498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873363, 34.660690, 42.037891>,  <38.269028, 34.679420, 42.093548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873363, 34.660690, 42.037891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139639, 0.007505, 0.990174,
		-0.045323, 0.998875, -0.013963,
		-0.989165, -0.046827, -0.139142,
		37.576614, 34.646641, 41.996147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939590, 35.141544, 42.602848>,  <38.269028, 34.679420, 42.093548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939590, 35.141544, 42.602848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683514, 34.860458, 42.478687>,  <37.529869, 34.691807, 42.404190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683514, 34.860458, 42.478687>,  <37.939590, 35.141544, 42.602848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683514, 34.860458, 42.478687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256376, -0.185455, 0.948619,
		-0.724174, 0.686876, -0.061433,
		-0.640190, -0.702715, -0.310400,
		37.491455, 34.649643, 42.385567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255280, 35.258221, 42.924213>,  <37.939590, 35.141544, 42.602848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255280, 35.258221, 42.924213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247551, 34.864822, 42.852261>,  <37.242912, 34.628784, 42.809090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247551, 34.864822, 42.852261>,  <37.255280, 35.258221, 42.924213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247551, 34.864822, 42.852261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347030, -0.162134, 0.923733,
		-0.937655, 0.080272, -0.338171,
		-0.019320, -0.983498, -0.179883,
		37.241756, 34.569775, 42.798294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683113, 35.034569, 43.321465>,  <37.255280, 35.258221, 42.924213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683113, 35.034569, 43.321465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875835, 34.702259, 43.209976>,  <36.991467, 34.502872, 43.143082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875835, 34.702259, 43.209976>,  <36.683113, 35.034569, 43.321465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875835, 34.702259, 43.209976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259976, -0.439275, 0.859913,
		-0.836827, -0.341847, -0.427624,
		0.481802, -0.830770, -0.278725,
		37.020378, 34.453030, 43.126358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163345, 34.503456, 43.428600>,  <36.683113, 35.034569, 43.321465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163345, 34.503456, 43.428600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517445, 34.318626, 43.407360>,  <36.729904, 34.207729, 43.394615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517445, 34.318626, 43.407360>,  <36.163345, 34.503456, 43.428600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517445, 34.318626, 43.407360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076783, -0.257784, 0.963147,
		-0.458734, -0.848549, -0.263683,
		0.885250, -0.462074, -0.053100,
		36.783020, 34.180004, 43.391430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107906, 33.831425, 43.780552>,  <36.163345, 34.503456, 43.428600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107906, 33.831425, 43.780552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492130, 33.941921, 43.793335>,  <36.722664, 34.008221, 43.801006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492130, 33.941921, 43.793335>,  <36.107906, 33.831425, 43.780552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492130, 33.941921, 43.793335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041567, -0.256256, 0.965715,
		0.274963, -0.926295, -0.257631,
		0.960556, 0.276245, 0.031958,
		36.780296, 34.024796, 43.802921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378120, 33.328327, 44.309788>,  <36.107906, 33.831425, 43.780552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378120, 33.328327, 44.309788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668118, 33.602196, 44.279819>,  <36.842117, 33.766518, 44.261837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668118, 33.602196, 44.279819>,  <36.378120, 33.328327, 44.309788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668118, 33.602196, 44.279819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308116, -0.225116, 0.924330,
		0.615994, -0.693218, -0.374165,
		0.724993, 0.684669, -0.074922,
		36.885616, 33.807598, 44.257343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968712, 33.062641, 44.548374>,  <36.378120, 33.328327, 44.309788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968712, 33.062641, 44.548374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058422, 33.449913, 44.592800>,  <37.112247, 33.682274, 44.619453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058422, 33.449913, 44.592800>,  <36.968712, 33.062641, 44.548374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058422, 33.449913, 44.592800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207729, -0.158840, 0.965204,
		0.952128, -0.193405, -0.236743,
		0.224280, 0.968176, 0.111060,
		37.125706, 33.740364, 44.626118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645775, 33.081257, 44.886002>,  <36.968712, 33.062641, 44.548374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645775, 33.081257, 44.886002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471901, 33.432777, 44.964748>,  <37.367577, 33.643688, 45.011997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471901, 33.432777, 44.964748>,  <37.645775, 33.081257, 44.886002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471901, 33.432777, 44.964748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410695, -0.001113, 0.911772,
		0.801487, 0.477184, -0.360436,
		-0.434682, 0.878803, 0.196869,
		37.341496, 33.696419, 45.023808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195686, 33.515884, 45.238018>,  <37.645775, 33.081257, 44.886002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195686, 33.515884, 45.238018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838139, 33.667221, 45.334236>,  <37.623611, 33.758022, 45.391968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838139, 33.667221, 45.334236>,  <38.195686, 33.515884, 45.238018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838139, 33.667221, 45.334236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358028, 0.279449, 0.890912,
		0.269853, 0.882476, -0.385248,
		-0.893865, 0.378345, 0.240541,
		37.569981, 33.780724, 45.406399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370289, 34.087837, 45.671665>,  <38.195686, 33.515884, 45.238018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370289, 34.087837, 45.671665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978874, 34.033360, 45.733528>,  <37.744026, 34.000671, 45.770645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978874, 34.033360, 45.733528>,  <38.370289, 34.087837, 45.671665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978874, 34.033360, 45.733528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110934, 0.284333, 0.952286,
		-0.173675, 0.949002, -0.263121,
		-0.978535, -0.136199, 0.154658,
		37.685314, 33.992500, 45.779926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142784, 34.710186, 46.000179>,  <38.370289, 34.087837, 45.671665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142784, 34.710186, 46.000179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874428, 34.433338, 46.106674>,  <37.713413, 34.267231, 46.170570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874428, 34.433338, 46.106674>,  <38.142784, 34.710186, 46.000179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874428, 34.433338, 46.106674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025493, 0.337283, 0.941058,
		-0.741116, 0.638136, -0.208637,
		-0.670892, -0.692115, 0.266234,
		37.673161, 34.225704, 46.186543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649227, 35.074123, 46.475315>,  <38.142784, 34.710186, 46.000179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649227, 35.074123, 46.475315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623249, 34.680313, 46.540417>,  <37.607662, 34.444027, 46.579479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623249, 34.680313, 46.540417>,  <37.649227, 35.074123, 46.475315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623249, 34.680313, 46.540417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213283, 0.145635, 0.966075,
		-0.974829, 0.097456, 0.200524,
		-0.064946, -0.984527, 0.162754,
		37.603764, 34.384956, 46.589245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115311, 35.037010, 47.021561>,  <37.649227, 35.074123, 46.475315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115311, 35.037010, 47.021561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352627, 34.715584, 47.040691>,  <37.495018, 34.522728, 47.052170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352627, 34.715584, 47.040691>,  <37.115311, 35.037010, 47.021561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352627, 34.715584, 47.040691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101258, 0.133434, 0.985871,
		-0.798591, -0.580070, 0.160533,
		0.593294, -0.803563, 0.047823,
		37.530617, 34.474514, 47.055038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931599, 34.652969, 47.618168>,  <37.115311, 35.037010, 47.021561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931599, 34.652969, 47.618168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293415, 34.507156, 47.529690>,  <37.510506, 34.419666, 47.476604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293415, 34.507156, 47.529690>,  <36.931599, 34.652969, 47.618168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293415, 34.507156, 47.529690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227964, -0.024956, 0.973350,
		-0.360341, -0.930855, 0.060527,
		0.904537, -0.364536, -0.221194,
		37.564777, 34.397797, 47.463333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024937, 34.044621, 48.133999>,  <36.931599, 34.652969, 47.618168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024937, 34.044621, 48.133999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377422, 34.188423, 48.011223>,  <37.588913, 34.274704, 47.937557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377422, 34.188423, 48.011223>,  <37.024937, 34.044621, 48.133999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377422, 34.188423, 48.011223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302420, 0.070300, 0.950578,
		0.363317, -0.930490, -0.046773,
		0.881216, 0.359507, -0.306940,
		37.641788, 34.296276, 47.919140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569851, 33.568855, 48.536541>,  <37.024937, 34.044621, 48.133999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569851, 33.568855, 48.536541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787971, 33.880833, 48.413685>,  <37.918842, 34.068020, 48.339970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787971, 33.880833, 48.413685>,  <37.569851, 33.568855, 48.536541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787971, 33.880833, 48.413685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185256, 0.245223, 0.951602,
		0.817515, -0.575807, -0.010770,
		0.545298, 0.779944, -0.307145,
		37.951561, 34.114815, 48.321541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229771, 33.651024, 48.971279>,  <37.569851, 33.568855, 48.536541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229771, 33.651024, 48.971279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204903, 34.016743, 48.811176>,  <38.189983, 34.236172, 48.715115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204903, 34.016743, 48.811176>,  <38.229771, 33.651024, 48.971279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204903, 34.016743, 48.811176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377983, 0.392727, 0.838388,
		0.923723, -0.099166, -0.370004,
		-0.062171, 0.914293, -0.400254,
		38.186253, 34.291031, 48.691101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817024, 33.996155, 49.341751>,  <38.229771, 33.651024, 48.971279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817024, 33.996155, 49.341751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580143, 34.277771, 49.184975>,  <38.438015, 34.446743, 49.090908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580143, 34.277771, 49.184975>,  <38.817024, 33.996155, 49.341751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580143, 34.277771, 49.184975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186381, 0.592898, 0.783411,
		0.783935, 0.390891, -0.482338,
		-0.592206, 0.704042, -0.391940,
		38.402481, 34.488983, 49.067394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198429, 34.494724, 49.450726>,  <38.817024, 33.996155, 49.341751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198429, 34.494724, 49.450726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846260, 34.672432, 49.384422>,  <38.634960, 34.779057, 49.344639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846260, 34.672432, 49.384422>,  <39.198429, 34.494724, 49.450726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846260, 34.672432, 49.384422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256444, 0.740138, 0.621637,
		0.398864, 0.504795, -0.765565,
		-0.880423, 0.444273, -0.165762,
		38.582134, 34.805714, 49.334694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321312, 35.203087, 49.459183>,  <39.198429, 34.494724, 49.450726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321312, 35.203087, 49.459183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929138, 35.171932, 49.531494>,  <38.693832, 35.153240, 49.574883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929138, 35.171932, 49.531494>,  <39.321312, 35.203087, 49.459183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929138, 35.171932, 49.531494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081100, 0.677010, 0.731492,
		-0.179361, 0.731841, -0.657448,
		-0.980435, -0.077882, 0.180782,
		38.635006, 35.148567, 49.585728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147938, 35.837166, 49.644474>,  <39.321312, 35.203087, 49.459183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147938, 35.837166, 49.644474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845512, 35.616489, 49.785328>,  <38.664055, 35.484085, 49.869839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845512, 35.616489, 49.785328>,  <39.147938, 35.837166, 49.644474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845512, 35.616489, 49.785328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136664, 0.393090, 0.909287,
		-0.640066, 0.735607, -0.221806,
		-0.756067, -0.551691, 0.352135,
		38.618690, 35.450981, 49.890968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621384, 36.327911, 49.863922>,  <39.147938, 35.837166, 49.644474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621384, 36.327911, 49.863922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887039, 36.567783, 50.042496>,  <40.046432, 36.711708, 50.149639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887039, 36.567783, 50.042496>,  <39.621384, 36.327911, 49.863922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887039, 36.567783, 50.042496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531356, 0.041431, -0.846135,
		-0.525906, 0.799167, -0.291127,
		0.664141, 0.599680, 0.446431,
		40.086281, 36.747688, 50.176426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700779, 36.887047, 49.410923>,  <39.621384, 36.327911, 49.863922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700779, 36.887047, 49.410923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032410, 36.884323, 49.634560>,  <40.231388, 36.882687, 49.768742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032410, 36.884323, 49.634560>,  <39.700779, 36.887047, 49.410923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032410, 36.884323, 49.634560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559026, 0.029899, -0.828611,
		-0.011072, 0.999530, 0.028597,
		0.829076, -0.006812, 0.559095,
		40.281132, 36.882278, 49.802288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128597, 37.314541, 49.089554>,  <39.700779, 36.887047, 49.410923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128597, 37.314541, 49.089554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389286, 37.088058, 49.291412>,  <40.545700, 36.952168, 49.412525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389286, 37.088058, 49.291412>,  <40.128597, 37.314541, 49.089554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389286, 37.088058, 49.291412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672060, 0.122713, -0.730258,
		0.351550, 0.815078, 0.460500,
		0.651726, -0.566206, 0.504642,
		40.584805, 36.918198, 49.442806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713200, 37.773342, 49.224201>,  <40.128597, 37.314541, 49.089554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713200, 37.773342, 49.224201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791759, 37.381176, 49.218418>,  <40.838894, 37.145874, 49.214951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791759, 37.381176, 49.218418>,  <40.713200, 37.773342, 49.224201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791759, 37.381176, 49.218418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667799, 0.144539, -0.730173,
		0.717964, 0.133753, 0.683109,
		0.196398, -0.980418, -0.014454,
		40.850677, 37.087051, 49.214081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366890, 37.729446, 48.934441>,  <40.713200, 37.773342, 49.224201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366890, 37.729446, 48.934441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240608, 37.350540, 48.912476>,  <41.164841, 37.123196, 48.899296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240608, 37.350540, 48.912476>,  <41.366890, 37.729446, 48.934441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240608, 37.350540, 48.912476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326699, -0.054183, -0.943574,
		0.890842, -0.315829, 0.326577,
		-0.315703, -0.947268, -0.054912,
		41.145897, 37.066360, 48.896004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949543, 37.394833, 48.663818>,  <41.366890, 37.729446, 48.934441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949543, 37.394833, 48.663818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604443, 37.204784, 48.594616>,  <41.397385, 37.090755, 48.553093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604443, 37.204784, 48.594616>,  <41.949543, 37.394833, 48.663818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604443, 37.204784, 48.594616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248180, -0.099795, -0.963560,
		0.440538, -0.874246, 0.204013,
		-0.862748, -0.475117, -0.173006,
		41.345619, 37.062248, 48.542713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162693, 36.899055, 48.103287>,  <41.949543, 37.394833, 48.663818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162693, 36.899055, 48.103287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762821, 36.891727, 48.110268>,  <41.522900, 36.887329, 48.114456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762821, 36.891727, 48.110268>,  <42.162693, 36.899055, 48.103287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762821, 36.891727, 48.110268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016010, -0.076140, -0.996969,
		0.019597, -0.996929, 0.075822,
		-0.999680, -0.018323, 0.017453,
		41.462917, 36.886230, 48.115505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003254, 36.389053, 47.611423>,  <42.162693, 36.899055, 48.103287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003254, 36.389053, 47.611423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687538, 36.631126, 47.652943>,  <41.498108, 36.776371, 47.677853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687538, 36.631126, 47.652943>,  <42.003254, 36.389053, 47.611423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687538, 36.631126, 47.652943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215529, -0.114777, -0.969729,
		-0.574949, -0.787770, 0.221027,
		-0.789292, 0.605182, 0.103796,
		41.450752, 36.812679, 47.684082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483097, 36.106098, 47.214092>,  <42.003254, 36.389053, 47.611423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483097, 36.106098, 47.214092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324795, 36.467255, 47.281235>,  <41.229813, 36.683949, 47.321518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324795, 36.467255, 47.281235>,  <41.483097, 36.106098, 47.214092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324795, 36.467255, 47.281235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253036, 0.068496, -0.965029,
		-0.882809, -0.424387, 0.201355,
		-0.395754, 0.902887, 0.167854,
		41.206070, 36.738121, 47.331593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903687, 36.035118, 46.850590>,  <41.483097, 36.106098, 47.214092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903687, 36.035118, 46.850590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964348, 36.427921, 46.895588>,  <41.000744, 36.663605, 46.922588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964348, 36.427921, 46.895588>,  <40.903687, 36.035118, 46.850590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964348, 36.427921, 46.895588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275377, 0.151279, -0.949359,
		-0.949300, 0.112991, 0.293365,
		0.151649, 0.982012, 0.112494,
		41.009842, 36.722527, 46.929337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325020, 36.256802, 46.724968>,  <40.903687, 36.035118, 46.850590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325020, 36.256802, 46.724968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591209, 36.543736, 46.642433>,  <40.750923, 36.715897, 46.592915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591209, 36.543736, 46.642433>,  <40.325020, 36.256802, 46.724968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591209, 36.543736, 46.642433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450429, 0.165505, -0.877338,
		-0.595198, 0.676783, 0.433248,
		0.665472, 0.717338, -0.206335,
		40.790852, 36.758938, 46.580532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997486, 36.834538, 46.530453>,  <40.325020, 36.256802, 46.724968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997486, 36.834538, 46.530453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350338, 36.909889, 46.357773>,  <40.562050, 36.955101, 46.254166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350338, 36.909889, 46.357773>,  <39.997486, 36.834538, 46.530453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350338, 36.909889, 46.357773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469008, 0.266921, -0.841894,
		-0.043369, 0.945127, 0.323811,
		0.882129, 0.188382, -0.431696,
		40.614975, 36.966404, 46.228264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801933, 37.384937, 46.095695>,  <39.997486, 36.834538, 46.530453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801933, 37.384937, 46.095695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176113, 37.304146, 45.979664>,  <40.400620, 37.255669, 45.910046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176113, 37.304146, 45.979664>,  <39.801933, 37.384937, 46.095695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176113, 37.304146, 45.979664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282298, 0.066974, -0.956986,
		0.212722, 0.977096, 0.005631,
		0.935445, -0.201983, -0.290079,
		40.456745, 37.243549, 45.892639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845463, 37.883949, 45.549911>,  <39.801933, 37.384937, 46.095695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845463, 37.883949, 45.549911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115582, 37.592133, 45.506573>,  <40.277653, 37.417042, 45.480568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115582, 37.592133, 45.506573>,  <39.845463, 37.883949, 45.549911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115582, 37.592133, 45.506573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195609, -0.035510, -0.980039,
		0.711135, 0.683011, -0.166685,
		0.675296, -0.729545, -0.108351,
		40.318169, 37.373268, 45.474068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147732, 38.056206, 44.952198>,  <39.845463, 37.883949, 45.549911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147732, 38.056206, 44.952198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193130, 37.663528, 45.013386>,  <40.220371, 37.427921, 45.050098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193130, 37.663528, 45.013386>,  <40.147732, 38.056206, 44.952198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193130, 37.663528, 45.013386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208151, -0.174040, -0.962488,
		0.971489, 0.077403, -0.224094,
		0.113501, -0.981692, 0.152967,
		40.227180, 37.369022, 45.059277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660698, 37.912373, 44.429390>,  <40.147732, 38.056206, 44.952198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660698, 37.912373, 44.429390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469086, 37.573391, 44.520912>,  <40.354118, 37.370003, 44.575825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469086, 37.573391, 44.520912>,  <40.660698, 37.912373, 44.429390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469086, 37.573391, 44.520912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262765, -0.110267, -0.958538,
		0.837545, -0.519295, -0.169859,
		-0.479034, -0.847452, 0.228806,
		40.325375, 37.319157, 44.589554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960350, 37.421547, 43.875156>,  <40.660698, 37.912373, 44.429390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960350, 37.421547, 43.875156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618969, 37.282028, 44.030052>,  <40.414139, 37.198315, 44.122990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618969, 37.282028, 44.030052>,  <40.960350, 37.421547, 43.875156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618969, 37.282028, 44.030052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326967, -0.220252, -0.919011,
		0.405841, -0.910949, 0.073929,
		-0.853455, -0.348800, 0.387238,
		40.362934, 37.177387, 44.146225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847198, 36.725182, 43.502934>,  <40.960350, 37.421547, 43.875156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847198, 36.725182, 43.502934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489552, 36.848301, 43.633057>,  <40.274963, 36.922173, 43.711128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489552, 36.848301, 43.633057>,  <40.847198, 36.725182, 43.502934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489552, 36.848301, 43.633057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386342, -0.162760, -0.907881,
		-0.226498, -0.937427, 0.264442,
		-0.894113, 0.307799, 0.325303,
		40.221317, 36.940639, 43.730648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319893, 36.198898, 43.214439>,  <40.847198, 36.725182, 43.502934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319893, 36.198898, 43.214439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120106, 36.528778, 43.320576>,  <40.000233, 36.726707, 43.384258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120106, 36.528778, 43.320576>,  <40.319893, 36.198898, 43.214439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120106, 36.528778, 43.320576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555265, -0.069646, -0.828752,
		-0.664991, -0.561269, 0.492712,
		-0.499468, 0.824698, 0.265339,
		39.970264, 36.776188, 43.400177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696571, 36.017380, 43.086937>,  <40.319893, 36.198898, 43.214439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696571, 36.017380, 43.086937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666901, 36.416222, 43.093559>,  <39.649097, 36.655529, 43.097534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666901, 36.416222, 43.093559>,  <39.696571, 36.017380, 43.086937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666901, 36.416222, 43.093559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612466, -0.032450, -0.789831,
		-0.787009, -0.068731, 0.613101,
		-0.074181, 0.997107, 0.016557,
		39.644646, 36.715355, 43.098526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962624, 36.122986, 42.984406>,  <39.696571, 36.017380, 43.086937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962624, 36.122986, 42.984406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170162, 36.451790, 42.890514>,  <39.294685, 36.649071, 42.834179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170162, 36.451790, 42.890514>,  <38.962624, 36.122986, 42.984406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170162, 36.451790, 42.890514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390147, -0.016617, -0.920602,
		-0.760645, 0.569230, 0.312084,
		0.518849, 0.822010, -0.234723,
		39.325817, 36.698395, 42.820099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515724, 36.542732, 42.550426>,  <38.962624, 36.122986, 42.984406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515724, 36.542732, 42.550426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874889, 36.690758, 42.455090>,  <39.090389, 36.779572, 42.397888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874889, 36.690758, 42.455090>,  <38.515724, 36.542732, 42.550426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874889, 36.690758, 42.455090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298179, 0.113072, -0.947789,
		-0.323789, 0.922101, 0.211873,
		0.897914, 0.370059, -0.238340,
		39.144264, 36.801777, 42.383587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316395, 37.139248, 42.133087>,  <38.515724, 36.542732, 42.550426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316395, 37.139248, 42.133087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699196, 37.043407, 42.067673>,  <38.928875, 36.985905, 42.028423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699196, 37.043407, 42.067673>,  <38.316395, 37.139248, 42.133087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699196, 37.043407, 42.067673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132646, 0.139927, -0.981237,
		0.257985, 0.960736, 0.102128,
		0.957000, -0.239598, -0.163537,
		38.986298, 36.971527, 42.018612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539547, 37.405746, 41.439243>,  <38.316395, 37.139248, 42.133087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539547, 37.405746, 41.439243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833656, 37.143082, 41.506367>,  <39.010124, 36.985481, 41.546642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833656, 37.143082, 41.506367>,  <38.539547, 37.405746, 41.439243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833656, 37.143082, 41.506367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107564, -0.131396, -0.985477,
		0.669176, 0.742649, -0.025979,
		0.735277, -0.656664, 0.167810,
		39.054241, 36.946083, 41.556709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140255, 37.630505, 41.096901>,  <38.539547, 37.405746, 41.439243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140255, 37.630505, 41.096901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188702, 37.235329, 41.135494>,  <39.217770, 36.998222, 41.158649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188702, 37.235329, 41.135494>,  <39.140255, 37.630505, 41.096901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188702, 37.235329, 41.135494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214165, -0.068900, -0.974365,
		0.969259, 0.138678, 0.203236,
		0.121120, -0.987938, 0.096482,
		39.225037, 36.938946, 41.164440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738091, 37.540661, 40.802238>,  <39.140255, 37.630505, 41.096901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738091, 37.540661, 40.802238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590546, 37.169083, 40.814926>,  <39.502018, 36.946136, 40.822540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590546, 37.169083, 40.814926>,  <39.738091, 37.540661, 40.802238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590546, 37.169083, 40.814926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209785, -0.116449, -0.970788,
		0.905501, -0.351432, 0.237832,
		-0.368862, -0.928943, 0.031719,
		39.479889, 36.890400, 40.824444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279667, 37.135227, 40.497871>,  <39.738091, 37.540661, 40.802238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279667, 37.135227, 40.497871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928459, 36.946835, 40.463806>,  <39.717735, 36.833797, 40.443367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928459, 36.946835, 40.463806>,  <40.279667, 37.135227, 40.497871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928459, 36.946835, 40.463806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080366, 0.030323, -0.996304,
		0.471825, -0.881620, 0.011227,
		-0.878022, -0.470984, -0.085159,
		39.665054, 36.805538, 40.438259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507095, 36.445927, 40.131733>,  <40.279667, 37.135227, 40.497871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507095, 36.445927, 40.131733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112175, 36.480782, 40.078606>,  <39.875221, 36.501694, 40.046730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112175, 36.480782, 40.078606>,  <40.507095, 36.445927, 40.131733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112175, 36.480782, 40.078606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107123, -0.252188, -0.961731,
		-0.117297, -0.963747, 0.239651,
		-0.987302, 0.087136, -0.132821,
		39.815983, 36.506924, 40.038761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269939, 35.865257, 39.602959>,  <40.507095, 36.445927, 40.131733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269939, 35.865257, 39.602959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985764, 36.146687, 39.609432>,  <39.815258, 36.315544, 39.613316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985764, 36.146687, 39.609432>,  <40.269939, 35.865257, 39.602959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985764, 36.146687, 39.609432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012889, 0.036007, -0.999269,
		-0.703640, -0.709711, -0.034649,
		-0.710440, 0.703572, 0.016188,
		39.772633, 36.357758, 39.614288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801674, 35.607418, 39.122414>,  <40.269939, 35.865257, 39.602959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801674, 35.607418, 39.122414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727596, 35.998329, 39.163651>,  <39.683147, 36.232876, 39.188393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727596, 35.998329, 39.163651>,  <39.801674, 35.607418, 39.122414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727596, 35.998329, 39.163651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186885, 0.067963, -0.980028,
		-0.964767, -0.200763, 0.170053,
		-0.185197, 0.977279, 0.103088,
		39.672039, 36.291512, 39.194576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159443, 35.706501, 38.925583>,  <39.801674, 35.607418, 39.122414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159443, 35.706501, 38.925583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337505, 36.062714, 38.888077>,  <39.444344, 36.276440, 38.865574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337505, 36.062714, 38.888077>,  <39.159443, 35.706501, 38.925583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337505, 36.062714, 38.888077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301096, 0.050241, -0.952270,
		-0.843312, 0.452145, 0.290500,
		0.445159, 0.890528, -0.093770,
		39.471054, 36.329872, 38.859947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619835, 36.209091, 38.606628>,  <39.159443, 35.706501, 38.925583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619835, 36.209091, 38.606628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990761, 36.345142, 38.544144>,  <39.213314, 36.426773, 38.506653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990761, 36.345142, 38.544144>,  <38.619835, 36.209091, 38.606628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990761, 36.345142, 38.544144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199844, 0.097046, -0.975010,
		-0.316471, 0.935357, 0.157965,
		0.927313, 0.340130, -0.156213,
		39.268955, 36.447182, 38.497280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452061, 36.726318, 38.178642>,  <38.619835, 36.209091, 38.606628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452061, 36.726318, 38.178642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843212, 36.668335, 38.118313>,  <39.077904, 36.633545, 38.082115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843212, 36.668335, 38.118313>,  <38.452061, 36.726318, 38.178642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843212, 36.668335, 38.118313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115108, 0.229160, -0.966559,
		0.174678, 0.962534, 0.207403,
		0.977874, -0.144962, -0.150824,
		39.136574, 36.624847, 38.073067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682655, 37.383785, 37.800480>,  <38.452061, 36.726318, 38.178642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682655, 37.383785, 37.800480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948051, 37.088089, 37.754341>,  <39.107288, 36.910671, 37.726658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948051, 37.088089, 37.754341>,  <38.682655, 37.383785, 37.800480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948051, 37.088089, 37.754341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111377, 0.250039, -0.961809,
		0.739852, 0.625299, 0.248232,
		0.663486, -0.739244, -0.115348,
		39.147099, 36.866318, 37.719738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227932, 37.720276, 37.515614>,  <38.682655, 37.383785, 37.800480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227932, 37.720276, 37.515614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258202, 37.336838, 37.405804>,  <39.276363, 37.106773, 37.339916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258202, 37.336838, 37.405804>,  <39.227932, 37.720276, 37.515614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258202, 37.336838, 37.405804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085462, 0.280540, -0.956030,
		0.993464, 0.048881, 0.103152,
		0.075670, -0.958597, -0.274529,
		39.280903, 37.049259, 37.323444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728817, 37.666592, 36.917763>,  <39.227932, 37.720276, 37.515614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728817, 37.666592, 36.917763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540646, 37.314098, 36.899315>,  <39.427742, 37.102604, 36.888245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540646, 37.314098, 36.899315>,  <39.728817, 37.666592, 36.917763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540646, 37.314098, 36.899315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188713, -0.049410, -0.980789,
		0.862025, -0.470091, 0.189544,
		-0.470425, -0.881234, -0.046120,
		39.399517, 37.049728, 36.885479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183815, 37.431026, 36.493340>,  <39.728817, 37.666592, 36.917763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183815, 37.431026, 36.493340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860310, 37.195919, 36.484985>,  <39.666206, 37.054855, 36.479973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860310, 37.195919, 36.484985>,  <40.183815, 37.431026, 36.493340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860310, 37.195919, 36.484985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067837, -0.057958, -0.996011,
		0.584210, -0.806953, 0.086746,
		-0.808762, -0.587765, -0.020882,
		39.617680, 37.019588, 36.478722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310959, 36.818130, 36.149143>,  <40.183815, 37.431026, 36.493340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310959, 36.818130, 36.149143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913437, 36.849182, 36.117325>,  <39.674923, 36.867813, 36.098232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913437, 36.849182, 36.117325>,  <40.310959, 36.818130, 36.149143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913437, 36.849182, 36.117325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063223, -0.193819, -0.978998,
		-0.091412, -0.977962, 0.187711,
		-0.993804, 0.077624, -0.079547,
		39.615295, 36.872471, 36.093460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142078, 36.349369, 35.616249>,  <40.310959, 36.818130, 36.149143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142078, 36.349369, 35.616249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827709, 36.595089, 35.644428>,  <39.639088, 36.742519, 35.661335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827709, 36.595089, 35.644428>,  <40.142078, 36.349369, 35.616249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827709, 36.595089, 35.644428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136985, -0.061886, -0.988638,
		-0.602957, -0.786645, 0.132787,
		-0.785925, 0.614297, 0.070444,
		39.591930, 36.779377, 35.665562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611271, 36.122177, 35.168488>,  <40.142078, 36.349369, 35.616249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611271, 36.122177, 35.168488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502045, 36.504993, 35.207500>,  <39.436508, 36.734684, 35.230907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502045, 36.504993, 35.207500>,  <39.611271, 36.122177, 35.168488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502045, 36.504993, 35.207500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246811, 0.028293, -0.968651,
		-0.929795, -0.288578, 0.228481,
		-0.273067, 0.957038, 0.097531,
		39.420124, 36.792107, 35.236759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232372, 36.574261, 34.949543>,  <39.611271, 36.122177, 35.168488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232372, 36.574261, 34.949543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535290, 36.787651, 35.100231>,  <40.717041, 36.915684, 35.190643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535290, 36.787651, 35.100231>,  <40.232372, 36.574261, 34.949543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535290, 36.787651, 35.100231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508025, -0.118721, -0.853121,
		-0.410392, 0.837444, -0.360923,
		0.757291, 0.533472, 0.376721,
		40.762478, 36.947693, 35.213249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497112, 37.138496, 34.420704>,  <40.232372, 36.574261, 34.949543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497112, 37.138496, 34.420704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774780, 37.025867, 34.685684>,  <40.941383, 36.958290, 34.844673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774780, 37.025867, 34.685684>,  <40.497112, 37.138496, 34.420704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774780, 37.025867, 34.685684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657391, -0.126862, -0.742794,
		0.293188, 0.951117, 0.097037,
		0.694174, -0.281570, 0.662450,
		40.983032, 36.941395, 34.884418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165539, 37.627571, 34.499275>,  <40.497112, 37.138496, 34.420704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165539, 37.627571, 34.499275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217846, 37.234505, 34.551834>,  <41.249229, 36.998665, 34.583370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217846, 37.234505, 34.551834>,  <41.165539, 37.627571, 34.499275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217846, 37.234505, 34.551834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839071, 0.039101, -0.542615,
		0.528073, 0.181206, 0.829641,
		0.130764, -0.982668, 0.131396,
		41.257076, 36.939705, 34.591251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753822, 37.441628, 34.962471>,  <41.165539, 37.627571, 34.499275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753822, 37.441628, 34.962471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689533, 37.101624, 34.761814>,  <41.650959, 36.897621, 34.641418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689533, 37.101624, 34.761814>,  <41.753822, 37.441628, 34.962471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689533, 37.101624, 34.761814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986688, -0.125594, -0.103312,
		0.024813, -0.511571, 0.858883,
		-0.160722, -0.850013, -0.501644,
		41.641315, 36.846619, 34.611320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355888, 36.957165, 35.202957>,  <41.753822, 37.441628, 34.962471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355888, 36.957165, 35.202957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174179, 36.896820, 34.851757>,  <42.065155, 36.860615, 34.641037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174179, 36.896820, 34.851757>,  <42.355888, 36.957165, 35.202957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174179, 36.896820, 34.851757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890210, -0.039119, -0.453868,
		0.034125, -0.987780, 0.152070,
		-0.454271, -0.150863, -0.877996,
		42.037899, 36.851562, 34.588360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713791, 36.493519, 34.835037>,  <42.355888, 36.957165, 35.202957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713791, 36.493519, 34.835037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553749, 36.757320, 34.580486>,  <42.457722, 36.915600, 34.427757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553749, 36.757320, 34.580486>,  <42.713791, 36.493519, 34.835037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553749, 36.757320, 34.580486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892254, 0.121749, -0.434812,
		-0.209281, -0.741777, -0.637157,
		-0.400106, 0.659503, -0.636373,
		42.433716, 36.955170, 34.389576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744816, 36.295494, 34.224693>,  <42.713791, 36.493519, 34.835037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744816, 36.295494, 34.224693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746941, 36.695080, 34.206650>,  <42.748215, 36.934834, 34.195824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746941, 36.695080, 34.206650>,  <42.744816, 36.295494, 34.224693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746941, 36.695080, 34.206650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922536, -0.022303, -0.385266,
		-0.385874, -0.039563, -0.921703,
		0.005314, 0.998968, -0.045104,
		42.748535, 36.994770, 34.193119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765251, 35.598801, 34.139545>,  <42.744816, 36.295494, 34.224693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765251, 35.598801, 34.139545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984608, 35.312469, 34.312454>,  <43.116222, 35.140671, 34.416199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984608, 35.312469, 34.312454>,  <42.765251, 35.598801, 34.139545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984608, 35.312469, 34.312454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648959, -0.690318, -0.319864,
		0.527374, -0.105118, -0.843105,
		0.548388, -0.715829, 0.432274,
		43.149124, 35.097721, 34.442135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945988, 35.105080, 33.621891>,  <42.765251, 35.598801, 34.139545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945988, 35.105080, 33.621891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973888, 34.915539, 33.973026>,  <42.990627, 34.801815, 34.183708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973888, 34.915539, 33.973026>,  <42.945988, 35.105080, 33.621891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973888, 34.915539, 33.973026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763261, -0.591954, -0.258889,
		0.642314, -0.651960, -0.402965,
		0.069752, -0.473855, 0.877836,
		42.994812, 34.773380, 34.236378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740768, 34.479527, 33.472679>,  <42.945988, 35.105080, 33.621891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740768, 34.479527, 33.472679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719471, 34.467281, 33.871925>,  <42.706692, 34.459934, 34.111473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719471, 34.467281, 33.871925>,  <42.740768, 34.479527, 33.472679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719471, 34.467281, 33.871925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711102, -0.700574, -0.059420,
		0.701070, -0.712923, 0.015533,
		-0.053244, -0.030612, 0.998112,
		42.703499, 34.458099, 34.171360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715466, 33.708847, 33.674633>,  <42.740768, 34.479527, 33.472679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715466, 33.708847, 33.674633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537106, 33.885765, 33.985901>,  <42.430092, 33.991917, 34.172661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537106, 33.885765, 33.985901>,  <42.715466, 33.708847, 33.674633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537106, 33.885765, 33.985901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785062, -0.610853, -0.102650,
		0.429947, -0.656684, 0.619606,
		-0.445897, 0.442295, 0.778172,
		42.403336, 34.018452, 34.219353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649929, 33.210880, 34.096081>,  <42.715466, 33.708847, 33.674633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649929, 33.210880, 34.096081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375996, 33.488098, 34.186138>,  <42.211636, 33.654427, 34.240173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375996, 33.488098, 34.186138>,  <42.649929, 33.210880, 34.096081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375996, 33.488098, 34.186138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699973, -0.711548, 0.061142,
		0.202575, -0.115723, 0.972405,
		-0.684837, 0.693043, 0.225145,
		42.170544, 33.696011, 34.253681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995789, 32.767197, 34.352837>,  <42.649929, 33.210880, 34.096081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995789, 32.767197, 34.352837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859921, 33.140644, 34.307278>,  <41.778400, 33.364712, 34.279942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859921, 33.140644, 34.307278>,  <41.995789, 32.767197, 34.352837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859921, 33.140644, 34.307278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892840, -0.358148, -0.273068,
		-0.295736, 0.008941, 0.955228,
		-0.339672, 0.933622, -0.113900,
		41.758018, 33.420731, 34.273106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177197, 32.863667, 34.600258>,  <41.995789, 32.767197, 34.352837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177197, 32.863667, 34.600258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251945, 33.173084, 34.358032>,  <41.296795, 33.358734, 34.212696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251945, 33.173084, 34.358032>,  <41.177197, 32.863667, 34.600258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251945, 33.173084, 34.358032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931959, -0.055359, -0.358313,
		-0.310695, 0.631316, 0.710570,
		0.186872, 0.773548, -0.605560,
		41.308006, 33.405148, 34.176365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640545, 33.411819, 34.711288>,  <41.177197, 32.863667, 34.600258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640545, 33.411819, 34.711288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799274, 33.464851, 34.347980>,  <40.894512, 33.496670, 34.129997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799274, 33.464851, 34.347980>,  <40.640545, 33.411819, 34.711288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799274, 33.464851, 34.347980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914864, -0.023234, -0.403094,
		-0.074546, 0.990900, 0.112077,
		0.396821, 0.132584, -0.908270,
		40.918320, 33.504627, 34.075500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202610, 33.832951, 34.404602>,  <40.640545, 33.411819, 34.711288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202610, 33.832951, 34.404602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393421, 33.661053, 34.097939>,  <40.507908, 33.557915, 33.913940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393421, 33.661053, 34.097939>,  <40.202610, 33.832951, 34.404602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393421, 33.661053, 34.097939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863400, -0.066098, -0.500172,
		0.164272, 0.900528, -0.402572,
		0.477028, -0.429745, -0.766658,
		40.536530, 33.532131, 33.867943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931728, 34.147797, 33.776054>,  <40.202610, 33.832951, 34.404602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931728, 34.147797, 33.776054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090923, 33.801254, 33.655361>,  <40.186440, 33.593330, 33.582947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090923, 33.801254, 33.655361>,  <39.931728, 34.147797, 33.776054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090923, 33.801254, 33.655361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726750, -0.097022, -0.680016,
		0.559859, 0.489918, -0.668235,
		0.397985, -0.866353, -0.301729,
		40.210320, 33.541348, 33.564842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112617, 34.254307, 33.057213>,  <39.931728, 34.147797, 33.776054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112617, 34.254307, 33.057213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102196, 33.858433, 33.113564>,  <40.095943, 33.620907, 33.147373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102196, 33.858433, 33.113564>,  <40.112617, 34.254307, 33.057213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102196, 33.858433, 33.113564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624846, -0.093879, -0.775083,
		0.780313, -0.108218, -0.615955,
		-0.026053, -0.989685, 0.140875,
		40.094379, 33.561527, 33.155827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337200, 33.965420, 32.392483>,  <40.112617, 34.254307, 33.057213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337200, 33.965420, 32.392483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139362, 33.676807, 32.586292>,  <40.020660, 33.503639, 32.702579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139362, 33.676807, 32.586292>,  <40.337200, 33.965420, 32.392483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139362, 33.676807, 32.586292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542111, -0.179630, -0.820883,
		0.679330, -0.668671, -0.302308,
		-0.494597, -0.721534, 0.484522,
		39.990982, 33.460346, 32.731647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289803, 33.386040, 31.934336>,  <40.337200, 33.965420, 32.392483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289803, 33.386040, 31.934336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991718, 33.298641, 32.186340>,  <39.812866, 33.246204, 32.337543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991718, 33.298641, 32.186340>,  <40.289803, 33.386040, 31.934336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991718, 33.298641, 32.186340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597641, -0.200216, -0.776362,
		0.295770, -0.955078, 0.018623,
		-0.745215, -0.218495, 0.630011,
		39.768154, 33.233093, 32.375343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023537, 32.751003, 31.665506>,  <40.289803, 33.386040, 31.934336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023537, 32.751003, 31.665506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741489, 32.900352, 31.906635>,  <39.572262, 32.989964, 32.051311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741489, 32.900352, 31.906635>,  <40.023537, 32.751003, 31.665506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741489, 32.900352, 31.906635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694578, -0.192597, -0.693158,
		-0.142702, -0.907470, 0.395139,
		-0.705123, 0.373369, 0.602825,
		39.529953, 33.012367, 32.087482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486389, 32.386032, 31.518446>,  <40.023537, 32.751003, 31.665506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486389, 32.386032, 31.518446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314484, 32.694633, 31.706102>,  <39.211342, 32.879795, 31.818697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314484, 32.694633, 31.706102>,  <39.486389, 32.386032, 31.518446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314484, 32.694633, 31.706102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678557, 0.066829, -0.731501,
		-0.595704, -0.632711, 0.494786,
		-0.429763, 0.771499, 0.469141,
		39.185555, 32.926083, 31.846844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825317, 32.294579, 31.446150>,  <39.486389, 32.386032, 31.518446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825317, 32.294579, 31.446150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836617, 32.688145, 31.516710>,  <38.843395, 32.924282, 31.559046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836617, 32.688145, 31.516710>,  <38.825317, 32.294579, 31.446150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836617, 32.688145, 31.516710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665156, 0.150233, -0.731436,
		-0.746170, -0.096672, 0.658699,
		0.028249, 0.983913, 0.176401,
		38.845093, 32.983318, 31.569632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153927, 32.505302, 31.439829>,  <38.825317, 32.294579, 31.446150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153927, 32.505302, 31.439829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362637, 32.839828, 31.372509>,  <38.487862, 33.040546, 31.332117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362637, 32.839828, 31.372509>,  <38.153927, 32.505302, 31.439829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362637, 32.839828, 31.372509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660232, 0.270948, -0.700486,
		-0.540229, 0.476611, 0.693538,
		0.521773, 0.836319, -0.168300,
		38.519169, 33.090725, 31.322020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645584, 33.030766, 31.326597>,  <38.153927, 32.505302, 31.439829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645584, 33.030766, 31.326597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981773, 33.165482, 31.156813>,  <38.183487, 33.246311, 31.054941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981773, 33.165482, 31.156813>,  <37.645584, 33.030766, 31.326597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981773, 33.165482, 31.156813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526386, 0.321701, -0.787036,
		-0.128518, 0.884917, 0.447666,
		0.840477, 0.336793, -0.424463,
		38.233917, 33.266521, 31.029474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383617, 33.495323, 30.966135>,  <37.645584, 33.030766, 31.326597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383617, 33.495323, 30.966135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737919, 33.441288, 30.788513>,  <37.950500, 33.408867, 30.681940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737919, 33.441288, 30.788513>,  <37.383617, 33.495323, 30.966135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737919, 33.441288, 30.788513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358821, 0.407562, -0.839727,
		0.294417, 0.903130, 0.312529,
		0.885758, -0.135087, -0.444055,
		38.003647, 33.400761, 30.655296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447350, 34.070549, 30.399353>,  <37.383617, 33.495323, 30.966135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447350, 34.070549, 30.399353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709633, 33.787651, 30.293640>,  <37.867004, 33.617912, 30.230211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709633, 33.787651, 30.293640>,  <37.447350, 34.070549, 30.399353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709633, 33.787651, 30.293640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217229, 0.158514, -0.963164,
		0.723086, 0.688968, -0.049695,
		0.655712, -0.707245, -0.264283,
		37.906345, 33.575478, 30.214355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793365, 34.385166, 29.834934>,  <37.447350, 34.070549, 30.399353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793365, 34.385166, 29.834934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832279, 33.987228, 29.823513>,  <37.855629, 33.748466, 29.816660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832279, 33.987228, 29.823513>,  <37.793365, 34.385166, 29.834934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832279, 33.987228, 29.823513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197168, 0.008853, -0.980330,
		0.975531, 0.101002, -0.195290,
		0.097287, -0.994847, -0.028551,
		37.861465, 33.688774, 29.814947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104214, 34.322262, 29.226282>,  <37.793365, 34.385166, 29.834934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104214, 34.322262, 29.226282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922215, 33.981304, 29.329353>,  <37.813015, 33.776730, 29.391195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922215, 33.981304, 29.329353>,  <38.104214, 34.322262, 29.226282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922215, 33.981304, 29.329353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298537, -0.126607, -0.945963,
		0.838960, -0.507335, -0.196867,
		-0.454996, -0.852398, 0.257677,
		37.785717, 33.725586, 29.406656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313030, 33.812550, 28.766949>,  <38.104214, 34.322262, 29.226282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313030, 33.812550, 28.766949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944992, 33.716473, 28.890707>,  <37.724167, 33.658825, 28.964962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944992, 33.716473, 28.890707>,  <38.313030, 33.812550, 28.766949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944992, 33.716473, 28.890707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312312, -0.026830, -0.949601,
		0.236392, -0.970354, -0.050330,
		-0.920098, -0.240196, 0.309396,
		37.668964, 33.644413, 28.983526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140182, 33.333534, 28.232307>,  <38.313030, 33.812550, 28.766949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140182, 33.333534, 28.232307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845207, 33.527489, 28.420383>,  <37.668224, 33.643860, 28.533230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845207, 33.527489, 28.420383>,  <38.140182, 33.333534, 28.232307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845207, 33.527489, 28.420383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549321, -0.025520, -0.835221,
		-0.392985, -0.874207, 0.285176,
		-0.737434, 0.484883, 0.470191,
		37.623978, 33.672955, 28.561441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104496, 33.123707, 27.527462>,  <38.140182, 33.333534, 28.232307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104496, 33.123707, 27.527462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300529, 33.353561, 27.265284>,  <38.418152, 33.491474, 27.107977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300529, 33.353561, 27.265284>,  <38.104496, 33.123707, 27.527462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300529, 33.353561, 27.265284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857101, 0.454603, -0.242311,
		0.158726, 0.680535, 0.715317,
		0.490086, 0.574638, -0.655444,
		38.447556, 33.525951, 27.068651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708748, 32.778637, 27.447557>,  <38.104496, 33.123707, 27.527462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708748, 32.778637, 27.447557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000809, 32.509548, 27.399681>,  <39.176044, 32.348095, 27.370955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000809, 32.509548, 27.399681>,  <38.708748, 32.778637, 27.447557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000809, 32.509548, 27.399681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215533, 0.060529, 0.974619,
		-0.648403, -0.737415, 0.189189,
		0.730150, -0.672722, -0.119690,
		39.219852, 32.307732, 27.363773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555428, 32.380516, 27.962872>,  <38.708748, 32.778637, 27.447557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555428, 32.380516, 27.962872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934601, 32.441380, 27.850962>,  <39.162106, 32.477898, 27.783815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934601, 32.441380, 27.850962>,  <38.555428, 32.380516, 27.962872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934601, 32.441380, 27.850962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235496, 0.256512, 0.937413,
		0.214395, -0.954490, 0.207324,
		0.947932, 0.152153, -0.279774,
		39.218979, 32.487026, 27.767029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928761, 31.990158, 28.465559>,  <38.555428, 32.380516, 27.962872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928761, 31.990158, 28.465559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158123, 32.269520, 28.294243>,  <39.295742, 32.437138, 28.191454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158123, 32.269520, 28.294243>,  <38.928761, 31.990158, 28.465559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158123, 32.269520, 28.294243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391745, 0.225398, 0.892038,
		0.719540, -0.679282, -0.144352,
		0.573409, 0.698406, -0.428288,
		39.330147, 32.479042, 28.165756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458710, 31.852301, 28.764860>,  <38.928761, 31.990158, 28.465559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458710, 31.852301, 28.764860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495842, 32.229721, 28.637680>,  <39.518124, 32.456173, 28.561373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495842, 32.229721, 28.637680>,  <39.458710, 31.852301, 28.764860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495842, 32.229721, 28.637680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444052, 0.246580, 0.861404,
		0.891179, -0.221153, -0.396095,
		0.092833, 0.943552, -0.317951,
		39.523693, 32.512787, 28.542295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076210, 32.070343, 28.933685>,  <39.458710, 31.852301, 28.764860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076210, 32.070343, 28.933685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849529, 32.396660, 28.887510>,  <39.713520, 32.592449, 28.859806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849529, 32.396660, 28.887510>,  <40.076210, 32.070343, 28.933685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849529, 32.396660, 28.887510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410472, 0.401026, 0.818957,
		0.714393, 0.416725, -0.562124,
		-0.566706, 0.815793, -0.115436,
		39.679516, 32.641399, 28.852879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472504, 32.726673, 28.884212>,  <40.076210, 32.070343, 28.933685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472504, 32.726673, 28.884212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130592, 32.739117, 29.091436>,  <39.925446, 32.746582, 29.215771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130592, 32.739117, 29.091436>,  <40.472504, 32.726673, 28.884212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130592, 32.739117, 29.091436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469572, 0.471489, 0.746459,
		-0.221038, 0.881323, -0.417626,
		-0.854778, 0.031110, 0.518061,
		39.874161, 32.748451, 29.246855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355877, 33.413418, 29.024099>,  <40.472504, 32.726673, 28.884212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355877, 33.413418, 29.024099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257187, 33.130791, 29.289396>,  <40.197975, 32.961216, 29.448574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257187, 33.130791, 29.289396>,  <40.355877, 33.413418, 29.024099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257187, 33.130791, 29.289396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550433, 0.461113, 0.695987,
		-0.797591, 0.536786, 0.275151,
		-0.246721, -0.706566, 0.663245,
		40.183170, 32.918819, 29.488369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158508, 33.794804, 29.610668>,  <40.355877, 33.413418, 29.024099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158508, 33.794804, 29.610668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271072, 33.431232, 29.733734>,  <40.338612, 33.213089, 29.807573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271072, 33.431232, 29.733734>,  <40.158508, 33.794804, 29.610668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271072, 33.431232, 29.733734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631678, 0.416824, 0.653636,
		-0.722350, 0.010405, 0.691449,
		0.281412, -0.908928, 0.307665,
		40.355495, 33.158554, 29.826035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173759, 33.852440, 30.292814>,  <40.158508, 33.794804, 29.610668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173759, 33.852440, 30.292814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407551, 33.542477, 30.196560>,  <40.547825, 33.356499, 30.138807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407551, 33.542477, 30.196560>,  <40.173759, 33.852440, 30.292814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407551, 33.542477, 30.196560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667615, 0.290712, 0.685403,
		-0.461165, -0.561258, 0.687253,
		0.584481, -0.774904, -0.240638,
		40.582893, 33.310005, 30.124369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377583, 33.592979, 30.859472>,  <40.173759, 33.852440, 30.292814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377583, 33.592979, 30.859472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661690, 33.469048, 30.606642>,  <40.832153, 33.394688, 30.454943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661690, 33.469048, 30.606642>,  <40.377583, 33.592979, 30.859472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661690, 33.469048, 30.606642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703603, 0.339888, 0.624034,
		0.021489, -0.887964, 0.459411,
		0.710268, -0.309833, -0.632078,
		40.874771, 33.376099, 30.417019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989578, 33.421566, 31.292707>,  <40.377583, 33.592979, 30.859472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989578, 33.421566, 31.292707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137947, 33.462639, 30.923519>,  <41.226967, 33.487282, 30.702007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137947, 33.462639, 30.923519>,  <40.989578, 33.421566, 31.292707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137947, 33.462639, 30.923519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791952, 0.484083, 0.372124,
		0.484986, -0.868982, 0.098283,
		0.370946, 0.102640, -0.922965,
		41.249222, 33.493443, 30.646627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602924, 33.137970, 31.461277>,  <40.989578, 33.421566, 31.292707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602924, 33.137970, 31.461277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667286, 33.318951, 31.110415>,  <41.705902, 33.427540, 30.899897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667286, 33.318951, 31.110415>,  <41.602924, 33.137970, 31.461277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667286, 33.318951, 31.110415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854306, 0.381200, 0.353339,
		0.494240, -0.806210, -0.325195,
		0.160901, 0.452451, -0.877154,
		41.715557, 33.454685, 30.847269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442738, 32.954811, 31.169828>,  <41.602924, 33.137970, 31.461277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442738, 32.954811, 31.169828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287315, 33.285698, 31.007479>,  <42.194061, 33.484230, 30.910069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287315, 33.285698, 31.007479>,  <42.442738, 32.954811, 31.169828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287315, 33.285698, 31.007479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811957, 0.515627, 0.273595,
		0.435602, -0.223243, -0.872017,
		-0.388558, 0.827219, -0.405872,
		42.170750, 33.533863, 30.885717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854317, 33.182781, 30.572279>,  <42.442738, 32.954811, 31.169828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854317, 33.182781, 30.572279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658241, 33.494602, 30.728237>,  <42.540596, 33.681694, 30.821812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658241, 33.494602, 30.728237>,  <42.854317, 33.182781, 30.572279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658241, 33.494602, 30.728237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867297, 0.391757, 0.307120,
		0.086670, 0.488704, -0.868134,
		-0.490189, 0.779548, 0.389898,
		42.511185, 33.728466, 30.845207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216366, 33.815548, 30.363792>,  <42.854317, 33.182781, 30.572279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216366, 33.815548, 30.363792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004353, 33.934288, 30.681522>,  <42.877144, 34.005531, 30.872160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004353, 33.934288, 30.681522>,  <43.216366, 33.815548, 30.363792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004353, 33.934288, 30.681522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833196, 0.356456, 0.422757,
		-0.157646, 0.885901, -0.436266,
		-0.530030, 0.296849, 0.794323,
		42.845345, 34.023342, 30.919819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691101, 34.208416, 30.554501>,  <43.216366, 33.815548, 30.363792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691101, 34.208416, 30.554501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444534, 34.198242, 30.869305>,  <43.296597, 34.192139, 31.058187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444534, 34.198242, 30.869305>,  <43.691101, 34.208416, 30.554501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444534, 34.198242, 30.869305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765761, 0.213462, 0.606667,
		-0.183428, 0.976620, -0.112103,
		-0.616413, -0.025436, 0.787012,
		43.259609, 34.190613, 31.105408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931225, 34.762630, 31.064133>,  <43.691101, 34.208416, 30.554501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931225, 34.762630, 31.064133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709305, 34.516869, 31.288525>,  <43.576153, 34.369411, 31.423159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709305, 34.516869, 31.288525>,  <43.931225, 34.762630, 31.064133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709305, 34.516869, 31.288525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580178, 0.197560, 0.790166,
		-0.596312, 0.763854, 0.246860,
		-0.554802, -0.614408, 0.560979,
		43.542866, 34.332546, 31.456818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697079, 35.207485, 31.617937>,  <43.931225, 34.762630, 31.064133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697079, 35.207485, 31.617937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690674, 34.827263, 31.741995>,  <43.686832, 34.599129, 31.816429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690674, 34.827263, 31.741995>,  <43.697079, 35.207485, 31.617937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690674, 34.827263, 31.741995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572282, 0.245642, 0.782403,
		-0.819901, 0.190014, 0.540053,
		-0.016008, -0.950555, 0.310144,
		43.685871, 34.542095, 31.835037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696712, 35.153198, 32.404007>,  <43.697079, 35.207485, 31.617937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696712, 35.153198, 32.404007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812149, 34.787560, 32.290066>,  <43.881413, 34.568176, 32.221703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812149, 34.787560, 32.290066>,  <43.696712, 35.153198, 32.404007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812149, 34.787560, 32.290066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647763, -0.032678, 0.761141,
		-0.705066, -0.404175, 0.582688,
		0.288593, -0.914098, -0.284849,
		43.898727, 34.513329, 32.204613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587505, 34.593121, 32.999344>,  <43.696712, 35.153198, 32.404007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587505, 34.593121, 32.999344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883671, 34.509247, 32.743900>,  <44.061371, 34.458923, 32.590633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883671, 34.509247, 32.743900>,  <43.587505, 34.593121, 32.999344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883671, 34.509247, 32.743900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667861, 0.122311, 0.734168,
		-0.075839, -0.970088, 0.230604,
		0.740412, -0.209690, -0.638608,
		44.105793, 34.446339, 32.552319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955299, 34.116035, 33.378899>,  <43.587505, 34.593121, 32.999344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955299, 34.116035, 33.378899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235123, 34.219402, 33.112415>,  <44.403019, 34.281422, 32.952526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235123, 34.219402, 33.112415>,  <43.955299, 34.116035, 33.378899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235123, 34.219402, 33.112415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689795, -0.000836, 0.724004,
		0.186538, -0.966033, -0.178840,
		0.699561, 0.258417, -0.666209,
		44.444992, 34.296928, 32.912552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542213, 33.729782, 33.539871>,  <43.955299, 34.116035, 33.378899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542213, 33.729782, 33.539871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720924, 34.009029, 33.316078>,  <44.828152, 34.176579, 33.181801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720924, 34.009029, 33.316078>,  <44.542213, 33.729782, 33.539871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720924, 34.009029, 33.316078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756008, 0.039784, 0.653352,
		0.478377, -0.714873, -0.510011,
		0.446774, 0.698121, -0.559482,
		44.854958, 34.218464, 33.148235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224205, 33.596699, 33.532269>,  <44.542213, 33.729782, 33.539871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224205, 33.596699, 33.532269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.224327, 33.982792, 33.427715>,  <45.224400, 34.214447, 33.364983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.224327, 33.982792, 33.427715>,  <45.224205, 33.596699, 33.532269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.224327, 33.982792, 33.427715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742287, 0.174929, 0.646846,
		0.670082, -0.194220, -0.716428,
		0.000306, 0.965235, -0.261384,
		45.224419, 34.272362, 33.349300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979080, 33.844032, 33.446083>,  <45.224205, 33.596699, 33.532269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979080, 33.844032, 33.446083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776070, 34.184940, 33.496754>,  <45.654263, 34.389484, 33.527157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776070, 34.184940, 33.496754>,  <45.979080, 33.844032, 33.446083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776070, 34.184940, 33.496754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584471, 0.232505, 0.777390,
		0.633094, 0.468588, -0.616131,
		-0.507529, 0.852272, 0.126679,
		45.623810, 34.440620, 33.534756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499081, 34.392017, 33.441772>,  <45.979080, 33.844032, 33.446083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499081, 34.392017, 33.441772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166252, 34.527927, 33.617138>,  <45.966557, 34.609474, 33.722359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166252, 34.527927, 33.617138>,  <46.499081, 34.392017, 33.441772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166252, 34.527927, 33.617138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552763, 0.442475, 0.706165,
		0.045950, 0.829920, -0.555987,
		-0.832070, 0.339778, 0.438417,
		45.916630, 34.629860, 33.748665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674412, 34.994431, 33.632805>,  <46.499081, 34.392017, 33.441772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674412, 34.994431, 33.632805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351883, 34.938530, 33.862698>,  <46.158367, 34.904991, 34.000633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351883, 34.938530, 33.862698>,  <46.674412, 34.994431, 33.632805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.351883, 34.938530, 33.862698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563288, 0.114988, 0.818220,
		-0.180436, 0.983487, -0.013996,
		-0.806318, -0.139752, 0.574735,
		46.109989, 34.896603, 34.035118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.599232, 35.560596, 34.103062>,  <46.674412, 34.994431, 33.632805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.599232, 35.560596, 34.103062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421341, 35.238819, 34.260586>,  <46.314606, 35.045753, 34.355099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421341, 35.238819, 34.260586>,  <46.599232, 35.560596, 34.103062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.421341, 35.238819, 34.260586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492893, 0.147307, 0.857530,
		-0.747846, 0.575474, 0.330992,
		-0.444729, -0.804444, 0.393810,
		46.287922, 34.997486, 34.378727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.368946, 35.884361, 34.143768>,  <46.599232, 35.560596, 34.103062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.368946, 35.884361, 34.143768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461681, 35.918205, 34.531395>,  <47.517323, 35.938511, 34.763969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461681, 35.918205, 34.531395>,  <47.368946, 35.884361, 34.143768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.461681, 35.918205, 34.531395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715419, 0.660172, -0.228797,
		-0.659111, 0.746333, 0.092517,
		0.231836, 0.084614, 0.969068,
		47.531231, 35.943588, 34.822117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211464, 35.177216, 34.303108>,  <47.368946, 35.884361, 34.143768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211464, 35.177216, 34.303108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863216, 35.176258, 34.499893>,  <46.654270, 35.175682, 34.617962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863216, 35.176258, 34.499893>,  <47.211464, 35.177216, 34.303108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.863216, 35.176258, 34.499893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299874, -0.795331, 0.526807,
		0.390009, 0.606171, 0.693145,
		-0.870614, -0.002397, 0.491961,
		46.602032, 35.175541, 34.647480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391586, 35.332306, 34.996395>,  <47.211464, 35.177216, 34.303108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391586, 35.332306, 34.996395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049423, 35.126217, 34.975140>,  <46.844124, 35.002563, 34.962387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049423, 35.126217, 34.975140>,  <47.391586, 35.332306, 34.996395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049423, 35.126217, 34.975140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481236, -0.828508, 0.286332,
		-0.191551, 0.219358, 0.956656,
		-0.855406, -0.515225, -0.053138,
		46.792801, 34.971649, 34.959198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.336006, 34.549168, 35.057213>,  <47.391586, 35.332306, 34.996395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.336006, 34.549168, 35.057213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609108, 34.833050, 35.126682>,  <47.772968, 35.003380, 35.168365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609108, 34.833050, 35.126682>,  <47.336006, 34.549168, 35.057213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.609108, 34.833050, 35.126682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575689, 0.668904, -0.470265,
		-0.449923, 0.221092, 0.865267,
		0.682753, 0.709708, 0.173675,
		47.813934, 35.045963, 35.178783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.519829, 39.732311, 43.541248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141068, 39.604935, 43.559040>,  <35.913811, 39.528511, 43.569717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141068, 39.604935, 43.559040>,  <36.519829, 39.732311, 43.541248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141068, 39.604935, 43.559040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029393, -0.052042, -0.998212,
		0.320186, -0.946513, 0.039919,
		-0.946899, -0.318441, 0.044484,
		35.856998, 39.509403, 43.572384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302620, 39.102497, 43.162838>,  <36.519829, 39.732311, 43.541248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302620, 39.102497, 43.162838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959469, 39.307610, 43.176132>,  <35.753578, 39.430676, 43.184109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959469, 39.307610, 43.176132>,  <36.302620, 39.102497, 43.162838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959469, 39.307610, 43.176132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198342, -0.270770, -0.941989,
		-0.474033, -0.814703, 0.333993,
		-0.857877, 0.512779, 0.033236,
		35.702106, 39.461445, 43.186104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742863, 38.569695, 42.843349>,  <36.302620, 39.102497, 43.162838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742863, 38.569695, 42.843349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623276, 38.950600, 42.818661>,  <35.551525, 39.179142, 42.803848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623276, 38.950600, 42.818661>,  <35.742863, 38.569695, 42.843349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623276, 38.950600, 42.818661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268370, -0.145971, -0.952192,
		-0.915749, -0.268110, 0.299200,
		-0.298966, 0.952266, -0.061720,
		35.533585, 39.236279, 42.800144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286263, 38.588612, 42.275276>,  <35.742863, 38.569695, 42.843349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286263, 38.588612, 42.275276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352367, 38.979786, 42.326397>,  <35.392029, 39.214489, 42.357067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352367, 38.979786, 42.326397>,  <35.286263, 38.588612, 42.275276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352367, 38.979786, 42.326397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252817, 0.167255, -0.952948,
		-0.953296, 0.125174, 0.274879,
		0.165259, 0.977935, 0.127797,
		35.401943, 39.273167, 42.364735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803959, 38.866936, 41.840763>,  <35.286263, 38.588612, 42.275276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803959, 38.866936, 41.840763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066437, 39.162422, 41.902355>,  <35.223923, 39.339714, 41.939312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066437, 39.162422, 41.902355>,  <34.803959, 38.866936, 41.840763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066437, 39.162422, 41.902355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060662, 0.255041, -0.965026,
		-0.752150, 0.623903, 0.212168,
		0.656194, 0.738715, 0.153981,
		35.263294, 39.384037, 41.948551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496433, 39.539806, 41.729439>,  <34.803959, 38.866936, 41.840763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496433, 39.539806, 41.729439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.888317, 39.597229, 41.673492>,  <35.123447, 39.631683, 41.639923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.888317, 39.597229, 41.673492>,  <34.496433, 39.539806, 41.729439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888317, 39.597229, 41.673492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168180, 0.209193, -0.963304,
		-0.109033, 0.967279, 0.229092,
		0.979708, 0.143560, -0.139868,
		35.182228, 39.640297, 41.631531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483215, 40.366154, 41.482677>,  <34.496433, 39.539806, 41.729439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483215, 40.366154, 41.482677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.808529, 40.155602, 41.383488>,  <35.003716, 40.029270, 41.323975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.808529, 40.155602, 41.383488>,  <34.483215, 40.366154, 41.482677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808529, 40.155602, 41.383488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186564, 0.167767, -0.968013,
		0.551146, 0.833532, 0.038239,
		0.813285, -0.526383, -0.247971,
		35.052513, 39.997688, 41.309097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900307, 40.756062, 41.027687>,  <34.483215, 40.366154, 41.482677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900307, 40.756062, 41.027687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.040234, 40.384884, 40.976215>,  <35.124187, 40.162178, 40.945332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.040234, 40.384884, 40.976215>,  <34.900307, 40.756062, 41.027687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040234, 40.384884, 40.976215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122147, 0.181362, -0.975801,
		0.928823, 0.325630, 0.176788,
		0.349813, -0.927940, -0.128678,
		35.145176, 40.106503, 40.937611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285751, 40.872311, 40.436733>,  <34.900307, 40.756062, 41.027687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285751, 40.872311, 40.436733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.297722, 40.473240, 40.461185>,  <35.304905, 40.233795, 40.475857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.297722, 40.473240, 40.461185>,  <35.285751, 40.872311, 40.436733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297722, 40.473240, 40.461185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061198, -0.059216, -0.996367,
		0.997677, 0.033558, 0.059284,
		0.029925, -0.997681, 0.061133,
		35.306698, 40.173935, 40.479527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889103, 40.622871, 40.077747>,  <35.285751, 40.872311, 40.436733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889103, 40.622871, 40.077747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.602577, 40.344017, 40.089661>,  <35.430660, 40.176704, 40.096809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.602577, 40.344017, 40.089661>,  <35.889103, 40.622871, 40.077747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602577, 40.344017, 40.089661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089415, -0.134045, -0.986933,
		0.692022, -0.704294, 0.158354,
		-0.716318, -0.697138, 0.029788,
		35.387680, 40.134876, 40.098598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182659, 40.131031, 39.784389>,  <35.889103, 40.622871, 40.077747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182659, 40.131031, 39.784389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.799782, 40.023441, 39.741608>,  <35.570057, 39.958885, 39.715939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.799782, 40.023441, 39.741608>,  <36.182659, 40.131031, 39.784389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799782, 40.023441, 39.741608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135620, -0.090298, -0.986637,
		0.255726, -0.958904, 0.122911,
		-0.957190, -0.268978, -0.106955,
		35.512627, 39.942749, 39.709522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120361, 39.455170, 39.334324>,  <36.182659, 40.131031, 39.784389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120361, 39.455170, 39.334324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744762, 39.588787, 39.301575>,  <35.519405, 39.668957, 39.281925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744762, 39.588787, 39.301575>,  <36.120361, 39.455170, 39.334324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744762, 39.588787, 39.301575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001632, -0.242372, -0.970182,
		-0.343929, -0.910861, 0.228132,
		-0.938994, 0.334046, -0.081872,
		35.463062, 39.688999, 39.277012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733112, 38.949490, 38.892223>,  <36.120361, 39.455170, 39.334324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733112, 38.949490, 38.892223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526844, 39.288670, 38.843140>,  <35.403084, 39.492180, 38.813690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526844, 39.288670, 38.843140>,  <35.733112, 38.949490, 38.892223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526844, 39.288670, 38.843140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111062, -0.075854, -0.990914,
		-0.849556, -0.524616, -0.055059,
		-0.515673, 0.847953, -0.122708,
		35.372143, 39.543056, 38.806328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334061, 38.767570, 38.350101>,  <35.733112, 38.949490, 38.892223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334061, 38.767570, 38.350101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269585, 39.162201, 38.360558>,  <35.230900, 39.398979, 38.366829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269585, 39.162201, 38.360558>,  <35.334061, 38.767570, 38.350101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269585, 39.162201, 38.360558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199720, 0.058544, -0.978102,
		-0.966503, -0.152445, -0.206476,
		-0.161195, 0.986576, 0.026136,
		35.221226, 39.458176, 38.368397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876694, 38.911011, 37.740887>,  <35.334061, 38.767570, 38.350101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876694, 38.911011, 37.740887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061527, 39.254143, 37.830864>,  <35.172428, 39.460022, 37.884850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061527, 39.254143, 37.830864>,  <34.876694, 38.911011, 37.740887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061527, 39.254143, 37.830864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308973, 0.082027, -0.947527,
		-0.831271, 0.507340, -0.227144,
		0.462087, 0.857833, 0.224941,
		35.200153, 39.511494, 37.898346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773998, 39.295986, 37.122509>,  <34.876694, 38.911011, 37.740887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773998, 39.295986, 37.122509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071766, 39.483337, 37.312862>,  <35.250427, 39.595749, 37.427074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071766, 39.483337, 37.312862>,  <34.773998, 39.295986, 37.122509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071766, 39.483337, 37.312862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517740, 0.045163, -0.854345,
		-0.421653, 0.882371, -0.208880,
		0.744416, 0.468382, 0.475882,
		35.295090, 39.623852, 37.455627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894684, 39.900810, 36.770866>,  <34.773998, 39.295986, 37.122509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894684, 39.900810, 36.770866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.233727, 39.835663, 36.972870>,  <35.437153, 39.796574, 37.094070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.233727, 39.835663, 36.972870>,  <34.894684, 39.900810, 36.770866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233727, 39.835663, 36.972870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530474, 0.237514, -0.813748,
		0.012588, 0.957633, 0.287716,
		0.847608, -0.162869, 0.505009,
		35.488010, 39.786800, 37.124374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445545, 40.518299, 36.589890>,  <34.894684, 39.900810, 36.770866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445545, 40.518299, 36.589890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641571, 40.188808, 36.703949>,  <35.759186, 39.991112, 36.772385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641571, 40.188808, 36.703949>,  <35.445545, 40.518299, 36.589890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641571, 40.188808, 36.703949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649947, 0.127313, -0.749240,
		0.580869, 0.552504, 0.597772,
		0.490062, -0.823730, 0.285146,
		35.788589, 39.941689, 36.789494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057346, 40.701466, 36.517365>,  <35.445545, 40.518299, 36.589890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057346, 40.701466, 36.517365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105709, 40.304710, 36.533089>,  <36.134727, 40.066658, 36.542522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.105709, 40.304710, 36.533089>,  <36.057346, 40.701466, 36.517365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105709, 40.304710, 36.533089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638324, 0.047361, -0.768310,
		0.760213, 0.117986, 0.638870,
		0.120907, -0.991885, 0.039309,
		36.141983, 40.007145, 36.544880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717667, 40.594486, 36.343582>,  <36.057346, 40.701466, 36.517365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717667, 40.594486, 36.343582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573143, 40.227005, 36.279774>,  <36.486431, 40.006516, 36.241489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573143, 40.227005, 36.279774>,  <36.717667, 40.594486, 36.343582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573143, 40.227005, 36.279774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399478, 0.002070, -0.916741,
		0.842541, -0.394947, 0.366253,
		-0.361305, -0.918702, -0.159517,
		36.464752, 39.951393, 36.231918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317322, 40.205627, 36.043930>,  <36.717667, 40.594486, 36.343582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317322, 40.205627, 36.043930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969841, 40.022842, 35.967468>,  <36.761353, 39.913170, 35.921593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.969841, 40.022842, 35.967468>,  <37.317322, 40.205627, 36.043930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969841, 40.022842, 35.967468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284456, -0.144291, -0.947769,
		0.405516, -0.877703, 0.255332,
		-0.868701, -0.456967, -0.191155,
		36.709232, 39.885754, 35.910122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467167, 39.496872, 35.756992>,  <37.317322, 40.205627, 36.043930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467167, 39.496872, 35.756992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117485, 39.640362, 35.626099>,  <36.907677, 39.726456, 35.547562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117485, 39.640362, 35.626099>,  <37.467167, 39.496872, 35.756992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117485, 39.640362, 35.626099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347327, -0.008958, -0.937702,
		-0.339308, -0.933401, -0.116764,
		-0.874205, 0.358725, -0.327234,
		36.855225, 39.747978, 35.527927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142307, 39.290466, 35.315147>,  <37.467167, 39.496872, 35.756992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142307, 39.290466, 35.315147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540314, 39.326527, 35.298119>,  <38.779118, 39.348164, 35.287903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540314, 39.326527, 35.298119>,  <38.142307, 39.290466, 35.315147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540314, 39.326527, 35.298119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027346, 0.163808, 0.986113,
		0.095869, -0.982364, 0.160527,
		0.995018, 0.090148, -0.042568,
		38.838818, 39.353573, 35.285347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475498, 38.843933, 35.807865>,  <38.142307, 39.290466, 35.315147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475498, 38.843933, 35.807865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.724018, 39.154293, 35.764103>,  <38.873131, 39.340508, 35.737846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.724018, 39.154293, 35.764103>,  <38.475498, 38.843933, 35.807865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724018, 39.154293, 35.764103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105462, 0.221157, 0.969519,
		0.776446, -0.590820, 0.219232,
		0.621296, 0.775900, -0.109408,
		38.910408, 39.387062, 35.731281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974903, 38.736137, 36.332230>,  <38.475498, 38.843933, 35.807865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974903, 38.736137, 36.332230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.022579, 39.114025, 36.210045>,  <39.051186, 39.340755, 36.136734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.022579, 39.114025, 36.210045>,  <38.974903, 38.736137, 36.332230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022579, 39.114025, 36.210045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129760, 0.319838, 0.938545,
		0.984355, -0.072231, 0.160709,
		0.119193, 0.944715, -0.305461,
		39.058338, 39.397438, 36.118408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545654, 38.964169, 36.723839>,  <38.974903, 38.736137, 36.332230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545654, 38.964169, 36.723839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366337, 39.310734, 36.635880>,  <39.258747, 39.518673, 36.583103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366337, 39.310734, 36.635880>,  <39.545654, 38.964169, 36.723839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366337, 39.310734, 36.635880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005983, 0.243093, 0.969984,
		0.893866, 0.436154, -0.103794,
		-0.448294, 0.866415, -0.219902,
		39.231850, 39.570660, 36.569908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930363, 39.515366, 37.097485>,  <39.545654, 38.964169, 36.723839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930363, 39.515366, 37.097485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561996, 39.655338, 37.028828>,  <39.340977, 39.739323, 36.987633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561996, 39.655338, 37.028828>,  <39.930363, 39.515366, 37.097485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561996, 39.655338, 37.028828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000117, 0.440630, 0.897689,
		0.389758, 0.826677, -0.405825,
		-0.920917, 0.349929, -0.171643,
		39.285721, 39.760319, 36.977333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968746, 40.177696, 37.307758>,  <39.930363, 39.515366, 37.097485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968746, 40.177696, 37.307758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.579247, 40.086647, 37.308556>,  <39.345547, 40.032017, 37.309032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.579247, 40.086647, 37.308556>,  <39.968746, 40.177696, 37.307758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579247, 40.086647, 37.308556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122552, 0.531591, 0.838088,
		-0.191830, 0.815841, -0.545531,
		-0.973747, -0.227626, 0.001993,
		39.287121, 40.018360, 37.309155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785835, 40.782780, 37.687538>,  <39.968746, 40.177696, 37.307758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785835, 40.782780, 37.687538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484261, 40.520027, 37.683880>,  <39.303314, 40.362377, 37.681686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484261, 40.520027, 37.683880>,  <39.785835, 40.782780, 37.687538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484261, 40.520027, 37.683880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293292, 0.324107, 0.899408,
		-0.587837, 0.680783, -0.437015,
		-0.753941, -0.656878, -0.009146,
		39.258080, 40.322964, 37.681137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300594, 41.132427, 37.924644>,  <39.785835, 40.782780, 37.687538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300594, 41.132427, 37.924644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205139, 40.749710, 37.991096>,  <39.147865, 40.520081, 38.030968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205139, 40.749710, 37.991096>,  <39.300594, 41.132427, 37.924644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205139, 40.749710, 37.991096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231300, 0.222147, 0.947181,
		-0.943160, 0.187611, -0.274319,
		-0.238641, -0.956793, 0.166126,
		39.133545, 40.462673, 38.040936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651279, 41.129642, 38.343498>,  <39.300594, 41.132427, 37.924644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651279, 41.129642, 38.343498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.767113, 40.747078, 38.358612>,  <38.836613, 40.517540, 38.367680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.767113, 40.747078, 38.358612>,  <38.651279, 41.129642, 38.343498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767113, 40.747078, 38.358612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475673, -0.109542, 0.872775,
		-0.830590, -0.270711, -0.486658,
		0.289579, -0.956408, 0.037786,
		38.853985, 40.460155, 38.369949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966476, 40.645885, 38.414833>,  <38.651279, 41.129642, 38.343498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966476, 40.645885, 38.414833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317848, 40.512871, 38.552109>,  <38.528671, 40.433064, 38.634476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317848, 40.512871, 38.552109>,  <37.966476, 40.645885, 38.414833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317848, 40.512871, 38.552109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414718, -0.173695, 0.893218,
		-0.237419, -0.926957, -0.290488,
		0.878431, -0.332538, 0.343187,
		38.581379, 40.413109, 38.655064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781960, 40.003124, 38.814861>,  <37.966476, 40.645885, 38.414833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781960, 40.003124, 38.814861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146748, 40.105434, 38.943165>,  <38.365620, 40.166821, 39.020149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146748, 40.105434, 38.943165>,  <37.781960, 40.003124, 38.814861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146748, 40.105434, 38.943165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231256, -0.325303, 0.916896,
		0.338866, -0.910360, -0.237517,
		0.911970, 0.255778, 0.320761,
		38.420338, 40.182167, 39.039394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922314, 39.500019, 39.208168>,  <37.781960, 40.003124, 38.814861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922314, 39.500019, 39.208168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187611, 39.780140, 39.313759>,  <38.346786, 39.948212, 39.377113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187611, 39.780140, 39.313759>,  <37.922314, 39.500019, 39.208168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187611, 39.780140, 39.313759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030887, -0.326806, 0.944586,
		0.747769, -0.634641, -0.195121,
		0.663240, 0.700306, 0.263978,
		38.386581, 39.990231, 39.392952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446594, 39.136330, 39.698364>,  <37.922314, 39.500019, 39.208168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446594, 39.136330, 39.698364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.436165, 39.529961, 39.768692>,  <38.429905, 39.766140, 39.810890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.436165, 39.529961, 39.768692>,  <38.446594, 39.136330, 39.698364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436165, 39.529961, 39.768692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038289, -0.176732, 0.983514,
		0.998926, 0.018916, 0.042288,
		-0.026078, 0.984077, 0.175818,
		38.428341, 39.825184, 39.821438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823235, 39.139393, 40.393044>,  <38.446594, 39.136330, 39.698364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823235, 39.139393, 40.393044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718357, 39.522270, 40.343983>,  <38.655430, 39.751995, 40.314545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718357, 39.522270, 40.343983>,  <38.823235, 39.139393, 40.393044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718357, 39.522270, 40.343983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011854, 0.130282, 0.991406,
		0.964942, 0.258486, -0.045505,
		-0.262194, 0.957189, -0.122651,
		38.639698, 39.809425, 40.307186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288807, 39.635422, 40.804371>,  <38.823235, 39.139393, 40.393044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288807, 39.635422, 40.804371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.934090, 39.811798, 40.748989>,  <38.721260, 39.917625, 40.715759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.934090, 39.811798, 40.748989>,  <39.288807, 39.635422, 40.804371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934090, 39.811798, 40.748989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170202, -0.033063, 0.984854,
		0.429689, 0.896925, 0.104370,
		-0.886791, 0.440945, -0.138452,
		38.668053, 39.944080, 40.707455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243095, 40.103924, 41.332371>,  <39.288807, 39.635422, 40.804371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243095, 40.103924, 41.332371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862724, 40.057632, 41.217583>,  <38.634502, 40.029858, 41.148712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862724, 40.057632, 41.217583>,  <39.243095, 40.103924, 41.332371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862724, 40.057632, 41.217583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287088, -0.015989, 0.957771,
		-0.115433, 0.993152, -0.018021,
		-0.950924, -0.115732, -0.286967,
		38.577446, 40.022911, 41.131493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772778, 40.749943, 41.658310>,  <39.243095, 40.103924, 41.332371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772778, 40.749943, 41.658310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557529, 40.418903, 41.594418>,  <38.428383, 40.220280, 41.556084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557529, 40.418903, 41.594418>,  <38.772778, 40.749943, 41.658310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557529, 40.418903, 41.594418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370682, 0.062175, 0.926676,
		-0.756983, 0.557870, -0.340233,
		-0.538119, -0.827596, -0.159727,
		38.396095, 40.170624, 41.546501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220234, 40.940670, 41.927437>,  <38.772778, 40.749943, 41.658310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220234, 40.940670, 41.927437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182598, 40.542545, 41.918533>,  <38.160015, 40.303669, 41.913193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182598, 40.542545, 41.918533>,  <38.220234, 40.940670, 41.927437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182598, 40.542545, 41.918533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044542, -0.018128, 0.998843,
		-0.994567, 0.094972, -0.042628,
		-0.094089, -0.995315, -0.022260,
		38.154373, 40.243950, 41.911854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.693184, 40.753578, 42.365978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.875336, 40.398151, 42.343796>,  <37.984627, 40.184895, 42.330486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.875336, 40.398151, 42.343796>,  <37.693184, 40.753578, 42.365978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875336, 40.398151, 42.343796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002109, -0.063361, 0.997988,
		-0.890297, -0.454343, -0.030727,
		0.455376, -0.888570, -0.055452,
		38.011948, 40.131580, 42.327160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234936, 40.257900, 42.641731>,  <37.693184, 40.753578, 42.365978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234936, 40.257900, 42.641731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598492, 40.092575, 42.663975>,  <37.816624, 39.993378, 42.677322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598492, 40.092575, 42.663975>,  <37.234936, 40.257900, 42.641731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598492, 40.092575, 42.663975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126699, -0.146617, 0.981046,
		-0.397328, -0.898706, -0.185625,
		0.908888, -0.413316, 0.055610,
		37.871159, 39.968578, 42.680656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177876, 39.902485, 43.262402>,  <37.234936, 40.257900, 42.641731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177876, 39.902485, 43.262402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565144, 39.855213, 43.174149>,  <37.797504, 39.826851, 43.121197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565144, 39.855213, 43.174149>,  <37.177876, 39.902485, 43.262402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565144, 39.855213, 43.174149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194377, -0.200334, 0.960252,
		-0.157677, -0.972575, -0.170987,
		0.968171, -0.118174, -0.220634,
		37.855595, 39.819759, 43.107960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378025, 39.175690, 43.401875>,  <37.177876, 39.902485, 43.262402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378025, 39.175690, 43.401875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669609, 39.445370, 43.449326>,  <37.844559, 39.607178, 43.477798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669609, 39.445370, 43.449326>,  <37.378025, 39.175690, 43.401875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669609, 39.445370, 43.449326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073930, -0.249817, 0.965467,
		0.680554, -0.695014, -0.231950,
		0.728958, 0.674201, 0.118631,
		37.888298, 39.647629, 43.484917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933167, 38.850861, 43.637238>,  <37.378025, 39.175690, 43.401875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933167, 38.850861, 43.637238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002071, 39.221745, 43.770267>,  <38.043415, 39.444275, 43.850086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002071, 39.221745, 43.770267>,  <37.933167, 38.850861, 43.637238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002071, 39.221745, 43.770267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063496, -0.347370, 0.935576,
		0.983003, -0.140044, -0.118712,
		0.172258, 0.927212, 0.332573,
		38.053749, 39.499908, 43.870041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197613, 38.682182, 44.296364>,  <37.933167, 38.850861, 43.637238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197613, 38.682182, 44.296364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.189857, 39.081490, 44.318562>,  <38.185204, 39.321075, 44.331882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.189857, 39.081490, 44.318562>,  <38.197613, 38.682182, 44.296364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189857, 39.081490, 44.318562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190377, -0.050805, 0.980395,
		0.981519, 0.029576, -0.189063,
		-0.019391, 0.998271, 0.055497,
		38.184040, 39.380970, 44.335209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750950, 38.854530, 44.645378>,  <38.197613, 38.682182, 44.296364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750950, 38.854530, 44.645378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513248, 39.174957, 44.674118>,  <38.370628, 39.367214, 44.691364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513248, 39.174957, 44.674118>,  <38.750950, 38.854530, 44.645378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513248, 39.174957, 44.674118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119748, -0.000217, 0.992804,
		0.795315, 0.598579, -0.095797,
		-0.594251, 0.801064, 0.071851,
		38.334972, 39.415276, 44.695675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055660, 39.223015, 45.199581>,  <38.750950, 38.854530, 44.645378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055660, 39.223015, 45.199581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678307, 39.354267, 45.180210>,  <38.451893, 39.433018, 45.168587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678307, 39.354267, 45.180210>,  <39.055660, 39.223015, 45.199581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678307, 39.354267, 45.180210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059605, -0.024070, 0.997932,
		0.326290, 0.944324, 0.042266,
		-0.943389, 0.328135, -0.048432,
		38.395290, 39.452709, 45.165680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998741, 39.775841, 45.643887>,  <39.055660, 39.223015, 45.199581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998741, 39.775841, 45.643887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621189, 39.657261, 45.585632>,  <38.394657, 39.586113, 45.550678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621189, 39.657261, 45.585632>,  <38.998741, 39.775841, 45.643887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621189, 39.657261, 45.585632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120147, -0.102568, 0.987443,
		-0.307669, 0.949524, 0.061194,
		-0.943877, -0.296453, -0.145639,
		38.338024, 39.568325, 45.541939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594578, 40.286057, 46.034767>,  <38.998741, 39.775841, 45.643887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594578, 40.286057, 46.034767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373123, 39.955353, 45.994865>,  <38.240250, 39.756931, 45.970924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373123, 39.955353, 45.994865>,  <38.594578, 40.286057, 46.034767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373123, 39.955353, 45.994865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218694, 0.028766, 0.975369,
		-0.803528, 0.561818, -0.196733,
		-0.553639, -0.826761, -0.099752,
		38.207031, 39.707325, 45.964939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947460, 40.492626, 46.397263>,  <38.594578, 40.286057, 46.034767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947460, 40.492626, 46.397263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956036, 40.093227, 46.417435>,  <37.961182, 39.853588, 46.429539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956036, 40.093227, 46.417435>,  <37.947460, 40.492626, 46.397263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956036, 40.093227, 46.417435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132312, 0.047164, 0.990085,
		-0.990976, -0.027895, -0.131103,
		0.021435, -0.998498, 0.050429,
		37.962467, 39.793678, 46.432564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537186, 40.329277, 47.015060>,  <37.947460, 40.492626, 46.397263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537186, 40.329277, 47.015060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735107, 39.992294, 46.929802>,  <37.853863, 39.790104, 46.878647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735107, 39.992294, 46.929802>,  <37.537186, 40.329277, 47.015060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735107, 39.992294, 46.929802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174825, -0.143759, 0.974048,
		-0.851235, -0.519231, 0.076150,
		0.494808, -0.842456, -0.213147,
		37.883549, 39.739559, 46.865856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387486, 39.754242, 47.591957>,  <37.537186, 40.329277, 47.015060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387486, 39.754242, 47.591957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732735, 39.669903, 47.408409>,  <37.939884, 39.619301, 47.298279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732735, 39.669903, 47.408409>,  <37.387486, 39.754242, 47.591957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732735, 39.669903, 47.408409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396159, -0.280813, 0.874187,
		-0.313170, -0.936318, -0.158851,
		0.863124, -0.210839, -0.458873,
		37.991673, 39.606651, 47.270748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510075, 38.945797, 47.719307>,  <37.387486, 39.754242, 47.591957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510075, 38.945797, 47.719307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846989, 39.147846, 47.644035>,  <38.049137, 39.269077, 47.598873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.846989, 39.147846, 47.644035>,  <37.510075, 38.945797, 47.719307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846989, 39.147846, 47.644035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335800, -0.218613, 0.916213,
		0.421664, -0.834899, -0.353754,
		0.842281, 0.505125, -0.188178,
		38.099674, 39.299385, 47.587582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865688, 38.627628, 48.151291>,  <37.510075, 38.945797, 47.719307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865688, 38.627628, 48.151291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105953, 38.928654, 48.043327>,  <38.250111, 39.109268, 47.978550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105953, 38.928654, 48.043327>,  <37.865688, 38.627628, 48.151291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105953, 38.928654, 48.043327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438538, -0.027845, 0.898281,
		0.668500, -0.657929, -0.346754,
		0.600660, 0.752566, -0.269912,
		38.286152, 39.154423, 47.962353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498035, 38.420090, 48.307983>,  <37.865688, 38.627628, 48.151291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498035, 38.420090, 48.307983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537556, 38.817112, 48.279499>,  <38.561268, 39.055325, 48.262409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537556, 38.817112, 48.279499>,  <38.498035, 38.420090, 48.307983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537556, 38.817112, 48.279499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476049, 0.015695, 0.879278,
		0.873850, -0.120776, -0.470955,
		0.098804, 0.992556, -0.071211,
		38.567196, 39.114880, 48.258137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211414, 38.592667, 48.490871>,  <38.498035, 38.420090, 48.307983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211414, 38.592667, 48.490871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016106, 38.932278, 48.571606>,  <38.898922, 39.136044, 48.620045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016106, 38.932278, 48.571606>,  <39.211414, 38.592667, 48.490871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016106, 38.932278, 48.571606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514152, 0.092991, 0.852643,
		0.705150, 0.520097, -0.481935,
		-0.488273, 0.849030, 0.201836,
		38.869625, 39.186985, 48.632156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765408, 39.031837, 48.845318>,  <39.211414, 38.592667, 48.490871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765408, 39.031837, 48.845318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414886, 39.201595, 48.936512>,  <39.204575, 39.303452, 48.991226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414886, 39.201595, 48.936512>,  <39.765408, 39.031837, 48.845318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414886, 39.201595, 48.936512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329320, 0.182309, 0.926451,
		0.351619, 0.886934, -0.299520,
		-0.876306, 0.424396, 0.227981,
		39.151993, 39.328915, 49.004906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958813, 39.693077, 49.028728>,  <39.765408, 39.031837, 48.845318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958813, 39.693077, 49.028728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611862, 39.566555, 49.182404>,  <39.403690, 39.490643, 49.274609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611862, 39.566555, 49.182404>,  <39.958813, 39.693077, 49.028728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611862, 39.566555, 49.182404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373043, 0.097696, 0.922656,
		-0.329377, 0.943613, 0.033256,
		-0.867381, -0.316308, 0.384187,
		39.351646, 39.471664, 49.297661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031815, 39.957088, 49.666519>,  <39.958813, 39.693077, 49.028728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031815, 39.957088, 49.666519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.703899, 39.731781, 49.707870>,  <39.507153, 39.596596, 49.732681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.703899, 39.731781, 49.707870>,  <40.031815, 39.957088, 49.666519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703899, 39.731781, 49.707870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316632, -0.295391, 0.901381,
		-0.477179, 0.771671, 0.420504,
		-0.819783, -0.563265, 0.103382,
		39.457966, 39.562801, 49.738884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755322, 40.190434, 50.266487>,  <40.031815, 39.957088, 49.666519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755322, 40.190434, 50.266487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626923, 39.819511, 50.189465>,  <39.549885, 39.596958, 50.143253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626923, 39.819511, 50.189465>,  <39.755322, 40.190434, 50.266487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626923, 39.819511, 50.189465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153001, -0.251414, 0.955710,
		-0.934641, 0.277316, 0.222580,
		-0.320993, -0.927301, -0.192552,
		39.530624, 39.541321, 50.131699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262577, 40.054611, 50.759758>,  <39.755322, 40.190434, 50.266487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262577, 40.054611, 50.759758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365021, 39.693565, 50.621372>,  <39.426487, 39.476936, 50.538342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365021, 39.693565, 50.621372>,  <39.262577, 40.054611, 50.759758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365021, 39.693565, 50.621372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191463, -0.303445, 0.933415,
		-0.947496, -0.305299, 0.095101,
		0.256112, -0.902615, -0.345967,
		39.441856, 39.422779, 50.517582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863201, 39.381660, 50.985764>,  <39.262577, 40.054611, 50.759758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863201, 39.381660, 50.985764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244858, 39.286465, 50.913120>,  <39.473850, 39.229347, 50.869534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244858, 39.286465, 50.913120>,  <38.863201, 39.381660, 50.985764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244858, 39.286465, 50.913120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120310, -0.250653, 0.960572,
		-0.274133, -0.938366, -0.210524,
		0.954137, -0.237996, -0.181607,
		39.531097, 39.215069, 50.858639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433678, 38.858498, 51.309029>,  <38.863201, 39.381660, 50.985764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433678, 38.858498, 51.309029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525032, 39.212181, 51.472004>,  <38.579845, 39.424393, 51.569790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525032, 39.212181, 51.472004>,  <38.433678, 38.858498, 51.309029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525032, 39.212181, 51.472004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686951, 0.442914, -0.576130,
		-0.689882, -0.148307, 0.708568,
		0.228390, 0.884213, 0.407438,
		38.593548, 39.477444, 51.594234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271275, 38.512768, 50.594986>,  <38.433678, 38.858498, 51.309029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271275, 38.512768, 50.594986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013741, 38.286793, 50.801414>,  <37.859219, 38.151207, 50.925270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013741, 38.286793, 50.801414>,  <38.271275, 38.512768, 50.594986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013741, 38.286793, 50.801414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724882, 0.234375, -0.647777,
		0.245009, -0.791140, -0.560418,
		-0.643830, -0.564948, 0.516059,
		37.820591, 38.117313, 50.956234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066448, 37.796963, 50.275494>,  <38.271275, 38.512768, 50.594986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066448, 37.796963, 50.275494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782547, 37.983723, 50.486496>,  <37.612206, 38.095779, 50.613098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782547, 37.983723, 50.486496>,  <38.066448, 37.796963, 50.275494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782547, 37.983723, 50.486496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564958, 0.070038, -0.822142,
		-0.420800, -0.881534, 0.214068,
		-0.709753, 0.466897, 0.527502,
		37.569622, 38.123791, 50.644745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453140, 37.520439, 49.924675>,  <38.066448, 37.796963, 50.275494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453140, 37.520439, 49.924675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286755, 37.820362, 50.130493>,  <37.186924, 38.000317, 50.253983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286755, 37.820362, 50.130493>,  <37.453140, 37.520439, 49.924675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286755, 37.820362, 50.130493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635780, 0.164766, -0.754080,
		-0.650196, -0.640810, 0.408176,
		-0.415968, 0.749809, 0.514544,
		37.161964, 38.045303, 50.284855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698643, 37.440655, 49.887070>,  <37.453140, 37.520439, 49.924675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698643, 37.440655, 49.887070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.803131, 37.822445, 49.944664>,  <36.865826, 38.051521, 49.979221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.803131, 37.822445, 49.944664>,  <36.698643, 37.440655, 49.887070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803131, 37.822445, 49.944664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609477, 0.278766, -0.742178,
		-0.748531, 0.106118, 0.654553,
		0.261225, 0.954478, 0.143988,
		36.881500, 38.108788, 49.987862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060333, 37.922043, 49.984600>,  <36.698643, 37.440655, 49.887070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060333, 37.922043, 49.984600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371403, 38.131264, 49.845089>,  <36.558044, 38.256798, 49.761383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371403, 38.131264, 49.845089>,  <36.060333, 37.922043, 49.984600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371403, 38.131264, 49.845089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493236, 0.163644, -0.854364,
		-0.389805, 0.836441, 0.385251,
		0.777670, 0.523055, -0.348773,
		36.604702, 38.288181, 49.740456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723637, 38.230766, 49.370338>,  <36.060333, 37.922043, 49.984600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723637, 38.230766, 49.370338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098274, 38.370914, 49.372486>,  <36.323055, 38.455002, 49.373775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098274, 38.370914, 49.372486>,  <35.723637, 38.230766, 49.370338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098274, 38.370914, 49.372486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151262, 0.418076, -0.895730,
		-0.316083, 0.838124, 0.444566,
		0.936595, 0.350371, 0.005371,
		36.379253, 38.476025, 49.374096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598789, 38.880154, 49.161591>,  <35.723637, 38.230766, 49.370338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598789, 38.880154, 49.161591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969696, 38.757359, 49.075867>,  <36.192242, 38.683681, 49.024433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969696, 38.757359, 49.075867>,  <35.598789, 38.880154, 49.161591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969696, 38.757359, 49.075867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067462, 0.426054, -0.902179,
		0.368269, 0.851021, 0.374356,
		0.927269, -0.306989, -0.214314,
		36.247875, 38.665260, 49.011574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030731, 39.436653, 48.862251>,  <35.598789, 38.880154, 49.161591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030731, 39.436653, 48.862251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188560, 39.087494, 48.747459>,  <36.283257, 38.877998, 48.678585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188560, 39.087494, 48.747459>,  <36.030731, 39.436653, 48.862251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188560, 39.087494, 48.747459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029741, 0.300021, -0.953469,
		0.918384, 0.384745, 0.092419,
		0.394570, -0.872903, -0.286977,
		36.306931, 38.825623, 48.661366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512512, 39.543644, 48.431789>,  <36.030731, 39.436653, 48.862251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512512, 39.543644, 48.431789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353184, 39.186516, 48.347687>,  <36.257587, 38.972240, 48.297226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353184, 39.186516, 48.347687>,  <36.512512, 39.543644, 48.431789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353184, 39.186516, 48.347687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002292, 0.230195, -0.973142,
		0.917241, -0.387145, -0.093738,
		-0.398325, -0.892821, -0.210257,
		36.233685, 38.918671, 48.284611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623955, 39.455383, 47.773350>,  <36.512512, 39.543644, 48.431789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623955, 39.455383, 47.773350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.396862, 39.127079, 47.798729>,  <36.260605, 38.930096, 47.813957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.396862, 39.127079, 47.798729>,  <36.623955, 39.455383, 47.773350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396862, 39.127079, 47.798729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330094, 0.156372, -0.930906,
		0.754131, -0.549452, -0.359707,
		-0.567736, -0.820762, 0.063446,
		36.226540, 38.880852, 47.817764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875599, 39.029339, 47.217415>,  <36.623955, 39.455383, 47.773350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875599, 39.029339, 47.217415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528748, 38.840096, 47.279716>,  <36.320637, 38.726551, 47.317097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528748, 38.840096, 47.279716>,  <36.875599, 39.029339, 47.217415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528748, 38.840096, 47.279716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260965, 0.165192, -0.951109,
		0.424250, -0.865378, -0.266707,
		-0.867127, -0.473109, 0.155751,
		36.268608, 38.698162, 47.326443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809010, 38.491985, 46.682926>,  <36.875599, 39.029339, 47.217415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809010, 38.491985, 46.682926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.440060, 38.585312, 46.806072>,  <36.218689, 38.641308, 46.879959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.440060, 38.585312, 46.806072>,  <36.809010, 38.491985, 46.682926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440060, 38.585312, 46.806072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253191, 0.236769, -0.937995,
		-0.291739, -0.943136, -0.159318,
		-0.922379, 0.233312, 0.307868,
		36.163345, 38.655304, 46.898434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328819, 38.224472, 46.116798>,  <36.809010, 38.491985, 46.682926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328819, 38.224472, 46.116798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117771, 38.486649, 46.332951>,  <35.991142, 38.643955, 46.462643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117771, 38.486649, 46.332951>,  <36.328819, 38.224472, 46.116798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117771, 38.486649, 46.332951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416069, 0.355212, -0.837085,
		-0.740607, -0.666503, 0.085289,
		-0.527624, 0.655437, 0.540384,
		35.959484, 38.683281, 46.495068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503143, 38.104156, 46.027061>,  <36.328819, 38.224472, 46.116798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503143, 38.104156, 46.027061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573517, 38.483078, 46.134144>,  <35.615742, 38.710430, 46.198391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573517, 38.483078, 46.134144>,  <35.503143, 38.104156, 46.027061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573517, 38.483078, 46.134144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231859, 0.304170, -0.923971,
		-0.956707, 0.100491, 0.273155,
		0.175936, 0.947303, 0.267702,
		35.626297, 38.767269, 46.214455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963993, 38.465710, 45.727692>,  <35.503143, 38.104156, 46.027061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963993, 38.465710, 45.727692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.251232, 38.735336, 45.796936>,  <35.423576, 38.897114, 45.838482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.251232, 38.735336, 45.796936>,  <34.963993, 38.465710, 45.727692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251232, 38.735336, 45.796936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168196, 0.409464, -0.896688,
		-0.675312, 0.614793, 0.407411,
		0.718097, 0.674069, 0.173110,
		35.466660, 38.937557, 45.848869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639946, 39.199306, 45.669289>,  <34.963993, 38.465710, 45.727692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639946, 39.199306, 45.669289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030746, 39.202759, 45.584057>,  <35.265224, 39.204830, 45.532917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030746, 39.202759, 45.584057>,  <34.639946, 39.199306, 45.669289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030746, 39.202759, 45.584057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195276, 0.437777, -0.877621,
		0.085704, 0.899042, 0.429392,
		0.976997, 0.008634, -0.213081,
		35.323845, 39.205349, 45.520134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819374, 39.850971, 45.421917>,  <34.639946, 39.199306, 45.669289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819374, 39.850971, 45.421917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154980, 39.674335, 45.294758>,  <35.356342, 39.568352, 45.218464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154980, 39.674335, 45.294758>,  <34.819374, 39.850971, 45.421917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154980, 39.674335, 45.294758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129255, 0.405767, -0.904791,
		0.528542, 0.800218, 0.283364,
		0.839010, -0.441594, -0.317897,
		35.406681, 39.541859, 45.199390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145290, 40.315315, 44.943306>,  <34.819374, 39.850971, 45.421917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145290, 40.315315, 44.943306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354591, 39.986633, 44.852970>,  <35.480171, 39.789425, 44.798767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354591, 39.986633, 44.852970>,  <35.145290, 40.315315, 44.943306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354591, 39.986633, 44.852970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127439, 0.337489, -0.932663,
		0.842592, 0.459240, 0.281311,
		0.523256, -0.821705, -0.225841,
		35.511570, 39.740120, 44.785217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565857, 40.525242, 44.342171>,  <35.145290, 40.315315, 44.943306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565857, 40.525242, 44.342171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596992, 40.126984, 44.362663>,  <35.615673, 39.888027, 44.374958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596992, 40.126984, 44.362663>,  <35.565857, 40.525242, 44.342171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596992, 40.126984, 44.362663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029261, -0.053645, -0.998131,
		0.996536, 0.076199, -0.033309,
		0.077843, -0.995649, 0.051229,
		35.620346, 39.828289, 44.378033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066635, 40.303684, 43.910995>,  <35.565857, 40.525242, 44.342171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066635, 40.303684, 43.910995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861324, 39.963108, 43.954048>,  <35.738136, 39.758762, 43.979881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861324, 39.963108, 43.954048>,  <36.066635, 40.303684, 43.910995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861324, 39.963108, 43.954048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031981, -0.106351, -0.993814,
		0.857624, -0.513549, 0.027358,
		-0.513282, -0.851444, 0.107633,
		35.707340, 39.707676, 43.986340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.043983, 32.390499, 29.755245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.991039, 32.786949, 29.760172>,  <37.959270, 33.024818, 29.763128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.991039, 32.786949, 29.760172>,  <38.043983, 32.390499, 29.755245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991039, 32.786949, 29.760172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511890, 0.057709, 0.857110,
		0.848792, 0.119755, -0.514986,
		-0.132362, 0.991125, 0.012318,
		37.951332, 33.084286, 29.763868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759804, 32.666870, 29.858885>,  <38.043983, 32.390499, 29.755245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759804, 32.666870, 29.858885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501415, 32.950798, 29.971222>,  <38.346382, 33.121155, 30.038624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501415, 32.950798, 29.971222>,  <38.759804, 32.666870, 29.858885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501415, 32.950798, 29.971222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491066, 0.104735, 0.864803,
		0.584442, 0.696552, -0.416225,
		-0.645974, 0.709821, 0.280841,
		38.307625, 33.163746, 30.055473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208107, 33.121681, 30.197195>,  <38.759804, 32.666870, 29.858885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208107, 33.121681, 30.197195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.847633, 33.231495, 30.331364>,  <38.631351, 33.297382, 30.411865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.847633, 33.231495, 30.331364>,  <39.208107, 33.121681, 30.197195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847633, 33.231495, 30.331364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407831, 0.274973, 0.870669,
		0.146798, 0.921423, -0.359764,
		-0.901179, 0.274535, 0.335419,
		38.577278, 33.313854, 30.431990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280586, 33.780907, 30.526138>,  <39.208107, 33.121681, 30.197195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280586, 33.780907, 30.526138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944443, 33.631992, 30.683720>,  <38.742756, 33.542645, 30.778269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944443, 33.631992, 30.683720>,  <39.280586, 33.780907, 30.526138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944443, 33.631992, 30.683720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343495, 0.196458, 0.918376,
		-0.419294, 0.907087, -0.037216,
		-0.840359, -0.372286, 0.393954,
		38.692333, 33.520306, 30.801907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125114, 34.173431, 31.026680>,  <39.280586, 33.780907, 30.526138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125114, 34.173431, 31.026680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932755, 33.840015, 31.135448>,  <38.817337, 33.639965, 31.200710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932755, 33.840015, 31.135448>,  <39.125114, 34.173431, 31.026680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932755, 33.840015, 31.135448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435474, 0.042103, 0.899216,
		-0.760983, 0.550850, 0.342738,
		-0.480903, -0.833541, 0.271921,
		38.788483, 33.589954, 31.217024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957325, 34.308285, 31.640953>,  <39.125114, 34.173431, 31.026680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957325, 34.308285, 31.640953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.961487, 33.909660, 31.608080>,  <38.963985, 33.670486, 31.588356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.961487, 33.909660, 31.608080>,  <38.957325, 34.308285, 31.640953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961487, 33.909660, 31.608080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525985, -0.064442, 0.848049,
		-0.850430, -0.052053, 0.523507,
		0.010407, -0.996563, -0.082182,
		38.964607, 33.610691, 31.583426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727787, 34.036758, 32.277870>,  <38.957325, 34.308285, 31.640953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727787, 34.036758, 32.277870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.872475, 33.693100, 32.133083>,  <38.959286, 33.486904, 32.046211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.872475, 33.693100, 32.133083>,  <38.727787, 34.036758, 32.277870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872475, 33.693100, 32.133083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300288, -0.260199, 0.917673,
		-0.882603, -0.440633, 0.163874,
		0.361717, -0.859150, -0.361969,
		38.980991, 33.435356, 32.024494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622978, 33.631290, 32.823383>,  <38.727787, 34.036758, 32.277870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622978, 33.631290, 32.823383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892254, 33.425659, 32.610767>,  <39.053818, 33.302280, 32.483196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892254, 33.425659, 32.610767>,  <38.622978, 33.631290, 32.823383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892254, 33.425659, 32.610767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539965, -0.149377, 0.828326,
		-0.505229, -0.844633, 0.177028,
		0.673188, -0.514083, -0.531542,
		39.094212, 33.271435, 32.451305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804276, 33.069221, 33.224861>,  <38.622978, 33.631290, 32.823383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804276, 33.069221, 33.224861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.108482, 33.135551, 32.973747>,  <39.291008, 33.175350, 32.823078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.108482, 33.135551, 32.973747>,  <38.804276, 33.069221, 33.224861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108482, 33.135551, 32.973747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644960, -0.081138, 0.759897,
		0.075073, -0.982812, -0.168658,
		0.760520, 0.165825, -0.627783,
		39.336639, 33.185299, 32.785412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354130, 32.510674, 33.316650>,  <38.804276, 33.069221, 33.224861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354130, 32.510674, 33.316650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.553574, 32.810993, 33.143360>,  <39.673241, 32.991184, 33.039387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.553574, 32.810993, 33.143360>,  <39.354130, 32.510674, 33.316650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553574, 32.810993, 33.143360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710930, -0.068254, 0.699943,
		0.495947, -0.656995, -0.567798,
		0.498613, 0.750799, -0.433227,
		39.703159, 33.036232, 33.013393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072903, 32.274536, 33.264172>,  <39.354130, 32.510674, 33.316650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072903, 32.274536, 33.264172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.084740, 32.672291, 33.223522>,  <40.091843, 32.910942, 33.199131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.084740, 32.672291, 33.223522>,  <40.072903, 32.274536, 33.264172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084740, 32.672291, 33.223522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764188, 0.043029, 0.643557,
		0.644315, -0.096705, -0.758622,
		0.029592, 0.994383, -0.101625,
		40.093616, 32.970604, 33.193035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805664, 32.457222, 33.105392>,  <40.072903, 32.274536, 33.264172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805664, 32.457222, 33.105392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619839, 32.782974, 33.244511>,  <40.508343, 32.978424, 33.327984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619839, 32.782974, 33.244511>,  <40.805664, 32.457222, 33.105392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619839, 32.782974, 33.244511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822296, 0.250962, 0.510732,
		0.328646, 0.523262, -0.786250,
		-0.464566, 0.814380, 0.347799,
		40.480469, 33.027287, 33.348850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168835, 33.021461, 32.858418>,  <40.805664, 32.457222, 33.105392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168835, 33.021461, 32.858418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.972031, 33.196507, 33.159462>,  <40.853947, 33.301533, 33.340088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.972031, 33.196507, 33.159462>,  <41.168835, 33.021461, 32.858418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972031, 33.196507, 33.159462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861537, 0.369078, 0.348619,
		-0.125212, 0.819926, -0.558609,
		-0.492012, 0.437611, 0.752609,
		40.824429, 33.327789, 33.385246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370289, 33.727207, 32.885647>,  <41.168835, 33.021461, 32.858418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370289, 33.727207, 32.885647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237762, 33.661430, 33.257278>,  <41.158245, 33.621964, 33.480259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237762, 33.661430, 33.257278>,  <41.370289, 33.727207, 32.885647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237762, 33.661430, 33.257278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850151, 0.375065, 0.369553,
		-0.409235, 0.912297, 0.015535,
		-0.331316, -0.164441, 0.929080,
		41.138367, 33.612099, 33.536003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516464, 34.298462, 33.262318>,  <41.370289, 33.727207, 32.885647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516464, 34.298462, 33.262318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.461826, 34.021679, 33.545876>,  <41.429043, 33.855610, 33.716011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.461826, 34.021679, 33.545876>,  <41.516464, 34.298462, 33.262318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461826, 34.021679, 33.545876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720193, 0.421987, 0.550680,
		-0.680194, 0.585760, 0.440706,
		-0.136594, -0.691962, 0.708894,
		41.420849, 33.814091, 33.758545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521561, 34.633629, 33.955082>,  <41.516464, 34.298462, 33.262318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521561, 34.633629, 33.955082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.580849, 34.252766, 34.061985>,  <41.616421, 34.024246, 34.126129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.580849, 34.252766, 34.061985>,  <41.521561, 34.633629, 33.955082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580849, 34.252766, 34.061985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706514, 0.291047, 0.645082,
		-0.692004, 0.093209, 0.715851,
		0.148219, -0.952157, 0.267260,
		41.625313, 33.967117, 34.142162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399250, 34.606167, 34.693577>,  <41.521561, 34.633629, 33.955082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399250, 34.606167, 34.693577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.639019, 34.309704, 34.572666>,  <41.782883, 34.131824, 34.500118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.639019, 34.309704, 34.572666>,  <41.399250, 34.606167, 34.693577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639019, 34.309704, 34.572666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781087, 0.459101, 0.423236,
		-0.174908, -0.489806, 0.854106,
		0.599425, -0.741159, -0.302281,
		41.818848, 34.087357, 34.481983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811287, 34.379955, 35.271713>,  <41.399250, 34.606167, 34.693577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811287, 34.379955, 35.271713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.012768, 34.281456, 34.940498>,  <42.133656, 34.222359, 34.741768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.012768, 34.281456, 34.940498>,  <41.811287, 34.379955, 35.271713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012768, 34.281456, 34.940498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823066, 0.427921, 0.373423,
		0.262381, -0.869624, 0.418223,
		0.503704, -0.246246, -0.828037,
		42.163879, 34.207581, 34.692089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532639, 34.452015, 35.488827>,  <41.811287, 34.379955, 35.271713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532639, 34.452015, 35.488827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602837, 34.432121, 35.095539>,  <42.644955, 34.420185, 34.859566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602837, 34.432121, 35.095539>,  <42.532639, 34.452015, 35.488827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602837, 34.432121, 35.095539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777194, 0.620035, 0.107355,
		0.604294, -0.782996, 0.147466,
		0.175492, -0.049736, -0.983224,
		42.655483, 34.417202, 34.800571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244080, 34.172306, 35.402973>,  <42.532639, 34.452015, 35.488827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244080, 34.172306, 35.402973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159344, 34.368629, 35.064926>,  <43.108501, 34.486423, 34.862099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159344, 34.368629, 35.064926>,  <43.244080, 34.172306, 35.402973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159344, 34.368629, 35.064926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771370, 0.614949, 0.163784,
		0.600093, -0.617205, -0.508867,
		-0.211839, 0.490811, -0.845121,
		43.095791, 34.515873, 34.811390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806229, 34.322319, 35.169033>,  <43.244080, 34.172306, 35.402973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806229, 34.322319, 35.169033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.572872, 34.585945, 34.979172>,  <43.432858, 34.744122, 34.865253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.572872, 34.585945, 34.979172>,  <43.806229, 34.322319, 35.169033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572872, 34.585945, 34.979172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654973, 0.727340, 0.204907,
		0.480281, -0.191345, -0.855989,
		-0.583387, 0.659063, -0.474653,
		43.397858, 34.783665, 34.836777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262985, 34.553463, 34.710014>,  <43.806229, 34.322319, 35.169033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262985, 34.553463, 34.710014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973408, 34.816586, 34.793148>,  <43.799664, 34.974461, 34.843029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973408, 34.816586, 34.793148>,  <44.262985, 34.553463, 34.710014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973408, 34.816586, 34.793148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689745, 0.684631, 0.235652,
		0.012723, 0.313953, -0.949353,
		-0.723940, 0.657810, 0.207837,
		43.756226, 35.013927, 34.855499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.015575, 34.655094, 34.649460>,  <44.262985, 34.553463, 34.710014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.015575, 34.655094, 34.649460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.358292, 34.763634, 34.474060>,  <45.563923, 34.828758, 34.368820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.358292, 34.763634, 34.474060>,  <45.015575, 34.655094, 34.649460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358292, 34.763634, 34.474060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492421, 0.178085, -0.851943,
		-0.153083, 0.945862, 0.286199,
		0.856789, 0.271349, -0.438500,
		45.615330, 34.845039, 34.342510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909863, 35.288040, 34.300423>,  <45.015575, 34.655094, 34.649460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909863, 35.288040, 34.300423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.207470, 35.085407, 34.126152>,  <45.386032, 34.963825, 34.021591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.207470, 35.085407, 34.126152>,  <44.909863, 35.288040, 34.300423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207470, 35.085407, 34.126152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441048, 0.117455, -0.889765,
		0.501915, 0.854151, -0.136040,
		0.744015, -0.506586, -0.435674,
		45.430676, 34.933430, 33.995449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922081, 35.495193, 33.671795>,  <44.909863, 35.288040, 34.300423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922081, 35.495193, 33.671795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.139328, 35.161179, 33.636600>,  <45.269676, 34.960770, 33.615486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.139328, 35.161179, 33.636600>,  <44.922081, 35.495193, 33.671795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139328, 35.161179, 33.636600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421318, -0.180383, -0.888793,
		0.726303, 0.519786, -0.449785,
		0.543115, -0.835036, -0.087982,
		45.302261, 34.910667, 33.610207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206867, 35.525085, 33.041988>,  <44.922081, 35.495193, 33.671795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206867, 35.525085, 33.041988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.196785, 35.140942, 33.153038>,  <45.190735, 34.910454, 33.219669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.196785, 35.140942, 33.153038>,  <45.206867, 35.525085, 33.041988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196785, 35.140942, 33.153038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402976, -0.244393, -0.881976,
		0.914864, -0.134105, -0.380842,
		-0.025203, -0.960358, 0.277627,
		45.189224, 34.852833, 33.236324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235729, 35.178215, 32.418015>,  <45.206867, 35.525085, 33.041988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235729, 35.178215, 32.418015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122787, 34.878326, 32.657413>,  <45.055023, 34.698395, 32.801052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122787, 34.878326, 32.657413>,  <45.235729, 35.178215, 32.418015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122787, 34.878326, 32.657413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493744, -0.421329, -0.760723,
		0.822491, -0.510300, -0.251203,
		-0.282358, -0.749718, 0.598496,
		45.038078, 34.653412, 32.836964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279171, 34.555122, 31.958492>,  <45.235729, 35.178215, 32.418015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279171, 34.555122, 31.958492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032211, 34.463074, 32.259388>,  <44.884037, 34.407845, 32.439926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032211, 34.463074, 32.259388>,  <45.279171, 34.555122, 31.958492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032211, 34.463074, 32.259388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680467, -0.323557, -0.657476,
		0.394693, -0.917798, 0.043172,
		-0.617399, -0.230124, 0.752237,
		44.846992, 34.394035, 32.485058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989063, 33.945240, 31.795792>,  <45.279171, 34.555122, 31.958492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989063, 33.945240, 31.795792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.717514, 34.095425, 32.048191>,  <44.554585, 34.185535, 32.199631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.717514, 34.095425, 32.048191>,  <44.989063, 33.945240, 31.795792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717514, 34.095425, 32.048191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732557, -0.287940, -0.616807,
		-0.049899, -0.880976, 0.470523,
		-0.678874, 0.375463, 0.630997,
		44.513851, 34.208065, 32.237492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406433, 33.398438, 31.998756>,  <44.989063, 33.945240, 31.795792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406433, 33.398438, 31.998756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269897, 33.773201, 32.028946>,  <44.187977, 33.998058, 32.047058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269897, 33.773201, 32.028946>,  <44.406433, 33.398438, 31.998756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269897, 33.773201, 32.028946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788384, -0.241655, -0.565733,
		-0.511799, -0.252609, 0.821127,
		-0.341339, 0.936905, 0.075474,
		44.167496, 34.054272, 32.051590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661255, 33.316799, 32.126392>,  <44.406433, 33.398438, 31.998756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661255, 33.316799, 32.126392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.669079, 33.712578, 32.068954>,  <43.673775, 33.950043, 32.034492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.669079, 33.712578, 32.068954>,  <43.661255, 33.316799, 32.126392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669079, 33.712578, 32.068954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822543, -0.065715, -0.564893,
		-0.568366, 0.129162, 0.812575,
		0.019564, 0.989444, -0.143591,
		43.674950, 34.009411, 32.025879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998508, 33.320602, 32.054459>,  <43.661255, 33.316799, 32.126392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998508, 33.320602, 32.054459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144783, 33.655025, 31.890863>,  <43.232548, 33.855682, 31.792706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144783, 33.655025, 31.890863>,  <42.998508, 33.320602, 32.054459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144783, 33.655025, 31.890863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750293, 0.004775, -0.661088,
		-0.550758, 0.548614, 0.629038,
		0.365686, 0.836062, -0.408991,
		43.254490, 33.905846, 31.768166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494007, 33.917629, 32.085812>,  <42.998508, 33.320602, 32.054459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494007, 33.917629, 32.085812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.722321, 34.016907, 31.772736>,  <42.859310, 34.076473, 31.584890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.722321, 34.016907, 31.772736>,  <42.494007, 33.917629, 32.085812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722321, 34.016907, 31.772736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808233, 0.001734, -0.588861,
		-0.144796, 0.968708, 0.201591,
		0.570784, 0.248197, -0.782690,
		42.893555, 34.091366, 31.537928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028957, 34.487347, 31.804770>,  <42.494007, 33.917629, 32.085812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028957, 34.487347, 31.804770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.290630, 34.342804, 31.539000>,  <42.447636, 34.256077, 31.379538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.290630, 34.342804, 31.539000>,  <42.028957, 34.487347, 31.804770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290630, 34.342804, 31.539000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744040, -0.149717, -0.651144,
		0.135821, 0.920328, -0.366809,
		0.654184, -0.361360, -0.664426,
		42.486885, 34.234398, 31.339672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755825, 34.761547, 31.111107>,  <42.028957, 34.487347, 31.804770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755825, 34.761547, 31.111107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999920, 34.456829, 31.024137>,  <42.146378, 34.273998, 30.971956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999920, 34.456829, 31.024137>,  <41.755825, 34.761547, 31.111107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999920, 34.456829, 31.024137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612346, -0.279444, -0.739556,
		0.502633, 0.584446, -0.637011,
		0.610239, -0.761797, -0.217425,
		42.182991, 34.228291, 30.958910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644505, 34.627510, 30.421406>,  <41.755825, 34.761547, 31.111107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644505, 34.627510, 30.421406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.803040, 34.289478, 30.564934>,  <41.898159, 34.086658, 30.651051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.803040, 34.289478, 30.564934>,  <41.644505, 34.627510, 30.421406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803040, 34.289478, 30.564934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560982, -0.532291, -0.634007,
		0.726785, 0.049990, -0.685044,
		0.396336, -0.845084, 0.358818,
		41.921940, 34.035954, 30.672579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868099, 34.189251, 29.821486>,  <41.644505, 34.627510, 30.421406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868099, 34.189251, 29.821486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806343, 33.944653, 30.131899>,  <41.769287, 33.797894, 30.318148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806343, 33.944653, 30.131899>,  <41.868099, 34.189251, 29.821486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806343, 33.944653, 30.131899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635407, -0.540019, -0.551940,
		0.756585, -0.578314, -0.305176,
		-0.154394, -0.611500, 0.776035,
		41.760025, 33.761204, 30.364710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769669, 33.626945, 29.472565>,  <41.868099, 34.189251, 29.821486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769669, 33.626945, 29.472565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.624874, 33.556812, 29.838783>,  <41.537998, 33.514732, 30.058514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.624874, 33.556812, 29.838783>,  <41.769669, 33.626945, 29.472565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624874, 33.556812, 29.838783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683981, -0.617345, -0.388659,
		0.633352, -0.766905, 0.103547,
		-0.361989, -0.175334, 0.915545,
		41.516277, 33.504211, 30.113447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672314, 32.887405, 29.525173>,  <41.769669, 33.626945, 29.472565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672314, 32.887405, 29.525173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433689, 33.039532, 29.807869>,  <41.290516, 33.130806, 29.977486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433689, 33.039532, 29.807869>,  <41.672314, 32.887405, 29.525173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433689, 33.039532, 29.807869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762862, -0.542260, -0.352129,
		0.249317, -0.749210, 0.613617,
		-0.596558, 0.380314, 0.706739,
		41.254723, 33.153625, 30.019890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320518, 32.291042, 29.793900>,  <41.672314, 32.887405, 29.525173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320518, 32.291042, 29.793900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.086487, 32.595360, 29.906242>,  <40.946068, 32.777950, 29.973648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.086487, 32.595360, 29.906242>,  <41.320518, 32.291042, 29.793900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086487, 32.595360, 29.906242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804746, -0.501798, -0.317146,
		-0.100350, -0.411571, 0.905836,
		-0.585075, 0.760794, 0.280855,
		40.910965, 32.823597, 29.990499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804302, 31.992197, 30.154972>,  <41.320518, 32.291042, 29.793900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804302, 31.992197, 30.154972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670219, 32.354378, 30.050821>,  <40.589771, 32.571686, 29.988331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670219, 32.354378, 30.050821>,  <40.804302, 31.992197, 30.154972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670219, 32.354378, 30.050821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856069, -0.408124, -0.317143,
		-0.393422, 0.116588, 0.911936,
		-0.335208, 0.905451, -0.260372,
		40.569656, 32.626015, 29.972708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129906, 32.157543, 30.454821>,  <40.804302, 31.992197, 30.154972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129906, 32.157543, 30.454821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.148243, 32.391773, 30.131094>,  <40.159245, 32.532310, 29.936857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.148243, 32.391773, 30.131094>,  <40.129906, 32.157543, 30.454821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148243, 32.391773, 30.131094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910070, -0.309586, -0.275552,
		-0.411911, 0.749169, 0.518725,
		0.045845, 0.585579, -0.809318,
		40.161995, 32.567448, 29.888298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.146999, 40.922878, 39.821377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940968, 40.611637, 39.677570>,  <38.817348, 40.424892, 39.591286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940968, 40.611637, 39.677570>,  <39.146999, 40.922878, 39.821377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940968, 40.611637, 39.677570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483489, 0.082594, -0.871445,
		0.707765, -0.622687, 0.333660,
		-0.515079, -0.778100, -0.359519,
		38.786442, 40.378208, 39.569714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624294, 40.407856, 39.422791>,  <39.146999, 40.922878, 39.821377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624294, 40.407856, 39.422791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252193, 40.331066, 39.297714>,  <39.028934, 40.284992, 39.222668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252193, 40.331066, 39.297714>,  <39.624294, 40.407856, 39.422791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252193, 40.331066, 39.297714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319903, -0.006956, -0.947425,
		0.179709, -0.981375, 0.067885,
		-0.930251, -0.191977, -0.312694,
		38.973118, 40.273472, 39.203907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656345, 39.765621, 38.965511>,  <39.624294, 40.407856, 39.422791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656345, 39.765621, 38.965511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309467, 39.953697, 38.899925>,  <39.101341, 40.066544, 38.860573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309467, 39.953697, 38.899925>,  <39.656345, 39.765621, 38.965511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309467, 39.953697, 38.899925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146819, -0.073203, -0.986451,
		-0.475825, -0.879523, -0.005552,
		-0.867199, 0.470193, -0.163962,
		39.049309, 40.094753, 38.850735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253899, 39.292446, 38.625614>,  <39.656345, 39.765621, 38.965511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253899, 39.292446, 38.625614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145943, 39.673264, 38.567951>,  <39.081169, 39.901752, 38.533352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145943, 39.673264, 38.567951>,  <39.253899, 39.292446, 38.625614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145943, 39.673264, 38.567951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035643, -0.139735, -0.989547,
		-0.962232, -0.272206, 0.003779,
		-0.269888, 0.952039, -0.144160,
		39.064976, 39.958874, 38.524704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677711, 39.268711, 38.250320>,  <39.253899, 39.292446, 38.625614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677711, 39.268711, 38.250320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827007, 39.633209, 38.180668>,  <38.916584, 39.851910, 38.138874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827007, 39.633209, 38.180668>,  <38.677711, 39.268711, 38.250320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827007, 39.633209, 38.180668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091624, -0.150575, -0.984343,
		-0.923200, 0.383350, 0.027292,
		0.373239, 0.911246, -0.174135,
		38.938980, 39.906582, 38.128426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234772, 39.514576, 37.787361>,  <38.677711, 39.268711, 38.250320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234772, 39.514576, 37.787361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546265, 39.762222, 37.746811>,  <38.733158, 39.910809, 37.722481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546265, 39.762222, 37.746811>,  <38.234772, 39.514576, 37.787361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546265, 39.762222, 37.746811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023878, -0.132229, -0.990932,
		-0.626904, 0.774089, -0.088187,
		0.778731, 0.619113, -0.101379,
		38.779884, 39.947956, 37.716396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991310, 39.890106, 37.248447>,  <38.234772, 39.514576, 37.787361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991310, 39.890106, 37.248447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389465, 39.914368, 37.278175>,  <38.628357, 39.928925, 37.296013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389465, 39.914368, 37.278175>,  <37.991310, 39.890106, 37.248447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389465, 39.914368, 37.278175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083349, -0.163343, -0.983042,
		-0.047487, 0.984703, -0.167645,
		0.995388, 0.060654, 0.074318,
		38.688084, 39.932564, 37.300472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132156, 40.222412, 36.632156>,  <37.991310, 39.890106, 37.248447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132156, 40.222412, 36.632156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498409, 40.109650, 36.746803>,  <38.718163, 40.041992, 36.815594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498409, 40.109650, 36.746803>,  <38.132156, 40.222412, 36.632156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498409, 40.109650, 36.746803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250769, -0.156749, -0.955272,
		0.314221, 0.946552, -0.072832,
		0.915631, -0.281902, 0.286620,
		38.773098, 40.025078, 36.832790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470787, 40.512577, 36.228981>,  <38.132156, 40.222412, 36.632156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470787, 40.512577, 36.228981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731869, 40.232643, 36.345055>,  <38.888519, 40.064682, 36.414700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731869, 40.232643, 36.345055>,  <38.470787, 40.512577, 36.228981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731869, 40.232643, 36.345055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150622, -0.255511, -0.955001,
		0.742489, 0.667042, -0.061362,
		0.652705, -0.699835, 0.290185,
		38.927681, 40.022694, 36.432110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189583, 40.627945, 35.906818>,  <38.470787, 40.512577, 36.228981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189583, 40.627945, 35.906818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158012, 40.233524, 35.965420>,  <39.139069, 39.996872, 36.000580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158012, 40.233524, 35.965420>,  <39.189583, 40.627945, 35.906818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158012, 40.233524, 35.965420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098587, -0.153964, -0.983146,
		0.991993, -0.063156, 0.109365,
		-0.078930, -0.986056, 0.146505,
		39.134335, 39.937706, 36.009373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705093, 40.329441, 35.455753>,  <39.189583, 40.627945, 35.906818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705093, 40.329441, 35.455753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470810, 40.019402, 35.550552>,  <39.330238, 39.833378, 35.607430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470810, 40.019402, 35.550552>,  <39.705093, 40.329441, 35.455753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470810, 40.019402, 35.550552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084598, -0.349263, -0.933198,
		0.806094, -0.526534, 0.270139,
		-0.585710, -0.775098, 0.236995,
		39.295097, 39.786873, 35.621651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121624, 39.740688, 35.269672>,  <39.705093, 40.329441, 35.455753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121624, 39.740688, 35.269672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732983, 39.646717, 35.280933>,  <39.499798, 39.590336, 35.287689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732983, 39.646717, 35.280933>,  <40.121624, 39.740688, 35.269672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732983, 39.646717, 35.280933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050665, -0.322793, -0.945113,
		0.231118, -0.916850, 0.325530,
		-0.971605, -0.234925, 0.028151,
		39.441502, 39.576241, 35.289379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975941, 39.048664, 35.027588>,  <40.121624, 39.740688, 35.269672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975941, 39.048664, 35.027588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668835, 39.292091, 34.947399>,  <39.484573, 39.438148, 34.899284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668835, 39.292091, 34.947399>,  <39.975941, 39.048664, 35.027588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668835, 39.292091, 34.947399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027380, -0.281438, -0.959189,
		-0.640150, -0.741918, 0.199414,
		-0.767762, 0.608565, -0.200476,
		39.438507, 39.474659, 34.887257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344078, 38.648914, 35.070740>,  <39.975941, 39.048664, 35.027588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344078, 38.648914, 35.070740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144348, 38.872177, 35.335808>,  <39.024509, 39.006134, 35.494850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144348, 38.872177, 35.335808>,  <39.344078, 38.648914, 35.070740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144348, 38.872177, 35.335808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319823, 0.829570, -0.457741,
		-0.805224, -0.016624, -0.592738,
		-0.499327, 0.558155, 0.662673,
		38.994549, 39.039623, 35.534611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107307, 37.998547, 35.344261>,  <39.344078, 38.648914, 35.070740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107307, 37.998547, 35.344261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164364, 37.604420, 35.306728>,  <39.198597, 37.367943, 35.284210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164364, 37.604420, 35.306728>,  <39.107307, 37.998547, 35.344261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164364, 37.604420, 35.306728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193509, -0.120730, 0.973642,
		-0.970674, -0.120726, -0.207889,
		0.142642, -0.985317, -0.093828,
		39.207157, 37.308826, 35.278580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601280, 37.602612, 35.720165>,  <39.107307, 37.998547, 35.344261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601280, 37.602612, 35.720165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901577, 37.339748, 35.693207>,  <39.081753, 37.182030, 35.677032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901577, 37.339748, 35.693207>,  <38.601280, 37.602612, 35.720165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901577, 37.339748, 35.693207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141660, -0.259793, 0.955217,
		-0.645234, -0.707570, -0.288129,
		0.750737, -0.657155, -0.067393,
		39.126797, 37.142601, 35.672989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340809, 36.930935, 35.960152>,  <38.601280, 37.602612, 35.720165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340809, 36.930935, 35.960152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735748, 36.961472, 36.015736>,  <38.972713, 36.979794, 36.049088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735748, 36.961472, 36.015736>,  <38.340809, 36.930935, 35.960152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735748, 36.961472, 36.015736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106425, -0.330529, 0.937776,
		0.117523, -0.940703, -0.318223,
		0.987351, 0.076343, 0.138959,
		39.031952, 36.984375, 36.057423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476448, 36.318115, 36.265110>,  <38.340809, 36.930935, 35.960152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476448, 36.318115, 36.265110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812943, 36.524120, 36.330933>,  <39.014839, 36.647724, 36.370426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812943, 36.524120, 36.330933>,  <38.476448, 36.318115, 36.265110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812943, 36.524120, 36.330933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036085, -0.357161, 0.933346,
		0.539461, -0.779227, -0.319041,
		0.841237, 0.515016, 0.164556,
		39.065315, 36.678623, 36.380299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027039, 35.806393, 36.616917>,  <38.476448, 36.318115, 36.265110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027039, 35.806393, 36.616917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124969, 36.183968, 36.705490>,  <39.183727, 36.410515, 36.758633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124969, 36.183968, 36.705490>,  <39.027039, 35.806393, 36.616917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124969, 36.183968, 36.705490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179150, -0.268491, 0.946477,
		0.952871, -0.192057, -0.234842,
		0.244831, 0.943942, 0.221430,
		39.198418, 36.467152, 36.771919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399506, 35.778877, 37.161541>,  <39.027039, 35.806393, 36.616917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399506, 35.778877, 37.161541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366760, 36.176617, 37.188587>,  <39.347115, 36.415260, 37.204815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366760, 36.176617, 37.188587>,  <39.399506, 35.778877, 37.161541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366760, 36.176617, 37.188587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118629, -0.057643, 0.991264,
		0.989559, 0.089167, -0.113240,
		-0.081860, 0.994347, 0.067619,
		39.342201, 36.474922, 37.208874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037186, 36.011917, 37.508751>,  <39.399506, 35.778877, 37.161541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037186, 36.011917, 37.508751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745678, 36.279228, 37.568485>,  <39.570774, 36.439613, 37.604328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745678, 36.279228, 37.568485>,  <40.037186, 36.011917, 37.508751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745678, 36.279228, 37.568485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217252, 0.018831, 0.975934,
		0.649378, 0.743678, -0.158907,
		-0.728772, 0.668273, 0.149337,
		39.527046, 36.479710, 37.613285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391670, 36.414089, 37.911297>,  <40.037186, 36.011917, 37.508751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391670, 36.414089, 37.911297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997513, 36.474995, 37.941792>,  <39.761017, 36.511539, 37.960091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997513, 36.474995, 37.941792>,  <40.391670, 36.414089, 37.911297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997513, 36.474995, 37.941792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087558, 0.069061, 0.993763,
		0.146047, 0.985924, -0.081384,
		-0.985395, 0.152262, 0.076239,
		39.701893, 36.520672, 37.964664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481747, 36.977520, 38.328819>,  <40.391670, 36.414089, 37.911297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481747, 36.977520, 38.328819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113140, 36.828644, 38.373150>,  <39.891975, 36.739319, 38.399750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113140, 36.828644, 38.373150>,  <40.481747, 36.977520, 38.328819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113140, 36.828644, 38.373150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069133, 0.123607, 0.989920,
		-0.382137, 0.919889, -0.088175,
		-0.921516, -0.372189, 0.110830,
		39.836685, 36.716988, 38.406399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076641, 37.467106, 38.873619>,  <40.481747, 36.977520, 38.328819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076641, 37.467106, 38.873619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897488, 37.110458, 38.847050>,  <39.789993, 36.896469, 38.831108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897488, 37.110458, 38.847050>,  <40.076641, 37.467106, 38.873619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897488, 37.110458, 38.847050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020715, -0.084619, 0.996198,
		-0.893851, 0.444807, 0.056370,
		-0.447886, -0.891620, -0.066422,
		39.763123, 36.842972, 38.827122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408958, 37.547344, 39.403038>,  <40.076641, 37.467106, 38.873619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408958, 37.547344, 39.403038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497574, 37.163315, 39.334702>,  <39.550743, 36.932899, 39.293701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497574, 37.163315, 39.334702>,  <39.408958, 37.547344, 39.403038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497574, 37.163315, 39.334702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066085, -0.189573, 0.979640,
		-0.972910, -0.205737, -0.105443,
		0.221537, -0.960070, -0.170841,
		39.564034, 36.875294, 39.283447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817600, 37.261921, 39.651478>,  <39.408958, 37.547344, 39.403038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817600, 37.261921, 39.651478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095135, 36.974407, 39.633873>,  <39.261654, 36.801899, 39.623310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095135, 36.974407, 39.633873>,  <38.817600, 37.261921, 39.651478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095135, 36.974407, 39.633873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171015, -0.223835, 0.959506,
		-0.699534, -0.658211, -0.278228,
		0.693835, -0.718788, -0.044016,
		39.303284, 36.758770, 39.620667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565685, 36.651093, 39.942703>,  <38.817600, 37.261921, 39.651478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565685, 36.651093, 39.942703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962845, 36.624016, 39.981831>,  <39.201141, 36.607769, 40.005306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962845, 36.624016, 39.981831>,  <38.565685, 36.651093, 39.942703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962845, 36.624016, 39.981831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111048, -0.232569, 0.966219,
		-0.042652, -0.970222, -0.238434,
		0.992899, -0.067689, 0.097821,
		39.260715, 36.603710, 40.011177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606911, 36.081493, 40.300320>,  <38.565685, 36.651093, 39.942703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606911, 36.081493, 40.300320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943443, 36.293106, 40.344658>,  <39.145363, 36.420074, 40.371262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943443, 36.293106, 40.344658>,  <38.606911, 36.081493, 40.300320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943443, 36.293106, 40.344658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060960, -0.110887, 0.991962,
		0.537065, -0.841329, -0.061044,
		0.841335, 0.529027, 0.110841,
		39.195843, 36.451813, 40.377911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335800, 35.398811, 40.036488>,  <38.606911, 36.081493, 40.300320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335800, 35.398811, 40.036488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944744, 35.315163, 40.045380>,  <37.710110, 35.264973, 40.050716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944744, 35.315163, 40.045380>,  <38.335800, 35.398811, 40.036488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944744, 35.315163, 40.045380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057820, 0.165657, -0.984487,
		0.202199, -0.963756, -0.174043,
		-0.977637, -0.209125, 0.022229,
		37.651451, 35.252426, 40.052048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217171, 35.014893, 39.470314>,  <38.335800, 35.398811, 40.036488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217171, 35.014893, 39.470314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855957, 35.158264, 39.565014>,  <37.639229, 35.244289, 39.621834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855957, 35.158264, 39.565014>,  <38.217171, 35.014893, 39.470314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855957, 35.158264, 39.565014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232103, 0.056636, -0.971041,
		-0.361460, -0.931837, 0.032049,
		-0.903037, 0.358431, 0.236753,
		37.585045, 35.265793, 39.636040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678185, 34.509163, 39.199032>,  <38.217171, 35.014893, 39.470314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678185, 34.509163, 39.199032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497459, 34.860092, 39.263741>,  <37.389027, 35.070648, 39.302567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497459, 34.860092, 39.263741>,  <37.678185, 34.509163, 39.199032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497459, 34.860092, 39.263741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390985, -0.031741, -0.919850,
		-0.801872, -0.478846, 0.357362,
		-0.451810, 0.877325, 0.161769,
		37.361916, 35.123291, 39.312271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937386, 34.402012, 38.937817>,  <37.678185, 34.509163, 39.199032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937386, 34.402012, 38.937817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023056, 34.790920, 38.975391>,  <37.074459, 35.024265, 38.997936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023056, 34.790920, 38.975391>,  <36.937386, 34.402012, 38.937817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023056, 34.790920, 38.975391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323242, 0.161301, -0.932468,
		-0.921761, 0.169347, 0.348824,
		0.214176, 0.972267, 0.093941,
		37.087307, 35.082600, 39.003574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389595, 34.755413, 38.611004>,  <36.937386, 34.402012, 38.937817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389595, 34.755413, 38.611004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654778, 35.053627, 38.638321>,  <36.813889, 35.232555, 38.654713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654778, 35.053627, 38.638321>,  <36.389595, 34.755413, 38.611004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654778, 35.053627, 38.638321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359441, 0.396987, -0.844514,
		-0.656726, 0.535330, 0.531161,
		0.662958, 0.745536, 0.068292,
		36.853664, 35.277287, 38.658810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057510, 35.408237, 38.628513>,  <36.389595, 34.755413, 38.611004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057510, 35.408237, 38.628513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424229, 35.464413, 38.478973>,  <36.644260, 35.498119, 38.389252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424229, 35.464413, 38.478973>,  <36.057510, 35.408237, 38.628513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424229, 35.464413, 38.478973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399196, 0.348696, -0.847970,
		0.011271, 0.926654, 0.375746,
		0.916796, 0.140439, -0.373847,
		36.699268, 35.506546, 38.366817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982311, 35.939583, 38.212322>,  <36.057510, 35.408237, 38.628513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982311, 35.939583, 38.212322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336437, 35.818771, 38.070904>,  <36.548912, 35.746284, 37.986053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336437, 35.818771, 38.070904>,  <35.982311, 35.939583, 38.212322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336437, 35.818771, 38.070904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332709, 0.119702, -0.935401,
		0.324842, 0.945752, 0.005485,
		0.885315, -0.302033, -0.353545,
		36.602032, 35.728161, 37.964840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259460, 36.458408, 37.704498>,  <35.982311, 35.939583, 38.212322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259460, 36.458408, 37.704498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446854, 36.117775, 37.610409>,  <36.559288, 35.913395, 37.553955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446854, 36.117775, 37.610409>,  <36.259460, 36.458408, 37.704498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446854, 36.117775, 37.610409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271456, 0.114624, -0.955601,
		0.840738, 0.511532, -0.177469,
		0.468479, -0.851585, -0.235227,
		36.587399, 35.862301, 37.539841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792797, 36.690445, 37.207726>,  <36.259460, 36.458408, 37.704498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792797, 36.690445, 37.207726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738464, 36.298035, 37.152401>,  <36.705864, 36.062588, 37.119205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738464, 36.298035, 37.152401>,  <36.792797, 36.690445, 37.207726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738464, 36.298035, 37.152401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319337, 0.175506, -0.931247,
		0.937856, -0.082322, -0.337118,
		-0.135829, -0.981030, -0.138311,
		36.697716, 36.003727, 37.110909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029465, 36.569180, 36.520828>,  <36.792797, 36.690445, 37.207726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029465, 36.569180, 36.520828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815205, 36.238144, 36.587971>,  <36.686649, 36.039520, 36.628254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815205, 36.238144, 36.587971>,  <37.029465, 36.569180, 36.520828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815205, 36.238144, 36.587971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389600, 0.065845, -0.918628,
		0.749196, -0.557456, -0.357699,
		-0.535647, -0.827591, 0.167854,
		36.654510, 35.989868, 36.638329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169991, 36.114094, 36.004333>,  <37.029465, 36.569180, 36.520828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169991, 36.114094, 36.004333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821037, 35.987251, 36.153133>,  <36.611664, 35.911144, 36.242413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821037, 35.987251, 36.153133>,  <37.169991, 36.114094, 36.004333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821037, 35.987251, 36.153133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367461, -0.076424, -0.926894,
		0.322357, -0.945305, -0.049854,
		-0.872387, -0.317110, 0.371998,
		36.559322, 35.892120, 36.264732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047932, 35.573750, 35.610798>,  <37.169991, 36.114094, 36.004333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047932, 35.573750, 35.610798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683765, 35.659595, 35.752262>,  <36.465263, 35.711105, 35.837143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683765, 35.659595, 35.752262>,  <37.047932, 35.573750, 35.610798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683765, 35.659595, 35.752262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407915, -0.323378, -0.853833,
		-0.068880, -0.921610, 0.381955,
		-0.910418, 0.214618, 0.353664,
		36.410641, 35.723980, 35.858360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.000298, 33.566536, 43.336914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.642002, 33.743069, 43.358368>,  <37.427025, 33.848988, 43.371239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.642002, 33.743069, 43.358368>,  <38.000298, 33.566536, 43.336914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642002, 33.743069, 43.358368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013345, 0.147277, -0.989005,
		-0.444375, -0.885177, -0.137812,
		-0.895741, 0.441328, 0.053634,
		37.373280, 33.875465, 43.374458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513924, 33.236721, 42.952587>,  <38.000298, 33.566536, 43.336914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513924, 33.236721, 42.952587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398735, 33.618252, 42.986725>,  <37.329620, 33.847172, 43.007210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398735, 33.618252, 42.986725>,  <37.513924, 33.236721, 42.952587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398735, 33.618252, 42.986725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114006, 0.122636, -0.985882,
		-0.950827, -0.274180, -0.144058,
		-0.287976, 0.953827, 0.085347,
		37.312344, 33.904400, 43.012329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072872, 33.326935, 42.376434>,  <37.513924, 33.236721, 42.952587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072872, 33.326935, 42.376434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129543, 33.701221, 42.505650>,  <37.163544, 33.925793, 42.583179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129543, 33.701221, 42.505650>,  <37.072872, 33.326935, 42.376434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129543, 33.701221, 42.505650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159599, 0.300474, -0.940342,
		-0.976963, 0.184779, -0.106771,
		0.141674, 0.935720, 0.323043,
		37.172047, 33.981937, 42.602562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626160, 33.825825, 41.976124>,  <37.072872, 33.326935, 42.376434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626160, 33.825825, 41.976124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890083, 34.096161, 42.107506>,  <37.048439, 34.258362, 42.186337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890083, 34.096161, 42.107506>,  <36.626160, 33.825825, 41.976124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890083, 34.096161, 42.107506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099122, 0.355007, -0.929594,
		-0.744865, 0.645913, 0.167246,
		0.659811, 0.675844, 0.328457,
		37.088028, 34.298916, 42.206043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359802, 34.513065, 41.715069>,  <36.626160, 33.825825, 41.976124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359802, 34.513065, 41.715069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.746777, 34.568359, 41.799889>,  <36.978962, 34.601536, 41.850780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.746777, 34.568359, 41.799889>,  <36.359802, 34.513065, 41.715069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746777, 34.568359, 41.799889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157747, 0.325909, -0.932148,
		-0.197961, 0.935241, 0.293489,
		0.967433, 0.138232, 0.212048,
		37.037006, 34.609829, 41.863503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426678, 35.146660, 41.456131>,  <36.359802, 34.513065, 41.715069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426678, 35.146660, 41.456131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787533, 34.979347, 41.498432>,  <37.004047, 34.878960, 41.523815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787533, 34.979347, 41.498432>,  <36.426678, 35.146660, 41.456131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787533, 34.979347, 41.498432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235123, 0.271114, -0.933389,
		0.361751, 0.866911, 0.342931,
		0.902138, -0.418286, 0.105755,
		37.058174, 34.853863, 41.530159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932232, 35.694798, 41.297108>,  <36.426678, 35.146660, 41.456131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932232, 35.694798, 41.297108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123077, 35.345448, 41.257950>,  <37.237583, 35.135838, 41.234455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123077, 35.345448, 41.257950>,  <36.932232, 35.694798, 41.297108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123077, 35.345448, 41.257950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320534, 0.276651, -0.905937,
		0.818305, 0.400852, 0.411939,
		0.477111, -0.873374, -0.097899,
		37.266212, 35.083435, 41.228580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604767, 35.849602, 41.118790>,  <36.932232, 35.694798, 41.297108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604767, 35.849602, 41.118790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527924, 35.479568, 40.987747>,  <37.481819, 35.257549, 40.909122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527924, 35.479568, 40.987747>,  <37.604767, 35.849602, 41.118790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527924, 35.479568, 40.987747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154452, 0.301160, -0.940982,
		0.969143, -0.231369, 0.085025,
		-0.192108, -0.925079, -0.327603,
		37.470291, 35.202045, 40.889465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147522, 35.693199, 40.667225>,  <37.604767, 35.849602, 41.118790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147522, 35.693199, 40.667225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843307, 35.453468, 40.567310>,  <37.660778, 35.309631, 40.507362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843307, 35.453468, 40.567310>,  <38.147522, 35.693199, 40.667225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843307, 35.453468, 40.567310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087277, 0.286855, -0.953990,
		0.643403, -0.747345, -0.165856,
		-0.760536, -0.599324, -0.249790,
		37.615147, 35.273670, 40.492374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945072, 35.678051, 40.781185>,  <38.147522, 35.693199, 40.667225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945072, 35.678051, 40.781185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106602, 36.042358, 40.815662>,  <39.203522, 36.260941, 40.836349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106602, 36.042358, 40.815662>,  <38.945072, 35.678051, 40.781185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106602, 36.042358, 40.815662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035224, -0.109622, 0.993349,
		0.914157, -0.398106, -0.076349,
		0.403827, 0.910766, 0.086189,
		39.227749, 36.315590, 40.841518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360077, 35.663960, 41.325451>,  <38.945072, 35.678051, 40.781185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360077, 35.663960, 41.325451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.318764, 36.059750, 41.284927>,  <39.293976, 36.297226, 41.260612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.318764, 36.059750, 41.284927>,  <39.360077, 35.663960, 41.325451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318764, 36.059750, 41.284927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077041, 0.109509, 0.990996,
		0.991664, 0.094545, -0.087540,
		-0.103280, 0.989479, -0.101312,
		39.287781, 36.356594, 41.254532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848152, 35.948273, 41.704433>,  <39.360077, 35.663960, 41.325451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848152, 35.948273, 41.704433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589230, 36.249264, 41.655819>,  <39.433876, 36.429859, 41.626652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589230, 36.249264, 41.655819>,  <39.848152, 35.948273, 41.704433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589230, 36.249264, 41.655819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172048, 0.299568, 0.938434,
		0.742560, 0.586544, -0.323374,
		-0.647306, 0.752479, -0.121533,
		39.395039, 36.475006, 41.619358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214012, 36.512001, 41.773186>,  <39.848152, 35.948273, 41.704433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214012, 36.512001, 41.773186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836369, 36.591408, 41.878448>,  <39.609783, 36.639050, 41.941608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836369, 36.591408, 41.878448>,  <40.214012, 36.512001, 41.773186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836369, 36.591408, 41.878448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323773, 0.408527, 0.853391,
		0.061902, 0.890897, -0.449967,
		-0.944108, 0.198514, 0.263160,
		39.553135, 36.650963, 41.957397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275463, 37.246292, 41.947968>,  <40.214012, 36.512001, 41.773186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275463, 37.246292, 41.947968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.925987, 37.116570, 42.093010>,  <39.716301, 37.038734, 42.180035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.925987, 37.116570, 42.093010>,  <40.275463, 37.246292, 41.947968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925987, 37.116570, 42.093010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194895, 0.449599, 0.871709,
		-0.445732, 0.832276, -0.329605,
		-0.873693, -0.324310, 0.362607,
		39.663879, 37.019276, 42.201794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985809, 37.764206, 42.348003>,  <40.275463, 37.246292, 41.947968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985809, 37.764206, 42.348003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775261, 37.459221, 42.498508>,  <39.648930, 37.276230, 42.588814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775261, 37.459221, 42.498508>,  <39.985809, 37.764206, 42.348003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775261, 37.459221, 42.498508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159609, 0.346058, 0.924537,
		-0.835137, 0.546709, -0.060460,
		-0.526375, -0.762465, 0.376266,
		39.617348, 37.230480, 42.611389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619762, 38.007481, 42.995491>,  <39.985809, 37.764206, 42.348003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619762, 38.007481, 42.995491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.635117, 37.609200, 43.029202>,  <39.644329, 37.370232, 43.049427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.635117, 37.609200, 43.029202>,  <39.619762, 38.007481, 42.995491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635117, 37.609200, 43.029202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162266, 0.089426, 0.982687,
		-0.986000, -0.024049, 0.165001,
		0.038388, -0.995703, 0.084272,
		39.646633, 37.310490, 43.054482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262222, 37.861988, 43.700451>,  <39.619762, 38.007481, 42.995491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262222, 37.861988, 43.700451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.479965, 37.538120, 43.612717>,  <39.610611, 37.343800, 43.560078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.479965, 37.538120, 43.612717>,  <39.262222, 37.861988, 43.700451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479965, 37.538120, 43.612717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238326, -0.101419, 0.965875,
		-0.804287, -0.578052, 0.137758,
		0.544355, -0.809673, -0.219335,
		39.643272, 37.295219, 43.546917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116188, 37.321899, 44.271286>,  <39.262222, 37.861988, 43.700451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116188, 37.321899, 44.271286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461449, 37.220730, 44.096478>,  <39.668606, 37.160027, 43.991592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461449, 37.220730, 44.096478>,  <39.116188, 37.321899, 44.271286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461449, 37.220730, 44.096478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414163, -0.140468, 0.899299,
		-0.288843, -0.957234, -0.016494,
		0.863156, -0.252925, -0.437024,
		39.720394, 37.144852, 43.965370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290482, 36.585072, 44.436760>,  <39.116188, 37.321899, 44.271286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290482, 36.585072, 44.436760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.621582, 36.793842, 44.354382>,  <39.820244, 36.919106, 44.304955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.621582, 36.793842, 44.354382>,  <39.290482, 36.585072, 44.436760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621582, 36.793842, 44.354382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363927, -0.220042, 0.905063,
		0.427061, -0.824119, -0.372084,
		0.827754, 0.521929, -0.205947,
		39.869907, 36.950420, 44.292599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723949, 36.283031, 44.966866>,  <39.290482, 36.585072, 44.436760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723949, 36.283031, 44.966866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.918358, 36.609226, 44.841152>,  <40.035004, 36.804943, 44.765724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.918358, 36.609226, 44.841152>,  <39.723949, 36.283031, 44.966866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918358, 36.609226, 44.841152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541136, 0.001575, 0.840934,
		0.686262, -0.578779, -0.440522,
		0.486021, 0.815483, -0.314279,
		40.064163, 36.853870, 44.746868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484886, 36.131596, 45.126949>,  <39.723949, 36.283031, 44.966866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484886, 36.131596, 45.126949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.432060, 36.526970, 45.097130>,  <40.400364, 36.764194, 45.079239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.432060, 36.526970, 45.097130>,  <40.484886, 36.131596, 45.126949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432060, 36.526970, 45.097130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633137, 0.141982, 0.760906,
		0.762691, 0.053286, -0.644565,
		-0.132062, 0.988434, -0.074551,
		40.392441, 36.823502, 45.074764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105392, 36.357525, 45.417839>,  <40.484886, 36.131596, 45.126949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105392, 36.357525, 45.417839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.897312, 36.698929, 45.405731>,  <40.772465, 36.903770, 45.398468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.897312, 36.698929, 45.405731>,  <41.105392, 36.357525, 45.417839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897312, 36.698929, 45.405731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347663, 0.244003, 0.905314,
		0.780077, 0.460423, -0.423664,
		-0.520202, 0.853507, -0.030269,
		40.741253, 36.954979, 45.396652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585880, 36.818943, 45.358299>,  <41.105392, 36.357525, 45.417839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585880, 36.818943, 45.358299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256634, 36.972572, 45.525612>,  <41.059086, 37.064751, 45.625999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256634, 36.972572, 45.525612>,  <41.585880, 36.818943, 45.358299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256634, 36.972572, 45.525612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491829, 0.113954, 0.863203,
		0.283871, 0.916242, -0.282698,
		-0.823117, 0.384078, 0.418286,
		41.009697, 37.087795, 45.651096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.458122, 38.042217, 45.720177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703083, 37.751911, 45.594814>,  <33.850060, 37.577728, 45.519596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703083, 37.751911, 45.594814>,  <33.458122, 38.042217, 45.720177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703083, 37.751911, 45.594814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101025, 0.321344, -0.941559,
		0.784063, 0.608277, 0.123472,
		0.612405, -0.725767, -0.313404,
		33.886803, 37.534180, 45.500793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912861, 38.330101, 45.305710>,  <33.458122, 38.042217, 45.720177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912861, 38.330101, 45.305710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.926105, 37.950459, 45.180428>,  <33.934052, 37.722672, 45.105259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.926105, 37.950459, 45.180428>,  <33.912861, 38.330101, 45.305710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926105, 37.950459, 45.180428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028834, 0.312338, -0.949533,
		0.999036, 0.040470, -0.017026,
		0.033110, -0.949109, -0.313203,
		33.936039, 37.665726, 45.086468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371498, 38.364166, 44.709602>,  <33.912861, 38.330101, 45.305710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371498, 38.364166, 44.709602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190971, 38.007923, 44.687229>,  <34.082657, 37.794178, 44.673805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190971, 38.007923, 44.687229>,  <34.371498, 38.364166, 44.709602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190971, 38.007923, 44.687229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173569, 0.149088, -0.973471,
		0.875322, -0.429635, -0.221868,
		-0.451315, -0.890610, -0.055929,
		34.055576, 37.740742, 44.670452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675934, 37.978901, 44.283607>,  <34.371498, 38.364166, 44.709602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675934, 37.978901, 44.283607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307377, 37.824062, 44.297443>,  <34.086243, 37.731159, 44.305744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307377, 37.824062, 44.297443>,  <34.675934, 37.978901, 44.283607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307377, 37.824062, 44.297443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046651, 0.021796, -0.998673,
		0.385833, -0.921780, -0.038142,
		-0.921389, -0.387100, 0.034593,
		34.030960, 37.707932, 44.307819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696114, 37.451630, 43.950146>,  <34.675934, 37.978901, 44.283607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696114, 37.451630, 43.950146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.304371, 37.532436, 43.947048>,  <34.069324, 37.580921, 43.945190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.304371, 37.532436, 43.947048>,  <34.696114, 37.451630, 43.950146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304371, 37.532436, 43.947048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039701, 0.154606, -0.987178,
		-0.198225, -0.967103, -0.159433,
		-0.979352, 0.202013, -0.007748,
		34.010567, 37.593040, 43.944725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469353, 37.259373, 43.270401>,  <34.696114, 37.451630, 43.950146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469353, 37.259373, 43.270401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174385, 37.488174, 43.414082>,  <33.997406, 37.625454, 43.500290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174385, 37.488174, 43.414082>,  <34.469353, 37.259373, 43.270401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174385, 37.488174, 43.414082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181728, 0.344176, -0.921150,
		-0.650532, -0.744548, -0.149851,
		-0.737416, 0.572006, 0.359203,
		33.953159, 37.659775, 43.521843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704456, 37.077240, 43.077026>,  <34.469353, 37.259373, 43.270401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704456, 37.077240, 43.077026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680801, 37.469696, 43.150639>,  <33.666607, 37.705170, 43.194805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680801, 37.469696, 43.150639>,  <33.704456, 37.077240, 43.077026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680801, 37.469696, 43.150639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356461, 0.151443, -0.921955,
		-0.932437, -0.120120, 0.340783,
		-0.059136, 0.981140, 0.184029,
		33.663059, 37.764038, 43.205849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228981, 37.301826, 42.610054>,  <33.704456, 37.077240, 43.077026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228981, 37.301826, 42.610054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.393734, 37.649391, 42.719845>,  <33.492584, 37.857929, 42.785721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.393734, 37.649391, 42.719845>,  <33.228981, 37.301826, 42.610054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393734, 37.649391, 42.719845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311851, 0.417440, -0.853518,
		-0.856215, 0.265950, 0.442908,
		0.411880, 0.868916, 0.274481,
		33.517300, 37.910065, 42.802189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718506, 37.738483, 42.486965>,  <33.228981, 37.301826, 42.610054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718506, 37.738483, 42.486965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.024910, 37.991722, 42.531532>,  <33.208752, 38.143665, 42.558273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.024910, 37.991722, 42.531532>,  <32.718506, 37.738483, 42.486965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024910, 37.991722, 42.531532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342619, 0.548753, -0.762550,
		-0.543909, 0.545948, 0.637263,
		0.766013, 0.633096, 0.111419,
		33.254715, 38.181652, 42.564957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433369, 38.532356, 42.529099>,  <32.718506, 37.738483, 42.486965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433369, 38.532356, 42.529099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810677, 38.508625, 42.398418>,  <33.037060, 38.494385, 42.320011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810677, 38.508625, 42.398418>,  <32.433369, 38.532356, 42.529099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810677, 38.508625, 42.398418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261076, 0.475409, -0.840134,
		0.205157, 0.877762, 0.432948,
		0.943265, -0.059327, -0.326696,
		33.093655, 38.490826, 42.300411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687077, 39.232822, 42.206360>,  <32.433369, 38.532356, 42.529099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687077, 39.232822, 42.206360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.909222, 38.956947, 42.020500>,  <33.042507, 38.791420, 41.908985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.909222, 38.956947, 42.020500>,  <32.687077, 39.232822, 42.206360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909222, 38.956947, 42.020500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293996, 0.359826, -0.885489,
		0.777907, 0.628372, -0.002932,
		0.555362, -0.689691, -0.464650,
		33.075829, 38.750038, 41.881104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084606, 39.598370, 41.753357>,  <32.687077, 39.232822, 42.206360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084606, 39.598370, 41.753357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092068, 39.216415, 41.634808>,  <33.096546, 38.987244, 41.563679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092068, 39.216415, 41.634808>,  <33.084606, 39.598370, 41.753357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092068, 39.216415, 41.634808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237030, 0.283754, -0.929140,
		0.971323, 0.087585, -0.221043,
		0.018657, -0.954889, -0.296377,
		33.097664, 38.929947, 41.545895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474453, 39.671577, 41.095184>,  <33.084606, 39.598370, 41.753357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474453, 39.671577, 41.095184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.356800, 39.289841, 41.074326>,  <33.286209, 39.060799, 41.061810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.356800, 39.289841, 41.074326>,  <33.474453, 39.671577, 41.095184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356800, 39.289841, 41.074326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214808, 0.119176, -0.969358,
		0.931311, -0.273922, -0.240053,
		-0.294137, -0.954340, -0.052149,
		33.268559, 39.003540, 41.058681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932220, 39.280415, 40.638271>,  <33.474453, 39.671577, 41.095184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932220, 39.280415, 40.638271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.570717, 39.109295, 40.632355>,  <33.353817, 39.006622, 40.628803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.570717, 39.109295, 40.632355>,  <33.932220, 39.280415, 40.638271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570717, 39.109295, 40.632355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065804, 0.172993, -0.982722,
		0.422962, -0.887167, -0.184494,
		-0.903755, -0.427795, -0.014790,
		33.299591, 38.980957, 40.627918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555042, 39.124981, 40.220325>,  <33.932220, 39.280415, 40.638271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555042, 39.124981, 40.220325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815735, 39.424694, 40.173302>,  <34.972153, 39.604523, 40.145088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815735, 39.424694, 40.173302>,  <34.555042, 39.124981, 40.220325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815735, 39.424694, 40.173302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249691, -0.065607, 0.966101,
		0.716167, -0.658996, -0.229847,
		0.651735, 0.749280, -0.117560,
		35.011257, 39.649479, 40.138035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152142, 38.855984, 40.422768>,  <34.555042, 39.124981, 40.220325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152142, 38.855984, 40.422768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.195957, 39.253201, 40.440048>,  <35.222244, 39.491531, 40.450417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.195957, 39.253201, 40.440048>,  <35.152142, 38.855984, 40.422768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195957, 39.253201, 40.440048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328140, -0.077155, 0.941473,
		0.938257, -0.088947, -0.334309,
		0.109535, 0.993044, 0.043204,
		35.228817, 39.551113, 40.453011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716518, 38.954967, 40.855598>,  <35.152142, 38.855984, 40.422768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716518, 38.954967, 40.855598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544868, 39.316002, 40.869446>,  <35.441879, 39.532623, 40.877754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544868, 39.316002, 40.869446>,  <35.716518, 38.954967, 40.855598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544868, 39.316002, 40.869446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227397, 0.070863, 0.971220,
		0.874154, 0.424644, -0.235653,
		-0.429122, 0.902583, 0.034617,
		35.416134, 39.586777, 40.879829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209846, 39.345444, 41.227394>,  <35.716518, 38.954967, 40.855598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209846, 39.345444, 41.227394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.856201, 39.531925, 41.239979>,  <35.644012, 39.643814, 41.247528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.856201, 39.531925, 41.239979>,  <36.209846, 39.345444, 41.227394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856201, 39.531925, 41.239979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146353, 0.212345, 0.966173,
		0.443755, 0.858814, -0.255968,
		-0.884117, 0.466206, 0.031461,
		35.590965, 39.671787, 41.249416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394020, 40.019554, 41.567715>,  <36.209846, 39.345444, 41.227394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394020, 40.019554, 41.567715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007687, 39.917870, 41.587852>,  <35.775887, 39.856861, 41.599937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007687, 39.917870, 41.587852>,  <36.394020, 40.019554, 41.567715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007687, 39.917870, 41.587852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055652, -0.013708, 0.998356,
		-0.253101, 0.967052, 0.027387,
		-0.965838, -0.254209, 0.050349,
		35.717934, 39.841606, 41.602959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058601, 40.397900, 42.157276>,  <36.394020, 40.019554, 41.567715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058601, 40.397900, 42.157276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.814144, 40.085995, 42.102905>,  <35.667469, 39.898853, 42.070282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.814144, 40.085995, 42.102905>,  <36.058601, 40.397900, 42.157276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814144, 40.085995, 42.102905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151489, -0.053322, 0.987020,
		-0.776887, 0.623803, -0.085538,
		-0.611145, -0.779761, -0.135924,
		35.630802, 39.852066, 42.062126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423820, 40.546848, 42.550556>,  <36.058601, 40.397900, 42.157276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423820, 40.546848, 42.550556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.425632, 40.149117, 42.508068>,  <35.426720, 39.910477, 42.482574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.425632, 40.149117, 42.508068>,  <35.423820, 40.546848, 42.550556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425632, 40.149117, 42.508068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051264, -0.106317, 0.993010,
		-0.998675, 0.000951, -0.051455,
		0.004527, -0.994332, -0.106225,
		35.426991, 39.850819, 42.476200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891678, 40.356434, 42.869572>,  <35.423820, 40.546848, 42.550556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891678, 40.356434, 42.869572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.109066, 40.021080, 42.852814>,  <35.239498, 39.819870, 42.842758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.109066, 40.021080, 42.852814>,  <34.891678, 40.356434, 42.869572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109066, 40.021080, 42.852814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123988, -0.129531, 0.983793,
		-0.830220, -0.529470, -0.174345,
		0.543472, -0.838381, -0.041891,
		35.272106, 39.769566, 42.840248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539562, 39.886368, 43.232121>,  <34.891678, 40.356434, 42.869572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539562, 39.886368, 43.232121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915291, 39.749428, 43.223484>,  <35.140728, 39.667263, 43.218304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915291, 39.749428, 43.223484>,  <34.539562, 39.886368, 43.232121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915291, 39.749428, 43.223484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023047, 0.000180, 0.999734,
		-0.342253, -0.939573, 0.008059,
		0.939325, -0.342348, -0.021593,
		35.197090, 39.646725, 43.217007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524235, 39.313831, 43.779018>,  <34.539562, 39.886368, 43.232121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524235, 39.313831, 43.779018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909191, 39.391155, 43.702663>,  <35.140163, 39.437550, 43.656849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909191, 39.391155, 43.702663>,  <34.524235, 39.313831, 43.779018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909191, 39.391155, 43.702663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196849, -0.011933, 0.980361,
		0.187232, -0.981066, -0.049536,
		0.962390, 0.193306, -0.190888,
		35.197906, 39.449146, 43.645397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882565, 38.736099, 44.050377>,  <34.524235, 39.313831, 43.779018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882565, 38.736099, 44.050377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.110199, 39.064827, 44.039356>,  <35.246780, 39.262062, 44.032742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.110199, 39.064827, 44.039356>,  <34.882565, 38.736099, 44.050377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110199, 39.064827, 44.039356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208153, -0.111561, 0.971713,
		0.795494, -0.558726, -0.234551,
		0.569088, 0.821815, -0.027555,
		35.280926, 39.311371, 44.031090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399200, 38.531708, 44.437744>,  <34.882565, 38.736099, 44.050377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399200, 38.531708, 44.437744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.438541, 38.929081, 44.414368>,  <35.462147, 39.167503, 44.400341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.438541, 38.929081, 44.414368>,  <35.399200, 38.531708, 44.437744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438541, 38.929081, 44.414368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142370, 0.044078, 0.988831,
		0.984915, -0.105570, -0.137101,
		0.098348, 0.993434, -0.058443,
		35.468044, 39.227112, 44.396835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138592, 38.674652, 44.553616>,  <35.399200, 38.531708, 44.437744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138592, 38.674652, 44.553616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.916241, 38.997482, 44.633236>,  <35.782829, 39.191181, 44.681007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.916241, 38.997482, 44.633236>,  <36.138592, 38.674652, 44.553616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916241, 38.997482, 44.633236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261390, -0.057604, 0.963513,
		0.789096, 0.587629, -0.178941,
		-0.555881, 0.807077, 0.199055,
		35.749477, 39.239605, 44.692951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583775, 39.176041, 44.967663>,  <36.138592, 38.674652, 44.553616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583775, 39.176041, 44.967663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.192375, 39.227634, 45.032051>,  <35.957535, 39.258591, 45.070683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.192375, 39.227634, 45.032051>,  <36.583775, 39.176041, 44.967663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192375, 39.227634, 45.032051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147175, -0.110188, 0.982954,
		0.144518, 0.985506, 0.088836,
		-0.978496, 0.128980, 0.160967,
		35.898827, 39.266327, 45.080341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117302, 39.750465, 45.073013>,  <36.583775, 39.176041, 44.967663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117302, 39.750465, 45.073013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.508144, 39.669147, 45.098072>,  <37.742649, 39.620358, 45.113106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.508144, 39.669147, 45.098072>,  <37.117302, 39.750465, 45.073013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508144, 39.669147, 45.098072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098491, 0.171296, -0.980284,
		0.188560, 0.964016, 0.187399,
		0.977110, -0.203299, 0.062647,
		37.801277, 39.608158, 45.116867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463062, 40.367374, 44.850838>,  <37.117302, 39.750465, 45.073013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463062, 40.367374, 44.850838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738037, 40.081661, 44.798332>,  <37.903023, 39.910233, 44.766830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738037, 40.081661, 44.798332>,  <37.463062, 40.367374, 44.850838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738037, 40.081661, 44.798332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084205, 0.257918, -0.962490,
		0.721347, 0.650597, 0.237449,
		0.687436, -0.714284, -0.131265,
		37.944267, 39.867374, 44.758953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067387, 40.637314, 44.638725>,  <37.463062, 40.367374, 44.850838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067387, 40.637314, 44.638725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.098854, 40.258438, 44.514374>,  <38.117737, 40.031113, 44.439762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.098854, 40.258438, 44.514374>,  <38.067387, 40.637314, 44.638725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098854, 40.258438, 44.514374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209705, 0.320587, -0.923714,
		0.974594, 0.007480, 0.223852,
		0.078673, -0.947189, -0.310874,
		38.122456, 39.974281, 44.421112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503693, 40.686974, 43.969090>,  <38.067387, 40.637314, 44.638725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503693, 40.686974, 43.969090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.372486, 40.309135, 43.964184>,  <38.293762, 40.082432, 43.961239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.372486, 40.309135, 43.964184>,  <38.503693, 40.686974, 43.969090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372486, 40.309135, 43.964184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244154, -0.072228, -0.967043,
		0.912577, -0.320196, 0.254318,
		-0.328012, -0.944594, -0.012264,
		38.274082, 40.025757, 43.960506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984295, 40.304966, 43.647400>,  <38.503693, 40.686974, 43.969090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984295, 40.304966, 43.647400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662628, 40.070972, 43.605255>,  <38.469627, 39.930576, 43.579967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662628, 40.070972, 43.605255>,  <38.984295, 40.304966, 43.647400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662628, 40.070972, 43.605255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159954, -0.042262, -0.986219,
		0.572474, -0.809940, 0.127557,
		-0.804169, -0.584988, -0.105359,
		38.421379, 39.895477, 43.573647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105869, 39.904442, 43.036583>,  <38.984295, 40.304966, 43.647400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105869, 39.904442, 43.036583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.710217, 39.857399, 43.071888>,  <38.472824, 39.829174, 43.093071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.710217, 39.857399, 43.071888>,  <39.105869, 39.904442, 43.036583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710217, 39.857399, 43.071888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073989, -0.120671, -0.989931,
		0.127077, -0.985701, 0.110658,
		-0.989130, -0.117610, 0.088266,
		38.413479, 39.822117, 43.098366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895092, 39.229885, 42.756916>,  <39.105869, 39.904442, 43.036583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895092, 39.229885, 42.756916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593151, 39.491222, 42.733803>,  <38.411987, 39.648026, 42.719933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593151, 39.491222, 42.733803>,  <38.895092, 39.229885, 42.756916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593151, 39.491222, 42.733803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089584, -0.189974, -0.977693,
		-0.649751, -0.732835, 0.201932,
		-0.754850, 0.653347, -0.057785,
		38.366695, 39.687225, 42.716469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402710, 38.928940, 42.293186>,  <38.895092, 39.229885, 42.756916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402710, 38.928940, 42.293186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304565, 39.316654, 42.299931>,  <38.245678, 39.549282, 42.303978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304565, 39.316654, 42.299931>,  <38.402710, 38.928940, 42.293186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304565, 39.316654, 42.299931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171885, -0.026385, -0.984764,
		-0.954072, -0.244520, 0.173080,
		-0.245361, 0.969285, 0.016856,
		38.230957, 39.607441, 42.304989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094971, 38.942715, 41.676270>,  <38.402710, 38.928940, 42.293186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094971, 38.942715, 41.676270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.109184, 39.330532, 41.773201>,  <38.117710, 39.563221, 41.831360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.109184, 39.330532, 41.773201>,  <38.094971, 38.942715, 41.676270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109184, 39.330532, 41.773201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010869, 0.242839, -0.970006,
		-0.999309, 0.031831, 0.019166,
		0.035531, 0.969544, 0.242325,
		38.119843, 39.621395, 41.845898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541409, 39.253296, 41.328720>,  <38.094971, 38.942715, 41.676270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541409, 39.253296, 41.328720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.821678, 39.529114, 41.402031>,  <37.989841, 39.694603, 41.446018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.821678, 39.529114, 41.402031>,  <37.541409, 39.253296, 41.328720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821678, 39.529114, 41.402031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085655, 0.173727, -0.981062,
		-0.708322, 0.703103, 0.062663,
		0.700674, 0.689540, 0.183279,
		38.031879, 39.735977, 41.457016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378075, 39.674171, 40.868740>,  <37.541409, 39.253296, 41.328720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378075, 39.674171, 40.868740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752995, 39.790390, 40.945728>,  <37.977947, 39.860123, 40.991920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752995, 39.790390, 40.945728>,  <37.378075, 39.674171, 40.868740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752995, 39.790390, 40.945728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161301, 0.127895, -0.978583,
		-0.308940, 0.948275, 0.073011,
		0.937304, 0.290546, 0.192470,
		38.034187, 39.877552, 41.003468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455849, 40.372055, 40.575989>,  <37.378075, 39.674171, 40.868740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455849, 40.372055, 40.575989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836433, 40.255905, 40.616791>,  <38.064785, 40.186214, 40.641270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836433, 40.255905, 40.616791>,  <37.455849, 40.372055, 40.575989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836433, 40.255905, 40.616791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158273, 0.177400, -0.971328,
		0.263957, 0.940324, 0.214748,
		0.951460, -0.290378, 0.102002,
		38.121872, 40.168793, 40.647392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927917, 40.904713, 40.240307>,  <37.455849, 40.372055, 40.575989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927917, 40.904713, 40.240307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142811, 40.568924, 40.272961>,  <38.271748, 40.367451, 40.292553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142811, 40.568924, 40.272961>,  <37.927917, 40.904713, 40.240307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142811, 40.568924, 40.272961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401468, 0.169400, -0.900071,
		0.741754, 0.516325, 0.428029,
		0.537237, -0.839471, 0.081636,
		38.303982, 40.317081, 40.297451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435173, 41.121342, 39.857235>,  <37.927917, 40.904713, 40.240307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435173, 41.121342, 39.857235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.448936, 40.722260, 39.880585>,  <38.457195, 40.482811, 39.894592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.448936, 40.722260, 39.880585>,  <38.435173, 41.121342, 39.857235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448936, 40.722260, 39.880585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439387, -0.037355, -0.897521,
		0.897638, 0.056534, 0.437092,
		0.034413, -0.997702, 0.058371,
		38.459259, 40.422951, 39.898094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.983320, 39.014271, 27.915991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043331, 38.642559, 27.780975>,  <29.079338, 38.419533, 27.699966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043331, 38.642559, 27.780975>,  <28.983320, 39.014271, 27.915991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043331, 38.642559, 27.780975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746420, -0.330339, 0.577697,
		-0.648344, 0.165277, -0.743191,
		0.150025, -0.929279, -0.337540,
		29.088339, 38.363777, 27.679714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322750, 38.757839, 27.674721>,  <28.983320, 39.014271, 27.915991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322750, 38.757839, 27.674721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.561098, 38.446472, 27.753721>,  <28.704107, 38.259651, 27.801121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.561098, 38.446472, 27.753721>,  <28.322750, 38.757839, 27.674721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561098, 38.446472, 27.753721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685068, -0.364359, 0.630813,
		-0.419079, -0.511177, -0.750380,
		0.595865, -0.778421, 0.197496,
		28.739859, 38.212948, 27.812971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852705, 38.333843, 27.790955>,  <28.322750, 38.757839, 27.674721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852705, 38.333843, 27.790955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183720, 38.163784, 27.937614>,  <28.382328, 38.061749, 28.025610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183720, 38.163784, 27.937614>,  <27.852705, 38.333843, 27.790955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183720, 38.163784, 27.937614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549121, -0.477061, 0.686206,
		-0.116823, -0.769196, -0.628243,
		0.827537, -0.425146, 0.366650,
		28.431980, 38.036240, 28.047609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589094, 37.722046, 27.898129>,  <27.852705, 38.333843, 27.790955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589094, 37.722046, 27.898129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915751, 37.794083, 28.117458>,  <28.111744, 37.837307, 28.249056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915751, 37.794083, 28.117458>,  <27.589094, 37.722046, 27.898129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915751, 37.794083, 28.117458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414970, -0.477075, 0.774725,
		0.401116, -0.860212, -0.314866,
		0.816643, 0.180095, 0.548325,
		28.160744, 37.848110, 28.281956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845779, 37.097874, 28.140257>,  <27.589094, 37.722046, 27.898129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845779, 37.097874, 28.140257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962383, 37.359596, 28.419373>,  <28.032345, 37.516628, 28.586842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962383, 37.359596, 28.419373>,  <27.845779, 37.097874, 28.140257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962383, 37.359596, 28.419373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342397, -0.609769, 0.714805,
		0.893190, -0.447293, 0.046279,
		0.291508, 0.654302, 0.697791,
		28.049835, 37.555885, 28.628710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137653, 36.654663, 28.649471>,  <27.845779, 37.097874, 28.140257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137653, 36.654663, 28.649471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.084066, 37.003075, 28.838514>,  <28.051914, 37.212124, 28.951941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.084066, 37.003075, 28.838514>,  <28.137653, 36.654663, 28.649471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084066, 37.003075, 28.838514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048072, -0.482057, 0.874820,
		0.989819, 0.094478, 0.106452,
		-0.133967, 0.871031, 0.472608,
		28.043877, 37.264385, 28.980297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549139, 36.748184, 29.268543>,  <28.137653, 36.654663, 28.649471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549139, 36.748184, 29.268543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.252865, 37.007507, 29.339064>,  <28.075100, 37.163101, 29.381376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.252865, 37.007507, 29.339064>,  <28.549139, 36.748184, 29.268543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252865, 37.007507, 29.339064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177075, -0.441512, 0.879609,
		0.648095, 0.620296, 0.441821,
		-0.740687, 0.648306, 0.176302,
		28.030659, 37.202000, 29.391954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581123, 36.933205, 30.021015>,  <28.549139, 36.748184, 29.268543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581123, 36.933205, 30.021015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.209396, 37.037178, 29.916092>,  <27.986361, 37.099564, 29.853138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.209396, 37.037178, 29.916092>,  <28.581123, 36.933205, 30.021015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209396, 37.037178, 29.916092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354511, -0.429047, 0.830807,
		0.103415, 0.865073, 0.490871,
		-0.929315, 0.259937, -0.262308,
		27.930601, 37.115158, 29.837400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198971, 37.276169, 30.665506>,  <28.581123, 36.933205, 30.021015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198971, 37.276169, 30.665506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.932140, 37.108322, 30.419277>,  <27.772041, 37.007614, 30.271540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.932140, 37.108322, 30.419277>,  <28.198971, 37.276169, 30.665506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932140, 37.108322, 30.419277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412815, -0.479627, 0.774301,
		-0.620156, 0.770636, 0.146723,
		-0.667076, -0.419617, -0.615574,
		27.732018, 36.982437, 30.234606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625805, 37.311096, 31.065165>,  <28.198971, 37.276169, 30.665506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625805, 37.311096, 31.065165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.519773, 37.054661, 30.777071>,  <27.456154, 36.900799, 30.604214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.519773, 37.054661, 30.777071>,  <27.625805, 37.311096, 31.065165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519773, 37.054661, 30.777071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544810, -0.516714, 0.660446,
		-0.795560, 0.567461, -0.212301,
		-0.265078, -0.641088, -0.720236,
		27.440250, 36.862335, 30.561001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038921, 37.176109, 31.303875>,  <27.625805, 37.311096, 31.065165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038921, 37.176109, 31.303875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.102171, 36.872986, 31.050667>,  <27.140121, 36.691113, 30.898741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.102171, 36.872986, 31.050667>,  <27.038921, 37.176109, 31.303875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102171, 36.872986, 31.050667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383748, -0.637855, 0.667741,
		-0.909799, 0.137336, -0.391669,
		0.158123, -0.757812, -0.633023,
		27.149609, 36.645641, 30.860760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426704, 36.845921, 31.200850>,  <27.038921, 37.176109, 31.303875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426704, 36.845921, 31.200850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.701979, 36.562283, 31.139427>,  <26.867144, 36.392101, 31.102573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.701979, 36.562283, 31.139427>,  <26.426704, 36.845921, 31.200850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701979, 36.562283, 31.139427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430298, -0.569312, 0.700520,
		-0.584159, -0.416012, -0.696916,
		0.688187, -0.709097, -0.153560,
		26.908436, 36.349552, 31.093361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120455, 36.119820, 31.157999>,  <26.426704, 36.845921, 31.200850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120455, 36.119820, 31.157999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.498354, 36.016659, 31.238932>,  <26.725094, 35.954762, 31.287491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.498354, 36.016659, 31.238932>,  <26.120455, 36.119820, 31.157999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498354, 36.016659, 31.238932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324748, -0.652434, 0.684740,
		-0.044586, -0.712613, -0.700139,
		0.944749, -0.257898, 0.202330,
		26.781778, 35.939289, 31.299631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072386, 35.421921, 31.462692>,  <26.120455, 36.119820, 31.157999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072386, 35.421921, 31.462692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447031, 35.510204, 31.571537>,  <26.671818, 35.563175, 31.636845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447031, 35.510204, 31.571537>,  <26.072386, 35.421921, 31.462692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447031, 35.510204, 31.571537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093578, -0.590852, 0.801334,
		0.337640, -0.776003, -0.532746,
		0.936612, 0.220709, 0.272112,
		26.728014, 35.576416, 31.653172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363050, 34.782207, 31.708868>,  <26.072386, 35.421921, 31.462692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363050, 34.782207, 31.708868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.598301, 35.063656, 31.868380>,  <26.739452, 35.232525, 31.964087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.598301, 35.063656, 31.868380>,  <26.363050, 34.782207, 31.708868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598301, 35.063656, 31.868380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059892, -0.453828, 0.889074,
		0.806547, -0.546773, -0.224768,
		0.588128, 0.703619, 0.398781,
		26.774740, 35.274742, 31.988014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751945, 34.446541, 32.245064>,  <26.363050, 34.782207, 31.708868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751945, 34.446541, 32.245064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.787621, 34.837391, 32.322285>,  <26.809025, 35.071899, 32.368618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.787621, 34.837391, 32.322285>,  <26.751945, 34.446541, 32.245064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787621, 34.837391, 32.322285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027745, -0.196191, 0.980173,
		0.995628, -0.082063, -0.044608,
		0.089188, 0.977126, 0.193057,
		26.814377, 35.130527, 32.380203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240353, 34.588272, 32.762367>,  <26.751945, 34.446541, 32.245064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240353, 34.588272, 32.762367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986689, 34.897549, 32.764095>,  <26.834490, 35.083115, 32.765133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986689, 34.897549, 32.764095>,  <27.240353, 34.588272, 32.762367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986689, 34.897549, 32.764095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106072, -0.092532, 0.990044,
		0.765893, 0.627386, 0.140694,
		-0.634158, 0.773191, 0.004322,
		26.796442, 35.129505, 32.765392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519129, 35.140217, 33.144997>,  <27.240353, 34.588272, 32.762367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519129, 35.140217, 33.144997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122215, 35.138336, 33.194557>,  <26.884068, 35.137207, 33.224293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122215, 35.138336, 33.194557>,  <27.519129, 35.140217, 33.144997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122215, 35.138336, 33.194557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123926, -0.068632, 0.989915,
		0.003852, 0.997631, 0.068684,
		-0.992284, -0.004698, 0.123897,
		26.824530, 35.136929, 33.231728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241261, 35.537327, 33.786728>,  <27.519129, 35.140217, 33.144997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241261, 35.537327, 33.786728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974581, 35.245319, 33.726616>,  <26.814573, 35.070114, 33.690548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974581, 35.245319, 33.726616>,  <27.241261, 35.537327, 33.786728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974581, 35.245319, 33.726616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009741, -0.193084, 0.981134,
		-0.745263, 0.655585, 0.121617,
		-0.666699, -0.730018, -0.150284,
		26.774570, 35.026314, 33.681530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338598, 36.354843, 33.736374>,  <27.241261, 35.537327, 33.786728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338598, 36.354843, 33.736374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.513012, 36.232166, 34.074799>,  <27.617661, 36.158558, 34.277851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.513012, 36.232166, 34.074799>,  <27.338598, 36.354843, 33.736374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513012, 36.232166, 34.074799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772659, 0.609578, -0.177235,
		-0.461382, 0.730994, 0.502766,
		0.436033, -0.306694, 0.846058,
		27.643822, 36.140160, 34.328617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398712, 36.937244, 34.164497>,  <27.338598, 36.354843, 33.736374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398712, 36.937244, 34.164497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680437, 36.661743, 34.233276>,  <27.849472, 36.496441, 34.274544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680437, 36.661743, 34.233276>,  <27.398712, 36.937244, 34.164497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680437, 36.661743, 34.233276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709391, 0.673745, -0.206961,
		0.026693, 0.267745, 0.963120,
		0.704310, -0.688753, 0.171951,
		27.891729, 36.455116, 34.284863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790537, 37.071098, 34.698826>,  <27.398712, 36.937244, 34.164497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790537, 37.071098, 34.698826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030209, 36.847027, 34.470024>,  <28.174011, 36.712585, 34.332745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030209, 36.847027, 34.470024>,  <27.790537, 37.071098, 34.698826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030209, 36.847027, 34.470024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684250, 0.729243, 0.002591,
		0.415676, -0.392943, 0.820250,
		0.599180, -0.560179, -0.572000,
		28.209963, 36.678974, 34.298424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455431, 37.157070, 34.975864>,  <27.790537, 37.071098, 34.698826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455431, 37.157070, 34.975864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535641, 36.985493, 34.623547>,  <28.583767, 36.882545, 34.412155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535641, 36.985493, 34.623547>,  <28.455431, 37.157070, 34.975864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535641, 36.985493, 34.623547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802251, 0.587916, -0.103670,
		0.562302, -0.685829, 0.462013,
		0.200525, -0.428945, -0.880793,
		28.595798, 36.856808, 34.359310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192644, 37.186817, 34.906147>,  <28.455431, 37.157070, 34.975864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192644, 37.186817, 34.906147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060110, 37.127987, 34.533356>,  <28.980591, 37.092690, 34.309681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060110, 37.127987, 34.533356>,  <29.192644, 37.186817, 34.906147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060110, 37.127987, 34.533356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814429, 0.454128, -0.361211,
		0.476365, -0.878712, -0.030682,
		-0.331334, -0.147080, -0.931979,
		28.960711, 37.083862, 34.253761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770130, 37.138577, 34.583454>,  <29.192644, 37.186817, 34.906147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770130, 37.138577, 34.583454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527220, 37.215405, 34.275082>,  <29.381474, 37.261501, 34.090057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527220, 37.215405, 34.275082>,  <29.770130, 37.138577, 34.583454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527220, 37.215405, 34.275082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704808, 0.578090, -0.411166,
		0.366694, -0.793046, -0.486429,
		-0.607274, 0.192067, -0.770927,
		29.345037, 37.273026, 34.043804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155220, 37.073647, 33.932892>,  <29.770130, 37.138577, 34.583454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155220, 37.073647, 33.932892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832605, 37.276535, 33.811417>,  <29.639036, 37.398270, 33.738533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832605, 37.276535, 33.811417>,  <30.155220, 37.073647, 33.932892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832605, 37.276535, 33.811417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530249, 0.393528, -0.750981,
		-0.261405, -0.766722, -0.586349,
		-0.806538, 0.507221, -0.303683,
		29.590643, 37.428699, 33.720310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137472, 37.068890, 33.164814>,  <30.155220, 37.073647, 33.932892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137472, 37.068890, 33.164814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900473, 37.385925, 33.222424>,  <29.758272, 37.576149, 33.256989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900473, 37.385925, 33.222424>,  <30.137472, 37.068890, 33.164814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900473, 37.385925, 33.222424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466090, 0.483112, -0.741190,
		-0.657042, -0.372025, -0.655663,
		-0.592500, 0.792591, 0.144028,
		29.722723, 37.623703, 33.265633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876083, 37.341244, 32.518311>,  <30.137472, 37.068890, 33.164814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876083, 37.341244, 32.518311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.823652, 37.664242, 32.748363>,  <29.792192, 37.858040, 32.886395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.823652, 37.664242, 32.748363>,  <29.876083, 37.341244, 32.518311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823652, 37.664242, 32.748363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242279, 0.588639, -0.771236,
		-0.961311, 0.038249, -0.272796,
		-0.131079, 0.807491, 0.575132,
		29.784328, 37.906490, 32.920902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450241, 37.804600, 32.162350>,  <29.876083, 37.341244, 32.518311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450241, 37.804600, 32.162350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.641752, 38.043884, 32.419384>,  <29.756659, 38.187454, 32.573605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.641752, 38.043884, 32.419384>,  <29.450241, 37.804600, 32.162350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641752, 38.043884, 32.419384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101778, 0.689172, -0.717414,
		-0.872016, 0.408884, 0.269075,
		0.478778, 0.598211, 0.642585,
		29.785385, 38.223347, 32.612160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311466, 38.474483, 32.011021>,  <29.450241, 37.804600, 32.162350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311466, 38.474483, 32.011021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642059, 38.531796, 32.228790>,  <29.840416, 38.566185, 32.359451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642059, 38.531796, 32.228790>,  <29.311466, 38.474483, 32.011021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642059, 38.531796, 32.228790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251564, 0.771145, -0.584852,
		-0.503625, 0.620328, 0.601295,
		0.826485, 0.143282, 0.544420,
		29.890005, 38.574780, 32.392117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498146, 39.192108, 31.865273>,  <29.311466, 38.474483, 32.011021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498146, 39.192108, 31.865273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.823502, 39.043747, 32.044529>,  <30.018715, 38.954731, 32.152084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.823502, 39.043747, 32.044529>,  <29.498146, 39.192108, 31.865273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823502, 39.043747, 32.044529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571406, 0.653859, -0.495947,
		-0.109071, 0.659467, 0.743778,
		0.813387, -0.370906, 0.448141,
		30.067518, 38.932476, 32.178970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807280, 39.764984, 32.169994>,  <29.498146, 39.192108, 31.865273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807280, 39.764984, 32.169994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.085848, 39.481224, 32.126617>,  <30.252989, 39.310970, 32.100594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.085848, 39.481224, 32.126617>,  <29.807280, 39.764984, 32.169994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085848, 39.481224, 32.126617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617464, 0.669330, -0.413201,
		0.365704, 0.220805, 0.904160,
		0.696419, -0.709395, -0.108438,
		30.294773, 39.268406, 32.094086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394325, 40.130947, 32.177967>,  <29.807280, 39.764984, 32.169994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394325, 40.130947, 32.177967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.479092, 39.777367, 32.011246>,  <30.529951, 39.565220, 31.911215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.479092, 39.777367, 32.011246>,  <30.394325, 40.130947, 32.177967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479092, 39.777367, 32.011246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651203, 0.445730, -0.614215,
		0.728716, -0.141260, 0.670089,
		0.211915, -0.883952, -0.416799,
		30.542665, 39.512180, 31.886206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127596, 40.168018, 32.127159>,  <30.394325, 40.130947, 32.177967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127596, 40.168018, 32.127159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996181, 39.895107, 31.865913>,  <30.917332, 39.731361, 31.709166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996181, 39.895107, 31.865913>,  <31.127596, 40.168018, 32.127159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996181, 39.895107, 31.865913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629689, 0.357171, -0.689870,
		0.703957, -0.637909, 0.312278,
		-0.328537, -0.682277, -0.653117,
		30.897621, 39.690426, 31.669979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681505, 39.706367, 31.889925>,  <31.127596, 40.168018, 32.127159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681505, 39.706367, 31.889925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.400331, 39.703384, 31.605438>,  <31.231627, 39.701595, 31.434746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.400331, 39.703384, 31.605438>,  <31.681505, 39.706367, 31.889925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400331, 39.703384, 31.605438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650121, 0.398845, -0.646735,
		0.288489, -0.916988, -0.275512,
		-0.702935, -0.007460, -0.711215,
		31.189451, 39.701145, 31.392073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055489, 39.688999, 31.285551>,  <31.681505, 39.706367, 31.889925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055489, 39.688999, 31.285551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.699799, 39.758732, 31.116367>,  <31.486385, 39.800571, 31.014856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.699799, 39.758732, 31.116367>,  <32.055489, 39.688999, 31.285551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699799, 39.758732, 31.116367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456709, 0.391916, -0.798635,
		0.026535, -0.903332, -0.428120,
		-0.889221, 0.174334, -0.422960,
		31.433033, 39.811031, 30.989479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110195, 39.422768, 30.576595>,  <32.055489, 39.688999, 31.285551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110195, 39.422768, 30.576595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.803280, 39.679218, 30.570454>,  <31.619131, 39.833088, 30.566769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.803280, 39.679218, 30.570454>,  <32.110195, 39.422768, 30.576595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803280, 39.679218, 30.570454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397343, 0.456467, -0.796088,
		-0.503381, -0.616928, -0.604986,
		-0.767285, 0.641122, -0.015355,
		31.573093, 39.871555, 30.565847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803812, 39.472584, 29.843430>,  <32.110195, 39.422768, 30.576595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803812, 39.472584, 29.843430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.691702, 39.807644, 30.030954>,  <31.624435, 40.008682, 30.143469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.691702, 39.807644, 30.030954>,  <31.803812, 39.472584, 29.843430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691702, 39.807644, 30.030954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249624, 0.535185, -0.807010,
		-0.926895, -0.109158, -0.359096,
		-0.280274, 0.837652, 0.468812,
		31.607620, 40.058941, 30.171598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438704, 39.880829, 29.366590>,  <31.803812, 39.472584, 29.843430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438704, 39.880829, 29.366590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.545446, 40.150234, 29.642319>,  <31.609493, 40.311878, 29.807756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.545446, 40.150234, 29.642319>,  <31.438704, 39.880829, 29.366590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545446, 40.150234, 29.642319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217504, 0.654714, -0.723907,
		-0.938871, 0.343110, 0.028223,
		0.266858, 0.673517, 0.689320,
		31.625504, 40.352291, 29.849115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092152, 40.365646, 29.139711>,  <31.438704, 39.880829, 29.366590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092152, 40.365646, 29.139711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.376791, 40.518879, 29.375296>,  <31.547575, 40.610817, 29.516647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.376791, 40.518879, 29.375296>,  <31.092152, 40.365646, 29.139711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376791, 40.518879, 29.375296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237725, 0.657555, -0.714919,
		-0.661145, 0.648747, 0.376848,
		0.711599, 0.383079, 0.588962,
		31.590271, 40.633804, 29.551985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953960, 41.011841, 28.966700>,  <31.092152, 40.365646, 29.139711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953960, 41.011841, 28.966700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.324762, 41.001076, 29.116333>,  <31.547243, 40.994617, 29.206112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.324762, 41.001076, 29.116333>,  <30.953960, 41.011841, 28.966700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324762, 41.001076, 29.116333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288360, 0.688922, -0.665007,
		-0.239814, 0.724335, 0.646396,
		0.927005, -0.026917, 0.374083,
		31.602863, 40.993000, 29.228558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207478, 41.767921, 29.006962>,  <30.953960, 41.011841, 28.966700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207478, 41.767921, 29.006962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.510124, 41.507011, 28.988781>,  <31.691713, 41.350464, 28.977873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.510124, 41.507011, 28.988781>,  <31.207478, 41.767921, 29.006962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510124, 41.507011, 28.988781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508406, 0.630595, -0.586407,
		0.411160, 0.420579, 0.808740,
		0.756618, -0.652276, -0.045451,
		31.737110, 41.311329, 28.975145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.716442, 37.436333, 45.915401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.353088, 37.304722, 46.018612>,  <41.135075, 37.225754, 46.080540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.353088, 37.304722, 46.018612>,  <41.716442, 37.436333, 45.915401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353088, 37.304722, 46.018612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204902, 0.187645, 0.960627,
		-0.364490, 0.925490, -0.103036,
		-0.908385, -0.329026, 0.258029,
		41.080574, 37.206013, 46.096020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655643, 37.739594, 46.531891>,  <41.716442, 37.436333, 45.915401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655643, 37.739594, 46.531891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.355122, 37.475670, 46.537304>,  <41.174809, 37.317314, 46.540554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.355122, 37.475670, 46.537304>,  <41.655643, 37.739594, 46.531891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355122, 37.475670, 46.537304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026476, 0.050628, 0.998366,
		-0.659419, 0.749724, -0.055506,
		-0.751309, -0.659811, 0.013536,
		41.129730, 37.277725, 46.541363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280289, 37.940128, 47.047741>,  <41.655643, 37.739594, 46.531891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280289, 37.940128, 47.047741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.157921, 37.560970, 47.012180>,  <41.084499, 37.333473, 46.990845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.157921, 37.560970, 47.012180>,  <41.280289, 37.940128, 47.047741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157921, 37.560970, 47.012180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056143, -0.075256, 0.995583,
		-0.950400, 0.309560, -0.030195,
		-0.305921, -0.947897, -0.088903,
		41.066143, 37.276600, 46.985508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694748, 37.936089, 47.455627>,  <41.280289, 37.940128, 47.047741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694748, 37.936089, 47.455627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.814026, 37.556721, 47.412571>,  <40.885593, 37.329102, 47.386738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.814026, 37.556721, 47.412571>,  <40.694748, 37.936089, 47.455627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814026, 37.556721, 47.412571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281302, -0.195079, 0.939582,
		-0.912114, -0.249895, -0.324962,
		0.298190, -0.948418, -0.107638,
		40.903484, 37.272194, 47.380280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402008, 37.538063, 47.888985>,  <40.694748, 37.936089, 47.455627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402008, 37.538063, 47.888985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.694958, 37.270359, 47.838818>,  <40.870728, 37.109737, 47.808720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.694958, 37.270359, 47.838818>,  <40.402008, 37.538063, 47.888985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694958, 37.270359, 47.838818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145377, -0.333631, 0.931427,
		-0.665207, -0.663917, -0.341635,
		0.732370, -0.669258, -0.125416,
		40.914669, 37.069580, 47.801193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151913, 36.812157, 48.129902>,  <40.402008, 37.538063, 47.888985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151913, 36.812157, 48.129902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.551357, 36.825668, 48.146095>,  <40.791023, 36.833775, 48.155811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.551357, 36.825668, 48.146095>,  <40.151913, 36.812157, 48.129902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551357, 36.825668, 48.146095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028363, -0.302995, 0.952570,
		0.044444, -0.952393, -0.301615,
		0.998609, 0.033781, 0.040479,
		40.850941, 36.835804, 48.158237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428745, 36.207401, 48.458904>,  <40.151913, 36.812157, 48.129902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428745, 36.207401, 48.458904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.719685, 36.480225, 48.489273>,  <40.894249, 36.643917, 48.507496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.719685, 36.480225, 48.489273>,  <40.428745, 36.207401, 48.458904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719685, 36.480225, 48.489273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032250, -0.144477, 0.988982,
		0.685509, -0.716887, -0.127082,
		0.727350, 0.682055, 0.075921,
		40.937889, 36.684841, 48.512051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968719, 35.860519, 48.782475>,  <40.428745, 36.207401, 48.458904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968719, 35.860519, 48.782475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.999111, 36.255230, 48.839745>,  <41.017345, 36.492058, 48.874107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.999111, 36.255230, 48.839745>,  <40.968719, 35.860519, 48.782475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999111, 36.255230, 48.839745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108355, -0.134569, 0.984962,
		0.991204, -0.090354, 0.096697,
		0.075983, 0.986776, 0.143176,
		41.021908, 36.551262, 48.882698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391670, 35.898079, 49.407928>,  <40.968719, 35.860519, 48.782475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391670, 35.898079, 49.407928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.224751, 36.258564, 49.361160>,  <41.124599, 36.474857, 49.333099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.224751, 36.258564, 49.361160>,  <41.391670, 35.898079, 49.407928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224751, 36.258564, 49.361160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206171, 0.031421, 0.978011,
		0.885073, 0.432229, 0.172693,
		-0.417299, 0.901216, -0.116923,
		41.099560, 36.528931, 49.326084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507343, 36.305687, 50.074974>,  <41.391670, 35.898079, 49.407928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507343, 36.305687, 50.074974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.210625, 36.498844, 49.888832>,  <41.032593, 36.614738, 49.777149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.210625, 36.498844, 49.888832>,  <41.507343, 36.305687, 50.074974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210625, 36.498844, 49.888832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417826, 0.209974, 0.883930,
		0.524558, 0.850131, 0.046008,
		-0.741796, 0.482896, -0.465351,
		40.988087, 36.643711, 49.749226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350025, 36.884190, 50.517227>,  <41.507343, 36.305687, 50.074974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350025, 36.884190, 50.517227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.011532, 36.870541, 50.304543>,  <40.808434, 36.862350, 50.176929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.011532, 36.870541, 50.304543>,  <41.350025, 36.884190, 50.517227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011532, 36.870541, 50.304543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532459, 0.090258, 0.841630,
		0.019276, 0.995334, -0.094547,
		-0.846237, -0.034119, -0.531714,
		40.757660, 36.860306, 50.145027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942474, 37.447834, 50.794121>,  <41.350025, 36.884190, 50.517227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942474, 37.447834, 50.794121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.676399, 37.207844, 50.616333>,  <40.516754, 37.063850, 50.509663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.676399, 37.207844, 50.616333>,  <40.942474, 37.447834, 50.794121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676399, 37.207844, 50.616333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679011, 0.238457, 0.694321,
		-0.310592, 0.763652, -0.566011,
		-0.665190, -0.599978, -0.444465,
		40.476841, 37.027851, 50.482994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233589, 37.884197, 50.719326>,  <40.942474, 37.447834, 50.794121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233589, 37.884197, 50.719326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.167747, 37.489887, 50.732910>,  <40.128242, 37.253300, 50.741062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.167747, 37.489887, 50.732910>,  <40.233589, 37.884197, 50.719326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167747, 37.489887, 50.732910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682195, 0.138644, 0.717905,
		-0.712402, 0.095002, -0.695312,
		-0.164603, -0.985775, 0.033960,
		40.118366, 37.194153, 50.743099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372597, 38.566513, 50.388599>,  <40.233589, 37.884197, 50.719326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372597, 38.566513, 50.388599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.019611, 38.671585, 50.544685>,  <39.807819, 38.734627, 50.638336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.019611, 38.671585, 50.544685>,  <40.372597, 38.566513, 50.388599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019611, 38.671585, 50.544685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386634, 0.067432, -0.919765,
		-0.267917, -0.962524, 0.042055,
		-0.882459, 0.262681, 0.390211,
		39.754875, 38.750389, 50.661747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832016, 38.235401, 50.139935>,  <40.372597, 38.566513, 50.388599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832016, 38.235401, 50.139935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.697838, 38.596977, 50.246052>,  <39.617332, 38.813923, 50.309723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.697838, 38.596977, 50.246052>,  <39.832016, 38.235401, 50.139935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697838, 38.596977, 50.246052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340845, 0.146074, -0.928702,
		-0.878239, -0.401947, 0.259103,
		-0.335441, 0.903937, 0.265290,
		39.597206, 38.868156, 50.325638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183960, 38.260132, 49.859619>,  <39.832016, 38.235401, 50.139935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183960, 38.260132, 49.859619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263302, 38.641357, 49.951122>,  <39.310905, 38.870090, 50.006023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263302, 38.641357, 49.951122>,  <39.183960, 38.260132, 49.859619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263302, 38.641357, 49.951122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604324, 0.302673, -0.737008,
		-0.771653, 0.007943, 0.635994,
		0.198352, 0.953062, 0.228759,
		39.322807, 38.927277, 50.019749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439083, 38.745663, 49.918758>,  <39.183960, 38.260132, 49.859619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439083, 38.745663, 49.918758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.750565, 38.988091, 49.853897>,  <38.937454, 39.133549, 49.814980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.750565, 38.988091, 49.853897>,  <38.439083, 38.745663, 49.918758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750565, 38.988091, 49.853897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451154, 0.361332, -0.816027,
		-0.435981, 0.708601, 0.554803,
		0.778705, 0.606073, -0.162154,
		38.984177, 39.169914, 49.805252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176716, 39.332211, 49.751114>,  <38.439083, 38.745663, 49.918758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176716, 39.332211, 49.751114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.550358, 39.365692, 49.612297>,  <38.774544, 39.385780, 49.529007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.550358, 39.365692, 49.612297>,  <38.176716, 39.332211, 49.751114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550358, 39.365692, 49.612297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354793, 0.325407, -0.876489,
		0.039568, 0.941862, 0.333662,
		0.934107, 0.083700, -0.347042,
		38.830589, 39.390800, 49.508186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092766, 39.985039, 49.357883>,  <38.176716, 39.332211, 49.751114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092766, 39.985039, 49.357883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400558, 39.756027, 49.244667>,  <38.585232, 39.618618, 49.176739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400558, 39.756027, 49.244667>,  <38.092766, 39.985039, 49.357883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400558, 39.756027, 49.244667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250094, 0.137666, -0.958385,
		0.587671, 0.808242, -0.037255,
		0.769478, -0.572532, -0.283039,
		38.631401, 39.584267, 49.159756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187611, 40.267967, 48.727863>,  <38.092766, 39.985039, 49.357883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187611, 40.267967, 48.727863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.422634, 39.945671, 48.698040>,  <38.563648, 39.752293, 48.680145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.422634, 39.945671, 48.698040>,  <38.187611, 40.267967, 48.727863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422634, 39.945671, 48.698040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098260, 0.020415, -0.994951,
		0.803194, 0.591918, -0.067177,
		0.587558, -0.805740, -0.074559,
		38.598900, 39.703949, 48.675671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748947, 40.387402, 48.339638>,  <38.187611, 40.267967, 48.727863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748947, 40.387402, 48.339638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672741, 39.995667, 48.312481>,  <38.627018, 39.760628, 48.296188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672741, 39.995667, 48.312481>,  <38.748947, 40.387402, 48.339638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672741, 39.995667, 48.312481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168715, 0.100791, -0.980498,
		0.967077, -0.175349, -0.184430,
		-0.190518, -0.979333, -0.067889,
		38.615585, 39.701866, 48.292114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018669, 40.243763, 47.677498>,  <38.748947, 40.387402, 48.339638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018669, 40.243763, 47.677498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811085, 39.914196, 47.768566>,  <38.686535, 39.716454, 47.823208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811085, 39.914196, 47.768566>,  <39.018669, 40.243763, 47.677498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811085, 39.914196, 47.768566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206567, -0.137575, -0.968712,
		0.829465, -0.549751, -0.098800,
		-0.518958, -0.823922, 0.227675,
		38.655396, 39.667019, 47.836868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301083, 39.659336, 47.291698>,  <39.018669, 40.243763, 47.677498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301083, 39.659336, 47.291698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.919163, 39.562546, 47.360760>,  <38.690010, 39.504471, 47.402195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.919163, 39.562546, 47.360760>,  <39.301083, 39.659336, 47.291698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919163, 39.562546, 47.360760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198621, 0.087195, -0.976190,
		0.221162, -0.966356, -0.131315,
		-0.954797, -0.241978, 0.172654,
		38.632725, 39.489952, 47.412556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095566, 39.195721, 46.718643>,  <39.301083, 39.659336, 47.291698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095566, 39.195721, 46.718643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.749432, 39.304554, 46.887005>,  <38.541752, 39.369854, 46.988022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.749432, 39.304554, 46.887005>,  <39.095566, 39.195721, 46.718643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749432, 39.304554, 46.887005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466793, -0.131781, -0.874493,
		-0.182468, -0.953207, 0.241042,
		-0.865338, 0.272084, 0.420904,
		38.489830, 39.386181, 47.013275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598122, 38.747234, 46.550220>,  <39.095566, 39.195721, 46.718643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598122, 38.747234, 46.550220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366283, 39.058693, 46.646374>,  <38.227180, 39.245567, 46.704067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366283, 39.058693, 46.646374>,  <38.598122, 38.747234, 46.550220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366283, 39.058693, 46.646374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557911, -0.164138, -0.813507,
		-0.593977, -0.605616, 0.529547,
		-0.579592, 0.778645, 0.240386,
		38.192406, 39.292286, 46.718491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819252, 38.530376, 46.547470>,  <38.598122, 38.747234, 46.550220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819252, 38.530376, 46.547470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.889481, 38.919548, 46.487366>,  <37.931618, 39.153053, 46.451305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.889481, 38.919548, 46.487366>,  <37.819252, 38.530376, 46.547470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889481, 38.919548, 46.487366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467348, -0.051962, -0.882545,
		-0.866464, 0.225176, 0.445574,
		0.175575, 0.972932, -0.150258,
		37.942154, 39.211426, 46.442287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535645, 38.592068, 45.956535>,  <37.819252, 38.530376, 46.547470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535645, 38.592068, 45.956535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695271, 38.958820, 45.959957>,  <37.791046, 39.178871, 45.962009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695271, 38.958820, 45.959957>,  <37.535645, 38.592068, 45.956535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695271, 38.958820, 45.959957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190303, 0.091944, -0.977410,
		-0.896956, 0.388425, 0.211177,
		0.399067, 0.916882, 0.008551,
		37.814991, 39.233887, 45.962524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103401, 39.137115, 45.585804>,  <37.535645, 38.592068, 45.956535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103401, 39.137115, 45.585804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479290, 39.269691, 45.552177>,  <37.704823, 39.349236, 45.532001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479290, 39.269691, 45.552177>,  <37.103401, 39.137115, 45.585804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479290, 39.269691, 45.552177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158426, 0.204158, -0.966034,
		-0.303015, 0.921124, 0.244360,
		0.939725, 0.331436, -0.084067,
		37.761208, 39.369122, 45.526958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603455, 39.542854, 45.594341>,  <37.103401, 39.137115, 45.585804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603455, 39.542854, 45.594341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225758, 39.415340, 45.561390>,  <35.999142, 39.338833, 45.541618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225758, 39.415340, 45.561390>,  <36.603455, 39.542854, 45.594341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225758, 39.415340, 45.561390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045039, -0.122796, 0.991409,
		-0.326164, 0.939838, 0.101591,
		-0.944239, -0.318787, -0.082381,
		35.942486, 39.319706, 45.536674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388100, 39.818604, 46.147083>,  <36.603455, 39.542854, 45.594341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388100, 39.818604, 46.147083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106426, 39.555122, 46.041073>,  <35.937424, 39.397034, 45.977467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106426, 39.555122, 46.041073>,  <36.388100, 39.818604, 46.147083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106426, 39.555122, 46.041073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046055, -0.330107, 0.942819,
		-0.708525, 0.676121, 0.202119,
		-0.704181, -0.658703, -0.265028,
		35.895172, 39.357510, 45.961563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902740, 39.970413, 46.598946>,  <36.388100, 39.818604, 46.147083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902740, 39.970413, 46.598946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.816669, 39.601414, 46.470768>,  <35.765026, 39.380013, 46.393860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.816669, 39.601414, 46.470768>,  <35.902740, 39.970413, 46.598946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816669, 39.601414, 46.470768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080141, -0.343710, 0.935650,
		-0.973280, 0.175653, 0.147890,
		-0.215181, -0.922502, -0.320449,
		35.752117, 39.324661, 46.374634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313820, 39.671524, 46.993179>,  <35.902740, 39.970413, 46.598946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313820, 39.671524, 46.993179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495029, 39.348911, 46.841248>,  <35.603756, 39.155342, 46.750088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495029, 39.348911, 46.841248>,  <35.313820, 39.671524, 46.993179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495029, 39.348911, 46.841248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129214, -0.362155, 0.923118,
		-0.882086, -0.467272, -0.059848,
		0.453022, -0.806536, -0.379830,
		35.630936, 39.106949, 46.727299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987297, 39.046745, 47.265518>,  <35.313820, 39.671524, 46.993179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987297, 39.046745, 47.265518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354389, 38.929306, 47.158512>,  <35.574646, 38.858841, 47.094307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354389, 38.929306, 47.158512>,  <34.987297, 39.046745, 47.265518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354389, 38.929306, 47.158512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113504, -0.451577, 0.884983,
		-0.380629, -0.842544, -0.381104,
		0.917735, -0.293594, -0.267515,
		35.629711, 38.841228, 47.078259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071655, 38.443718, 47.720879>,  <34.987297, 39.046745, 47.265518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071655, 38.443718, 47.720879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.443279, 38.516685, 47.592152>,  <35.666252, 38.560467, 47.514915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.443279, 38.516685, 47.592152>,  <35.071655, 38.443718, 47.720879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443279, 38.516685, 47.592152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366413, -0.334203, 0.868360,
		0.050854, -0.924679, -0.377337,
		0.929061, 0.182421, -0.321819,
		35.721996, 38.571411, 47.495605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450325, 37.789818, 47.919724>,  <35.071655, 38.443718, 47.720879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450325, 37.789818, 47.919724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677116, 38.118702, 47.899662>,  <35.813190, 38.316032, 47.887627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.677116, 38.118702, 47.899662>,  <35.450325, 37.789818, 47.919724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677116, 38.118702, 47.899662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186127, -0.068566, 0.980130,
		0.802432, -0.565043, -0.191910,
		0.566974, 0.822207, -0.050150,
		35.847210, 38.365364, 47.884617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673370, 37.061199, 47.924896>,  <35.450325, 37.789818, 47.919724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673370, 37.061199, 47.924896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303608, 36.942646, 48.020924>,  <35.081753, 36.871513, 48.078541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303608, 36.942646, 48.020924>,  <35.673370, 37.061199, 47.924896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303608, 36.942646, 48.020924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226075, -0.081169, -0.970722,
		0.307195, -0.951613, 0.008027,
		-0.924404, -0.296386, 0.240070,
		35.026287, 36.853729, 48.092945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506100, 36.526264, 47.384724>,  <35.673370, 37.061199, 47.924896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506100, 36.526264, 47.384724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157352, 36.674973, 47.512245>,  <34.948105, 36.764198, 47.588760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157352, 36.674973, 47.512245>,  <35.506100, 36.526264, 47.384724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157352, 36.674973, 47.512245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331291, 0.031722, -0.942995,
		-0.360688, -0.927784, 0.095506,
		-0.871866, 0.371768, 0.318808,
		34.895794, 36.786503, 47.607887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992485, 36.068302, 47.100349>,  <35.506100, 36.526264, 47.384724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992485, 36.068302, 47.100349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850838, 36.436005, 47.169121>,  <34.765850, 36.656628, 47.210384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850838, 36.436005, 47.169121>,  <34.992485, 36.068302, 47.100349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850838, 36.436005, 47.169121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366926, 0.032533, -0.929681,
		-0.860211, -0.392306, 0.325780,
		-0.354121, 0.919259, 0.171932,
		34.744602, 36.711781, 47.220699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500404, 36.054039, 46.711609>,  <34.992485, 36.068302, 47.100349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500404, 36.054039, 46.711609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.517170, 36.441555, 46.809338>,  <34.527229, 36.674065, 46.867973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.517170, 36.441555, 46.809338>,  <34.500404, 36.054039, 46.711609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517170, 36.441555, 46.809338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489925, 0.233043, -0.840039,
		-0.870757, -0.084491, 0.484401,
		0.041911, 0.968789, 0.244317,
		34.529743, 36.732193, 46.882633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819546, 36.190041, 46.507603>,  <34.500404, 36.054039, 46.711609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819546, 36.190041, 46.507603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036041, 36.525967, 46.524441>,  <34.165939, 36.727524, 46.534542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036041, 36.525967, 46.524441>,  <33.819546, 36.190041, 46.507603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036041, 36.525967, 46.524441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435101, 0.322541, -0.840628,
		-0.719548, 0.436665, 0.539976,
		0.541237, 0.839816, 0.042090,
		34.198414, 36.777912, 46.537067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355221, 36.746166, 46.293159>,  <33.819546, 36.190041, 46.507603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355221, 36.746166, 46.293159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724754, 36.891003, 46.243484>,  <33.946472, 36.977905, 46.213680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724754, 36.891003, 46.243484>,  <33.355221, 36.746166, 46.293159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724754, 36.891003, 46.243484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242405, 0.302278, -0.921883,
		-0.296268, 0.881769, 0.367027,
		0.923832, 0.362093, -0.124190,
		34.001904, 36.999630, 46.206226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220055, 37.394032, 46.098091>,  <33.355221, 36.746166, 46.293159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220055, 37.394032, 46.098091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592422, 37.322041, 45.970974>,  <33.815845, 37.278847, 45.894703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592422, 37.322041, 45.970974>,  <33.220055, 37.394032, 46.098091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592422, 37.322041, 45.970974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218996, 0.421292, -0.880088,
		0.292277, 0.888889, 0.352776,
		0.930922, -0.179973, -0.317797,
		33.871700, 37.268047, 45.875633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.799633, 34.679749, 50.448807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.035343, 34.959122, 50.286350>,  <38.176769, 35.126743, 50.188877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.035343, 34.959122, 50.286350>,  <37.799633, 34.679749, 50.448807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035343, 34.959122, 50.286350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204825, -0.357128, -0.911321,
		-0.781538, 0.620207, -0.067391,
		0.589275, 0.698429, -0.406142,
		38.212124, 35.168652, 50.164509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344246, 35.016541, 49.856133>,  <37.799633, 34.679749, 50.448807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344246, 35.016541, 49.856133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.734005, 35.041496, 49.769726>,  <37.967861, 35.056469, 49.717880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.734005, 35.041496, 49.769726>,  <37.344246, 35.016541, 49.856133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734005, 35.041496, 49.769726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198291, -0.214504, -0.956383,
		-0.106001, 0.974729, -0.196641,
		0.974395, 0.062385, -0.216017,
		38.026325, 35.060211, 49.704922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337288, 35.138695, 49.107742>,  <37.344246, 35.016541, 49.856133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337288, 35.138695, 49.107742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.720104, 35.044144, 49.174919>,  <37.949795, 34.987411, 49.215225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.720104, 35.044144, 49.174919>,  <37.337288, 35.138695, 49.107742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720104, 35.044144, 49.174919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062146, -0.398517, -0.915053,
		0.283227, 0.886177, -0.366705,
		0.957037, -0.236378, 0.167943,
		38.007214, 34.973228, 49.225304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616890, 35.416977, 48.520878>,  <37.337288, 35.138695, 49.107742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616890, 35.416977, 48.520878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.854572, 35.143581, 48.690472>,  <37.997181, 34.979546, 48.792229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.854572, 35.143581, 48.690472>,  <37.616890, 35.416977, 48.520878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854572, 35.143581, 48.690472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163814, -0.413244, -0.895764,
		0.787451, 0.601727, -0.133589,
		0.594210, -0.683487, 0.423981,
		38.032837, 34.938534, 48.817665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235611, 35.481632, 48.246273>,  <37.616890, 35.416977, 48.520878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235611, 35.481632, 48.246273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.218307, 35.099957, 48.364704>,  <38.207924, 34.870953, 48.435760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.218307, 35.099957, 48.364704>,  <38.235611, 35.481632, 48.246273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218307, 35.099957, 48.364704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003235, -0.296216, -0.955115,
		0.999059, -0.042274, 0.009726,
		-0.043257, -0.954185, 0.296074,
		38.205330, 34.813702, 48.453526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703152, 35.060070, 47.863113>,  <38.235611, 35.481632, 48.246273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703152, 35.060070, 47.863113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.439754, 34.797962, 48.011169>,  <38.281715, 34.640697, 48.100002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.439754, 34.797962, 48.011169>,  <38.703152, 35.060070, 47.863113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439754, 34.797962, 48.011169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214334, -0.308165, -0.926874,
		0.721419, -0.689674, 0.062478,
		-0.658495, -0.655273, 0.370137,
		38.242207, 34.601379, 48.122211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883316, 34.389202, 47.689758>,  <38.703152, 35.060070, 47.863113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883316, 34.389202, 47.689758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.490116, 34.364742, 47.759014>,  <38.254196, 34.350067, 47.800568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.490116, 34.364742, 47.759014>,  <38.883316, 34.389202, 47.689758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490116, 34.364742, 47.759014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158350, -0.195055, -0.967925,
		0.092965, -0.978884, 0.182055,
		-0.982997, -0.061155, 0.173140,
		38.195217, 34.346397, 47.810955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680866, 33.884338, 47.258980>,  <38.883316, 34.389202, 47.689758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680866, 33.884338, 47.258980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.326214, 34.059898, 47.317287>,  <38.113422, 34.165234, 47.352272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.326214, 34.059898, 47.317287>,  <38.680866, 33.884338, 47.258980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326214, 34.059898, 47.317287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284482, -0.269075, -0.920146,
		-0.364633, -0.857299, 0.363430,
		-0.886630, 0.438904, 0.145772,
		38.060226, 34.191570, 47.361019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194386, 33.341812, 47.099922>,  <38.680866, 33.884338, 47.258980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194386, 33.341812, 47.099922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.973888, 33.674824, 47.077927>,  <37.841591, 33.874630, 47.064728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.973888, 33.674824, 47.077927>,  <38.194386, 33.341812, 47.099922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973888, 33.674824, 47.077927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223100, -0.210590, -0.951777,
		-0.803967, -0.512387, 0.301823,
		-0.551239, 0.832533, -0.054994,
		37.808517, 33.924583, 47.061428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496300, 33.150806, 46.913254>,  <38.194386, 33.341812, 47.099922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496300, 33.150806, 46.913254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.544579, 33.532619, 46.804218>,  <37.573544, 33.761707, 46.738796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.544579, 33.532619, 46.804218>,  <37.496300, 33.150806, 46.913254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544579, 33.532619, 46.804218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461923, -0.189055, -0.866536,
		-0.878669, 0.230501, 0.418102,
		0.120693, 0.954530, -0.272591,
		37.580788, 33.818977, 46.722443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936089, 33.198666, 46.483765>,  <37.496300, 33.150806, 46.913254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936089, 33.198666, 46.483765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.160698, 33.516693, 46.392059>,  <37.295464, 33.707508, 46.337036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.160698, 33.516693, 46.392059>,  <36.936089, 33.198666, 46.483765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160698, 33.516693, 46.392059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297840, -0.064295, -0.952448,
		-0.771999, 0.603106, 0.200699,
		0.561524, 0.795065, -0.229265,
		37.329155, 33.755211, 46.323280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484253, 33.640743, 46.063736>,  <36.936089, 33.198666, 46.483765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484253, 33.640743, 46.063736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863293, 33.752567, 46.001888>,  <37.090717, 33.819660, 45.964779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863293, 33.752567, 46.001888>,  <36.484253, 33.640743, 46.063736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863293, 33.752567, 46.001888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171781, 0.037803, -0.984410,
		-0.269354, 0.959385, 0.083844,
		0.947597, 0.279558, -0.154622,
		37.147572, 33.836433, 45.955502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884315, 34.159660, 46.121357>,  <36.484253, 33.640743, 46.063736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884315, 34.159660, 46.121357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.536640, 33.962032, 46.113243>,  <35.328037, 33.843456, 46.108376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.536640, 33.962032, 46.113243>,  <35.884315, 34.159660, 46.121357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536640, 33.962032, 46.113243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032805, -0.098551, 0.994591,
		-0.493396, 0.863819, 0.101867,
		-0.869186, -0.494069, -0.020287,
		35.275883, 33.813812, 46.107159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264057, 34.474964, 46.488873>,  <35.884315, 34.159660, 46.121357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264057, 34.474964, 46.488873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.170151, 34.086838, 46.465652>,  <35.113808, 33.853962, 46.451721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.170151, 34.086838, 46.465652>,  <35.264057, 34.474964, 46.488873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170151, 34.086838, 46.465652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286129, 0.011909, 0.958117,
		-0.928985, 0.241548, -0.280431,
		-0.234771, -0.970316, -0.058051,
		35.099720, 33.795742, 46.448238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659260, 34.442661, 46.940052>,  <35.264057, 34.474964, 46.488873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659260, 34.442661, 46.940052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.797764, 34.067802, 46.922806>,  <34.880867, 33.842888, 46.912457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.797764, 34.067802, 46.922806>,  <34.659260, 34.442661, 46.940052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797764, 34.067802, 46.922806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290792, -0.150912, 0.944810,
		-0.891933, -0.314611, -0.324770,
		0.346259, -0.937147, -0.043117,
		34.901642, 33.786659, 46.909870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168835, 33.988110, 47.282944>,  <34.659260, 34.442661, 46.940052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168835, 33.988110, 47.282944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.497650, 33.760342, 47.281418>,  <34.694939, 33.623680, 47.280502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.497650, 33.760342, 47.281418>,  <34.168835, 33.988110, 47.282944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497650, 33.760342, 47.281418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303567, -0.443891, 0.843094,
		-0.481771, -0.691896, -0.537752,
		0.822037, -0.569422, -0.003817,
		34.744263, 33.589516, 47.280273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952744, 33.377899, 47.611946>,  <34.168835, 33.988110, 47.282944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952744, 33.377899, 47.611946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352371, 33.394348, 47.617035>,  <34.592148, 33.404217, 47.620087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352371, 33.394348, 47.617035>,  <33.952744, 33.377899, 47.611946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352371, 33.394348, 47.617035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001392, -0.264415, 0.964408,
		0.043026, -0.963532, -0.264112,
		0.999073, 0.041127, 0.012718,
		34.652092, 33.406685, 47.620850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090435, 32.993805, 48.223171>,  <33.952744, 33.377899, 47.611946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090435, 32.993805, 48.223171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.451958, 33.141621, 48.136848>,  <34.668873, 33.230309, 48.085056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.451958, 33.141621, 48.136848>,  <34.090435, 32.993805, 48.223171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451958, 33.141621, 48.136848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270413, -0.102331, 0.957291,
		0.331671, -0.923564, -0.192415,
		0.903809, 0.369537, -0.215804,
		34.723099, 33.252483, 48.072109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634090, 32.575794, 48.552395>,  <34.090435, 32.993805, 48.223171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634090, 32.575794, 48.552395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.767963, 32.947552, 48.490154>,  <34.848286, 33.170609, 48.452808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.767963, 32.947552, 48.490154>,  <34.634090, 32.575794, 48.552395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767963, 32.947552, 48.490154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355541, 0.028377, 0.934230,
		0.872685, -0.367992, -0.320941,
		0.334682, 0.929396, -0.155600,
		34.868366, 33.226372, 48.443474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186878, 32.602840, 48.975716>,  <34.634090, 32.575794, 48.552395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186878, 32.602840, 48.975716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.133102, 32.993515, 48.908768>,  <35.100838, 33.227921, 48.868599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.133102, 32.993515, 48.908768>,  <35.186878, 32.602840, 48.975716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133102, 32.993515, 48.908768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334926, 0.203748, 0.919952,
		0.932605, 0.067619, -0.354508,
		-0.134436, 0.976685, -0.167369,
		35.092770, 33.286522, 48.858559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850529, 32.889175, 49.193657>,  <35.186878, 32.602840, 48.975716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850529, 32.889175, 49.193657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.573086, 33.177086, 49.205189>,  <35.406620, 33.349831, 49.212109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.573086, 33.177086, 49.205189>,  <35.850529, 32.889175, 49.193657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573086, 33.177086, 49.205189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308371, 0.260516, 0.914898,
		0.651010, 0.643472, -0.402653,
		-0.693609, 0.719774, 0.028829,
		35.365002, 33.393017, 49.213837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177326, 33.546089, 49.381962>,  <35.850529, 32.889175, 49.193657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177326, 33.546089, 49.381962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.788170, 33.568474, 49.471714>,  <35.554676, 33.581905, 49.525566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.788170, 33.568474, 49.471714>,  <36.177326, 33.546089, 49.381962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788170, 33.568474, 49.471714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228839, 0.372891, 0.899214,
		-0.033350, 0.926186, -0.375589,
		-0.972893, 0.055961, 0.224384,
		35.496304, 33.585262, 49.539028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136543, 34.157970, 49.798492>,  <36.177326, 33.546089, 49.381962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136543, 34.157970, 49.798492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.783321, 33.980095, 49.858440>,  <35.571388, 33.873371, 49.894409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.783321, 33.980095, 49.858440>,  <36.136543, 34.157970, 49.798492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783321, 33.980095, 49.858440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053764, 0.413150, 0.909074,
		-0.466171, 0.794709, -0.388745,
		-0.883060, -0.444685, 0.149872,
		35.518402, 33.846691, 49.903400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796669, 34.654648, 50.087883>,  <36.136543, 34.157970, 49.798492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796669, 34.654648, 50.087883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.629616, 34.306152, 50.191059>,  <35.529385, 34.097057, 50.252964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.629616, 34.306152, 50.191059>,  <35.796669, 34.654648, 50.087883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629616, 34.306152, 50.191059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255583, 0.385058, 0.886797,
		-0.871930, 0.304429, -0.383485,
		-0.417630, -0.871237, 0.257937,
		35.504326, 34.044781, 50.268440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314133, 34.870857, 50.468174>,  <35.796669, 34.654648, 50.087883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314133, 34.870857, 50.468174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358364, 34.487450, 50.573254>,  <35.384903, 34.257404, 50.636303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358364, 34.487450, 50.573254>,  <35.314133, 34.870857, 50.468174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358364, 34.487450, 50.573254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306825, 0.218487, 0.926349,
		-0.945321, -0.183035, -0.269939,
		0.110576, -0.958521, 0.262700,
		35.391537, 34.199894, 50.652065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821323, 34.804718, 51.008156>,  <35.314133, 34.870857, 50.468174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821323, 34.804718, 51.008156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032516, 34.466106, 51.035370>,  <35.159233, 34.262939, 51.051697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032516, 34.466106, 51.035370>,  <34.821323, 34.804718, 51.008156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032516, 34.466106, 51.035370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052234, 0.112330, 0.992297,
		-0.847647, -0.520362, 0.103526,
		0.527983, -0.846525, 0.068036,
		35.190910, 34.212151, 51.055782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443058, 35.431053, 50.644779>,  <34.821323, 34.804718, 51.008156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443058, 35.431053, 50.644779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.387768, 35.816322, 50.737026>,  <34.354595, 36.047485, 50.792374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.387768, 35.816322, 50.737026>,  <34.443058, 35.431053, 50.644779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387768, 35.816322, 50.737026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218004, 0.197551, -0.955745,
		-0.966110, -0.182381, 0.182670,
		-0.138223, 0.963178, 0.230616,
		34.346302, 36.105274, 50.806210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867535, 35.733532, 50.258949>,  <34.443058, 35.431053, 50.644779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867535, 35.733532, 50.258949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.088760, 36.053516, 50.352051>,  <34.221497, 36.245506, 50.407913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.088760, 36.053516, 50.352051>,  <33.867535, 35.733532, 50.258949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088760, 36.053516, 50.352051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119043, 0.352387, -0.928252,
		-0.824588, 0.485678, 0.290124,
		0.553067, 0.799963, 0.232757,
		34.254681, 36.293507, 50.421879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582554, 36.385731, 49.997234>,  <33.867535, 35.733532, 50.258949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582554, 36.385731, 49.997234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.973591, 36.463684, 50.029087>,  <34.208214, 36.510456, 50.048199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.973591, 36.463684, 50.029087>,  <33.582554, 36.385731, 49.997234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973591, 36.463684, 50.029087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011422, 0.328610, -0.944397,
		-0.210217, 0.924140, 0.319020,
		0.977588, 0.194884, 0.079635,
		34.266869, 36.522148, 50.052979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616798, 36.889622, 49.641010>,  <33.582554, 36.385731, 49.997234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616798, 36.889622, 49.641010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998024, 36.769749, 49.658234>,  <34.226761, 36.697826, 49.668568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.998024, 36.769749, 49.658234>,  <33.616798, 36.889622, 49.641010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998024, 36.769749, 49.658234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141769, 0.316082, -0.938080,
		0.267513, 0.900158, 0.343732,
		0.953068, -0.299679, 0.043058,
		34.283943, 36.679844, 49.671150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108627, 37.450619, 49.382469>,  <33.616798, 36.889622, 49.641010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108627, 37.450619, 49.382469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.356361, 37.136917, 49.367722>,  <34.505001, 36.948696, 49.358871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.356361, 37.136917, 49.367722>,  <34.108627, 37.450619, 49.382469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356361, 37.136917, 49.367722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446016, 0.390097, -0.805539,
		0.646135, 0.482455, 0.591394,
		0.619337, -0.784258, -0.036872,
		34.542164, 36.901638, 49.356659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756332, 37.681255, 49.040504>,  <34.108627, 37.450619, 49.382469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756332, 37.681255, 49.040504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798229, 37.284611, 49.010208>,  <34.823368, 37.046623, 48.992031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798229, 37.284611, 49.010208>,  <34.756332, 37.681255, 49.040504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798229, 37.284611, 49.010208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318747, 0.105620, -0.941936,
		0.942034, 0.074521, 0.327137,
		0.104746, -0.991610, -0.075744,
		34.829655, 36.987129, 48.987484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475719, 37.506458, 48.818481>,  <34.756332, 37.681255, 49.040504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475719, 37.506458, 48.818481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.207321, 37.225300, 48.724068>,  <35.046284, 37.056606, 48.667419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.207321, 37.225300, 48.724068>,  <35.475719, 37.506458, 48.818481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207321, 37.225300, 48.724068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194064, 0.140751, -0.970839,
		0.715618, -0.697230, 0.041964,
		-0.670991, -0.702893, -0.236031,
		35.006023, 37.014431, 48.653259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116386, 37.544601, 48.261883>,  <35.475719, 37.506458, 48.818481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116386, 37.544601, 48.261883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.198708, 37.933048, 48.213596>,  <36.248100, 38.166119, 48.184624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.198708, 37.933048, 48.213596>,  <36.116386, 37.544601, 48.261883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198708, 37.933048, 48.213596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487240, 0.005295, 0.873252,
		0.848672, -0.238531, -0.472079,
		0.205798, 0.971120, -0.120715,
		36.260448, 38.224384, 48.177383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813488, 37.708466, 48.390701>,  <36.116386, 37.544601, 48.261883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813488, 37.708466, 48.390701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.658592, 38.069492, 48.465984>,  <36.565655, 38.286106, 48.511154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.658592, 38.069492, 48.465984>,  <36.813488, 37.708466, 48.390701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658592, 38.069492, 48.465984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486594, 0.026683, 0.873221,
		0.783115, 0.429730, -0.449514,
		-0.387243, 0.902563, 0.188208,
		36.542419, 38.340260, 48.522446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321186, 38.078396, 48.639095>,  <36.813488, 37.708466, 48.390701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321186, 38.078396, 48.639095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.004326, 38.267059, 48.794033>,  <36.814209, 38.380257, 48.886997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.004326, 38.267059, 48.794033>,  <37.321186, 38.078396, 48.639095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004326, 38.267059, 48.794033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455224, 0.033859, 0.889733,
		0.406532, 0.881132, -0.241530,
		-0.792151, 0.471656, 0.387347,
		36.766682, 38.408558, 48.910236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628944, 38.680325, 48.990349>,  <37.321186, 38.078396, 48.639095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628944, 38.680325, 48.990349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.255356, 38.610435, 49.115032>,  <37.031200, 38.568501, 49.189842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.255356, 38.610435, 49.115032>,  <37.628944, 38.680325, 48.990349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255356, 38.610435, 49.115032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256781, 0.278466, 0.925484,
		-0.248507, 0.944419, -0.215214,
		-0.933974, -0.174726, 0.311710,
		36.975163, 38.558018, 49.208546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463261, 39.200211, 49.469879>,  <37.628944, 38.680325, 48.990349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463261, 39.200211, 49.469879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.212688, 38.895882, 49.537697>,  <37.062347, 38.713284, 49.578388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.212688, 38.895882, 49.537697>,  <37.463261, 39.200211, 49.469879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212688, 38.895882, 49.537697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253765, 0.006606, 0.967243,
		-0.737016, 0.648932, 0.188930,
		-0.626427, -0.760818, 0.169545,
		37.024761, 38.667637, 49.588562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246223, 39.379414, 50.151184>,  <37.463261, 39.200211, 49.469879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246223, 39.379414, 50.151184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.113838, 39.002502, 50.130875>,  <37.034409, 38.776356, 50.118690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.113838, 39.002502, 50.130875>,  <37.246223, 39.379414, 50.151184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113838, 39.002502, 50.130875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202482, -0.123463, 0.971472,
		-0.921665, 0.311239, 0.231656,
		-0.330961, -0.942278, -0.050771,
		37.014549, 38.719818, 50.115643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828873, 39.207077, 50.833633>,  <37.246223, 39.379414, 50.151184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828873, 39.207077, 50.833633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.948826, 38.858154, 50.679153>,  <37.020798, 38.648800, 50.586464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.948826, 38.858154, 50.679153>,  <36.828873, 39.207077, 50.833633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948826, 38.858154, 50.679153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246125, -0.320382, 0.914756,
		-0.921679, -0.369373, 0.118620,
		0.299883, -0.872307, -0.386201,
		37.038792, 38.596462, 50.563293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522720, 38.631405, 51.229771>,  <36.828873, 39.207077, 50.833633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522720, 38.631405, 51.229771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.860226, 38.504250, 51.056793>,  <37.062729, 38.427956, 50.953007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.860226, 38.504250, 51.056793>,  <36.522720, 38.631405, 51.229771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860226, 38.504250, 51.056793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397475, -0.171325, 0.901477,
		-0.360661, -0.932519, -0.018204,
		0.843764, -0.317892, -0.432443,
		37.113354, 38.408882, 50.927059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627628, 38.108112, 51.487785>,  <36.522720, 38.631405, 51.229771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627628, 38.108112, 51.487785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.998764, 38.216801, 51.385578>,  <37.221443, 38.282013, 51.324253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.998764, 38.216801, 51.385578>,  <36.627628, 38.108112, 51.487785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998764, 38.216801, 51.385578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291759, -0.101916, 0.951047,
		0.232374, -0.956965, -0.173837,
		0.927836, 0.271718, -0.255521,
		37.277115, 38.298317, 51.308922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.624710, 39.995480, 35.235176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006435, 39.889797, 35.291008>,  <36.235470, 39.826389, 35.324505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006435, 39.889797, 35.291008>,  <35.624710, 39.995480, 35.235176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006435, 39.889797, 35.291008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166957, -0.084080, 0.982373,
		-0.247811, -0.960795, -0.124350,
		0.954314, -0.264204, 0.139575,
		36.292728, 39.810535, 35.332882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609615, 39.231934, 35.503864>,  <35.624710, 39.995480, 35.235176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609615, 39.231934, 35.503864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937607, 39.426746, 35.624153>,  <36.134403, 39.543633, 35.696327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937607, 39.426746, 35.624153>,  <35.609615, 39.231934, 35.503864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937607, 39.426746, 35.624153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312127, -0.059946, 0.948147,
		0.479803, -0.871326, 0.102861,
		0.819979, 0.487029, 0.300727,
		36.183601, 39.572857, 35.714371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915104, 38.772533, 36.080456>,  <35.609615, 39.231934, 35.503864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915104, 38.772533, 36.080456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054214, 39.145359, 36.121067>,  <36.137680, 39.369053, 36.145432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054214, 39.145359, 36.121067>,  <35.915104, 38.772533, 36.080456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054214, 39.145359, 36.121067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331280, 0.020860, 0.943302,
		0.877099, -0.361695, 0.316029,
		0.347779, 0.932063, 0.101526,
		36.158546, 39.424976, 36.151524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217743, 38.736042, 36.730530>,  <35.915104, 38.772533, 36.080456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217743, 38.736042, 36.730530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200352, 39.127472, 36.650024>,  <36.189919, 39.362328, 36.601723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200352, 39.127472, 36.650024>,  <36.217743, 38.736042, 36.730530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200352, 39.127472, 36.650024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302256, 0.179129, 0.936245,
		0.952235, 0.101540, 0.287990,
		-0.043479, 0.978572, -0.201264,
		36.187309, 39.421043, 36.589645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542549, 39.011345, 37.286716>,  <36.217743, 38.736042, 36.730530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542549, 39.011345, 37.286716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308891, 39.291500, 37.122654>,  <36.168697, 39.459595, 37.024216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308891, 39.291500, 37.122654>,  <36.542549, 39.011345, 37.286716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308891, 39.291500, 37.122654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210927, 0.356978, 0.909987,
		0.783765, 0.618075, -0.060794,
		-0.584142, 0.700393, -0.410156,
		36.133648, 39.501617, 36.999607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601196, 39.540302, 37.724224>,  <36.542549, 39.011345, 37.286716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601196, 39.540302, 37.724224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250851, 39.606873, 37.543049>,  <36.040642, 39.646816, 37.434341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250851, 39.606873, 37.543049>,  <36.601196, 39.540302, 37.724224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250851, 39.606873, 37.543049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443323, 0.093171, 0.891506,
		0.190574, 0.981642, -0.007824,
		-0.875869, 0.166429, -0.452941,
		35.988091, 39.656803, 37.407166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377533, 40.139294, 38.063339>,  <36.601196, 39.540302, 37.724224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377533, 40.139294, 38.063339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054565, 39.978798, 37.890327>,  <35.860786, 39.882500, 37.786522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054565, 39.978798, 37.890327>,  <36.377533, 40.139294, 38.063339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054565, 39.978798, 37.890327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496265, 0.065426, 0.865703,
		-0.319057, 0.913633, -0.251948,
		-0.807418, -0.401241, -0.432529,
		35.812340, 39.858425, 37.760571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837631, 40.606216, 38.141949>,  <36.377533, 40.139294, 38.063339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837631, 40.606216, 38.141949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665329, 40.250969, 38.077835>,  <35.561947, 40.037819, 38.039368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665329, 40.250969, 38.077835>,  <35.837631, 40.606216, 38.141949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665329, 40.250969, 38.077835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456692, 0.061333, 0.887508,
		-0.778383, 0.455501, -0.432017,
		-0.430757, -0.888120, -0.160283,
		35.536102, 39.984531, 38.029751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207405, 40.777027, 38.255432>,  <35.837631, 40.606216, 38.141949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207405, 40.777027, 38.255432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227379, 40.380650, 38.305302>,  <35.239365, 40.142822, 38.335224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227379, 40.380650, 38.305302>,  <35.207405, 40.777027, 38.255432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227379, 40.380650, 38.305302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360814, 0.098501, 0.927422,
		-0.931300, -0.091297, -0.352627,
		0.049936, -0.990940, 0.124675,
		35.242359, 40.083366, 38.342705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665047, 40.580395, 38.792957>,  <35.207405, 40.777027, 38.255432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665047, 40.580395, 38.792957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914112, 40.267941, 38.811378>,  <35.063553, 40.080467, 38.822430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914112, 40.267941, 38.811378>,  <34.665047, 40.580395, 38.792957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914112, 40.267941, 38.811378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224730, -0.122142, 0.966736,
		-0.749524, -0.612301, -0.251598,
		0.622664, -0.781133, 0.046054,
		35.100910, 40.033600, 38.825195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314415, 40.197704, 39.265785>,  <34.665047, 40.580395, 38.792957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314415, 40.197704, 39.265785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685474, 40.048431, 39.271481>,  <34.908112, 39.958866, 39.274899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685474, 40.048431, 39.271481>,  <34.314415, 40.197704, 39.265785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685474, 40.048431, 39.271481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074891, -0.148530, 0.986068,
		-0.365871, -0.915790, -0.165732,
		0.927648, -0.373185, 0.014242,
		34.963768, 39.936478, 39.275753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244869, 39.615810, 39.593925>,  <34.314415, 40.197704, 39.265785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244869, 39.615810, 39.593925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633133, 39.705956, 39.627453>,  <34.866093, 39.760044, 39.647568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633133, 39.705956, 39.627453>,  <34.244869, 39.615810, 39.593925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633133, 39.705956, 39.627453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032169, -0.223728, 0.974121,
		0.238284, -0.948239, -0.209915,
		0.970662, 0.225365, 0.083815,
		34.924332, 39.773563, 39.652596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901581, 38.998329, 39.775532>,  <34.244869, 39.615810, 39.593925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901581, 38.998329, 39.775532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548656, 38.902512, 39.937588>,  <33.336903, 38.845020, 40.034821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548656, 38.902512, 39.937588>,  <33.901581, 38.998329, 39.775532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548656, 38.902512, 39.937588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389852, -0.110324, -0.914245,
		0.263701, -0.964596, 0.003953,
		-0.882313, -0.239546, 0.405143,
		33.283962, 38.830647, 40.059132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687275, 38.242134, 39.551689>,  <33.901581, 38.998329, 39.775532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687275, 38.242134, 39.551689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386356, 38.483608, 39.657230>,  <33.205807, 38.628490, 39.720554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386356, 38.483608, 39.657230>,  <33.687275, 38.242134, 39.551689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386356, 38.483608, 39.657230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438975, -0.160664, -0.884018,
		-0.491276, -0.780867, 0.385869,
		-0.752296, 0.603684, 0.263850,
		33.160667, 38.664715, 39.736385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039925, 37.864426, 39.355053>,  <33.687275, 38.242134, 39.551689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039925, 37.864426, 39.355053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961037, 38.256424, 39.365719>,  <32.913704, 38.491623, 39.372120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961037, 38.256424, 39.365719>,  <33.039925, 37.864426, 39.355053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961037, 38.256424, 39.365719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486682, -0.074262, -0.870417,
		-0.851025, -0.184643, 0.491592,
		-0.197223, 0.979996, 0.026663,
		32.901871, 38.550423, 39.373718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442173, 37.871361, 39.357918>,  <33.039925, 37.864426, 39.355053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442173, 37.871361, 39.357918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538223, 38.236645, 39.226231>,  <32.595856, 38.455814, 39.147217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538223, 38.236645, 39.226231>,  <32.442173, 37.871361, 39.357918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538223, 38.236645, 39.226231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424039, -0.206398, -0.881811,
		-0.873230, 0.351349, 0.337675,
		0.240128, 0.913211, -0.329218,
		32.610260, 38.510609, 39.127464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890770, 38.210876, 39.340427>,  <32.442173, 37.871361, 39.357918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890770, 38.210876, 39.340427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137787, 38.382362, 39.076656>,  <32.285995, 38.485256, 38.918396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137787, 38.382362, 39.076656>,  <31.890770, 38.210876, 39.340427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137787, 38.382362, 39.076656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585171, -0.309784, -0.749406,
		-0.525564, 0.848666, 0.059570,
		0.617541, 0.428719, -0.659426,
		32.323048, 38.510979, 38.878830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478498, 38.530689, 38.865231>,  <31.890770, 38.210876, 39.340427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478498, 38.530689, 38.865231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823214, 38.529232, 38.662327>,  <32.030045, 38.528358, 38.540585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823214, 38.529232, 38.662327>,  <31.478498, 38.530689, 38.865231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823214, 38.529232, 38.662327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502469, -0.143362, -0.852627,
		-0.069612, 0.989664, -0.125380,
		0.861788, -0.003647, -0.507255,
		32.081749, 38.528137, 38.510151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282682, 38.934231, 38.280731>,  <31.478498, 38.530689, 38.865231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282682, 38.934231, 38.280731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612785, 38.720600, 38.207283>,  <31.810846, 38.592422, 38.163216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612785, 38.720600, 38.207283>,  <31.282682, 38.934231, 38.280731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612785, 38.720600, 38.207283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385967, -0.296002, -0.873735,
		0.412289, 0.791925, -0.450413,
		0.825256, -0.534076, -0.183619,
		31.860363, 38.560379, 38.152199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540594, 39.263412, 37.563015>,  <31.282682, 38.934231, 38.280731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540594, 39.263412, 37.563015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687181, 38.895432, 37.618717>,  <31.775133, 38.674644, 37.652138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687181, 38.895432, 37.618717>,  <31.540594, 39.263412, 37.563015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687181, 38.895432, 37.618717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378742, -0.284200, -0.880787,
		0.849856, 0.270039, -0.452574,
		0.366468, -0.919951, 0.139254,
		31.797121, 38.619446, 37.660492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040558, 39.033413, 36.983315>,  <31.540594, 39.263412, 37.563015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040558, 39.033413, 36.983315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908945, 38.691055, 37.142906>,  <31.829977, 38.485641, 37.238663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908945, 38.691055, 37.142906>,  <32.040558, 39.033413, 36.983315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908945, 38.691055, 37.142906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207493, -0.346651, -0.914757,
		0.921241, -0.383770, -0.063533,
		-0.329032, -0.855894, 0.398978,
		31.810236, 38.434288, 37.262600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082226, 38.630676, 36.486446>,  <32.040558, 39.033413, 36.983315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082226, 38.630676, 36.486446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860273, 38.415432, 36.740231>,  <31.727102, 38.286285, 36.892502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860273, 38.415432, 36.740231>,  <32.082226, 38.630676, 36.486446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860273, 38.415432, 36.740231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330773, -0.557067, -0.761752,
		0.763347, -0.632544, 0.131112,
		-0.554880, -0.538112, 0.634464,
		31.693810, 38.253998, 36.930569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255028, 37.933079, 36.309929>,  <32.082226, 38.630676, 36.486446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255028, 37.933079, 36.309929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904898, 37.937363, 36.503296>,  <31.694818, 37.939934, 36.619316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904898, 37.937363, 36.503296>,  <32.255028, 37.933079, 36.309929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904898, 37.937363, 36.503296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417832, -0.519899, -0.745065,
		0.243350, -0.854161, 0.459554,
		-0.875327, 0.010705, 0.483413,
		31.642300, 37.940575, 36.648319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062569, 37.295586, 36.121799>,  <32.255028, 37.933079, 36.309929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062569, 37.295586, 36.121799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719944, 37.444466, 36.264782>,  <31.514370, 37.533794, 36.350571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719944, 37.444466, 36.264782>,  <32.062569, 37.295586, 36.121799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719944, 37.444466, 36.264782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510667, -0.511560, -0.691033,
		-0.074341, -0.774451, 0.628251,
		-0.856559, 0.372199, 0.357457,
		31.462976, 37.556126, 36.372021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578178, 36.715652, 36.349911>,  <32.062569, 37.295586, 36.121799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578178, 36.715652, 36.349911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337027, 37.028671, 36.287735>,  <31.192335, 37.216480, 36.250427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337027, 37.028671, 36.287735>,  <31.578178, 36.715652, 36.349911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337027, 37.028671, 36.287735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542017, -0.544694, -0.639943,
		-0.585455, -0.301552, 0.752535,
		-0.602877, 0.782544, -0.155447,
		31.156162, 37.263435, 36.241104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985344, 36.031635, 36.019104>,  <31.578178, 36.715652, 36.349911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985344, 36.031635, 36.019104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056759, 36.403492, 35.890175>,  <32.099609, 36.626606, 35.812817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056759, 36.403492, 35.890175>,  <31.985344, 36.031635, 36.019104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056759, 36.403492, 35.890175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708673, -0.348748, -0.613317,
		-0.682573, -0.118919, -0.721077,
		0.178539, 0.929641, -0.322321,
		32.110321, 36.682384, 35.793480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056080, 35.957546, 35.343609>,  <31.985344, 36.031635, 36.019104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056080, 35.957546, 35.343609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231266, 36.313362, 35.395607>,  <32.336376, 36.526852, 35.426807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231266, 36.313362, 35.395607>,  <32.056080, 35.957546, 35.343609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231266, 36.313362, 35.395607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696632, -0.244414, -0.674512,
		-0.568234, 0.385974, -0.726729,
		0.437966, 0.889543, 0.129997,
		32.362656, 36.580223, 35.434605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828938, 35.990688, 35.489365>,  <32.056080, 35.957546, 35.343609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828938, 35.990688, 35.489365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181870, 35.802891, 35.502487>,  <33.393627, 35.690212, 35.510361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181870, 35.802891, 35.502487>,  <32.828938, 35.990688, 35.489365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181870, 35.802891, 35.502487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269920, -0.447691, 0.852476,
		-0.385540, -0.761020, -0.521735,
		0.882327, -0.469491, 0.032812,
		33.446568, 35.662045, 35.512329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754585, 35.301743, 35.575031>,  <32.828938, 35.990688, 35.489365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754585, 35.301743, 35.575031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123253, 35.316921, 35.729477>,  <33.344452, 35.326031, 35.822144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123253, 35.316921, 35.729477>,  <32.754585, 35.301743, 35.575031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123253, 35.316921, 35.729477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302209, -0.553881, 0.775813,
		0.243305, -0.831731, -0.499026,
		0.921669, 0.037949, 0.386119,
		33.399754, 35.328304, 35.845314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848915, 34.619640, 35.883221>,  <32.754585, 35.301743, 35.575031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848915, 34.619640, 35.883221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127327, 34.856682, 36.045387>,  <33.294373, 34.998909, 36.142689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127327, 34.856682, 36.045387>,  <32.848915, 34.619640, 35.883221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127327, 34.856682, 36.045387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066618, -0.508899, 0.858244,
		0.714919, -0.624369, -0.314729,
		0.696027, 0.592608, 0.405416,
		33.336136, 35.034466, 36.167011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388641, 34.194599, 36.220932>,  <32.848915, 34.619640, 35.883221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388641, 34.194599, 36.220932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440697, 34.546345, 36.404140>,  <33.471931, 34.757393, 36.514065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440697, 34.546345, 36.404140>,  <33.388641, 34.194599, 36.220932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440697, 34.546345, 36.404140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202858, -0.475792, 0.855845,
		0.970522, -0.018464, -0.240304,
		0.130137, 0.879364, 0.458021,
		33.479736, 34.810154, 36.541546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970459, 34.060368, 36.772503>,  <33.388641, 34.194599, 36.220932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970459, 34.060368, 36.772503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751537, 34.378471, 36.876823>,  <33.620182, 34.569332, 36.939415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751537, 34.378471, 36.876823>,  <33.970459, 34.060368, 36.772503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751537, 34.378471, 36.876823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022861, -0.297291, 0.954513,
		0.836619, 0.528375, 0.144529,
		-0.547308, 0.795260, 0.260798,
		33.587345, 34.617050, 36.955063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272865, 34.380669, 37.362057>,  <33.970459, 34.060368, 36.772503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272865, 34.380669, 37.362057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907547, 34.540760, 37.392246>,  <33.688354, 34.636814, 37.410362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907547, 34.540760, 37.392246>,  <34.272865, 34.380669, 37.362057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907547, 34.540760, 37.392246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012760, -0.213344, 0.976894,
		0.407087, 0.891234, 0.199954,
		-0.913300, 0.400232, 0.075478,
		33.633556, 34.660831, 37.414890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293095, 34.835766, 37.909817>,  <34.272865, 34.380669, 37.362057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293095, 34.835766, 37.909817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907959, 34.738319, 37.863182>,  <33.676880, 34.679852, 37.835201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907959, 34.738319, 37.863182>,  <34.293095, 34.835766, 37.909817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907959, 34.738319, 37.863182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077493, -0.164337, 0.983356,
		-0.258726, 0.955846, 0.139351,
		-0.962837, -0.243621, -0.116589,
		33.619106, 34.665234, 37.828205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923691, 35.300388, 38.313984>,  <34.293095, 34.835766, 37.909817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923691, 35.300388, 38.313984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705357, 34.969929, 38.258064>,  <33.574356, 34.771652, 38.224514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705357, 34.969929, 38.258064>,  <33.923691, 35.300388, 38.313984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705357, 34.969929, 38.258064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105461, -0.097777, 0.989605,
		-0.831228, 0.554906, -0.033756,
		-0.545837, -0.826147, -0.139796,
		33.541607, 34.722084, 38.216125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316868, 35.376766, 38.731636>,  <33.923691, 35.300388, 38.313984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316868, 35.376766, 38.731636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342625, 34.982979, 38.666313>,  <33.358078, 34.746704, 38.627117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342625, 34.982979, 38.666313>,  <33.316868, 35.376766, 38.731636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342625, 34.982979, 38.666313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075742, -0.167999, 0.982873,
		-0.995046, -0.050920, -0.085383,
		0.064392, -0.984471, -0.163310,
		33.361942, 34.687637, 38.617321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808762, 35.124222, 39.159618>,  <33.316868, 35.376766, 38.731636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808762, 35.124222, 39.159618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040668, 34.811943, 39.066334>,  <33.179813, 34.624577, 39.010365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040668, 34.811943, 39.066334>,  <32.808762, 35.124222, 39.159618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040668, 34.811943, 39.066334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111477, -0.207529, 0.971856,
		-0.807120, -0.589449, -0.033289,
		0.579768, -0.780693, -0.233211,
		33.214600, 34.577736, 38.996372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489990, 34.613132, 39.678127>,  <32.808762, 35.124222, 39.159618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489990, 34.613132, 39.678127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850666, 34.476974, 39.571472>,  <33.067070, 34.395279, 39.507481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850666, 34.476974, 39.571472>,  <32.489990, 34.613132, 39.678127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850666, 34.476974, 39.571472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205603, -0.204948, 0.956935,
		-0.380385, -0.917674, -0.114811,
		0.901684, -0.340398, -0.266635,
		33.121170, 34.374855, 39.491482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510399, 33.990902, 40.043755>,  <32.489990, 34.613132, 39.678127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510399, 33.990902, 40.043755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886177, 34.093536, 39.952881>,  <33.111645, 34.155117, 39.898357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886177, 34.093536, 39.952881>,  <32.510399, 33.990902, 40.043755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886177, 34.093536, 39.952881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312686, -0.370390, 0.874665,
		0.140276, -0.892735, -0.428190,
		0.939442, 0.256583, -0.227188,
		33.168011, 34.170513, 39.884724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881077, 33.329067, 40.315598>,  <32.510399, 33.990902, 40.043755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881077, 33.329067, 40.315598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139351, 33.630657, 40.267254>,  <33.294315, 33.811611, 40.238247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139351, 33.630657, 40.267254>,  <32.881077, 33.329067, 40.315598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139351, 33.630657, 40.267254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408672, -0.207512, 0.888778,
		0.645040, -0.623262, -0.442118,
		0.645686, 0.753979, -0.120856,
		33.333057, 33.856850, 40.230995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504608, 33.088989, 40.593750>,  <32.881077, 33.329067, 40.315598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504608, 33.088989, 40.593750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552010, 33.485928, 40.579876>,  <33.580452, 33.724091, 40.571552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552010, 33.485928, 40.579876>,  <33.504608, 33.088989, 40.593750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552010, 33.485928, 40.579876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394299, -0.014965, 0.918861,
		0.911310, -0.122565, -0.393055,
		0.118503, 0.992348, -0.034690,
		33.587559, 33.783630, 40.569469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178154, 33.313194, 40.676537>,  <33.504608, 33.088989, 40.593750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178154, 33.313194, 40.676537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954796, 33.627949, 40.781609>,  <33.820782, 33.816803, 40.844650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954796, 33.627949, 40.781609>,  <34.178154, 33.313194, 40.676537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954796, 33.627949, 40.781609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427022, 0.001174, 0.904240,
		0.711230, 0.617092, -0.336676,
		-0.558394, 0.786890, 0.262677,
		33.787277, 33.864017, 40.860413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585495, 33.736290, 41.121029>,  <34.178154, 33.313194, 40.676537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585495, 33.736290, 41.121029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222050, 33.881802, 41.203098>,  <34.003983, 33.969109, 41.252338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222050, 33.881802, 41.203098>,  <34.585495, 33.736290, 41.121029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222050, 33.881802, 41.203098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314974, 0.274260, 0.908610,
		0.274260, 0.890196, -0.363775,
		-0.908610, 0.363775, 0.205170,
		33.949467, 33.990932, 41.264648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730721, 34.328323, 41.529266>,  <34.585495, 33.736290, 41.121029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730721, 34.328323, 41.529266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349609, 34.246468, 41.619007>,  <34.120941, 34.197353, 41.672852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349609, 34.246468, 41.619007>,  <34.730721, 34.328323, 41.529266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349609, 34.246468, 41.619007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158478, 0.295128, 0.942223,
		-0.259031, 0.933285, -0.248761,
		-0.952779, -0.204641, 0.224352,
		34.063774, 34.185074, 41.686314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582844, 34.896606, 41.897156>,  <34.730721, 34.328323, 41.529266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582844, 34.896606, 41.897156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330452, 34.597492, 41.979805>,  <34.179016, 34.418026, 42.029392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330452, 34.597492, 41.979805>,  <34.582844, 34.896606, 41.897156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330452, 34.597492, 41.979805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218898, 0.083906, 0.972134,
		-0.744280, 0.658622, 0.110745,
		-0.630977, -0.747781, 0.206620,
		34.141159, 34.373158, 42.041790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305882, 35.110573, 42.490700>,  <34.582844, 34.896606, 41.897156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305882, 35.110573, 42.490700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224663, 34.719334, 42.509007>,  <34.175934, 34.484589, 42.519989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224663, 34.719334, 42.509007>,  <34.305882, 35.110573, 42.490700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224663, 34.719334, 42.509007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074307, 0.031212, 0.996747,
		-0.976346, 0.205782, 0.066342,
		-0.203042, -0.978100, 0.045764,
		34.163750, 34.425903, 42.522736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864944, 34.988800, 43.065704>,  <34.305882, 35.110573, 42.490700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864944, 34.988800, 43.065704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029945, 34.631599, 42.993710>,  <34.128944, 34.417278, 42.950512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029945, 34.631599, 42.993710>,  <33.864944, 34.988800, 43.065704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029945, 34.631599, 42.993710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266278, -0.070752, 0.961296,
		-0.871171, -0.444462, 0.208601,
		0.412501, -0.892999, -0.179988,
		34.153694, 34.363701, 42.939713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541782, 34.576725, 43.488266>,  <33.864944, 34.988800, 43.065704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541782, 34.576725, 43.488266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879135, 34.376556, 43.410000>,  <34.081547, 34.256454, 43.363041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879135, 34.376556, 43.410000>,  <33.541782, 34.576725, 43.488266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879135, 34.376556, 43.410000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057189, -0.278490, 0.958735,
		-0.534264, -0.819769, -0.206255,
		0.843381, -0.500422, -0.195669,
		34.132149, 34.226429, 43.351299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516773, 33.949253, 43.918343>,  <33.541782, 34.576725, 43.488266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516773, 33.949253, 43.918343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909458, 33.965076, 43.843861>,  <34.145069, 33.974571, 43.799171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909458, 33.965076, 43.843861>,  <33.516773, 33.949253, 43.918343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909458, 33.965076, 43.843861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190128, -0.251629, 0.948965,
		-0.009316, -0.967015, -0.254549,
		0.981715, 0.039556, -0.186201,
		34.203972, 33.976944, 43.788002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796661, 33.345718, 44.217651>,  <33.516773, 33.949253, 43.918343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796661, 33.345718, 44.217651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129532, 33.567047, 44.203140>,  <34.329254, 33.699844, 44.194431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129532, 33.567047, 44.203140>,  <33.796661, 33.345718, 44.217651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129532, 33.567047, 44.203140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263662, -0.337283, 0.903727,
		0.487817, -0.761625, -0.426569,
		0.832176, 0.553324, -0.036279,
		34.379185, 33.733044, 44.192257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393723, 32.880592, 44.458389>,  <33.796661, 33.345718, 44.217651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393723, 32.880592, 44.458389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512383, 33.262009, 44.479420>,  <34.583576, 33.490856, 44.492039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512383, 33.262009, 44.479420>,  <34.393723, 32.880592, 44.458389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512383, 33.262009, 44.479420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364672, -0.163985, 0.916582,
		0.882618, -0.252729, -0.396375,
		0.296647, 0.953539, 0.052573,
		34.601376, 33.548069, 44.495193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001671, 32.767773, 44.776966>,  <34.393723, 32.880592, 44.458389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001671, 32.767773, 44.776966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902306, 33.153469, 44.813911>,  <34.842686, 33.384888, 44.836079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902306, 33.153469, 44.813911>,  <35.001671, 32.767773, 44.776966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902306, 33.153469, 44.813911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354984, 0.001905, 0.934870,
		0.901265, 0.265018, -0.342764,
		-0.248411, 0.964241, 0.092360,
		34.827782, 33.442741, 44.841621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632507, 33.100075, 45.073784>,  <35.001671, 32.767773, 44.776966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632507, 33.100075, 45.073784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325298, 33.343025, 45.155014>,  <35.140972, 33.488796, 45.203751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325298, 33.343025, 45.155014>,  <35.632507, 33.100075, 45.073784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325298, 33.343025, 45.155014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226107, -0.039508, 0.973301,
		0.599180, 0.793434, -0.106989,
		-0.768023, 0.607373, 0.203073,
		35.094891, 33.525238, 45.215935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890793, 33.684738, 45.404800>,  <35.632507, 33.100075, 45.073784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890793, 33.684738, 45.404800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512123, 33.658390, 45.530956>,  <35.284924, 33.642582, 45.606651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512123, 33.658390, 45.530956>,  <35.890793, 33.684738, 45.404800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512123, 33.658390, 45.530956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313257, 0.040836, 0.948790,
		-0.075379, 0.996992, -0.018023,
		-0.946672, -0.065873, 0.315393,
		35.228123, 33.638630, 45.625576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420158, 34.218418, 45.606689>,  <35.890793, 33.684738, 45.404800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420158, 34.218418, 45.606689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794079, 34.096291, 45.534115>,  <37.018433, 34.023014, 45.490570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794079, 34.096291, 45.534115>,  <36.420158, 34.218418, 45.606689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794079, 34.096291, 45.534115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080120, 0.316398, -0.945237,
		0.346008, 0.898148, 0.271308,
		0.934804, -0.305322, -0.181435,
		37.074520, 34.004692, 45.479683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777390, 34.833092, 45.294506>,  <36.420158, 34.218418, 45.606689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777390, 34.833092, 45.294506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965637, 34.495422, 45.191830>,  <37.078587, 34.292820, 45.130222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965637, 34.495422, 45.191830>,  <36.777390, 34.833092, 45.294506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965637, 34.495422, 45.191830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148744, 0.210858, -0.966134,
		0.869709, 0.492862, -0.026332,
		0.470618, -0.844172, -0.256696,
		37.106823, 34.242172, 45.114822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336697, 34.980873, 44.764084>,  <36.777390, 34.833092, 45.294506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336697, 34.980873, 44.764084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241249, 34.594433, 44.724663>,  <37.183979, 34.362568, 44.701012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241249, 34.594433, 44.724663>,  <37.336697, 34.980873, 44.764084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241249, 34.594433, 44.724663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118660, 0.129728, -0.984424,
		0.963836, -0.223210, -0.145593,
		-0.238620, -0.966099, -0.098550,
		37.169662, 34.304604, 44.695099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820583, 34.726406, 44.149612>,  <37.336697, 34.980873, 44.764084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820583, 34.726406, 44.149612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516960, 34.467640, 44.178814>,  <37.334785, 34.312378, 44.196335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516960, 34.467640, 44.178814>,  <37.820583, 34.726406, 44.149612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516960, 34.467640, 44.178814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071063, -0.029129, -0.997046,
		0.647136, -0.762001, -0.023862,
		-0.759055, -0.646921, 0.073001,
		37.289242, 34.273563, 44.200714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041664, 34.331123, 43.669182>,  <37.820583, 34.726406, 44.149612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041664, 34.331123, 43.669182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656048, 34.246426, 43.733410>,  <37.424679, 34.195606, 43.771946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656048, 34.246426, 43.733410>,  <38.041664, 34.331123, 43.669182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656048, 34.246426, 43.733410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143370, -0.094344, -0.985162,
		0.223750, -0.972761, 0.060595,
		-0.964044, -0.211743, 0.160574,
		37.366833, 34.182903, 43.781582>
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
