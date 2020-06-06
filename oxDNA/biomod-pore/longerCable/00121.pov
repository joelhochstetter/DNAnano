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
	<23.846867, 35.086868, 34.767414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205355, 35.006348, 34.925537>,  <24.420448, 34.958035, 35.020409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205355, 35.006348, 34.925537>,  <23.846867, 35.086868, 34.767414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205355, 35.006348, 34.925537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430715, 0.181599, -0.884029,
		0.106171, 0.962548, 0.249457,
		0.896221, -0.201303, 0.395303,
		24.474220, 34.945957, 35.044128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.009605, 35.499641, 34.231167>,  <23.846867, 35.086868, 34.767414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.009605, 35.499641, 34.231167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337568, 35.426514, 34.448177>,  <24.534346, 35.382637, 34.578384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337568, 35.426514, 34.448177>,  <24.009605, 35.499641, 34.231167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337568, 35.426514, 34.448177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481964, 0.731858, -0.481762,
		-0.308975, 0.656477, 0.688166,
		0.819906, -0.182819, 0.542524,
		24.583540, 35.371670, 34.610935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417063, 36.128345, 34.418968>,  <24.009605, 35.499641, 34.231167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417063, 36.128345, 34.418968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661541, 35.812126, 34.403614>,  <24.808228, 35.622395, 34.394402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661541, 35.812126, 34.403614>,  <24.417063, 36.128345, 34.418968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.661541, 35.812126, 34.403614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691100, 0.556691, -0.460952,
		0.385776, 0.255201, 0.886595,
		0.611194, -0.790549, -0.038389,
		24.844900, 35.574963, 34.392097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073006, 36.151150, 34.733517>,  <24.417063, 36.128345, 34.418968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073006, 36.151150, 34.733517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102612, 35.908318, 34.417042>,  <25.120375, 35.762619, 34.227158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102612, 35.908318, 34.417042>,  <25.073006, 36.151150, 34.733517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102612, 35.908318, 34.417042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653444, 0.628843, -0.421387,
		0.753348, -0.485807, 0.443237,
		0.074013, -0.607081, -0.791185,
		25.124815, 35.726192, 34.179688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516550, 36.672440, 34.426163>,  <25.073006, 36.151150, 34.733517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516550, 36.672440, 34.426163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848478, 36.607555, 34.639736>,  <26.047634, 36.568623, 34.767879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848478, 36.607555, 34.639736>,  <25.516550, 36.672440, 34.426163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848478, 36.607555, 34.639736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486802, 0.678194, -0.550525,
		-0.272811, 0.716757, 0.641743,
		0.829818, -0.162213, 0.533937,
		26.097424, 36.558891, 34.799919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744009, 37.288300, 34.648247>,  <25.516550, 36.672440, 34.426163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744009, 37.288300, 34.648247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065924, 37.051582, 34.629929>,  <26.259073, 36.909554, 34.618938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065924, 37.051582, 34.629929>,  <25.744009, 37.288300, 34.648247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065924, 37.051582, 34.629929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421795, 0.624471, -0.657363,
		0.417618, 0.509723, 0.752182,
		0.804789, -0.591793, -0.045791,
		26.307360, 36.874046, 34.616192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471256, 37.778706, 34.639938>,  <25.744009, 37.288300, 34.648247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471256, 37.778706, 34.639938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496412, 37.435703, 34.435692>,  <26.511505, 37.229900, 34.313145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496412, 37.435703, 34.435692>,  <26.471256, 37.778706, 34.639938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496412, 37.435703, 34.435692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354516, 0.497456, -0.791742,
		0.932933, -0.131229, 0.335285,
		0.062890, -0.857506, -0.510616,
		26.515280, 37.178452, 34.282509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146357, 37.645592, 34.883408>,  <26.471256, 37.778706, 34.639938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146357, 37.645592, 34.883408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406240, 37.938488, 34.801727>,  <27.562170, 38.114227, 34.752720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406240, 37.938488, 34.801727>,  <27.146357, 37.645592, 34.883408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406240, 37.938488, 34.801727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326265, -0.025985, 0.944921,
		0.686608, -0.680545, -0.255789,
		0.649708, 0.732245, -0.204197,
		27.601152, 38.158161, 34.740467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774858, 37.404861, 35.201855>,  <27.146357, 37.645592, 34.883408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774858, 37.404861, 35.201855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732485, 37.801796, 35.176434>,  <27.707062, 38.039959, 35.161179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732485, 37.801796, 35.176434>,  <27.774858, 37.404861, 35.201855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732485, 37.801796, 35.176434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175854, 0.081604, 0.981028,
		0.978700, 0.092747, -0.183151,
		-0.105933, 0.992340, -0.063556,
		27.700705, 38.099499, 35.157368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260029, 37.654320, 35.682522>,  <27.774858, 37.404861, 35.201855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260029, 37.654320, 35.682522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025036, 37.972374, 35.622356>,  <27.884039, 38.163208, 35.586258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025036, 37.972374, 35.622356>,  <28.260029, 37.654320, 35.682522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025036, 37.972374, 35.622356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265684, 0.365089, 0.892257,
		0.764379, 0.484223, -0.425738,
		-0.587483, 0.795134, -0.150416,
		27.848791, 38.210915, 35.577232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604864, 38.229477, 35.774437>,  <28.260029, 37.654320, 35.682522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604864, 38.229477, 35.774437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231920, 38.357151, 35.842358>,  <28.008154, 38.433754, 35.883110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231920, 38.357151, 35.842358>,  <28.604864, 38.229477, 35.774437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231920, 38.357151, 35.842358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307152, 0.451588, 0.837690,
		0.190697, 0.833181, -0.519080,
		-0.932358, 0.319181, 0.169797,
		27.952213, 38.452904, 35.893295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688936, 38.914093, 36.059814>,  <28.604864, 38.229477, 35.774437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688936, 38.914093, 36.059814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345221, 38.742626, 36.171436>,  <28.138990, 38.639748, 36.238411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345221, 38.742626, 36.171436>,  <28.688936, 38.914093, 36.059814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345221, 38.742626, 36.171436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098193, 0.397173, 0.912476,
		-0.501976, 0.811481, -0.299194,
		-0.859289, -0.428663, 0.279053,
		28.087435, 38.614029, 36.255154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693787, 39.046974, 36.798840>,  <28.688936, 38.914093, 36.059814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693787, 39.046974, 36.798840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387438, 39.210842, 36.997074>,  <28.203629, 39.309162, 37.116016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387438, 39.210842, 36.997074>,  <28.693787, 39.046974, 36.798840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387438, 39.210842, 36.997074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631011, -0.330774, -0.701722,
		-0.123543, -0.850154, 0.511835,
		-0.765873, 0.409666, 0.495592,
		28.157677, 39.333744, 37.145752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254457, 38.486198, 36.884964>,  <28.693787, 39.046974, 36.798840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254457, 38.486198, 36.884964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065472, 38.837872, 36.860283>,  <27.952080, 39.048878, 36.845474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065472, 38.837872, 36.860283>,  <28.254457, 38.486198, 36.884964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065472, 38.837872, 36.860283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508891, -0.329295, -0.795358,
		-0.719588, -0.344377, 0.602991,
		-0.472465, 0.879186, -0.061706,
		27.923733, 39.101627, 36.841770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576633, 38.293304, 36.895084>,  <28.254457, 38.486198, 36.884964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576633, 38.293304, 36.895084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650146, 38.640533, 36.710621>,  <27.694254, 38.848873, 36.599941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650146, 38.640533, 36.710621>,  <27.576633, 38.293304, 36.895084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650146, 38.640533, 36.710621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319951, -0.390776, -0.863091,
		-0.929438, 0.306169, 0.205924,
		0.183782, 0.868075, -0.461161,
		27.705280, 38.900955, 36.572273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970509, 38.557621, 36.487949>,  <27.576633, 38.293304, 36.895084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970509, 38.557621, 36.487949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310402, 38.705734, 36.337833>,  <27.514338, 38.794601, 36.247765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310402, 38.705734, 36.337833>,  <26.970509, 38.557621, 36.487949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310402, 38.705734, 36.337833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202103, -0.428675, -0.880563,
		-0.486933, 0.824093, -0.289425,
		0.849736, 0.370281, -0.375288,
		27.565323, 38.816818, 36.225246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833832, 38.966347, 35.908504>,  <26.970509, 38.557621, 36.487949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833832, 38.966347, 35.908504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212830, 38.839310, 35.893566>,  <27.440228, 38.763088, 35.884602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212830, 38.839310, 35.893566>,  <26.833832, 38.966347, 35.908504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212830, 38.839310, 35.893566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096351, -0.172169, -0.980344,
		0.304915, 0.932468, -0.193729,
		0.947493, -0.317588, -0.037348,
		27.497078, 38.744034, 35.882362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176861, 39.300274, 35.308781>,  <26.833832, 38.966347, 35.908504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176861, 39.300274, 35.308781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418262, 38.990238, 35.383636>,  <27.563103, 38.804218, 35.428551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418262, 38.990238, 35.383636>,  <27.176861, 39.300274, 35.308781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418262, 38.990238, 35.383636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154608, -0.116499, -0.981083,
		0.782228, 0.621020, 0.049527,
		0.603503, -0.775088, 0.187143,
		27.599314, 38.757713, 35.439781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809839, 39.434071, 35.076088>,  <27.176861, 39.300274, 35.308781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809839, 39.434071, 35.076088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771938, 39.036236, 35.093170>,  <27.749197, 38.797535, 35.103420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771938, 39.036236, 35.093170>,  <27.809839, 39.434071, 35.076088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771938, 39.036236, 35.093170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212202, -0.062088, -0.975251,
		0.972621, -0.083348, 0.216936,
		-0.094754, -0.994584, 0.042701,
		27.743511, 38.737862, 35.105980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341669, 39.173141, 34.643734>,  <27.809839, 39.434071, 35.076088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341669, 39.173141, 34.643734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090771, 38.863602, 34.678864>,  <27.940231, 38.677876, 34.699944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090771, 38.863602, 34.678864>,  <28.341669, 39.173141, 34.643734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090771, 38.863602, 34.678864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062335, -0.162292, -0.984772,
		0.776322, -0.612221, 0.150036,
		-0.627247, -0.773852, 0.087828,
		27.902596, 38.631447, 34.705212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869547, 39.053120, 33.973648>,  <28.341669, 39.173141, 34.643734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869547, 39.053120, 33.973648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851662, 38.726692, 33.743160>,  <27.840931, 38.530834, 33.604866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851662, 38.726692, 33.743160>,  <27.869547, 39.053120, 33.973648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851662, 38.726692, 33.743160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899809, 0.283472, -0.331643,
		0.433987, 0.503657, -0.746984,
		-0.044714, -0.816072, -0.576219,
		27.838247, 38.481873, 33.570293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047066, 39.098328, 33.236053>,  <27.869547, 39.053120, 33.973648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047066, 39.098328, 33.236053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251122, 39.140446, 32.894604>,  <28.373554, 39.165718, 32.689735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251122, 39.140446, 32.894604>,  <28.047066, 39.098328, 33.236053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251122, 39.140446, 32.894604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841098, -0.268498, 0.469535,
		-0.179754, -0.957508, -0.225537,
		0.510140, 0.105298, -0.853621,
		28.404163, 39.172035, 32.638515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455900, 38.475567, 33.097637>,  <28.047066, 39.098328, 33.236053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455900, 38.475567, 33.097637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644770, 38.785278, 32.929096>,  <28.758091, 38.971107, 32.827972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644770, 38.785278, 32.929096>,  <28.455900, 38.475567, 33.097637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644770, 38.785278, 32.929096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847692, -0.267711, 0.457984,
		0.241809, -0.573425, -0.782760,
		0.472173, 0.774283, -0.421353,
		28.786421, 39.017563, 32.802689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174179, 38.323616, 33.099323>,  <28.455900, 38.475567, 33.097637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174179, 38.323616, 33.099323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226448, 38.712997, 33.024155>,  <29.257811, 38.946625, 32.979053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226448, 38.712997, 33.024155>,  <29.174179, 38.323616, 33.099323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226448, 38.712997, 33.024155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898903, -0.036375, 0.436635,
		0.418207, -0.225982, -0.879792,
		0.130674, 0.973452, -0.187924,
		29.265650, 39.005032, 32.967777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813498, 38.426384, 32.698204>,  <29.174179, 38.323616, 33.099323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813498, 38.426384, 32.698204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719986, 38.747250, 32.917976>,  <29.663879, 38.939770, 33.049839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719986, 38.747250, 32.917976>,  <29.813498, 38.426384, 32.698204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719986, 38.747250, 32.917976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858784, -0.094602, 0.503527,
		0.455891, 0.589555, -0.666774,
		-0.233779, 0.802169, 0.549429,
		29.649853, 38.987900, 33.082806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404142, 38.803333, 32.802288>,  <29.813498, 38.426384, 32.698204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404142, 38.803333, 32.802288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153027, 38.876011, 33.105042>,  <30.002357, 38.919617, 33.286694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153027, 38.876011, 33.105042>,  <30.404142, 38.803333, 32.802288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153027, 38.876011, 33.105042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752006, -0.109410, 0.650013,
		0.200915, 0.977249, -0.067950,
		-0.627790, 0.181696, 0.756879,
		29.964689, 38.930519, 33.332104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675655, 39.241421, 33.273491>,  <30.404142, 38.803333, 32.802288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675655, 39.241421, 33.273491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421644, 39.002026, 33.468857>,  <30.269238, 38.858387, 33.586079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421644, 39.002026, 33.468857>,  <30.675655, 39.241421, 33.273491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421644, 39.002026, 33.468857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717502, -0.222687, 0.660001,
		-0.286239, 0.769559, 0.570829,
		-0.635026, -0.598489, 0.488418,
		30.231136, 38.822479, 33.615383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469284, 39.446697, 34.021801>,  <30.675655, 39.241421, 33.273491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469284, 39.446697, 34.021801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487204, 39.052116, 33.958679>,  <30.497955, 38.815369, 33.920807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487204, 39.052116, 33.958679>,  <30.469284, 39.446697, 34.021801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487204, 39.052116, 33.958679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712070, -0.079262, 0.697620,
		-0.700677, -0.143623, 0.698873,
		0.044801, -0.986453, -0.157807,
		30.500645, 38.756180, 33.911339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275587, 39.026924, 34.529819>,  <30.469284, 39.446697, 34.021801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275587, 39.026924, 34.529819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529556, 38.807018, 34.312698>,  <30.681938, 38.675076, 34.182426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529556, 38.807018, 34.312698>,  <30.275587, 39.026924, 34.529819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529556, 38.807018, 34.312698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693798, 0.096657, 0.713654,
		-0.339875, -0.829710, 0.442794,
		0.634925, -0.549762, -0.542800,
		30.720034, 38.642090, 34.149857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564995, 38.486290, 34.937138>,  <30.275587, 39.026924, 34.529819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564995, 38.486290, 34.937138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832403, 38.587574, 34.657436>,  <30.992849, 38.648346, 34.489616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832403, 38.587574, 34.657436>,  <30.564995, 38.486290, 34.937138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832403, 38.587574, 34.657436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701194, 0.098678, 0.706109,
		0.247799, -0.962364, -0.111584,
		0.668523, 0.253216, -0.699256,
		31.032961, 38.663540, 34.447659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948816, 39.074783, 34.894764>,  <30.564995, 38.486290, 34.937138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948816, 39.074783, 34.894764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967812, 39.452114, 35.026150>,  <30.979208, 39.678513, 35.104980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967812, 39.452114, 35.026150>,  <30.948816, 39.074783, 34.894764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967812, 39.452114, 35.026150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021462, 0.327793, -0.944506,
		-0.998641, 0.051901, -0.004680,
		0.047487, 0.943323, 0.328462,
		30.982058, 39.735111, 35.124687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520250, 38.743885, 35.175213>,  <30.948816, 39.074783, 34.894764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520250, 38.743885, 35.175213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407988, 38.375366, 35.282871>,  <31.340630, 38.154255, 35.347466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407988, 38.375366, 35.282871>,  <31.520250, 38.743885, 35.175213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407988, 38.375366, 35.282871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264542, 0.195306, 0.944390,
		-0.922632, 0.336249, 0.188909,
		-0.280656, -0.921299, 0.269147,
		31.323792, 38.098976, 35.363617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188606, 38.822632, 35.778461>,  <31.520250, 38.743885, 35.175213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188606, 38.822632, 35.778461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265060, 38.430813, 35.803631>,  <31.310934, 38.195721, 35.818733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265060, 38.430813, 35.803631>,  <31.188606, 38.822632, 35.778461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265060, 38.430813, 35.803631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257025, 0.111816, 0.959915,
		-0.947315, -0.167302, 0.273139,
		0.191137, -0.979545, 0.062924,
		31.322401, 38.136948, 35.822510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874247, 38.691280, 36.455383>,  <31.188606, 38.822632, 35.778461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874247, 38.691280, 36.455383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145525, 38.414852, 36.355412>,  <31.308292, 38.248993, 36.295429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145525, 38.414852, 36.355412>,  <30.874247, 38.691280, 36.455383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145525, 38.414852, 36.355412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508793, 0.196153, 0.838244,
		-0.530264, -0.695658, 0.484644,
		0.678196, -0.691075, -0.249933,
		31.348984, 38.207531, 36.280430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026834, 38.346443, 36.959763>,  <30.874247, 38.691280, 36.455383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026834, 38.346443, 36.959763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358505, 38.331303, 36.736683>,  <31.557508, 38.322220, 36.602837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358505, 38.331303, 36.736683>,  <31.026834, 38.346443, 36.959763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358505, 38.331303, 36.736683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540299, 0.310071, 0.782261,
		0.143316, -0.949959, 0.277556,
		0.829179, -0.037853, -0.557700,
		31.607260, 38.319946, 36.569374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973949, 38.653114, 37.662853>,  <31.026834, 38.346443, 36.959763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973949, 38.653114, 37.662853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259382, 38.376171, 37.705627>,  <31.430641, 38.210003, 37.731293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259382, 38.376171, 37.705627>,  <30.973949, 38.653114, 37.662853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259382, 38.376171, 37.705627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186291, 0.040377, -0.981665,
		0.675349, 0.720420, 0.157793,
		0.713582, -0.692361, 0.106939,
		31.473457, 38.168461, 37.737709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559498, 38.873791, 37.268810>,  <30.973949, 38.653114, 37.662853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559498, 38.873791, 37.268810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596624, 38.477379, 37.307289>,  <31.618900, 38.239532, 37.330376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596624, 38.477379, 37.307289>,  <31.559498, 38.873791, 37.268810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596624, 38.477379, 37.307289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253595, -0.069897, -0.964782,
		0.962847, 0.113941, 0.244831,
		0.092815, -0.991026, 0.096195,
		31.624470, 38.180073, 37.336147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059719, 38.626797, 36.828285>,  <31.559498, 38.873791, 37.268810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059719, 38.626797, 36.828285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880651, 38.276703, 36.901554>,  <31.773211, 38.066647, 36.945515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880651, 38.276703, 36.901554>,  <32.059719, 38.626797, 36.828285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880651, 38.276703, 36.901554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120419, -0.143974, -0.982228,
		0.886055, -0.461769, -0.040943,
		-0.447668, -0.875237, 0.183175,
		31.746351, 38.014133, 36.956505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263069, 38.146423, 36.388531>,  <32.059719, 38.626797, 36.828285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263069, 38.146423, 36.388531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929096, 37.956856, 36.500458>,  <31.728714, 37.843117, 36.567616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929096, 37.956856, 36.500458>,  <32.263069, 38.146423, 36.388531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929096, 37.956856, 36.500458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167379, -0.265688, -0.949418,
		0.524288, -0.839532, 0.142507,
		-0.834929, -0.473916, 0.279818,
		31.678617, 37.814682, 36.584404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224628, 37.405796, 36.080330>,  <32.263069, 38.146423, 36.388531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224628, 37.405796, 36.080330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861832, 37.564926, 36.135616>,  <31.644154, 37.660404, 36.168789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861832, 37.564926, 36.135616>,  <32.224628, 37.405796, 36.080330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861832, 37.564926, 36.135616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211633, -0.146779, -0.966265,
		-0.364121, -0.905642, 0.217321,
		-0.906988, 0.397830, 0.138218,
		31.589735, 37.684277, 36.177082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617041, 36.918419, 35.927628>,  <32.224628, 37.405796, 36.080330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617041, 36.918419, 35.927628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493549, 37.294907, 35.872803>,  <31.419455, 37.520802, 35.839909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493549, 37.294907, 35.872803>,  <31.617041, 36.918419, 35.927628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493549, 37.294907, 35.872803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563109, -0.297001, -0.771167,
		-0.766548, -0.160900, 0.621704,
		-0.308728, 0.941224, -0.137062,
		31.400930, 37.577274, 35.831684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884022, 36.975121, 35.801704>,  <31.617041, 36.918419, 35.927628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884022, 36.975121, 35.801704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022430, 37.317802, 35.648693>,  <31.105476, 37.523411, 35.556885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022430, 37.317802, 35.648693>,  <30.884022, 36.975121, 35.801704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022430, 37.317802, 35.648693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573363, -0.129642, -0.808979,
		-0.742646, 0.499255, 0.446342,
		0.346023, 0.856701, -0.382532,
		31.126238, 37.574814, 35.533932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388203, 37.630150, 35.716801>,  <30.884022, 36.975121, 35.801704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388203, 37.630150, 35.716801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668991, 37.599655, 35.433556>,  <30.837463, 37.581360, 35.263607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668991, 37.599655, 35.433556>,  <30.388203, 37.630150, 35.716801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668991, 37.599655, 35.433556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711663, -0.036272, -0.701584,
		0.027800, 0.996430, -0.079715,
		0.701970, -0.076234, -0.708114,
		30.879581, 37.576786, 35.221123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501511, 37.936199, 36.359528>,  <30.388203, 37.630150, 35.716801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501511, 37.936199, 36.359528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835518, 37.716183, 36.365055>,  <31.035923, 37.584171, 36.368374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835518, 37.716183, 36.365055>,  <30.501511, 37.936199, 36.359528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835518, 37.716183, 36.365055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022039, 0.058536, 0.998042,
		-0.549778, -0.833081, 0.061001,
		0.835020, -0.550046, 0.013821,
		31.086023, 37.551170, 36.369202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467590, 37.445614, 36.931904>,  <30.501511, 37.936199, 36.359528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467590, 37.445614, 36.931904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841675, 37.547295, 36.833302>,  <31.066126, 37.608303, 36.774139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841675, 37.547295, 36.833302>,  <30.467590, 37.445614, 36.931904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841675, 37.547295, 36.833302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234750, 0.076099, 0.969072,
		0.265096, -0.964153, 0.011496,
		0.935209, 0.254199, -0.246509,
		31.122238, 37.623554, 36.759350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938393, 37.032257, 37.346405>,  <30.467590, 37.445614, 36.931904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938393, 37.032257, 37.346405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160023, 37.342976, 37.226677>,  <31.293001, 37.529408, 37.154842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160023, 37.342976, 37.226677>,  <30.938393, 37.032257, 37.346405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160023, 37.342976, 37.226677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370294, 0.092047, 0.924343,
		0.745577, -0.622989, -0.236643,
		0.554073, 0.776796, -0.299317,
		31.326244, 37.576015, 37.136883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721157, 36.881584, 37.460022>,  <30.938393, 37.032257, 37.346405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721157, 36.881584, 37.460022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634043, 37.271923, 37.466797>,  <31.581774, 37.506126, 37.470860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634043, 37.271923, 37.466797>,  <31.721157, 36.881584, 37.460022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634043, 37.271923, 37.466797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226168, 0.033584, 0.973509,
		0.949430, 0.215847, -0.228020,
		-0.217787, 0.975849, 0.016933,
		31.568707, 37.564678, 37.471878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172314, 37.105396, 37.906116>,  <31.721157, 36.881584, 37.460022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172314, 37.105396, 37.906116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956408, 37.440022, 37.868568>,  <31.826862, 37.640797, 37.846039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956408, 37.440022, 37.868568>,  <32.172314, 37.105396, 37.906116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956408, 37.440022, 37.868568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237690, 0.258427, 0.936333,
		0.807560, 0.483091, -0.338333,
		-0.539768, 0.836564, -0.093870,
		31.794477, 37.690990, 37.840408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582378, 37.630520, 37.396919>,  <32.172314, 37.105396, 37.906116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582378, 37.630520, 37.396919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977169, 37.690426, 37.420383>,  <33.214043, 37.726372, 37.434464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977169, 37.690426, 37.420383>,  <32.582378, 37.630520, 37.396919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977169, 37.690426, 37.420383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157973, -0.971203, -0.178351,
		0.030261, 0.185295, -0.982217,
		0.986979, 0.149767, 0.058661,
		33.273262, 37.735355, 37.437981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890827, 37.313110, 36.833809>,  <32.582378, 37.630520, 37.396919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890827, 37.313110, 36.833809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164078, 37.346870, 37.123974>,  <33.328026, 37.367126, 37.298073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164078, 37.346870, 37.123974>,  <32.890827, 37.313110, 36.833809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164078, 37.346870, 37.123974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165752, -0.985296, -0.041458,
		0.711244, 0.148559, -0.687068,
		0.683124, 0.084397, 0.725409,
		33.369015, 37.372189, 37.341599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441090, 36.893551, 36.631161>,  <32.890827, 37.313110, 36.833809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441090, 36.893551, 36.631161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464203, 36.926231, 37.029152>,  <33.478069, 36.945839, 37.267948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464203, 36.926231, 37.029152>,  <33.441090, 36.893551, 36.631161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464203, 36.926231, 37.029152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167853, -0.983253, 0.070992,
		0.984117, 0.162908, -0.070527,
		0.057781, 0.081702, 0.994980,
		33.481537, 36.950741, 37.327644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011097, 36.572720, 36.855591>,  <33.441090, 36.893551, 36.631161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011097, 36.572720, 36.855591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795185, 36.543373, 37.191032>,  <33.665638, 36.525764, 37.392296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795185, 36.543373, 37.191032>,  <34.011097, 36.572720, 36.855591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795185, 36.543373, 37.191032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252742, -0.964359, 0.078310,
		0.802970, 0.254220, 0.539083,
		-0.539778, -0.073368, 0.838604,
		33.633251, 36.521362, 37.442616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450001, 36.201035, 37.353966>,  <34.011097, 36.572720, 36.855591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450001, 36.201035, 37.353966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088638, 36.178890, 37.524044>,  <33.871822, 36.165604, 37.626091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088638, 36.178890, 37.524044>,  <34.450001, 36.201035, 37.353966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088638, 36.178890, 37.524044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193489, -0.937561, 0.289036,
		0.382648, 0.343387, 0.857709,
		-0.903406, -0.055358, 0.425198,
		33.817616, 36.162281, 37.651604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517769, 35.861950, 38.035614>,  <34.450001, 36.201035, 37.353966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517769, 35.861950, 38.035614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141552, 35.815620, 37.907890>,  <33.915821, 35.787823, 37.831257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141552, 35.815620, 37.907890>,  <34.517769, 35.861950, 38.035614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141552, 35.815620, 37.907890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061608, -0.982643, 0.174978,
		-0.334036, 0.144903, 0.931355,
		-0.940544, -0.115828, -0.319311,
		33.859390, 35.780872, 37.812096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015373, 35.482376, 38.583500>,  <34.517769, 35.861950, 38.035614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015373, 35.482376, 38.583500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913818, 35.387493, 38.208420>,  <33.852886, 35.330563, 37.983372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913818, 35.387493, 38.208420>,  <34.015373, 35.482376, 38.583500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913818, 35.387493, 38.208420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086597, -0.959994, 0.266293,
		-0.963349, 0.148810, 0.223190,
		-0.253888, -0.237206, -0.937696,
		33.837650, 35.316330, 37.927113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350407, 34.739937, 38.488205>,  <34.015373, 35.482376, 38.583500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350407, 34.739937, 38.488205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990486, 34.579132, 38.420395>,  <33.774532, 34.482647, 38.379711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990486, 34.579132, 38.420395>,  <34.350407, 34.739937, 38.488205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990486, 34.579132, 38.420395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065373, 0.508392, -0.858641,
		0.431370, -0.761526, -0.483734,
		-0.899803, -0.402015, -0.169522,
		33.720547, 34.458527, 38.369537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344585, 34.521690, 37.813858>,  <34.350407, 34.739937, 38.488205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344585, 34.521690, 37.813858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971745, 34.607334, 37.930717>,  <33.748039, 34.658718, 38.000832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971745, 34.607334, 37.930717>,  <34.344585, 34.521690, 37.813858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971745, 34.607334, 37.930717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166095, 0.464114, -0.870064,
		-0.321876, -0.859509, -0.397039,
		-0.932099, 0.214107, 0.292147,
		33.692116, 34.671566, 38.018360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765282, 34.161076, 37.480202>,  <34.344585, 34.521690, 37.813858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765282, 34.161076, 37.480202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643028, 34.517395, 37.614700>,  <33.569675, 34.731186, 37.695400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643028, 34.517395, 37.614700>,  <33.765282, 34.161076, 37.480202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643028, 34.517395, 37.614700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415929, 0.192762, -0.888733,
		-0.856501, -0.411477, 0.311597,
		-0.305629, 0.890803, 0.336246,
		33.551338, 34.784637, 37.715572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012707, 34.278236, 37.424278>,  <33.765282, 34.161076, 37.480202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012707, 34.278236, 37.424278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193043, 34.634575, 37.401882>,  <33.301243, 34.848377, 37.388443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193043, 34.634575, 37.401882>,  <33.012707, 34.278236, 37.424278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193043, 34.634575, 37.401882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442695, 0.168690, -0.880662,
		-0.775089, 0.421826, 0.470426,
		0.450841, 0.890846, -0.055991,
		33.328297, 34.901829, 37.385086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536564, 34.892235, 37.421444>,  <33.012707, 34.278236, 37.424278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536564, 34.892235, 37.421444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881283, 34.931171, 37.222317>,  <33.088116, 34.954533, 37.102840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881283, 34.931171, 37.222317>,  <32.536564, 34.892235, 37.421444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881283, 34.931171, 37.222317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507168, 0.182863, -0.842224,
		0.009052, 0.978308, 0.206959,
		0.861799, 0.097339, -0.497822,
		33.139824, 34.960373, 37.072971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710453, 35.702381, 37.515678>,  <32.536564, 34.892235, 37.421444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710453, 35.702381, 37.515678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057419, 35.725891, 37.713318>,  <33.265598, 35.739998, 37.831902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057419, 35.725891, 37.713318>,  <32.710453, 35.702381, 37.515678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057419, 35.725891, 37.713318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088837, 0.995337, 0.037565,
		-0.489591, -0.076479, 0.868592,
		0.867415, 0.058772, 0.494103,
		33.317642, 35.743523, 37.861549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624352, 36.181377, 38.049007>,  <32.710453, 35.702381, 37.515678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624352, 36.181377, 38.049007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010487, 36.157768, 37.947311>,  <33.242168, 36.143600, 37.886295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010487, 36.157768, 37.947311>,  <32.624352, 36.181377, 38.049007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010487, 36.157768, 37.947311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044148, 0.996984, -0.063833,
		0.257238, 0.050396, 0.965033,
		0.965339, -0.059025, -0.254238,
		33.300087, 36.140060, 37.871040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884251, 36.743958, 38.450806>,  <32.624352, 36.181377, 38.049007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884251, 36.743958, 38.450806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121468, 36.655354, 38.141167>,  <33.263798, 36.602192, 37.955383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121468, 36.655354, 38.141167>,  <32.884251, 36.743958, 38.450806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121468, 36.655354, 38.141167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134682, 0.975158, -0.175863,
		0.793825, 0.000037, 0.608147,
		0.593046, -0.221511, -0.774099,
		33.299381, 36.588902, 37.908936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500050, 36.999908, 38.628700>,  <32.884251, 36.743958, 38.450806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500050, 36.999908, 38.628700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478832, 36.976780, 38.229935>,  <33.466103, 36.962902, 37.990673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478832, 36.976780, 38.229935>,  <33.500050, 36.999908, 38.628700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478832, 36.976780, 38.229935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222377, 0.972569, -0.068243,
		0.973517, -0.225311, -0.038730,
		-0.053044, -0.057823, -0.996917,
		33.462921, 36.959435, 37.930859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187107, 37.143322, 38.266838>,  <33.500050, 36.999908, 38.628700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187107, 37.143322, 38.266838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890762, 37.245796, 38.018486>,  <33.712955, 37.307281, 37.869476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890762, 37.245796, 38.018486>,  <34.187107, 37.143322, 38.266838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890762, 37.245796, 38.018486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210286, 0.966400, 0.147823,
		0.637889, -0.021046, -0.769841,
		-0.740863, 0.256181, -0.620881,
		33.668503, 37.322651, 37.832222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390957, 37.512535, 37.607769>,  <34.187107, 37.143322, 38.266838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390957, 37.512535, 37.607769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029530, 37.606136, 37.751328>,  <33.812672, 37.662296, 37.837463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029530, 37.606136, 37.751328>,  <34.390957, 37.512535, 37.607769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029530, 37.606136, 37.751328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318595, 0.927053, 0.197659,
		-0.286460, 0.292940, -0.912210,
		-0.903569, 0.234005, 0.358893,
		33.758457, 37.676338, 37.858994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138550, 38.113976, 37.333870>,  <34.390957, 37.512535, 37.607769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138550, 38.113976, 37.333870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944477, 38.086536, 37.682556>,  <33.828033, 38.070072, 37.891769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944477, 38.086536, 37.682556>,  <34.138550, 38.113976, 37.333870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944477, 38.086536, 37.682556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226792, 0.952931, 0.201214,
		-0.844491, 0.295324, -0.446787,
		-0.485181, -0.068596, 0.871719,
		33.798923, 38.065956, 37.944073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413242, 37.615078, 36.854382>,  <34.138550, 38.113976, 37.333870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413242, 37.615078, 36.854382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672569, 37.891632, 36.726837>,  <34.828167, 38.057564, 36.650311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672569, 37.891632, 36.726837>,  <34.413242, 37.615078, 36.854382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672569, 37.891632, 36.726837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356454, -0.094443, -0.929527,
		-0.672775, 0.716288, 0.185218,
		0.648317, 0.691384, -0.318862,
		34.867065, 38.099049, 36.631180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041409, 37.964394, 36.425808>,  <34.413242, 37.615078, 36.854382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041409, 37.964394, 36.425808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419434, 38.044258, 36.322273>,  <34.646248, 38.092178, 36.260155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419434, 38.044258, 36.322273>,  <34.041409, 37.964394, 36.425808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419434, 38.044258, 36.322273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184097, -0.329215, -0.926135,
		-0.270129, 0.922904, -0.274370,
		0.945060, 0.199665, -0.258835,
		34.702953, 38.104156, 36.244621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047264, 38.396503, 35.704952>,  <34.041409, 37.964394, 36.425808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047264, 38.396503, 35.704952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406395, 38.226677, 35.751671>,  <34.621876, 38.124779, 35.779701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406395, 38.226677, 35.751671>,  <34.047264, 38.396503, 35.704952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406395, 38.226677, 35.751671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041456, -0.345561, -0.937480,
		0.438386, 0.836856, -0.327856,
		0.897830, -0.424570, 0.116797,
		34.675743, 38.099304, 35.786709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553001, 38.747364, 35.251678>,  <34.047264, 38.396503, 35.704952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553001, 38.747364, 35.251678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646786, 38.364670, 35.320606>,  <34.703056, 38.135056, 35.361961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646786, 38.364670, 35.320606>,  <34.553001, 38.747364, 35.251678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646786, 38.364670, 35.320606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098341, -0.153007, -0.983320,
		0.967139, 0.247495, 0.058212,
		0.234460, -0.956731, 0.172318,
		34.717125, 38.077652, 35.372303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974182, 38.557724, 34.752953>,  <34.553001, 38.747364, 35.251678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974182, 38.557724, 34.752953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889992, 38.189957, 34.885841>,  <34.839478, 37.969296, 34.965576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889992, 38.189957, 34.885841>,  <34.974182, 38.557724, 34.752953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889992, 38.189957, 34.885841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262324, -0.380488, -0.886800,
		0.941747, -0.099496, 0.321267,
		-0.210472, -0.919418, 0.332223,
		34.826851, 37.914131, 34.985508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477253, 38.151844, 34.318451>,  <34.974182, 38.557724, 34.752953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477253, 38.151844, 34.318451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220596, 37.883781, 34.467678>,  <35.066601, 37.722942, 34.557217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220596, 37.883781, 34.467678>,  <35.477253, 38.151844, 34.318451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220596, 37.883781, 34.467678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101126, -0.556073, -0.824958,
		0.760307, -0.491602, 0.424571,
		-0.641644, -0.670157, 0.373072,
		35.028103, 37.682735, 34.579601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765511, 37.458389, 34.480877>,  <35.477253, 38.151844, 34.318451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765511, 37.458389, 34.480877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375305, 37.416866, 34.403316>,  <35.141182, 37.391953, 34.356781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375305, 37.416866, 34.403316>,  <35.765511, 37.458389, 34.480877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375305, 37.416866, 34.403316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215662, -0.624620, -0.750560,
		-0.043200, -0.773998, 0.631712,
		-0.975512, -0.103812, -0.193905,
		35.082653, 37.385723, 34.345146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758831, 36.916122, 34.072857>,  <35.765511, 37.458389, 34.480877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758831, 36.916122, 34.072857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382465, 37.042679, 34.024563>,  <35.156647, 37.118614, 33.995586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382465, 37.042679, 34.024563>,  <35.758831, 36.916122, 34.072857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382465, 37.042679, 34.024563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059772, -0.506087, -0.860409,
		-0.333333, -0.802353, 0.495095,
		-0.940913, 0.316395, -0.120737,
		35.100193, 37.137596, 33.988342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362167, 36.313438, 33.822788>,  <35.758831, 36.916122, 34.072857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362167, 36.313438, 33.822788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163216, 36.646706, 33.726086>,  <35.043846, 36.846664, 33.668064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163216, 36.646706, 33.726086>,  <35.362167, 36.313438, 33.822788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163216, 36.646706, 33.726086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201284, -0.381901, -0.902018,
		-0.843859, -0.399982, 0.357653,
		-0.497379, 0.833166, -0.241761,
		35.014004, 36.896656, 33.653557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846668, 35.974823, 33.423775>,  <35.362167, 36.313438, 33.822788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846668, 35.974823, 33.423775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810478, 36.359230, 33.319263>,  <34.788765, 36.589874, 33.256557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810478, 36.359230, 33.319263>,  <34.846668, 35.974823, 33.423775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810478, 36.359230, 33.319263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215967, -0.275046, -0.936861,
		-0.972199, -0.028339, 0.232433,
		-0.090480, 0.961013, -0.261279,
		34.783333, 36.647533, 33.240879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429607, 35.993916, 32.900051>,  <34.846668, 35.974823, 33.423775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429607, 35.993916, 32.900051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579323, 36.362652, 32.859814>,  <34.669151, 36.583893, 32.835670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579323, 36.362652, 32.859814>,  <34.429607, 35.993916, 32.900051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579323, 36.362652, 32.859814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213667, -0.019831, -0.976705,
		-0.902361, 0.387064, 0.189544,
		0.374288, 0.921840, -0.100597,
		34.691608, 36.639202, 32.829636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918621, 36.305355, 32.462688>,  <34.429607, 35.993916, 32.900051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918621, 36.305355, 32.462688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263805, 36.507187, 32.452110>,  <34.470917, 36.628284, 32.445763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263805, 36.507187, 32.452110>,  <33.918621, 36.305355, 32.462688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263805, 36.507187, 32.452110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057741, 0.046494, -0.997248,
		-0.501962, 0.862113, 0.069257,
		0.862960, 0.504579, -0.026441,
		34.522694, 36.658562, 32.444180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867798, 36.858124, 32.054585>,  <33.918621, 36.305355, 32.462688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867798, 36.858124, 32.054585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267551, 36.844395, 32.057472>,  <34.507404, 36.836155, 32.059204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267551, 36.844395, 32.057472>,  <33.867798, 36.858124, 32.054585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267551, 36.844395, 32.057472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013783, 0.195066, -0.980693,
		0.032254, 0.980189, 0.195419,
		0.999385, -0.034325, 0.007218,
		34.567368, 36.834099, 32.059639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085438, 37.383991, 31.672409>,  <33.867798, 36.858124, 32.054585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085438, 37.383991, 31.672409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411499, 37.153728, 31.646675>,  <34.607136, 37.015572, 31.631235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411499, 37.153728, 31.646675>,  <34.085438, 37.383991, 31.672409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411499, 37.153728, 31.646675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015180, 0.089799, -0.995844,
		0.579041, 0.812746, 0.064461,
		0.815157, -0.575656, -0.064335,
		34.656048, 36.981033, 31.627375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192749, 37.637760, 31.063721>,  <34.085438, 37.383991, 31.672409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192749, 37.637760, 31.063721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430103, 37.318592, 31.106104>,  <34.572514, 37.127090, 31.131535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430103, 37.318592, 31.106104>,  <34.192749, 37.637760, 31.063721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430103, 37.318592, 31.106104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227113, 0.039678, -0.973060,
		0.772215, 0.601462, 0.204761,
		0.593383, -0.797916, 0.105960,
		34.608120, 37.079216, 31.137892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736080, 37.886925, 30.791105>,  <34.192749, 37.637760, 31.063721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736080, 37.886925, 30.791105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725395, 37.487267, 30.778521>,  <34.718987, 37.247471, 30.770969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725395, 37.487267, 30.778521>,  <34.736080, 37.886925, 30.791105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725395, 37.487267, 30.778521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093563, 0.028835, -0.995196,
		0.995255, -0.029526, 0.092713,
		-0.026710, -0.999148, -0.031460,
		34.717381, 37.187523, 30.769083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095169, 37.820122, 30.210197>,  <34.736080, 37.886925, 30.791105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095169, 37.820122, 30.210197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947544, 37.456768, 30.288822>,  <34.858971, 37.238754, 30.335997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947544, 37.456768, 30.288822>,  <35.095169, 37.820122, 30.210197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947544, 37.456768, 30.288822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075961, -0.181301, -0.980490,
		0.926297, -0.376789, -0.002091,
		-0.369058, -0.908383, 0.196560,
		34.836826, 37.184254, 30.347790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560215, 37.300499, 30.005793>,  <35.095169, 37.820122, 30.210197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560215, 37.300499, 30.005793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206841, 37.113255, 29.997602>,  <34.994816, 37.000908, 29.992689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206841, 37.113255, 29.997602>,  <35.560215, 37.300499, 30.005793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206841, 37.113255, 29.997602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142090, -0.226005, -0.963707,
		0.446495, -0.854279, 0.266174,
		-0.883432, -0.468112, -0.020475,
		34.941811, 36.972820, 29.991461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692875, 36.717667, 29.633202>,  <35.560215, 37.300499, 30.005793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692875, 36.717667, 29.633202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298237, 36.774460, 29.601013>,  <35.061455, 36.808537, 29.581701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298237, 36.774460, 29.601013>,  <35.692875, 36.717667, 29.633202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298237, 36.774460, 29.601013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044520, -0.240218, -0.969698,
		-0.157008, -0.960280, 0.230677,
		-0.986594, 0.141980, -0.080468,
		35.002258, 36.817055, 29.576872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489098, 36.218777, 29.183493>,  <35.692875, 36.717667, 29.633202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489098, 36.218777, 29.183493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177620, 36.469090, 29.165451>,  <34.990734, 36.619278, 29.154625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177620, 36.469090, 29.165451>,  <35.489098, 36.218777, 29.183493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177620, 36.469090, 29.165451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068919, -0.156774, -0.985227,
		-0.623606, -0.764083, 0.165207,
		-0.778695, 0.625780, -0.045105,
		34.944012, 36.656822, 29.151920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047157, 35.863625, 28.705133>,  <35.489098, 36.218777, 29.183493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047157, 35.863625, 28.705133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922138, 36.243584, 28.704176>,  <34.847126, 36.471561, 28.703602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922138, 36.243584, 28.704176>,  <35.047157, 35.863625, 28.705133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922138, 36.243584, 28.704176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226099, -0.076839, -0.971069,
		-0.922602, -0.302961, 0.238787,
		-0.312544, 0.949900, -0.002393,
		34.828373, 36.528553, 28.703459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423012, 35.848392, 28.319952>,  <35.047157, 35.863625, 28.705133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423012, 35.848392, 28.319952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541718, 36.229111, 28.288935>,  <34.612942, 36.457542, 28.270325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541718, 36.229111, 28.288935>,  <34.423012, 35.848392, 28.319952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541718, 36.229111, 28.288935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135340, -0.038463, -0.990052,
		-0.945310, 0.304311, 0.117402,
		0.296768, 0.951796, -0.077545,
		34.630749, 36.514648, 28.265671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107533, 36.129219, 27.789230>,  <34.423012, 35.848392, 28.319952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107533, 36.129219, 27.789230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363003, 36.433144, 27.837868>,  <34.516285, 36.615498, 27.867050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363003, 36.433144, 27.837868>,  <34.107533, 36.129219, 27.789230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363003, 36.433144, 27.837868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053877, 0.113475, -0.992079,
		-0.767588, 0.640167, 0.031538,
		0.638675, 0.759809, 0.121592,
		34.554604, 36.661087, 27.874346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849907, 36.410519, 27.245867>,  <34.107533, 36.129219, 27.789230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849907, 36.410519, 27.245867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200001, 36.574657, 27.348303>,  <34.410057, 36.673141, 27.409765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200001, 36.574657, 27.348303>,  <33.849907, 36.410519, 27.245867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200001, 36.574657, 27.348303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195592, 0.183984, -0.963273,
		-0.442392, 0.893177, 0.080768,
		0.875233, 0.410347, 0.256091,
		34.462570, 36.697762, 27.425131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935261, 37.134304, 26.955189>,  <33.849907, 36.410519, 27.245867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935261, 37.134304, 26.955189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291851, 36.959766, 27.003977>,  <34.505806, 36.855045, 27.033249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291851, 36.959766, 27.003977>,  <33.935261, 37.134304, 26.955189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291851, 36.959766, 27.003977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242550, 0.232248, -0.941929,
		0.382676, 0.869291, 0.312878,
		0.891476, -0.436342, 0.121970,
		34.559296, 36.828865, 27.040567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398384, 37.598007, 26.566334>,  <33.935261, 37.134304, 26.955189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398384, 37.598007, 26.566334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606514, 37.261272, 26.623711>,  <34.731392, 37.059231, 26.658136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606514, 37.261272, 26.623711>,  <34.398384, 37.598007, 26.566334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606514, 37.261272, 26.623711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246906, -0.012494, -0.968959,
		0.817496, 0.539590, 0.201354,
		0.520325, -0.841835, 0.143442,
		34.762611, 37.008720, 26.666742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060871, 37.681110, 26.253500>,  <34.398384, 37.598007, 26.566334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060871, 37.681110, 26.253500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030823, 37.282482, 26.267378>,  <35.012794, 37.043304, 26.275705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030823, 37.282482, 26.267378>,  <35.060871, 37.681110, 26.253500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030823, 37.282482, 26.267378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411411, -0.062668, -0.909293,
		0.908349, -0.054032, 0.414708,
		-0.075120, -0.996571, 0.034696,
		35.008286, 36.983509, 26.277786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617374, 37.446209, 25.901974>,  <35.060871, 37.681110, 26.253500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617374, 37.446209, 25.901974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347824, 37.150879, 25.890934>,  <35.186092, 36.973679, 25.884310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347824, 37.150879, 25.890934>,  <35.617374, 37.446209, 25.901974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347824, 37.150879, 25.890934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152966, -0.102876, -0.982862,
		0.722835, -0.666550, 0.182264,
		-0.673878, -0.738328, -0.027597,
		35.145660, 36.929382, 25.882654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874649, 36.857235, 25.565294>,  <35.617374, 37.446209, 25.901974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874649, 36.857235, 25.565294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477844, 36.875965, 25.518436>,  <35.239761, 36.887203, 25.490322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477844, 36.875965, 25.518436>,  <35.874649, 36.857235, 25.565294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477844, 36.875965, 25.518436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112396, -0.093633, -0.989242,
		-0.057286, -0.994505, 0.087622,
		-0.992011, 0.046822, -0.117142,
		35.180241, 36.890015, 25.483294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620033, 36.197781, 25.231020>,  <35.874649, 36.857235, 25.565294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620033, 36.197781, 25.231020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347721, 36.485821, 25.177374>,  <35.184334, 36.658646, 25.145185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347721, 36.485821, 25.177374>,  <35.620033, 36.197781, 25.231020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347721, 36.485821, 25.177374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056647, -0.234309, -0.970510,
		-0.730291, -0.653110, 0.200306,
		-0.680784, 0.720102, -0.134117,
		35.143486, 36.701851, 25.137138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061405, 35.887245, 24.881083>,  <35.620033, 36.197781, 25.231020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061405, 35.887245, 24.881083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048061, 36.282200, 24.819160>,  <35.040054, 36.519173, 24.782007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048061, 36.282200, 24.819160>,  <35.061405, 35.887245, 24.881083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048061, 36.282200, 24.819160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072925, -0.156881, -0.984921,
		-0.996779, -0.021564, 0.077238,
		-0.033356, 0.987382, -0.154804,
		35.038055, 36.578415, 24.772718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773212, 35.996284, 24.200178>,  <35.061405, 35.887245, 24.881083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773212, 35.996284, 24.200178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926224, 36.360081, 24.265301>,  <35.018028, 36.578358, 24.304375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926224, 36.360081, 24.265301>,  <34.773212, 35.996284, 24.200178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926224, 36.360081, 24.265301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124924, 0.123677, -0.984428,
		-0.915461, 0.396906, -0.066308,
		0.382525, 0.909488, 0.162805,
		35.040981, 36.632927, 24.314142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483276, 36.391998, 23.721888>,  <34.773212, 35.996284, 24.200178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483276, 36.391998, 23.721888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754707, 36.661530, 23.838840>,  <34.917564, 36.823250, 23.909012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754707, 36.661530, 23.838840>,  <34.483276, 36.391998, 23.721888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754707, 36.661530, 23.838840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126412, 0.284985, -0.950160,
		-0.723571, 0.681716, 0.108204,
		0.678576, 0.673830, 0.292384,
		34.958279, 36.863678, 23.926556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316319, 36.989265, 23.359962>,  <34.483276, 36.391998, 23.721888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316319, 36.989265, 23.359962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703205, 36.998089, 23.461159>,  <34.935337, 37.003384, 23.521877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703205, 36.998089, 23.461159>,  <34.316319, 36.989265, 23.359962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703205, 36.998089, 23.461159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242584, 0.214447, -0.946132,
		-0.075124, 0.976487, 0.202065,
		0.967217, 0.022059, 0.252990,
		34.993370, 37.004707, 23.537056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583416, 37.698948, 23.194473>,  <34.316319, 36.989265, 23.359962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583416, 37.698948, 23.194473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898056, 37.452454, 23.210018>,  <35.086842, 37.304558, 23.219345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898056, 37.452454, 23.210018>,  <34.583416, 37.698948, 23.194473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898056, 37.452454, 23.210018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305601, 0.333850, -0.891713,
		0.536532, 0.713299, 0.450930,
		0.786601, -0.616237, 0.038863,
		35.134037, 37.267582, 23.221678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154282, 38.074455, 23.031202>,  <34.583416, 37.698948, 23.194473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154282, 38.074455, 23.031202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293144, 37.707088, 22.955318>,  <35.376461, 37.486668, 22.909788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293144, 37.707088, 22.955318>,  <35.154282, 38.074455, 23.031202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293144, 37.707088, 22.955318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284128, 0.295783, -0.912022,
		0.893732, 0.262709, 0.363631,
		0.347153, -0.918420, -0.189708,
		35.397289, 37.431561, 22.898407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855240, 38.146034, 22.673035>,  <35.154282, 38.074455, 23.031202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855240, 38.146034, 22.673035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716530, 37.779251, 22.594101>,  <35.633305, 37.559181, 22.546741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716530, 37.779251, 22.594101>,  <35.855240, 38.146034, 22.673035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716530, 37.779251, 22.594101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241895, 0.115839, -0.963363,
		0.906219, -0.381807, 0.181636,
		-0.346778, -0.916954, -0.197333,
		35.612495, 37.504166, 22.534901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385849, 37.753933, 22.196747>,  <35.855240, 38.146034, 22.673035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385849, 37.753933, 22.196747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019615, 37.604267, 22.137808>,  <35.799877, 37.514469, 22.102444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019615, 37.604267, 22.137808>,  <36.385849, 37.753933, 22.196747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019615, 37.604267, 22.137808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107210, 0.126034, -0.986216,
		0.387579, -0.918757, -0.075280,
		-0.915581, -0.374165, -0.147348,
		35.744942, 37.492016, 22.093603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574921, 37.382797, 21.629293>,  <36.385849, 37.753933, 22.196747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574921, 37.382797, 21.629293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178654, 37.436123, 21.640629>,  <35.940891, 37.468117, 21.647430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178654, 37.436123, 21.640629>,  <36.574921, 37.382797, 21.629293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178654, 37.436123, 21.640629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020313, 0.350026, -0.936520,
		-0.134767, -0.927206, -0.349468,
		-0.990669, 0.133311, 0.028337,
		35.881454, 37.476116, 21.649130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313713, 36.977898, 21.050964>,  <36.574921, 37.382797, 21.629293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313713, 36.977898, 21.050964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024101, 37.242805, 21.128090>,  <35.850334, 37.401749, 21.174364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024101, 37.242805, 21.128090>,  <36.313713, 36.977898, 21.050964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024101, 37.242805, 21.128090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107132, 0.384113, -0.917050,
		-0.681395, -0.643317, -0.349060,
		-0.724032, 0.662269, 0.192813,
		35.806892, 37.441486, 21.185934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934326, 36.910568, 20.363354>,  <36.313713, 36.977898, 21.050964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934326, 36.910568, 20.363354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833927, 37.239361, 20.567844>,  <35.773689, 37.436634, 20.690538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833927, 37.239361, 20.567844>,  <35.934326, 36.910568, 20.363354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833927, 37.239361, 20.567844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107869, 0.501095, -0.858643,
		-0.961960, -0.270659, -0.037105,
		-0.250993, 0.821978, 0.511229,
		35.758629, 37.485954, 20.721212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350147, 37.213215, 19.987375>,  <35.934326, 36.910568, 20.363354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350147, 37.213215, 19.987375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448570, 37.538975, 20.197601>,  <35.507622, 37.734428, 20.323736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448570, 37.538975, 20.197601>,  <35.350147, 37.213215, 19.987375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448570, 37.538975, 20.197601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011574, 0.539726, -0.841761,
		-0.969187, 0.213202, 0.123376,
		0.246055, 0.814396, 0.525563,
		35.522388, 37.783295, 20.355270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800926, 37.796177, 19.926231>,  <35.350147, 37.213215, 19.987375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800926, 37.796177, 19.926231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145802, 37.987053, 19.994257>,  <35.352726, 38.101578, 20.035072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145802, 37.987053, 19.994257>,  <34.800926, 37.796177, 19.926231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145802, 37.987053, 19.994257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109579, 0.503435, -0.857056,
		-0.494594, 0.720309, 0.486345,
		0.862188, 0.477189, 0.170065,
		35.404457, 38.130211, 20.045277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754776, 38.536800, 19.897678>,  <34.800926, 37.796177, 19.926231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754776, 38.536800, 19.897678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129719, 38.435776, 19.801693>,  <35.354683, 38.375160, 19.744102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129719, 38.435776, 19.801693>,  <34.754776, 38.536800, 19.897678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129719, 38.435776, 19.801693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106184, 0.448901, -0.887250,
		0.331804, 0.857147, 0.393961,
		0.937353, -0.252560, -0.239963,
		35.410923, 38.360008, 19.729704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903595, 39.056702, 19.410797>,  <34.754776, 38.536800, 19.897678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903595, 39.056702, 19.410797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174522, 38.765972, 19.365255>,  <35.337078, 38.591534, 19.337931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174522, 38.765972, 19.365255>,  <34.903595, 39.056702, 19.410797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174522, 38.765972, 19.365255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069440, 0.090907, -0.993435,
		0.732403, 0.680781, 0.011103,
		0.677322, -0.726824, -0.113854,
		35.377720, 38.547924, 19.331099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517948, 39.246399, 18.950865>,  <34.903595, 39.056702, 19.410797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517948, 39.246399, 18.950865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398796, 38.864788, 18.937586>,  <35.327305, 38.635822, 18.929619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398796, 38.864788, 18.937586>,  <35.517948, 39.246399, 18.950865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398796, 38.864788, 18.937586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105407, 0.067437, -0.992140,
		0.948765, -0.292043, -0.120649,
		-0.297883, -0.954025, -0.033199,
		35.309429, 38.578579, 18.927626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804070, 39.002228, 18.396452>,  <35.517948, 39.246399, 18.950865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804070, 39.002228, 18.396452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495754, 38.761959, 18.481377>,  <35.310764, 38.617798, 18.532331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495754, 38.761959, 18.481377>,  <35.804070, 39.002228, 18.396452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495754, 38.761959, 18.481377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315576, 0.070483, -0.946279,
		0.553435, -0.796386, -0.243884,
		-0.770793, -0.600668, 0.212313,
		35.264515, 38.581760, 18.545071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393288, 39.350567, 18.624956>,  <35.804070, 39.002228, 18.396452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393288, 39.350567, 18.624956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643909, 39.661732, 18.605831>,  <36.794285, 39.848431, 18.594357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643909, 39.661732, 18.605831>,  <36.393288, 39.350567, 18.624956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643909, 39.661732, 18.605831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118823, -0.034714, 0.992308,
		0.770264, -0.627419, -0.114183,
		0.626557, 0.777908, -0.047813,
		36.831875, 39.895103, 18.591488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027317, 39.203163, 19.005327>,  <36.393288, 39.350567, 18.624956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027317, 39.203163, 19.005327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964931, 39.598045, 19.018642>,  <36.927498, 39.834972, 19.026632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964931, 39.598045, 19.018642>,  <37.027317, 39.203163, 19.005327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964931, 39.598045, 19.018642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225729, 0.002812, 0.974186,
		0.961624, 0.159457, -0.223278,
		-0.155969, 0.987201, 0.033290,
		36.918140, 39.894207, 19.028629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647659, 39.405788, 19.314133>,  <37.027317, 39.203163, 19.005327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647659, 39.405788, 19.314133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371624, 39.687927, 19.378956>,  <37.206001, 39.857208, 19.417850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371624, 39.687927, 19.378956>,  <37.647659, 39.405788, 19.314133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371624, 39.687927, 19.378956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242693, 0.014581, 0.969993,
		0.681816, 0.708716, -0.181244,
		-0.690092, 0.705343, 0.162059,
		37.164597, 39.899529, 19.427574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660648, 39.306721, 19.996840>,  <37.647659, 39.405788, 19.314133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660648, 39.306721, 19.996840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373569, 39.582676, 19.958960>,  <37.201324, 39.748249, 19.936232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373569, 39.582676, 19.958960>,  <37.660648, 39.306721, 19.996840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373569, 39.582676, 19.958960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024358, 0.111040, 0.993517,
		0.695932, 0.715348, -0.062889,
		-0.717694, 0.689889, -0.094701,
		37.158260, 39.789642, 19.930550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591026, 39.616451, 20.580622>,  <37.660648, 39.306721, 19.996840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591026, 39.616451, 20.580622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285522, 39.827011, 20.431179>,  <37.102222, 39.953346, 20.341513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285522, 39.827011, 20.431179>,  <37.591026, 39.616451, 20.580622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285522, 39.827011, 20.431179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338034, 0.166917, 0.926214,
		0.549917, 0.833694, 0.050456,
		-0.763757, 0.526396, -0.373607,
		37.056396, 39.984928, 20.319098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560791, 40.436882, 20.788862>,  <37.591026, 39.616451, 20.580622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560791, 40.436882, 20.788862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203651, 40.260128, 20.754091>,  <36.989368, 40.154076, 20.733229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203651, 40.260128, 20.754091>,  <37.560791, 40.436882, 20.788862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203651, 40.260128, 20.754091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205261, 0.227478, 0.951904,
		-0.400862, 0.867748, -0.293806,
		-0.892848, -0.441890, -0.086928,
		36.935799, 40.127560, 20.728012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162857, 40.958893, 21.102417>,  <37.560791, 40.436882, 20.788862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162857, 40.958893, 21.102417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067329, 40.570946, 21.121700>,  <37.010014, 40.338177, 21.133270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067329, 40.570946, 21.121700>,  <37.162857, 40.958893, 21.102417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067329, 40.570946, 21.121700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066849, 0.065945, 0.995581,
		-0.968761, 0.234539, -0.080583,
		-0.238817, -0.969867, 0.048207,
		36.995686, 40.279987, 21.136162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558369, 40.895466, 21.484539>,  <37.162857, 40.958893, 21.102417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558369, 40.895466, 21.484539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749950, 40.545815, 21.516798>,  <36.864899, 40.336025, 21.536154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749950, 40.545815, 21.516798>,  <36.558369, 40.895466, 21.484539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749950, 40.545815, 21.516798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107795, 0.032610, 0.993638,
		-0.871198, -0.484597, -0.078608,
		0.478951, -0.874130, 0.080647,
		36.893635, 40.283577, 21.540993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162777, 40.509426, 22.040550>,  <36.558369, 40.895466, 21.484539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162777, 40.509426, 22.040550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511467, 40.320526, 21.988298>,  <36.720680, 40.207184, 21.956947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511467, 40.320526, 21.988298>,  <36.162777, 40.509426, 22.040550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511467, 40.320526, 21.988298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111702, -0.068044, 0.991409,
		-0.477086, -0.878832, -0.006564,
		0.871729, -0.472254, -0.130630,
		36.772987, 40.178848, 21.949110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123337, 39.923069, 22.443209>,  <36.162777, 40.509426, 22.040550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123337, 39.923069, 22.443209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511761, 39.994091, 22.379324>,  <36.744816, 40.036705, 22.340994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511761, 39.994091, 22.379324>,  <36.123337, 39.923069, 22.443209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511761, 39.994091, 22.379324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180024, -0.104788, 0.978065,
		0.156924, -0.978516, -0.133720,
		0.971064, 0.177554, -0.159712,
		36.803082, 40.047356, 22.331409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454407, 39.304077, 22.666367>,  <36.123337, 39.923069, 22.443209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454407, 39.304077, 22.666367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714172, 39.608166, 22.673565>,  <36.870033, 39.790619, 22.677883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714172, 39.608166, 22.673565>,  <36.454407, 39.304077, 22.666367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714172, 39.608166, 22.673565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308529, -0.285041, 0.907503,
		0.695033, -0.583793, -0.419660,
		0.649414, 0.760222, 0.017996,
		36.908997, 39.836231, 22.678965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167145, 39.043789, 23.007238>,  <36.454407, 39.304077, 22.666367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167145, 39.043789, 23.007238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181252, 39.443363, 23.019110>,  <37.189716, 39.683109, 23.026232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181252, 39.443363, 23.019110>,  <37.167145, 39.043789, 23.007238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181252, 39.443363, 23.019110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312563, -0.039233, 0.949086,
		0.949242, -0.024196, -0.313614,
		0.035268, 0.998937, 0.029679,
		37.191833, 39.743046, 23.028013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836769, 39.115761, 23.077980>,  <37.167145, 39.043789, 23.007238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836769, 39.115761, 23.077980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640842, 39.439167, 23.208447>,  <37.523285, 39.633209, 23.286726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640842, 39.439167, 23.208447>,  <37.836769, 39.115761, 23.077980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640842, 39.439167, 23.208447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451981, -0.084420, 0.888024,
		0.745516, 0.582388, -0.324083,
		-0.489816, 0.808516, 0.326165,
		37.493896, 39.681721, 23.306295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220680, 39.264545, 23.624660>,  <37.836769, 39.115761, 23.077980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220680, 39.264545, 23.624660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921127, 39.525314, 23.672295>,  <37.741398, 39.681774, 23.700876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921127, 39.525314, 23.672295>,  <38.220680, 39.264545, 23.624660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921127, 39.525314, 23.672295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051399, -0.122019, 0.991196,
		0.660710, 0.748407, 0.057869,
		-0.748879, 0.651919, 0.119086,
		37.696465, 39.720890, 23.708021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469822, 39.809433, 24.048491>,  <38.220680, 39.264545, 23.624660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469822, 39.809433, 24.048491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071003, 39.813744, 24.078920>,  <37.831711, 39.816330, 24.097178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071003, 39.813744, 24.078920>,  <38.469822, 39.809433, 24.048491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071003, 39.813744, 24.078920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075929, -0.013287, 0.997025,
		0.011759, 0.999854, 0.012429,
		-0.997044, 0.010780, 0.076075,
		37.771889, 39.816978, 24.101742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271950, 40.351799, 24.527243>,  <38.469822, 39.809433, 24.048491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271950, 40.351799, 24.527243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942051, 40.125767, 24.535912>,  <37.744110, 39.990147, 24.541113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942051, 40.125767, 24.535912>,  <38.271950, 40.351799, 24.527243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942051, 40.125767, 24.535912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055071, 0.118405, 0.991437,
		-0.562811, 0.816493, -0.128774,
		-0.824749, -0.565083, 0.021674,
		37.694626, 39.956242, 24.542414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926212, 40.715397, 25.050629>,  <38.271950, 40.351799, 24.527243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926212, 40.715397, 25.050629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762169, 40.351257, 25.028423>,  <37.663742, 40.132774, 25.015100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762169, 40.351257, 25.028423>,  <37.926212, 40.715397, 25.050629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762169, 40.351257, 25.028423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084894, -0.022498, 0.996136,
		-0.908076, 0.413238, -0.068056,
		-0.410110, -0.910345, -0.055511,
		37.639137, 40.078156, 25.011770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387775, 40.624649, 25.619816>,  <37.926212, 40.715397, 25.050629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387775, 40.624649, 25.619816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438526, 40.244289, 25.506897>,  <37.468975, 40.016075, 25.439146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438526, 40.244289, 25.506897>,  <37.387775, 40.624649, 25.619816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438526, 40.244289, 25.506897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212197, -0.304030, 0.928729,
		-0.968956, -0.057929, -0.240352,
		0.126875, -0.950900, -0.282299,
		37.476589, 39.959019, 25.422207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852909, 40.275818, 25.785660>,  <37.387775, 40.624649, 25.619816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852909, 40.275818, 25.785660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113510, 39.972599, 25.773542>,  <37.269871, 39.790668, 25.766272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113510, 39.972599, 25.773542>,  <36.852909, 40.275818, 25.785660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113510, 39.972599, 25.773542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260869, -0.261340, 0.929327,
		-0.712388, -0.597554, -0.368013,
		0.651499, -0.758044, -0.030292,
		37.308960, 39.745186, 25.764454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513824, 39.677933, 25.931923>,  <36.852909, 40.275818, 25.785660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513824, 39.677933, 25.931923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899384, 39.601826, 26.006441>,  <37.130718, 39.556160, 26.051151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899384, 39.601826, 26.006441>,  <36.513824, 39.677933, 25.931923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899384, 39.601826, 26.006441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255883, -0.468213, 0.845754,
		-0.073694, -0.862888, -0.499994,
		0.963895, -0.190267, 0.186293,
		37.188553, 39.544746, 26.062328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517208, 39.002968, 26.196157>,  <36.513824, 39.677933, 25.931923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517208, 39.002968, 26.196157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884048, 39.128094, 26.295006>,  <37.104153, 39.203171, 26.354315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884048, 39.128094, 26.295006>,  <36.517208, 39.002968, 26.196157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884048, 39.128094, 26.295006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125251, -0.362408, 0.923565,
		0.378463, -0.877957, -0.293185,
		0.917103, 0.312814, 0.247123,
		37.159180, 39.221939, 26.369143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958820, 38.369202, 26.424704>,  <36.517208, 39.002968, 26.196157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958820, 38.369202, 26.424704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114246, 38.703392, 26.580139>,  <37.207504, 38.903904, 26.673401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114246, 38.703392, 26.580139>,  <36.958820, 38.369202, 26.424704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114246, 38.703392, 26.580139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087864, -0.386209, 0.918217,
		0.917221, -0.390933, -0.076661,
		0.388568, 0.835472, 0.388588,
		37.230816, 38.954033, 26.696716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434422, 38.133537, 26.887424>,  <36.958820, 38.369202, 26.424704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434422, 38.133537, 26.887424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344982, 38.511806, 26.981827>,  <37.291317, 38.738770, 27.038467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344982, 38.511806, 26.981827>,  <37.434422, 38.133537, 26.887424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344982, 38.511806, 26.981827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075626, -0.258240, 0.963116,
		0.971743, 0.197502, 0.129259,
		-0.223597, 0.945677, 0.236007,
		37.277905, 38.795509, 27.052629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678806, 38.169838, 27.522036>,  <37.434422, 38.133537, 26.887424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678806, 38.169838, 27.522036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493259, 38.523991, 27.534214>,  <37.381931, 38.736481, 27.541521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493259, 38.523991, 27.534214>,  <37.678806, 38.169838, 27.522036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493259, 38.523991, 27.534214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102153, -0.087595, 0.990905,
		0.879996, 0.456537, 0.131076,
		-0.463866, 0.885382, 0.030447,
		37.354099, 38.789604, 27.543348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939407, 38.585987, 27.992670>,  <37.678806, 38.169838, 27.522036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939407, 38.585987, 27.992670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577923, 38.754642, 27.962959>,  <37.361031, 38.855835, 27.945133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577923, 38.754642, 27.962959>,  <37.939407, 38.585987, 27.992670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577923, 38.754642, 27.962959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046924, 0.074902, 0.996086,
		0.425555, 0.903664, -0.047904,
		-0.903715, 0.421641, -0.074279,
		37.306808, 38.881134, 27.940676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005116, 39.202156, 28.441202>,  <37.939407, 38.585987, 27.992670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005116, 39.202156, 28.441202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614201, 39.133759, 28.391125>,  <37.379650, 39.092720, 28.361078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614201, 39.133759, 28.391125>,  <38.005116, 39.202156, 28.441202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614201, 39.133759, 28.391125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132124, 0.029727, 0.990787,
		-0.165697, 0.984823, -0.051644,
		-0.977286, -0.170994, -0.125194,
		37.321014, 39.082458, 28.353567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550945, 39.737808, 28.751621>,  <38.005116, 39.202156, 28.441202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550945, 39.737808, 28.751621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338356, 39.399235, 28.738472>,  <37.210804, 39.196091, 28.730583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338356, 39.399235, 28.738472>,  <37.550945, 39.737808, 28.751621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338356, 39.399235, 28.738472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332499, 0.172766, 0.927144,
		-0.779091, 0.503682, -0.373260,
		-0.531472, -0.846438, -0.032873,
		37.178913, 39.145302, 28.728611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089241, 39.843658, 29.278082>,  <37.550945, 39.737808, 28.751621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089241, 39.843658, 29.278082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008442, 39.461956, 29.189901>,  <36.959961, 39.232937, 29.136993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008442, 39.461956, 29.189901>,  <37.089241, 39.843658, 29.278082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008442, 39.461956, 29.189901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352543, -0.139157, 0.925391,
		-0.913734, 0.264649, -0.308304,
		-0.202001, -0.954251, -0.220453,
		36.947842, 39.175682, 29.123766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402943, 39.730839, 29.487574>,  <37.089241, 39.843658, 29.278082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402943, 39.730839, 29.487574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573017, 39.368965, 29.476484>,  <36.675060, 39.151840, 29.469831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573017, 39.368965, 29.476484>,  <36.402943, 39.730839, 29.487574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573017, 39.368965, 29.476484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400659, -0.215588, 0.890502,
		-0.811599, -0.367519, -0.454133,
		0.425182, -0.904683, -0.027721,
		36.700573, 39.097561, 29.468168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888241, 39.324596, 29.610754>,  <36.402943, 39.730839, 29.487574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888241, 39.324596, 29.610754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228760, 39.143288, 29.716465>,  <36.433071, 39.034500, 29.779892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228760, 39.143288, 29.716465>,  <35.888241, 39.324596, 29.610754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228760, 39.143288, 29.716465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400452, -0.235836, 0.885449,
		-0.339026, -0.859606, -0.382281,
		0.851293, -0.453275, 0.264277,
		36.484146, 39.007305, 29.795748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700092, 38.702053, 30.088514>,  <35.888241, 39.324596, 29.610754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700092, 38.702053, 30.088514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087505, 38.782581, 30.147038>,  <36.319954, 38.830898, 30.182152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087505, 38.782581, 30.147038>,  <35.700092, 38.702053, 30.088514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087505, 38.782581, 30.147038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122583, -0.125706, 0.984465,
		0.216587, -0.971425, -0.097072,
		0.968537, 0.201323, 0.146306,
		36.378067, 38.842979, 30.190929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918995, 38.292210, 30.616564>,  <35.700092, 38.702053, 30.088514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918995, 38.292210, 30.616564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196407, 38.579296, 30.591625>,  <36.362854, 38.751549, 30.576662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196407, 38.579296, 30.591625>,  <35.918995, 38.292210, 30.616564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196407, 38.579296, 30.591625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074971, 0.157977, 0.984593,
		0.716512, -0.678174, 0.163371,
		0.693534, 0.717721, -0.062349,
		36.404469, 38.794613, 30.572920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438278, 38.097675, 31.203207>,  <35.918995, 38.292210, 30.616564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438278, 38.097675, 31.203207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489845, 38.478249, 31.091375>,  <36.520786, 38.706593, 31.024277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489845, 38.478249, 31.091375>,  <36.438278, 38.097675, 31.203207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489845, 38.478249, 31.091375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240943, 0.243430, 0.939515,
		0.961939, -0.188480, -0.197858,
		0.128915, 0.951429, -0.279578,
		36.528519, 38.763676, 31.007502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066753, 38.167908, 31.325953>,  <36.438278, 38.097675, 31.203207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066753, 38.167908, 31.325953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869240, 38.515709, 31.330605>,  <36.750732, 38.724392, 31.333397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869240, 38.515709, 31.330605>,  <37.066753, 38.167908, 31.325953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869240, 38.515709, 31.330605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267600, 0.139215, 0.953420,
		0.827384, 0.473899, -0.301422,
		-0.493787, 0.869505, 0.011631,
		36.721104, 38.776562, 31.334093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392719, 38.557915, 31.847090>,  <37.066753, 38.167908, 31.325953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392719, 38.557915, 31.847090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051186, 38.755684, 31.781952>,  <36.846268, 38.874344, 31.742868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051186, 38.755684, 31.781952>,  <37.392719, 38.557915, 31.847090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051186, 38.755684, 31.781952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041854, 0.246618, 0.968208,
		0.518862, 0.833504, -0.189877,
		-0.853832, 0.494420, -0.162846,
		36.795036, 38.904011, 31.733097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438145, 39.184227, 32.270702>,  <37.392719, 38.557915, 31.847090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438145, 39.184227, 32.270702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049561, 39.114101, 32.206791>,  <36.816410, 39.072025, 32.168446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049561, 39.114101, 32.206791>,  <37.438145, 39.184227, 32.270702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049561, 39.114101, 32.206791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204767, 0.279826, 0.937959,
		-0.119723, 0.943909, -0.307738,
		-0.971461, -0.175310, -0.159780,
		36.758121, 39.061508, 32.158855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134022, 39.752209, 32.682278>,  <37.438145, 39.184227, 32.270702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134022, 39.752209, 32.682278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827919, 39.509739, 32.595619>,  <36.644257, 39.364258, 32.543625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827919, 39.509739, 32.595619>,  <37.134022, 39.752209, 32.682278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827919, 39.509739, 32.595619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331623, 0.082776, 0.939774,
		-0.551733, 0.791013, -0.264366,
		-0.765256, -0.606174, -0.216647,
		36.598343, 39.327888, 32.530624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442726, 40.079819, 32.806725>,  <37.134022, 39.752209, 32.682278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442726, 40.079819, 32.806725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407410, 39.684132, 32.853470>,  <36.386219, 39.446720, 32.881519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407410, 39.684132, 32.853470>,  <36.442726, 40.079819, 32.806725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407410, 39.684132, 32.853470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308942, 0.138733, 0.940908,
		-0.946974, 0.046965, -0.317859,
		-0.088287, -0.989216, 0.116867,
		36.380924, 39.387367, 32.888531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826168, 39.928661, 33.124638>,  <36.442726, 40.079819, 32.806725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826168, 39.928661, 33.124638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050369, 39.606892, 33.203362>,  <36.184891, 39.413830, 33.250595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050369, 39.606892, 33.203362>,  <35.826168, 39.928661, 33.124638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050369, 39.606892, 33.203362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259555, 0.055040, 0.964159,
		-0.786428, -0.591495, -0.177943,
		0.560501, -0.804428, 0.196810,
		36.218521, 39.365562, 33.262405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568264, 39.776009, 33.756771>,  <35.826168, 39.928661, 33.124638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568264, 39.776009, 33.756771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875183, 39.521099, 33.728119>,  <36.059334, 39.368153, 33.710926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875183, 39.521099, 33.728119>,  <35.568264, 39.776009, 33.756771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875183, 39.521099, 33.728119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197338, 0.128355, 0.971896,
		-0.610173, -0.759871, 0.224245,
		0.767298, -0.637276, -0.071633,
		36.105373, 39.329918, 33.706631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351753, 39.168541, 34.086224>,  <35.568264, 39.776009, 33.756771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351753, 39.168541, 34.086224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749981, 39.202290, 34.102829>,  <35.988918, 39.222538, 34.112793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749981, 39.202290, 34.102829>,  <35.351753, 39.168541, 34.086224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749981, 39.202290, 34.102829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052639, 0.134205, 0.989555,
		0.077916, -0.987356, 0.138051,
		0.995570, 0.084369, 0.041517,
		36.048653, 39.227600, 34.115284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636192, 38.801754, 34.740929>,  <35.351753, 39.168541, 34.086224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636192, 38.801754, 34.740929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934254, 39.052200, 34.649090>,  <36.113091, 39.202469, 34.593987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934254, 39.052200, 34.649090>,  <35.636192, 38.801754, 34.740929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934254, 39.052200, 34.649090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234765, 0.075969, 0.969079,
		0.624203, -0.776017, -0.090382,
		0.745155, 0.626120, -0.229602,
		36.157799, 39.240036, 34.580208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242626, 38.493912, 35.147663>,  <35.636192, 38.801754, 34.740929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242626, 38.493912, 35.147663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312183, 38.874599, 35.046474>,  <36.353920, 39.103012, 34.985760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312183, 38.874599, 35.046474>,  <36.242626, 38.493912, 35.147663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312183, 38.874599, 35.046474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519273, 0.129654, 0.844716,
		0.836729, -0.278256, -0.471655,
		0.173895, 0.951716, -0.252976,
		36.364353, 39.160114, 34.970581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942760, 38.527981, 35.274860>,  <36.242626, 38.493912, 35.147663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942760, 38.527981, 35.274860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818993, 38.907967, 35.291916>,  <36.744732, 39.135960, 35.302151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818993, 38.907967, 35.291916>,  <36.942760, 38.527981, 35.274860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818993, 38.907967, 35.291916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536543, 0.137387, 0.832614,
		0.785099, 0.280506, -0.552210,
		-0.309420, 0.949969, 0.042641,
		36.726166, 39.192959, 35.304707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621765, 38.923805, 35.456795>,  <36.942760, 38.527981, 35.274860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621765, 38.923805, 35.456795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286476, 39.123119, 35.545429>,  <37.085304, 39.242706, 35.598610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286476, 39.123119, 35.545429>,  <37.621765, 38.923805, 35.456795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286476, 39.123119, 35.545429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482329, 0.487821, 0.727592,
		0.254452, 0.716759, -0.649238,
		-0.838220, 0.498284, 0.221587,
		37.035011, 39.272606, 35.611904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899624, 39.385296, 35.983261>,  <37.621765, 38.923805, 35.456795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899624, 39.385296, 35.983261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223278, 39.158028, 35.923283>,  <38.417469, 39.021667, 35.887295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223278, 39.158028, 35.923283>,  <37.899624, 39.385296, 35.983261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223278, 39.158028, 35.923283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270768, 0.586964, -0.762993,
		0.521527, 0.576760, 0.628775,
		0.809131, -0.568174, -0.149950,
		38.466019, 38.987576, 35.878296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464947, 39.781464, 35.919983>,  <37.899624, 39.385296, 35.983261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464947, 39.781464, 35.919983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550999, 39.448322, 35.715992>,  <38.602631, 39.248436, 35.593597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550999, 39.448322, 35.715992>,  <38.464947, 39.781464, 35.919983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550999, 39.448322, 35.715992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401586, 0.551453, -0.731183,
		0.890195, -0.047498, 0.453097,
		0.215132, -0.832853, -0.509975,
		38.615540, 39.198467, 35.563000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939178, 39.926411, 35.399925>,  <38.464947, 39.781464, 35.919983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939178, 39.926411, 35.399925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860245, 39.556316, 35.270313>,  <38.812885, 39.334259, 35.192547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860245, 39.556316, 35.270313>,  <38.939178, 39.926411, 35.399925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860245, 39.556316, 35.270313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437142, 0.212799, -0.873855,
		0.877477, -0.314088, 0.362467,
		-0.197335, -0.925238, -0.324028,
		38.801044, 39.278744, 35.173103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558250, 39.735947, 35.066509>,  <38.939178, 39.926411, 35.399925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558250, 39.735947, 35.066509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288368, 39.482578, 34.914955>,  <39.126438, 39.330559, 34.824020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288368, 39.482578, 34.914955>,  <39.558250, 39.735947, 35.066509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288368, 39.482578, 34.914955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475740, 0.019262, -0.879375,
		0.564309, -0.773571, 0.288346,
		-0.674705, -0.633417, -0.378889,
		39.085957, 39.292553, 34.801289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969067, 39.346115, 34.641926>,  <39.558250, 39.735947, 35.066509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969067, 39.346115, 34.641926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594105, 39.293941, 34.512775>,  <39.369125, 39.262638, 34.435284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594105, 39.293941, 34.512775>,  <39.969067, 39.346115, 34.641926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594105, 39.293941, 34.512775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315001, 0.077656, -0.945909,
		0.148455, -0.988411, -0.031708,
		-0.937408, -0.130437, -0.322879,
		39.312881, 39.254810, 34.415913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962883, 38.737808, 34.140484>,  <39.969067, 39.346115, 34.641926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962883, 38.737808, 34.140484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622730, 38.931370, 34.057846>,  <39.418636, 39.047508, 34.008263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622730, 38.931370, 34.057846>,  <39.962883, 38.737808, 34.140484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622730, 38.931370, 34.057846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117743, -0.207670, -0.971087,
		-0.512815, -0.850124, 0.119624,
		-0.850386, 0.483903, -0.206593,
		39.367615, 39.076542, 33.995869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709591, 38.413265, 33.580254>,  <39.962883, 38.737808, 34.140484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709591, 38.413265, 33.580254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485783, 38.743618, 33.552361>,  <39.351498, 38.941830, 33.535625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485783, 38.743618, 33.552361>,  <39.709591, 38.413265, 33.580254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485783, 38.743618, 33.552361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057534, -0.122638, -0.990782,
		-0.826820, -0.550346, 0.116134,
		-0.559516, 0.825881, -0.069736,
		39.317928, 38.991383, 33.531441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128471, 38.317307, 33.143940>,  <39.709591, 38.413265, 33.580254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128471, 38.317307, 33.143940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175598, 38.714054, 33.124710>,  <39.203876, 38.952103, 33.113171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175598, 38.714054, 33.124710>,  <39.128471, 38.317307, 33.143940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175598, 38.714054, 33.124710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007768, -0.047490, -0.998842,
		-0.993005, 0.118056, 0.002110,
		0.117819, 0.991871, -0.048075,
		39.210945, 39.011616, 33.110287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799694, 38.646519, 32.540047>,  <39.128471, 38.317307, 33.143940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799694, 38.646519, 32.540047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049950, 38.948055, 32.620346>,  <39.200104, 39.128979, 32.668526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049950, 38.948055, 32.620346>,  <38.799694, 38.646519, 32.540047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049950, 38.948055, 32.620346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048459, 0.219278, -0.974458,
		-0.778608, 0.619385, 0.100658,
		0.625636, 0.753843, 0.200747,
		39.237640, 39.174210, 32.680569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663349, 39.142288, 32.056755>,  <38.799694, 38.646519, 32.540047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663349, 39.142288, 32.056755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016747, 39.281609, 32.182056>,  <39.228786, 39.365200, 32.257236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016747, 39.281609, 32.182056>,  <38.663349, 39.142288, 32.056755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016747, 39.281609, 32.182056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288788, 0.121545, -0.949647,
		-0.368832, 0.929471, 0.006801,
		0.883496, 0.348296, 0.313249,
		39.281796, 39.386097, 32.276031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780560, 39.833324, 31.706182>,  <38.663349, 39.142288, 32.056755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780560, 39.833324, 31.706182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121029, 39.657204, 31.820471>,  <39.325310, 39.551529, 31.889044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121029, 39.657204, 31.820471>,  <38.780560, 39.833324, 31.706182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121029, 39.657204, 31.820471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382360, 0.147207, -0.912212,
		0.359591, 0.885699, 0.293653,
		0.851173, -0.440304, 0.285722,
		39.376381, 39.525112, 31.906187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248543, 40.363071, 31.635334>,  <38.780560, 39.833324, 31.706182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248543, 40.363071, 31.635334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423443, 40.005428, 31.596586>,  <39.528381, 39.790844, 31.573338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423443, 40.005428, 31.596586>,  <39.248543, 40.363071, 31.635334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423443, 40.005428, 31.596586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343907, 0.265756, -0.900612,
		0.830989, 0.360476, 0.423692,
		0.437248, -0.894109, -0.096870,
		39.554619, 39.737194, 31.567526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822491, 40.576504, 31.241989>,  <39.248543, 40.363071, 31.635334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822491, 40.576504, 31.241989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871719, 40.179573, 31.237413>,  <39.901257, 39.941414, 31.234667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871719, 40.179573, 31.237413>,  <39.822491, 40.576504, 31.241989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871719, 40.179573, 31.237413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366394, 0.056150, -0.928764,
		0.922284, 0.110117, 0.370495,
		0.123076, -0.992331, -0.011440,
		39.908642, 39.881874, 31.233982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508358, 40.475639, 31.010811>,  <39.822491, 40.576504, 31.241989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508358, 40.475639, 31.010811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301422, 40.143520, 30.927891>,  <40.177261, 39.944248, 30.878138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301422, 40.143520, 30.927891>,  <40.508358, 40.475639, 31.010811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301422, 40.143520, 30.927891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487894, -0.087142, -0.868542,
		0.703082, -0.550469, 0.450178,
		-0.517335, -0.830295, -0.207302,
		40.146221, 39.894432, 30.865700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938152, 40.002914, 30.604549>,  <40.508358, 40.475639, 31.010811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938152, 40.002914, 30.604549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562683, 39.891697, 30.522972>,  <40.337402, 39.824966, 30.474026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562683, 39.891697, 30.522972>,  <40.938152, 40.002914, 30.604549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562683, 39.891697, 30.522972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290694, -0.319959, -0.901733,
		0.185465, -0.905715, 0.381161,
		-0.938669, -0.278041, -0.203945,
		40.281082, 39.808285, 30.461788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995171, 39.425930, 30.222361>,  <40.938152, 40.002914, 30.604549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995171, 39.425930, 30.222361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617069, 39.527191, 30.139992>,  <40.390209, 39.587948, 30.090570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617069, 39.527191, 30.139992>,  <40.995171, 39.425930, 30.222361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617069, 39.527191, 30.139992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082622, -0.424806, -0.901506,
		-0.315692, -0.869169, 0.380635,
		-0.945258, 0.253150, -0.205921,
		40.333492, 39.603138, 30.078215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760696, 38.831581, 29.795954>,  <40.995171, 39.425930, 30.222361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760696, 38.831581, 29.795954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482296, 39.115536, 29.752792>,  <40.315254, 39.285908, 29.726896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482296, 39.115536, 29.752792>,  <40.760696, 38.831581, 29.795954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482296, 39.115536, 29.752792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235451, -0.367599, -0.899686,
		-0.678337, -0.600779, 0.422993,
		-0.696004, 0.709884, -0.107902,
		40.273495, 39.328503, 29.720423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143215, 38.453182, 29.614944>,  <40.760696, 38.831581, 29.795954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143215, 38.453182, 29.614944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089260, 38.831020, 29.495247>,  <40.056889, 39.057724, 29.423428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089260, 38.831020, 29.495247>,  <40.143215, 38.453182, 29.614944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089260, 38.831020, 29.495247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240355, -0.324177, -0.914953,
		-0.961267, -0.051491, 0.270766,
		-0.134888, 0.944594, -0.299244,
		40.048794, 39.114399, 29.405474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540089, 38.575478, 29.325983>,  <40.143215, 38.453182, 29.614944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540089, 38.575478, 29.325983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757057, 38.866440, 29.157862>,  <39.887238, 39.041019, 29.056990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757057, 38.866440, 29.157862>,  <39.540089, 38.575478, 29.325983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757057, 38.866440, 29.157862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357726, -0.252689, -0.898988,
		-0.760137, 0.637987, 0.123148,
		0.542425, 0.727407, -0.420302,
		39.919785, 39.084663, 29.031771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112999, 38.836472, 28.864817>,  <39.540089, 38.575478, 29.325983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112999, 38.836472, 28.864817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471119, 38.961609, 28.737972>,  <39.685993, 39.036694, 28.661865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471119, 38.961609, 28.737972>,  <39.112999, 38.836472, 28.864817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471119, 38.961609, 28.737972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262800, -0.203849, -0.943070,
		-0.359680, 0.927670, -0.100291,
		0.895302, 0.312847, -0.317112,
		39.739708, 39.055462, 28.642839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090950, 39.327644, 28.347383>,  <39.112999, 38.836472, 28.864817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090950, 39.327644, 28.347383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450935, 39.170288, 28.272221>,  <39.666927, 39.075874, 28.227123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450935, 39.170288, 28.272221>,  <39.090950, 39.327644, 28.347383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450935, 39.170288, 28.272221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335604, -0.350022, -0.874560,
		0.278271, 0.850134, -0.447031,
		0.899964, -0.393390, -0.187907,
		39.720924, 39.052273, 28.215849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166103, 39.371902, 27.700302>,  <39.090950, 39.327644, 28.347383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166103, 39.371902, 27.700302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482346, 39.139091, 27.776386>,  <39.672092, 38.999405, 27.822037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482346, 39.139091, 27.776386>,  <39.166103, 39.371902, 27.700302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482346, 39.139091, 27.776386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085693, -0.412751, -0.906804,
		0.606297, 0.700627, -0.376200,
		0.790608, -0.582030, 0.190211,
		39.719528, 38.964481, 27.833450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717983, 39.638130, 27.156452>,  <39.166103, 39.371902, 27.700302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717983, 39.638130, 27.156452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784363, 39.264305, 27.282341>,  <39.824192, 39.040009, 27.357874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784363, 39.264305, 27.282341>,  <39.717983, 39.638130, 27.156452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784363, 39.264305, 27.282341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004952, -0.319931, -0.947428,
		0.986122, 0.155668, -0.057721,
		0.165951, -0.934565, 0.314720,
		39.834148, 38.983936, 27.376757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342560, 39.378208, 26.790056>,  <39.717983, 39.638130, 27.156452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342560, 39.378208, 26.790056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140766, 39.054882, 26.911463>,  <40.019691, 38.860886, 26.984306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140766, 39.054882, 26.911463>,  <40.342560, 39.378208, 26.790056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140766, 39.054882, 26.911463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084280, -0.395950, -0.914396,
		0.859298, -0.435717, 0.267875,
		-0.504483, -0.808315, 0.303517,
		39.989422, 38.812386, 27.002518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690960, 38.753208, 26.506742>,  <40.342560, 39.378208, 26.790056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690960, 38.753208, 26.506742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319885, 38.630394, 26.591721>,  <40.097240, 38.556705, 26.642708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319885, 38.630394, 26.591721>,  <40.690960, 38.753208, 26.506742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319885, 38.630394, 26.591721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096745, -0.351894, -0.931027,
		0.360612, -0.884252, 0.296743,
		-0.927685, -0.307031, 0.212444,
		40.041580, 38.538284, 26.655455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680630, 38.045013, 26.294270>,  <40.690960, 38.753208, 26.506742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680630, 38.045013, 26.294270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294491, 38.146290, 26.319551>,  <40.062809, 38.207058, 26.334721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294491, 38.146290, 26.319551>,  <40.680630, 38.045013, 26.294270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294491, 38.146290, 26.319551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216043, -0.639521, -0.737793,
		-0.146383, -0.725882, 0.672062,
		-0.965348, 0.253195, 0.063207,
		40.004887, 38.222248, 26.338514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401585, 37.455460, 26.059780>,  <40.680630, 38.045013, 26.294270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401585, 37.455460, 26.059780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098984, 37.714909, 26.026339>,  <39.917423, 37.870579, 26.006273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098984, 37.714909, 26.026339>,  <40.401585, 37.455460, 26.059780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098984, 37.714909, 26.026339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261247, -0.416911, -0.870595,
		-0.599543, -0.636768, 0.484846,
		-0.756504, 0.648623, -0.083602,
		39.872032, 37.909496, 26.001259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705944, 37.112045, 26.089775>,  <40.401585, 37.455460, 26.059780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705944, 37.112045, 26.089775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640942, 37.452309, 25.889788>,  <39.601940, 37.656467, 25.769796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640942, 37.452309, 25.889788>,  <39.705944, 37.112045, 26.089775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640942, 37.452309, 25.889788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287072, -0.525545, -0.800870,
		-0.944023, 0.013376, 0.329608,
		-0.162511, 0.850661, -0.499967,
		39.592190, 37.707508, 25.739798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067673, 36.991352, 25.724878>,  <39.705944, 37.112045, 26.089775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067673, 36.991352, 25.724878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216267, 37.305630, 25.527018>,  <39.305424, 37.494198, 25.408300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216267, 37.305630, 25.527018>,  <39.067673, 36.991352, 25.724878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216267, 37.305630, 25.527018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283747, -0.411210, -0.866253,
		-0.884016, 0.462158, 0.070179,
		0.371487, 0.785695, -0.494652,
		39.327713, 37.541340, 25.378622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468105, 37.307777, 25.230507>,  <39.067673, 36.991352, 25.724878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468105, 37.307777, 25.230507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837692, 37.394905, 25.104752>,  <39.059444, 37.447182, 25.029299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837692, 37.394905, 25.104752>,  <38.468105, 37.307777, 25.230507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837692, 37.394905, 25.104752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213778, -0.387489, -0.896745,
		-0.317147, 0.895772, -0.311463,
		0.923968, 0.217816, -0.314387,
		39.114883, 37.460251, 25.010435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380905, 37.629890, 24.569855>,  <38.468105, 37.307777, 25.230507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380905, 37.629890, 24.569855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770683, 37.540371, 24.577641>,  <39.004551, 37.486660, 24.582312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770683, 37.540371, 24.577641>,  <38.380905, 37.629890, 24.569855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770683, 37.540371, 24.577641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028580, -0.209455, -0.977400,
		0.222818, 0.951863, -0.210498,
		0.974441, -0.223798, 0.019466,
		39.063015, 37.473232, 24.583481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752537, 38.008087, 23.987259>,  <38.380905, 37.629890, 24.569855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752537, 38.008087, 23.987259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977684, 37.687389, 24.067646>,  <39.112774, 37.494972, 24.115879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977684, 37.687389, 24.067646>,  <38.752537, 38.008087, 23.987259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977684, 37.687389, 24.067646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016864, -0.231954, -0.972580,
		0.826372, 0.550827, -0.117040,
		0.562872, -0.801740, 0.200970,
		39.146545, 37.446869, 24.127937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122337, 38.056530, 23.484510>,  <38.752537, 38.008087, 23.987259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122337, 38.056530, 23.484510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192421, 37.688053, 23.623486>,  <39.234470, 37.466969, 23.706871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192421, 37.688053, 23.623486>,  <39.122337, 38.056530, 23.484510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192421, 37.688053, 23.623486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093680, -0.335697, -0.937300,
		0.980064, 0.196771, 0.027480,
		0.175209, -0.921189, 0.347438,
		39.244984, 37.411697, 23.727716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663311, 37.729519, 23.014864>,  <39.122337, 38.056530, 23.484510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663311, 37.729519, 23.014864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482967, 37.428669, 23.207130>,  <39.374763, 37.248158, 23.322491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482967, 37.428669, 23.207130>,  <39.663311, 37.729519, 23.014864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482967, 37.428669, 23.207130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023625, -0.528257, -0.848756,
		0.892285, -0.394021, 0.220398,
		-0.450855, -0.752125, 0.480664,
		39.347710, 37.203030, 23.351330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074028, 37.067616, 22.864035>,  <39.663311, 37.729519, 23.014864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074028, 37.067616, 22.864035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700432, 36.982132, 22.978565>,  <39.476273, 36.930840, 23.047283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700432, 36.982132, 22.978565>,  <40.074028, 37.067616, 22.864035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700432, 36.982132, 22.978565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112904, -0.583786, -0.804019,
		0.338982, -0.783276, 0.521124,
		-0.933993, -0.213711, 0.286328,
		39.420235, 36.918018, 23.064465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997292, 36.394417, 22.731882>,  <40.074028, 37.067616, 22.864035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997292, 36.394417, 22.731882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616642, 36.513115, 22.763756>,  <39.388252, 36.584335, 22.782881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616642, 36.513115, 22.763756>,  <39.997292, 36.394417, 22.731882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616642, 36.513115, 22.763756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212743, -0.449230, -0.867717,
		-0.221696, -0.842694, 0.490630,
		-0.951626, 0.296748, 0.079685,
		39.331154, 36.602139, 22.787661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597980, 35.815418, 22.439560>,  <39.997292, 36.394417, 22.731882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597980, 35.815418, 22.439560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348049, 36.127411, 22.425610>,  <39.198090, 36.314606, 22.417240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348049, 36.127411, 22.425610>,  <39.597980, 35.815418, 22.439560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348049, 36.127411, 22.425610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193689, -0.198123, -0.960849,
		-0.756358, -0.593608, 0.274867,
		-0.624826, 0.779985, -0.034876,
		39.160603, 36.361408, 22.415146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071152, 35.395157, 22.181015>,  <39.597980, 35.815418, 22.439560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071152, 35.395157, 22.181015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109177, 35.020607, 22.045864>,  <39.131992, 34.795876, 21.964773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109177, 35.020607, 22.045864>,  <39.071152, 35.395157, 22.181015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109177, 35.020607, 22.045864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302308, -0.296230, 0.906012,
		-0.948459, -0.188269, 0.254914,
		0.095060, -0.936378, -0.337877,
		39.137695, 34.739693, 21.944502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782955, 34.986134, 22.695585>,  <39.071152, 35.395157, 22.181015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782955, 34.986134, 22.695585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054981, 34.776096, 22.490921>,  <39.218197, 34.650074, 22.368122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054981, 34.776096, 22.490921>,  <38.782955, 34.986134, 22.695585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054981, 34.776096, 22.490921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411348, -0.304416, 0.859141,
		-0.606883, -0.794741, 0.008972,
		0.680063, -0.525088, -0.511660,
		39.258999, 34.618568, 22.337423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948017, 34.559635, 23.162352>,  <38.782955, 34.986134, 22.695585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948017, 34.559635, 23.162352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253464, 34.483288, 22.915625>,  <39.436733, 34.437481, 22.767590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253464, 34.483288, 22.915625>,  <38.948017, 34.559635, 23.162352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253464, 34.483288, 22.915625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645497, 0.203469, 0.736162,
		-0.015007, -0.960297, 0.278576,
		0.763616, -0.190867, -0.616816,
		39.482548, 34.426029, 22.730579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347031, 33.982502, 23.373196>,  <38.948017, 34.559635, 23.162352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347031, 33.982502, 23.373196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612453, 34.186146, 23.153925>,  <39.771709, 34.308331, 23.022364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612453, 34.186146, 23.153925>,  <39.347031, 33.982502, 23.373196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612453, 34.186146, 23.153925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652227, -0.034765, 0.757226,
		0.366452, -0.860001, -0.355122,
		0.663561, 0.509107, -0.548175,
		39.811523, 34.338879, 22.989471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001526, 33.796181, 23.647011>,  <39.347031, 33.982502, 23.373196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001526, 33.796181, 23.647011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093529, 34.115196, 23.423929>,  <40.148731, 34.306606, 23.290079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093529, 34.115196, 23.423929>,  <40.001526, 33.796181, 23.647011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093529, 34.115196, 23.423929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703310, 0.259870, 0.661681,
		0.672644, -0.544432, -0.501142,
		0.230009, 0.797535, -0.557705,
		40.162533, 34.354458, 23.256618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809731, 33.818405, 23.739084>,  <40.001526, 33.796181, 23.647011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809731, 33.818405, 23.739084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639969, 34.168076, 23.644682>,  <40.538113, 34.377876, 23.588041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639969, 34.168076, 23.644682>,  <40.809731, 33.818405, 23.739084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639969, 34.168076, 23.644682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535791, 0.452566, 0.712820,
		0.729937, 0.176074, -0.660446,
		-0.424405, 0.874175, -0.236006,
		40.512646, 34.430328, 23.573879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310940, 34.182228, 24.054989>,  <40.809731, 33.818405, 23.739084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310940, 34.182228, 24.054989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008263, 34.432331, 23.978600>,  <40.826656, 34.582394, 23.932766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008263, 34.432331, 23.978600>,  <41.310940, 34.182228, 24.054989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008263, 34.432331, 23.978600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214687, 0.513557, 0.830764,
		0.617519, 0.587631, -0.522838,
		-0.756690, 0.625259, -0.190975,
		40.781254, 34.619907, 23.921307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565216, 34.872169, 24.064068>,  <41.310940, 34.182228, 24.054989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565216, 34.872169, 24.064068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173035, 34.908974, 24.133636>,  <40.937725, 34.931057, 24.175377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173035, 34.908974, 24.133636>,  <41.565216, 34.872169, 24.064068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173035, 34.908974, 24.133636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192182, 0.637348, 0.746226,
		-0.042190, 0.765063, -0.642572,
		-0.980452, 0.092007, 0.173922,
		40.878899, 34.936577, 24.185814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456333, 35.584034, 24.119143>,  <41.565216, 34.872169, 24.064068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456333, 35.584034, 24.119143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138031, 35.438087, 24.312489>,  <40.947048, 35.350521, 24.428497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138031, 35.438087, 24.312489>,  <41.456333, 35.584034, 24.119143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138031, 35.438087, 24.312489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139386, 0.666373, 0.732474,
		-0.589358, 0.650246, -0.479413,
		-0.795757, -0.364866, 0.483367,
		40.899303, 35.328629, 24.457499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305824, 36.216946, 24.423521>,  <41.456333, 35.584034, 24.119143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305824, 36.216946, 24.423521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115524, 35.916172, 24.606064>,  <41.001347, 35.735710, 24.715590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115524, 35.916172, 24.606064>,  <41.305824, 36.216946, 24.423521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115524, 35.916172, 24.606064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090556, 0.474208, 0.875743,
		-0.874908, 0.457958, -0.157511,
		-0.475747, -0.751931, 0.456359,
		40.972801, 35.690594, 24.742971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706589, 36.508648, 24.817751>,  <41.305824, 36.216946, 24.423521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706589, 36.508648, 24.817751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788860, 36.153496, 24.982367>,  <40.838223, 35.940403, 25.081137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788860, 36.153496, 24.982367>,  <40.706589, 36.508648, 24.817751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788860, 36.153496, 24.982367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089811, 0.401631, 0.911387,
		-0.974489, -0.224416, 0.002867,
		0.205681, -0.887879, 0.411540,
		40.850563, 35.887131, 25.105829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280636, 36.434460, 25.453409>,  <40.706589, 36.508648, 24.817751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280636, 36.434460, 25.453409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557171, 36.153564, 25.521425>,  <40.723091, 35.985027, 25.562235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557171, 36.153564, 25.521425>,  <40.280636, 36.434460, 25.453409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557171, 36.153564, 25.521425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078745, 0.307167, 0.948392,
		-0.718228, -0.642269, 0.267654,
		0.691337, -0.702238, 0.170041,
		40.764572, 35.942894, 25.572437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097355, 36.058086, 26.116505>,  <40.280636, 36.434460, 25.453409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097355, 36.058086, 26.116505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493885, 36.016918, 26.083801>,  <40.731804, 35.992218, 26.064180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493885, 36.016918, 26.083801>,  <40.097355, 36.058086, 26.116505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493885, 36.016918, 26.083801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091590, 0.094736, 0.991280,
		-0.094283, -0.990168, 0.103341,
		0.991324, -0.102926, -0.081758,
		40.791283, 35.986042, 26.059275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372532, 35.486176, 26.651352>,  <40.097355, 36.058086, 26.116505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372532, 35.486176, 26.651352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672035, 35.728504, 26.543770>,  <40.851738, 35.873901, 26.479221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672035, 35.728504, 26.543770>,  <40.372532, 35.486176, 26.651352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672035, 35.728504, 26.543770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300063, 0.052000, 0.952501,
		0.591035, -0.793897, -0.142851,
		0.748759, 0.605825, -0.268953,
		40.896664, 35.910252, 26.463083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011051, 35.202862, 26.926897>,  <40.372532, 35.486176, 26.651352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011051, 35.202862, 26.926897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113140, 35.579945, 26.840952>,  <41.174393, 35.806194, 26.789385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113140, 35.579945, 26.840952>,  <41.011051, 35.202862, 26.926897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113140, 35.579945, 26.840952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387392, 0.103905, 0.916041,
		0.885884, -0.317026, -0.338679,
		0.255218, 0.942708, -0.214862,
		41.189705, 35.862759, 26.776493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682301, 35.211544, 27.202076>,  <41.011051, 35.202862, 26.926897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682301, 35.211544, 27.202076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543045, 35.582531, 27.147524>,  <41.459492, 35.805122, 27.114794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543045, 35.582531, 27.147524>,  <41.682301, 35.211544, 27.202076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543045, 35.582531, 27.147524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238034, 0.228170, 0.944075,
		0.906718, 0.296208, -0.300204,
		-0.348141, 0.927469, -0.136378,
		41.438602, 35.860771, 27.106611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151836, 35.752129, 27.580118>,  <41.682301, 35.211544, 27.202076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151836, 35.752129, 27.580118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805702, 35.938187, 27.505472>,  <41.598022, 36.049824, 27.460684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805702, 35.938187, 27.505472>,  <42.151836, 35.752129, 27.580118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805702, 35.938187, 27.505472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007738, 0.384701, 0.923009,
		0.501128, 0.797271, -0.336496,
		-0.865339, 0.465149, -0.186615,
		41.546101, 36.077732, 27.449488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371540, 36.393890, 27.866623>,  <42.151836, 35.752129, 27.580118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371540, 36.393890, 27.866623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971855, 36.392097, 27.850866>,  <41.732044, 36.391022, 27.841413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971855, 36.392097, 27.850866>,  <42.371540, 36.393890, 27.866623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971855, 36.392097, 27.850866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035598, 0.538777, 0.841696,
		0.017447, 0.842437, -0.538513,
		-0.999214, -0.004485, -0.039389,
		41.672092, 36.390751, 27.839050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131390, 37.107731, 28.000004>,  <42.371540, 36.393890, 27.866623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131390, 37.107731, 28.000004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803829, 36.886940, 28.062887>,  <41.607292, 36.754463, 28.100616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803829, 36.886940, 28.062887>,  <42.131390, 37.107731, 28.000004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803829, 36.886940, 28.062887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163298, 0.486678, 0.858183,
		-0.550211, 0.677097, -0.488679,
		-0.818903, -0.551982, 0.157207,
		41.558159, 36.721344, 28.110050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647335, 37.558613, 28.106464>,  <42.131390, 37.107731, 28.000004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647335, 37.558613, 28.106464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514122, 37.227245, 28.286598>,  <41.434193, 37.028423, 28.394678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514122, 37.227245, 28.286598>,  <41.647335, 37.558613, 28.106464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514122, 37.227245, 28.286598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133135, 0.514129, 0.847317,
		-0.933468, 0.222231, -0.281516,
		-0.333035, -0.828423, 0.450336,
		41.414211, 36.978718, 28.421700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053871, 37.736725, 28.504875>,  <41.647335, 37.558613, 28.106464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053871, 37.736725, 28.504875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167904, 37.396820, 28.682245>,  <41.236324, 37.192875, 28.788668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167904, 37.396820, 28.682245>,  <41.053871, 37.736725, 28.504875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167904, 37.396820, 28.682245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134527, 0.422570, 0.896291,
		-0.949015, -0.315172, 0.006152,
		0.285086, -0.849765, 0.443424,
		41.253429, 37.141891, 28.815273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485916, 37.715061, 29.079031>,  <41.053871, 37.736725, 28.504875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485916, 37.715061, 29.079031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787228, 37.476654, 29.190260>,  <40.968014, 37.333611, 29.256998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787228, 37.476654, 29.190260>,  <40.485916, 37.715061, 29.079031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787228, 37.476654, 29.190260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063718, 0.354674, 0.932816,
		-0.654603, -0.720392, 0.229193,
		0.753283, -0.596021, 0.278073,
		41.013214, 37.297848, 29.273682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291859, 37.525391, 29.694656>,  <40.485916, 37.715061, 29.079031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291859, 37.525391, 29.694656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684818, 37.454018, 29.716764>,  <40.920593, 37.411194, 29.730030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684818, 37.454018, 29.716764>,  <40.291859, 37.525391, 29.694656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684818, 37.454018, 29.716764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040648, 0.084594, 0.995586,
		-0.182317, -0.980310, 0.075852,
		0.982399, -0.178429, 0.055270,
		40.979538, 37.400490, 29.733345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490002, 36.948132, 30.368429>,  <40.291859, 37.525391, 29.694656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490002, 36.948132, 30.368429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807739, 37.175808, 30.283541>,  <40.998383, 37.312412, 30.232609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807739, 37.175808, 30.283541>,  <40.490002, 36.948132, 30.368429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807739, 37.175808, 30.283541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281096, -0.034713, 0.959052,
		0.538515, -0.821473, -0.187571,
		0.794347, 0.569189, -0.212219,
		41.046043, 37.346565, 30.219875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070118, 36.626492, 30.752182>,  <40.490002, 36.948132, 30.368429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070118, 36.626492, 30.752182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198284, 36.998493, 30.680162>,  <41.275185, 37.221695, 30.636950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198284, 36.998493, 30.680162>,  <41.070118, 36.626492, 30.752182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198284, 36.998493, 30.680162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338804, 0.064987, 0.938610,
		0.884616, -0.361748, -0.294268,
		0.320417, 0.930008, -0.180050,
		41.294411, 37.277496, 30.626148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791962, 36.708580, 30.986235>,  <41.070118, 36.626492, 30.752182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791962, 36.708580, 30.986235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642902, 37.079044, 30.963032>,  <41.553467, 37.301323, 30.949110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642902, 37.079044, 30.963032>,  <41.791962, 36.708580, 30.986235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642902, 37.079044, 30.963032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004174, 0.060834, 0.998139,
		0.927964, 0.372196, -0.018804,
		-0.372648, 0.926158, -0.058005,
		41.531109, 37.356892, 30.945631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199158, 37.015873, 31.473885>,  <41.791962, 36.708580, 30.986235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199158, 37.015873, 31.473885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898026, 37.275265, 31.428766>,  <41.717346, 37.430901, 31.401695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898026, 37.275265, 31.428766>,  <42.199158, 37.015873, 31.473885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898026, 37.275265, 31.428766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061663, 0.240098, 0.968788,
		0.655317, 0.722380, -0.220741,
		-0.752833, 0.648475, -0.112796,
		41.672176, 37.469807, 31.394928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353100, 37.572357, 31.844299>,  <42.199158, 37.015873, 31.473885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353100, 37.572357, 31.844299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965054, 37.657253, 31.797258>,  <41.732227, 37.708191, 31.769033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965054, 37.657253, 31.797258>,  <42.353100, 37.572357, 31.844299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965054, 37.657253, 31.797258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056394, 0.274187, 0.960021,
		0.235996, 0.937965, -0.254024,
		-0.970116, 0.212236, -0.117603,
		41.674019, 37.720924, 31.761978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188156, 38.260284, 32.173775>,  <42.353100, 37.572357, 31.844299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188156, 38.260284, 32.173775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840179, 38.063755, 32.156784>,  <41.631393, 37.945839, 32.146591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840179, 38.063755, 32.156784>,  <42.188156, 38.260284, 32.173775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840179, 38.063755, 32.156784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136558, 0.157234, 0.978074,
		-0.473868, 0.856669, -0.203878,
		-0.869943, -0.491320, -0.042477,
		41.579197, 37.916359, 32.144039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824917, 38.637890, 32.641323>,  <42.188156, 38.260284, 32.173775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824917, 38.637890, 32.641323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627968, 38.292839, 32.594944>,  <41.509796, 38.085808, 32.567116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627968, 38.292839, 32.594944>,  <41.824917, 38.637890, 32.641323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627968, 38.292839, 32.594944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174088, -0.032915, 0.984180,
		-0.852795, 0.504770, -0.133967,
		-0.492375, -0.862626, -0.115944,
		41.480255, 38.034050, 32.560162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226891, 38.663349, 33.153580>,  <41.824917, 38.637890, 32.641323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226891, 38.663349, 33.153580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230316, 38.272648, 33.067905>,  <41.232372, 38.038227, 33.016499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230316, 38.272648, 33.067905>,  <41.226891, 38.663349, 33.153580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230316, 38.272648, 33.067905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136671, -0.213330, 0.967373,
		-0.990579, 0.020985, -0.135322,
		0.008568, -0.976755, -0.214189,
		41.232887, 37.979622, 33.003651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596226, 38.389423, 33.434471>,  <41.226891, 38.663349, 33.153580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596226, 38.389423, 33.434471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849148, 38.082081, 33.394829>,  <41.000900, 37.897675, 33.371044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849148, 38.082081, 33.394829>,  <40.596226, 38.389423, 33.434471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849148, 38.082081, 33.394829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237977, -0.314370, 0.918987,
		-0.737267, -0.557491, -0.381628,
		0.632301, -0.768358, -0.099105,
		41.038837, 37.851574, 33.365097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228725, 37.813801, 33.676693>,  <40.596226, 38.389423, 33.434471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228725, 37.813801, 33.676693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621979, 37.740948, 33.683247>,  <40.857933, 37.697235, 33.687180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621979, 37.740948, 33.683247>,  <40.228725, 37.813801, 33.676693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621979, 37.740948, 33.683247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062859, -0.252446, 0.965567,
		-0.171727, -0.950315, -0.259638,
		0.983137, -0.182135, 0.016384,
		40.916920, 37.686306, 33.688160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289574, 37.232460, 34.128319>,  <40.228725, 37.813801, 33.676693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289574, 37.232460, 34.128319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665043, 37.368656, 34.106533>,  <40.890324, 37.450375, 34.093464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665043, 37.368656, 34.106533>,  <40.289574, 37.232460, 34.128319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665043, 37.368656, 34.106533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156682, -0.280479, 0.946986,
		0.307163, -0.897440, -0.316625,
		0.938670, 0.340489, -0.054460,
		40.946644, 37.470802, 34.090195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806034, 36.705196, 34.233154>,  <40.289574, 37.232460, 34.128319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806034, 36.705196, 34.233154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015030, 37.033817, 34.324421>,  <41.140427, 37.230988, 34.379181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015030, 37.033817, 34.324421>,  <40.806034, 36.705196, 34.233154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015030, 37.033817, 34.324421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312455, -0.433471, 0.845266,
		0.793331, -0.370352, -0.483182,
		0.522492, 0.821548, 0.228168,
		41.171776, 37.280281, 34.392872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445400, 36.461960, 34.461601>,  <40.806034, 36.705196, 34.233154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445400, 36.461960, 34.461601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433830, 36.834255, 34.607422>,  <41.426888, 37.057632, 34.694916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433830, 36.834255, 34.607422>,  <41.445400, 36.461960, 34.461601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433830, 36.834255, 34.607422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180733, -0.353823, 0.917685,
		0.983107, 0.092430, -0.157980,
		-0.028925, 0.930734, 0.364551,
		41.425152, 37.113476, 34.716785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885281, 36.463703, 34.931339>,  <41.445400, 36.461960, 34.461601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885281, 36.463703, 34.931339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669910, 36.784584, 35.034538>,  <41.540688, 36.977112, 35.096458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669910, 36.784584, 35.034538>,  <41.885281, 36.463703, 34.931339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669910, 36.784584, 35.034538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140083, -0.216696, 0.966136,
		0.830947, 0.556335, 0.004299,
		-0.538427, 0.802206, 0.257996,
		41.508381, 37.025246, 35.111938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305710, 36.940376, 35.308823>,  <41.885281, 36.463703, 34.931339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305710, 36.940376, 35.308823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929230, 37.013714, 35.422333>,  <41.703342, 37.057716, 35.490440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929230, 37.013714, 35.422333>,  <42.305710, 36.940376, 35.308823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929230, 37.013714, 35.422333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189742, -0.408122, 0.892992,
		0.279541, 0.894327, 0.349336,
		-0.941199, 0.183344, 0.283778,
		41.646870, 37.068718, 35.507465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291122, 37.271416, 35.871834>,  <42.305710, 36.940376, 35.308823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291122, 37.271416, 35.871834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915485, 37.136154, 35.896343>,  <41.690102, 37.054996, 35.911049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915485, 37.136154, 35.896343>,  <42.291122, 37.271416, 35.871834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915485, 37.136154, 35.896343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223313, -0.464942, 0.856715,
		-0.261215, 0.818218, 0.512139,
		-0.939094, -0.338154, 0.061269,
		41.633759, 37.034706, 35.914722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074455, 37.361374, 36.598511>,  <42.291122, 37.271416, 35.871834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074455, 37.361374, 36.598511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808060, 37.104084, 36.447395>,  <41.648224, 36.949711, 36.356724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808060, 37.104084, 36.447395>,  <42.074455, 37.361374, 36.598511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808060, 37.104084, 36.447395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184830, -0.632942, 0.751813,
		-0.722702, 0.430871, 0.540418,
		-0.665988, -0.643222, -0.377790,
		41.608265, 36.911118, 36.334057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842533, 37.061787, 37.121914>,  <42.074455, 37.361374, 36.598511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842533, 37.061787, 37.121914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719765, 36.801949, 36.843685>,  <41.646103, 36.646046, 36.676750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719765, 36.801949, 36.843685>,  <41.842533, 37.061787, 37.121914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719765, 36.801949, 36.843685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000272, -0.730785, 0.682608,
		-0.951734, 0.209699, 0.224120,
		-0.306925, -0.649600, -0.695570,
		41.627686, 36.607067, 36.635014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312035, 36.735607, 37.371601>,  <41.842533, 37.061787, 37.121914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312035, 36.735607, 37.371601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484653, 36.496925, 37.100986>,  <41.588226, 36.353718, 36.938618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484653, 36.496925, 37.100986>,  <41.312035, 36.735607, 37.371601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484653, 36.496925, 37.100986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005534, -0.751709, 0.659472,
		-0.902071, -0.280852, -0.327703,
		0.431551, -0.596704, -0.676541,
		41.614120, 36.317913, 36.898026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872478, 36.093784, 37.344650>,  <41.312035, 36.735607, 37.371601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872478, 36.093784, 37.344650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241707, 36.000359, 37.222408>,  <41.463242, 35.944305, 37.149063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241707, 36.000359, 37.222408>,  <40.872478, 36.093784, 37.344650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241707, 36.000359, 37.222408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109371, -0.602350, 0.790704,
		-0.368757, -0.763298, -0.530466,
		0.923069, -0.233560, -0.305603,
		41.518627, 35.930290, 37.130726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862137, 35.480206, 37.662289>,  <40.872478, 36.093784, 37.344650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862137, 35.480206, 37.662289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235981, 35.494377, 37.520729>,  <41.460289, 35.502880, 37.435795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235981, 35.494377, 37.520729>,  <40.862137, 35.480206, 37.662289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235981, 35.494377, 37.520729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227695, -0.823996, 0.518830,
		-0.273226, -0.565486, -0.778186,
		0.934613, 0.035431, -0.353896,
		41.516365, 35.505005, 37.414558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996677, 34.906723, 37.087475>,  <40.862137, 35.480206, 37.662289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996677, 34.906723, 37.087475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328045, 35.015331, 37.283436>,  <41.526863, 35.080494, 37.401012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328045, 35.015331, 37.283436>,  <40.996677, 34.906723, 37.087475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328045, 35.015331, 37.283436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148792, -0.949902, 0.274859,
		0.539992, -0.154803, -0.827312,
		0.828414, 0.271519, 0.489906,
		41.576569, 35.096786, 37.430408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337875, 34.345924, 37.029228>,  <40.996677, 34.906723, 37.087475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337875, 34.345924, 37.029228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561180, 34.545692, 37.294231>,  <41.695164, 34.665554, 37.453236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561180, 34.545692, 37.294231>,  <41.337875, 34.345924, 37.029228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561180, 34.545692, 37.294231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518217, -0.833501, 0.191644,
		0.647914, 0.236336, -0.724122,
		0.558264, 0.499421, 0.662510,
		41.728661, 34.695518, 37.492985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106441, 34.244328, 36.990421>,  <41.337875, 34.345924, 37.029228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106441, 34.244328, 36.990421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040581, 34.348583, 37.370937>,  <42.001064, 34.411137, 37.599247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040581, 34.348583, 37.370937>,  <42.106441, 34.244328, 36.990421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040581, 34.348583, 37.370937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528678, -0.790896, 0.308195,
		0.832701, 0.553671, -0.007573,
		-0.164649, 0.260638, 0.951293,
		41.991184, 34.426773, 37.656326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819859, 34.200050, 37.309666>,  <42.106441, 34.244328, 36.990421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819859, 34.200050, 37.309666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531490, 34.195076, 37.586830>,  <42.358471, 34.192093, 37.753128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531490, 34.195076, 37.586830>,  <42.819859, 34.200050, 37.309666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531490, 34.195076, 37.586830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476145, -0.735374, 0.482195,
		0.503549, 0.677548, 0.536066,
		-0.720919, -0.012437, 0.692908,
		42.315216, 34.191345, 37.794701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209949, 34.081963, 37.925941>,  <42.819859, 34.200050, 37.309666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209949, 34.081963, 37.925941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839737, 33.992546, 38.048203>,  <42.617611, 33.938896, 38.121559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839737, 33.992546, 38.048203>,  <43.209949, 34.081963, 37.925941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839737, 33.992546, 38.048203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325441, -0.882233, 0.340225,
		0.193601, 0.414360, 0.889283,
		-0.925531, -0.223541, 0.305651,
		42.562077, 33.925484, 38.139896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310738, 33.839390, 38.480335>,  <43.209949, 34.081963, 37.925941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310738, 33.839390, 38.480335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958054, 33.676441, 38.385139>,  <42.746445, 33.578674, 38.328022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958054, 33.676441, 38.385139>,  <43.310738, 33.839390, 38.480335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958054, 33.676441, 38.385139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326082, -0.890743, 0.316618,
		-0.340964, 0.201563, 0.918214,
		-0.881711, -0.407368, -0.237985,
		42.693539, 33.554230, 38.313744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966148, 33.554474, 39.067513>,  <43.310738, 33.839390, 38.480335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966148, 33.554474, 39.067513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885498, 33.382275, 38.715599>,  <42.837109, 33.278954, 38.504452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885498, 33.382275, 38.715599>,  <42.966148, 33.554474, 39.067513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885498, 33.382275, 38.715599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278420, -0.886367, 0.369915,
		-0.939057, -0.170363, 0.298576,
		-0.201628, -0.430500, -0.879781,
		42.825008, 33.253124, 38.451664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813084, 32.975483, 39.429680>,  <42.966148, 33.554474, 39.067513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813084, 32.975483, 39.429680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808868, 32.936523, 39.031605>,  <42.806339, 32.913147, 38.792759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808868, 32.936523, 39.031605>,  <42.813084, 32.975483, 39.429680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808868, 32.936523, 39.031605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147394, -0.984524, 0.094798,
		-0.989022, -0.145686, 0.024734,
		-0.010541, -0.097403, -0.995189,
		42.805706, 32.907303, 38.733047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538826, 32.395172, 39.250248>,  <42.813084, 32.975483, 39.429680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538826, 32.395172, 39.250248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747566, 32.476929, 38.918972>,  <42.872810, 32.525982, 38.720207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747566, 32.476929, 38.918972>,  <42.538826, 32.395172, 39.250248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747566, 32.476929, 38.918972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425062, -0.904059, 0.044725,
		-0.739590, -0.375372, -0.558661,
		0.521851, 0.204387, -0.828189,
		42.904121, 32.538246, 38.670517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508827, 31.728477, 38.844784>,  <42.538826, 32.395172, 39.250248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508827, 31.728477, 38.844784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815765, 31.967875, 38.752701>,  <42.999928, 32.111511, 38.697449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815765, 31.967875, 38.752701>,  <42.508827, 31.728477, 38.844784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815765, 31.967875, 38.752701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636049, -0.755975, 0.154736,
		-0.081426, -0.265160, -0.960760,
		0.767341, 0.598491, -0.230211,
		43.045967, 32.147423, 38.683636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960407, 31.490170, 38.318287>,  <42.508827, 31.728477, 38.844784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960407, 31.490170, 38.318287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168304, 31.707558, 38.581959>,  <43.293041, 31.837990, 38.740162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168304, 31.707558, 38.581959>,  <42.960407, 31.490170, 38.318287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168304, 31.707558, 38.581959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733336, -0.679632, -0.017875,
		0.438282, 0.492687, -0.751777,
		0.519738, 0.543470, 0.659176,
		43.324226, 31.870598, 38.779713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577888, 31.214340, 38.291977>,  <42.960407, 31.490170, 38.318287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577888, 31.214340, 38.291977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638641, 31.441853, 38.615314>,  <43.675095, 31.578360, 38.809319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638641, 31.441853, 38.615314>,  <43.577888, 31.214340, 38.291977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638641, 31.441853, 38.615314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807736, -0.542769, 0.230139,
		0.569642, 0.617974, -0.541863,
		0.151886, 0.568779, 0.808344,
		43.684208, 31.612486, 38.857819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295029, 31.121859, 38.342327>,  <43.577888, 31.214340, 38.291977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295029, 31.121859, 38.342327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206081, 31.310980, 38.683384>,  <44.152714, 31.424454, 38.888020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206081, 31.310980, 38.683384>,  <44.295029, 31.121859, 38.342327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206081, 31.310980, 38.683384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805164, -0.404100, 0.434067,
		0.549784, 0.783044, -0.290825,
		-0.222371, 0.472805, 0.852647,
		44.139370, 31.452822, 38.939178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881645, 31.519804, 38.630653>,  <44.295029, 31.121859, 38.342327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881645, 31.519804, 38.630653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634510, 31.445452, 38.936260>,  <44.486229, 31.400841, 39.119625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634510, 31.445452, 38.936260>,  <44.881645, 31.519804, 38.630653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634510, 31.445452, 38.936260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738197, -0.471782, 0.482169,
		0.270825, 0.861899, 0.428701,
		-0.617834, -0.185883, 0.764022,
		44.449162, 31.389687, 39.165466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144714, 31.794991, 39.267059>,  <44.881645, 31.519804, 38.630653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144714, 31.794991, 39.267059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897747, 31.519823, 39.419674>,  <44.749569, 31.354723, 39.511242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897747, 31.519823, 39.419674>,  <45.144714, 31.794991, 39.267059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897747, 31.519823, 39.419674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721956, -0.302933, 0.622102,
		-0.312377, 0.659545, 0.683682,
		-0.617414, -0.687919, 0.381533,
		44.712524, 31.313448, 39.534134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184875, 31.742432, 39.934994>,  <45.144714, 31.794991, 39.267059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184875, 31.742432, 39.934994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020767, 31.382689, 39.874550>,  <44.922302, 31.166843, 39.838284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020767, 31.382689, 39.874550>,  <45.184875, 31.742432, 39.934994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020767, 31.382689, 39.874550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728758, -0.422934, 0.538553,
		-0.548261, 0.110831, 0.828931,
		-0.410271, -0.899357, -0.151109,
		44.897686, 31.112881, 39.829216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115486, 31.493116, 40.610725>,  <45.184875, 31.742432, 39.934994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115486, 31.493116, 40.610725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187447, 31.178846, 40.373962>,  <45.230621, 30.990284, 40.231903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187447, 31.178846, 40.373962>,  <45.115486, 31.493116, 40.610725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187447, 31.178846, 40.373962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718435, -0.306081, 0.624632,
		-0.671928, -0.537618, 0.509392,
		0.179899, -0.785673, -0.591908,
		45.241417, 30.943144, 40.196388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439064, 31.151367, 41.193180>,  <45.115486, 31.493116, 40.610725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439064, 31.151367, 41.193180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581718, 31.011925, 40.846474>,  <45.667313, 30.928259, 40.638451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581718, 31.011925, 40.846474>,  <45.439064, 31.151367, 41.193180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581718, 31.011925, 40.846474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855307, -0.251410, 0.453037,
		-0.375846, -0.902921, 0.208505,
		0.356637, -0.348608, -0.866766,
		45.688709, 30.907343, 40.586445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587994, 30.501091, 41.210869>,  <45.439064, 31.151367, 41.193180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587994, 30.501091, 41.210869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831429, 30.643175, 40.927052>,  <45.977489, 30.728426, 40.756763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831429, 30.643175, 40.927052>,  <45.587994, 30.501091, 41.210869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831429, 30.643175, 40.927052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790680, -0.346626, 0.504655,
		-0.066686, -0.868145, -0.491811,
		0.608588, 0.355211, -0.709539,
		46.014004, 30.749739, 40.714191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.084393, 29.882597, 40.944042>,  <45.587994, 30.501091, 41.210869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.084393, 29.882597, 40.944042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225510, 30.256594, 40.929451>,  <46.310181, 30.480991, 40.920696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225510, 30.256594, 40.929451>,  <46.084393, 29.882597, 40.944042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225510, 30.256594, 40.929451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835280, -0.297122, 0.462630,
		0.421716, -0.193683, -0.885800,
		0.352794, 0.934990, -0.036479,
		46.331348, 30.537090, 40.918507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820969, 30.357130, 40.424126>,  <46.084393, 29.882597, 40.944042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820969, 30.357130, 40.424126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571877, 30.075274, 40.288074>,  <45.422421, 29.906158, 40.206444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571877, 30.075274, 40.288074>,  <45.820969, 30.357130, 40.424126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571877, 30.075274, 40.288074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656225, 0.707091, -0.263421,
		0.426119, 0.059160, -0.902730,
		-0.622729, -0.704643, -0.340128,
		45.385059, 29.863880, 40.186035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656445, 30.442928, 39.712875>,  <45.820969, 30.357130, 40.424126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656445, 30.442928, 39.712875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370266, 30.279644, 39.939678>,  <45.198559, 30.181673, 40.075760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370266, 30.279644, 39.939678>,  <45.656445, 30.442928, 39.712875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370266, 30.279644, 39.939678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668149, 0.636993, -0.384469,
		-0.204235, -0.653913, -0.728481,
		-0.715447, -0.408211, 0.567008,
		45.155632, 30.157181, 40.109779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998127, 30.139988, 39.353638>,  <45.656445, 30.442928, 39.712875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998127, 30.139988, 39.353638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923073, 30.290085, 39.716732>,  <44.878040, 30.380142, 39.934589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923073, 30.290085, 39.716732>,  <44.998127, 30.139988, 39.353638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923073, 30.290085, 39.716732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710758, 0.585988, -0.389155,
		-0.677950, -0.718201, 0.156754,
		-0.187635, 0.375241, 0.907737,
		44.866783, 30.402657, 39.989052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311848, 30.064034, 39.448994>,  <44.998127, 30.139988, 39.353638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311848, 30.064034, 39.448994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481106, 30.373079, 39.638313>,  <44.582661, 30.558508, 39.751904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481106, 30.373079, 39.638313>,  <44.311848, 30.064034, 39.448994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481106, 30.373079, 39.638313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676482, 0.616906, -0.402242,
		-0.602760, -0.149971, 0.783702,
		0.423146, 0.772616, 0.473299,
		44.608051, 30.604864, 39.780304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805149, 30.369886, 39.813965>,  <44.311848, 30.064034, 39.448994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805149, 30.369886, 39.813965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072025, 30.663761, 39.764824>,  <44.232151, 30.840086, 39.735340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072025, 30.663761, 39.764824>,  <43.805149, 30.369886, 39.813965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072025, 30.663761, 39.764824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699838, 0.561770, -0.441182,
		-0.255116, 0.380329, 0.888969,
		0.667191, 0.734686, -0.122852,
		44.272182, 30.884167, 39.727970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584709, 31.049263, 40.083820>,  <43.805149, 30.369886, 39.813965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584709, 31.049263, 40.083820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849529, 31.143595, 39.799263>,  <44.008419, 31.200193, 39.628529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849529, 31.143595, 39.799263>,  <43.584709, 31.049263, 40.083820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849529, 31.143595, 39.799263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581594, 0.760337, -0.289199,
		0.472697, 0.605205, 0.640535,
		0.662047, 0.235828, -0.711393,
		44.048141, 31.214344, 39.585846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544586, 31.701963, 40.144871>,  <43.584709, 31.049263, 40.083820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544586, 31.701963, 40.144871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736217, 31.643646, 39.798637>,  <43.851196, 31.608656, 39.590897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736217, 31.643646, 39.798637>,  <43.544586, 31.701963, 40.144871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736217, 31.643646, 39.798637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459341, 0.798670, -0.388757,
		0.747992, 0.583841, 0.315654,
		0.479076, -0.145794, -0.865581,
		43.879940, 31.599909, 39.538963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828407, 32.311390, 39.966087>,  <43.544586, 31.701963, 40.144871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828407, 32.311390, 39.966087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793243, 32.110195, 39.622162>,  <43.772144, 31.989479, 39.415806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793243, 32.110195, 39.622162>,  <43.828407, 32.311390, 39.966087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793243, 32.110195, 39.622162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538960, 0.749919, -0.383593,
		0.837731, 0.429682, -0.337017,
		-0.087913, -0.502987, -0.859812,
		43.766869, 31.959299, 39.364220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827366, 32.831837, 39.495052>,  <43.828407, 32.311390, 39.966087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827366, 32.831837, 39.495052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692299, 32.521061, 39.282509>,  <43.611259, 32.334595, 39.154984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692299, 32.521061, 39.282509>,  <43.827366, 32.831837, 39.495052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692299, 32.521061, 39.282509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575158, 0.617178, -0.536921,
		0.745099, 0.124312, -0.655267,
		-0.337670, -0.776941, -0.531357,
		43.590996, 32.287979, 39.123100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912933, 32.996597, 38.650249>,  <43.827366, 32.831837, 39.495052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912933, 32.996597, 38.650249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607483, 32.761471, 38.757092>,  <43.424213, 32.620396, 38.821198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607483, 32.761471, 38.757092>,  <43.912933, 32.996597, 38.650249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607483, 32.761471, 38.757092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638390, 0.625475, -0.448598,
		0.096627, -0.513077, -0.852886,
		-0.763624, -0.587820, 0.267105,
		43.378395, 32.585125, 38.837223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561016, 32.836048, 38.009014>,  <43.912933, 32.996597, 38.650249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561016, 32.836048, 38.009014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356625, 32.894920, 38.347775>,  <43.233990, 32.930244, 38.551029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356625, 32.894920, 38.347775>,  <43.561016, 32.836048, 38.009014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356625, 32.894920, 38.347775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608858, 0.633507, -0.477452,
		-0.606787, -0.759610, -0.234099,
		-0.510981, 0.147179, 0.846898,
		43.203331, 32.939075, 38.601845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182407, 32.263462, 38.075092>,  <43.561016, 32.836048, 38.009014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182407, 32.263462, 38.075092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855404, 32.270180, 38.305363>,  <42.659203, 32.274208, 38.443523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855404, 32.270180, 38.305363>,  <43.182407, 32.263462, 38.075092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855404, 32.270180, 38.305363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236663, 0.901483, -0.362379,
		-0.525045, -0.432488, -0.732995,
		-0.817508, 0.016792, 0.575673,
		42.610153, 32.275219, 38.478065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507008, 32.597214, 37.665367>,  <43.182407, 32.263462, 38.075092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507008, 32.597214, 37.665367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490257, 32.654552, 38.060883>,  <42.480206, 32.688953, 38.298191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490257, 32.654552, 38.060883>,  <42.507008, 32.597214, 37.665367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490257, 32.654552, 38.060883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481417, 0.864299, -0.145686,
		-0.875491, -0.482120, 0.032814,
		-0.041877, 0.143344, 0.988787,
		42.477695, 32.697556, 38.357517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946598, 32.901272, 37.716133>,  <42.507008, 32.597214, 37.665367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946598, 32.901272, 37.716133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116367, 32.990597, 38.067131>,  <42.218227, 33.044193, 38.277729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116367, 32.990597, 38.067131>,  <41.946598, 32.901272, 37.716133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116367, 32.990597, 38.067131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442782, 0.896520, -0.013993,
		-0.789815, -0.382600, 0.479385,
		0.424424, 0.223315, 0.877493,
		42.243694, 33.057590, 38.330379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533943, 33.283855, 37.991005>,  <41.946598, 32.901272, 37.716133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533943, 33.283855, 37.991005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849602, 33.391941, 38.211636>,  <42.038998, 33.456791, 38.344013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849602, 33.391941, 38.211636>,  <41.533943, 33.283855, 37.991005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849602, 33.391941, 38.211636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297667, 0.953773, -0.041372,
		-0.537260, -0.131538, 0.833096,
		0.789143, 0.270212, 0.551578,
		42.086346, 33.473003, 38.377110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314198, 33.662186, 38.490154>,  <41.533943, 33.283855, 37.991005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314198, 33.662186, 38.490154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700249, 33.751934, 38.436199>,  <41.931877, 33.805782, 38.403828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700249, 33.751934, 38.436199>,  <41.314198, 33.662186, 38.490154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700249, 33.751934, 38.436199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254686, 0.923947, -0.285407,
		0.060592, 0.309807, 0.948867,
		0.965124, 0.224370, -0.134888,
		41.989784, 33.819244, 38.395733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569416, 34.234104, 38.899326>,  <41.314198, 33.662186, 38.490154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569416, 34.234104, 38.899326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796646, 34.213165, 38.570801>,  <41.932983, 34.200603, 38.373684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796646, 34.213165, 38.570801>,  <41.569416, 34.234104, 38.899326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796646, 34.213165, 38.570801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239426, 0.944297, -0.225785,
		0.787381, 0.324906, 0.523896,
		0.568072, -0.052345, -0.821312,
		41.967068, 34.197460, 38.324406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024578, 34.800919, 38.852432>,  <41.569416, 34.234104, 38.899326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024578, 34.800919, 38.852432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979824, 34.677109, 38.474716>,  <41.952972, 34.602825, 38.248089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979824, 34.677109, 38.474716>,  <42.024578, 34.800919, 38.852432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979824, 34.677109, 38.474716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251770, 0.928078, -0.274378,
		0.961298, 0.207043, -0.181768,
		-0.111887, -0.309523, -0.944287,
		41.946259, 34.584251, 38.191429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489563, 35.240997, 38.452579>,  <42.024578, 34.800919, 38.852432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489563, 35.240997, 38.452579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280781, 35.103161, 38.140472>,  <42.155510, 35.020458, 37.953209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280781, 35.103161, 38.140472>,  <42.489563, 35.240997, 38.452579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280781, 35.103161, 38.140472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043494, 0.924324, -0.379121,
		0.851863, -0.163947, -0.497444,
		-0.521956, -0.344595, -0.780267,
		42.124195, 34.999783, 37.906391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752739, 35.534771, 37.907902>,  <42.489563, 35.240997, 38.452579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752739, 35.534771, 37.907902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435486, 35.372082, 37.726562>,  <42.245136, 35.274467, 37.617760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435486, 35.372082, 37.726562>,  <42.752739, 35.534771, 37.907902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435486, 35.372082, 37.726562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003128, 0.741621, -0.670812,
		0.609046, -0.533459, -0.586929,
		-0.793129, -0.406719, -0.453350,
		42.197548, 35.250065, 37.590557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856468, 35.693165, 37.187660>,  <42.752739, 35.534771, 37.907902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856468, 35.693165, 37.187660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466312, 35.621384, 37.238899>,  <42.232220, 35.578316, 37.269642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466312, 35.621384, 37.238899>,  <42.856468, 35.693165, 37.187660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466312, 35.621384, 37.238899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214025, 0.631094, -0.745596,
		0.052954, -0.754664, -0.653971,
		-0.975392, -0.179449, 0.128098,
		42.173695, 35.567551, 37.277328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592888, 35.453861, 36.569241>,  <42.856468, 35.693165, 37.187660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592888, 35.453861, 36.569241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268673, 35.606316, 36.747124>,  <42.074146, 35.697788, 36.853855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268673, 35.606316, 36.747124>,  <42.592888, 35.453861, 36.569241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268673, 35.606316, 36.747124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197153, 0.537431, -0.819939,
		-0.551512, -0.752264, -0.360463,
		-0.810534, 0.381140, 0.444710,
		42.025513, 35.720657, 36.880535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206924, 35.587166, 35.987999>,  <42.592888, 35.453861, 36.569241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206924, 35.587166, 35.987999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028290, 35.823040, 36.257168>,  <41.921108, 35.964565, 36.418671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028290, 35.823040, 36.257168>,  <42.206924, 35.587166, 35.987999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028290, 35.823040, 36.257168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267537, 0.629673, -0.729339,
		-0.853805, -0.505746, -0.123440,
		-0.446588, 0.589689, 0.672924,
		41.894314, 35.999947, 36.459045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247128, 35.295345, 35.251518>,  <42.206924, 35.587166, 35.987999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247128, 35.295345, 35.251518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241596, 35.051819, 34.934242>,  <42.238277, 34.905701, 34.743877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241596, 35.051819, 34.934242>,  <42.247128, 35.295345, 35.251518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241596, 35.051819, 34.934242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074727, 0.791676, -0.606354,
		0.997108, 0.050887, -0.056443,
		-0.013829, -0.608818, -0.793189,
		42.237446, 34.869175, 34.696285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765999, 34.894016, 35.358734>,  <42.247128, 35.295345, 35.251518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765999, 34.894016, 35.358734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008690, 34.626972, 35.186142>,  <43.154305, 34.466747, 35.082584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008690, 34.626972, 35.186142>,  <42.765999, 34.894016, 35.358734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008690, 34.626972, 35.186142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782307, 0.597761, 0.175147,
		0.140995, -0.443819, 0.884955,
		0.606726, -0.667612, -0.431484,
		43.190708, 34.426689, 35.056698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157284, 34.685658, 35.922424>,  <42.765999, 34.894016, 35.358734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157284, 34.685658, 35.922424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311569, 34.641781, 35.555996>,  <43.404140, 34.615456, 35.336140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311569, 34.641781, 35.555996>,  <43.157284, 34.685658, 35.922424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311569, 34.641781, 35.555996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724030, 0.651397, 0.226855,
		0.571842, -0.750766, 0.330679,
		0.385718, -0.109696, -0.916072,
		43.427284, 34.608871, 35.281174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918400, 34.513195, 35.955730>,  <43.157284, 34.685658, 35.922424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918400, 34.513195, 35.955730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840542, 34.770985, 35.659958>,  <43.793827, 34.925659, 35.482494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840542, 34.770985, 35.659958>,  <43.918400, 34.513195, 35.955730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840542, 34.770985, 35.659958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773216, 0.564661, 0.288609,
		0.603531, -0.515565, -0.608229,
		-0.194647, 0.644477, -0.739434,
		43.782146, 34.964329, 35.438129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604485, 34.770027, 35.587532>,  <43.918400, 34.513195, 35.955730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604485, 34.770027, 35.587532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302341, 35.031887, 35.575680>,  <44.121056, 35.189003, 35.568569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302341, 35.031887, 35.575680>,  <44.604485, 34.770027, 35.587532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302341, 35.031887, 35.575680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644494, 0.750302, 0.147226,
		0.118615, 0.092110, -0.988659,
		-0.755353, 0.654647, -0.029633,
		44.075737, 35.228283, 35.566792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648197, 35.327148, 35.035347>,  <44.604485, 34.770027, 35.587532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648197, 35.327148, 35.035347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469006, 35.466480, 35.364704>,  <44.361492, 35.550079, 35.562317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469006, 35.466480, 35.364704>,  <44.648197, 35.327148, 35.035347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469006, 35.466480, 35.364704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677217, 0.733481, 0.058154,
		-0.583687, 0.583668, -0.564482,
		-0.447980, 0.348334, 0.823394,
		44.334610, 35.570980, 35.611721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416264, 36.061180, 34.996223>,  <44.648197, 35.327148, 35.035347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416264, 36.061180, 34.996223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561195, 35.895615, 35.330265>,  <44.648155, 35.796276, 35.530689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561195, 35.895615, 35.330265>,  <44.416264, 36.061180, 34.996223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561195, 35.895615, 35.330265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744382, 0.667707, 0.007977,
		-0.560904, 0.618743, 0.550040,
		0.362329, -0.413914, 0.835101,
		44.669895, 35.771439, 35.580795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509857, 36.547806, 35.427822>,  <44.416264, 36.061180, 34.996223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509857, 36.547806, 35.427822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740292, 36.250969, 35.564892>,  <44.878551, 36.072868, 35.647133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740292, 36.250969, 35.564892>,  <44.509857, 36.547806, 35.427822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740292, 36.250969, 35.564892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815575, 0.549758, -0.180564,
		-0.054392, 0.383496, 0.921939,
		0.576089, -0.742090, 0.342673,
		44.913116, 36.028343, 35.667694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.109013, 36.765259, 35.852722>,  <44.509857, 36.547806, 35.427822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.109013, 36.765259, 35.852722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218491, 36.407684, 35.710754>,  <45.284176, 36.193138, 35.625572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218491, 36.407684, 35.710754>,  <45.109013, 36.765259, 35.852722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218491, 36.407684, 35.710754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886564, 0.377561, -0.267306,
		0.372958, -0.241499, 0.895869,
		0.273691, -0.893939, -0.354918,
		45.300598, 36.139503, 35.604279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709148, 36.983868, 35.546581>,  <45.109013, 36.765259, 35.852722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709148, 36.983868, 35.546581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722038, 36.588963, 35.484257>,  <45.729771, 36.352020, 35.446861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722038, 36.588963, 35.484257>,  <45.709148, 36.983868, 35.546581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722038, 36.588963, 35.484257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885932, 0.100381, -0.452822,
		0.462694, -0.123450, 0.877880,
		0.032221, -0.987261, -0.155814,
		45.731705, 36.292786, 35.437511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.416107, 36.725601, 35.770672>,  <45.709148, 36.983868, 35.546581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.416107, 36.725601, 35.770672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253258, 36.488243, 35.492928>,  <46.155548, 36.345829, 35.326279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253258, 36.488243, 35.492928>,  <46.416107, 36.725601, 35.770672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253258, 36.488243, 35.492928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820042, 0.097313, -0.563969,
		0.402225, -0.799010, 0.446988,
		-0.407120, -0.593391, -0.694363,
		46.131123, 36.310226, 35.284618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.948250, 36.151081, 35.612370>,  <46.416107, 36.725601, 35.770672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.948250, 36.151081, 35.612370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696362, 36.238514, 35.314194>,  <46.545231, 36.290974, 35.135288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696362, 36.238514, 35.314194>,  <46.948250, 36.151081, 35.612370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696362, 36.238514, 35.314194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765315, 0.009987, -0.643578,
		-0.133231, -0.975767, -0.173573,
		-0.629716, 0.218583, -0.745439,
		46.507446, 36.304089, 35.090561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.011314, 35.700642, 34.969887>,  <46.948250, 36.151081, 35.612370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.011314, 35.700642, 34.969887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844677, 36.037796, 34.833660>,  <46.744694, 36.240089, 34.751923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844677, 36.037796, 34.833660>,  <47.011314, 35.700642, 34.969887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844677, 36.037796, 34.833660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736848, 0.093660, -0.669539,
		-0.532448, -0.529876, -0.660099,
		-0.416598, 0.842888, -0.340569,
		46.719696, 36.290661, 34.731491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.760864, 35.913166, 34.292015>,  <47.011314, 35.700642, 34.969887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.760864, 35.913166, 34.292015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496250, 35.763489, 34.551968>,  <46.337482, 35.673683, 34.707939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496250, 35.763489, 34.551968>,  <46.760864, 35.913166, 34.292015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496250, 35.763489, 34.551968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117358, 0.804273, 0.582556,
		-0.740672, 0.461652, -0.488143,
		-0.661538, -0.374195, 0.649881,
		46.297791, 35.651230, 34.746933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281128, 36.448719, 34.306534>,  <46.760864, 35.913166, 34.292015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281128, 36.448719, 34.306534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263153, 36.231400, 34.641869>,  <46.252369, 36.101009, 34.843071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263153, 36.231400, 34.641869>,  <46.281128, 36.448719, 34.306534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263153, 36.231400, 34.641869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053654, 0.839284, 0.541039,
		-0.997548, -0.020670, -0.066862,
		-0.044933, -0.543300, 0.838336,
		46.249672, 36.068409, 34.893368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130383, 36.062912, 33.553539>,  <46.281128, 36.448719, 34.306534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130383, 36.062912, 33.553539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517685, 35.970856, 33.514511>,  <46.750065, 35.915623, 33.491093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517685, 35.970856, 33.514511>,  <46.130383, 36.062912, 33.553539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517685, 35.970856, 33.514511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078065, -0.649209, 0.756594,
		-0.237466, -0.724958, -0.646565,
		0.968254, -0.230139, -0.097571,
		46.808163, 35.901814, 33.485241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207836, 35.393764, 33.675194>,  <46.130383, 36.062912, 33.553539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207836, 35.393764, 33.675194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.591190, 35.496063, 33.725948>,  <46.821201, 35.557442, 33.756401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.591190, 35.496063, 33.725948>,  <46.207836, 35.393764, 33.675194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.591190, 35.496063, 33.725948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099027, -0.714644, 0.692444,
		0.267766, -0.651060, -0.710227,
		0.958382, 0.255744, 0.126885,
		46.878704, 35.572788, 33.764015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617035, 34.725349, 33.742805>,  <46.207836, 35.393764, 33.675194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617035, 34.725349, 33.742805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799984, 35.029434, 33.927364>,  <46.909752, 35.211884, 34.038101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799984, 35.029434, 33.927364>,  <46.617035, 34.725349, 33.742805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.799984, 35.029434, 33.927364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334471, -0.627808, 0.702842,
		0.823977, -0.167137, -0.541412,
		0.457373, 0.760212, 0.461397,
		46.937195, 35.257500, 34.065784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318222, 34.634892, 33.844883>,  <46.617035, 34.725349, 33.742805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318222, 34.634892, 33.844883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185875, 34.887428, 34.125435>,  <47.106468, 35.038952, 34.293766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185875, 34.887428, 34.125435>,  <47.318222, 34.634892, 33.844883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.185875, 34.887428, 34.125435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421087, -0.566370, 0.708456,
		0.844520, 0.529746, -0.078459,
		-0.330865, 0.631343, 0.701380,
		47.086617, 35.076832, 34.335850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.808533, 34.959972, 34.243282>,  <47.318222, 34.634892, 33.844883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.808533, 34.959972, 34.243282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.495617, 34.891945, 34.482983>,  <47.307869, 34.851128, 34.626804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.495617, 34.891945, 34.482983>,  <47.808533, 34.959972, 34.243282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.495617, 34.891945, 34.482983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541514, -0.661141, 0.519282,
		0.307875, 0.730731, 0.609299,
		-0.782288, -0.170070, 0.599250,
		47.260929, 34.840923, 34.662758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.909500, 35.172207, 34.993225>,  <47.808533, 34.959972, 34.243282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.909500, 35.172207, 34.993225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662926, 34.864113, 34.927807>,  <47.514980, 34.679256, 34.888554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662926, 34.864113, 34.927807>,  <47.909500, 35.172207, 34.993225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.662926, 34.864113, 34.927807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637309, -0.610034, 0.470846,
		-0.462431, 0.186015, 0.866923,
		-0.616437, -0.770232, -0.163549,
		47.477993, 34.633045, 34.878742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.879265, 34.295349, 28.173786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612282, 34.065979, 28.363810>,  <37.452091, 33.928356, 28.477823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612282, 34.065979, 28.363810>,  <37.879265, 34.295349, 28.173786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612282, 34.065979, 28.363810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730153, -0.629246, 0.266319,
		0.146213, 0.524622, 0.838686,
		-0.667457, -0.573429, 0.475058,
		37.412045, 33.893951, 28.506327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071331, 34.165142, 27.914694>,  <37.879265, 34.295349, 28.173786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071331, 34.165142, 27.914694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.678444, 34.233410, 27.946007>,  <36.442711, 34.274372, 27.964794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.678444, 34.233410, 27.946007>,  <37.071331, 34.165142, 27.914694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678444, 34.233410, 27.946007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142890, 0.408941, 0.901304,
		0.121812, 0.896459, -0.426055,
		-0.982214, 0.170669, 0.078281,
		36.383781, 34.284611, 27.969492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980545, 34.895329, 28.085405>,  <37.071331, 34.165142, 27.914694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980545, 34.895329, 28.085405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668068, 34.672428, 28.197987>,  <36.480583, 34.538689, 28.265535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668068, 34.672428, 28.197987>,  <36.980545, 34.895329, 28.085405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668068, 34.672428, 28.197987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162060, 0.254371, 0.953431,
		-0.602892, 0.790424, -0.108404,
		-0.781190, -0.557248, 0.281455,
		36.433712, 34.505253, 28.282423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588909, 35.261829, 28.433477>,  <36.980545, 34.895329, 28.085405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588909, 35.261829, 28.433477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468742, 34.901764, 28.559620>,  <36.396645, 34.685722, 28.635305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468742, 34.901764, 28.559620>,  <36.588909, 35.261829, 28.433477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468742, 34.901764, 28.559620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033861, 0.320354, 0.946692,
		-0.953208, 0.295077, -0.065758,
		-0.300413, -0.900168, 0.315356,
		36.378620, 34.631714, 28.654226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954681, 35.326458, 28.837530>,  <36.588909, 35.261829, 28.433477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954681, 35.326458, 28.837530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120296, 34.982357, 28.956549>,  <36.219666, 34.775894, 29.027960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120296, 34.982357, 28.956549>,  <35.954681, 35.326458, 28.837530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120296, 34.982357, 28.956549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239524, 0.212394, 0.947374,
		-0.878180, -0.463519, -0.118112,
		0.414040, -0.860255, 0.297544,
		36.244507, 34.724281, 29.045813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463573, 35.250191, 29.427162>,  <35.954681, 35.326458, 28.837530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463573, 35.250191, 29.427162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.751709, 34.974140, 29.454983>,  <35.924591, 34.808510, 29.471676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.751709, 34.974140, 29.454983>,  <35.463573, 35.250191, 29.427162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751709, 34.974140, 29.454983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053260, 0.044947, 0.997569,
		-0.691574, -0.722293, -0.004378,
		0.720340, -0.690125, 0.069553,
		35.967812, 34.767101, 29.475849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200024, 34.742371, 29.934841>,  <35.463573, 35.250191, 29.427162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200024, 34.742371, 29.934841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598930, 34.749599, 29.906199>,  <35.838276, 34.753937, 29.889013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598930, 34.749599, 29.906199>,  <35.200024, 34.742371, 29.934841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598930, 34.749599, 29.906199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072425, -0.049724, 0.996134,
		0.014441, -0.998600, -0.050897,
		0.997269, 0.018072, -0.071606,
		35.898109, 34.755020, 29.884716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484341, 34.193775, 30.324860>,  <35.200024, 34.742371, 29.934841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484341, 34.193775, 30.324860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763153, 34.479305, 30.297750>,  <35.930443, 34.650623, 30.281485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763153, 34.479305, 30.297750>,  <35.484341, 34.193775, 30.324860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763153, 34.479305, 30.297750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160316, -0.063018, 0.985052,
		0.698886, -0.697481, -0.158363,
		0.697035, 0.713827, -0.067775,
		35.972263, 34.693455, 30.277418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888485, 33.949844, 30.877241>,  <35.484341, 34.193775, 30.324860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888485, 33.949844, 30.877241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.042191, 34.309563, 30.793711>,  <36.134415, 34.525394, 30.743593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.042191, 34.309563, 30.793711>,  <35.888485, 33.949844, 30.877241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042191, 34.309563, 30.793711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373505, 0.055421, 0.925971,
		0.844294, -0.433817, -0.314595,
		0.384267, 0.899295, -0.208824,
		36.157471, 34.579350, 30.731064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705330, 33.931133, 30.946930>,  <35.888485, 33.949844, 30.877241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705330, 33.931133, 30.946930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.579285, 34.306190, 31.005630>,  <36.503658, 34.531223, 31.040852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.579285, 34.306190, 31.005630>,  <36.705330, 33.931133, 30.946930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579285, 34.306190, 31.005630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610192, 0.081735, 0.788026,
		0.726889, 0.337866, -0.597896,
		-0.315116, 0.937639, 0.146751,
		36.484749, 34.587482, 31.049656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274006, 34.379417, 31.014263>,  <36.705330, 33.931133, 30.946930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274006, 34.379417, 31.014263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966305, 34.538185, 31.214548>,  <36.781685, 34.633446, 31.334719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966305, 34.538185, 31.214548>,  <37.274006, 34.379417, 31.014263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966305, 34.538185, 31.214548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492449, -0.131029, 0.860421,
		0.407122, 0.908455, -0.094667,
		-0.769250, 0.396915, 0.500713,
		36.735531, 34.657261, 31.364761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633690, 34.789402, 31.443007>,  <37.274006, 34.379417, 31.014263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633690, 34.789402, 31.443007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.268478, 34.746845, 31.600512>,  <37.049351, 34.721310, 31.695015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.268478, 34.746845, 31.600512>,  <37.633690, 34.789402, 31.443007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268478, 34.746845, 31.600512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404394, -0.110099, 0.907934,
		-0.053247, 0.988210, 0.143549,
		-0.913033, -0.106395, 0.393764,
		36.994568, 34.714928, 31.718641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629395, 35.283360, 31.881008>,  <37.633690, 34.789402, 31.443007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629395, 35.283360, 31.881008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.335320, 35.042648, 32.005817>,  <37.158875, 34.898220, 32.080704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.335320, 35.042648, 32.005817>,  <37.629395, 35.283360, 31.881008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335320, 35.042648, 32.005817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347239, 0.060988, 0.935791,
		-0.582170, 0.796330, 0.164124,
		-0.735189, -0.601780, 0.312022,
		37.114761, 34.862114, 32.099422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350574, 35.589535, 32.480000>,  <37.629395, 35.283360, 31.881008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350574, 35.589535, 32.480000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216316, 35.215347, 32.524258>,  <37.135761, 34.990837, 32.550812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216316, 35.215347, 32.524258>,  <37.350574, 35.589535, 32.480000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216316, 35.215347, 32.524258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224967, 0.034457, 0.973757,
		-0.914730, 0.351731, 0.198884,
		-0.335648, -0.935467, 0.110646,
		37.115623, 34.934708, 32.557453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849472, 35.525517, 33.097736>,  <37.350574, 35.589535, 32.480000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849472, 35.525517, 33.097736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.990288, 35.155933, 33.037907>,  <37.074776, 34.934185, 33.002007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.990288, 35.155933, 33.037907>,  <36.849472, 35.525517, 33.097736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990288, 35.155933, 33.037907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268441, -0.053427, 0.961813,
		-0.896664, -0.378750, 0.229219,
		0.352041, -0.923956, -0.149578,
		37.095901, 34.878746, 32.993034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635670, 35.223801, 33.750404>,  <36.849472, 35.525517, 33.097736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635670, 35.223801, 33.750404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931637, 35.022682, 33.571644>,  <37.109219, 34.902012, 33.464390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931637, 35.022682, 33.571644>,  <36.635670, 35.223801, 33.750404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931637, 35.022682, 33.571644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407821, -0.193052, 0.892420,
		-0.534982, -0.842570, 0.062210,
		0.739916, -0.502799, -0.446898,
		37.153610, 34.871841, 33.437576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597637, 34.598480, 34.081833>,  <36.635670, 35.223801, 33.750404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597637, 34.598480, 34.081833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956123, 34.652702, 33.912872>,  <37.171215, 34.685234, 33.811497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956123, 34.652702, 33.912872>,  <36.597637, 34.598480, 34.081833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956123, 34.652702, 33.912872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434199, -0.072823, 0.897868,
		0.090949, -0.988090, -0.124122,
		0.896214, 0.135554, -0.422405,
		37.224987, 34.693367, 33.786152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065922, 34.166840, 34.522667>,  <36.597637, 34.598480, 34.081833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065922, 34.166840, 34.522667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.333824, 34.389690, 34.326286>,  <37.494568, 34.523399, 34.208458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.333824, 34.389690, 34.326286>,  <37.065922, 34.166840, 34.522667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333824, 34.389690, 34.326286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697291, -0.244486, 0.673805,
		0.255364, -0.793622, -0.552226,
		0.669757, 0.557127, -0.490952,
		37.534752, 34.556828, 34.179001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585358, 33.764717, 34.649376>,  <37.065922, 34.166840, 34.522667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585358, 33.764717, 34.649376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699936, 34.135715, 34.553295>,  <37.768684, 34.358315, 34.495647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699936, 34.135715, 34.553295>,  <37.585358, 33.764717, 34.649376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699936, 34.135715, 34.553295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808245, -0.099304, 0.580413,
		0.514477, -0.360403, -0.778089,
		0.286450, 0.927496, -0.240204,
		37.785870, 34.413963, 34.481236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227474, 33.727776, 34.535969>,  <37.585358, 33.764717, 34.649376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227474, 33.727776, 34.535969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190208, 34.118614, 34.612492>,  <38.167850, 34.353119, 34.658405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190208, 34.118614, 34.612492>,  <38.227474, 33.727776, 34.535969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190208, 34.118614, 34.612492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851247, -0.021495, 0.524326,
		0.516431, 0.211693, -0.829750,
		-0.093160, 0.977100, 0.191304,
		38.162262, 34.411743, 34.669884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890247, 33.987373, 34.577396>,  <38.227474, 33.727776, 34.535969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890247, 33.987373, 34.577396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688450, 34.275532, 34.767769>,  <38.567371, 34.448425, 34.881992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688450, 34.275532, 34.767769>,  <38.890247, 33.987373, 34.577396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688450, 34.275532, 34.767769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721341, 0.048732, 0.690864,
		0.474503, 0.691847, -0.544237,
		-0.504494, 0.720397, 0.475934,
		38.537102, 34.491650, 34.910549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429211, 34.482441, 34.677902>,  <38.890247, 33.987373, 34.577396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429211, 34.482441, 34.677902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139297, 34.557587, 34.943047>,  <38.965347, 34.602676, 35.102135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139297, 34.557587, 34.943047>,  <39.429211, 34.482441, 34.677902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139297, 34.557587, 34.943047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688415, 0.158765, 0.707728,
		0.027718, 0.969278, -0.244400,
		-0.724787, 0.187866, 0.662865,
		38.921860, 34.613945, 35.141907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014862, 35.023106, 34.755165>,  <39.429211, 34.482441, 34.677902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014862, 35.023106, 34.755165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.306637, 34.800079, 34.913681>,  <40.481701, 34.666264, 35.008789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.306637, 34.800079, 34.913681>,  <40.014862, 35.023106, 34.755165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306637, 34.800079, 34.913681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103518, -0.482680, -0.869657,
		0.676175, 0.675380, -0.294364,
		0.729432, -0.557568, 0.396290,
		40.525467, 34.632809, 35.032570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640938, 34.923138, 34.333923>,  <40.014862, 35.023106, 34.755165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640938, 34.923138, 34.333923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642464, 34.607586, 34.579739>,  <40.643379, 34.418255, 34.727226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642464, 34.607586, 34.579739>,  <40.640938, 34.923138, 34.333923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642464, 34.607586, 34.579739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165859, -0.605528, -0.778348,
		0.986142, 0.104897, 0.128532,
		0.003817, -0.788880, 0.614535,
		40.643608, 34.370922, 34.764099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220066, 34.578823, 34.260418>,  <40.640938, 34.923138, 34.333923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220066, 34.578823, 34.260418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.966877, 34.299992, 34.395138>,  <40.814964, 34.132694, 34.475967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.966877, 34.299992, 34.395138>,  <41.220066, 34.578823, 34.260418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966877, 34.299992, 34.395138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288401, -0.616041, -0.733020,
		0.718451, -0.366849, 0.590973,
		-0.632972, -0.697076, 0.336795,
		40.776985, 34.090870, 34.496178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433594, 33.938076, 34.025253>,  <41.220066, 34.578823, 34.260418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433594, 33.938076, 34.025253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.047543, 33.854511, 34.088360>,  <40.815914, 33.804371, 34.126225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.047543, 33.854511, 34.088360>,  <41.433594, 33.938076, 34.025253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047543, 33.854511, 34.088360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031626, -0.691277, -0.721898,
		0.259877, -0.691731, 0.673775,
		-0.965123, -0.208914, 0.157770,
		40.758007, 33.791836, 34.135693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416302, 33.349155, 33.702618>,  <41.433594, 33.938076, 34.025253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416302, 33.349155, 33.702618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.024868, 33.412174, 33.755615>,  <40.790009, 33.449986, 33.787415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.024868, 33.412174, 33.755615>,  <41.416302, 33.349155, 33.702618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024868, 33.412174, 33.755615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205278, -0.698846, -0.685182,
		-0.015358, -0.697705, 0.716220,
		-0.978583, 0.157548, 0.132491,
		40.731293, 33.459438, 33.795361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045647, 32.688038, 33.773602>,  <41.416302, 33.349155, 33.702618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045647, 32.688038, 33.773602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758343, 32.939575, 33.654503>,  <40.585960, 33.090496, 33.583042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758343, 32.939575, 33.654503>,  <41.045647, 32.688038, 33.773602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758343, 32.939575, 33.654503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246705, -0.630316, -0.736096,
		-0.650572, -0.455248, 0.607869,
		-0.718256, 0.628848, -0.297754,
		40.542866, 33.128227, 33.565178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539124, 32.254917, 33.643044>,  <41.045647, 32.688038, 33.773602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539124, 32.254917, 33.643044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.440945, 32.597107, 33.460651>,  <40.382038, 32.802422, 33.351215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.440945, 32.597107, 33.460651>,  <40.539124, 32.254917, 33.643044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440945, 32.597107, 33.460651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474364, -0.516196, -0.713106,
		-0.845418, 0.041266, 0.532508,
		-0.245452, 0.855476, -0.455976,
		40.367310, 32.853748, 33.323860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826309, 32.060886, 33.243210>,  <40.539124, 32.254917, 33.643044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826309, 32.060886, 33.243210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.939930, 32.412235, 33.089439>,  <40.008102, 32.623043, 32.997177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.939930, 32.412235, 33.089439>,  <39.826309, 32.060886, 33.243210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939930, 32.412235, 33.089439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422598, -0.245207, -0.872516,
		-0.860655, 0.410297, 0.301546,
		0.284050, 0.878368, -0.384429,
		40.025146, 32.675747, 32.974110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278221, 32.345493, 32.909962>,  <39.826309, 32.060886, 33.243210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278221, 32.345493, 32.909962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.588341, 32.519409, 32.726711>,  <39.774410, 32.623760, 32.616760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.588341, 32.519409, 32.726711>,  <39.278221, 32.345493, 32.909962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588341, 32.519409, 32.726711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231521, -0.479210, -0.846614,
		-0.587635, 0.762441, -0.270867,
		0.775295, 0.434789, -0.458122,
		39.820930, 32.649845, 32.589275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970745, 32.675632, 32.322712>,  <39.278221, 32.345493, 32.909962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970745, 32.675632, 32.322712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.364277, 32.641384, 32.259796>,  <39.600395, 32.620834, 32.222046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.364277, 32.641384, 32.259796>,  <38.970745, 32.675632, 32.322712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364277, 32.641384, 32.259796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178711, -0.412648, -0.893187,
		0.011565, 0.906858, -0.421278,
		0.983834, -0.085617, -0.157293,
		39.659428, 32.615700, 32.212608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126369, 33.160728, 31.797077>,  <38.970745, 32.675632, 32.322712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126369, 33.160728, 31.797077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.417877, 32.886871, 31.802210>,  <39.592781, 32.722557, 31.805290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.417877, 32.886871, 31.802210>,  <39.126369, 33.160728, 31.797077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417877, 32.886871, 31.802210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114810, -0.140640, -0.983382,
		0.675067, 0.715184, -0.181097,
		0.728768, -0.684640, 0.012831,
		39.636509, 32.681480, 31.806059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652702, 33.314255, 31.314234>,  <39.126369, 33.160728, 31.797077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652702, 33.314255, 31.314234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664787, 32.919247, 31.376055>,  <39.672039, 32.682240, 31.413147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664787, 32.919247, 31.376055>,  <39.652702, 33.314255, 31.314234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664787, 32.919247, 31.376055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324948, -0.155928, -0.932789,
		0.945249, -0.022037, -0.325605,
		0.030215, -0.987522, 0.154552,
		39.673851, 32.622990, 31.422421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139992, 33.066101, 30.867079>,  <39.652702, 33.314255, 31.314234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139992, 33.066101, 30.867079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890179, 32.769478, 30.965097>,  <39.740292, 32.591503, 31.023909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890179, 32.769478, 30.965097>,  <40.139992, 33.066101, 30.867079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890179, 32.769478, 30.965097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278565, -0.081615, -0.956943,
		0.729627, -0.665907, -0.155600,
		-0.624536, -0.741557, 0.245046,
		39.702816, 32.547012, 31.038610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294441, 32.573246, 30.349342>,  <40.139992, 33.066101, 30.867079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294441, 32.573246, 30.349342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924252, 32.510376, 30.487211>,  <39.702137, 32.472652, 30.569933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924252, 32.510376, 30.487211>,  <40.294441, 32.573246, 30.349342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924252, 32.510376, 30.487211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373256, 0.223008, -0.900526,
		0.064679, -0.962062, -0.265055,
		-0.925471, -0.157178, 0.344671,
		39.646610, 32.463223, 30.590612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946712, 32.074139, 29.845787>,  <40.294441, 32.573246, 30.349342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946712, 32.074139, 29.845787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657833, 32.254005, 30.056021>,  <39.484505, 32.361923, 30.182161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657833, 32.254005, 30.056021>,  <39.946712, 32.074139, 29.845787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657833, 32.254005, 30.056021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507450, 0.171911, -0.844358,
		-0.470031, -0.876498, 0.104029,
		-0.722195, 0.449664, 0.525582,
		39.441174, 32.388905, 30.213696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255878, 31.647449, 29.846952>,  <39.946712, 32.074139, 29.845787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255878, 31.647449, 29.846952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180851, 32.035862, 29.906178>,  <39.135834, 32.268909, 29.941713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180851, 32.035862, 29.906178>,  <39.255878, 31.647449, 29.846952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180851, 32.035862, 29.906178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532490, 0.026147, -0.846032,
		-0.825393, -0.237527, 0.512159,
		-0.187564, 0.971029, 0.148063,
		39.124580, 32.327171, 29.950596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511627, 31.588875, 29.738464>,  <39.255878, 31.647449, 29.846952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511627, 31.588875, 29.738464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.632729, 31.965225, 29.677681>,  <38.705387, 32.191036, 29.641211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.632729, 31.965225, 29.677681>,  <38.511627, 31.588875, 29.738464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632729, 31.965225, 29.677681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567501, 0.049872, -0.821861,
		-0.765692, 0.335055, 0.549048,
		0.302751, 0.940878, -0.151957,
		38.723553, 32.247490, 29.632093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976467, 31.791632, 29.474277>,  <38.511627, 31.588875, 29.738464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976467, 31.791632, 29.474277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.231525, 32.083733, 29.376183>,  <38.384560, 32.258995, 29.317326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.231525, 32.083733, 29.376183>,  <37.976467, 31.791632, 29.474277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231525, 32.083733, 29.376183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578543, 0.243775, -0.778371,
		-0.508625, 0.638203, 0.577925,
		0.637642, 0.730254, -0.245238,
		38.422817, 32.302811, 29.302610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.458549, 32.660904, 29.377951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823071, 32.667503, 29.213392>,  <38.041782, 32.671463, 29.114656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823071, 32.667503, 29.213392>,  <37.458549, 32.660904, 29.377951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823071, 32.667503, 29.213392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388530, 0.365123, -0.846008,
		0.136253, 0.930813, 0.339149,
		0.911307, 0.016498, -0.411398,
		38.096462, 32.672451, 29.089973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432251, 33.163307, 28.914923>,  <37.458549, 32.660904, 29.377951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432251, 33.163307, 28.914923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.737827, 32.956776, 28.760105>,  <37.921173, 32.832859, 28.667213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.737827, 32.956776, 28.760105>,  <37.432251, 33.163307, 28.914923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737827, 32.956776, 28.760105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411373, 0.072434, -0.908584,
		0.497161, 0.853323, -0.157067,
		0.763939, -0.516326, -0.387045,
		37.967010, 32.801876, 28.643991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735630, 33.473274, 28.362535>,  <37.432251, 33.163307, 28.914923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735630, 33.473274, 28.362535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.853764, 33.094940, 28.308611>,  <37.924644, 32.867939, 28.276257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.853764, 33.094940, 28.308611>,  <37.735630, 33.473274, 28.362535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853764, 33.094940, 28.308611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204700, 0.075185, -0.975933,
		0.933209, 0.315817, -0.171409,
		0.295329, -0.945836, -0.134811,
		37.942364, 32.811188, 28.268167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041828, 33.557320, 27.666449>,  <37.735630, 33.473274, 28.362535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041828, 33.557320, 27.666449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.983929, 33.170555, 27.750481>,  <37.949188, 32.938496, 27.800900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.983929, 33.170555, 27.750481>,  <38.041828, 33.557320, 27.666449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983929, 33.170555, 27.750481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285518, -0.162471, -0.944501,
		0.947380, -0.196695, -0.252553,
		-0.144746, -0.966909, 0.210082,
		37.940506, 32.880482, 27.813505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473759, 33.235992, 27.241545>,  <38.041828, 33.557320, 27.666449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473759, 33.235992, 27.241545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.180489, 32.976173, 27.322096>,  <38.004528, 32.820282, 27.370426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.180489, 32.976173, 27.322096>,  <38.473759, 33.235992, 27.241545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180489, 32.976173, 27.322096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123452, -0.164077, -0.978692,
		0.668745, -0.742409, 0.040109,
		-0.733171, -0.649544, 0.201377,
		37.960537, 32.781311, 27.382509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623886, 32.726299, 26.825872>,  <38.473759, 33.235992, 27.241545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623886, 32.726299, 26.825872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.243515, 32.640831, 26.915380>,  <38.015293, 32.589550, 26.969086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.243515, 32.640831, 26.915380>,  <38.623886, 32.726299, 26.825872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243515, 32.640831, 26.915380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166741, -0.255316, -0.952372,
		0.260626, -0.942952, 0.207160,
		-0.950932, -0.213670, 0.223770,
		37.958237, 32.576729, 26.982512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518951, 32.088326, 26.604280>,  <38.623886, 32.726299, 26.825872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518951, 32.088326, 26.604280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165390, 32.274963, 26.616983>,  <37.953255, 32.386948, 26.624605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165390, 32.274963, 26.616983>,  <38.518951, 32.088326, 26.604280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165390, 32.274963, 26.616983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045649, -0.018501, -0.998786,
		-0.465443, -0.884277, 0.037653,
		-0.883900, 0.466597, 0.031756,
		37.900219, 32.414944, 26.626511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176182, 31.696455, 26.127748>,  <38.518951, 32.088326, 26.604280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176182, 31.696455, 26.127748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949898, 32.025745, 26.146814>,  <37.814125, 32.223320, 26.158255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949898, 32.025745, 26.146814>,  <38.176182, 31.696455, 26.127748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949898, 32.025745, 26.146814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279054, -0.136729, -0.950492,
		-0.775950, -0.551006, 0.307073,
		-0.565712, 0.823224, 0.047666,
		37.780186, 32.272713, 26.161114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703182, 31.508049, 25.741463>,  <38.176182, 31.696455, 26.127748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703182, 31.508049, 25.741463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622078, 31.898687, 25.770161>,  <37.573418, 32.133072, 25.787380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622078, 31.898687, 25.770161>,  <37.703182, 31.508049, 25.741463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622078, 31.898687, 25.770161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280187, 0.012346, -0.959866,
		-0.938288, -0.214724, 0.271126,
		-0.202759, 0.976597, 0.071747,
		37.561249, 32.191666, 25.791685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144222, 31.566196, 25.411539>,  <37.703182, 31.508049, 25.741463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144222, 31.566196, 25.411539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285816, 31.940115, 25.423187>,  <37.370773, 32.164467, 25.430176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285816, 31.940115, 25.423187>,  <37.144222, 31.566196, 25.411539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285816, 31.940115, 25.423187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264397, 0.129889, -0.955627,
		-0.897102, 0.330575, 0.293136,
		0.353982, 0.934799, 0.029121,
		37.392010, 32.220554, 25.431923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651524, 31.952309, 25.082443>,  <37.144222, 31.566196, 25.411539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651524, 31.952309, 25.082443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981472, 32.176311, 25.051516>,  <37.179443, 32.310715, 25.032959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981472, 32.176311, 25.051516>,  <36.651524, 31.952309, 25.082443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981472, 32.176311, 25.051516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146018, 0.078928, -0.986128,
		-0.546135, 0.824720, 0.146876,
		0.824873, 0.560006, -0.077319,
		37.228935, 32.344315, 25.028320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466858, 32.552204, 24.780533>,  <36.651524, 31.952309, 25.082443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466858, 32.552204, 24.780533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857727, 32.497978, 24.715094>,  <37.092247, 32.465443, 24.675831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857727, 32.497978, 24.715094>,  <36.466858, 32.552204, 24.780533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857727, 32.497978, 24.715094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150183, 0.103947, -0.983178,
		0.150290, 0.985301, 0.081215,
		0.977168, -0.135564, -0.163598,
		37.150879, 32.457310, 24.666014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622372, 33.016586, 24.171110>,  <36.466858, 32.552204, 24.780533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622372, 33.016586, 24.171110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.939434, 32.773582, 24.191639>,  <37.129669, 32.627781, 24.203957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.939434, 32.773582, 24.191639>,  <36.622372, 33.016586, 24.171110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939434, 32.773582, 24.191639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090746, 0.034323, -0.995282,
		0.602881, 0.793571, 0.082335,
		0.792654, -0.607509, 0.051321,
		37.177231, 32.591331, 24.207035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072262, 33.303089, 23.714073>,  <36.622372, 33.016586, 24.171110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072262, 33.303089, 23.714073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209721, 32.929367, 23.751984>,  <37.292194, 32.705135, 23.774731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209721, 32.929367, 23.751984>,  <37.072262, 33.303089, 23.714073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209721, 32.929367, 23.751984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404048, 0.055994, -0.913022,
		0.847733, 0.352052, 0.396746,
		0.343647, -0.934304, 0.094778,
		37.312813, 32.649075, 23.780416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739422, 33.315868, 23.598223>,  <37.072262, 33.303089, 23.714073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739422, 33.315868, 23.598223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614716, 32.952595, 23.486506>,  <37.539894, 32.734631, 23.419476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614716, 32.952595, 23.486506>,  <37.739422, 33.315868, 23.598223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614716, 32.952595, 23.486506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334140, 0.170375, -0.926996,
		0.889469, -0.382325, 0.250345,
		-0.311762, -0.908185, -0.279294,
		37.521187, 32.680138, 23.402718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232010, 33.164360, 23.104513>,  <37.739422, 33.315868, 23.598223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232010, 33.164360, 23.104513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.958317, 32.882416, 23.029678>,  <37.794102, 32.713249, 22.984777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.958317, 32.882416, 23.029678>,  <38.232010, 33.164360, 23.104513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958317, 32.882416, 23.029678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265832, -0.002176, -0.964017,
		0.679090, -0.709343, 0.188863,
		-0.684230, -0.704860, -0.187089,
		37.753048, 32.670959, 22.973553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563793, 32.676609, 22.735340>,  <38.232010, 33.164360, 23.104513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563793, 32.676609, 22.735340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176521, 32.612240, 22.658670>,  <37.944160, 32.573620, 22.612669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176521, 32.612240, 22.658670>,  <38.563793, 32.676609, 22.735340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176521, 32.612240, 22.658670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216952, -0.157838, -0.963337,
		0.124768, -0.974264, 0.187728,
		-0.968176, -0.160922, -0.191676,
		37.886070, 32.563965, 22.601168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534267, 32.114998, 22.229750>,  <38.563793, 32.676609, 22.735340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534267, 32.114998, 22.229750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176434, 32.285664, 22.176569>,  <37.961735, 32.388062, 22.144661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176434, 32.285664, 22.176569>,  <38.534267, 32.114998, 22.229750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176434, 32.285664, 22.176569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135780, -0.023947, -0.990450,
		-0.425774, -0.904093, -0.036510,
		-0.894584, 0.426665, -0.132954,
		37.908058, 32.413662, 22.136683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194580, 31.771660, 21.693258>,  <38.534267, 32.114998, 22.229750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194580, 31.771660, 21.693258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999790, 32.120983, 21.687803>,  <37.882915, 32.330578, 21.684530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999790, 32.120983, 21.687803>,  <38.194580, 31.771660, 21.693258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999790, 32.120983, 21.687803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234433, 0.115655, -0.965228,
		-0.841364, -0.473241, -0.261054,
		-0.486978, 0.873308, -0.013635,
		37.853695, 32.382977, 21.683712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823795, 31.856911, 21.093073>,  <38.194580, 31.771660, 21.693258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823795, 31.856911, 21.093073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809521, 32.245964, 21.184912>,  <37.800957, 32.479397, 21.240015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809521, 32.245964, 21.184912>,  <37.823795, 31.856911, 21.093073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809521, 32.245964, 21.184912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177282, 0.232262, -0.956361,
		-0.983513, 0.006572, -0.180719,
		-0.035689, 0.972631, 0.229597,
		37.798813, 32.537754, 21.253792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375126, 32.191364, 20.605656>,  <37.823795, 31.856911, 21.093073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375126, 32.191364, 20.605656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558876, 32.514690, 20.752954>,  <37.669125, 32.708687, 20.841333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558876, 32.514690, 20.752954>,  <37.375126, 32.191364, 20.605656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558876, 32.514690, 20.752954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101805, 0.363935, -0.925844,
		-0.882389, 0.462799, 0.084892,
		0.459375, 0.808312, 0.368247,
		37.696690, 32.757183, 20.863428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074978, 32.715759, 20.210024>,  <37.375126, 32.191364, 20.605656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074978, 32.715759, 20.210024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.431171, 32.832844, 20.349371>,  <37.644886, 32.903095, 20.432980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.431171, 32.832844, 20.349371>,  <37.074978, 32.715759, 20.210024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431171, 32.832844, 20.349371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306205, 0.180810, -0.934637,
		-0.336563, 0.938952, 0.071380,
		0.890485, 0.292707, 0.348366,
		37.698318, 32.920654, 20.453880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194267, 33.386520, 19.932940>,  <37.074978, 32.715759, 20.210024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194267, 33.386520, 19.932940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.528618, 33.191555, 20.033926>,  <37.729229, 33.074574, 20.094517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.528618, 33.191555, 20.033926>,  <37.194267, 33.386520, 19.932940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528618, 33.191555, 20.033926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454206, 0.355886, -0.816726,
		0.308237, 0.797352, 0.518864,
		0.835875, -0.487416, 0.252465,
		37.779381, 33.045330, 20.109665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656143, 33.825920, 19.701263>,  <37.194267, 33.386520, 19.932940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656143, 33.825920, 19.701263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837891, 33.472130, 19.743681>,  <37.946938, 33.259853, 19.769131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837891, 33.472130, 19.743681>,  <37.656143, 33.825920, 19.701263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837891, 33.472130, 19.743681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669629, 0.260618, -0.695467,
		0.587490, 0.387008, 0.710690,
		0.454370, -0.884479, 0.106042,
		37.974201, 33.206787, 19.775494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224281, 34.387653, 19.892183>,  <37.656143, 33.825920, 19.701263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224281, 34.387653, 19.892183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914558, 34.609783, 19.770821>,  <36.728725, 34.743061, 19.698004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914558, 34.609783, 19.770821>,  <37.224281, 34.387653, 19.892183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914558, 34.609783, 19.770821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147070, 0.308407, 0.939817,
		0.615479, 0.772331, -0.157130,
		-0.774310, 0.555328, -0.303405,
		36.682266, 34.776382, 19.679800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324535, 35.007164, 20.221851>,  <37.224281, 34.387653, 19.892183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324535, 35.007164, 20.221851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942947, 35.022614, 20.102888>,  <36.713993, 35.031883, 20.031509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942947, 35.022614, 20.102888>,  <37.324535, 35.007164, 20.221851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942947, 35.022614, 20.102888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278418, 0.254573, 0.926108,
		0.111479, 0.966282, -0.232102,
		-0.953969, 0.038621, -0.297410,
		36.656757, 35.034199, 20.013664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064617, 35.564415, 20.560408>,  <37.324535, 35.007164, 20.221851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064617, 35.564415, 20.560408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751141, 35.345165, 20.443521>,  <36.563057, 35.213615, 20.373390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751141, 35.345165, 20.443521>,  <37.064617, 35.564415, 20.560408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751141, 35.345165, 20.443521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343709, -0.009195, 0.939031,
		-0.517395, 0.836344, -0.181190,
		-0.783688, -0.548127, -0.292216,
		36.516033, 35.180729, 20.355856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445248, 35.898197, 20.793148>,  <37.064617, 35.564415, 20.560408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445248, 35.898197, 20.793148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346554, 35.512604, 20.753426>,  <36.287338, 35.281250, 20.729591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346554, 35.512604, 20.753426>,  <36.445248, 35.898197, 20.793148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346554, 35.512604, 20.753426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559510, 0.058038, 0.826789,
		-0.791245, 0.259563, -0.553677,
		-0.246738, -0.963980, -0.099306,
		36.272533, 35.223408, 20.723635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731621, 35.776623, 21.120651>,  <36.445248, 35.898197, 20.793148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731621, 35.776623, 21.120651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861004, 35.398731, 21.099251>,  <35.938633, 35.171997, 21.086411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861004, 35.398731, 21.099251>,  <35.731621, 35.776623, 21.120651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861004, 35.398731, 21.099251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264212, -0.144465, 0.953584,
		-0.908609, -0.294303, -0.296337,
		0.323453, -0.944730, -0.053503,
		35.958038, 35.115311, 21.083200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177677, 35.342796, 21.453688>,  <35.731621, 35.776623, 21.120651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177677, 35.342796, 21.453688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515030, 35.128780, 21.473415>,  <35.717442, 35.000370, 21.485252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515030, 35.128780, 21.473415>,  <35.177677, 35.342796, 21.453688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515030, 35.128780, 21.473415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128088, -0.111066, 0.985524,
		-0.521819, -0.837493, -0.162204,
		0.843385, -0.535042, 0.049317,
		35.768047, 34.968269, 21.488211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070190, 34.669662, 21.818480>,  <35.177677, 35.342796, 21.453688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070190, 34.669662, 21.818480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.469761, 34.680611, 21.833460>,  <35.709503, 34.687180, 21.842447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.469761, 34.680611, 21.833460>,  <35.070190, 34.669662, 21.818480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469761, 34.680611, 21.833460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031531, -0.191429, 0.981000,
		0.034024, -0.981125, -0.190360,
		0.998924, 0.027375, 0.037449,
		35.769440, 34.688824, 21.844694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193192, 34.013317, 22.217121>,  <35.070190, 34.669662, 21.818480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193192, 34.013317, 22.217121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484840, 34.285484, 22.246552>,  <35.659828, 34.448784, 22.264210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484840, 34.285484, 22.246552>,  <35.193192, 34.013317, 22.217121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484840, 34.285484, 22.246552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094573, -0.006302, 0.995498,
		0.677817, -0.732799, 0.059754,
		0.729123, 0.680417, 0.073575,
		35.703579, 34.489609, 22.268623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625072, 33.688095, 22.760662>,  <35.193192, 34.013317, 22.217121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625072, 33.688095, 22.760662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742573, 34.070179, 22.774954>,  <35.813072, 34.299431, 22.783529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742573, 34.070179, 22.774954>,  <35.625072, 33.688095, 22.760662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742573, 34.070179, 22.774954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290082, -0.124701, 0.948842,
		0.910803, -0.268359, -0.313722,
		0.293752, 0.955214, 0.035732,
		35.830700, 34.356743, 22.785673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233692, 33.663731, 23.117071>,  <35.625072, 33.688095, 22.760662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233692, 33.663731, 23.117071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.068375, 34.025818, 23.156599>,  <35.969185, 34.243069, 23.180317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.068375, 34.025818, 23.156599>,  <36.233692, 33.663731, 23.117071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068375, 34.025818, 23.156599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259407, 0.013016, 0.965680,
		0.872865, 0.424749, -0.240199,
		-0.413298, 0.905218, 0.098822,
		35.944386, 34.297382, 23.186245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559189, 33.925011, 23.640612>,  <36.233692, 33.663731, 23.117071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559189, 33.925011, 23.640612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.305622, 34.233318, 23.615099>,  <36.153481, 34.418301, 23.599791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.305622, 34.233318, 23.615099>,  <36.559189, 33.925011, 23.640612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305622, 34.233318, 23.615099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113350, 0.174171, 0.978170,
		0.765051, 0.612848, -0.197776,
		-0.633916, 0.770767, -0.063783,
		36.115448, 34.464550, 23.595964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947266, 34.463852, 23.872080>,  <36.559189, 33.925011, 23.640612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947266, 34.463852, 23.872080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552074, 34.506260, 23.917080>,  <36.314960, 34.531704, 23.944080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552074, 34.506260, 23.917080>,  <36.947266, 34.463852, 23.872080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552074, 34.506260, 23.917080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126022, 0.130930, 0.983349,
		0.089526, 0.985706, -0.142717,
		-0.987979, 0.106021, 0.112500,
		36.255680, 34.538067, 23.950830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884426, 34.976986, 24.403818>,  <36.947266, 34.463852, 23.872080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884426, 34.976986, 24.403818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510098, 34.836414, 24.392977>,  <36.285500, 34.752071, 24.386473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510098, 34.836414, 24.392977>,  <36.884426, 34.976986, 24.403818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510098, 34.836414, 24.392977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015386, -0.036095, 0.999230,
		-0.352136, 0.935519, 0.028371,
		-0.935823, -0.351428, -0.027104,
		36.229351, 34.730988, 24.384846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547932, 35.367931, 25.000498>,  <36.884426, 34.976986, 24.403818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547932, 35.367931, 25.000498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.361954, 35.025623, 24.909735>,  <36.250366, 34.820240, 24.855276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.361954, 35.025623, 24.909735>,  <36.547932, 35.367931, 25.000498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361954, 35.025623, 24.909735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155489, -0.173383, 0.972503,
		-0.871578, 0.487443, -0.052449,
		-0.464946, -0.855768, -0.226909,
		36.222469, 34.768894, 24.841661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898067, 35.353336, 25.254698>,  <36.547932, 35.367931, 25.000498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898067, 35.353336, 25.254698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970798, 34.960011, 25.252831>,  <36.014439, 34.724014, 25.251711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970798, 34.960011, 25.252831>,  <35.898067, 35.353336, 25.254698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970798, 34.960011, 25.252831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433883, -0.084490, 0.896999,
		-0.882430, -0.161077, -0.442008,
		0.181831, -0.983319, -0.004668,
		36.025349, 34.665016, 25.251431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392200, 35.127975, 25.693853>,  <35.898067, 35.353336, 25.254698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392200, 35.127975, 25.693853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.616997, 34.799583, 25.653532>,  <35.751873, 34.602547, 25.629339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.616997, 34.799583, 25.653532>,  <35.392200, 35.127975, 25.693853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616997, 34.799583, 25.653532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205219, -0.256448, 0.944521,
		-0.801284, -0.510121, -0.312601,
		0.561986, -0.820981, -0.100801,
		35.785591, 34.553288, 25.623291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012325, 34.699348, 26.042295>,  <35.392200, 35.127975, 25.693853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012325, 34.699348, 26.042295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.372997, 34.526386, 26.042059>,  <35.589401, 34.422607, 26.041918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.372997, 34.526386, 26.042059>,  <35.012325, 34.699348, 26.042295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372997, 34.526386, 26.042059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189926, -0.397279, 0.897829,
		-0.388438, -0.809453, -0.440344,
		0.901690, -0.432383, -0.000582,
		35.643501, 34.396664, 26.041882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893921, 33.961418, 26.230312>,  <35.012325, 34.699348, 26.042295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893921, 33.961418, 26.230312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.275311, 34.049557, 26.312607>,  <35.504147, 34.102440, 26.361984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.275311, 34.049557, 26.312607>,  <34.893921, 33.961418, 26.230312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275311, 34.049557, 26.312607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097676, -0.419840, 0.902327,
		0.285204, -0.880443, -0.378785,
		0.953477, 0.220349, 0.205738,
		35.561352, 34.115662, 26.374329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120243, 33.367744, 26.438183>,  <34.893921, 33.961418, 26.230312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120243, 33.367744, 26.438183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403339, 33.619267, 26.566998>,  <35.573196, 33.770180, 26.644287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403339, 33.619267, 26.566998>,  <35.120243, 33.367744, 26.438183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403339, 33.619267, 26.566998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142348, -0.319566, 0.936811,
		0.691981, -0.708862, -0.136662,
		0.707742, 0.628802, 0.322039,
		35.615662, 33.807907, 26.663609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524883, 32.998001, 26.816612>,  <35.120243, 33.367744, 26.438183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524883, 32.998001, 26.816612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566204, 33.373650, 26.947683>,  <35.590996, 33.599041, 27.026325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566204, 33.373650, 26.947683>,  <35.524883, 32.998001, 26.816612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566204, 33.373650, 26.947683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028885, -0.332132, 0.942791,
		0.994230, -0.087931, -0.061438,
		0.103307, 0.939125, 0.327676,
		35.597195, 33.655388, 27.045986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.927647, 31.395395, 31.758915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850155, 31.765173, 31.627537>,  <39.803661, 31.987040, 31.548710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850155, 31.765173, 31.627537>,  <39.927647, 31.395395, 31.758915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850155, 31.765173, 31.627537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519808, 0.380654, 0.764789,
		0.832027, -0.022569, -0.554276,
		-0.193726, 0.924442, -0.328446,
		39.792038, 32.042507, 31.529003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549400, 31.752584, 31.894262>,  <39.927647, 31.395395, 31.758915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549400, 31.752584, 31.894262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.264240, 32.027191, 31.837032>,  <40.093143, 32.191956, 31.802694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.264240, 32.027191, 31.837032>,  <40.549400, 31.752584, 31.894262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264240, 32.027191, 31.837032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448002, 0.602817, 0.660231,
		0.539506, 0.406582, -0.737309,
		-0.712901, 0.686515, -0.143074,
		40.050369, 32.233147, 31.794109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875591, 32.433037, 31.866346>,  <40.549400, 31.752584, 31.894262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875591, 32.433037, 31.866346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.495716, 32.513306, 31.962534>,  <40.267792, 32.561466, 32.020245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.495716, 32.513306, 31.962534>,  <40.875591, 32.433037, 31.866346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495716, 32.513306, 31.962534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310199, 0.708679, 0.633681,
		-0.043251, 0.676391, -0.735272,
		-0.949687, 0.200673, 0.240467,
		40.210812, 32.573509, 32.034676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875629, 33.113350, 32.010101>,  <40.875591, 32.433037, 31.866346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875629, 33.113350, 32.010101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.546646, 32.969868, 32.186684>,  <40.349255, 32.883778, 32.292633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.546646, 32.969868, 32.186684>,  <40.875629, 33.113350, 32.010101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546646, 32.969868, 32.186684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139449, 0.625259, 0.767858,
		-0.551462, 0.693094, -0.464231,
		-0.822462, -0.358708, 0.441457,
		40.299908, 32.862255, 32.319122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511478, 33.668583, 32.272663>,  <40.875629, 33.113350, 32.010101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511478, 33.668583, 32.272663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347397, 33.372910, 32.486332>,  <40.248947, 33.195503, 32.614532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347397, 33.372910, 32.486332>,  <40.511478, 33.668583, 32.272663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347397, 33.372910, 32.486332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104206, 0.543892, 0.832660,
		-0.906022, 0.397222, -0.146077,
		-0.410200, -0.739187, 0.534171,
		40.224339, 33.151154, 32.646584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980370, 33.978355, 32.699356>,  <40.511478, 33.668583, 32.272663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980370, 33.978355, 32.699356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095310, 33.644402, 32.887142>,  <40.164272, 33.444031, 32.999813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095310, 33.644402, 32.887142>,  <39.980370, 33.978355, 32.699356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095310, 33.644402, 32.887142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146718, 0.522720, 0.839784,
		-0.946522, -0.172432, 0.272696,
		0.287350, -0.834884, 0.469467,
		40.181515, 33.393936, 33.027981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615650, 33.971859, 33.307716>,  <39.980370, 33.978355, 32.699356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615650, 33.971859, 33.307716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933300, 33.735943, 33.366371>,  <40.123890, 33.594391, 33.401566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933300, 33.735943, 33.366371>,  <39.615650, 33.971859, 33.307716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933300, 33.735943, 33.366371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079976, 0.340595, 0.936803,
		-0.602465, -0.732214, 0.317645,
		0.794128, -0.589795, 0.146637,
		40.171539, 33.559006, 33.410362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477997, 33.712551, 33.932888>,  <39.615650, 33.971859, 33.307716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477997, 33.712551, 33.932888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.866455, 33.629452, 33.886028>,  <40.099529, 33.579594, 33.857914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.866455, 33.629452, 33.886028>,  <39.477997, 33.712551, 33.932888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866455, 33.629452, 33.886028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198586, 0.432326, 0.879578,
		-0.132082, -0.877460, 0.461105,
		0.971143, -0.207746, -0.117149,
		40.157799, 33.567127, 33.850883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629704, 33.425442, 34.547516>,  <39.477997, 33.712551, 33.932888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629704, 33.425442, 34.547516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.999081, 33.521626, 34.427891>,  <40.220707, 33.579334, 34.356117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.999081, 33.521626, 34.427891>,  <39.629704, 33.425442, 34.547516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999081, 33.521626, 34.427891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268000, 0.153671, 0.951084,
		0.274653, -0.958418, 0.077464,
		0.923441, 0.240457, -0.299062,
		40.276112, 33.593761, 34.338173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084503, 33.157665, 35.021362>,  <39.629704, 33.425442, 34.547516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084503, 33.157665, 35.021362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307629, 33.448883, 34.861969>,  <40.441505, 33.623615, 34.766335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307629, 33.448883, 34.861969>,  <40.084503, 33.157665, 35.021362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307629, 33.448883, 34.861969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270222, 0.294645, 0.916605,
		0.784744, -0.618974, -0.032377,
		0.557815, 0.728049, -0.398481,
		40.474972, 33.667297, 34.742424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726368, 33.342228, 35.498085>,  <40.084503, 33.157665, 35.021362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726368, 33.342228, 35.498085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.698822, 33.661922, 35.259262>,  <40.682297, 33.853741, 35.115967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.698822, 33.661922, 35.259262>,  <40.726368, 33.342228, 35.498085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698822, 33.661922, 35.259262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127999, 0.600612, 0.789228,
		0.989381, -0.022075, -0.143662,
		-0.068863, 0.799235, -0.597060,
		40.678162, 33.901691, 35.080143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351692, 33.725304, 35.660023>,  <40.726368, 33.342228, 35.498085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351692, 33.725304, 35.660023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.090233, 33.972450, 35.485214>,  <40.933357, 34.120739, 35.380329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.090233, 33.972450, 35.485214>,  <41.351692, 33.725304, 35.660023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090233, 33.972450, 35.485214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107170, 0.647212, 0.754739,
		0.749170, 0.446501, -0.489267,
		-0.653651, 0.617863, -0.437020,
		40.894138, 34.157810, 35.354107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569653, 34.414608, 35.606297>,  <41.351692, 33.725304, 35.660023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569653, 34.414608, 35.606297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170025, 34.427143, 35.594479>,  <40.930248, 34.434662, 35.587387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170025, 34.427143, 35.594479>,  <41.569653, 34.414608, 35.606297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170025, 34.427143, 35.594479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003538, 0.624030, 0.781392,
		0.042924, 0.780771, -0.623341,
		-0.999072, 0.031334, -0.029548,
		40.870304, 34.436543, 35.585613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421043, 35.025406, 35.649258>,  <41.569653, 34.414608, 35.606297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421043, 35.025406, 35.649258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.121094, 34.853580, 35.850521>,  <40.941124, 34.750484, 35.971279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.121094, 34.853580, 35.850521>,  <41.421043, 35.025406, 35.649258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121094, 34.853580, 35.850521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068628, 0.806942, 0.586630,
		-0.658015, 0.405366, -0.634582,
		-0.749871, -0.429562, 0.503161,
		40.896133, 34.724712, 36.001469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380116, 35.723793, 35.758476>,  <41.421043, 35.025406, 35.649258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380116, 35.723793, 35.758476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.463825, 36.004204, 36.031170>,  <41.514053, 36.172451, 36.194786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.463825, 36.004204, 36.031170>,  <41.380116, 35.723793, 35.758476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463825, 36.004204, 36.031170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483609, 0.680142, -0.550934,
		-0.849897, -0.214394, 0.481364,
		0.209278, 0.701029, 0.681733,
		41.526608, 36.214512, 36.235691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816639, 36.061806, 35.734539>,  <41.380116, 35.723793, 35.758476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816639, 36.061806, 35.734539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049110, 36.314453, 35.939789>,  <41.188591, 36.466042, 36.062939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049110, 36.314453, 35.939789>,  <40.816639, 36.061806, 35.734539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049110, 36.314453, 35.939789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481627, 0.775219, -0.408743,
		-0.655951, -0.009583, 0.754743,
		0.581174, 0.631620, 0.513121,
		41.223461, 36.503941, 36.093727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386196, 36.657181, 35.806896>,  <40.816639, 36.061806, 35.734539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386196, 36.657181, 35.806896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.775082, 36.741005, 35.848625>,  <41.008415, 36.791298, 35.873661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.775082, 36.741005, 35.848625>,  <40.386196, 36.657181, 35.806896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775082, 36.741005, 35.848625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119259, 0.826884, -0.549581,
		-0.201431, 0.521870, 0.828901,
		0.972215, 0.209557, 0.104322,
		41.066746, 36.803871, 35.879921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312901, 37.363541, 35.636341>,  <40.386196, 36.657181, 35.806896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312901, 37.363541, 35.636341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.691818, 37.246124, 35.584995>,  <40.919167, 37.175674, 35.554188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.691818, 37.246124, 35.584995>,  <40.312901, 37.363541, 35.636341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691818, 37.246124, 35.584995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084705, 0.615872, -0.783279,
		0.308977, 0.731120, 0.608274,
		0.947290, -0.293539, -0.128361,
		40.976006, 37.158062, 35.546486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672054, 37.992828, 35.465363>,  <40.312901, 37.363541, 35.636341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672054, 37.992828, 35.465363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.933971, 37.708591, 35.362358>,  <41.091122, 37.538048, 35.300556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.933971, 37.708591, 35.362358>,  <40.672054, 37.992828, 35.465363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933971, 37.708591, 35.362358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357739, 0.591504, -0.722597,
		0.665788, 0.381028, 0.641517,
		0.654789, -0.710592, -0.257508,
		41.130409, 37.495415, 35.285107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362553, 38.337372, 35.213428>,  <40.672054, 37.992828, 35.465363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362553, 38.337372, 35.213428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.383476, 37.966499, 35.065056>,  <41.396030, 37.743977, 34.976032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.383476, 37.966499, 35.065056>,  <41.362553, 38.337372, 35.213428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383476, 37.966499, 35.065056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128768, 0.374605, -0.918200,
		0.990294, 0.000263, 0.138985,
		0.052306, -0.927185, -0.370935,
		41.399166, 37.688343, 34.953773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889114, 38.268982, 34.648926>,  <41.362553, 38.337372, 35.213428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889114, 38.268982, 34.648926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647736, 37.960217, 34.568916>,  <41.502911, 37.774960, 34.520912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647736, 37.960217, 34.568916>,  <41.889114, 38.268982, 34.648926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647736, 37.960217, 34.568916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199649, 0.096599, -0.975094,
		0.772008, -0.628348, 0.095819,
		-0.603443, -0.771911, -0.200025,
		41.466702, 37.728642, 34.508907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152466, 37.862442, 33.994740>,  <41.889114, 38.268982, 34.648926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152466, 37.862442, 33.994740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782154, 37.716633, 34.034840>,  <41.559967, 37.629147, 34.058899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782154, 37.716633, 34.034840>,  <42.152466, 37.862442, 33.994740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782154, 37.716633, 34.034840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004594, -0.254302, -0.967114,
		0.378025, -0.895799, 0.233754,
		-0.925784, -0.364520, 0.100248,
		41.504417, 37.607277, 34.064915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195625, 37.279137, 33.654427>,  <42.152466, 37.862442, 33.994740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195625, 37.279137, 33.654427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.812767, 37.393211, 33.674564>,  <41.583050, 37.461658, 33.686649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.812767, 37.393211, 33.674564>,  <42.195625, 37.279137, 33.654427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812767, 37.393211, 33.674564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094159, -0.142061, -0.985369,
		-0.273867, -0.947884, 0.162826,
		-0.957148, 0.285192, 0.050346,
		41.525623, 37.478767, 33.689667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892590, 36.873283, 33.194923>,  <42.195625, 37.279137, 33.654427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892590, 36.873283, 33.194923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.627018, 37.167789, 33.247250>,  <41.467674, 37.344494, 33.278645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.627018, 37.167789, 33.247250>,  <41.892590, 36.873283, 33.194923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627018, 37.167789, 33.247250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082854, 0.101427, -0.991387,
		-0.743194, -0.669046, -0.006337,
		-0.663926, 0.736267, 0.130813,
		41.427841, 37.388668, 33.286495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413780, 36.745651, 32.754284>,  <41.892590, 36.873283, 33.194923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413780, 36.745651, 32.754284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.352364, 37.130005, 32.846481>,  <41.315514, 37.360619, 32.901798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.352364, 37.130005, 32.846481>,  <41.413780, 36.745651, 32.754284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352364, 37.130005, 32.846481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164146, 0.205217, -0.964853,
		-0.974413, -0.185983, 0.126215,
		-0.153545, 0.960883, 0.230494,
		41.306301, 37.418270, 32.915630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814369, 36.924301, 32.474236>,  <41.413780, 36.745651, 32.754284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814369, 36.924301, 32.474236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.006195, 37.274834, 32.492371>,  <41.121292, 37.485153, 32.503254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.006195, 37.274834, 32.492371>,  <40.814369, 36.924301, 32.474236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006195, 37.274834, 32.492371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126153, 0.119985, -0.984728,
		-0.868390, 0.466523, 0.168093,
		0.479567, 0.876333, 0.045340,
		41.150066, 37.537735, 32.505974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493454, 37.215073, 32.001278>,  <40.814369, 36.924301, 32.474236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493454, 37.215073, 32.001278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.809414, 37.457233, 32.040348>,  <40.998989, 37.602531, 32.063789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.809414, 37.457233, 32.040348>,  <40.493454, 37.215073, 32.001278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809414, 37.457233, 32.040348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057492, 0.231683, -0.971091,
		-0.610530, 0.761453, 0.217813,
		0.789904, 0.605402, 0.097672,
		41.046387, 37.638855, 32.069649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381989, 37.857983, 31.658915>,  <40.493454, 37.215073, 32.001278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381989, 37.857983, 31.658915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.777691, 37.801880, 31.675446>,  <41.015110, 37.768219, 31.685364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.777691, 37.801880, 31.675446>,  <40.381989, 37.857983, 31.658915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777691, 37.801880, 31.675446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042453, 0.005056, -0.999086,
		0.139921, 0.990102, 0.010956,
		0.989252, -0.140258, 0.041326,
		41.074467, 37.759804, 31.687843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129566, 38.557690, 31.727676>,  <40.381989, 37.857983, 31.658915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129566, 38.557690, 31.727676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.009838, 38.930347, 31.645269>,  <39.938000, 39.153942, 31.595825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.009838, 38.930347, 31.645269>,  <40.129566, 38.557690, 31.727676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009838, 38.930347, 31.645269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186972, 0.154459, 0.970146,
		0.935654, 0.328903, 0.127959,
		-0.299319, 0.931646, -0.206016,
		39.920044, 39.209843, 31.583464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478992, 38.912792, 32.221756>,  <40.129566, 38.557690, 31.727676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478992, 38.912792, 32.221756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147270, 39.117794, 32.132671>,  <39.948238, 39.240795, 32.079220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147270, 39.117794, 32.132671>,  <40.478992, 38.912792, 32.221756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147270, 39.117794, 32.132671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213738, 0.077320, 0.973826,
		0.516308, 0.855197, 0.045420,
		-0.829302, 0.512503, -0.222709,
		39.898479, 39.271545, 32.065857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520576, 39.543568, 32.713963>,  <40.478992, 38.912792, 32.221756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520576, 39.543568, 32.713963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147305, 39.513008, 32.573486>,  <39.923340, 39.494671, 32.489201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147305, 39.513008, 32.573486>,  <40.520576, 39.543568, 32.713963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147305, 39.513008, 32.573486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359032, 0.242907, 0.901161,
		0.016457, 0.967036, -0.254107,
		-0.933180, -0.076402, -0.351195,
		39.867352, 39.490089, 32.468128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117996, 40.083920, 32.983463>,  <40.520576, 39.543568, 32.713963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117996, 40.083920, 32.983463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.856415, 39.793018, 32.900085>,  <39.699467, 39.618477, 32.850060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.856415, 39.793018, 32.900085>,  <40.117996, 40.083920, 32.983463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856415, 39.793018, 32.900085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356220, 0.052927, 0.932902,
		-0.667420, 0.684330, -0.293672,
		-0.653956, -0.727249, -0.208447,
		39.660229, 39.574844, 32.837551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484905, 40.280144, 33.165218>,  <40.117996, 40.083920, 32.983463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484905, 40.280144, 33.165218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407288, 39.887959, 33.152363>,  <39.360718, 39.652645, 33.144650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407288, 39.887959, 33.152363>,  <39.484905, 40.280144, 33.165218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407288, 39.887959, 33.152363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480849, 0.066505, 0.874277,
		-0.855062, 0.185102, -0.484361,
		-0.194043, -0.980466, -0.032140,
		39.349075, 39.593819, 33.142719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795250, 40.151112, 33.397266>,  <39.484905, 40.280144, 33.165218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795250, 40.151112, 33.397266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985275, 39.804096, 33.456173>,  <39.099293, 39.595886, 33.491516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985275, 39.804096, 33.456173>,  <38.795250, 40.151112, 33.397266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985275, 39.804096, 33.456173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446345, -0.093346, 0.889979,
		-0.758345, -0.488531, -0.431568,
		0.475067, -0.867539, 0.147265,
		39.127796, 39.543835, 33.500351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265648, 39.777687, 33.738461>,  <38.795250, 40.151112, 33.397266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265648, 39.777687, 33.738461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.589001, 39.550705, 33.801086>,  <38.783012, 39.414516, 33.838661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.589001, 39.550705, 33.801086>,  <38.265648, 39.777687, 33.738461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589001, 39.550705, 33.801086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376801, -0.294468, 0.878242,
		-0.452263, -0.768947, -0.451861,
		0.808381, -0.567458, 0.156563,
		38.831516, 39.380466, 33.848057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118824, 39.209667, 34.023464>,  <38.265648, 39.777687, 33.738461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118824, 39.209667, 34.023464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504532, 39.217121, 34.129173>,  <38.735958, 39.221592, 34.192600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504532, 39.217121, 34.129173>,  <38.118824, 39.209667, 34.023464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504532, 39.217121, 34.129173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220897, -0.494153, 0.840843,
		0.146258, -0.869175, -0.472380,
		0.964268, 0.018633, 0.264272,
		38.793812, 39.222710, 34.208454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187527, 38.524261, 34.241692>,  <38.118824, 39.209667, 34.023464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187527, 38.524261, 34.241692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478874, 38.734264, 34.417805>,  <38.653683, 38.860264, 34.523472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478874, 38.734264, 34.417805>,  <38.187527, 38.524261, 34.241692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478874, 38.734264, 34.417805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211447, -0.438988, 0.873258,
		0.651743, -0.729151, -0.208734,
		0.728368, 0.525004, 0.440284,
		38.697384, 38.891766, 34.549889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563114, 38.085445, 34.723087>,  <38.187527, 38.524261, 34.241692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563114, 38.085445, 34.723087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.651897, 38.448208, 34.866337>,  <38.705170, 38.665867, 34.952286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.651897, 38.448208, 34.866337>,  <38.563114, 38.085445, 34.723087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651897, 38.448208, 34.866337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129500, -0.336609, 0.932697,
		0.966418, -0.253398, 0.042731,
		0.221960, 0.906909, 0.358120,
		38.718487, 38.720280, 34.973774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093403, 38.036606, 35.233810>,  <38.563114, 38.085445, 34.723087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093403, 38.036606, 35.233810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946148, 38.396999, 35.325642>,  <38.857796, 38.613235, 35.380741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946148, 38.396999, 35.325642>,  <39.093403, 38.036606, 35.233810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946148, 38.396999, 35.325642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170356, -0.177373, 0.969287,
		0.914033, 0.395937, -0.088191,
		-0.368134, 0.900984, 0.229575,
		38.835709, 38.667294, 35.394516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600624, 38.395107, 35.529018>,  <39.093403, 38.036606, 35.233810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600624, 38.395107, 35.529018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245945, 38.536880, 35.647774>,  <39.033138, 38.621944, 35.719025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245945, 38.536880, 35.647774>,  <39.600624, 38.395107, 35.529018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245945, 38.536880, 35.647774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264738, -0.137221, 0.954507,
		0.379047, 0.924959, 0.027842,
		-0.886700, 0.354432, 0.296885,
		38.979935, 38.643211, 35.736839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.978893, 38.791157, 28.044783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586540, 38.856533, 28.087029>,  <40.351128, 38.895760, 28.112375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586540, 38.856533, 28.087029>,  <40.978893, 38.791157, 28.044783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586540, 38.856533, 28.087029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184023, 0.602621, 0.776520,
		0.063274, 0.781110, -0.621179,
		-0.980883, 0.163445, 0.105612,
		40.292274, 38.905567, 28.118711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909405, 39.481758, 28.420546>,  <40.978893, 38.791157, 28.044783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909405, 39.481758, 28.420546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522797, 39.384293, 28.452707>,  <40.290833, 39.325813, 28.472004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522797, 39.384293, 28.452707>,  <40.909405, 39.481758, 28.420546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522797, 39.384293, 28.452707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004998, 0.331171, 0.943558,
		-0.256541, 0.911566, -0.321301,
		-0.966521, -0.243667, 0.080403,
		40.232841, 39.311192, 28.476828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551407, 40.094578, 28.635210>,  <40.909405, 39.481758, 28.420546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551407, 40.094578, 28.635210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378071, 39.750912, 28.744061>,  <40.274067, 39.544712, 28.809370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378071, 39.750912, 28.744061>,  <40.551407, 40.094578, 28.635210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378071, 39.750912, 28.744061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077747, 0.336464, 0.938481,
		-0.897869, 0.385527, -0.212601,
		-0.433343, -0.859163, 0.272127,
		40.248070, 39.493164, 28.825699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960930, 40.370010, 28.980639>,  <40.551407, 40.094578, 28.635210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960930, 40.370010, 28.980639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965004, 39.990032, 29.105539>,  <39.967449, 39.762047, 29.180481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965004, 39.990032, 29.105539>,  <39.960930, 40.370010, 28.980639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965004, 39.990032, 29.105539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169797, 0.306091, 0.936737,
		-0.985426, -0.062564, -0.158179,
		0.010189, -0.949944, 0.312254,
		39.968060, 39.705048, 29.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394436, 40.256550, 29.430946>,  <39.960930, 40.370010, 28.980639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394436, 40.256550, 29.430946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655651, 39.971382, 29.533154>,  <39.812382, 39.800282, 29.594479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655651, 39.971382, 29.533154>,  <39.394436, 40.256550, 29.430946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655651, 39.971382, 29.533154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075054, 0.274810, 0.958565,
		-0.753597, -0.645157, 0.125954,
		0.653038, -0.712917, 0.255518,
		39.851562, 39.757507, 29.609810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056564, 39.987644, 29.898691>,  <39.394436, 40.256550, 29.430946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056564, 39.987644, 29.898691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436314, 39.869484, 29.941450>,  <39.664165, 39.798588, 29.967106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436314, 39.869484, 29.941450>,  <39.056564, 39.987644, 29.898691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436314, 39.869484, 29.941450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123447, -0.037902, 0.991627,
		-0.288872, -0.954622, -0.072449,
		0.949375, -0.295397, 0.106897,
		39.721127, 39.780865, 29.973518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101383, 39.340515, 30.207516>,  <39.056564, 39.987644, 29.898691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101383, 39.340515, 30.207516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460602, 39.496162, 30.289591>,  <39.676132, 39.589550, 30.338835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460602, 39.496162, 30.289591>,  <39.101383, 39.340515, 30.207516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460602, 39.496162, 30.289591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152352, -0.162453, 0.974884,
		0.412679, -0.906750, -0.086607,
		0.898045, 0.389120, 0.205186,
		39.730015, 39.612900, 30.351147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487175, 38.825481, 30.600279>,  <39.101383, 39.340515, 30.207516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487175, 38.825481, 30.600279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662907, 39.174507, 30.685722>,  <39.768345, 39.383923, 30.736988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662907, 39.174507, 30.685722>,  <39.487175, 38.825481, 30.600279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662907, 39.174507, 30.685722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048348, -0.214476, 0.975532,
		0.897026, -0.438904, -0.052038,
		0.439326, 0.872562, 0.213611,
		39.794704, 39.436275, 30.749805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987900, 38.606678, 31.005600>,  <39.487175, 38.825481, 30.600279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987900, 38.606678, 31.005600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953350, 38.996086, 31.090267>,  <39.932621, 39.229729, 31.141068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953350, 38.996086, 31.090267>,  <39.987900, 38.606678, 31.005600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953350, 38.996086, 31.090267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022210, -0.210527, 0.977336,
		0.996015, 0.089114, -0.003438,
		-0.086371, 0.973518, 0.211667,
		39.927441, 39.288143, 31.153767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761734, 38.396187, 31.171253>,  <39.987900, 38.606678, 31.005600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761734, 38.396187, 31.171253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057178, 38.135899, 31.241693>,  <41.234444, 37.979725, 31.283958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057178, 38.135899, 31.241693>,  <40.761734, 38.396187, 31.171253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057178, 38.135899, 31.241693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256115, 0.029230, -0.966204,
		0.623586, 0.758751, 0.188250,
		0.738611, -0.650725, 0.176100,
		41.278763, 37.940681, 31.294523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317616, 38.637897, 30.765732>,  <40.761734, 38.396187, 31.171253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317616, 38.637897, 30.765732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375751, 38.245872, 30.819933>,  <41.410633, 38.010658, 30.852453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375751, 38.245872, 30.819933>,  <41.317616, 38.637897, 30.765732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375751, 38.245872, 30.819933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081413, -0.124647, -0.988855,
		0.986026, 0.154757, 0.061673,
		0.145345, -0.980058, 0.135505,
		41.419353, 37.951855, 30.860584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834759, 38.426758, 30.263014>,  <41.317616, 38.637897, 30.765732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834759, 38.426758, 30.263014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663067, 38.081501, 30.369413>,  <41.560051, 37.874348, 30.433254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663067, 38.081501, 30.369413>,  <41.834759, 38.426758, 30.263014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663067, 38.081501, 30.369413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083836, -0.255164, -0.963256,
		0.899297, -0.435757, 0.037161,
		-0.429228, -0.863138, 0.266000,
		41.534298, 37.822559, 30.449213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158466, 37.859356, 29.819862>,  <41.834759, 38.426758, 30.263014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158466, 37.859356, 29.819862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804184, 37.724663, 29.947702>,  <41.591614, 37.643848, 30.024406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804184, 37.724663, 29.947702>,  <42.158466, 37.859356, 29.819862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804184, 37.724663, 29.947702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150003, -0.443923, -0.883420,
		0.439355, -0.830387, 0.342672,
		-0.885701, -0.336733, 0.319601,
		41.538475, 37.623642, 30.043583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240894, 37.194695, 29.751646>,  <42.158466, 37.859356, 29.819862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240894, 37.194695, 29.751646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846146, 37.259117, 29.756390>,  <41.609295, 37.297771, 29.759235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846146, 37.259117, 29.756390>,  <42.240894, 37.194695, 29.751646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846146, 37.259117, 29.756390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113437, -0.639078, -0.760731,
		-0.114941, -0.752091, 0.648959,
		-0.986874, 0.161055, 0.011859,
		41.550083, 37.307434, 29.759947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015266, 36.524658, 29.629087>,  <42.240894, 37.194695, 29.751646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015266, 36.524658, 29.629087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711441, 36.760578, 29.519392>,  <41.529148, 36.902130, 29.453575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711441, 36.760578, 29.519392>,  <42.015266, 36.524658, 29.629087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711441, 36.760578, 29.519392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130119, -0.550883, -0.824377,
		-0.637291, -0.590479, 0.495172,
		-0.759559, 0.589799, -0.274240,
		41.483574, 36.937519, 29.437120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472942, 36.084007, 29.470642>,  <42.015266, 36.524658, 29.629087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472942, 36.084007, 29.470642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401543, 36.415058, 29.257788>,  <41.358704, 36.613689, 29.130075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401543, 36.415058, 29.257788>,  <41.472942, 36.084007, 29.470642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401543, 36.415058, 29.257788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008806, -0.539456, -0.841968,
		-0.983901, -0.154975, 0.089004,
		-0.178497, 0.827629, -0.532136,
		41.347992, 36.663345, 29.098146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043568, 35.834591, 28.937525>,  <41.472942, 36.084007, 29.470642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043568, 35.834591, 28.937525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148582, 36.186268, 28.778481>,  <41.211590, 36.397274, 28.683054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148582, 36.186268, 28.778481>,  <41.043568, 35.834591, 28.937525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148582, 36.186268, 28.778481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174741, -0.361931, -0.915681,
		-0.948969, 0.309874, 0.058612,
		0.262532, 0.879195, -0.397609,
		41.227341, 36.450027, 28.659197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559967, 36.029274, 28.397984>,  <41.043568, 35.834591, 28.937525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559967, 36.029274, 28.397984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902817, 36.225204, 28.334230>,  <41.108528, 36.342762, 28.295979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902817, 36.225204, 28.334230>,  <40.559967, 36.029274, 28.397984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902817, 36.225204, 28.334230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052476, -0.224774, -0.972997,
		-0.512424, 0.842347, -0.166956,
		0.857128, 0.489826, -0.159382,
		41.159954, 36.372150, 28.286415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411766, 36.459267, 27.896986>,  <40.559967, 36.029274, 28.397984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411766, 36.459267, 27.896986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808979, 36.415520, 27.879448>,  <41.047306, 36.389271, 27.868925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808979, 36.415520, 27.879448>,  <40.411766, 36.459267, 27.896986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808979, 36.415520, 27.879448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051131, -0.064706, -0.996594,
		0.106154, 0.991893, -0.069847,
		0.993034, -0.109364, -0.043847,
		41.106888, 36.382710, 27.866293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544621, 36.877941, 27.322678>,  <40.411766, 36.459267, 27.896986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544621, 36.877941, 27.322678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850311, 36.622856, 27.361214>,  <41.033726, 36.469807, 27.384335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850311, 36.622856, 27.361214>,  <40.544621, 36.877941, 27.322678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850311, 36.622856, 27.361214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076955, -0.058143, -0.995338,
		0.640338, 0.768079, 0.004641,
		0.764229, -0.637710, 0.096339,
		41.079578, 36.431541, 27.390116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027786, 37.077297, 26.901756>,  <40.544621, 36.877941, 27.322678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027786, 37.077297, 26.901756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146072, 36.703186, 26.979527>,  <41.217045, 36.478718, 27.026190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146072, 36.703186, 26.979527>,  <41.027786, 37.077297, 26.901756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146072, 36.703186, 26.979527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064459, -0.183530, -0.980898,
		0.953097, 0.302604, 0.006013,
		0.295720, -0.935279, 0.194427,
		41.234787, 36.422604, 27.037855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541973, 37.055298, 26.490290>,  <41.027786, 37.077297, 26.901756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541973, 37.055298, 26.490290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406166, 36.689137, 26.576786>,  <41.324684, 36.469440, 26.628685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406166, 36.689137, 26.576786>,  <41.541973, 37.055298, 26.490290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406166, 36.689137, 26.576786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051600, -0.211426, -0.976031,
		0.939185, -0.342533, 0.024547,
		-0.339513, -0.915407, 0.216243,
		41.304314, 36.414513, 26.641659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928482, 36.662807, 26.056702>,  <41.541973, 37.055298, 26.490290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928482, 36.662807, 26.056702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632294, 36.416431, 26.164270>,  <41.454578, 36.268608, 26.228811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632294, 36.416431, 26.164270>,  <41.928482, 36.662807, 26.056702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632294, 36.416431, 26.164270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067257, -0.330210, -0.941508,
		0.668710, -0.715250, 0.203086,
		-0.740475, -0.615937, 0.268920,
		41.410152, 36.231651, 26.244947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.312428, 35.972134, 25.854174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.590446, 36.259209, 25.871281>,  <34.757259, 36.431454, 25.881546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.590446, 36.259209, 25.871281>,  <34.312428, 35.972134, 25.854174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590446, 36.259209, 25.871281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155837, 0.092313, 0.983460,
		0.701873, -0.690215, 0.176005,
		0.695046, 0.717691, 0.042769,
		34.798962, 36.474518, 25.884111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931217, 35.687088, 26.245604>,  <34.312428, 35.972134, 25.854174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931217, 35.687088, 26.245604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939495, 36.086685, 26.261543>,  <34.944462, 36.326443, 26.271107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939495, 36.086685, 26.261543>,  <34.931217, 35.687088, 26.245604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939495, 36.086685, 26.261543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126382, -0.036922, 0.991294,
		0.991766, -0.025553, 0.125490,
		0.020697, 0.998991, 0.039847,
		34.945705, 36.386383, 26.273497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339165, 35.831730, 26.818867>,  <34.931217, 35.687088, 26.245604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339165, 35.831730, 26.818867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.159897, 36.184910, 26.762943>,  <35.052338, 36.396816, 26.729389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.159897, 36.184910, 26.762943>,  <35.339165, 35.831730, 26.818867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159897, 36.184910, 26.762943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097303, 0.107282, 0.989456,
		0.888638, 0.457046, 0.037833,
		-0.448168, 0.882950, -0.139807,
		35.025448, 36.449795, 26.721001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737770, 36.271992, 27.208132>,  <35.339165, 35.831730, 26.818867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737770, 36.271992, 27.208132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380795, 36.441296, 27.145649>,  <35.166611, 36.542877, 27.108160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380795, 36.441296, 27.145649>,  <35.737770, 36.271992, 27.208132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380795, 36.441296, 27.145649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133819, 0.082313, 0.987581,
		0.430865, 0.902260, -0.016818,
		-0.892439, 0.423263, -0.156206,
		35.113064, 36.568275, 27.098787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736813, 36.897945, 27.579224>,  <35.737770, 36.271992, 27.208132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736813, 36.897945, 27.579224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.338993, 36.879662, 27.541748>,  <35.100300, 36.868690, 27.519262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.338993, 36.879662, 27.541748>,  <35.736813, 36.897945, 27.579224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338993, 36.879662, 27.541748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101126, 0.204912, 0.973542,
		-0.025301, 0.977713, -0.208418,
		-0.994552, -0.045708, -0.093688,
		35.040627, 36.865948, 27.513641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458065, 37.555832, 27.836973>,  <35.736813, 36.897945, 27.579224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458065, 37.555832, 27.836973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.176167, 37.272888, 27.858812>,  <35.007027, 37.103123, 27.871916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.176167, 37.272888, 27.858812>,  <35.458065, 37.555832, 27.836973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176167, 37.272888, 27.858812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149047, 0.222858, 0.963390,
		-0.693626, 0.670808, -0.262488,
		-0.704747, -0.707355, 0.054598,
		34.964741, 37.060680, 27.875191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939240, 37.757320, 28.264242>,  <35.458065, 37.555832, 27.836973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939240, 37.757320, 28.264242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.841702, 37.369564, 28.252731>,  <34.783180, 37.136909, 28.245825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.841702, 37.369564, 28.252731>,  <34.939240, 37.757320, 28.264242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841702, 37.369564, 28.252731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189584, 0.018549, 0.981689,
		-0.951103, 0.244836, -0.188303,
		-0.243846, -0.969387, -0.028775,
		34.768547, 37.078747, 28.244099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349442, 37.736401, 28.719110>,  <34.939240, 37.757320, 28.264242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349442, 37.736401, 28.719110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.504181, 37.367817, 28.704895>,  <34.597023, 37.146667, 28.696365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.504181, 37.367817, 28.704895>,  <34.349442, 37.736401, 28.719110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504181, 37.367817, 28.704895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014059, -0.044429, 0.998913,
		-0.922038, -0.385924, -0.030142,
		0.386844, -0.921460, -0.035539,
		34.620235, 37.091377, 28.694233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882141, 37.370651, 29.037121>,  <34.349442, 37.736401, 28.719110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882141, 37.370651, 29.037121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.201508, 37.133709, 29.080301>,  <34.393127, 36.991543, 29.106209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.201508, 37.133709, 29.080301>,  <33.882141, 37.370651, 29.037121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201508, 37.133709, 29.080301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146849, -0.017696, 0.989001,
		-0.583927, -0.805484, -0.101115,
		0.798413, -0.592353, 0.107951,
		34.441032, 36.956001, 29.112686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750790, 37.029999, 29.543079>,  <33.882141, 37.370651, 29.037121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750790, 37.029999, 29.543079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.135201, 36.919495, 29.539001>,  <34.365849, 36.853191, 29.536554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.135201, 36.919495, 29.539001>,  <33.750790, 37.029999, 29.543079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135201, 36.919495, 29.539001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037258, -0.165974, 0.985426,
		-0.273922, -0.946644, -0.169799,
		0.961030, -0.276256, -0.010194,
		34.423508, 36.836617, 29.535944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769180, 36.344719, 29.910162>,  <33.750790, 37.029999, 29.543079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769180, 36.344719, 29.910162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119827, 36.537121, 29.915657>,  <34.330215, 36.652561, 29.918955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119827, 36.537121, 29.915657>,  <33.769180, 36.344719, 29.910162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119827, 36.537121, 29.915657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068067, -0.152214, 0.986001,
		0.476358, -0.863406, -0.166173,
		0.876613, 0.481000, 0.013739,
		34.382812, 36.681419, 29.919779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285744, 36.024818, 30.440880>,  <33.769180, 36.344719, 29.910162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285744, 36.024818, 30.440880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.452217, 36.388088, 30.422939>,  <34.552101, 36.606049, 30.412174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.452217, 36.388088, 30.422939>,  <34.285744, 36.024818, 30.440880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452217, 36.388088, 30.422939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206476, -0.046353, 0.977353,
		0.885525, -0.416024, -0.206807,
		0.416188, 0.908172, -0.044852,
		34.577072, 36.660542, 30.409483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959106, 35.928715, 30.745750>,  <34.285744, 36.024818, 30.440880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959106, 35.928715, 30.745750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.843925, 36.311695, 30.753395>,  <34.774818, 36.541485, 30.757982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.843925, 36.311695, 30.753395>,  <34.959106, 35.928715, 30.745750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843925, 36.311695, 30.753395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285587, 0.066806, 0.956021,
		0.914070, 0.280744, -0.292674,
		-0.287950, 0.957455, 0.019111,
		34.757542, 36.598930, 30.759129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510338, 36.180996, 31.020298>,  <34.959106, 35.928715, 30.745750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510338, 36.180996, 31.020298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.209415, 36.438835, 31.074730>,  <35.028862, 36.593540, 31.107389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.209415, 36.438835, 31.074730>,  <35.510338, 36.180996, 31.020298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209415, 36.438835, 31.074730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267622, 0.110270, 0.957193,
		0.602004, 0.756524, -0.255467,
		-0.752310, 0.644603, 0.136079,
		34.983723, 36.632217, 31.115553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087978, 35.818306, 31.270464>,  <35.510338, 36.180996, 31.020298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087978, 35.818306, 31.270464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.225105, 35.446777, 31.214231>,  <36.307381, 35.223858, 31.180492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.225105, 35.446777, 31.214231>,  <36.087978, 35.818306, 31.270464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225105, 35.446777, 31.214231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299407, 0.033812, -0.953526,
		0.890411, 0.368976, -0.266505,
		0.342817, -0.928824, -0.140580,
		36.327950, 35.168129, 31.172058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565434, 35.817783, 30.738085>,  <36.087978, 35.818306, 31.270464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565434, 35.817783, 30.738085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436749, 35.439217, 30.726776>,  <36.359539, 35.212078, 30.719992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436749, 35.439217, 30.726776>,  <36.565434, 35.817783, 30.738085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436749, 35.439217, 30.726776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069722, 0.053455, -0.996133,
		0.944267, -0.318497, -0.083183,
		-0.321712, -0.946415, -0.028270,
		36.340233, 35.155293, 30.718296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963516, 35.408264, 30.216398>,  <36.565434, 35.817783, 30.738085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963516, 35.408264, 30.216398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.664330, 35.144176, 30.243696>,  <36.484818, 34.985725, 30.260075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.664330, 35.144176, 30.243696>,  <36.963516, 35.408264, 30.216398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664330, 35.144176, 30.243696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108327, -0.222869, -0.968811,
		0.654835, -0.717247, 0.238219,
		-0.747969, -0.660216, 0.068245,
		36.439938, 34.946110, 30.264170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241852, 34.775181, 29.841066>,  <36.963516, 35.408264, 30.216398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241852, 34.775181, 29.841066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843456, 34.745594, 29.861185>,  <36.604420, 34.727840, 29.873257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843456, 34.745594, 29.861185>,  <37.241852, 34.775181, 29.841066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843456, 34.745594, 29.861185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018821, -0.376422, -0.926257,
		0.087446, -0.923491, 0.373521,
		-0.995991, -0.073967, 0.050298,
		36.544659, 34.723404, 29.876274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093559, 34.107464, 29.570566>,  <37.241852, 34.775181, 29.841066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093559, 34.107464, 29.570566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749058, 34.309036, 29.544350>,  <36.542358, 34.429981, 29.528620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749058, 34.309036, 29.544350>,  <37.093559, 34.107464, 29.570566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749058, 34.309036, 29.544350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203592, -0.460338, -0.864083,
		-0.465644, -0.730831, 0.499061,
		-0.861235, 0.503960, -0.065562,
		36.490681, 34.460217, 29.524687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640617, 33.517563, 29.272257>,  <37.093559, 34.107464, 29.570566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640617, 33.517563, 29.272257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.491543, 33.887360, 29.240231>,  <36.402096, 34.109238, 29.221014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.491543, 33.887360, 29.240231>,  <36.640617, 33.517563, 29.272257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491543, 33.887360, 29.240231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242405, -0.180281, -0.953278,
		-0.895736, -0.335869, 0.291291,
		-0.372690, 0.924495, -0.080068,
		36.379734, 34.164707, 29.216209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938995, 33.452141, 28.981079>,  <36.640617, 33.517563, 29.272257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938995, 33.452141, 28.981079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.064865, 33.822651, 28.898138>,  <36.140388, 34.044956, 28.848373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.064865, 33.822651, 28.898138>,  <35.938995, 33.452141, 28.981079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064865, 33.822651, 28.898138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495847, -0.025861, -0.868025,
		-0.809391, 0.375963, 0.451152,
		0.314678, 0.926274, -0.207351,
		36.159267, 34.100533, 28.835932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397324, 33.911667, 28.820673>,  <35.938995, 33.452141, 28.981079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397324, 33.911667, 28.820673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709042, 34.081196, 28.636034>,  <35.896072, 34.182915, 28.525249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709042, 34.081196, 28.636034>,  <35.397324, 33.911667, 28.820673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709042, 34.081196, 28.636034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504918, -0.011613, -0.863089,
		-0.371159, 0.905670, 0.204947,
		0.779294, 0.423825, -0.461599,
		35.942829, 34.208344, 28.497555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099960, 34.224014, 28.251549>,  <35.397324, 33.911667, 28.820673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099960, 34.224014, 28.251549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490658, 34.227795, 28.165865>,  <35.725075, 34.230064, 28.114454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490658, 34.227795, 28.165865>,  <35.099960, 34.224014, 28.251549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490658, 34.227795, 28.165865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214384, 0.025820, -0.976408,
		-0.003696, 0.999622, 0.027245,
		0.976742, 0.009450, -0.214208,
		35.783680, 34.230629, 28.101603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275169, 34.736713, 27.807158>,  <35.099960, 34.224014, 28.251549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275169, 34.736713, 27.807158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.538078, 34.446468, 27.725700>,  <35.695824, 34.272320, 27.676826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.538078, 34.446468, 27.725700>,  <35.275169, 34.736713, 27.807158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538078, 34.446468, 27.725700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208728, 0.084375, -0.974327,
		0.724170, 0.682907, -0.095999,
		0.657275, -0.725616, -0.203644,
		35.735260, 34.228783, 27.664608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820339, 34.874737, 27.381998>,  <35.275169, 34.736713, 27.807158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820339, 34.874737, 27.381998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.823090, 34.486969, 27.283875>,  <35.824738, 34.254307, 27.225000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.823090, 34.486969, 27.283875>,  <35.820339, 34.874737, 27.381998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823090, 34.486969, 27.283875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011941, 0.245375, -0.969354,
		0.999905, 0.003733, 0.013263,
		0.006873, -0.969421, -0.245307,
		35.825153, 34.196144, 27.210281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396412, 34.737476, 27.032804>,  <35.820339, 34.874737, 27.381998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396412, 34.737476, 27.032804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161793, 34.434814, 26.917265>,  <36.021019, 34.253220, 26.847940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161793, 34.434814, 26.917265>,  <36.396412, 34.737476, 27.032804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161793, 34.434814, 26.917265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291400, 0.135600, -0.946942,
		0.755674, -0.639601, 0.140952,
		-0.586552, -0.756653, -0.288849,
		35.985828, 34.207817, 26.830610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820007, 34.385529, 26.616169>,  <36.396412, 34.737476, 27.032804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820007, 34.385529, 26.616169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443363, 34.280178, 26.532269>,  <36.217377, 34.216969, 26.481928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443363, 34.280178, 26.532269>,  <36.820007, 34.385529, 26.616169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443363, 34.280178, 26.532269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176895, 0.143078, -0.973775,
		0.286479, -0.954024, -0.088134,
		-0.941615, -0.263375, -0.209751,
		36.160877, 34.201164, 26.469343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906464, 33.964581, 26.070724>,  <36.820007, 34.385529, 26.616169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906464, 33.964581, 26.070724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.520554, 34.069412, 26.061642>,  <36.289005, 34.132309, 26.056192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.520554, 34.069412, 26.061642>,  <36.906464, 33.964581, 26.070724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520554, 34.069412, 26.061642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051366, 0.103035, -0.993351,
		-0.257995, -0.959531, -0.112868,
		-0.964780, 0.262077, -0.022705,
		36.231121, 34.148037, 26.054831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864754, 33.194557, 26.232262>,  <36.906464, 33.964581, 26.070724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864754, 33.194557, 26.232262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.154537, 32.919422, 26.214176>,  <37.328407, 32.754341, 26.203325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.154537, 32.919422, 26.214176>,  <36.864754, 33.194557, 26.232262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154537, 32.919422, 26.214176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023115, -0.041311, 0.998879,
		-0.688934, -0.724688, -0.014029,
		0.724455, -0.687838, -0.045212,
		37.371872, 32.713070, 26.200613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707394, 32.864056, 26.764732>,  <36.864754, 33.194557, 26.232262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707394, 32.864056, 26.764732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078873, 32.731800, 26.697567>,  <37.301762, 32.652447, 26.657267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078873, 32.731800, 26.697567>,  <36.707394, 32.864056, 26.764732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078873, 32.731800, 26.697567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146453, -0.088982, 0.985208,
		-0.340686, -0.939554, -0.034215,
		0.928701, -0.330636, -0.167915,
		37.357483, 32.632610, 26.647192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747623, 32.356750, 27.323750>,  <36.707394, 32.864056, 26.764732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747623, 32.356750, 27.323750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.132927, 32.383850, 27.219791>,  <37.364109, 32.400108, 27.157417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.132927, 32.383850, 27.219791>,  <36.747623, 32.356750, 27.323750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132927, 32.383850, 27.219791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265810, -0.101878, 0.958627,
		0.038471, -0.992487, -0.116144,
		0.963258, 0.067752, -0.259893,
		37.421906, 32.404175, 27.141823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144730, 31.823931, 27.721165>,  <36.747623, 32.356750, 27.323750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144730, 31.823931, 27.721165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396946, 32.119076, 27.624855>,  <37.548275, 32.296162, 27.567068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396946, 32.119076, 27.624855>,  <37.144730, 31.823931, 27.721165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396946, 32.119076, 27.624855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428844, -0.072640, 0.900453,
		0.646920, -0.671032, -0.362231,
		0.630546, 0.737862, -0.240775,
		37.586109, 32.340435, 27.552622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679646, 31.590206, 27.996216>,  <37.144730, 31.823931, 27.721165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679646, 31.590206, 27.996216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781422, 31.973814, 27.946350>,  <37.842487, 32.203979, 27.916431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.781422, 31.973814, 27.946350>,  <37.679646, 31.590206, 27.996216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781422, 31.973814, 27.946350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461285, -0.007055, 0.887224,
		0.849985, -0.283255, -0.444176,
		0.254444, 0.959019, -0.124664,
		37.857754, 32.261520, 27.908951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359875, 31.615417, 28.119841>,  <37.679646, 31.590206, 27.996216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359875, 31.615417, 28.119841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.247276, 31.997963, 28.151157>,  <38.179718, 32.227489, 28.169947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.247276, 31.997963, 28.151157>,  <38.359875, 31.615417, 28.119841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247276, 31.997963, 28.151157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625342, 0.120950, 0.770920,
		0.727811, 0.265968, -0.632101,
		-0.281493, 0.956364, 0.078293,
		38.162830, 32.284874, 28.174644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939690, 32.055458, 28.176464>,  <38.359875, 31.615417, 28.119841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939690, 32.055458, 28.176464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.638584, 32.270466, 28.328470>,  <38.457920, 32.399471, 28.419674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.638584, 32.270466, 28.328470>,  <38.939690, 32.055458, 28.176464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638584, 32.270466, 28.328470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514183, 0.119657, 0.849293,
		0.411042, 0.834717, -0.366459,
		-0.752768, 0.537522, 0.380013,
		38.412754, 32.431721, 28.442474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260853, 32.584404, 28.547430>,  <38.939690, 32.055458, 28.176464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260853, 32.584404, 28.547430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893082, 32.585705, 28.704727>,  <38.672421, 32.586487, 28.799105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893082, 32.585705, 28.704727>,  <39.260853, 32.584404, 28.547430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893082, 32.585705, 28.704727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381973, 0.245189, 0.891055,
		-0.093521, 0.969470, -0.226676,
		-0.919429, 0.003252, 0.393242,
		38.617252, 32.586681, 28.822701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253483, 33.238384, 28.972120>,  <39.260853, 32.584404, 28.547430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253483, 33.238384, 28.972120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983791, 32.962677, 29.078205>,  <38.821976, 32.797253, 29.141855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983791, 32.962677, 29.078205>,  <39.253483, 33.238384, 28.972120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983791, 32.962677, 29.078205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395233, -0.033398, 0.917973,
		-0.623869, 0.723740, 0.294938,
		-0.674224, -0.689264, 0.265210,
		38.781525, 32.755898, 29.157768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904495, 33.533287, 29.609520>,  <39.253483, 33.238384, 28.972120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904495, 33.533287, 29.609520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856319, 33.136292, 29.618176>,  <38.827415, 32.898094, 29.623369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856319, 33.136292, 29.618176>,  <38.904495, 33.533287, 29.609520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856319, 33.136292, 29.618176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403498, -0.029028, 0.914520,
		-0.907019, 0.118874, 0.403962,
		-0.120438, -0.992485, 0.021637,
		38.820187, 32.838547, 29.624666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802246, 33.493057, 30.320723>,  <38.904495, 33.533287, 29.609520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802246, 33.493057, 30.320723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.850231, 33.115662, 30.197151>,  <38.879025, 32.889225, 30.123009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.850231, 33.115662, 30.197151>,  <38.802246, 33.493057, 30.320723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850231, 33.115662, 30.197151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329975, -0.255592, 0.908730,
		-0.936336, -0.210956, 0.280665,
		0.119966, -0.943488, -0.308930,
		38.886223, 32.832615, 30.104471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542942, 33.046844, 30.914242>,  <38.802246, 33.493057, 30.320723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542942, 33.046844, 30.914242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796230, 32.832081, 30.691259>,  <38.948204, 32.703224, 30.557470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796230, 32.832081, 30.691259>,  <38.542942, 33.046844, 30.914242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796230, 32.832081, 30.691259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401020, -0.388435, 0.829640,
		-0.661977, -0.748898, -0.030654,
		0.633222, -0.536909, -0.557457,
		38.986198, 32.671009, 30.524023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460308, 32.261414, 31.047918>,  <38.542942, 33.046844, 30.914242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460308, 32.261414, 31.047918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830055, 32.341225, 30.917852>,  <39.051903, 32.389111, 30.839813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830055, 32.341225, 30.917852>,  <38.460308, 32.261414, 31.047918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830055, 32.341225, 30.917852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367721, -0.238998, 0.898700,
		0.101602, -0.950299, -0.294293,
		0.924369, 0.199528, -0.325163,
		39.107365, 32.401081, 30.820303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781708, 31.662292, 31.135321>,  <38.460308, 32.261414, 31.047918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781708, 31.662292, 31.135321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.046738, 31.961834, 31.129454>,  <39.205757, 32.141560, 31.125933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.046738, 31.961834, 31.129454>,  <38.781708, 31.662292, 31.135321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046738, 31.961834, 31.129454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338474, -0.281893, 0.897759,
		0.668155, -0.599797, -0.440242,
		0.662574, 0.748853, -0.014667,
		39.245510, 32.186489, 31.125053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.048279, 35.685093, 25.863052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.662544, 35.763367, 25.934347>,  <41.431103, 35.810329, 25.977123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.662544, 35.763367, 25.934347>,  <42.048279, 35.685093, 25.863052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662544, 35.763367, 25.934347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249854, -0.450712, -0.856990,
		-0.087363, -0.870958, 0.483528,
		-0.964334, 0.195681, 0.178237,
		41.373245, 35.822071, 25.987818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680225, 35.049637, 25.744619>,  <42.048279, 35.685093, 25.863052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680225, 35.049637, 25.744619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403236, 35.333481, 25.692562>,  <41.237041, 35.503788, 25.661327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403236, 35.333481, 25.692562>,  <41.680225, 35.049637, 25.744619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403236, 35.333481, 25.692562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308852, -0.454610, -0.835428,
		-0.651990, -0.538317, 0.533969,
		-0.692473, 0.709608, -0.130141,
		41.195496, 35.546364, 25.653521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137718, 34.699886, 25.608650>,  <41.680225, 35.049637, 25.744619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137718, 34.699886, 25.608650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.047550, 35.061859, 25.464270>,  <40.993450, 35.279041, 25.377642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.047550, 35.061859, 25.464270>,  <41.137718, 34.699886, 25.608650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047550, 35.061859, 25.464270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499982, -0.425432, -0.754338,
		-0.836184, 0.010425, 0.548350,
		-0.225422, 0.904930, -0.360952,
		40.979923, 35.333340, 25.355984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453384, 34.694607, 25.436232>,  <41.137718, 34.699886, 25.608650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453384, 34.694607, 25.436232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.604603, 35.002747, 25.230846>,  <40.695332, 35.187630, 25.107616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.604603, 35.002747, 25.230846>,  <40.453384, 34.694607, 25.436232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604603, 35.002747, 25.230846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458980, -0.325707, -0.826591,
		-0.804002, 0.548157, 0.230444,
		0.378044, 0.770350, -0.513462,
		40.718018, 35.233852, 25.076807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852276, 34.973366, 25.059484>,  <40.453384, 34.694607, 25.436232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852276, 34.973366, 25.059484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.184734, 35.071011, 24.859642>,  <40.384209, 35.129597, 24.739737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.184734, 35.071011, 24.859642>,  <39.852276, 34.973366, 25.059484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184734, 35.071011, 24.859642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367039, -0.434090, -0.822708,
		-0.417704, 0.867166, -0.271195,
		0.831147, 0.244110, -0.499605,
		40.434078, 35.144245, 24.709761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567154, 34.971222, 24.319336>,  <39.852276, 34.973366, 25.059484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567154, 34.971222, 24.319336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.965511, 34.994255, 24.291372>,  <40.204525, 35.008076, 24.274595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.965511, 34.994255, 24.291372>,  <39.567154, 34.971222, 24.319336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965511, 34.994255, 24.291372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053461, -0.249292, -0.966952,
		-0.073109, 0.966715, -0.245188,
		0.995890, 0.057585, -0.069907,
		40.264278, 35.011532, 24.270401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723133, 35.401165, 23.761761>,  <39.567154, 34.971222, 24.319336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723133, 35.401165, 23.761761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.057228, 35.183285, 23.791899>,  <40.257687, 35.052559, 23.809982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.057228, 35.183285, 23.791899>,  <39.723133, 35.401165, 23.761761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057228, 35.183285, 23.791899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049420, -0.210826, -0.976274,
		0.547659, 0.811700, -0.203009,
		0.835241, -0.544698, 0.075346,
		40.307800, 35.019875, 23.814503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160637, 35.630100, 23.287933>,  <39.723133, 35.401165, 23.761761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160637, 35.630100, 23.287933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.252823, 35.247719, 23.360641>,  <40.308136, 35.018291, 23.404266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.252823, 35.247719, 23.360641>,  <40.160637, 35.630100, 23.287933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252823, 35.247719, 23.360641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123769, -0.214081, -0.968943,
		0.965177, 0.200812, -0.167656,
		0.230468, -0.955952, 0.181772,
		40.321964, 34.960934, 23.415173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478111, 35.493748, 22.702333>,  <40.160637, 35.630100, 23.287933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478111, 35.493748, 22.702333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.371590, 35.139740, 22.855078>,  <40.307678, 34.927334, 22.946724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.371590, 35.139740, 22.855078>,  <40.478111, 35.493748, 22.702333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371590, 35.139740, 22.855078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404944, -0.256788, -0.877542,
		0.874702, -0.388324, -0.290001,
		-0.266302, -0.885022, 0.381862,
		40.291698, 34.874233, 22.969637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534985, 35.075619, 22.182087>,  <40.478111, 35.493748, 22.702333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534985, 35.075619, 22.182087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.329777, 34.858936, 22.448427>,  <40.206650, 34.728928, 22.608231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.329777, 34.858936, 22.448427>,  <40.534985, 35.075619, 22.182087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329777, 34.858936, 22.448427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538828, -0.400601, -0.741069,
		0.668185, -0.738965, -0.086371,
		-0.513024, -0.541710, 0.665850,
		40.175869, 34.696423, 22.648182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469421, 34.410225, 21.864614>,  <40.534985, 35.075619, 22.182087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469421, 34.410225, 21.864614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.162945, 34.407207, 22.121643>,  <39.979061, 34.405396, 22.275860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.162945, 34.407207, 22.121643>,  <40.469421, 34.410225, 21.864614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162945, 34.407207, 22.121643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629209, -0.194393, -0.752534,
		0.130589, -0.980895, 0.144195,
		-0.766187, -0.007544, 0.642573,
		39.933090, 34.404945, 22.314415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079842, 33.755814, 21.837536>,  <40.469421, 34.410225, 21.864614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079842, 33.755814, 21.837536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.851570, 34.056881, 21.968872>,  <39.714607, 34.237522, 22.047674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.851570, 34.056881, 21.968872>,  <40.079842, 33.755814, 21.837536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851570, 34.056881, 21.968872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611465, -0.122605, -0.781715,
		-0.548119, -0.646879, 0.530202,
		-0.570680, 0.752672, 0.328342,
		39.680367, 34.282684, 22.067375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451012, 33.522232, 21.620308>,  <40.079842, 33.755814, 21.837536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451012, 33.522232, 21.620308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.386570, 33.911629, 21.685251>,  <39.347904, 34.145267, 21.724216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.386570, 33.911629, 21.685251>,  <39.451012, 33.522232, 21.620308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386570, 33.911629, 21.685251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668858, 0.013272, -0.743272,
		-0.725724, -0.228339, 0.648989,
		-0.161104, 0.973491, 0.162358,
		39.338238, 34.203674, 21.733959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793060, 33.670151, 21.777155>,  <39.451012, 33.522232, 21.620308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793060, 33.670151, 21.777155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.955952, 33.987469, 21.596117>,  <39.053688, 34.177860, 21.487494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.955952, 33.987469, 21.596117>,  <38.793060, 33.670151, 21.777155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955952, 33.987469, 21.596117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652961, -0.093605, -0.751585,
		-0.638595, 0.601597, 0.479873,
		0.407233, 0.793297, -0.452595,
		39.078121, 34.225456, 21.460339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730907, 33.439632, 20.958334>,  <38.793060, 33.670151, 21.777155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730907, 33.439632, 20.958334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.377983, 33.340557, 20.798243>,  <38.166229, 33.281113, 20.702187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.377983, 33.340557, 20.798243>,  <38.730907, 33.439632, 20.958334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377983, 33.340557, 20.798243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356961, -0.202103, 0.911994,
		-0.306778, 0.947526, 0.089902,
		-0.882307, -0.247688, -0.400230,
		38.113293, 33.266251, 20.678173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275623, 33.831886, 21.207718>,  <38.730907, 33.439632, 20.958334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275623, 33.831886, 21.207718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.116898, 33.481129, 21.099203>,  <38.021664, 33.270676, 21.034094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.116898, 33.481129, 21.099203>,  <38.275623, 33.831886, 21.207718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116898, 33.481129, 21.099203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414270, -0.092648, 0.905426,
		-0.819097, 0.471671, -0.326507,
		-0.396813, -0.876894, -0.271286,
		37.997852, 33.218060, 21.017817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607334, 33.779167, 21.566399>,  <38.275623, 33.831886, 21.207718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607334, 33.779167, 21.566399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.677238, 33.395844, 21.475969>,  <37.719181, 33.165852, 21.421711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.677238, 33.395844, 21.475969>,  <37.607334, 33.779167, 21.566399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677238, 33.395844, 21.475969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410011, -0.279583, 0.868173,
		-0.895181, -0.059033, -0.441777,
		0.174764, -0.958305, -0.226073,
		37.729668, 33.108353, 21.408148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083038, 33.441036, 21.760124>,  <37.607334, 33.779167, 21.566399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083038, 33.441036, 21.760124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.348015, 33.141598, 21.749027>,  <37.507000, 32.961933, 21.742369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.348015, 33.141598, 21.749027>,  <37.083038, 33.441036, 21.760124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348015, 33.141598, 21.749027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364532, -0.354490, 0.861077,
		-0.654435, -0.560301, -0.507718,
		0.662443, -0.748599, -0.027743,
		37.546749, 32.917019, 21.740704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768753, 32.989628, 22.141069>,  <37.083038, 33.441036, 21.760124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768753, 32.989628, 22.141069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.129711, 32.817432, 22.133528>,  <37.346287, 32.714115, 22.129002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.129711, 32.817432, 22.133528>,  <36.768753, 32.989628, 22.141069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129711, 32.817432, 22.133528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201689, -0.460647, 0.864365,
		-0.380784, -0.776199, -0.502512,
		0.902400, -0.430487, -0.018856,
		37.400433, 32.688286, 22.127871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630440, 32.275887, 22.274023>,  <36.768753, 32.989628, 22.141069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630440, 32.275887, 22.274023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.004734, 32.377861, 22.371521>,  <37.229309, 32.439045, 22.430019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.004734, 32.377861, 22.371521>,  <36.630440, 32.275887, 22.274023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004734, 32.377861, 22.371521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187982, -0.224272, 0.956224,
		0.298443, -0.940589, -0.161935,
		0.935732, 0.254938, 0.243747,
		37.285454, 32.454342, 22.444645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901001, 31.713520, 22.762596>,  <36.630440, 32.275887, 22.274023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901001, 31.713520, 22.762596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.169518, 32.001709, 22.832199>,  <37.330627, 32.174622, 22.873960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.169518, 32.001709, 22.832199>,  <36.901001, 31.713520, 22.762596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169518, 32.001709, 22.832199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159233, -0.089102, 0.983212,
		0.723884, -0.687733, 0.054909,
		0.671295, 0.720475, 0.174009,
		37.370907, 32.217850, 22.884401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222416, 31.435740, 23.302353>,  <36.901001, 31.713520, 22.762596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222416, 31.435740, 23.302353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.361134, 31.810915, 23.301479>,  <37.444363, 32.036018, 23.300955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.361134, 31.810915, 23.301479>,  <37.222416, 31.435740, 23.302353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361134, 31.810915, 23.301479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044016, -0.013948, 0.998934,
		0.936908, -0.346521, -0.046121,
		0.346795, 0.937938, -0.002185,
		37.465172, 32.092297, 23.300823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795677, 31.463606, 23.751898>,  <37.222416, 31.435740, 23.302353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795677, 31.463606, 23.751898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.644756, 31.832819, 23.781975>,  <37.554203, 32.054348, 23.800020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.644756, 31.832819, 23.781975>,  <37.795677, 31.463606, 23.751898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644756, 31.832819, 23.781975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118431, -0.032436, 0.992432,
		0.918486, 0.383354, -0.097077,
		-0.377304, 0.923032, 0.075193,
		37.531567, 32.109730, 23.804533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183384, 31.801142, 24.216240>,  <37.795677, 31.463606, 23.751898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183384, 31.801142, 24.216240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.877579, 32.058987, 24.215839>,  <37.694096, 32.213692, 24.215599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.877579, 32.058987, 24.215839>,  <38.183384, 31.801142, 24.216240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877579, 32.058987, 24.215839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095907, 0.115280, 0.988692,
		0.637438, 0.755769, -0.149955,
		-0.764509, 0.644612, -0.001000,
		37.648228, 32.252369, 24.215540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427235, 32.388741, 24.523998>,  <38.183384, 31.801142, 24.216240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427235, 32.388741, 24.523998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.029751, 32.420918, 24.555176>,  <37.791260, 32.440224, 24.573881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.029751, 32.420918, 24.555176>,  <38.427235, 32.388741, 24.523998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029751, 32.420918, 24.555176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088366, 0.135406, 0.986842,
		0.068833, 0.987519, -0.141662,
		-0.993707, 0.080446, 0.077943,
		37.731640, 32.445053, 24.578558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371956, 32.952576, 24.924681>,  <38.427235, 32.388741, 24.523998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371956, 32.952576, 24.924681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016117, 32.771931, 24.952030>,  <37.802616, 32.663544, 24.968439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016117, 32.771931, 24.952030>,  <38.371956, 32.952576, 24.924681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016117, 32.771931, 24.952030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015721, 0.179879, 0.983563,
		-0.456485, 0.873895, -0.167119,
		-0.889592, -0.451609, 0.068374,
		37.749241, 32.636448, 24.972542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971886, 33.346771, 25.367205>,  <38.371956, 32.952576, 24.924681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971886, 33.346771, 25.367205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781120, 32.995892, 25.389378>,  <37.666660, 32.785362, 25.402681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781120, 32.995892, 25.389378>,  <37.971886, 33.346771, 25.367205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781120, 32.995892, 25.389378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029330, 0.047149, 0.998457,
		-0.878463, 0.477799, 0.003243,
		-0.476909, -0.877203, 0.055433,
		37.638046, 32.732731, 25.406008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353554, 33.507538, 25.737469>,  <37.971886, 33.346771, 25.367205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353554, 33.507538, 25.737469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.444920, 33.118237, 25.747255>,  <37.499741, 32.884655, 25.753128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.444920, 33.118237, 25.747255>,  <37.353554, 33.507538, 25.737469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444920, 33.118237, 25.747255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055680, 0.012030, 0.998376,
		-0.971971, -0.229406, -0.051443,
		0.228415, -0.973257, 0.024466,
		37.513443, 32.826260, 25.754595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549740, 33.500717, 25.492811>,  <37.353554, 33.507538, 25.737469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549740, 33.500717, 25.492811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321548, 33.825802, 25.540220>,  <36.184635, 34.020855, 25.568666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321548, 33.825802, 25.540220>,  <36.549740, 33.500717, 25.492811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321548, 33.825802, 25.540220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009226, 0.137959, -0.990395,
		-0.821261, -0.566092, -0.071205,
		-0.570479, 0.812716, 0.118523,
		36.150406, 34.069618, 25.575777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007767, 33.379002, 25.067438>,  <36.549740, 33.500717, 25.492811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007767, 33.379002, 25.067438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002361, 33.778084, 25.093954>,  <35.999119, 34.017532, 25.109863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002361, 33.778084, 25.093954>,  <36.007767, 33.379002, 25.067438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002361, 33.778084, 25.093954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158854, 0.063313, -0.985270,
		-0.987210, -0.023843, 0.157635,
		-0.013511, 0.997709, 0.066291,
		35.998306, 34.077396, 25.113842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552830, 33.612526, 24.540831>,  <36.007767, 33.379002, 25.067438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552830, 33.612526, 24.540831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696617, 33.972034, 24.641226>,  <35.782890, 34.187740, 24.701464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696617, 33.972034, 24.641226>,  <35.552830, 33.612526, 24.540831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696617, 33.972034, 24.641226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206401, 0.338887, -0.917908,
		-0.910043, 0.278157, 0.307327,
		0.359472, 0.898768, 0.250990,
		35.804459, 34.241665, 24.716522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108837, 34.139030, 24.389009>,  <35.552830, 33.612526, 24.540831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108837, 34.139030, 24.389009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465927, 34.318844, 24.376614>,  <35.680180, 34.426731, 24.369177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465927, 34.318844, 24.376614>,  <35.108837, 34.139030, 24.389009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465927, 34.318844, 24.376614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170426, 0.273179, -0.946746,
		-0.417130, 0.850465, 0.320487,
		0.892725, 0.449536, -0.030990,
		35.733746, 34.453705, 24.367317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933876, 34.839775, 24.192886>,  <35.108837, 34.139030, 24.389009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933876, 34.839775, 24.192886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313457, 34.750412, 24.103828>,  <35.541206, 34.696796, 24.050394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313457, 34.750412, 24.103828>,  <34.933876, 34.839775, 24.192886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313457, 34.750412, 24.103828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163397, 0.255577, -0.952881,
		0.269782, 0.940622, 0.206028,
		0.948957, -0.223405, -0.222645,
		35.598145, 34.683392, 24.037035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121891, 35.275654, 23.695175>,  <34.933876, 34.839775, 24.192886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121891, 35.275654, 23.695175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399471, 34.989361, 23.663776>,  <35.566017, 34.817585, 23.644938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399471, 34.989361, 23.663776>,  <35.121891, 35.275654, 23.695175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399471, 34.989361, 23.663776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057528, 0.053558, -0.996906,
		0.717723, 0.696318, -0.004008,
		0.693949, -0.715733, -0.078497,
		35.607655, 34.774639, 23.640226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623123, 35.608498, 23.220142>,  <35.121891, 35.275654, 23.695175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623123, 35.608498, 23.220142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.697311, 35.215439, 23.219685>,  <35.741825, 34.979603, 23.219410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.697311, 35.215439, 23.219685>,  <35.623123, 35.608498, 23.220142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697311, 35.215439, 23.219685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291904, 0.056205, -0.954795,
		0.938293, 0.176751, 0.297264,
		0.185468, -0.982650, -0.001142,
		35.752953, 34.920643, 23.219341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980080, 36.292889, 23.381748>,  <35.623123, 35.608498, 23.220142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980080, 36.292889, 23.381748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.740181, 36.609825, 23.337027>,  <35.596241, 36.799988, 23.310194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.740181, 36.609825, 23.337027>,  <35.980080, 36.292889, 23.381748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740181, 36.609825, 23.337027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323392, -0.112201, 0.939590,
		0.731931, 0.599671, 0.323529,
		-0.599745, 0.792342, -0.111806,
		35.560257, 36.847527, 23.303484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250458, 36.791279, 23.862305>,  <35.980080, 36.292889, 23.381748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250458, 36.791279, 23.862305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867088, 36.844505, 23.761332>,  <35.637066, 36.876442, 23.700748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867088, 36.844505, 23.761332>,  <36.250458, 36.791279, 23.862305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867088, 36.844505, 23.761332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237997, 0.115306, 0.964397,
		0.157433, 0.984377, -0.078843,
		-0.958422, 0.133064, -0.252432,
		35.579563, 36.884426, 23.685602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064487, 37.376850, 24.291231>,  <36.250458, 36.791279, 23.862305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064487, 37.376850, 24.291231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.718552, 37.225349, 24.159410>,  <35.510990, 37.134449, 24.080318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.718552, 37.225349, 24.159410>,  <36.064487, 37.376850, 24.291231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718552, 37.225349, 24.159410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407730, 0.146864, 0.901214,
		-0.292939, 0.913771, -0.281443,
		-0.864837, -0.378753, -0.329550,
		35.459099, 37.111725, 24.060545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548908, 37.783241, 24.684130>,  <36.064487, 37.376850, 24.291231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548908, 37.783241, 24.684130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391293, 37.437935, 24.557949>,  <35.296722, 37.230751, 24.482241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391293, 37.437935, 24.557949>,  <35.548908, 37.783241, 24.684130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391293, 37.437935, 24.557949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475975, -0.101946, 0.873530,
		-0.786245, 0.494352, -0.370721,
		-0.394038, -0.863263, -0.315454,
		35.273083, 37.178955, 24.463312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879971, 37.889076, 24.547312>,  <35.548908, 37.783241, 24.684130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879971, 37.889076, 24.547312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947784, 37.503723, 24.630398>,  <34.988472, 37.272511, 24.680248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947784, 37.503723, 24.630398>,  <34.879971, 37.889076, 24.547312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947784, 37.503723, 24.630398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685239, 0.036253, 0.727416,
		-0.708313, -0.265653, -0.654004,
		0.169530, -0.963387, 0.207714,
		34.998642, 37.214706, 24.692713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272629, 37.653316, 24.879824>,  <34.879971, 37.889076, 24.547312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272629, 37.653316, 24.879824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545757, 37.371101, 24.955683>,  <34.709637, 37.201771, 25.001198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545757, 37.371101, 24.955683>,  <34.272629, 37.653316, 24.879824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545757, 37.371101, 24.955683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286186, -0.019471, 0.957976,
		-0.672198, -0.708403, -0.215211,
		0.682824, -0.705540, 0.189647,
		34.750603, 37.159439, 25.012577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923454, 37.040306, 25.276106>,  <34.272629, 37.653316, 24.879824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923454, 37.040306, 25.276106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321533, 37.046021, 25.314838>,  <34.560379, 37.049450, 25.338078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321533, 37.046021, 25.314838>,  <33.923454, 37.040306, 25.276106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321533, 37.046021, 25.314838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097774, 0.190856, 0.976737,
		-0.004529, -0.981514, 0.191336,
		0.995198, 0.014284, 0.096831,
		34.620094, 37.050304, 25.343887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.682697, 37.190815, 22.052765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.296013, 37.292553, 22.041584>,  <37.064003, 37.353596, 22.034876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.296013, 37.292553, 22.041584>,  <37.682697, 37.190815, 22.052765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296013, 37.292553, 22.041584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252185, -0.965547, -0.064196,
		-0.043317, -0.055009, 0.997546,
		-0.966709, 0.254347, -0.027953,
		37.006001, 37.368858, 22.033197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375473, 37.385086, 22.361198>,  <37.682697, 37.190815, 22.052765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375473, 37.385086, 22.361198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.595600, 37.053322, 22.399616>,  <38.727676, 36.854263, 22.422667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.595600, 37.053322, 22.399616>,  <38.375473, 37.385086, 22.361198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595600, 37.053322, 22.399616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125343, 0.195793, 0.972602,
		-0.825492, -0.523203, 0.211710,
		0.550320, -0.829411, 0.096046,
		38.760696, 36.804497, 22.428431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076019, 37.005558, 22.930717>,  <38.375473, 37.385086, 22.361198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076019, 37.005558, 22.930717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.451801, 36.882336, 22.870691>,  <38.677273, 36.808403, 22.834675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.451801, 36.882336, 22.870691>,  <38.076019, 37.005558, 22.930717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451801, 36.882336, 22.870691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204683, 0.153263, 0.966755,
		-0.274817, -0.938941, 0.207038,
		0.939458, -0.308058, -0.150066,
		38.733639, 36.789917, 22.825672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174030, 36.465736, 23.346853>,  <38.076019, 37.005558, 22.930717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174030, 36.465736, 23.346853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.545769, 36.596367, 23.277956>,  <38.768810, 36.674744, 23.236618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.545769, 36.596367, 23.277956>,  <38.174030, 36.465736, 23.346853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545769, 36.596367, 23.277956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119269, 0.175956, 0.977146,
		0.349418, -0.928649, 0.124574,
		0.929345, 0.326574, -0.172241,
		38.824574, 36.694340, 23.226284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695553, 36.269981, 23.908083>,  <38.174030, 36.465736, 23.346853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695553, 36.269981, 23.908083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.938885, 36.539066, 23.739613>,  <39.084885, 36.700516, 23.638531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.938885, 36.539066, 23.739613>,  <38.695553, 36.269981, 23.908083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938885, 36.539066, 23.739613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356354, 0.242659, 0.902290,
		0.709185, -0.698980, -0.092107,
		0.608332, 0.672713, -0.421175,
		39.121384, 36.740879, 23.613260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314075, 36.195839, 24.181885>,  <38.695553, 36.269981, 23.908083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314075, 36.195839, 24.181885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.315662, 36.564999, 24.027872>,  <39.316616, 36.786495, 23.935465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.315662, 36.564999, 24.027872>,  <39.314075, 36.195839, 24.181885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315662, 36.564999, 24.027872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401218, 0.351215, 0.845974,
		0.915974, -0.157837, -0.368889,
		0.003966, 0.922895, -0.385031,
		39.316853, 36.841866, 23.912363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023624, 36.520020, 24.319868>,  <39.314075, 36.195839, 24.181885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023624, 36.520020, 24.319868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.739567, 36.797150, 24.269758>,  <39.569134, 36.963428, 24.239693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.739567, 36.797150, 24.269758>,  <40.023624, 36.520020, 24.319868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739567, 36.797150, 24.269758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182936, 0.353397, 0.917412,
		0.679876, 0.628576, -0.377704,
		-0.710143, 0.692823, -0.125277,
		39.526524, 37.004997, 24.232176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354588, 37.240467, 24.447088>,  <40.023624, 36.520020, 24.319868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354588, 37.240467, 24.447088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.961308, 37.293297, 24.497494>,  <39.725342, 37.324997, 24.527737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.961308, 37.293297, 24.497494>,  <40.354588, 37.240467, 24.447088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961308, 37.293297, 24.497494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177705, 0.534551, 0.826242,
		0.041768, 0.834752, -0.549040,
		-0.983197, 0.132078, 0.126013,
		39.666348, 37.332920, 24.535297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235062, 37.936581, 24.514782>,  <40.354588, 37.240467, 24.447088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235062, 37.936581, 24.514782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.916729, 37.760487, 24.681078>,  <39.725727, 37.654831, 24.780855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.916729, 37.760487, 24.681078>,  <40.235062, 37.936581, 24.514782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916729, 37.760487, 24.681078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042901, 0.643868, 0.763933,
		-0.603991, 0.625801, -0.493526,
		-0.795836, -0.440236, 0.415738,
		39.677979, 37.628414, 24.805799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817108, 38.488396, 24.667542>,  <40.235062, 37.936581, 24.514782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817108, 38.488396, 24.667542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.643208, 38.202145, 24.886219>,  <39.538868, 38.030396, 25.017426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.643208, 38.202145, 24.886219>,  <39.817108, 38.488396, 24.667542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643208, 38.202145, 24.886219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103343, 0.563411, 0.819688,
		-0.894601, 0.412858, -0.170989,
		-0.434752, -0.715623, 0.546694,
		39.512783, 37.987457, 25.050228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430672, 38.864540, 25.136469>,  <39.817108, 38.488396, 24.667542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430672, 38.864540, 25.136469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.496910, 38.501785, 25.291460>,  <39.536652, 38.284134, 25.384455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.496910, 38.501785, 25.291460>,  <39.430672, 38.864540, 25.136469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496910, 38.501785, 25.291460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240564, 0.418179, 0.875931,
		-0.956403, -0.051838, 0.287412,
		0.165597, -0.906884, 0.387477,
		39.546589, 38.229721, 25.407703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948589, 38.755428, 25.717390>,  <39.430672, 38.864540, 25.136469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948589, 38.755428, 25.717390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.252457, 38.512959, 25.811584>,  <39.434776, 38.367477, 25.868101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.252457, 38.512959, 25.811584>,  <38.948589, 38.755428, 25.717390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252457, 38.512959, 25.811584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021320, 0.385135, 0.922614,
		-0.649959, -0.695862, 0.305499,
		0.759670, -0.606174, 0.235486,
		39.480358, 38.331108, 25.882231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193283, 38.838715, 25.608515>,  <38.948589, 38.755428, 25.717390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193283, 38.838715, 25.608515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.916233, 39.119038, 25.676790>,  <37.750004, 39.287231, 25.717756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.916233, 39.119038, 25.676790>,  <38.193283, 38.838715, 25.608515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916233, 39.119038, 25.676790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042182, 0.196884, -0.979519,
		-0.720065, -0.685638, -0.106805,
		-0.692623, 0.700812, 0.170691,
		37.708447, 39.329281, 25.727997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742161, 38.794548, 25.049854>,  <38.193283, 38.838715, 25.608515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742161, 38.794548, 25.049854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.642208, 39.154640, 25.192482>,  <37.582237, 39.370697, 25.278059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.642208, 39.154640, 25.192482>,  <37.742161, 38.794548, 25.049854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642208, 39.154640, 25.192482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271674, 0.288277, -0.918199,
		-0.929382, -0.326314, 0.172534,
		-0.249884, 0.900231, 0.356570,
		37.567242, 39.424709, 25.299454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116173, 38.960381, 24.723251>,  <37.742161, 38.794548, 25.049854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116173, 38.960381, 24.723251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.278015, 39.310040, 24.830700>,  <37.375122, 39.519836, 24.895168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.278015, 39.310040, 24.830700>,  <37.116173, 38.960381, 24.723251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278015, 39.310040, 24.830700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241105, 0.385313, -0.890731,
		-0.882135, 0.295629, 0.366662,
		0.404606, 0.874149, 0.268620,
		37.399395, 39.572285, 24.911285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559982, 39.371426, 24.716696>,  <37.116173, 38.960381, 24.723251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559982, 39.371426, 24.716696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.918419, 39.532143, 24.641247>,  <37.133480, 39.628574, 24.595978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.918419, 39.532143, 24.641247>,  <36.559982, 39.371426, 24.716696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918419, 39.532143, 24.641247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250005, 0.105741, -0.962453,
		-0.366762, 0.909605, 0.195204,
		0.896093, 0.401793, -0.188624,
		37.187248, 39.652679, 24.584660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428764, 39.882328, 24.225565>,  <36.559982, 39.371426, 24.716696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428764, 39.882328, 24.225565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.826077, 39.860821, 24.184563>,  <37.064465, 39.847916, 24.159962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.826077, 39.860821, 24.184563>,  <36.428764, 39.882328, 24.225565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826077, 39.860821, 24.184563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087915, 0.225627, -0.970239,
		0.075292, 0.972729, 0.219383,
		0.993278, -0.053764, -0.102506,
		37.124062, 39.844692, 24.153811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630268, 40.549423, 23.989433>,  <36.428764, 39.882328, 24.225565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630268, 40.549423, 23.989433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.922649, 40.291401, 23.900339>,  <37.098076, 40.136585, 23.846882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.922649, 40.291401, 23.900339>,  <36.630268, 40.549423, 23.989433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922649, 40.291401, 23.900339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028830, 0.355284, -0.934314,
		0.681823, 0.676514, 0.278291,
		0.730949, -0.645060, -0.222737,
		37.141933, 40.097881, 23.833517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948681, 40.884697, 23.586985>,  <36.630268, 40.549423, 23.989433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948681, 40.884697, 23.586985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.081249, 40.516079, 23.506075>,  <37.160789, 40.294907, 23.457529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.081249, 40.516079, 23.506075>,  <36.948681, 40.884697, 23.586985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081249, 40.516079, 23.506075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002748, 0.213447, -0.976951,
		0.943480, 0.324334, 0.068208,
		0.331417, -0.921546, -0.202274,
		37.180676, 40.239616, 23.445393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408913, 41.011101, 23.080929>,  <36.948681, 40.884697, 23.586985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408913, 41.011101, 23.080929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.325657, 40.620544, 23.057789>,  <37.275703, 40.386211, 23.043905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.325657, 40.620544, 23.057789>,  <37.408913, 41.011101, 23.080929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325657, 40.620544, 23.057789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031585, 0.052407, -0.998126,
		0.977590, -0.209574, 0.019931,
		-0.208137, -0.976387, -0.057852,
		37.263214, 40.327629, 23.040434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879749, 40.731834, 22.528761>,  <37.408913, 41.011101, 23.080929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879749, 40.731834, 22.528761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.584244, 40.470131, 22.593470>,  <37.406940, 40.313110, 22.632294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.584244, 40.470131, 22.593470>,  <37.879749, 40.731834, 22.528761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584244, 40.470131, 22.593470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116301, -0.112671, -0.986802,
		0.663849, -0.747833, 0.007147,
		-0.738768, -0.654256, 0.161770,
		37.362614, 40.273853, 22.642000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101269, 40.162853, 22.085371>,  <37.879749, 40.731834, 22.528761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101269, 40.162853, 22.085371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.708660, 40.141140, 22.158760>,  <37.473095, 40.128113, 22.202793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.708660, 40.141140, 22.158760>,  <38.101269, 40.162853, 22.085371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708660, 40.141140, 22.158760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169057, -0.203009, -0.964473,
		0.089599, -0.977671, 0.190082,
		-0.981526, -0.054281, 0.183471,
		37.414204, 40.124855, 22.213802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836544, 39.515308, 21.795916>,  <38.101269, 40.162853, 22.085371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836544, 39.515308, 21.795916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.506100, 39.733742, 21.851532>,  <37.307831, 39.864799, 21.884901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.506100, 39.733742, 21.851532>,  <37.836544, 39.515308, 21.795916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506100, 39.733742, 21.851532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303309, -0.222965, -0.926439,
		-0.474911, -0.807515, 0.349826,
		-0.826113, 0.546082, 0.139038,
		37.258266, 39.897568, 21.893244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305355, 39.091057, 21.663754>,  <37.836544, 39.515308, 21.795916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305355, 39.091057, 21.663754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188690, 39.470909, 21.617922>,  <37.118690, 39.698822, 21.590424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188690, 39.470909, 21.617922>,  <37.305355, 39.091057, 21.663754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188690, 39.470909, 21.617922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156058, -0.165423, -0.973797,
		-0.943705, -0.266137, 0.196446,
		-0.291661, 0.949635, -0.114578,
		37.101192, 39.755798, 21.583549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930618, 39.019806, 21.066391>,  <37.305355, 39.091057, 21.663754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930618, 39.019806, 21.066391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.937241, 39.415264, 21.126127>,  <36.941216, 39.652538, 21.161968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.937241, 39.415264, 21.126127>,  <36.930618, 39.019806, 21.066391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937241, 39.415264, 21.126127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167840, 0.149988, -0.974337,
		-0.985675, -0.008935, 0.168418,
		0.016555, 0.988647, 0.149339,
		36.942207, 39.711857, 21.170929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465134, 38.792099, 20.442490>,  <36.930618, 39.019806, 21.066391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465134, 38.792099, 20.442490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.144112, 38.582863, 20.327749>,  <35.951500, 38.457321, 20.258905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.144112, 38.582863, 20.327749>,  <36.465134, 38.792099, 20.442490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144112, 38.582863, 20.327749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067738, -0.397814, 0.914962,
		-0.592720, 0.753738, 0.283835,
		-0.802555, -0.523090, -0.286849,
		35.903347, 38.425938, 20.241695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968121, 38.787365, 21.007406>,  <36.465134, 38.792099, 20.442490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968121, 38.787365, 21.007406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.841045, 38.471966, 20.796755>,  <35.764801, 38.282726, 20.670364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.841045, 38.471966, 20.796755>,  <35.968121, 38.787365, 21.007406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841045, 38.471966, 20.796755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156810, -0.504064, 0.849312,
		-0.935138, 0.352400, 0.036492,
		-0.317692, -0.788501, -0.526629,
		35.745739, 38.235416, 20.638765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260109, 38.641270, 21.216158>,  <35.968121, 38.787365, 21.007406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260109, 38.641270, 21.216158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.430843, 38.302837, 21.088430>,  <35.533283, 38.099777, 21.011795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.430843, 38.302837, 21.088430>,  <35.260109, 38.641270, 21.216158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430843, 38.302837, 21.088430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313360, -0.469598, 0.825399,
		-0.848303, -0.252247, -0.465568,
		0.426834, -0.846079, -0.319318,
		35.558895, 38.049015, 20.992636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806896, 38.255741, 21.473825>,  <35.260109, 38.641270, 21.216158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806896, 38.255741, 21.473825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.098190, 38.002468, 21.368946>,  <35.272968, 37.850506, 21.306019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.098190, 38.002468, 21.368946>,  <34.806896, 38.255741, 21.473825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098190, 38.002468, 21.368946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249246, -0.601094, 0.759317,
		-0.638397, -0.487608, -0.595557,
		0.728235, -0.633186, -0.262202,
		35.316662, 37.812511, 21.290287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525707, 37.451046, 21.504837>,  <34.806896, 38.255741, 21.473825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525707, 37.451046, 21.504837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921806, 37.451157, 21.560570>,  <35.159466, 37.451221, 21.594009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921806, 37.451157, 21.560570>,  <34.525707, 37.451046, 21.504837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921806, 37.451157, 21.560570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115356, -0.559228, 0.820949,
		0.078143, -0.829014, -0.553742,
		0.990245, 0.000273, 0.139331,
		35.218880, 37.451237, 21.602369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688972, 36.779202, 21.814995>,  <34.525707, 37.451046, 21.504837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688972, 36.779202, 21.814995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.005283, 37.007530, 21.903389>,  <35.195068, 37.144527, 21.956425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.005283, 37.007530, 21.903389>,  <34.688972, 36.779202, 21.814995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005283, 37.007530, 21.903389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008584, -0.350646, 0.936469,
		0.612042, -0.742436, -0.272384,
		0.790779, 0.570820, 0.220983,
		35.242516, 37.178776, 21.969685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083714, 36.308372, 22.178837>,  <34.688972, 36.779202, 21.814995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083714, 36.308372, 22.178837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.212109, 36.668427, 22.296627>,  <35.289146, 36.884460, 22.367300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.212109, 36.668427, 22.296627>,  <35.083714, 36.308372, 22.178837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212109, 36.668427, 22.296627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135970, -0.263907, 0.954916,
		0.937271, -0.346558, 0.037680,
		0.320990, 0.900139, 0.294474,
		35.308407, 36.938469, 22.384970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660709, 36.170326, 22.698616>,  <35.083714, 36.308372, 22.178837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660709, 36.170326, 22.698616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.595623, 36.560589, 22.757431>,  <35.556572, 36.794746, 22.792721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.595623, 36.560589, 22.757431>,  <35.660709, 36.170326, 22.698616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595623, 36.560589, 22.757431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018389, -0.151996, 0.988210,
		0.986502, 0.158092, 0.042673,
		-0.162714, 0.975656, 0.147038,
		35.546810, 36.853287, 22.801542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168137, 35.615108, 22.686712>,  <35.660709, 36.170326, 22.698616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168137, 35.615108, 22.686712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.077526, 35.226933, 22.720001>,  <36.023159, 34.994026, 22.739975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.077526, 35.226933, 22.720001>,  <36.168137, 35.615108, 22.686712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077526, 35.226933, 22.720001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408669, -0.172255, -0.896280,
		0.884125, -0.169018, 0.435610,
		-0.226524, -0.970444, 0.083222,
		36.009567, 34.935799, 22.744968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777771, 35.243031, 22.510368>,  <36.168137, 35.615108, 22.686712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777771, 35.243031, 22.510368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454330, 35.029575, 22.411251>,  <36.260265, 34.901501, 22.351780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454330, 35.029575, 22.411251>,  <36.777771, 35.243031, 22.510368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454330, 35.029575, 22.411251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367068, -0.128401, -0.921289,
		0.459818, -0.835909, 0.299706,
		-0.808597, -0.533638, -0.247795,
		36.211750, 34.869484, 22.336912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985107, 34.869061, 21.920952>,  <36.777771, 35.243031, 22.510368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985107, 34.869061, 21.920952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.592724, 34.792530, 21.907566>,  <36.357296, 34.746613, 21.899534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.592724, 34.792530, 21.907566>,  <36.985107, 34.869061, 21.920952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592724, 34.792530, 21.907566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083131, -0.257857, -0.962600,
		0.175544, -0.947050, 0.268851,
		-0.980956, -0.191328, -0.033464,
		36.298439, 34.735130, 21.897528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826923, 34.304886, 21.467163>,  <36.985107, 34.869061, 21.920952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826923, 34.304886, 21.467163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.475330, 34.492966, 21.498930>,  <36.264374, 34.605816, 21.517990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.475330, 34.492966, 21.498930>,  <36.826923, 34.304886, 21.467163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475330, 34.492966, 21.498930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157180, -0.128444, -0.979181,
		-0.450212, -0.873162, 0.186806,
		-0.878978, 0.470202, 0.079417,
		36.211636, 34.634026, 21.522755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353123, 33.902649, 21.023893>,  <36.826923, 34.304886, 21.467163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353123, 33.902649, 21.023893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.267433, 34.292408, 21.051197>,  <36.216019, 34.526264, 21.067579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.267433, 34.292408, 21.051197>,  <36.353123, 33.902649, 21.023893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267433, 34.292408, 21.051197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160582, 0.104062, -0.981522,
		-0.963495, -0.199303, -0.178763,
		-0.214223, 0.974397, 0.068258,
		36.203167, 34.584728, 21.071674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867046, 34.032822, 20.525372>,  <36.353123, 33.902649, 21.023893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867046, 34.032822, 20.525372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.007992, 34.400551, 20.595434>,  <36.092560, 34.621189, 20.637472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.007992, 34.400551, 20.595434>,  <35.867046, 34.032822, 20.525372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007992, 34.400551, 20.595434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120704, 0.140956, -0.982630,
		-0.928046, 0.367387, -0.061298,
		0.352365, 0.919325, 0.175159,
		36.113701, 34.676350, 20.647982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470596, 34.491131, 20.087862>,  <35.867046, 34.032822, 20.525372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470596, 34.491131, 20.087862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.809345, 34.690273, 20.162638>,  <36.012596, 34.809761, 20.207504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.809345, 34.690273, 20.162638>,  <35.470596, 34.491131, 20.087862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809345, 34.690273, 20.162638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055120, 0.267458, -0.961992,
		-0.528935, 0.824987, 0.199061,
		0.846871, 0.497858, 0.186941,
		36.063408, 34.839630, 20.218719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362190, 35.077599, 19.675058>,  <35.470596, 34.491131, 20.087862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362190, 35.077599, 19.675058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.751404, 35.064796, 19.766438>,  <35.984932, 35.057117, 19.821264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.751404, 35.064796, 19.766438>,  <35.362190, 35.077599, 19.675058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751404, 35.064796, 19.766438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230674, 0.130330, -0.964263,
		0.001083, 0.990954, 0.134197,
		0.973031, -0.032001, 0.228446,
		36.043312, 35.055195, 19.834972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676914, 35.545982, 19.158964>,  <35.362190, 35.077599, 19.675058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676914, 35.545982, 19.158964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.950798, 35.298195, 19.312550>,  <36.115128, 35.149521, 19.404701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.950798, 35.298195, 19.312550>,  <35.676914, 35.545982, 19.158964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950798, 35.298195, 19.312550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445429, -0.061301, -0.893216,
		0.576860, 0.782621, 0.233958,
		0.684708, -0.619473, 0.383965,
		36.156212, 35.112354, 19.427738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.023800, 34.919521, 35.915051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288147, 35.000301, 35.625923>,  <38.446754, 35.048771, 35.452446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288147, 35.000301, 35.625923>,  <38.023800, 34.919521, 35.915051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288147, 35.000301, 35.625923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724620, -0.079043, -0.684600,
		-0.195392, 0.976200, 0.094103,
		0.660869, 0.201954, -0.722819,
		38.486408, 35.060886, 35.409077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869507, 35.491367, 35.432598>,  <38.023800, 34.919521, 35.915051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869507, 35.491367, 35.432598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091404, 35.203587, 35.265434>,  <38.224545, 35.030918, 35.165134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091404, 35.203587, 35.265434>,  <37.869507, 35.491367, 35.432598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091404, 35.203587, 35.265434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684307, -0.108822, -0.721028,
		0.473265, 0.685967, -0.552693,
		0.554747, -0.719450, -0.417910,
		38.257828, 34.987751, 35.140060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018749, 35.662880, 34.778450>,  <37.869507, 35.491367, 35.432598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018749, 35.662880, 34.778450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.036415, 35.263271, 34.779541>,  <38.047016, 35.023506, 34.780197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.036415, 35.263271, 34.779541>,  <38.018749, 35.662880, 34.778450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036415, 35.263271, 34.779541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678951, -0.032020, -0.733485,
		0.732854, 0.030542, -0.679701,
		0.044166, -0.999020, 0.002730,
		38.049664, 34.963566, 34.780361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298439, 35.532078, 34.161991>,  <38.018749, 35.662880, 34.778450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298439, 35.532078, 34.161991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103352, 35.203739, 34.280880>,  <37.986298, 35.006737, 34.352211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103352, 35.203739, 34.280880>,  <38.298439, 35.532078, 34.161991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103352, 35.203739, 34.280880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492837, -0.022130, -0.869840,
		0.720584, -0.570718, -0.393751,
		-0.487720, -0.820847, 0.297218,
		37.957035, 34.957485, 34.370045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377193, 35.311802, 33.514282>,  <38.298439, 35.532078, 34.161991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377193, 35.311802, 33.514282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114048, 35.068218, 33.691547>,  <37.956161, 34.922070, 33.797905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114048, 35.068218, 33.691547>,  <38.377193, 35.311802, 33.514282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114048, 35.068218, 33.691547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536495, -0.034061, -0.843216,
		0.528576, -0.792472, -0.304295,
		-0.657861, -0.608956, 0.443161,
		37.916691, 34.885532, 33.824497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315063, 34.662189, 33.146564>,  <38.377193, 35.311802, 33.514282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315063, 34.662189, 33.146564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.969303, 34.680466, 33.346855>,  <37.761848, 34.691433, 33.467030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.969303, 34.680466, 33.346855>,  <38.315063, 34.662189, 33.146564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969303, 34.680466, 33.346855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473075, -0.411283, -0.779132,
		0.170343, -0.910362, 0.377127,
		-0.864398, 0.045690, 0.500729,
		37.709984, 34.694172, 33.497074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070782, 34.087124, 32.976143>,  <38.315063, 34.662189, 33.146564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070782, 34.087124, 32.976143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.772453, 34.323181, 33.099743>,  <37.593456, 34.464817, 33.173904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.772453, 34.323181, 33.099743>,  <38.070782, 34.087124, 32.976143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772453, 34.323181, 33.099743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498234, -0.186274, -0.846797,
		-0.442173, -0.785514, 0.432957,
		-0.745819, 0.590144, 0.309004,
		37.548706, 34.500225, 33.192444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542076, 33.595810, 32.905773>,  <38.070782, 34.087124, 32.976143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542076, 33.595810, 32.905773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426598, 33.978302, 32.924847>,  <37.357311, 34.207798, 32.936291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426598, 33.978302, 32.924847>,  <37.542076, 33.595810, 32.905773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426598, 33.978302, 32.924847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645278, -0.157537, -0.747528,
		-0.707300, -0.246574, 0.662517,
		-0.288692, 0.956234, 0.047683,
		37.339989, 34.265171, 32.939152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779774, 33.677555, 32.594891>,  <37.542076, 33.595810, 32.905773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779774, 33.677555, 32.594891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.904087, 34.057209, 32.574646>,  <36.978676, 34.285000, 32.562500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.904087, 34.057209, 32.574646>,  <36.779774, 33.677555, 32.594891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904087, 34.057209, 32.574646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525492, 0.127212, -0.841235,
		-0.792005, 0.288036, 0.538296,
		0.310783, 0.949133, -0.050608,
		36.997322, 34.341949, 32.559464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131588, 34.103867, 32.418552>,  <36.779774, 33.677555, 32.594891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131588, 34.103867, 32.418552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441002, 34.344791, 32.339699>,  <36.626652, 34.489346, 32.292385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441002, 34.344791, 32.339699>,  <36.131588, 34.103867, 32.418552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441002, 34.344791, 32.339699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501226, 0.391078, -0.771901,
		-0.387827, 0.695904, 0.604406,
		0.773539, 0.602308, -0.197135,
		36.673065, 34.525482, 32.280560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849930, 34.717411, 32.302647>,  <36.131588, 34.103867, 32.418552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849930, 34.717411, 32.302647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202770, 34.718136, 32.114223>,  <36.414474, 34.718571, 32.001171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202770, 34.718136, 32.114223>,  <35.849930, 34.717411, 32.302647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202770, 34.718136, 32.114223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428223, 0.419737, -0.800278,
		0.196268, 0.907644, 0.371028,
		0.882102, 0.001814, -0.471055,
		36.467400, 34.718681, 31.972906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927563, 35.412987, 32.137753>,  <35.849930, 34.717411, 32.302647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927563, 35.412987, 32.137753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140728, 35.179810, 31.892420>,  <36.268627, 35.039902, 31.745220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140728, 35.179810, 31.892420>,  <35.927563, 35.412987, 32.137753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140728, 35.179810, 31.892420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309610, 0.540237, -0.782487,
		0.787491, 0.606894, 0.107415,
		0.532916, -0.582944, -0.613332,
		36.300602, 35.004925, 31.708420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518135, 36.071323, 31.793606>,  <35.927563, 35.412987, 32.137753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518135, 36.071323, 31.793606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276581, 36.376991, 31.702950>,  <35.131649, 36.560394, 31.648556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276581, 36.376991, 31.702950>,  <35.518135, 36.071323, 31.793606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276581, 36.376991, 31.702950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000520, 0.283963, 0.958835,
		0.797072, 0.579143, -0.171084,
		-0.603884, 0.764172, -0.226640,
		35.095417, 36.606243, 31.634958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822285, 36.624546, 32.100594>,  <35.518135, 36.071323, 31.793606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822285, 36.624546, 32.100594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427887, 36.687187, 32.077641>,  <35.191250, 36.724773, 32.063869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427887, 36.687187, 32.077641>,  <35.822285, 36.624546, 32.100594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427887, 36.687187, 32.077641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001446, 0.352043, 0.935983,
		0.166777, 0.922790, -0.347339,
		-0.985994, 0.156603, -0.057378,
		35.132088, 36.734169, 32.060429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710426, 37.253334, 32.307983>,  <35.822285, 36.624546, 32.100594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710426, 37.253334, 32.307983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.351185, 37.087650, 32.367100>,  <35.135639, 36.988239, 32.402569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.351185, 37.087650, 32.367100>,  <35.710426, 37.253334, 32.307983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351185, 37.087650, 32.367100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070347, 0.196431, 0.977991,
		-0.434127, 0.888731, -0.147276,
		-0.898101, -0.414212, 0.147795,
		35.081753, 36.963387, 32.411438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375301, 37.719238, 32.725712>,  <35.710426, 37.253334, 32.307983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375301, 37.719238, 32.725712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145260, 37.393803, 32.759960>,  <35.007236, 37.198540, 32.780510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145260, 37.393803, 32.759960>,  <35.375301, 37.719238, 32.725712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145260, 37.393803, 32.759960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133162, 0.196359, 0.971448,
		-0.807171, 0.547282, -0.221265,
		-0.575103, -0.813588, 0.085618,
		34.972729, 37.149727, 32.785645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932770, 37.957233, 33.112453>,  <35.375301, 37.719238, 32.725712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932770, 37.957233, 33.112453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864491, 37.563328, 33.125729>,  <34.823524, 37.326984, 33.133694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864491, 37.563328, 33.125729>,  <34.932770, 37.957233, 33.112453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864491, 37.563328, 33.125729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161724, 0.061229, 0.984935,
		-0.971961, 0.162756, -0.169712,
		-0.170695, -0.984765, 0.033191,
		34.813282, 37.267899, 33.135685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248306, 37.871269, 33.257992>,  <34.932770, 37.957233, 33.112453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248306, 37.871269, 33.257992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.466751, 37.556679, 33.373386>,  <34.597816, 37.367924, 33.442623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.466751, 37.556679, 33.373386>,  <34.248306, 37.871269, 33.257992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466751, 37.556679, 33.373386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254664, 0.172208, 0.951573,
		-0.798067, -0.593129, -0.106242,
		0.546110, -0.786474, 0.288482,
		34.630585, 37.320736, 33.459930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853210, 37.441376, 33.745579>,  <34.248306, 37.871269, 33.257992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853210, 37.441376, 33.745579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231770, 37.347488, 33.834339>,  <34.458904, 37.291157, 33.887596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231770, 37.347488, 33.834339>,  <33.853210, 37.441376, 33.745579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231770, 37.347488, 33.834339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147774, 0.296262, 0.943606,
		-0.287227, -0.925815, 0.245695,
		0.946395, -0.234722, 0.221906,
		34.515690, 37.277073, 33.900909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792984, 37.148239, 34.415703>,  <33.853210, 37.441376, 33.745579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792984, 37.148239, 34.415703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.176884, 37.238243, 34.348473>,  <34.407223, 37.292244, 34.308136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.176884, 37.238243, 34.348473>,  <33.792984, 37.148239, 34.415703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176884, 37.238243, 34.348473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056554, 0.431364, 0.900404,
		0.275096, -0.873670, 0.401277,
		0.959752, 0.225004, -0.168076,
		34.464809, 37.305744, 34.298050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071045, 36.918198, 35.069489>,  <33.792984, 37.148239, 34.415703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071045, 36.918198, 35.069489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370770, 37.138004, 34.921669>,  <34.550602, 37.269890, 34.832977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370770, 37.138004, 34.921669>,  <34.071045, 36.918198, 35.069489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370770, 37.138004, 34.921669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259073, 0.270313, 0.927261,
		0.609442, -0.790543, 0.060182,
		0.749308, 0.549520, -0.369548,
		34.595562, 37.302860, 34.810806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702480, 36.763523, 35.506721>,  <34.071045, 36.918198, 35.069489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702480, 36.763523, 35.506721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.790916, 37.108246, 35.324112>,  <34.843979, 37.315079, 35.214546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.790916, 37.108246, 35.324112>,  <34.702480, 36.763523, 35.506721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790916, 37.108246, 35.324112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295848, 0.386779, 0.873428,
		0.929297, -0.328169, -0.169450,
		0.221092, 0.861805, -0.456520,
		34.857243, 37.366787, 35.187157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355186, 37.020336, 35.618496>,  <34.702480, 36.763523, 35.506721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355186, 37.020336, 35.618496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147243, 37.351120, 35.532818>,  <35.022476, 37.549591, 35.481411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147243, 37.351120, 35.532818>,  <35.355186, 37.020336, 35.618496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147243, 37.351120, 35.532818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339336, 0.430017, 0.836622,
		0.783962, 0.362243, -0.504166,
		-0.519860, 0.826962, -0.214195,
		34.991287, 37.599209, 35.468559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818317, 37.466572, 35.793751>,  <35.355186, 37.020336, 35.618496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818317, 37.466572, 35.793751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476887, 37.674889, 35.799152>,  <35.272030, 37.799881, 35.802395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476887, 37.674889, 35.799152>,  <35.818317, 37.466572, 35.793751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476887, 37.674889, 35.799152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305317, 0.479065, 0.822969,
		0.422127, 0.706590, -0.567925,
		-0.853575, 0.520795, 0.013508,
		35.220814, 37.831127, 35.803204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014301, 38.116749, 36.048260>,  <35.818317, 37.466572, 35.793751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014301, 38.116749, 36.048260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.616714, 38.125652, 36.091206>,  <35.378162, 38.130997, 36.116974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.616714, 38.125652, 36.091206>,  <36.014301, 38.116749, 36.048260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616714, 38.125652, 36.091206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101523, 0.556848, 0.824387,
		-0.041435, 0.830316, -0.555750,
		-0.993970, 0.022263, 0.107369,
		35.318523, 38.132332, 36.123417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856007, 38.847454, 36.202660>,  <36.014301, 38.116749, 36.048260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856007, 38.847454, 36.202660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553261, 38.621525, 36.334194>,  <35.371613, 38.485966, 36.413116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553261, 38.621525, 36.334194>,  <35.856007, 38.847454, 36.202660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553261, 38.621525, 36.334194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040326, 0.542535, 0.839064,
		-0.652329, 0.621795, -0.433402,
		-0.756862, -0.564824, 0.328837,
		35.326202, 38.452076, 36.432846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233646, 39.306087, 36.507233>,  <35.856007, 38.847454, 36.202660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233646, 39.306087, 36.507233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.255299, 38.951492, 36.691059>,  <35.268288, 38.738735, 36.801353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.255299, 38.951492, 36.691059>,  <35.233646, 39.306087, 36.507233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255299, 38.951492, 36.691059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075686, 0.455275, 0.887128,
		-0.995661, -0.082800, -0.042452,
		0.054127, -0.886492, 0.459567,
		35.271538, 38.685543, 36.828930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554485, 39.575043, 35.854694>,  <35.233646, 39.306087, 36.507233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554485, 39.575043, 35.854694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824200, 39.679955, 36.130825>,  <35.986031, 39.742901, 36.296501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824200, 39.679955, 36.130825>,  <35.554485, 39.575043, 35.854694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824200, 39.679955, 36.130825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717456, 0.454079, 0.528270,
		-0.174908, -0.851483, 0.494352,
		0.674288, 0.262277, 0.690324,
		36.026485, 39.758636, 36.337921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129272, 40.151043, 35.983803>,  <35.554485, 39.575043, 35.854694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129272, 40.151043, 35.983803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412872, 39.901264, 35.852718>,  <36.583031, 39.751396, 35.774067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412872, 39.901264, 35.852718>,  <36.129272, 40.151043, 35.983803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412872, 39.901264, 35.852718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309180, 0.142412, -0.940280,
		0.633823, 0.767976, -0.092096,
		0.708997, -0.624445, -0.327706,
		36.625572, 39.713932, 35.754406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252644, 40.395512, 35.306892>,  <36.129272, 40.151043, 35.983803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252644, 40.395512, 35.306892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.413136, 40.029156, 35.301971>,  <36.509430, 39.809341, 35.299019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.413136, 40.029156, 35.301971>,  <36.252644, 40.395512, 35.306892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413136, 40.029156, 35.301971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311269, -0.123708, -0.942236,
		0.861466, 0.381884, -0.334725,
		0.401233, -0.915893, -0.012298,
		36.533504, 39.754387, 35.298283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798092, 40.358253, 34.775188>,  <36.252644, 40.395512, 35.306892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798092, 40.358253, 34.775188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.661377, 39.987278, 34.835907>,  <36.579350, 39.764694, 34.872337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.661377, 39.987278, 34.835907>,  <36.798092, 40.358253, 34.775188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661377, 39.987278, 34.835907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185785, -0.091657, -0.978306,
		0.921230, -0.362576, -0.140976,
		-0.341789, -0.927436, 0.151798,
		36.558842, 39.709045, 34.881447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185516, 39.935745, 34.358803>,  <36.798092, 40.358253, 34.775188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185516, 39.935745, 34.358803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855927, 39.719517, 34.426739>,  <36.658173, 39.589779, 34.467503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855927, 39.719517, 34.426739>,  <37.185516, 39.935745, 34.358803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855927, 39.719517, 34.426739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046525, -0.363273, -0.930520,
		0.564716, -0.758821, 0.324477,
		-0.823973, -0.540576, 0.169842,
		36.608734, 39.557343, 34.477692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396370, 39.256012, 34.168880>,  <37.185516, 39.935745, 34.358803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396370, 39.256012, 34.168880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997040, 39.250088, 34.146484>,  <36.757442, 39.246532, 34.133045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997040, 39.250088, 34.146484>,  <37.396370, 39.256012, 34.168880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997040, 39.250088, 34.146484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057894, -0.282956, -0.957384,
		-0.001664, -0.959019, 0.283338,
		-0.998322, -0.014811, -0.055992,
		36.697544, 39.245644, 34.129688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259892, 38.750351, 33.664246>,  <37.396370, 39.256012, 34.168880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259892, 38.750351, 33.664246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.887539, 38.895702, 33.679272>,  <36.664127, 38.982914, 33.688286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.887539, 38.895702, 33.679272>,  <37.259892, 38.750351, 33.664246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887539, 38.895702, 33.679272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167133, -0.332201, -0.928283,
		-0.324800, -0.870417, 0.369972,
		-0.930898, 0.363341, 0.037577,
		36.608273, 39.004715, 33.690540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830147, 38.245068, 33.288311>,  <37.259892, 38.750351, 33.664246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830147, 38.245068, 33.288311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.615971, 38.582748, 33.278275>,  <36.487465, 38.785355, 33.272255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.615971, 38.582748, 33.278275>,  <36.830147, 38.245068, 33.288311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615971, 38.582748, 33.278275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124852, -0.108499, -0.986225,
		-0.835293, -0.524934, 0.163495,
		-0.535442, 0.844199, -0.025089,
		36.455338, 38.836010, 33.270748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165447, 38.079369, 32.904819>,  <36.830147, 38.245068, 33.288311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165447, 38.079369, 32.904819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240044, 38.472321, 32.899868>,  <36.284801, 38.708092, 32.896896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240044, 38.472321, 32.899868>,  <36.165447, 38.079369, 32.904819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240044, 38.472321, 32.899868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242731, 0.033864, -0.969502,
		-0.951999, 0.183812, 0.244769,
		0.186495, 0.982378, -0.012378,
		36.295994, 38.767033, 32.896156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621990, 38.447498, 32.466713>,  <36.165447, 38.079369, 32.904819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621990, 38.447498, 32.466713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919640, 38.714596, 32.474720>,  <36.098228, 38.874855, 32.479527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919640, 38.714596, 32.474720>,  <35.621990, 38.447498, 32.466713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919640, 38.714596, 32.474720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006301, 0.036984, -0.999296,
		-0.668011, 0.743475, 0.031728,
		0.744125, 0.667740, 0.020021,
		36.142876, 38.914917, 32.480728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500973, 38.842350, 31.908072>,  <35.621990, 38.447498, 32.466713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500973, 38.842350, 31.908072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887093, 38.908463, 31.988937>,  <36.118767, 38.948132, 32.037457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887093, 38.908463, 31.988937>,  <35.500973, 38.842350, 31.908072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887093, 38.908463, 31.988937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188143, 0.096664, -0.977373,
		-0.181086, 0.981498, 0.062213,
		0.965303, 0.165283, 0.202166,
		36.176685, 38.958046, 32.049587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673969, 39.456913, 31.558788>,  <35.500973, 38.842350, 31.908072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673969, 39.456913, 31.558788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025482, 39.272907, 31.609592>,  <36.236389, 39.162502, 31.640074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025482, 39.272907, 31.609592>,  <35.673969, 39.456913, 31.558788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025482, 39.272907, 31.609592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253761, 0.225036, -0.940725,
		0.404167, 0.858920, 0.314491,
		0.878780, -0.460016, 0.127008,
		36.289116, 39.134903, 31.647696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242836, 39.949844, 31.246778>,  <35.673969, 39.456913, 31.558788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242836, 39.949844, 31.246778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.369778, 39.572144, 31.281826>,  <36.445942, 39.345524, 31.302855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.369778, 39.572144, 31.281826>,  <36.242836, 39.949844, 31.246778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369778, 39.572144, 31.281826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215305, -0.018238, -0.976377,
		0.923542, 0.328722, 0.197513,
		0.317354, -0.944251, 0.087619,
		36.464985, 39.288868, 31.308111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769325, 40.086155, 30.831079>,  <36.242836, 39.949844, 31.246778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769325, 40.086155, 30.831079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.689072, 39.699810, 30.896635>,  <36.640919, 39.468002, 30.935968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.689072, 39.699810, 30.896635>,  <36.769325, 40.086155, 30.831079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689072, 39.699810, 30.896635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405298, -0.234139, -0.883693,
		0.891896, -0.110878, 0.438438,
		-0.200637, -0.965860, 0.163889,
		36.628880, 39.410053, 30.945801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279606, 39.751453, 30.464331>,  <36.769325, 40.086155, 30.831079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279606, 39.751453, 30.464331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.003910, 39.465584, 30.511984>,  <36.838493, 39.294064, 30.540575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.003910, 39.465584, 30.511984>,  <37.279606, 39.751453, 30.464331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003910, 39.465584, 30.511984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121572, -0.276173, -0.953388,
		0.714259, -0.642632, 0.277234,
		-0.689242, -0.714670, 0.119133,
		36.797138, 39.251183, 30.547724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620747, 39.126160, 30.254671>,  <37.279606, 39.751453, 30.464331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620747, 39.126160, 30.254671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229027, 39.046680, 30.239191>,  <36.993996, 38.998993, 30.229902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229027, 39.046680, 30.239191>,  <37.620747, 39.126160, 30.254671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229027, 39.046680, 30.239191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110856, -0.366430, -0.923818,
		0.169379, -0.908982, 0.380870,
		-0.979297, -0.198697, -0.038700,
		36.935238, 38.987072, 30.227581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576939, 38.343933, 30.194082>,  <37.620747, 39.126160, 30.254671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576939, 38.343933, 30.194082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254360, 38.542145, 30.065025>,  <37.060814, 38.661072, 29.987591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254360, 38.542145, 30.065025>,  <37.576939, 38.343933, 30.194082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254360, 38.542145, 30.065025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195155, -0.292023, -0.936289,
		-0.558175, -0.818032, 0.138796,
		-0.806446, 0.495526, -0.322642,
		37.012424, 38.690804, 29.968233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344391, 37.944752, 29.635084>,  <37.576939, 38.343933, 30.194082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344391, 37.944752, 29.635084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.177689, 38.304802, 29.584351>,  <37.077667, 38.520832, 29.553909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.177689, 38.304802, 29.584351>,  <37.344391, 37.944752, 29.635084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177689, 38.304802, 29.584351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176763, -0.056619, -0.982624,
		-0.891666, -0.431935, -0.135512,
		-0.416757, 0.900126, -0.126835,
		37.052662, 38.574841, 29.546301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990864, 37.903133, 29.051636>,  <37.344391, 37.944752, 29.635084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990864, 37.903133, 29.051636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969578, 38.302559, 29.054150>,  <36.956806, 38.542213, 29.055658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969578, 38.302559, 29.054150>,  <36.990864, 37.903133, 29.051636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969578, 38.302559, 29.054150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172356, 0.015383, -0.984915,
		-0.983596, -0.051328, -0.172927,
		-0.053214, 0.998563, 0.006284,
		36.953613, 38.602127, 29.056034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403957, 38.074039, 28.543089>,  <36.990864, 37.903133, 29.051636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403957, 38.074039, 28.543089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613190, 38.411694, 28.590128>,  <36.738728, 38.614285, 28.618351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613190, 38.411694, 28.590128>,  <36.403957, 38.074039, 28.543089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613190, 38.411694, 28.590128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124513, 0.060814, -0.990353,
		-0.843141, 0.532674, -0.073295,
		0.523077, 0.844133, 0.117600,
		36.770111, 38.664932, 28.625408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094906, 38.595242, 28.193905>,  <36.403957, 38.074039, 28.543089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094906, 38.595242, 28.193905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.462017, 38.749855, 28.230305>,  <36.682281, 38.842625, 28.252144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.462017, 38.749855, 28.230305>,  <36.094906, 38.595242, 28.193905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462017, 38.749855, 28.230305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020222, 0.274352, -0.961417,
		-0.396585, 0.880524, 0.259610,
		0.917775, 0.386533, 0.090998,
		36.737350, 38.865814, 28.257605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103752, 39.258293, 27.829515>,  <36.094906, 38.595242, 28.193905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103752, 39.258293, 27.829515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487648, 39.150784, 27.862152>,  <36.717987, 39.086277, 27.881735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487648, 39.150784, 27.862152>,  <36.103752, 39.258293, 27.829515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487648, 39.150784, 27.862152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158633, 0.278925, -0.947120,
		0.231806, 0.921933, 0.310332,
		0.959740, -0.268777, 0.081593,
		36.775570, 39.070152, 27.886629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449387, 39.743382, 27.469296>,  <36.103752, 39.258293, 27.829515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449387, 39.743382, 27.469296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.751537, 39.483501, 27.503475>,  <36.932827, 39.327572, 27.523983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.751537, 39.483501, 27.503475>,  <36.449387, 39.743382, 27.469296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751537, 39.483501, 27.503475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335766, 0.271761, -0.901891,
		0.562737, 0.709954, 0.423428,
		0.755373, -0.649700, 0.085449,
		36.978149, 39.288589, 27.529110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125797, 40.078358, 27.334038>,  <36.449387, 39.743382, 27.469296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125797, 40.078358, 27.334038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169025, 39.685547, 27.272141>,  <37.194962, 39.449860, 27.235003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169025, 39.685547, 27.272141>,  <37.125797, 40.078358, 27.334038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169025, 39.685547, 27.272141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386793, 0.184924, -0.903435,
		0.915812, 0.037782, 0.399825,
		0.108071, -0.982026, -0.154742,
		37.201447, 39.390938, 27.225718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853107, 40.023052, 27.159397>,  <37.125797, 40.078358, 27.334038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853107, 40.023052, 27.159397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660389, 39.708923, 27.003885>,  <37.544758, 39.520447, 26.910578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660389, 39.708923, 27.003885>,  <37.853107, 40.023052, 27.159397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660389, 39.708923, 27.003885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289652, 0.276009, -0.916472,
		0.827030, -0.554160, 0.094491,
		-0.481791, -0.785319, -0.388781,
		37.515850, 39.473328, 26.887251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341442, 39.673435, 26.715702>,  <37.853107, 40.023052, 27.159397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341442, 39.673435, 26.715702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972813, 39.557774, 26.612089>,  <37.751637, 39.488377, 26.549921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972813, 39.557774, 26.612089>,  <38.341442, 39.673435, 26.715702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972813, 39.557774, 26.612089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267701, 0.009892, -0.963451,
		0.281147, -0.957232, 0.068290,
		-0.921571, -0.289153, -0.259033,
		37.696342, 39.471027, 26.534380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470890, 39.213741, 26.206785>,  <38.341442, 39.673435, 26.715702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470890, 39.213741, 26.206785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.083534, 39.304272, 26.164850>,  <37.851120, 39.358589, 26.139688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.083534, 39.304272, 26.164850>,  <38.470890, 39.213741, 26.206785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083534, 39.304272, 26.164850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103375, -0.018349, -0.994473,
		-0.226999, -0.973879, -0.005627,
		-0.968393, 0.226326, -0.104840,
		37.793015, 39.372169, 26.133398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810032, 38.592937, 26.444956>,  <38.470890, 39.213741, 26.206785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810032, 38.592937, 26.444956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.193752, 38.494286, 26.389956>,  <39.423985, 38.435093, 26.356956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.193752, 38.494286, 26.389956>,  <38.810032, 38.592937, 26.444956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193752, 38.494286, 26.389956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210936, 0.302189, 0.929617,
		-0.187724, -0.920790, 0.341916,
		0.959305, -0.246634, -0.137499,
		39.481544, 38.420296, 26.348705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848949, 38.092567, 26.955153>,  <38.810032, 38.592937, 26.444956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848949, 38.092567, 26.955153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.212574, 38.236980, 26.871948>,  <39.430748, 38.323627, 26.822025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.212574, 38.236980, 26.871948>,  <38.848949, 38.092567, 26.955153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212574, 38.236980, 26.871948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160116, 0.158211, 0.974337,
		0.384679, -0.919034, 0.086016,
		0.909057, 0.361035, -0.208012,
		39.485291, 38.345291, 26.809546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284840, 37.880566, 27.514441>,  <38.848949, 38.092567, 26.955153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284840, 37.880566, 27.514441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.526066, 38.150650, 27.344549>,  <39.670803, 38.312702, 27.242615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.526066, 38.150650, 27.344549>,  <39.284840, 37.880566, 27.514441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526066, 38.150650, 27.344549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301417, 0.300085, 0.905040,
		0.738550, -0.673822, -0.022548,
		0.603069, 0.675213, -0.424729,
		39.706985, 38.353214, 27.217131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950142, 37.748802, 27.728279>,  <39.284840, 37.880566, 27.514441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950142, 37.748802, 27.728279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932659, 38.131546, 27.613386>,  <39.922169, 38.361195, 27.544451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932659, 38.131546, 27.613386>,  <39.950142, 37.748802, 27.728279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932659, 38.131546, 27.613386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419584, 0.278499, 0.863938,
		0.906664, -0.082761, -0.413656,
		-0.043702, 0.956864, -0.287230,
		39.919548, 38.418606, 27.527218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698780, 38.083614, 27.886295>,  <39.950142, 37.748802, 27.728279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698780, 38.083614, 27.886295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.425625, 38.374168, 27.855230>,  <40.261734, 38.548500, 27.836592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.425625, 38.374168, 27.855230>,  <40.698780, 38.083614, 27.886295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425625, 38.374168, 27.855230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276542, 0.355440, 0.892853,
		0.676161, 0.588239, -0.443601,
		-0.682884, 0.726387, -0.077662,
		40.220760, 38.592083, 27.831932>
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
