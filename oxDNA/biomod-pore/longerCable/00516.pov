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
	<24.343079, 35.146744, 34.713490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.475962, 34.884590, 34.984814>,  <24.555691, 34.727299, 35.147610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.475962, 34.884590, 34.984814>,  <24.343079, 35.146744, 34.713490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.475962, 34.884590, 34.984814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924264, 0.369601, -0.095556,
		-0.188080, 0.658686, 0.728532,
		0.332208, -0.655383, 0.678314,
		24.575624, 34.687977, 35.188309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687359, 35.367443, 35.427753>,  <24.343079, 35.146744, 34.713490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687359, 35.367443, 35.427753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832232, 35.020588, 35.290997>,  <24.919155, 34.812473, 35.208942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832232, 35.020588, 35.290997>,  <24.687359, 35.367443, 35.427753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832232, 35.020588, 35.290997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926227, 0.375949, 0.027670,
		0.104541, -0.326693, 0.939331,
		0.362180, -0.867141, -0.341894,
		24.940886, 34.760445, 35.188427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165396, 35.095768, 35.890553>,  <24.687359, 35.367443, 35.427753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.165396, 35.095768, 35.890553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257732, 34.943577, 35.532345>,  <25.313135, 34.852264, 35.317421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257732, 34.943577, 35.532345>,  <25.165396, 35.095768, 35.890553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257732, 34.943577, 35.532345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919225, 0.386994, 0.072534,
		0.318962, -0.839926, 0.439077,
		0.230843, -0.380475, -0.895517,
		25.326984, 34.829433, 35.263691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708237, 34.601101, 35.979290>,  <25.165396, 35.095768, 35.890553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708237, 34.601101, 35.979290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714697, 34.752934, 35.609283>,  <25.718573, 34.844032, 35.387280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714697, 34.752934, 35.609283>,  <25.708237, 34.601101, 35.979290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714697, 34.752934, 35.609283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897009, 0.403201, 0.181115,
		0.441716, -0.832676, -0.333972,
		0.016152, 0.379577, -0.925019,
		25.719543, 34.866806, 35.331779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285393, 34.287296, 35.494755>,  <25.708237, 34.601101, 35.979290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285393, 34.287296, 35.494755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177990, 34.669392, 35.445068>,  <26.113548, 34.898647, 35.415257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177990, 34.669392, 35.445068>,  <26.285393, 34.287296, 35.494755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177990, 34.669392, 35.445068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875531, 0.295783, 0.382044,
		0.401684, -0.006177, -0.915758,
		-0.268506, 0.955235, -0.124219,
		26.097439, 34.955963, 35.407803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820250, 34.696289, 35.076336>,  <26.285393, 34.287296, 35.494755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820250, 34.696289, 35.076336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612869, 34.917953, 35.336834>,  <26.488441, 35.050953, 35.493134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612869, 34.917953, 35.336834>,  <26.820250, 34.696289, 35.076336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612869, 34.917953, 35.336834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854634, 0.361150, 0.373056,
		-0.028463, 0.749985, -0.660842,
		-0.518449, 0.554160, 0.651242,
		26.457335, 35.084202, 35.532207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108463, 35.427364, 35.044209>,  <26.820250, 34.696289, 35.076336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108463, 35.427364, 35.044209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909903, 35.387871, 35.389191>,  <26.790766, 35.364174, 35.596180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909903, 35.387871, 35.389191>,  <27.108463, 35.427364, 35.044209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909903, 35.387871, 35.389191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720225, 0.507801, 0.472667,
		-0.484624, 0.855798, -0.180966,
		-0.496403, -0.098729, 0.862460,
		26.760983, 35.358253, 35.647930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093327, 36.122677, 35.435936>,  <27.108463, 35.427364, 35.044209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093327, 36.122677, 35.435936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100651, 35.807327, 35.681904>,  <27.105045, 35.618118, 35.829487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100651, 35.807327, 35.681904>,  <27.093327, 36.122677, 35.435936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100651, 35.807327, 35.681904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775528, 0.399375, 0.488934,
		-0.631048, 0.467936, 0.618720,
		0.018312, -0.788375, 0.614922,
		27.106144, 35.570816, 35.866379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116547, 36.365570, 36.098953>,  <27.093327, 36.122677, 35.435936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116547, 36.365570, 36.098953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265303, 35.994492, 36.112057>,  <27.354557, 35.771843, 36.119919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265303, 35.994492, 36.112057>,  <27.116547, 36.365570, 36.098953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265303, 35.994492, 36.112057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773433, 0.329178, 0.541704,
		-0.513322, -0.176117, 0.839931,
		0.371890, -0.927698, 0.032759,
		27.376869, 35.716183, 36.121883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251255, 36.261215, 36.813271>,  <27.116547, 36.365570, 36.098953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251255, 36.261215, 36.813271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476803, 35.995434, 36.617085>,  <27.612131, 35.835964, 36.499374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476803, 35.995434, 36.617085>,  <27.251255, 36.261215, 36.813271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476803, 35.995434, 36.617085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791261, 0.264551, 0.551288,
		-0.236551, -0.698940, 0.674927,
		0.563870, -0.664451, -0.490464,
		27.645964, 35.796097, 36.469944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788561, 35.983765, 37.324322>,  <27.251255, 36.261215, 36.813271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788561, 35.983765, 37.324322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934505, 35.924240, 36.956684>,  <28.022072, 35.888527, 36.736103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934505, 35.924240, 36.956684>,  <27.788561, 35.983765, 37.324322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934505, 35.924240, 36.956684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915505, 0.237034, 0.325061,
		0.169483, -0.960036, 0.222724,
		0.364863, -0.148813, -0.919092,
		28.043964, 35.879597, 36.680958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299465, 35.442223, 37.339668>,  <27.788561, 35.983765, 37.324322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299465, 35.442223, 37.339668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354134, 35.698872, 37.037769>,  <28.386934, 35.852859, 36.856628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354134, 35.698872, 37.037769>,  <28.299465, 35.442223, 37.339668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354134, 35.698872, 37.037769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960110, 0.101828, 0.260422,
		0.243946, -0.760233, -0.602109,
		0.136670, 0.641620, -0.754748,
		28.395134, 35.891357, 36.811344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876997, 35.241901, 36.974258>,  <28.299465, 35.442223, 37.339668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876997, 35.241901, 36.974258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829103, 35.634167, 36.912331>,  <28.800367, 35.869526, 36.875175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829103, 35.634167, 36.912331>,  <28.876997, 35.241901, 36.974258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829103, 35.634167, 36.912331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991693, 0.110756, -0.065400,
		-0.046989, -0.161361, -0.985776,
		-0.119734, 0.980661, -0.154816,
		28.793182, 35.928364, 36.865887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187752, 35.575665, 36.274197>,  <28.876997, 35.241901, 36.974258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187752, 35.575665, 36.274197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199959, 35.813423, 36.595634>,  <29.207283, 35.956078, 36.788498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199959, 35.813423, 36.595634>,  <29.187752, 35.575665, 36.274197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199959, 35.813423, 36.595634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984169, 0.122557, -0.128026,
		-0.174584, 0.794781, -0.581243,
		0.030517, 0.594392, 0.803596,
		29.209114, 35.991741, 36.836712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478176, 36.138477, 35.980694>,  <29.187752, 35.575665, 36.274197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478176, 36.138477, 35.980694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541258, 36.060524, 36.367920>,  <29.579107, 36.013752, 36.600254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541258, 36.060524, 36.367920>,  <29.478176, 36.138477, 35.980694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541258, 36.060524, 36.367920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972510, -0.139437, -0.186499,
		0.171330, 0.970864, 0.167537,
		0.157704, -0.194885, 0.968065,
		29.588570, 36.002060, 36.658340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775667, 36.325661, 35.784649>,  <29.478176, 36.138477, 35.980694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775667, 36.325661, 35.784649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724651, 36.078762, 36.095192>,  <28.694042, 35.930622, 36.281517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724651, 36.078762, 36.095192>,  <28.775667, 36.325661, 35.784649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724651, 36.078762, 36.095192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892345, -0.270280, -0.361483,
		0.432960, -0.738884, -0.516329,
		-0.127541, -0.617251, 0.776360,
		28.686390, 35.893585, 36.328098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644173, 35.670082, 35.596363>,  <28.775667, 36.325661, 35.784649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644173, 35.670082, 35.596363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460716, 35.707188, 35.949871>,  <28.350641, 35.729450, 36.161976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460716, 35.707188, 35.949871>,  <28.644173, 35.670082, 35.596363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460716, 35.707188, 35.949871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824673, -0.414888, -0.384425,
		0.331002, -0.905131, 0.266789,
		-0.458642, 0.092768, 0.883765,
		28.323124, 35.735020, 36.215000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440948, 34.958981, 35.817547>,  <28.644173, 35.670082, 35.596363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440948, 34.958981, 35.817547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191687, 35.207943, 36.006985>,  <28.042130, 35.357323, 36.120647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191687, 35.207943, 36.006985>,  <28.440948, 34.958981, 35.817547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191687, 35.207943, 36.006985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776394, -0.565307, -0.278639,
		0.094297, -0.541328, 0.835507,
		-0.623153, 0.622408, 0.473591,
		28.004740, 35.394665, 36.149063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890215, 34.535439, 36.222393>,  <28.440948, 34.958981, 35.817547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890215, 34.535439, 36.222393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730585, 34.900494, 36.186974>,  <27.634808, 35.119526, 36.165722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730585, 34.900494, 36.186974>,  <27.890215, 34.535439, 36.222393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730585, 34.900494, 36.186974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900628, -0.408274, -0.148934,
		-0.172073, 0.020312, 0.984875,
		-0.399074, 0.912633, -0.088547,
		27.610863, 35.174282, 36.160408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217388, 34.517265, 36.629021>,  <27.890215, 34.535439, 36.222393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217388, 34.517265, 36.629021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207987, 34.811745, 36.358479>,  <27.202345, 34.988434, 36.196152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207987, 34.811745, 36.358479>,  <27.217388, 34.517265, 36.629021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207987, 34.811745, 36.358479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934335, -0.256835, -0.247088,
		-0.355619, 0.626138, 0.693892,
		-0.023504, 0.736197, -0.676359,
		27.200935, 35.032604, 36.155571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530487, 34.808720, 36.644924>,  <27.217388, 34.517265, 36.629021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530487, 34.808720, 36.644924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707825, 34.852890, 36.289116>,  <26.814228, 34.879395, 36.075630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707825, 34.852890, 36.289116>,  <26.530487, 34.808720, 36.644924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707825, 34.852890, 36.289116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738438, -0.517526, -0.432292,
		-0.508089, 0.848512, -0.147897,
		0.443345, 0.110430, -0.889522,
		26.840828, 34.886021, 36.022259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121433, 35.442070, 36.727901>,  <26.530487, 34.808720, 36.644924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121433, 35.442070, 36.727901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306551, 35.447819, 36.373363>,  <26.417622, 35.451267, 36.160641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306551, 35.447819, 36.373363>,  <26.121433, 35.442070, 36.727901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306551, 35.447819, 36.373363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818838, -0.376107, -0.433645,
		-0.339595, 0.926465, -0.162291,
		0.462796, 0.014374, -0.886348,
		26.445389, 35.452129, 36.107460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709475, 35.852940, 36.208893>,  <26.121433, 35.442070, 36.727901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709475, 35.852940, 36.208893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947666, 35.602451, 36.007595>,  <26.090580, 35.452160, 35.886818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947666, 35.602451, 36.007595>,  <25.709475, 35.852940, 36.208893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947666, 35.602451, 36.007595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802734, -0.438844, -0.403774,
		0.032007, 0.644409, -0.764011,
		0.595477, -0.626221, -0.503243,
		26.126308, 35.414585, 35.856621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.638847, 35.876736, 35.459793>,  <25.709475, 35.852940, 36.208893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.638847, 35.876736, 35.459793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741032, 35.510414, 35.583759>,  <25.802341, 35.290623, 35.658138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741032, 35.510414, 35.583759>,  <25.638847, 35.876736, 35.459793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741032, 35.510414, 35.583759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877228, -0.354320, -0.323926,
		0.406460, -0.189115, -0.893883,
		0.255461, -0.915802, 0.309914,
		25.817671, 35.235672, 35.676735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358732, 35.605946, 35.233391>,  <25.638847, 35.876736, 35.459793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358732, 35.605946, 35.233391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445862, 35.359863, 34.930321>,  <26.498138, 35.212212, 34.748478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445862, 35.359863, 34.930321>,  <26.358732, 35.605946, 35.233391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445862, 35.359863, 34.930321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897271, -0.431672, 0.092549,
		-0.384004, 0.659680, -0.646037,
		0.217823, -0.615209, -0.757675,
		26.511208, 35.175301, 34.703018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985462, 35.686127, 34.554108>,  <26.358732, 35.605946, 35.233391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985462, 35.686127, 34.554108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084332, 35.321110, 34.684448>,  <26.143652, 35.102100, 34.762653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084332, 35.321110, 34.684448>,  <25.985462, 35.686127, 34.554108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084332, 35.321110, 34.684448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962813, -0.269153, -0.023426,
		0.109080, -0.307939, -0.945132,
		0.247171, -0.912540, 0.325847,
		26.158484, 35.047348, 34.782204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821064, 35.006645, 34.039852>,  <25.985462, 35.686127, 34.554108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821064, 35.006645, 34.039852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794003, 34.921432, 34.429733>,  <25.777765, 34.870304, 34.663662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794003, 34.921432, 34.429733>,  <25.821064, 35.006645, 34.039852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794003, 34.921432, 34.429733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909563, -0.388316, -0.148003,
		0.410021, -0.896565, -0.167492,
		-0.067655, -0.213029, 0.974701,
		25.773706, 34.857525, 34.722145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571369, 34.372486, 34.057606>,  <25.821064, 35.006645, 34.039852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571369, 34.372486, 34.057606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476856, 34.493172, 34.427067>,  <25.420149, 34.565582, 34.648743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476856, 34.493172, 34.427067>,  <25.571369, 34.372486, 34.057606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476856, 34.493172, 34.427067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837932, -0.544554, -0.036474,
		0.491977, -0.782580, 0.381481,
		-0.236281, 0.301711, 0.923657,
		25.405972, 34.583687, 34.704163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680506, 33.866806, 33.518970>,  <25.571369, 34.372486, 34.057606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680506, 33.866806, 33.518970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711338, 33.525433, 33.312782>,  <25.729837, 33.320610, 33.189068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711338, 33.525433, 33.312782>,  <25.680506, 33.866806, 33.518970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711338, 33.525433, 33.312782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767925, -0.380557, 0.515236,
		-0.635885, 0.356127, -0.684707,
		0.077081, -0.853434, -0.515469,
		25.734463, 33.269402, 33.158142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005487, 33.321136, 34.018063>,  <25.680506, 33.866806, 33.518970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005487, 33.321136, 34.018063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198963, 33.101444, 33.745476>,  <26.315048, 32.969631, 33.581924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198963, 33.101444, 33.745476>,  <26.005487, 33.321136, 34.018063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198963, 33.101444, 33.745476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703402, -0.219400, 0.676084,
		-0.520837, -0.806358, 0.280207,
		0.483688, -0.549227, -0.681465,
		26.344070, 32.936676, 33.541035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138498, 32.589497, 34.342770>,  <26.005487, 33.321136, 34.018063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138498, 32.589497, 34.342770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399359, 32.625618, 34.041691>,  <26.555874, 32.647289, 33.861046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399359, 32.625618, 34.041691>,  <26.138498, 32.589497, 34.342770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399359, 32.625618, 34.041691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741146, -0.284690, 0.607992,
		-0.159382, -0.954357, -0.252587,
		0.652150, 0.090300, -0.752693,
		26.595003, 32.652706, 33.815884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434332, 31.940693, 34.262814>,  <26.138498, 32.589497, 34.342770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434332, 31.940693, 34.262814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683088, 32.213371, 34.108646>,  <26.832342, 32.376980, 34.016148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683088, 32.213371, 34.108646>,  <26.434332, 31.940693, 34.262814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683088, 32.213371, 34.108646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746143, -0.366383, 0.555909,
		0.237751, -0.633288, -0.736492,
		0.621889, 0.681696, -0.385415,
		26.869656, 32.417881, 33.993023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124405, 31.606274, 34.017292>,  <26.434332, 31.940693, 34.262814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124405, 31.606274, 34.017292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201977, 31.991041, 34.094337>,  <27.248520, 32.221901, 34.140564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201977, 31.991041, 34.094337>,  <27.124405, 31.606274, 34.017292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201977, 31.991041, 34.094337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813322, -0.267435, 0.516707,
		0.548543, 0.056454, -0.834215,
		0.193928, 0.961921, 0.192615,
		27.260155, 32.279617, 34.152122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783403, 31.687069, 33.827148>,  <27.124405, 31.606274, 34.017292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783403, 31.687069, 33.827148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683619, 31.958344, 34.103649>,  <27.623747, 32.121109, 34.269550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683619, 31.958344, 34.103649>,  <27.783403, 31.687069, 33.827148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683619, 31.958344, 34.103649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827111, -0.222031, 0.516323,
		0.503643, 0.700548, -0.505546,
		-0.249462, 0.678185, 0.691255,
		27.608780, 32.161800, 34.311028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364733, 32.147202, 33.924267>,  <27.783403, 31.687069, 33.827148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364733, 32.147202, 33.924267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144842, 32.116367, 34.256977>,  <28.012907, 32.097866, 34.456604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144842, 32.116367, 34.256977>,  <28.364733, 32.147202, 33.924267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144842, 32.116367, 34.256977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833089, 0.022510, 0.552680,
		-0.061329, 0.996770, 0.051849,
		-0.549728, -0.077090, 0.831779,
		27.979923, 32.093239, 34.506512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389893, 32.683990, 34.456150>,  <28.364733, 32.147202, 33.924267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389893, 32.683990, 34.456150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100510, 32.782085, 34.714287>,  <27.926880, 32.840942, 34.869171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100510, 32.782085, 34.714287>,  <28.389893, 32.683990, 34.456150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100510, 32.782085, 34.714287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603249, -0.230007, 0.763667,
		0.335711, 0.941784, 0.018463,
		-0.723457, 0.245234, 0.645346,
		27.883472, 32.855656, 34.907890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606194, 33.151924, 34.890453>,  <28.389893, 32.683990, 34.456150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606194, 33.151924, 34.890453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324348, 32.925316, 35.061371>,  <28.155241, 32.789352, 35.163921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324348, 32.925316, 35.061371>,  <28.606194, 33.151924, 34.890453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324348, 32.925316, 35.061371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602636, -0.159828, 0.781847,
		-0.374635, 0.808402, 0.454021,
		-0.704612, -0.566517, 0.427295,
		28.112965, 32.755360, 35.189560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761759, 33.189060, 35.571465>,  <28.606194, 33.151924, 34.890453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761759, 33.189060, 35.571465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498728, 32.888058, 35.585995>,  <28.340908, 32.707455, 35.594711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498728, 32.888058, 35.585995>,  <28.761759, 33.189060, 35.571465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498728, 32.888058, 35.585995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375187, -0.285287, 0.881956,
		-0.653317, 0.593584, 0.469931,
		-0.657579, -0.752509, 0.036322,
		28.301455, 32.662304, 35.596889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427740, 33.264568, 36.287319>,  <28.761759, 33.189060, 35.571465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427740, 33.264568, 36.287319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416021, 32.897640, 36.128494>,  <28.408989, 32.677483, 36.033199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416021, 32.897640, 36.128494>,  <28.427740, 33.264568, 36.287319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416021, 32.897640, 36.128494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361163, -0.380112, 0.851514,
		-0.932042, -0.118456, 0.342440,
		-0.029299, -0.917324, -0.397063,
		28.407232, 32.622444, 36.009377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837872, 32.740738, 36.692188>,  <28.427740, 33.264568, 36.287319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837872, 32.740738, 36.692188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941580, 32.371994, 36.807400>,  <29.003805, 32.150749, 36.876526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941580, 32.371994, 36.807400>,  <28.837872, 32.740738, 36.692188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941580, 32.371994, 36.807400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471135, -0.381057, -0.795504,
		0.843095, 0.070552, -0.533116,
		0.259272, -0.921856, 0.288027,
		29.019361, 32.095436, 36.893806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305159, 32.626732, 36.110535>,  <28.837872, 32.740738, 36.692188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305159, 32.626732, 36.110535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073681, 32.368191, 36.309471>,  <28.934793, 32.213066, 36.428833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073681, 32.368191, 36.309471>,  <29.305159, 32.626732, 36.110535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073681, 32.368191, 36.309471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552234, -0.138183, -0.822157,
		0.600124, -0.750426, -0.276969,
		-0.578696, -0.646348, 0.497338,
		28.900072, 32.174286, 36.458672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187490, 31.933395, 35.712765>,  <29.305159, 32.626732, 36.110535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187490, 31.933395, 35.712765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891605, 32.011555, 35.970337>,  <28.714075, 32.058449, 36.124882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.891605, 32.011555, 35.970337>,  <29.187490, 31.933395, 35.712765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891605, 32.011555, 35.970337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657810, -0.008301, -0.753139,
		-0.141816, -0.980689, 0.134674,
		-0.739713, 0.195397, 0.643930,
		28.669691, 32.070175, 36.163517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579702, 31.454655, 35.801552>,  <29.187490, 31.933395, 35.712765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579702, 31.454655, 35.801552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456553, 31.827574, 35.877487>,  <28.382662, 32.051323, 35.923046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456553, 31.827574, 35.877487>,  <28.579702, 31.454655, 35.801552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456553, 31.827574, 35.877487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618418, -0.044462, -0.784590,
		-0.723030, -0.358953, 0.590237,
		-0.307874, 0.932296, 0.189836,
		28.364189, 32.107262, 35.934437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806602, 31.540129, 35.639191>,  <28.579702, 31.454655, 35.801552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806602, 31.540129, 35.639191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938921, 31.917578, 35.644112>,  <28.018312, 32.144047, 35.647064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938921, 31.917578, 35.644112>,  <27.806602, 31.540129, 35.639191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938921, 31.917578, 35.644112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700117, 0.254135, -0.667271,
		-0.632780, 0.212115, 0.744713,
		0.330796, 0.943622, 0.012306,
		28.038160, 32.200665, 35.647804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207062, 31.977121, 35.588734>,  <27.806602, 31.540129, 35.639191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207062, 31.977121, 35.588734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509546, 32.191174, 35.438118>,  <27.691038, 32.319603, 35.347748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509546, 32.191174, 35.438118>,  <27.207062, 31.977121, 35.588734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509546, 32.191174, 35.438118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559655, 0.230827, -0.795931,
		-0.339012, 0.812622, 0.474043,
		0.756213, 0.535130, -0.376535,
		27.736410, 32.351711, 35.325157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972439, 32.665260, 35.374954>,  <27.207062, 31.977121, 35.588734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972439, 32.665260, 35.374954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290136, 32.552158, 35.159836>,  <27.480755, 32.484295, 35.030766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290136, 32.552158, 35.159836>,  <26.972439, 32.665260, 35.374954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290136, 32.552158, 35.159836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427874, 0.368151, -0.825463,
		0.431398, 0.885727, 0.171415,
		0.794242, -0.282759, -0.537799,
		27.528408, 32.467331, 34.998497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246124, 33.211899, 34.933174>,  <26.972439, 32.665260, 35.374954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246124, 33.211899, 34.933174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363235, 32.869030, 34.763687>,  <27.433502, 32.663307, 34.661995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363235, 32.869030, 34.763687>,  <27.246124, 33.211899, 34.933174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363235, 32.869030, 34.763687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273194, 0.349670, -0.896156,
		0.916322, 0.378132, -0.131799,
		0.292779, -0.857174, -0.423714,
		27.451069, 32.611877, 34.636574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582558, 33.533974, 34.317909>,  <27.246124, 33.211899, 34.933174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582558, 33.533974, 34.317909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467646, 33.153065, 34.276623>,  <27.398699, 32.924519, 34.251850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467646, 33.153065, 34.276623>,  <27.582558, 33.533974, 34.317909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467646, 33.153065, 34.276623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541358, 0.250320, -0.802666,
		0.790192, -0.174710, -0.587430,
		-0.287279, -0.952269, -0.103220,
		27.381462, 32.867386, 34.245655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796736, 33.283562, 33.636177>,  <27.582558, 33.533974, 34.317909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796736, 33.283562, 33.636177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500509, 33.051575, 33.771938>,  <27.322773, 32.912380, 33.853397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500509, 33.051575, 33.771938>,  <27.796736, 33.283562, 33.636177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500509, 33.051575, 33.771938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512535, 0.160850, -0.843466,
		0.434593, -0.798598, -0.416376,
		-0.740565, -0.579972, 0.339406,
		27.278339, 32.877583, 33.873760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625051, 32.841244, 33.079224>,  <27.796736, 33.283562, 33.636177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625051, 32.841244, 33.079224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324883, 32.916901, 33.332550>,  <27.144781, 32.962296, 33.484547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324883, 32.916901, 33.332550>,  <27.625051, 32.841244, 33.079224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324883, 32.916901, 33.332550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577130, 0.279516, -0.767328,
		-0.322156, -0.941327, -0.100595,
		-0.750424, 0.189143, 0.633315,
		27.099754, 32.973644, 33.522545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595947, 32.045532, 32.780582>,  <27.625051, 32.841244, 33.079224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595947, 32.045532, 32.780582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933474, 32.155239, 32.596081>,  <28.135990, 32.221062, 32.485382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933474, 32.155239, 32.596081>,  <27.595947, 32.045532, 32.780582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933474, 32.155239, 32.596081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419167, 0.199830, 0.885645,
		0.335077, -0.940662, 0.053655,
		0.843815, 0.274269, -0.461252,
		28.186619, 32.237518, 32.457706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143394, 31.804577, 33.181316>,  <27.595947, 32.045532, 32.780582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143394, 31.804577, 33.181316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322884, 32.049713, 32.921139>,  <28.430576, 32.196796, 32.765034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322884, 32.049713, 32.921139>,  <28.143394, 31.804577, 33.181316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322884, 32.049713, 32.921139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730916, 0.167115, 0.661691,
		0.514210, -0.772333, -0.372948,
		0.448721, 0.612841, -0.650442,
		28.457500, 32.233566, 32.726006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831177, 31.641874, 32.937595>,  <28.143394, 31.804577, 33.181316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831177, 31.641874, 32.937595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814901, 32.041225, 32.953514>,  <28.805136, 32.280838, 32.963066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814901, 32.041225, 32.953514>,  <28.831177, 31.641874, 32.937595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814901, 32.041225, 32.953514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704885, 0.000456, 0.709321,
		0.708153, 0.056912, -0.703761,
		-0.040690, 0.998379, 0.039793,
		28.802694, 32.340740, 32.965450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513996, 31.955870, 32.944115>,  <28.831177, 31.641874, 32.937595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513996, 31.955870, 32.944115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309858, 32.253712, 33.116211>,  <29.187376, 32.432415, 33.219471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309858, 32.253712, 33.116211>,  <29.513996, 31.955870, 32.944115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309858, 32.253712, 33.116211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737686, 0.121909, 0.664046,
		0.442001, 0.656279, -0.611501,
		-0.510347, 0.744605, 0.430244,
		29.156754, 32.477093, 33.245285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913897, 32.492123, 33.086784>,  <29.513996, 31.955870, 32.944115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913897, 32.492123, 33.086784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626011, 32.527920, 33.362175>,  <29.453279, 32.549400, 33.527409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626011, 32.527920, 33.362175>,  <29.913897, 32.492123, 33.086784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626011, 32.527920, 33.362175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681922, 0.277340, 0.676805,
		-0.130372, 0.956595, -0.260634,
		-0.719712, 0.089496, 0.688480,
		29.410097, 32.554768, 33.568718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738464, 32.292862, 32.371372>,  <29.913897, 32.492123, 33.086784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738464, 32.292862, 32.371372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826420, 32.671932, 32.463947>,  <29.879192, 32.899372, 32.519493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826420, 32.671932, 32.463947>,  <29.738464, 32.292862, 32.371372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826420, 32.671932, 32.463947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812133, -0.046396, -0.581624,
		-0.540452, 0.315851, -0.779839,
		0.219888, 0.947674, 0.231438,
		29.892385, 32.956234, 32.533379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708364, 32.913738, 31.688192>,  <29.738464, 32.292862, 32.371372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708364, 32.913738, 31.688192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929850, 32.898750, 32.020939>,  <30.062740, 32.889755, 32.220585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929850, 32.898750, 32.020939>,  <29.708364, 32.913738, 31.688192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929850, 32.898750, 32.020939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831977, -0.016953, -0.554551,
		0.034883, 0.999154, 0.021789,
		0.553713, -0.037472, 0.831864,
		30.095963, 32.887508, 32.270496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122513, 33.481033, 31.967005>,  <29.708364, 32.913738, 31.688192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122513, 33.481033, 31.967005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306456, 33.169365, 32.137383>,  <30.416822, 32.982365, 32.239609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306456, 33.169365, 32.137383>,  <30.122513, 33.481033, 31.967005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306456, 33.169365, 32.137383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856980, 0.263752, -0.442742,
		0.232627, 0.568623, 0.789020,
		0.459859, -0.779168, 0.425943,
		30.444414, 32.935616, 32.265167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812521, 33.509892, 32.335819>,  <30.122513, 33.481033, 31.967005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812521, 33.509892, 32.335819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818888, 33.144524, 32.173134>,  <30.822708, 32.925304, 32.075523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818888, 33.144524, 32.173134>,  <30.812521, 33.509892, 32.335819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818888, 33.144524, 32.173134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905058, 0.186056, -0.382430,
		0.424989, -0.362011, 0.829658,
		0.015919, -0.913417, -0.406713,
		30.823664, 32.870499, 32.051121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674520, 33.450245, 31.466959>,  <30.812521, 33.509892, 32.335819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674520, 33.450245, 31.466959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375517, 33.561230, 31.225548>,  <30.196115, 33.627823, 31.080702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375517, 33.561230, 31.225548>,  <30.674520, 33.450245, 31.466959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375517, 33.561230, 31.225548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352074, -0.604958, -0.714192,
		-0.563273, -0.746349, 0.354522,
		-0.747508, 0.277467, -0.603527,
		30.151264, 33.644470, 31.044491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288448, 32.941692, 31.253006>,  <30.674520, 33.450245, 31.466959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288448, 32.941692, 31.253006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228617, 33.187099, 30.942854>,  <30.192719, 33.334343, 30.756762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228617, 33.187099, 30.942854>,  <30.288448, 32.941692, 31.253006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228617, 33.187099, 30.942854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469169, -0.646257, -0.601858,
		-0.870349, -0.453810, -0.191180,
		-0.149578, 0.613522, -0.775382,
		30.183743, 33.371155, 30.710239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844656, 32.590549, 30.784441>,  <30.288448, 32.941692, 31.253006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844656, 32.590549, 30.784441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057631, 32.871513, 30.595495>,  <30.185415, 33.040092, 30.482128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057631, 32.871513, 30.595495>,  <29.844656, 32.590549, 30.784441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057631, 32.871513, 30.595495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285949, -0.674489, -0.680660,
		-0.796709, 0.227336, -0.559976,
		0.532436, 0.702412, -0.472365,
		30.217361, 33.082237, 30.453785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630634, 32.672989, 30.058514>,  <29.844656, 32.590549, 30.784441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630634, 32.672989, 30.058514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020540, 32.758041, 30.085699>,  <30.254484, 32.809071, 30.102011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020540, 32.758041, 30.085699>,  <29.630634, 32.672989, 30.058514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020540, 32.758041, 30.085699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207656, -0.751998, -0.625602,
		-0.081911, 0.623929, -0.777176,
		0.974766, 0.212629, 0.067965,
		30.312969, 32.821831, 30.106089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895649, 32.686131, 29.429083>,  <29.630634, 32.672989, 30.058514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895649, 32.686131, 29.429083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171427, 32.566605, 29.693014>,  <30.336893, 32.494888, 29.851374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171427, 32.566605, 29.693014>,  <29.895649, 32.686131, 29.429083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171427, 32.566605, 29.693014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313051, -0.698546, -0.643454,
		0.653196, 0.650186, -0.388064,
		0.689445, -0.298818, 0.659828,
		30.378260, 32.476959, 29.890963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511017, 32.851681, 29.211403>,  <29.895649, 32.686131, 29.429083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511017, 32.851681, 29.211403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490593, 32.507851, 29.414782>,  <30.478338, 32.301552, 29.536808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490593, 32.507851, 29.414782>,  <30.511017, 32.851681, 29.211403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490593, 32.507851, 29.414782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324056, -0.495825, -0.805695,
		0.944659, 0.123626, 0.303869,
		-0.051062, -0.859578, 0.508447,
		30.475275, 32.249977, 29.567316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238443, 32.463081, 29.249411>,  <30.511017, 32.851681, 29.211403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238443, 32.463081, 29.249411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922899, 32.218693, 29.275990>,  <30.733574, 32.072060, 29.291937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922899, 32.218693, 29.275990>,  <31.238443, 32.463081, 29.249411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922899, 32.218693, 29.275990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346392, -0.531325, -0.773115,
		0.507656, -0.586862, 0.630776,
		-0.788859, -0.610972, 0.066446,
		30.686241, 32.035400, 29.295923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463247, 31.858330, 29.155918>,  <31.238443, 32.463081, 29.249411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463247, 31.858330, 29.155918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085987, 31.751007, 29.077454>,  <30.859631, 31.686613, 29.030375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085987, 31.751007, 29.077454>,  <31.463247, 31.858330, 29.155918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085987, 31.751007, 29.077454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331930, -0.730177, -0.597214,
		0.017005, -0.628374, 0.777725,
		-0.943151, -0.268306, -0.196159,
		30.803041, 31.670515, 29.018606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270020, 31.032290, 29.355892>,  <31.463247, 31.858330, 29.155918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270020, 31.032290, 29.355892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051603, 31.200647, 29.066151>,  <30.920553, 31.301662, 28.892305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051603, 31.200647, 29.066151>,  <31.270020, 31.032290, 29.355892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051603, 31.200647, 29.066151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282890, -0.721211, -0.632319,
		-0.788551, -0.550184, 0.274743,
		-0.546040, 0.420894, -0.724354,
		30.887791, 31.326916, 28.848845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849998, 30.514004, 29.100525>,  <31.270020, 31.032290, 29.355892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849998, 30.514004, 29.100525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936943, 30.807808, 28.843390>,  <30.989111, 30.984091, 28.689108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936943, 30.807808, 28.843390>,  <30.849998, 30.514004, 29.100525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936943, 30.807808, 28.843390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259199, -0.678377, -0.687474,
		-0.941047, -0.017192, -0.337839,
		0.217364, 0.734513, -0.642841,
		31.002151, 31.028162, 28.650537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616142, 30.249300, 28.480230>,  <30.849998, 30.514004, 29.100525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616142, 30.249300, 28.480230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843033, 30.557537, 28.363995>,  <30.979168, 30.742479, 28.294252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843033, 30.557537, 28.363995>,  <30.616142, 30.249300, 28.480230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843033, 30.557537, 28.363995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311079, -0.527181, -0.790765,
		-0.762551, 0.358146, -0.538745,
		0.567226, 0.770591, -0.290591,
		31.013201, 30.788715, 28.276817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575481, 30.264187, 27.771679>,  <30.616142, 30.249300, 28.480230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575481, 30.264187, 27.771679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897186, 30.494083, 27.832121>,  <31.090210, 30.632021, 27.868387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897186, 30.494083, 27.832121>,  <30.575481, 30.264187, 27.771679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897186, 30.494083, 27.832121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407215, -0.347803, -0.844517,
		-0.432824, 0.740747, -0.513768,
		0.804263, 0.574742, 0.151106,
		31.138466, 30.666506, 27.877453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624191, 30.657127, 27.218042>,  <30.575481, 30.264187, 27.771679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624191, 30.657127, 27.218042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981924, 30.607243, 27.389910>,  <31.196564, 30.577312, 27.493031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981924, 30.607243, 27.389910>,  <30.624191, 30.657127, 27.218042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981924, 30.607243, 27.389910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381653, -0.288491, -0.878131,
		0.233469, 0.949326, -0.210410,
		0.894334, -0.124713, 0.429666,
		31.250225, 30.569828, 27.518810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990459, 30.828253, 26.643076>,  <30.624191, 30.657127, 27.218042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990459, 30.828253, 26.643076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236378, 30.640032, 26.896250>,  <31.383928, 30.527100, 27.048155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236378, 30.640032, 26.896250>,  <30.990459, 30.828253, 26.643076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236378, 30.640032, 26.896250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374558, -0.532040, -0.759368,
		0.694070, 0.703926, -0.150845,
		0.614795, -0.470555, 0.632934,
		31.420816, 30.498865, 27.086130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674948, 30.934227, 26.325563>,  <30.990459, 30.828253, 26.643076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674948, 30.934227, 26.325563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703991, 30.634809, 26.589203>,  <31.721416, 30.455158, 26.747387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703991, 30.634809, 26.589203>,  <31.674948, 30.934227, 26.325563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703991, 30.634809, 26.589203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621696, -0.482775, -0.616784,
		0.779886, 0.454542, 0.430313,
		0.072610, -0.748545, 0.659096,
		31.725775, 30.410246, 26.786932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385242, 30.614346, 26.273798>,  <31.674948, 30.934227, 26.325563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385242, 30.614346, 26.273798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166111, 30.328642, 26.448025>,  <32.034634, 30.157219, 26.552561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166111, 30.328642, 26.448025>,  <32.385242, 30.614346, 26.273798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166111, 30.328642, 26.448025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381694, -0.676695, -0.629598,
		0.744444, -0.178656, 0.643339,
		-0.547826, -0.714259, 0.435569,
		32.001762, 30.114365, 26.578695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835381, 30.064127, 26.549114>,  <32.385242, 30.614346, 26.273798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835381, 30.064127, 26.549114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465942, 29.935774, 26.465210>,  <32.244278, 29.858763, 26.414867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465942, 29.935774, 26.465210>,  <32.835381, 30.064127, 26.549114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465942, 29.935774, 26.465210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381150, -0.709971, -0.592170,
		0.041093, -0.626878, 0.778033,
		-0.923600, -0.320881, -0.209760,
		32.188862, 29.839510, 26.402283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876846, 29.439455, 26.531454>,  <32.835381, 30.064127, 26.549114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876846, 29.439455, 26.531454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524761, 29.455942, 26.342340>,  <32.313511, 29.465834, 26.228872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524761, 29.455942, 26.342340>,  <32.876846, 29.439455, 26.531454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524761, 29.455942, 26.342340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345790, -0.626625, -0.698406,
		-0.325045, -0.778230, 0.537311,
		-0.880213, 0.041216, -0.472786,
		32.260696, 29.468307, 26.200504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830044, 28.832203, 26.221722>,  <32.876846, 29.439455, 26.531454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830044, 28.832203, 26.221722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556347, 29.048681, 26.026203>,  <32.392128, 29.178568, 25.908892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556347, 29.048681, 26.026203>,  <32.830044, 28.832203, 26.221722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556347, 29.048681, 26.026203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195653, -0.509461, -0.837956,
		-0.702521, -0.668998, 0.242707,
		-0.684241, 0.541195, -0.488798,
		32.351074, 29.211039, 25.879564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596855, 28.365690, 25.849293>,  <32.830044, 28.832203, 26.221722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596855, 28.365690, 25.849293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475754, 28.706505, 25.678473>,  <32.403091, 28.910994, 25.575979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475754, 28.706505, 25.678473>,  <32.596855, 28.365690, 25.849293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475754, 28.706505, 25.678473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066392, -0.428139, -0.901271,
		-0.950753, -0.301218, 0.073053,
		-0.302756, 0.852036, -0.427052,
		32.384926, 28.962116, 25.550356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129601, 28.168150, 25.295576>,  <32.596855, 28.365690, 25.849293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129601, 28.168150, 25.295576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210796, 28.549467, 25.206108>,  <32.259514, 28.778257, 25.152428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210796, 28.549467, 25.206108>,  <32.129601, 28.168150, 25.295576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210796, 28.549467, 25.206108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103166, -0.247979, -0.963257,
		-0.973730, 0.172459, -0.148685,
		0.202993, 0.953291, -0.223672,
		32.271694, 28.835455, 25.139006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840694, 28.286470, 24.610090>,  <32.129601, 28.168150, 25.295576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840694, 28.286470, 24.610090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102379, 28.588205, 24.631943>,  <32.259388, 28.769247, 24.645054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102379, 28.588205, 24.631943>,  <31.840694, 28.286470, 24.610090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102379, 28.588205, 24.631943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250030, -0.147535, -0.956932,
		-0.713789, 0.639693, -0.285126,
		0.654209, 0.754338, 0.054634,
		32.298641, 28.814507, 24.648333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544930, 28.669228, 24.046543>,  <31.840694, 28.286470, 24.610090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544930, 28.669228, 24.046543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921925, 28.769270, 24.135233>,  <32.148121, 28.829296, 24.188448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921925, 28.769270, 24.135233>,  <31.544930, 28.669228, 24.046543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921925, 28.769270, 24.135233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281717, -0.237448, -0.929652,
		-0.179863, 0.938651, -0.294251,
		0.942489, 0.250106, 0.221726,
		32.204670, 28.844301, 24.201752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635191, 29.130157, 23.506065>,  <31.544930, 28.669228, 24.046543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635191, 29.130157, 23.506065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011124, 29.045183, 23.613087>,  <32.236683, 28.994200, 23.677299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011124, 29.045183, 23.613087>,  <31.635191, 29.130157, 23.506065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011124, 29.045183, 23.613087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275303, 0.007210, -0.961330,
		0.202291, 0.977149, 0.065261,
		0.939833, -0.212434, 0.267553,
		32.293076, 28.981453, 23.693354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052380, 29.693497, 23.302160>,  <31.635191, 29.130157, 23.506065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052380, 29.693497, 23.302160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293304, 29.376137, 23.337357>,  <32.437859, 29.185720, 23.358475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293304, 29.376137, 23.337357>,  <32.052380, 29.693497, 23.302160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293304, 29.376137, 23.337357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198872, 0.042387, -0.979109,
		0.773093, 0.607225, 0.183315,
		0.602309, -0.793398, 0.087991,
		32.473999, 29.138117, 23.363754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623676, 29.797253, 22.926832>,  <32.052380, 29.693497, 23.302160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623676, 29.797253, 22.926832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654778, 29.399590, 22.956787>,  <32.673439, 29.160992, 22.974760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654778, 29.399590, 22.956787>,  <32.623676, 29.797253, 22.926832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654778, 29.399590, 22.956787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225150, -0.055666, -0.972733,
		0.971216, 0.092497, 0.219505,
		0.077756, -0.994156, 0.074889,
		32.678104, 29.101343, 22.979254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294708, 29.581217, 22.702414>,  <32.623676, 29.797253, 22.926832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294708, 29.581217, 22.702414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044037, 29.270163, 22.682199>,  <32.893635, 29.083530, 22.670071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044037, 29.270163, 22.682199>,  <33.294708, 29.581217, 22.702414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044037, 29.270163, 22.682199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492699, -0.345143, -0.798827,
		0.603757, -0.525505, 0.599435,
		-0.626678, -0.777638, -0.050533,
		32.856033, 29.036871, 22.667040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733360, 29.142143, 22.431290>,  <33.294708, 29.581217, 22.702414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733360, 29.142143, 22.431290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379925, 28.969999, 22.357470>,  <33.167862, 28.866713, 22.313177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379925, 28.969999, 22.357470>,  <33.733360, 29.142143, 22.431290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379925, 28.969999, 22.357470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324239, -0.277958, -0.904217,
		0.337841, -0.858796, 0.385140,
		-0.883591, -0.430359, -0.184550,
		33.114849, 28.840891, 22.302105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914616, 28.549231, 22.152964>,  <33.733360, 29.142143, 22.431290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914616, 28.549231, 22.152964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535263, 28.575743, 22.028915>,  <33.307652, 28.591650, 21.954487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535263, 28.575743, 22.028915>,  <33.914616, 28.549231, 22.152964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535263, 28.575743, 22.028915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260680, -0.393954, -0.881389,
		-0.180589, -0.916737, 0.356343,
		-0.948385, 0.066277, -0.310119,
		33.250748, 28.595627, 21.935879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756355, 27.886311, 21.805532>,  <33.914616, 28.549231, 22.152964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756355, 27.886311, 21.805532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490253, 28.152489, 21.670109>,  <33.330593, 28.312197, 21.588856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490253, 28.152489, 21.670109>,  <33.756355, 27.886311, 21.805532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490253, 28.152489, 21.670109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019378, -0.468690, -0.883150,
		-0.746368, -0.580956, 0.324692,
		-0.665251, 0.665447, -0.338557,
		33.290676, 28.352123, 21.568542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305206, 27.474586, 21.294176>,  <33.756355, 27.886311, 21.805532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305206, 27.474586, 21.294176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267105, 27.863922, 21.210716>,  <33.244244, 28.097525, 21.160641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267105, 27.863922, 21.210716>,  <33.305206, 27.474586, 21.294176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267105, 27.863922, 21.210716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044062, -0.213519, -0.975945,
		-0.994478, -0.083765, 0.063225,
		-0.095250, 0.973341, -0.208649,
		33.238529, 28.155924, 21.148121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793011, 27.530556, 20.783270>,  <33.305206, 27.474586, 21.294176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793011, 27.530556, 20.783270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025936, 27.854763, 20.758080>,  <33.165691, 28.049288, 20.742966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025936, 27.854763, 20.758080>,  <32.793011, 27.530556, 20.783270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025936, 27.854763, 20.758080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064930, -0.123586, -0.990207,
		-0.810365, 0.572525, -0.124593,
		0.582317, 0.810519, -0.062975,
		33.200630, 28.097919, 20.739187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521008, 27.970078, 20.244183>,  <32.793011, 27.530556, 20.783270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521008, 27.970078, 20.244183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886864, 28.130396, 20.265327>,  <33.106377, 28.226587, 20.278015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886864, 28.130396, 20.265327>,  <32.521008, 27.970078, 20.244183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886864, 28.130396, 20.265327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069442, -0.026941, -0.997222,
		-0.398258, 0.915771, -0.052474,
		0.914641, 0.400796, 0.052863,
		33.161255, 28.250635, 20.281187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535530, 28.476933, 19.616711>,  <32.521008, 27.970078, 20.244183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535530, 28.476933, 19.616711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917618, 28.421713, 19.721401>,  <33.146870, 28.388582, 19.784216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917618, 28.421713, 19.721401>,  <32.535530, 28.476933, 19.616711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917618, 28.421713, 19.721401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269609, 0.041566, -0.962072,
		0.121933, 0.989553, 0.076923,
		0.955219, -0.138047, 0.261724,
		33.204182, 28.380299, 19.799919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952904, 29.011581, 19.237600>,  <32.535530, 28.476933, 19.616711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952904, 29.011581, 19.237600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196457, 28.709414, 19.334436>,  <33.342587, 28.528112, 19.392538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196457, 28.709414, 19.334436>,  <32.952904, 29.011581, 19.237600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196457, 28.709414, 19.334436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358677, -0.010032, -0.933408,
		0.707543, 0.655165, 0.264843,
		0.608879, -0.755419, 0.242090,
		33.379120, 28.482788, 19.407064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546452, 29.216286, 19.079802>,  <32.952904, 29.011581, 19.237600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546452, 29.216286, 19.079802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596840, 28.819891, 19.061584>,  <33.627071, 28.582054, 19.050653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596840, 28.819891, 19.061584>,  <33.546452, 29.216286, 19.079802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596840, 28.819891, 19.061584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315007, 0.083490, -0.945410,
		0.940692, 0.104747, 0.322686,
		0.125970, -0.990988, -0.045542,
		33.634632, 28.522594, 19.047922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254440, 29.069242, 18.798708>,  <33.546452, 29.216286, 19.079802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254440, 29.069242, 18.798708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069439, 28.715258, 18.777063>,  <33.958439, 28.502867, 18.764076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069439, 28.715258, 18.777063>,  <34.254440, 29.069242, 18.798708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069439, 28.715258, 18.777063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457172, -0.185750, -0.869765,
		0.759659, -0.427010, 0.490491,
		-0.462507, -0.884963, -0.054110,
		33.930687, 28.449768, 18.760830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784893, 28.783792, 18.562534>,  <34.254440, 29.069242, 18.798708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784893, 28.783792, 18.562534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445721, 28.583797, 18.492075>,  <34.242218, 28.463800, 18.449799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445721, 28.583797, 18.492075>,  <34.784893, 28.783792, 18.562534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445721, 28.583797, 18.492075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282766, -0.145530, -0.948085,
		0.448394, -0.853718, 0.264778,
		-0.847931, -0.499986, -0.176148,
		34.191341, 28.433802, 18.439230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079834, 28.226618, 18.216156>,  <34.784893, 28.783792, 18.562534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079834, 28.226618, 18.216156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688248, 28.242680, 18.136150>,  <34.453297, 28.252317, 18.088146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688248, 28.242680, 18.136150>,  <35.079834, 28.226618, 18.216156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688248, 28.242680, 18.136150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196269, -0.082078, -0.977109,
		-0.055641, -0.995817, 0.072473,
		-0.978970, 0.040143, -0.200015,
		34.394558, 28.254726, 18.076145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987598, 27.698238, 17.730635>,  <35.079834, 28.226618, 18.216156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987598, 27.698238, 17.730635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701408, 27.974606, 17.689219>,  <34.529694, 28.140427, 17.664370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701408, 27.974606, 17.689219>,  <34.987598, 27.698238, 17.730635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701408, 27.974606, 17.689219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190449, 0.050299, -0.980408,
		-0.672174, -0.721180, -0.167573,
		-0.715479, 0.690919, -0.103538,
		34.486763, 28.181881, 17.658157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807770, 27.479517, 17.057524>,  <34.987598, 27.698238, 17.730635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807770, 27.479517, 17.057524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655254, 27.845421, 17.110947>,  <34.563747, 28.064962, 17.143002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655254, 27.845421, 17.110947>,  <34.807770, 27.479517, 17.057524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655254, 27.845421, 17.110947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092623, 0.181547, -0.979011,
		-0.919806, -0.360912, -0.153948,
		-0.381285, 0.914759, 0.133559,
		34.540871, 28.119848, 17.151014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412197, 27.565161, 16.414959>,  <34.807770, 27.479517, 17.057524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412197, 27.565161, 16.414959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453552, 27.923763, 16.587280>,  <34.478367, 28.138924, 16.690672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453552, 27.923763, 16.587280>,  <34.412197, 27.565161, 16.414959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453552, 27.923763, 16.587280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010689, 0.432097, -0.901764,
		-0.994583, 0.097838, 0.035092,
		0.103390, 0.896504, 0.430802,
		34.484570, 28.192715, 16.716520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938980, 27.950979, 16.099958>,  <34.412197, 27.565161, 16.414959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938980, 27.950979, 16.099958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207439, 28.220974, 16.222565>,  <34.368515, 28.382971, 16.296127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207439, 28.220974, 16.222565>,  <33.938980, 27.950979, 16.099958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207439, 28.220974, 16.222565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103410, 0.324184, -0.940325,
		-0.734072, 0.662797, 0.147776,
		0.671151, 0.674985, 0.306515,
		34.408783, 28.423470, 16.314520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834156, 28.509542, 15.633760>,  <33.938980, 27.950979, 16.099958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834156, 28.509542, 15.633760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195095, 28.602871, 15.778714>,  <34.411659, 28.658867, 15.865686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195095, 28.602871, 15.778714>,  <33.834156, 28.509542, 15.633760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195095, 28.602871, 15.778714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170807, 0.578368, -0.797694,
		-0.395710, 0.781699, 0.482039,
		0.902352, 0.233320, 0.362385,
		34.465801, 28.672867, 15.887430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976467, 29.256926, 15.550004>,  <33.834156, 28.509542, 15.633760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976467, 29.256926, 15.550004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341908, 29.108353, 15.616176>,  <34.561172, 29.019209, 15.655879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341908, 29.108353, 15.616176>,  <33.976467, 29.256926, 15.550004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341908, 29.108353, 15.616176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320881, 0.408733, -0.854384,
		0.249730, 0.833651, 0.492605,
		0.913603, -0.371433, 0.165430,
		34.615990, 28.996923, 15.665805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468967, 29.824709, 15.507010>,  <33.976467, 29.256926, 15.550004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468967, 29.824709, 15.507010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666653, 29.479132, 15.468322>,  <34.785263, 29.271786, 15.445108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666653, 29.479132, 15.468322>,  <34.468967, 29.824709, 15.507010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666653, 29.479132, 15.468322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196050, 0.219152, -0.955791,
		0.846948, 0.453400, 0.277683,
		0.494211, -0.863945, -0.096721,
		34.814915, 29.219948, 15.439305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232567, 30.090406, 15.545105>,  <34.468967, 29.824709, 15.507010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232567, 30.090406, 15.545105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229202, 29.709776, 15.422189>,  <35.227184, 29.481398, 15.348439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229202, 29.709776, 15.422189>,  <35.232567, 30.090406, 15.545105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229202, 29.709776, 15.422189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653321, 0.227419, -0.722117,
		0.757035, -0.206831, 0.619774,
		-0.008408, -0.951579, -0.307291,
		35.226681, 29.424303, 15.330002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948307, 29.775833, 15.546072>,  <35.232567, 30.090406, 15.545105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948307, 29.775833, 15.546072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713383, 29.624622, 15.259809>,  <35.572430, 29.533895, 15.088052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713383, 29.624622, 15.259809>,  <35.948307, 29.775833, 15.546072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713383, 29.624622, 15.259809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640122, 0.324145, -0.696545,
		0.495288, -0.867194, 0.051608,
		-0.587311, -0.378026, -0.715655,
		35.537189, 29.511215, 15.045113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307781, 29.676096, 14.969007>,  <35.948307, 29.775833, 15.546072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307781, 29.676096, 14.969007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961216, 29.601707, 14.783647>,  <35.753277, 29.557074, 14.672430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961216, 29.601707, 14.783647>,  <36.307781, 29.676096, 14.969007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961216, 29.601707, 14.783647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407093, 0.274314, -0.871222,
		0.289143, -0.943486, -0.161960,
		-0.866413, -0.185975, -0.463403,
		35.701290, 29.545916, 14.644626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415314, 29.307625, 14.276993>,  <36.307781, 29.676096, 14.969007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415314, 29.307625, 14.276993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057552, 29.482347, 14.238527>,  <35.842896, 29.587181, 14.215448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057552, 29.482347, 14.238527>,  <36.415314, 29.307625, 14.276993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057552, 29.482347, 14.238527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287495, 0.396752, -0.871742,
		-0.342632, -0.807332, -0.480435,
		-0.894399, 0.436809, -0.096164,
		35.789234, 29.613390, 14.209678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043243, 29.028223, 13.716713>,  <36.415314, 29.307625, 14.276993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043243, 29.028223, 13.716713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953487, 29.409245, 13.798974>,  <35.899632, 29.637857, 13.848330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953487, 29.409245, 13.798974>,  <36.043243, 29.028223, 13.716713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953487, 29.409245, 13.798974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301721, 0.268575, -0.914785,
		-0.926613, -0.143223, -0.347672,
		-0.224394, 0.952552, 0.205652,
		35.886169, 29.695009, 13.860669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614777, 29.374832, 13.263554>,  <36.043243, 29.028223, 13.716713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614777, 29.374832, 13.263554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870686, 29.654018, 13.392261>,  <36.024231, 29.821529, 13.469485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870686, 29.654018, 13.392261>,  <35.614777, 29.374832, 13.263554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870686, 29.654018, 13.392261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217746, 0.236899, -0.946818,
		-0.737074, 0.675812, -0.000418,
		0.639772, 0.697966, 0.321768,
		36.062618, 29.863409, 13.488791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421955, 30.056046, 12.910868>,  <35.614777, 29.374832, 13.263554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421955, 30.056046, 12.910868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800457, 29.979088, 13.014853>,  <36.027557, 29.932913, 13.077245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800457, 29.979088, 13.014853>,  <35.421955, 30.056046, 12.910868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800457, 29.979088, 13.014853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302774, 0.244423, -0.921187,
		0.113692, 0.950390, 0.289539,
		0.946257, -0.192396, 0.259964,
		36.084335, 29.921370, 13.092843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797874, 30.622156, 12.756202>,  <35.421955, 30.056046, 12.910868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797874, 30.622156, 12.756202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000744, 30.279186, 12.721327>,  <36.122467, 30.073404, 12.700402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000744, 30.279186, 12.721327>,  <35.797874, 30.622156, 12.756202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000744, 30.279186, 12.721327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084878, 0.150364, -0.984980,
		0.857654, 0.492156, 0.149037,
		0.507173, -0.857423, -0.087187,
		36.152897, 30.021959, 12.695170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421627, 30.726877, 12.321935>,  <35.797874, 30.622156, 12.756202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421627, 30.726877, 12.321935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361431, 30.331470, 12.316497>,  <36.325314, 30.094227, 12.313234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361431, 30.331470, 12.316497>,  <36.421627, 30.726877, 12.321935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361431, 30.331470, 12.316497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200032, -0.016980, -0.979642,
		0.968163, -0.150149, 0.200291,
		-0.150493, -0.988518, -0.013595,
		36.316284, 30.034916, 12.312418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066101, 31.340603, 12.041183>,  <36.421627, 30.726877, 12.321935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066101, 31.340603, 12.041183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913750, 31.710453, 12.042016>,  <35.822338, 31.932364, 12.042516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913750, 31.710453, 12.042016>,  <36.066101, 31.340603, 12.041183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913750, 31.710453, 12.042016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671174, -0.278023, 0.687190,
		0.635971, 0.260337, 0.726475,
		-0.380877, 0.924623, 0.002083,
		35.799488, 31.987841, 12.042641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088963, 31.653860, 12.654264>,  <36.066101, 31.340603, 12.041183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088963, 31.653860, 12.654264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779194, 31.835606, 12.478165>,  <35.593330, 31.944653, 12.372505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779194, 31.835606, 12.478165>,  <36.088963, 31.653860, 12.654264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779194, 31.835606, 12.478165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585705, -0.251801, 0.770419,
		0.239195, 0.854488, 0.461124,
		-0.774426, 0.454363, -0.440249,
		35.546867, 31.971914, 12.346090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729149, 32.052174, 13.130138>,  <36.088963, 31.653860, 12.654264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729149, 32.052174, 13.130138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440979, 31.964153, 12.867058>,  <35.268078, 31.911341, 12.709209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440979, 31.964153, 12.867058>,  <35.729149, 32.052174, 13.130138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440979, 31.964153, 12.867058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619020, -0.223614, 0.752868,
		-0.312743, 0.949512, 0.024878,
		-0.720420, -0.220054, -0.657701,
		35.224854, 31.898136, 12.669747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170269, 32.385735, 13.357028>,  <35.729149, 32.052174, 13.130138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170269, 32.385735, 13.357028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036816, 32.090919, 13.121922>,  <34.956741, 31.914032, 12.980858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036816, 32.090919, 13.121922>,  <35.170269, 32.385735, 13.357028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036816, 32.090919, 13.121922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670516, -0.252730, 0.697521,
		-0.662642, 0.626824, -0.409873,
		-0.333636, -0.737034, -0.587765,
		34.936726, 31.869810, 12.945592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440582, 32.531975, 13.328868>,  <35.170269, 32.385735, 13.357028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440582, 32.531975, 13.328868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566055, 32.159000, 13.257116>,  <34.641338, 31.935217, 13.214066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566055, 32.159000, 13.257116>,  <34.440582, 32.531975, 13.328868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566055, 32.159000, 13.257116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701037, -0.354836, 0.618577,
		-0.640432, -0.068283, -0.764974,
		0.313679, -0.932431, -0.179380,
		34.660160, 31.879271, 13.203302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749134, 32.123909, 13.175286>,  <34.440582, 32.531975, 13.328868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749134, 32.123909, 13.175286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033058, 31.882809, 13.321085>,  <34.203415, 31.738150, 13.408564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033058, 31.882809, 13.321085>,  <33.749134, 32.123909, 13.175286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033058, 31.882809, 13.321085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490289, -0.051237, 0.870053,
		-0.505747, -0.796284, -0.331890,
		0.709814, -0.602749, 0.364496,
		34.246002, 31.701984, 13.430434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342163, 31.741098, 13.463919>,  <33.749134, 32.123909, 13.175286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342163, 31.741098, 13.463919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701870, 31.687164, 13.630356>,  <33.917694, 31.654804, 13.730218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701870, 31.687164, 13.630356>,  <33.342163, 31.741098, 13.463919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701870, 31.687164, 13.630356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427048, -0.064973, 0.901892,
		-0.094582, -0.988734, -0.116014,
		0.899269, -0.134846, 0.416091,
		33.971649, 31.646715, 13.755184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279388, 31.302532, 13.985671>,  <33.342163, 31.741098, 13.463919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279388, 31.302532, 13.985671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629341, 31.472437, 14.078766>,  <33.839314, 31.574379, 14.134623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629341, 31.472437, 14.078766>,  <33.279388, 31.302532, 13.985671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629341, 31.472437, 14.078766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248593, -0.018600, 0.968429,
		0.415681, -0.905114, 0.089320,
		0.874877, 0.424762, 0.232737,
		33.891804, 31.599865, 14.148587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542896, 30.966932, 14.491251>,  <33.279388, 31.302532, 13.985671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542896, 30.966932, 14.491251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734032, 31.314196, 14.544865>,  <33.848713, 31.522554, 14.577033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734032, 31.314196, 14.544865>,  <33.542896, 30.966932, 14.491251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734032, 31.314196, 14.544865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268014, -0.001224, 0.963414,
		0.836562, -0.496283, 0.232094,
		0.477842, 0.868160, 0.134034,
		33.877384, 31.574644, 14.585075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959877, 30.853907, 15.105850>,  <33.542896, 30.966932, 14.491251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959877, 30.853907, 15.105850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898918, 31.245577, 15.052192>,  <33.862343, 31.480579, 15.019997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898918, 31.245577, 15.052192>,  <33.959877, 30.853907, 15.105850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898918, 31.245577, 15.052192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349361, 0.073597, 0.934093,
		0.924512, 0.189216, 0.330869,
		-0.152395, 0.979173, -0.134146,
		33.853199, 31.539330, 15.011948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223927, 31.097498, 15.673568>,  <33.959877, 30.853907, 15.105850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223927, 31.097498, 15.673568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035427, 31.430626, 15.557401>,  <33.922329, 31.630503, 15.487700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035427, 31.430626, 15.557401>,  <34.223927, 31.097498, 15.673568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035427, 31.430626, 15.557401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308779, 0.152657, 0.938803,
		0.826187, 0.532081, 0.185218,
		-0.471245, 0.832818, -0.290418,
		33.894054, 31.680471, 15.470275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435696, 31.782228, 16.132811>,  <34.223927, 31.097498, 15.673568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435696, 31.782228, 16.132811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078388, 31.870909, 15.976387>,  <33.864006, 31.924118, 15.882533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078388, 31.870909, 15.976387>,  <34.435696, 31.782228, 16.132811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078388, 31.870909, 15.976387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253006, 0.471116, 0.845008,
		0.371574, 0.853755, -0.364739,
		-0.893264, 0.221702, -0.391059,
		33.810410, 31.937420, 15.859069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284752, 32.422569, 16.458807>,  <34.435696, 31.782228, 16.132811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284752, 32.422569, 16.458807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925446, 32.313663, 16.320824>,  <33.709862, 32.248322, 16.238033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925446, 32.313663, 16.320824>,  <34.284752, 32.422569, 16.458807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925446, 32.313663, 16.320824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435360, 0.444382, 0.782934,
		-0.059871, 0.853461, -0.517705,
		-0.898263, -0.272264, -0.344958,
		33.655968, 32.231983, 16.217337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806637, 32.957668, 16.666742>,  <34.284752, 32.422569, 16.458807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806637, 32.957668, 16.666742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544361, 32.668808, 16.578587>,  <33.386997, 32.495491, 16.525694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544361, 32.668808, 16.578587>,  <33.806637, 32.957668, 16.666742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544361, 32.668808, 16.578587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540072, 0.244604, 0.805289,
		-0.527634, 0.647043, -0.550398,
		-0.655686, -0.722153, -0.220389,
		33.347656, 32.452164, 16.512470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093502, 33.259884, 16.578905>,  <33.806637, 32.957668, 16.666742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093502, 33.259884, 16.578905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062855, 32.879940, 16.700159>,  <33.044464, 32.651974, 16.772911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062855, 32.879940, 16.700159>,  <33.093502, 33.259884, 16.578905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062855, 32.879940, 16.700159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691686, 0.269611, 0.669985,
		-0.718122, -0.158338, -0.677665,
		-0.076622, -0.949863, 0.303134,
		33.039867, 32.594982, 16.791100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415306, 33.185837, 16.874077>,  <33.093502, 33.259884, 16.578905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415306, 33.185837, 16.874077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580666, 32.854279, 17.024828>,  <32.679882, 32.655346, 17.115278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580666, 32.854279, 17.024828>,  <32.415306, 33.185837, 16.874077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580666, 32.854279, 17.024828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478253, 0.154550, 0.864516,
		-0.774839, -0.537633, -0.332530,
		0.413399, -0.828894, 0.376876,
		32.704685, 32.605610, 17.137892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936193, 32.729237, 17.323675>,  <32.415306, 33.185837, 16.874077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936193, 32.729237, 17.323675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300903, 32.609119, 17.435740>,  <32.519730, 32.537048, 17.502977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300903, 32.609119, 17.435740>,  <31.936193, 32.729237, 17.323675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300903, 32.609119, 17.435740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282589, 0.036266, 0.958555,
		-0.298009, -0.953157, -0.051794,
		0.911775, -0.300294, 0.280160,
		32.574436, 32.519032, 17.519787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740269, 32.275032, 17.905682>,  <31.936193, 32.729237, 17.323675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740269, 32.275032, 17.905682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136520, 32.322384, 17.932920>,  <32.374271, 32.350796, 17.949263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136520, 32.322384, 17.932920>,  <31.740269, 32.275032, 17.905682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136520, 32.322384, 17.932920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081217, 0.109798, 0.990630,
		0.109798, -0.986879, 0.118384,
		-0.990630, -0.118384, -0.068096,
		32.433708, 32.357899, 17.953350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943081, 31.840826, 18.371408>,  <31.740269, 32.275032, 17.905682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943081, 31.840826, 18.371408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216003, 32.132721, 18.389036>,  <32.379757, 32.307858, 18.399612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216003, 32.132721, 18.389036>,  <31.943081, 31.840826, 18.371408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216003, 32.132721, 18.389036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020081, -0.041547, 0.998935,
		0.730789, -0.682466, -0.013694,
		0.682308, 0.729736, 0.044067,
		32.420696, 32.351643, 18.402256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362331, 31.643597, 18.873165>,  <31.943081, 31.840826, 18.371408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362331, 31.643597, 18.873165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406559, 32.039749, 18.839886>,  <32.433094, 32.277439, 18.819918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406559, 32.039749, 18.839886>,  <32.362331, 31.643597, 18.873165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406559, 32.039749, 18.839886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226340, 0.106602, 0.968197,
		0.967753, -0.088219, 0.235950,
		0.110567, 0.990381, -0.083197,
		32.439728, 32.336864, 18.814926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782413, 31.895226, 19.484482>,  <32.362331, 31.643597, 18.873165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782413, 31.895226, 19.484482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582829, 32.217205, 19.356049>,  <32.463078, 32.410393, 19.278990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582829, 32.217205, 19.356049>,  <32.782413, 31.895226, 19.484482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582829, 32.217205, 19.356049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179878, 0.266233, 0.946976,
		0.847752, 0.530259, 0.011953,
		-0.498960, 0.804951, -0.321081,
		32.433140, 32.458691, 19.259724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093342, 32.494053, 19.797777>,  <32.782413, 31.895226, 19.484482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093342, 32.494053, 19.797777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710083, 32.585896, 19.729374>,  <32.480129, 32.641003, 19.688332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710083, 32.585896, 19.729374>,  <33.093342, 32.494053, 19.797777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710083, 32.585896, 19.729374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084174, 0.344994, 0.934823,
		0.273637, 0.910088, -0.311226,
		-0.958143, 0.229605, -0.171009,
		32.422642, 32.654778, 19.678072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058308, 32.982071, 20.279785>,  <33.093342, 32.494053, 19.797777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058308, 32.982071, 20.279785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681896, 32.934166, 20.153217>,  <32.456051, 32.905422, 20.077276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681896, 32.934166, 20.153217>,  <33.058308, 32.982071, 20.279785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681896, 32.934166, 20.153217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338133, 0.301156, 0.891612,
		-0.011491, 0.946024, -0.323892,
		-0.941028, -0.119764, -0.316421,
		32.399590, 32.898235, 20.058290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606018, 33.567402, 20.510664>,  <33.058308, 32.982071, 20.279785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606018, 33.567402, 20.510664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294357, 33.345520, 20.393894>,  <32.107361, 33.212391, 20.323832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294357, 33.345520, 20.393894>,  <32.606018, 33.567402, 20.510664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294357, 33.345520, 20.393894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499619, 0.268325, 0.823640,
		-0.378545, 0.787596, -0.486207,
		-0.779157, -0.554703, -0.291925,
		32.060612, 33.179108, 20.306316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959084, 33.980824, 20.556913>,  <32.606018, 33.567402, 20.510664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959084, 33.980824, 20.556913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852980, 33.595650, 20.576471>,  <31.789316, 33.364544, 20.588205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852980, 33.595650, 20.576471>,  <31.959084, 33.980824, 20.556913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852980, 33.595650, 20.576471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593878, 0.203124, 0.778492,
		-0.759569, 0.177467, -0.625747,
		-0.265261, -0.962936, 0.048893,
		31.773401, 33.306770, 20.591139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239363, 34.044254, 20.680717>,  <31.959084, 33.980824, 20.556913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239363, 34.044254, 20.680717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345495, 33.676315, 20.796288>,  <31.409174, 33.455551, 20.865629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345495, 33.676315, 20.796288>,  <31.239363, 34.044254, 20.680717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345495, 33.676315, 20.796288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490115, 0.129382, 0.862002,
		-0.830293, -0.370322, -0.416502,
		0.265331, -0.919849, 0.288925,
		31.425095, 33.400360, 20.882965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635723, 33.653240, 20.899200>,  <31.239363, 34.044254, 20.680717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635723, 33.653240, 20.899200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937155, 33.445114, 21.059893>,  <31.118013, 33.320240, 21.156309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937155, 33.445114, 21.059893>,  <30.635723, 33.653240, 20.899200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937155, 33.445114, 21.059893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545308, -0.153526, 0.824057,
		-0.367096, -0.840059, -0.399427,
		0.753578, -0.520318, 0.401732,
		31.163229, 33.289021, 21.180412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421524, 32.988964, 21.156107>,  <30.635723, 33.653240, 20.899200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421524, 32.988964, 21.156107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745068, 33.051319, 21.382893>,  <30.939194, 33.088734, 21.518963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745068, 33.051319, 21.382893>,  <30.421524, 32.988964, 21.156107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745068, 33.051319, 21.382893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530624, -0.221932, 0.818037,
		0.253348, -0.962520, -0.096794,
		0.808859, 0.155887, 0.566963,
		30.987726, 33.098083, 21.552980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388672, 32.551289, 21.791573>,  <30.421524, 32.988964, 21.156107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388672, 32.551289, 21.791573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654718, 32.815632, 21.930647>,  <30.814346, 32.974239, 22.014091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654718, 32.815632, 21.930647>,  <30.388672, 32.551289, 21.791573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654718, 32.815632, 21.930647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321223, -0.167117, 0.932142,
		0.674120, -0.731666, 0.101132,
		0.665115, 0.660861, 0.347684,
		30.854254, 33.013889, 22.034952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641445, 32.236088, 22.471640>,  <30.388672, 32.551289, 21.791573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641445, 32.236088, 22.471640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715120, 32.629101, 22.461044>,  <30.759325, 32.864910, 22.454687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715120, 32.629101, 22.461044>,  <30.641445, 32.236088, 22.471640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715120, 32.629101, 22.461044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301203, 0.082077, 0.950021,
		0.935603, -0.167002, 0.311059,
		0.184186, 0.982534, -0.026490,
		30.770376, 32.923862, 22.453098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124475, 32.314228, 23.035316>,  <30.641445, 32.236088, 22.471640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124475, 32.314228, 23.035316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993877, 32.687931, 22.977959>,  <30.915518, 32.912151, 22.943544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993877, 32.687931, 22.977959>,  <31.124475, 32.314228, 23.035316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993877, 32.687931, 22.977959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299370, 0.041682, 0.953226,
		0.896536, 0.354153, 0.266080,
		-0.326497, 0.934258, -0.143393,
		30.895927, 32.968208, 22.934940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275078, 32.604824, 23.589178>,  <31.124475, 32.314228, 23.035316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275078, 32.604824, 23.589178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977621, 32.824299, 23.436373>,  <30.799147, 32.955986, 23.344688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977621, 32.824299, 23.436373>,  <31.275078, 32.604824, 23.589178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977621, 32.824299, 23.436373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379996, 0.123252, 0.916740,
		0.550089, 0.826892, 0.116844,
		-0.743643, 0.548689, -0.382015,
		30.754528, 32.988907, 23.321768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227516, 33.263775, 24.007853>,  <31.275078, 32.604824, 23.589178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227516, 33.263775, 24.007853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873795, 33.217598, 23.826887>,  <30.661562, 33.189892, 23.718307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873795, 33.217598, 23.826887>,  <31.227516, 33.263775, 24.007853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873795, 33.217598, 23.826887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455170, -0.002788, 0.890400,
		-0.104052, 0.993310, -0.050080,
		-0.884304, -0.115443, -0.452415,
		30.608503, 33.182964, 23.691162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888977, 33.611195, 24.486250>,  <31.227516, 33.263775, 24.007853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888977, 33.611195, 24.486250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594181, 33.433670, 24.282339>,  <30.417303, 33.327156, 24.159992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594181, 33.433670, 24.282339>,  <30.888977, 33.611195, 24.486250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594181, 33.433670, 24.282339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513047, -0.123691, 0.849402,
		-0.440030, 0.887542, -0.136538,
		-0.736992, -0.443812, -0.509778,
		30.373083, 33.300526, 24.129406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354872, 34.016056, 24.541718>,  <30.888977, 33.611195, 24.486250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354872, 34.016056, 24.541718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205509, 33.661930, 24.430878>,  <30.115892, 33.449455, 24.364374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205509, 33.661930, 24.430878>,  <30.354872, 34.016056, 24.541718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205509, 33.661930, 24.430878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519944, -0.047646, 0.852870,
		-0.768262, 0.462544, -0.442523,
		-0.373405, -0.885315, -0.277102,
		30.093487, 33.396336, 24.347748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579763, 34.011227, 24.574989>,  <30.354872, 34.016056, 24.541718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579763, 34.011227, 24.574989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668907, 33.621304, 24.578846>,  <29.722393, 33.387352, 24.581160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668907, 33.621304, 24.578846>,  <29.579763, 34.011227, 24.574989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668907, 33.621304, 24.578846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595174, -0.128220, 0.793302,
		-0.772077, -0.182534, -0.608752,
		0.222858, -0.974803, 0.009644,
		29.735765, 33.328861, 24.581739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895123, 33.688137, 24.554768>,  <29.579763, 34.011227, 24.574989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895123, 33.688137, 24.554768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185823, 33.482464, 24.736956>,  <29.360243, 33.359062, 24.846268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185823, 33.482464, 24.736956>,  <28.895123, 33.688137, 24.554768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185823, 33.482464, 24.736956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616435, -0.195662, 0.762708,
		-0.303054, -0.835064, -0.459158,
		0.726750, -0.514183, 0.455467,
		29.403849, 33.328209, 24.873596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585356, 33.148357, 24.953754>,  <28.895123, 33.688137, 24.554768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585356, 33.148357, 24.953754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948271, 33.137058, 25.121578>,  <29.166019, 33.130280, 25.222273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948271, 33.137058, 25.121578>,  <28.585356, 33.148357, 24.953754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948271, 33.137058, 25.121578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412920, -0.248582, 0.876187,
		0.079544, -0.968199, -0.237200,
		0.907287, -0.028250, 0.419562,
		29.220457, 33.128582, 25.247446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489653, 32.598850, 25.424801>,  <28.585356, 33.148357, 24.953754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489653, 32.598850, 25.424801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831322, 32.760742, 25.555387>,  <29.036324, 32.857880, 25.633739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831322, 32.760742, 25.555387>,  <28.489653, 32.598850, 25.424801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831322, 32.760742, 25.555387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226579, -0.275399, 0.934247,
		0.468031, -0.871978, -0.143533,
		0.854172, 0.404735, 0.326467,
		29.087574, 32.882164, 25.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737221, 32.151642, 25.850807>,  <28.489653, 32.598850, 25.424801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737221, 32.151642, 25.850807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937016, 32.477467, 25.968794>,  <29.056892, 32.672962, 26.039587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937016, 32.477467, 25.968794>,  <28.737221, 32.151642, 25.850807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937016, 32.477467, 25.968794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033951, -0.321817, 0.946193,
		0.865656, -0.482626, -0.133089,
		0.499487, 0.814559, 0.294968,
		29.086863, 32.721836, 26.057283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246078, 31.858093, 26.197874>,  <28.737221, 32.151642, 25.850807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246078, 31.858093, 26.197874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238146, 32.241879, 26.310331>,  <29.233387, 32.472149, 26.377806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238146, 32.241879, 26.310331>,  <29.246078, 31.858093, 26.197874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238146, 32.241879, 26.310331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056687, -0.279667, 0.958422,
		0.998195, 0.034942, -0.048843,
		-0.019830, 0.959461, 0.281143,
		29.232197, 32.529716, 26.394674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853771, 31.909307, 26.673557>,  <29.246078, 31.858093, 26.197874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853771, 31.909307, 26.673557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585405, 32.191025, 26.766373>,  <29.424385, 32.360054, 26.822062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585405, 32.191025, 26.766373>,  <29.853771, 31.909307, 26.673557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585405, 32.191025, 26.766373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005609, -0.308090, 0.951341,
		0.741513, 0.639571, 0.202752,
		-0.670915, 0.704294, 0.232040,
		29.384130, 32.402313, 26.835985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163849, 32.309818, 27.102888>,  <29.853771, 31.909307, 26.673557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163849, 32.309818, 27.102888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770723, 32.362720, 27.154400>,  <29.534847, 32.394463, 27.185307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770723, 32.362720, 27.154400>,  <30.163849, 32.309818, 27.102888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770723, 32.362720, 27.154400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095126, -0.234995, 0.967331,
		0.158200, 0.962956, 0.218375,
		-0.982814, 0.132258, 0.128779,
		29.475880, 32.402397, 27.193033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147755, 32.601425, 27.766319>,  <30.163849, 32.309818, 27.102888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147755, 32.601425, 27.766319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756317, 32.529678, 27.725967>,  <29.521454, 32.486629, 27.701757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756317, 32.529678, 27.725967>,  <30.147755, 32.601425, 27.766319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756317, 32.529678, 27.725967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075862, -0.141244, 0.987064,
		-0.191299, 0.973589, 0.124613,
		-0.978596, -0.179371, -0.100878,
		29.462738, 32.475868, 27.695704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723948, 33.157253, 28.087336>,  <30.147755, 32.601425, 27.766319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723948, 33.157253, 28.087336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558050, 32.793278, 28.087030>,  <29.458511, 32.574894, 28.086847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558050, 32.793278, 28.087030>,  <29.723948, 33.157253, 28.087336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558050, 32.793278, 28.087030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053990, -0.025446, 0.998217,
		-0.908336, 0.413961, 0.059681,
		-0.414741, -0.909939, -0.000764,
		29.433628, 32.520294, 28.086802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131258, 33.676170, 27.726963>,  <29.723948, 33.157253, 28.087336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131258, 33.676170, 27.726963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395931, 33.769165, 28.012094>,  <30.554735, 33.824963, 28.183174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395931, 33.769165, 28.012094>,  <30.131258, 33.676170, 27.726963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395931, 33.769165, 28.012094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473957, 0.606983, -0.637915,
		-0.580983, 0.759948, 0.291441,
		0.661682, 0.232488, 0.712830,
		30.594437, 33.838913, 28.225943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332924, 34.359306, 27.564014>,  <30.131258, 33.676170, 27.726963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332924, 34.359306, 27.564014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628313, 34.212082, 27.790001>,  <30.805548, 34.123749, 27.925592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628313, 34.212082, 27.790001>,  <30.332924, 34.359306, 27.564014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628313, 34.212082, 27.790001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672912, 0.348897, -0.652274,
		0.042962, 0.861859, 0.505325,
		0.738474, -0.368062, 0.564966,
		30.849855, 34.101662, 27.959490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863066, 34.918114, 27.625505>,  <30.332924, 34.359306, 27.564014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863066, 34.918114, 27.625505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043222, 34.569778, 27.704275>,  <31.151318, 34.360775, 27.751537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043222, 34.569778, 27.704275>,  <30.863066, 34.918114, 27.625505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043222, 34.569778, 27.704275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783075, 0.279348, -0.555659,
		0.428880, 0.404474, 0.807751,
		0.450394, -0.870842, 0.196927,
		31.178341, 34.308525, 27.763353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622782, 35.060329, 27.616463>,  <30.863066, 34.918114, 27.625505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622782, 35.060329, 27.616463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627199, 34.663166, 27.569107>,  <31.629850, 34.424870, 27.540693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627199, 34.663166, 27.569107>,  <31.622782, 35.060329, 27.616463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627199, 34.663166, 27.569107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715796, 0.090523, -0.692417,
		0.698222, -0.077094, 0.711718,
		0.011046, -0.992906, -0.118388,
		31.630512, 34.365295, 27.533590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350601, 34.808723, 27.479691>,  <31.622782, 35.060329, 27.616463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350601, 34.808723, 27.479691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132492, 34.505589, 27.336380>,  <32.001625, 34.323708, 27.250395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132492, 34.505589, 27.336380>,  <32.350601, 34.808723, 27.479691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132492, 34.505589, 27.336380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624422, -0.082059, -0.776765,
		0.559259, -0.647266, 0.517953,
		-0.545277, -0.757834, -0.358275,
		31.968908, 34.278240, 27.228897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824047, 34.396065, 27.272987>,  <32.350601, 34.808723, 27.479691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824047, 34.396065, 27.272987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492680, 34.265564, 27.090872>,  <32.293861, 34.187263, 26.981602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492680, 34.265564, 27.090872>,  <32.824047, 34.396065, 27.272987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492680, 34.265564, 27.090872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520650, -0.148819, -0.840700,
		0.206525, -0.933494, 0.293147,
		-0.828415, -0.326253, -0.455289,
		32.244156, 34.167686, 26.954285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093571, 33.818138, 26.969999>,  <32.824047, 34.396065, 27.272987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093571, 33.818138, 26.969999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781071, 33.956478, 26.762138>,  <32.593571, 34.039482, 26.637423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781071, 33.956478, 26.762138>,  <33.093571, 33.818138, 26.969999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781071, 33.956478, 26.762138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359715, -0.430922, -0.827594,
		-0.510158, -0.833481, 0.212246,
		-0.781245, 0.345856, -0.519654,
		32.546696, 34.060234, 26.606243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966640, 33.250473, 26.495697>,  <33.093571, 33.818138, 26.969999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966640, 33.250473, 26.495697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751362, 33.551987, 26.344881>,  <32.622196, 33.732895, 26.254393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751362, 33.551987, 26.344881>,  <32.966640, 33.250473, 26.495697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751362, 33.551987, 26.344881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373040, -0.188103, -0.908547,
		-0.755768, -0.629627, -0.179955,
		-0.538196, 0.753781, -0.377038,
		32.589901, 33.778122, 26.231770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770428, 33.020256, 25.816189>,  <32.966640, 33.250473, 26.495697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770428, 33.020256, 25.816189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707718, 33.415310, 25.815548>,  <32.670090, 33.652340, 25.815163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707718, 33.415310, 25.815548>,  <32.770428, 33.020256, 25.816189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707718, 33.415310, 25.815548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327712, 0.050490, -0.943428,
		-0.931679, -0.148435, -0.331575,
		-0.156779, 0.987632, -0.001604,
		32.660683, 33.711601, 25.815067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337967, 33.194252, 25.226789>,  <32.770428, 33.020256, 25.816189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337967, 33.194252, 25.226789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524925, 33.530945, 25.334885>,  <32.637100, 33.732960, 25.399742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524925, 33.530945, 25.334885>,  <32.337967, 33.194252, 25.226789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524925, 33.530945, 25.334885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196655, 0.199028, -0.960060,
		-0.861896, 0.501874, -0.072506,
		0.467398, 0.841731, 0.270238,
		32.665146, 33.783463, 25.415956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216785, 33.469242, 24.697393>,  <32.337967, 33.194252, 25.226789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216785, 33.469242, 24.697393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492672, 33.717941, 24.845840>,  <32.658203, 33.867161, 24.934908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492672, 33.717941, 24.845840>,  <32.216785, 33.469242, 24.697393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492672, 33.717941, 24.845840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116744, 0.410343, -0.904428,
		-0.714609, 0.667122, 0.210434,
		0.689714, 0.621745, 0.371118,
		32.699585, 33.904465, 24.957176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985924, 34.185120, 24.494684>,  <32.216785, 33.469242, 24.697393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985924, 34.185120, 24.494684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379616, 34.203499, 24.563015>,  <32.615829, 34.214527, 24.604013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379616, 34.203499, 24.563015>,  <31.985924, 34.185120, 24.494684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379616, 34.203499, 24.563015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132161, 0.450910, -0.882730,
		-0.117587, 0.891386, 0.437727,
		0.984229, 0.045947, 0.170828,
		32.674885, 34.217281, 24.614264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169689, 34.910805, 24.293390>,  <31.985924, 34.185120, 24.494684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169689, 34.910805, 24.293390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516941, 34.712406, 24.285999>,  <32.725292, 34.593369, 24.281565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516941, 34.712406, 24.285999>,  <32.169689, 34.910805, 24.293390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516941, 34.712406, 24.285999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240951, 0.453693, -0.857966,
		0.433927, 0.740375, 0.513374,
		0.868130, -0.495993, -0.018476,
		32.777382, 34.563610, 24.280457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559738, 35.413975, 24.015497>,  <32.169689, 34.910805, 24.293390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559738, 35.413975, 24.015497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760578, 35.072510, 23.960131>,  <32.881084, 34.867630, 23.926910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760578, 35.072510, 23.960131>,  <32.559738, 35.413975, 24.015497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760578, 35.072510, 23.960131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349247, 0.346577, -0.870581,
		0.791150, 0.388781, 0.472156,
		0.502104, -0.853659, -0.138414,
		32.911209, 34.816414, 23.918606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160522, 35.591518, 23.784241>,  <32.559738, 35.413975, 24.015497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160522, 35.591518, 23.784241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149654, 35.213043, 23.655254>,  <33.143135, 34.985958, 23.577862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149654, 35.213043, 23.655254>,  <33.160522, 35.591518, 23.784241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149654, 35.213043, 23.655254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377004, 0.289065, -0.879949,
		0.925813, -0.145480, 0.348864,
		-0.027170, -0.946191, -0.322466,
		33.141502, 34.929188, 23.558514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741035, 35.493671, 23.372887>,  <33.160522, 35.591518, 23.784241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741035, 35.493671, 23.372887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500393, 35.193306, 23.263929>,  <33.356007, 35.013084, 23.198555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500393, 35.193306, 23.263929>,  <33.741035, 35.493671, 23.372887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500393, 35.193306, 23.263929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374795, 0.035788, -0.926417,
		0.705410, -0.659428, 0.259909,
		-0.601603, -0.750916, -0.272396,
		33.319912, 34.968033, 23.182211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097046, 34.881607, 23.209452>,  <33.741035, 35.493671, 23.372887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097046, 34.881607, 23.209452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753475, 34.832661, 23.010546>,  <33.547333, 34.803291, 22.891203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753475, 34.832661, 23.010546>,  <34.097046, 34.881607, 23.209452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753475, 34.832661, 23.010546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511468, -0.253146, -0.821168,
		-0.025395, -0.959658, 0.280022,
		-0.858927, -0.122368, -0.497263,
		33.495796, 34.795952, 22.861366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206341, 34.406265, 22.679115>,  <34.097046, 34.881607, 23.209452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206341, 34.406265, 22.679115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865070, 34.581776, 22.566282>,  <33.660309, 34.687084, 22.498583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865070, 34.581776, 22.566282>,  <34.206341, 34.406265, 22.679115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865070, 34.581776, 22.566282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196279, -0.230984, -0.952954,
		-0.483293, -0.868400, 0.110946,
		-0.853172, 0.438780, -0.282082,
		33.609119, 34.713409, 22.481657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884773, 33.924889, 22.239788>,  <34.206341, 34.406265, 22.679115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884773, 33.924889, 22.239788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671970, 34.243195, 22.124050>,  <33.544289, 34.434181, 22.054607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671970, 34.243195, 22.124050>,  <33.884773, 33.924889, 22.239788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671970, 34.243195, 22.124050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084447, -0.290151, -0.953248,
		-0.842520, -0.531567, 0.087161,
		-0.532004, 0.795770, -0.289347,
		33.512367, 34.481926, 22.037247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323563, 33.716930, 21.802237>,  <33.884773, 33.924889, 22.239788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323563, 33.716930, 21.802237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388107, 34.101536, 21.713285>,  <33.426834, 34.332298, 21.659914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388107, 34.101536, 21.713285>,  <33.323563, 33.716930, 21.802237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388107, 34.101536, 21.713285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022705, -0.228890, -0.973188,
		-0.986635, 0.151983, -0.058764,
		0.161358, 0.961515, -0.222380,
		33.436516, 34.389992, 21.646572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934147, 33.811325, 21.217337>,  <33.323563, 33.716930, 21.802237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934147, 33.811325, 21.217337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166351, 34.136559, 21.199909>,  <33.305672, 34.331699, 21.189453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166351, 34.136559, 21.199909>,  <32.934147, 33.811325, 21.217337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166351, 34.136559, 21.199909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086861, -0.115041, -0.989556,
		-0.809608, 0.570660, -0.137408,
		0.580508, 0.813088, -0.043570,
		33.340504, 34.380486, 21.186838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699337, 34.255798, 20.656252>,  <32.934147, 33.811325, 21.217337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699337, 34.255798, 20.656252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077370, 34.365284, 20.727701>,  <33.304188, 34.430973, 20.770571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077370, 34.365284, 20.727701>,  <32.699337, 34.255798, 20.656252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077370, 34.365284, 20.727701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144508, 0.140266, -0.979512,
		-0.293158, 0.951529, 0.093010,
		0.945080, 0.273711, 0.178623,
		33.360893, 34.447399, 20.781288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804783, 34.788834, 20.140228>,  <32.699337, 34.255798, 20.656252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804783, 34.788834, 20.140228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169842, 34.675259, 20.257835>,  <33.388878, 34.607113, 20.328400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169842, 34.675259, 20.257835>,  <32.804783, 34.788834, 20.140228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169842, 34.675259, 20.257835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347253, 0.159196, -0.924160,
		0.215599, 0.945534, 0.243889,
		0.912651, -0.283939, 0.294017,
		33.443638, 34.590076, 20.346041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278172, 35.335121, 19.877617>,  <32.804783, 34.788834, 20.140228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278172, 35.335121, 19.877617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452320, 34.977264, 19.917747>,  <33.556808, 34.762550, 19.941826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452320, 34.977264, 19.917747>,  <33.278172, 35.335121, 19.877617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452320, 34.977264, 19.917747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396819, 0.090681, -0.913407,
		0.808075, 0.437484, 0.394491,
		0.435374, -0.894642, 0.100325,
		33.582932, 34.708870, 19.947845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972404, 35.428810, 19.601414>,  <33.278172, 35.335121, 19.877617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972404, 35.428810, 19.601414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901237, 35.035240, 19.595171>,  <33.858540, 34.799099, 19.591425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901237, 35.035240, 19.595171>,  <33.972404, 35.428810, 19.601414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901237, 35.035240, 19.595171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624825, -0.100700, -0.774244,
		0.760224, -0.147501, 0.632695,
		-0.177914, -0.983922, -0.015608,
		33.847862, 34.740063, 19.590488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623398, 35.077965, 19.419626>,  <33.972404, 35.428810, 19.601414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623398, 35.077965, 19.419626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377384, 34.771885, 19.343531>,  <34.229774, 34.588238, 19.297873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377384, 34.771885, 19.343531>,  <34.623398, 35.077965, 19.419626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377384, 34.771885, 19.343531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592215, -0.288997, -0.752172,
		0.520586, -0.575277, 0.630909,
		-0.615038, -0.765204, -0.190240,
		34.192871, 34.542324, 19.286459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991364, 34.530327, 19.348158>,  <34.623398, 35.077965, 19.419626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991364, 34.530327, 19.348158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653957, 34.449657, 19.149035>,  <34.451515, 34.401257, 19.029560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653957, 34.449657, 19.149035>,  <34.991364, 34.530327, 19.348158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653957, 34.449657, 19.149035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534151, -0.412134, -0.738124,
		-0.056305, -0.888523, 0.455365,
		-0.843512, -0.201673, -0.497811,
		34.400906, 34.389156, 18.999691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249321, 33.971142, 18.920628>,  <34.991364, 34.530327, 19.348158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249321, 33.971142, 18.920628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900055, 34.086906, 18.763746>,  <34.690495, 34.156364, 18.669617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900055, 34.086906, 18.763746>,  <35.249321, 33.971142, 18.920628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900055, 34.086906, 18.763746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360554, -0.157959, -0.919266,
		-0.327994, -0.944083, 0.033577,
		-0.873167, 0.289407, -0.392203,
		34.638103, 34.173729, 18.646086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992935, 33.390511, 18.463669>,  <35.249321, 33.971142, 18.920628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992935, 33.390511, 18.463669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822338, 33.737312, 18.360592>,  <34.719978, 33.945393, 18.298746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822338, 33.737312, 18.360592>,  <34.992935, 33.390511, 18.463669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822338, 33.737312, 18.360592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404743, -0.071846, -0.911604,
		-0.808880, -0.493091, -0.320272,
		-0.426493, 0.867006, -0.257690,
		34.694389, 33.997414, 18.283285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786045, 33.313442, 17.747288>,  <34.992935, 33.390511, 18.463669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786045, 33.313442, 17.747288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748829, 33.706577, 17.811012>,  <34.726498, 33.942459, 17.849247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748829, 33.706577, 17.811012>,  <34.786045, 33.313442, 17.747288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748829, 33.706577, 17.811012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402853, 0.183483, -0.896685,
		-0.910524, -0.019249, -0.413009,
		-0.093040, 0.982834, 0.159311,
		34.720917, 34.001427, 17.858805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409611, 33.599293, 17.196642>,  <34.786045, 33.313442, 17.747288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409611, 33.599293, 17.196642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643040, 33.893681, 17.333927>,  <34.783096, 34.070312, 17.416298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643040, 33.893681, 17.333927>,  <34.409611, 33.599293, 17.196642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643040, 33.893681, 17.333927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346347, 0.156703, -0.924926,
		-0.734498, 0.658631, -0.163453,
		0.583572, 0.735968, 0.343213,
		34.818111, 34.114471, 17.436892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087490, 34.078133, 16.845713>,  <34.409611, 33.599293, 17.196642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087490, 34.078133, 16.845713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446938, 34.209702, 16.961847>,  <34.662605, 34.288643, 17.031528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446938, 34.209702, 16.961847>,  <34.087490, 34.078133, 16.845713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446938, 34.209702, 16.961847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236560, 0.194072, -0.952038,
		-0.369490, 0.924201, 0.096588,
		0.898619, 0.328919, 0.290336,
		34.716522, 34.308376, 17.048948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223297, 34.590866, 16.371469>,  <34.087490, 34.078133, 16.845713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223297, 34.590866, 16.371469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572639, 34.489403, 16.537800>,  <34.782246, 34.428524, 16.637598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572639, 34.489403, 16.537800>,  <34.223297, 34.590866, 16.371469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572639, 34.489403, 16.537800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473969, 0.245794, -0.845541,
		0.112267, 0.935545, 0.334889,
		0.873355, -0.253654, 0.415825,
		34.834644, 34.413307, 16.662548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679043, 35.060577, 16.100628>,  <34.223297, 34.590866, 16.371469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679043, 35.060577, 16.100628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890274, 34.740070, 16.213131>,  <35.017014, 34.547768, 16.280634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890274, 34.740070, 16.213131>,  <34.679043, 35.060577, 16.100628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890274, 34.740070, 16.213131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491239, 0.018072, -0.870837,
		0.692691, 0.598033, 0.403157,
		0.528076, -0.801267, 0.281259,
		35.048698, 34.499691, 16.297508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344006, 35.224052, 15.870102>,  <34.679043, 35.060577, 16.100628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344006, 35.224052, 15.870102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341812, 34.826385, 15.913203>,  <35.340496, 34.587788, 15.939064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341812, 34.826385, 15.913203>,  <35.344006, 35.224052, 15.870102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341812, 34.826385, 15.913203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536022, -0.093889, -0.838967,
		0.844186, 0.053156, 0.533408,
		-0.005485, -0.994163, 0.107752,
		35.340168, 34.528137, 15.945529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994686, 35.078644, 15.913372>,  <35.344006, 35.224052, 15.870102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994686, 35.078644, 15.913372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795460, 34.754429, 15.790104>,  <35.675926, 34.559902, 15.716144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795460, 34.754429, 15.790104>,  <35.994686, 35.078644, 15.913372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795460, 34.754429, 15.790104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635568, -0.099460, -0.765612,
		0.589903, -0.577186, 0.564686,
		-0.498064, -0.810533, -0.308169,
		35.646042, 34.511269, 15.697653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491371, 34.553844, 15.833328>,  <35.994686, 35.078644, 15.913372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491371, 34.553844, 15.833328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174824, 34.444107, 15.614797>,  <35.984898, 34.378265, 15.483678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174824, 34.444107, 15.614797>,  <36.491371, 34.553844, 15.833328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174824, 34.444107, 15.614797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597124, -0.155244, -0.786983,
		0.131092, -0.949017, 0.286674,
		-0.791365, -0.274347, -0.546329,
		35.937416, 34.361801, 15.450898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804432, 33.995113, 15.478055>,  <36.491371, 34.553844, 15.833328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804432, 33.995113, 15.478055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477470, 34.079494, 15.263635>,  <36.281292, 34.130123, 15.134983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477470, 34.079494, 15.263635>,  <36.804432, 33.995113, 15.478055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477470, 34.079494, 15.263635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395707, -0.470640, -0.788615,
		-0.418651, -0.856735, 0.301225,
		-0.817402, 0.210958, -0.536050,
		36.232250, 34.142780, 15.102819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352154, 33.459084, 15.593273>,  <36.804432, 33.995113, 15.478055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352154, 33.459084, 15.593273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579243, 33.132725, 15.549439>,  <37.715496, 32.936909, 15.523139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579243, 33.132725, 15.549439>,  <37.352154, 33.459084, 15.593273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579243, 33.132725, 15.549439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404759, -0.392565, 0.825871,
		-0.716844, -0.424508, -0.553108,
		0.567719, -0.815895, -0.109584,
		37.749557, 32.887955, 15.516564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913452, 32.940010, 15.698896>,  <37.352154, 33.459084, 15.593273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913452, 32.940010, 15.698896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280338, 32.794373, 15.763592>,  <37.500469, 32.706989, 15.802409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280338, 32.794373, 15.763592>,  <36.913452, 32.940010, 15.698896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280338, 32.794373, 15.763592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344782, -0.521999, 0.780156,
		-0.199623, -0.771332, -0.604316,
		0.917211, -0.364094, 0.161738,
		37.555500, 32.685143, 15.812113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825272, 32.253429, 15.813766>,  <36.913452, 32.940010, 15.698896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825272, 32.253429, 15.813766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177803, 32.328121, 15.987382>,  <37.389324, 32.372936, 16.091551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177803, 32.328121, 15.987382>,  <36.825272, 32.253429, 15.813766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177803, 32.328121, 15.987382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380309, -0.264785, 0.886146,
		0.280396, -0.946055, -0.162349,
		0.881330, 0.186729, 0.434038,
		37.442204, 32.384140, 16.117594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009796, 31.658630, 16.312382>,  <36.825272, 32.253429, 15.813766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009796, 31.658630, 16.312382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227783, 31.964815, 16.449245>,  <37.358578, 32.148525, 16.531364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227783, 31.964815, 16.449245>,  <37.009796, 31.658630, 16.312382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227783, 31.964815, 16.449245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346188, -0.166252, 0.923317,
		0.763649, -0.621632, 0.174392,
		0.544971, 0.765463, 0.342160,
		37.391273, 32.194454, 16.551893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257076, 31.479895, 16.887140>,  <37.009796, 31.658630, 16.312382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257076, 31.479895, 16.887140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334602, 31.862993, 16.972139>,  <37.381119, 32.092854, 17.023138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334602, 31.862993, 16.972139>,  <37.257076, 31.479895, 16.887140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334602, 31.862993, 16.972139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314637, -0.144477, 0.938152,
		0.929214, -0.248686, 0.273342,
		0.193814, 0.957748, 0.212496,
		37.392746, 32.150318, 17.035889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734375, 31.583252, 17.569780>,  <37.257076, 31.479895, 16.887140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734375, 31.583252, 17.569780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527554, 31.920622, 17.511421>,  <37.403461, 32.123043, 17.476406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527554, 31.920622, 17.511421>,  <37.734375, 31.583252, 17.569780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527554, 31.920622, 17.511421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332951, -0.041155, 0.942045,
		0.788540, 0.535669, 0.302099,
		-0.517058, 0.843424, -0.145899,
		37.372437, 32.173649, 17.467651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813538, 31.957726, 18.174582>,  <37.734375, 31.583252, 17.569780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813538, 31.957726, 18.174582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496632, 32.135544, 18.007395>,  <37.306488, 32.242233, 17.907084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496632, 32.135544, 18.007395>,  <37.813538, 31.957726, 18.174582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496632, 32.135544, 18.007395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441936, 0.054251, 0.895405,
		0.420722, 0.894113, 0.153479,
		-0.792266, 0.444545, -0.417965,
		37.258953, 32.268906, 17.882006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715256, 32.578999, 18.579403>,  <37.813538, 31.957726, 18.174582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715256, 32.578999, 18.579403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369122, 32.486149, 18.401726>,  <37.161442, 32.430439, 18.295118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369122, 32.486149, 18.401726>,  <37.715256, 32.578999, 18.579403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369122, 32.486149, 18.401726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469375, 0.064604, 0.880632,
		-0.175718, 0.970539, -0.164857,
		-0.865338, -0.232123, -0.444195,
		37.109520, 32.416512, 18.268467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324471, 33.147816, 18.915596>,  <37.715256, 32.578999, 18.579403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324471, 33.147816, 18.915596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074219, 32.867489, 18.778515>,  <36.924068, 32.699291, 18.696266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074219, 32.867489, 18.778515>,  <37.324471, 33.147816, 18.915596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074219, 32.867489, 18.778515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473165, -0.008384, 0.880934,
		-0.620248, 0.713290, -0.326358,
		-0.625625, -0.700819, -0.342704,
		36.886532, 32.657242, 18.675703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614567, 33.362610, 19.042818>,  <37.324471, 33.147816, 18.915596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614567, 33.362610, 19.042818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582211, 32.965862, 19.003534>,  <36.562798, 32.727814, 18.979963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582211, 32.965862, 19.003534>,  <36.614567, 33.362610, 19.042818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582211, 32.965862, 19.003534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513171, -0.043024, 0.857207,
		-0.854466, 0.119741, -0.505520,
		-0.080894, -0.991872, -0.098211,
		36.557941, 32.668301, 18.974072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903515, 33.206585, 19.275394>,  <36.614567, 33.362610, 19.042818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903515, 33.206585, 19.275394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144485, 32.888416, 19.301867>,  <36.289070, 32.697514, 19.317749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144485, 32.888416, 19.301867>,  <35.903515, 33.206585, 19.275394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144485, 32.888416, 19.301867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342843, -0.182998, 0.921396,
		-0.720789, -0.577765, -0.382949,
		0.602429, -0.795424, 0.066180,
		36.325214, 32.649788, 19.321720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540222, 32.730576, 19.710667>,  <35.903515, 33.206585, 19.275394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540222, 32.730576, 19.710667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907421, 32.575825, 19.745569>,  <36.127739, 32.482975, 19.766510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907421, 32.575825, 19.745569>,  <35.540222, 32.730576, 19.710667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907421, 32.575825, 19.745569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176477, -0.201453, 0.963469,
		-0.355164, -0.899858, -0.253207,
		0.917995, -0.386874, 0.087256,
		36.182819, 32.459763, 19.771746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424911, 32.156097, 20.132025>,  <35.540222, 32.730576, 19.710667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424911, 32.156097, 20.132025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813942, 32.248829, 20.139441>,  <36.047359, 32.304470, 20.143890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813942, 32.248829, 20.139441>,  <35.424911, 32.156097, 20.132025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813942, 32.248829, 20.139441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026906, -0.191331, 0.981157,
		0.231012, -0.953753, -0.192323,
		0.972579, 0.231833, 0.018539,
		36.105717, 32.318378, 20.145002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749149, 31.561424, 20.526487>,  <35.424911, 32.156097, 20.132025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749149, 31.561424, 20.526487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996834, 31.874521, 20.551464>,  <36.145443, 32.062378, 20.566450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996834, 31.874521, 20.551464>,  <35.749149, 31.561424, 20.526487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996834, 31.874521, 20.551464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023230, -0.061223, 0.997854,
		0.784884, -0.619329, -0.019727,
		0.619207, 0.782741, 0.062440,
		36.182594, 32.109344, 20.570196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191284, 31.324299, 21.063307>,  <35.749149, 31.561424, 20.526487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191284, 31.324299, 21.063307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237434, 31.720684, 21.035946>,  <36.265125, 31.958515, 21.019529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237434, 31.720684, 21.035946>,  <36.191284, 31.324299, 21.063307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237434, 31.720684, 21.035946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326545, 0.102874, 0.939567,
		0.938114, -0.086065, 0.335463,
		0.115374, 0.990964, -0.068403,
		36.272045, 32.017975, 21.015425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351875, 31.494093, 21.739267>,  <36.191284, 31.324299, 21.063307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351875, 31.494093, 21.739267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240860, 31.839268, 21.570358>,  <36.174252, 32.046371, 21.469013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240860, 31.839268, 21.570358>,  <36.351875, 31.494093, 21.739267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240860, 31.839268, 21.570358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410497, 0.290875, 0.864224,
		0.868599, 0.413198, 0.273503,
		-0.277540, 0.862936, -0.422270,
		36.157597, 32.098148, 21.443678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432480, 31.981359, 22.284693>,  <36.351875, 31.494093, 21.739267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432480, 31.981359, 22.284693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191280, 32.179283, 22.034395>,  <36.046562, 32.298038, 21.884216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191280, 32.179283, 22.034395>,  <36.432480, 31.981359, 22.284693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191280, 32.179283, 22.034395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473436, 0.409355, 0.779927,
		0.642067, 0.766545, -0.012580,
		-0.602999, 0.494810, -0.625744,
		36.010380, 32.327724, 21.846672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451210, 32.708382, 22.524296>,  <36.432480, 31.981359, 22.284693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451210, 32.708382, 22.524296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123077, 32.661316, 22.300434>,  <35.926197, 32.633076, 22.166117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123077, 32.661316, 22.300434>,  <36.451210, 32.708382, 22.524296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123077, 32.661316, 22.300434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558112, 0.378210, 0.738558,
		0.124766, 0.918212, -0.375927,
		-0.820332, -0.117662, -0.559653,
		35.876976, 32.626019, 22.132538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182034, 33.403072, 22.482939>,  <36.451210, 32.708382, 22.524296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182034, 33.403072, 22.482939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887108, 33.139507, 22.423334>,  <35.710152, 32.981369, 22.387571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887108, 33.139507, 22.423334>,  <36.182034, 33.403072, 22.482939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887108, 33.139507, 22.423334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477471, 0.352250, 0.804948,
		-0.477899, 0.664649, -0.574330,
		-0.737315, -0.658910, -0.149010,
		35.665913, 32.941833, 22.378632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515495, 33.765556, 22.586445>,  <36.182034, 33.403072, 22.482939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515495, 33.765556, 22.586445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457989, 33.374886, 22.650236>,  <35.423485, 33.140484, 22.688511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457989, 33.374886, 22.650236>,  <35.515495, 33.765556, 22.586445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457989, 33.374886, 22.650236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357147, 0.201499, 0.912055,
		-0.922918, 0.074168, -0.377786,
		-0.143769, -0.976677, 0.159478,
		35.414860, 33.081882, 22.698080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880959, 33.754040, 22.887938>,  <35.515495, 33.765556, 22.586445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880959, 33.754040, 22.887938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047184, 33.399040, 22.967587>,  <35.146919, 33.186039, 23.015375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047184, 33.399040, 22.967587>,  <34.880959, 33.754040, 22.887938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047184, 33.399040, 22.967587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073117, 0.185615, 0.979899,
		-0.906622, -0.421767, 0.012243,
		0.415561, -0.887502, 0.199121,
		35.171852, 33.132790, 23.027323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421726, 33.292950, 23.120054>,  <34.880959, 33.754040, 22.887938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421726, 33.292950, 23.120054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756313, 33.144669, 23.281496>,  <34.957066, 33.055698, 23.378361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756313, 33.144669, 23.281496>,  <34.421726, 33.292950, 23.120054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756313, 33.144669, 23.281496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383849, 0.129310, 0.914297,
		-0.391126, -0.919704, -0.034132,
		0.836469, -0.370707, 0.403604,
		35.007256, 33.033455, 23.402576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162560, 32.764679, 23.628260>,  <34.421726, 33.292950, 23.120054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162560, 32.764679, 23.628260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541527, 32.817039, 23.745060>,  <34.768906, 32.848454, 23.815140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541527, 32.817039, 23.745060>,  <34.162560, 32.764679, 23.628260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541527, 32.817039, 23.745060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291206, -0.025590, 0.956318,
		0.132655, -0.991065, 0.013874,
		0.947418, 0.130900, 0.291999,
		34.825752, 32.856308, 23.832659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111259, 32.480057, 24.215284>,  <34.162560, 32.764679, 23.628260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111259, 32.480057, 24.215284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453102, 32.687679, 24.221397>,  <34.658207, 32.812252, 24.225065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453102, 32.687679, 24.221397>,  <34.111259, 32.480057, 24.215284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453102, 32.687679, 24.221397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186230, 0.278883, 0.942095,
		0.484734, -0.807966, 0.334998,
		0.854605, 0.519052, 0.015283,
		34.709484, 32.843395, 24.225983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524010, 32.208969, 24.761648>,  <34.111259, 32.480057, 24.215284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524010, 32.208969, 24.761648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628216, 32.589924, 24.698284>,  <34.690739, 32.818497, 24.660265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628216, 32.589924, 24.698284>,  <34.524010, 32.208969, 24.761648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628216, 32.589924, 24.698284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092658, 0.187982, 0.977792,
		0.961014, -0.240049, 0.137218,
		0.260512, 0.952386, -0.158411,
		34.706371, 32.875641, 24.650761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761005, 32.416561, 25.410400>,  <34.524010, 32.208969, 24.761648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761005, 32.416561, 25.410400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719616, 32.764492, 25.217445>,  <34.694782, 32.973251, 25.101673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719616, 32.764492, 25.217445>,  <34.761005, 32.416561, 25.410400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719616, 32.764492, 25.217445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152430, 0.465391, 0.871880,
		0.982882, 0.163749, 0.084431,
		-0.103477, 0.869826, -0.482385,
		34.688572, 33.025440, 25.072729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322342, 32.889862, 25.709970>,  <34.761005, 32.416561, 25.410400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322342, 32.889862, 25.709970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025303, 33.106110, 25.551842>,  <34.847080, 33.235859, 25.456964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025303, 33.106110, 25.551842>,  <35.322342, 32.889862, 25.709970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025303, 33.106110, 25.551842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033065, 0.559948, 0.827868,
		0.668920, 0.627845, -0.397941,
		-0.742599, 0.540619, -0.395320,
		34.802525, 33.268295, 25.433247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524616, 33.669510, 25.658909>,  <35.322342, 32.889862, 25.709970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524616, 33.669510, 25.658909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126827, 33.645912, 25.693663>,  <34.888153, 33.631752, 25.714516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126827, 33.645912, 25.693663>,  <35.524616, 33.669510, 25.658909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126827, 33.645912, 25.693663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019896, 0.706511, 0.707422,
		-0.103119, 0.705239, -0.701430,
		-0.994470, -0.058993, 0.086887,
		34.828487, 33.628216, 25.719728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208408, 34.360847, 25.634319>,  <35.524616, 33.669510, 25.658909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208408, 34.360847, 25.634319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918056, 34.151829, 25.813223>,  <34.743847, 34.026417, 25.920565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918056, 34.151829, 25.813223>,  <35.208408, 34.360847, 25.634319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918056, 34.151829, 25.813223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022196, 0.632118, 0.774554,
		-0.687464, 0.572160, -0.447243,
		-0.725879, -0.522551, 0.447258,
		34.700294, 33.995064, 25.947401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714787, 34.906105, 25.996424>,  <35.208408, 34.360847, 25.634319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714787, 34.906105, 25.996424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645744, 34.559879, 26.184467>,  <34.604321, 34.352142, 26.297293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645744, 34.559879, 26.184467>,  <34.714787, 34.906105, 25.996424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645744, 34.559879, 26.184467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064901, 0.466241, 0.882274,
		-0.982851, 0.182792, -0.024298,
		-0.172601, -0.865567, 0.470109,
		34.593964, 34.300209, 26.325500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331795, 35.082535, 26.563103>,  <34.714787, 34.906105, 25.996424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331795, 35.082535, 26.563103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451527, 34.714306, 26.663467>,  <34.523365, 34.493370, 26.723686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451527, 34.714306, 26.663467>,  <34.331795, 35.082535, 26.563103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451527, 34.714306, 26.663467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025448, 0.270576, 0.962362,
		-0.953811, -0.281677, 0.104418,
		0.299329, -0.920569, 0.250911,
		34.541325, 34.438137, 26.738741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995159, 35.113323, 27.324224>,  <34.331795, 35.082535, 26.563103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995159, 35.113323, 27.324224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242390, 34.801212, 27.285982>,  <34.390728, 34.613945, 27.263037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242390, 34.801212, 27.285982>,  <33.995159, 35.113323, 27.324224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242390, 34.801212, 27.285982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257254, 0.085844, 0.962523,
		-0.742832, -0.619509, 0.253789,
		0.618078, -0.780282, -0.095604,
		34.427814, 34.567127, 27.257301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884590, 34.562019, 27.906319>,  <33.995159, 35.113323, 27.324224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884590, 34.562019, 27.906319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248795, 34.477459, 27.764177>,  <34.467319, 34.426723, 27.678892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248795, 34.477459, 27.764177>,  <33.884590, 34.562019, 27.906319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248795, 34.477459, 27.764177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358957, -0.022412, 0.933085,
		-0.205223, -0.977142, 0.055479,
		0.910512, -0.211405, -0.355351,
		34.521950, 34.414040, 27.657572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028492, 33.951485, 28.240730>,  <33.884590, 34.562019, 27.906319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028492, 33.951485, 28.240730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371395, 34.124676, 28.129280>,  <34.577137, 34.228592, 28.062410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371395, 34.124676, 28.129280>,  <34.028492, 33.951485, 28.240730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371395, 34.124676, 28.129280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268823, 0.085144, 0.959419,
		0.439132, -0.897374, -0.043405,
		0.857261, 0.432980, -0.278624,
		34.628574, 34.254570, 28.045692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664017, 33.670727, 28.610371>,  <34.028492, 33.951485, 28.240730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664017, 33.670727, 28.610371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796921, 34.027504, 28.487709>,  <34.876663, 34.241570, 28.414112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796921, 34.027504, 28.487709>,  <34.664017, 33.670727, 28.610371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796921, 34.027504, 28.487709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573704, 0.066940, 0.816322,
		0.748642, -0.447161, -0.489471,
		0.332263, 0.891945, -0.306652,
		34.896599, 34.295086, 28.395714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310146, 33.684681, 28.713793>,  <34.664017, 33.670727, 28.610371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310146, 33.684681, 28.713793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233868, 34.077339, 28.713278>,  <35.188099, 34.312935, 28.712969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233868, 34.077339, 28.713278>,  <35.310146, 33.684681, 28.713793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233868, 34.077339, 28.713278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578396, 0.113424, 0.807833,
		0.793153, 0.153308, -0.589410,
		-0.190701, 0.981647, -0.001290,
		35.176659, 34.371834, 28.712891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950897, 33.958996, 28.783262>,  <35.310146, 33.684681, 28.713793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950897, 33.958996, 28.783262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697887, 34.254440, 28.876539>,  <35.546082, 34.431705, 28.932505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697887, 34.254440, 28.876539>,  <35.950897, 33.958996, 28.783262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697887, 34.254440, 28.876539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313710, -0.030970, 0.949013,
		0.708170, 0.673425, -0.212119,
		-0.632520, 0.738607, 0.233193,
		35.508133, 34.476021, 28.946497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368343, 34.469307, 29.292839>,  <35.950897, 33.958996, 28.783262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368343, 34.469307, 29.292839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979446, 34.552326, 29.336061>,  <35.746109, 34.602139, 29.361996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979446, 34.552326, 29.336061>,  <36.368343, 34.469307, 29.292839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979446, 34.552326, 29.336061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074948, -0.161251, 0.984064,
		0.221664, 0.964843, 0.141219,
		-0.972239, 0.207547, 0.108056,
		35.687775, 34.614590, 29.368479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332561, 34.895718, 29.869106>,  <36.368343, 34.469307, 29.292839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332561, 34.895718, 29.869106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951836, 34.774246, 29.851980>,  <35.723400, 34.701363, 29.841703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951836, 34.774246, 29.851980>,  <36.332561, 34.895718, 29.869106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951836, 34.774246, 29.851980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031005, -0.043617, 0.998567,
		-0.305113, 0.951775, 0.032099,
		-0.951811, -0.303680, -0.042818,
		35.666294, 34.683144, 29.839134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926178, 35.369511, 30.395859>,  <36.332561, 34.895718, 29.869106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926178, 35.369511, 30.395859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750702, 35.016521, 30.327991>,  <35.645416, 34.804726, 30.287271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750702, 35.016521, 30.327991>,  <35.926178, 35.369511, 30.395859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750702, 35.016521, 30.327991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027917, -0.175331, 0.984114,
		-0.898204, 0.436458, 0.052280,
		-0.438690, -0.882476, -0.169668,
		35.619095, 34.751778, 30.277092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323967, 35.291485, 30.980745>,  <35.926178, 35.369511, 30.395859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323967, 35.291485, 30.980745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468555, 34.951843, 30.826674>,  <35.555309, 34.748058, 30.734230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468555, 34.951843, 30.826674>,  <35.323967, 35.291485, 30.980745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468555, 34.951843, 30.826674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051124, -0.394442, 0.917498,
		-0.930981, -0.351339, -0.099169,
		0.361469, -0.849103, -0.385180,
		35.576996, 34.697113, 30.711119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020050, 34.699726, 31.298874>,  <35.323967, 35.291485, 30.980745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020050, 34.699726, 31.298874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874180, 35.053253, 31.181656>,  <34.786659, 35.265369, 31.111324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874180, 35.053253, 31.181656>,  <35.020050, 34.699726, 31.298874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874180, 35.053253, 31.181656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562563, 0.041660, 0.825704,
		0.741983, 0.465967, 0.482012,
		-0.364671, 0.883821, -0.293046,
		34.764778, 35.318398, 31.093742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464458, 34.445675, 31.750254>,  <35.020050, 34.699726, 31.298874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464458, 34.445675, 31.750254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459305, 34.297977, 32.121952>,  <34.456211, 34.209358, 32.344971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459305, 34.297977, 32.121952>,  <34.464458, 34.445675, 31.750254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459305, 34.297977, 32.121952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018484, -0.929075, -0.369430,
		0.999746, -0.021936, 0.005145,
		-0.012884, -0.369241, 0.929244,
		34.455441, 34.187206, 32.400726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031960, 33.892040, 31.876741>,  <34.464458, 34.445675, 31.750254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031960, 33.892040, 31.876741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678329, 33.823563, 32.050686>,  <34.466152, 33.782475, 32.155052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678329, 33.823563, 32.050686>,  <35.031960, 33.892040, 31.876741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678329, 33.823563, 32.050686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008577, -0.936276, -0.351160,
		0.467269, -0.306721, 0.829205,
		-0.884073, -0.171198, 0.434863,
		34.413109, 33.772202, 32.181145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085175, 33.280148, 32.272839>,  <35.031960, 33.892040, 31.876741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085175, 33.280148, 32.272839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704468, 33.325317, 32.158726>,  <34.476044, 33.352421, 32.090260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704468, 33.325317, 32.158726>,  <35.085175, 33.280148, 32.272839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704468, 33.325317, 32.158726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001692, -0.927859, -0.372928,
		-0.306814, -0.355424, 0.882915,
		-0.951768, 0.112926, -0.285281,
		34.418938, 33.359196, 32.073143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762337, 33.199780, 32.057293>,  <35.085175, 33.280148, 32.272839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762337, 33.199780, 32.057293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155472, 33.190109, 32.130451>,  <36.391354, 33.184307, 32.174347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155472, 33.190109, 32.130451>,  <35.762337, 33.199780, 32.057293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155472, 33.190109, 32.130451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175909, 0.176065, 0.968534,
		-0.055614, -0.984082, 0.168791,
		0.982834, -0.024173, 0.182900,
		36.450321, 33.182858, 32.185322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978016, 32.752724, 32.518829>,  <35.762337, 33.199780, 32.057293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978016, 32.752724, 32.518829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301228, 32.986053, 32.551849>,  <36.495155, 33.126053, 32.571659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301228, 32.986053, 32.551849>,  <35.978016, 32.752724, 32.518829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301228, 32.986053, 32.551849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237737, 0.194650, 0.951626,
		0.539040, -0.788570, 0.295962,
		0.808033, 0.583326, 0.082548,
		36.543636, 33.161053, 32.576614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134090, 32.809410, 33.212589>,  <35.978016, 32.752724, 32.518829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134090, 32.809410, 33.212589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362797, 33.108444, 33.077419>,  <36.500023, 33.287865, 32.996319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362797, 33.108444, 33.077419>,  <36.134090, 32.809410, 33.212589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362797, 33.108444, 33.077419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228453, 0.250522, 0.940770,
		0.787965, -0.615103, -0.027548,
		0.571769, 0.747587, -0.337925,
		36.534328, 33.332722, 32.976040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884892, 32.722237, 33.388321>,  <36.134090, 32.809410, 33.212589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884892, 32.722237, 33.388321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820862, 33.112762, 33.330086>,  <36.782444, 33.347076, 33.295147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820862, 33.112762, 33.330086>,  <36.884892, 32.722237, 33.388321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820862, 33.112762, 33.330086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391660, 0.198200, 0.898509,
		0.906078, 0.086811, -0.414109,
		-0.160076, 0.976310, -0.145584,
		36.772839, 33.405655, 33.286411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489101, 33.104164, 33.393044>,  <36.884892, 32.722237, 33.388321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489101, 33.104164, 33.393044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149147, 33.263973, 33.530491>,  <36.945175, 33.359859, 33.612961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149147, 33.263973, 33.530491>,  <37.489101, 33.104164, 33.393044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149147, 33.263973, 33.530491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330318, -0.104168, 0.938104,
		0.410590, 0.910785, -0.043440,
		-0.849886, 0.399525, 0.343619,
		36.894180, 33.383831, 33.633575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844814, 33.690285, 33.721756>,  <37.489101, 33.104164, 33.393044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844814, 33.690285, 33.721756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963173, 34.071159, 33.691357>,  <38.034187, 34.299686, 33.673119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963173, 34.071159, 33.691357>,  <37.844814, 33.690285, 33.721756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963173, 34.071159, 33.691357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905242, -0.304927, -0.295899,
		-0.304927, 0.018758, -0.952191,
		0.295899, 0.952191, -0.075999,
		38.051941, 34.356815, 33.668556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161865, 33.848640, 33.116760>,  <37.844814, 33.690285, 33.721756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161865, 33.848640, 33.116760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321548, 34.177505, 33.279087>,  <38.417358, 34.374825, 33.376484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321548, 34.177505, 33.279087>,  <38.161865, 33.848640, 33.116760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321548, 34.177505, 33.279087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893660, -0.249985, -0.372664,
		-0.204942, 0.511431, -0.834528,
		0.399211, 0.822159, 0.405813,
		38.441311, 34.424152, 33.400829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533028, 34.238045, 32.626770>,  <38.161865, 33.848640, 33.116760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533028, 34.238045, 32.626770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635551, 33.947182, 32.881500>,  <38.697067, 33.772663, 33.034340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635551, 33.947182, 32.881500>,  <38.533028, 34.238045, 32.626770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635551, 33.947182, 32.881500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680932, -0.603437, -0.414965,
		0.686029, -0.327275, -0.649812,
		0.256313, -0.727156, 0.636827,
		38.712444, 33.729034, 33.072548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712322, 33.552860, 32.233463>,  <38.533028, 34.238045, 32.626770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712322, 33.552860, 32.233463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597870, 33.484661, 32.610622>,  <38.529198, 33.443741, 32.836918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597870, 33.484661, 32.610622>,  <38.712322, 33.552860, 32.233463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597870, 33.484661, 32.610622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691818, -0.644086, -0.326405,
		0.662961, -0.745709, 0.066337,
		-0.286131, -0.170501, 0.942899,
		38.512032, 33.433510, 32.893494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430767, 33.244747, 31.558620>,  <38.712322, 33.552860, 32.233463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430767, 33.244747, 31.558620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561268, 33.369156, 31.201559>,  <38.639568, 33.443802, 30.987322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561268, 33.369156, 31.201559>,  <38.430767, 33.244747, 31.558620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561268, 33.369156, 31.201559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194203, -0.902125, -0.385300,
		-0.925120, 0.299059, -0.233916,
		0.326249, 0.311021, -0.892652,
		38.659142, 33.462463, 30.933764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945484, 33.186523, 30.900049>,  <38.430767, 33.244747, 31.558620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945484, 33.186523, 30.900049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327065, 33.157837, 30.783546>,  <38.556015, 33.140625, 30.713644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327065, 33.157837, 30.783546>,  <37.945484, 33.186523, 30.900049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327065, 33.157837, 30.783546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162863, -0.939241, -0.302163,
		-0.251891, 0.335684, -0.907671,
		0.953953, -0.071714, -0.291257,
		38.613251, 33.136322, 30.696169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932301, 32.951115, 30.279247>,  <37.945484, 33.186523, 30.900049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932301, 32.951115, 30.279247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279064, 32.843700, 30.447227>,  <38.487122, 32.779251, 30.548016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279064, 32.843700, 30.447227>,  <37.932301, 32.951115, 30.279247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279064, 32.843700, 30.447227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124276, -0.932318, -0.339615,
		0.482723, 0.242226, -0.841609,
		0.866911, -0.268531, 0.419948,
		38.539139, 32.763142, 30.573212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294624, 32.515423, 29.863100>,  <37.932301, 32.951115, 30.279247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294624, 32.515423, 29.863100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543629, 32.424797, 30.162739>,  <38.693031, 32.370422, 30.342522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543629, 32.424797, 30.162739>,  <38.294624, 32.515423, 29.863100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543629, 32.424797, 30.162739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159734, -0.900246, -0.405022,
		0.766136, 0.371787, -0.524223,
		0.622512, -0.226566, 0.749097,
		38.730381, 32.356827, 30.387468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873825, 32.160690, 29.482100>,  <38.294624, 32.515423, 29.863100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873825, 32.160690, 29.482100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867424, 32.061665, 29.869595>,  <38.863583, 32.002251, 30.102093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867424, 32.061665, 29.869595>,  <38.873825, 32.160690, 29.482100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867424, 32.061665, 29.869595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018603, -0.968770, -0.247262,
		0.999699, 0.014064, 0.020109,
		-0.016004, -0.247562, 0.968740,
		38.862621, 31.987396, 30.160217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856327, 31.530699, 29.445927>,  <38.873825, 32.160690, 29.482100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856327, 31.530699, 29.445927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924088, 31.486998, 29.837715>,  <38.964745, 31.460777, 30.072788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924088, 31.486998, 29.837715>,  <38.856327, 31.530699, 29.445927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924088, 31.486998, 29.837715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165058, -0.976654, -0.137487,
		0.971627, 0.184960, -0.147416,
		0.169404, -0.109254, 0.979472,
		38.974907, 31.454222, 30.131557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479378, 31.365374, 29.443144>,  <38.856327, 31.530699, 29.445927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479378, 31.365374, 29.443144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272587, 31.222370, 29.754250>,  <39.148510, 31.136568, 29.940912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272587, 31.222370, 29.754250>,  <39.479378, 31.365374, 29.443144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272587, 31.222370, 29.754250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358821, -0.915434, -0.182284,
		0.777160, 0.184841, 0.601545,
		-0.516981, -0.357511, 0.777763,
		39.117493, 31.115116, 29.987579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009460, 30.812407, 29.805344>,  <39.479378, 31.365374, 29.443144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009460, 30.812407, 29.805344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635403, 30.766615, 29.939451>,  <39.410969, 30.739140, 30.019917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635403, 30.766615, 29.939451>,  <40.009460, 30.812407, 29.805344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635403, 30.766615, 29.939451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137689, -0.989397, 0.046211,
		0.326424, 0.089376, 0.940988,
		-0.935141, -0.114480, 0.335269,
		39.354858, 30.732271, 30.040031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411972, 30.377743, 29.536024>,  <40.009460, 30.812407, 29.805344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411972, 30.377743, 29.536024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315506, 30.288322, 29.913778>,  <39.257626, 30.234671, 30.140430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315506, 30.288322, 29.913778>,  <39.411972, 30.377743, 29.536024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315506, 30.288322, 29.913778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232346, 0.958108, 0.167467,
		-0.942260, -0.179037, -0.283005,
		-0.241166, -0.223552, 0.944385,
		39.243156, 30.221256, 30.197094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784603, 30.702589, 29.750959>,  <39.411972, 30.377743, 29.536024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784603, 30.702589, 29.750959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002777, 30.694443, 30.086121>,  <39.133682, 30.689554, 30.287218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002777, 30.694443, 30.086121>,  <38.784603, 30.702589, 29.750959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002777, 30.694443, 30.086121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378427, 0.886022, 0.267875,
		-0.747858, -0.463195, 0.475561,
		0.545436, -0.020367, 0.837905,
		39.166409, 30.688334, 30.337492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246544, 30.829187, 30.310608>,  <38.784603, 30.702589, 29.750959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246544, 30.829187, 30.310608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622231, 30.934286, 30.399010>,  <38.847641, 30.997345, 30.452051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622231, 30.934286, 30.399010>,  <38.246544, 30.829187, 30.310608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622231, 30.934286, 30.399010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318240, 0.907798, 0.273177,
		-0.128852, -0.326904, 0.936232,
		0.939213, 0.262747, 0.221005,
		38.903996, 31.013111, 30.465311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291718, 31.261190, 31.031321>,  <38.246544, 30.829187, 30.310608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291718, 31.261190, 31.031321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606873, 31.360954, 30.806103>,  <38.795967, 31.420813, 30.670971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606873, 31.360954, 30.806103>,  <38.291718, 31.261190, 31.031321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606873, 31.360954, 30.806103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023081, 0.925630, 0.377725,
		0.615381, -0.284611, 0.735053,
		0.787892, 0.249410, -0.563046,
		38.843239, 31.435778, 30.637188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831028, 31.543905, 31.364021>,  <38.291718, 31.261190, 31.031321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831028, 31.543905, 31.364021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868923, 31.688946, 30.993176>,  <38.891663, 31.775970, 30.770668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868923, 31.688946, 30.993176>,  <38.831028, 31.543905, 31.364021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868923, 31.688946, 30.993176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038155, 0.929297, 0.367356,
		0.994770, -0.070178, 0.074208,
		0.094742, 0.362603, -0.927115,
		38.897346, 31.797728, 30.715040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422028, 32.010986, 31.405510>,  <38.831028, 31.543905, 31.364021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422028, 32.010986, 31.405510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189850, 32.097836, 31.091581>,  <39.050545, 32.149944, 30.903223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189850, 32.097836, 31.091581>,  <39.422028, 32.010986, 31.405510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189850, 32.097836, 31.091581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069907, 0.973526, 0.217622,
		0.811296, 0.071452, -0.580253,
		-0.580441, 0.217120, -0.784823,
		39.015717, 32.162971, 30.856134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730335, 32.748070, 31.243973>,  <39.422028, 32.010986, 31.405510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730335, 32.748070, 31.243973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392975, 32.700119, 31.034473>,  <39.190559, 32.671349, 30.908773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392975, 32.700119, 31.034473>,  <39.730335, 32.748070, 31.243973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392975, 32.700119, 31.034473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139109, 0.990273, -0.002657,
		0.518971, 0.070617, -0.851870,
		-0.843397, -0.119881, -0.523746,
		39.139957, 32.664154, 30.877350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821163, 33.161057, 30.600365>,  <39.730335, 32.748070, 31.243973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821163, 33.161057, 30.600365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434986, 33.104713, 30.688076>,  <39.203281, 33.070908, 30.740704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434986, 33.104713, 30.688076>,  <39.821163, 33.161057, 30.600365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434986, 33.104713, 30.688076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148009, 0.988849, -0.016450,
		-0.214517, -0.048337, -0.975524,
		-0.965441, -0.140858, 0.219279,
		39.145355, 33.062454, 30.753860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424595, 33.501984, 29.931248>,  <39.821163, 33.161057, 30.600365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424595, 33.501984, 29.931248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264980, 33.496040, 30.297974>,  <39.169212, 33.492474, 30.518009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264980, 33.496040, 30.297974>,  <39.424595, 33.501984, 29.931248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264980, 33.496040, 30.297974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159792, 0.985696, -0.053572,
		-0.902906, -0.167877, -0.395700,
		-0.399034, -0.014859, 0.916816,
		39.145271, 33.491581, 30.573019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151554, 33.778568, 29.312386>,  <39.424595, 33.501984, 29.931248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151554, 33.778568, 29.312386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515160, 33.637680, 29.223267>,  <39.733322, 33.553146, 29.169796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515160, 33.637680, 29.223267>,  <39.151554, 33.778568, 29.312386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515160, 33.637680, 29.223267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179262, -0.813033, 0.553934,
		-0.376247, -0.463593, -0.802196,
		0.909012, -0.352220, -0.222797,
		39.787865, 33.532013, 29.156427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262711, 32.949001, 29.354033>,  <39.151554, 33.778568, 29.312386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262711, 32.949001, 29.354033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626778, 33.088177, 29.443951>,  <39.845219, 33.171680, 29.497902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626778, 33.088177, 29.443951>,  <39.262711, 32.949001, 29.354033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626778, 33.088177, 29.443951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063265, -0.653068, 0.754652,
		0.409376, -0.672639, -0.616415,
		0.910170, 0.347934, 0.224796,
		39.899830, 33.192558, 29.511389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696751, 32.469894, 29.452717>,  <39.262711, 32.949001, 29.354033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696751, 32.469894, 29.452717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018120, 32.671761, 29.579096>,  <40.210941, 32.792881, 29.654922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018120, 32.671761, 29.579096>,  <39.696751, 32.469894, 29.452717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018120, 32.671761, 29.579096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268246, -0.780535, 0.564633,
		0.531557, -0.368889, -0.762475,
		0.803425, 0.504665, 0.315945,
		40.259148, 32.823158, 29.673880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029385, 31.959425, 29.854567>,  <39.696751, 32.469894, 29.452717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029385, 31.959425, 29.854567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198357, 32.308250, 29.953407>,  <40.299740, 32.517548, 30.012712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198357, 32.308250, 29.953407>,  <40.029385, 31.959425, 29.854567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198357, 32.308250, 29.953407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258224, -0.377109, 0.889443,
		0.868836, -0.311917, -0.384489,
		0.422426, 0.872065, 0.247102,
		40.325085, 32.569870, 30.027538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737476, 31.793259, 30.197229>,  <40.029385, 31.959425, 29.854567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737476, 31.793259, 30.197229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558189, 32.141819, 30.276997>,  <40.450619, 32.350956, 30.324856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558189, 32.141819, 30.276997>,  <40.737476, 31.793259, 30.197229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558189, 32.141819, 30.276997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127024, -0.158730, 0.979117,
		0.884854, 0.464187, -0.039543,
		-0.448216, 0.871399, 0.199416,
		40.423725, 32.403240, 30.336821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219250, 31.522980, 30.664961>,  <40.737476, 31.793259, 30.197229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219250, 31.522980, 30.664961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911762, 31.381458, 30.878088>,  <39.727268, 31.296545, 31.005964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911762, 31.381458, 30.878088>,  <40.219250, 31.522980, 30.664961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911762, 31.381458, 30.878088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635825, -0.512955, 0.576718,
		0.069266, 0.782112, 0.619276,
		-0.768719, -0.353804, 0.532816,
		39.681145, 31.275316, 31.037933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326797, 31.454802, 31.444084>,  <40.219250, 31.522980, 30.664961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326797, 31.454802, 31.444084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031273, 31.186525, 31.417761>,  <39.853958, 31.025560, 31.401968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031273, 31.186525, 31.417761>,  <40.326797, 31.454802, 31.444084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031273, 31.186525, 31.417761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537784, -0.645608, 0.542197,
		-0.406131, 0.365193, 0.837670,
		-0.738814, -0.670689, -0.065806,
		39.809628, 30.985319, 31.398020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051041, 31.173199, 32.160156>,  <40.326797, 31.454802, 31.444084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051041, 31.173199, 32.160156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008366, 30.882555, 31.888670>,  <39.982761, 30.708168, 31.725779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008366, 30.882555, 31.888670>,  <40.051041, 31.173199, 32.160156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008366, 30.882555, 31.888670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347345, -0.666841, 0.659298,
		-0.931648, -0.165407, 0.323531,
		-0.106691, -0.726611, -0.678715,
		39.976357, 30.664572, 31.685055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096542, 32.038158, 31.912029>,  <40.051041, 31.173199, 32.160156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096542, 32.038158, 31.912029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095825, 32.338505, 32.176212>,  <40.095394, 32.518711, 32.334721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095825, 32.338505, 32.176212>,  <40.096542, 32.038158, 31.912029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095825, 32.338505, 32.176212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224992, -0.643222, 0.731877,
		0.974359, 0.149908, -0.167786,
		-0.001790, 0.750862, 0.660457,
		40.095287, 32.563763, 32.374348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779976, 32.074223, 32.317371>,  <40.096542, 32.038158, 31.912029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779976, 32.074223, 32.317371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471195, 32.226524, 32.520985>,  <40.285927, 32.317905, 32.643150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471195, 32.226524, 32.520985>,  <40.779976, 32.074223, 32.317371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471195, 32.226524, 32.520985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144011, -0.675199, 0.723441,
		0.619150, 0.631770, 0.466391,
		-0.771955, 0.380753, 0.509031,
		40.239609, 32.340752, 32.673695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097832, 32.367916, 32.941414>,  <40.779976, 32.074223, 32.317371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097832, 32.367916, 32.941414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732407, 32.207275, 32.967106>,  <40.513153, 32.110889, 32.982521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732407, 32.207275, 32.967106>,  <41.097832, 32.367916, 32.941414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732407, 32.207275, 32.967106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298843, -0.555734, 0.775792,
		-0.275868, 0.727925, 0.627711,
		-0.913559, -0.401603, 0.064226,
		40.458340, 32.086796, 32.986374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709370, 32.628521, 33.601055>,  <41.097832, 32.367916, 32.941414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709370, 32.628521, 33.601055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635319, 32.259251, 33.466309>,  <40.590889, 32.037689, 33.385460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635319, 32.259251, 33.466309>,  <40.709370, 32.628521, 33.601055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635319, 32.259251, 33.466309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436148, -0.384365, 0.813657,
		-0.880627, 0.003702, 0.473795,
		-0.185123, -0.923174, -0.336868,
		40.579781, 31.982298, 33.365250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535366, 32.293518, 34.219177>,  <40.709370, 32.628521, 33.601055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535366, 32.293518, 34.219177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639660, 32.039841, 33.928024>,  <40.702236, 31.887634, 33.753334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639660, 32.039841, 33.928024>,  <40.535366, 32.293518, 34.219177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639660, 32.039841, 33.928024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449027, -0.587781, 0.672970,
		-0.854631, -0.502304, 0.131517,
		0.260732, -0.634195, -0.727884,
		40.717880, 31.849583, 33.709660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863400, 32.232262, 34.871178>,  <40.535366, 32.293518, 34.219177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863400, 32.232262, 34.871178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048004, 32.480904, 35.124355>,  <41.158768, 32.630089, 35.276260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048004, 32.480904, 35.124355>,  <40.863400, 32.232262, 34.871178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048004, 32.480904, 35.124355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283221, -0.779372, 0.558896,
		0.840709, -0.078675, -0.535741,
		0.461513, 0.621602, 0.632943,
		41.186459, 32.667385, 35.314240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549198, 32.146362, 34.942871>,  <40.863400, 32.232262, 34.871178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549198, 32.146362, 34.942871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394897, 32.294064, 35.281063>,  <41.302315, 32.382687, 35.483978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394897, 32.294064, 35.281063>,  <41.549198, 32.146362, 34.942871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394897, 32.294064, 35.281063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344331, -0.792575, 0.503251,
		0.855937, 0.485258, 0.178594,
		-0.385756, 0.369256, 0.845484,
		41.279171, 32.404839, 35.534710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090488, 32.219307, 35.474613>,  <41.549198, 32.146362, 34.942871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090488, 32.219307, 35.474613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742100, 32.160248, 35.662067>,  <41.533066, 32.124813, 35.774540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742100, 32.160248, 35.662067>,  <42.090488, 32.219307, 35.474613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742100, 32.160248, 35.662067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422523, -0.711876, 0.560988,
		0.250778, 0.686610, 0.682406,
		-0.870968, -0.147649, 0.468631,
		41.480808, 32.115952, 35.802658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044914, 32.123871, 36.261929>,  <42.090488, 32.219307, 35.474613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044914, 32.123871, 36.261929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718407, 31.915310, 36.162460>,  <41.522503, 31.790174, 36.102779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718407, 31.915310, 36.162460>,  <42.044914, 32.123871, 36.261929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718407, 31.915310, 36.162460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226286, -0.684688, 0.692818,
		-0.531500, 0.509257, 0.676879,
		-0.816273, -0.521401, -0.248674,
		41.473526, 31.758890, 36.087856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871349, 32.215652, 36.327129>,  <42.044914, 32.123871, 36.261929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871349, 32.215652, 36.327129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948437, 32.587627, 36.201866>,  <42.994690, 32.810814, 36.126709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948437, 32.587627, 36.201866>,  <42.871349, 32.215652, 36.327129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948437, 32.587627, 36.201866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961310, -0.114914, 0.250354,
		0.196829, -0.349290, -0.916109,
		0.192720, 0.929942, -0.313157,
		43.006252, 32.866611, 36.107918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349777, 32.223400, 35.789772>,  <42.871349, 32.215652, 36.327129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349777, 32.223400, 35.789772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366837, 32.571060, 35.986858>,  <43.377071, 32.779655, 36.105110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366837, 32.571060, 35.986858>,  <43.349777, 32.223400, 35.789772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366837, 32.571060, 35.986858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990097, -0.102789, 0.095615,
		0.133749, 0.483756, -0.864923,
		0.042650, 0.869146, 0.492713,
		43.379631, 32.831802, 36.134674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671009, 32.706409, 35.404823>,  <43.349777, 32.223400, 35.789772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671009, 32.706409, 35.404823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700199, 32.788044, 35.795315>,  <43.717712, 32.837025, 36.029610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700199, 32.788044, 35.795315>,  <43.671009, 32.706409, 35.404823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700199, 32.788044, 35.795315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940897, 0.310518, -0.135249,
		-0.330739, 0.928402, -0.169359,
		0.072977, 0.204082, 0.976230,
		43.722092, 32.849270, 36.088184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855461, 33.424026, 35.576725>,  <43.671009, 32.706409, 35.404823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855461, 33.424026, 35.576725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024151, 33.182899, 35.847652>,  <44.125366, 33.038223, 36.010208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024151, 33.182899, 35.847652>,  <43.855461, 33.424026, 35.576725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024151, 33.182899, 35.847652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895478, 0.394183, -0.206732,
		-0.142363, 0.693704, 0.706051,
		0.421724, -0.602822, 0.677314,
		44.150669, 33.002052, 36.050846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595146, 33.579578, 35.573780>,  <43.855461, 33.424026, 35.576725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595146, 33.579578, 35.573780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584377, 33.301640, 35.861240>,  <44.577915, 33.134876, 36.033718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584377, 33.301640, 35.861240>,  <44.595146, 33.579578, 35.573780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584377, 33.301640, 35.861240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988897, 0.086588, 0.120766,
		-0.146141, 0.713922, 0.684806,
		-0.026921, -0.694851, 0.718649,
		44.576302, 33.093185, 36.076836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804008, 33.825298, 36.279556>,  <44.595146, 33.579578, 35.573780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804008, 33.825298, 36.279556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867508, 33.431900, 36.314266>,  <44.905609, 33.195862, 36.335091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867508, 33.431900, 36.314266>,  <44.804008, 33.825298, 36.279556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867508, 33.431900, 36.314266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923025, 0.179036, 0.340546,
		-0.350462, 0.026031, 0.936215,
		0.158751, -0.983498, 0.086773,
		44.915134, 33.136852, 36.340298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114830, 33.746647, 36.894165>,  <44.804008, 33.825298, 36.279556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114830, 33.746647, 36.894165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207493, 33.422134, 36.679440>,  <45.263088, 33.227428, 36.550606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207493, 33.422134, 36.679440>,  <45.114830, 33.746647, 36.894165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207493, 33.422134, 36.679440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932565, 0.028147, 0.359902,
		-0.276872, -0.583983, 0.763090,
		0.231655, -0.811278, -0.536809,
		45.276989, 33.178753, 36.518398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310013, 33.133560, 37.277328>,  <45.114830, 33.746647, 36.894165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310013, 33.133560, 37.277328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506863, 33.117966, 36.929466>,  <45.624973, 33.108608, 36.720749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506863, 33.117966, 36.929466>,  <45.310013, 33.133560, 37.277328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506863, 33.117966, 36.929466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861806, 0.162852, 0.480384,
		0.122897, -0.985880, 0.113741,
		0.492124, -0.038985, -0.869652,
		45.654499, 33.106270, 36.668571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723530, 32.636395, 37.336220>,  <45.310013, 33.133560, 37.277328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723530, 32.636395, 37.336220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885117, 32.857513, 37.044678>,  <45.982067, 32.990185, 36.869755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885117, 32.857513, 37.044678>,  <45.723530, 32.636395, 37.336220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885117, 32.857513, 37.044678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913880, -0.208640, 0.348271,
		0.040457, -0.806772, -0.589477,
		0.403963, 0.552801, -0.728852,
		46.006306, 33.023354, 36.826023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299183, 32.284206, 37.093025>,  <45.723530, 32.636395, 37.336220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299183, 32.284206, 37.093025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345371, 32.675995, 37.026932>,  <46.373085, 32.911068, 36.987278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345371, 32.675995, 37.026932>,  <46.299183, 32.284206, 37.093025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345371, 32.675995, 37.026932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954463, -0.063340, 0.291529,
		0.275079, -0.191367, -0.942184,
		0.115467, 0.979473, -0.165229,
		46.380013, 32.969837, 36.977364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.997902, 32.444153, 36.929691>,  <46.299183, 32.284206, 37.093025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.997902, 32.444153, 36.929691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919491, 32.800568, 37.093460>,  <46.872444, 33.014416, 37.191719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919491, 32.800568, 37.093460>,  <46.997902, 32.444153, 36.929691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919491, 32.800568, 37.093460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945414, 0.060893, 0.320133,
		0.260320, 0.449825, -0.854337,
		-0.196027, 0.891039, 0.409419,
		46.860683, 33.067879, 37.216286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702900, 32.388908, 36.713020>,  <46.997902, 32.444153, 36.929691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702900, 32.388908, 36.713020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436367, 32.144100, 36.542645>,  <47.276447, 31.997213, 36.440418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436367, 32.144100, 36.542645>,  <47.702900, 32.388908, 36.713020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.436367, 32.144100, 36.542645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525295, 0.790710, -0.314391,
		0.529208, 0.014252, -0.848373,
		-0.666336, -0.612024, -0.425937,
		47.236465, 31.960493, 36.414864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.648476, 32.558380, 36.118538>,  <47.702900, 32.388908, 36.713020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.648476, 32.558380, 36.118538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.302544, 32.382114, 36.214771>,  <47.094982, 32.276356, 36.272511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.302544, 32.382114, 36.214771>,  <47.648476, 32.558380, 36.118538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.302544, 32.382114, 36.214771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467577, 0.881463, -0.066293,
		-0.182852, -0.169824, -0.968362,
		-0.864833, -0.440662, 0.240583,
		47.043095, 32.249916, 36.286945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057358, 32.874401, 36.040161>,  <47.648476, 32.558380, 36.118538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057358, 32.874401, 36.040161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.908081, 33.228497, 35.929115>,  <46.818516, 33.440956, 35.862488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.908081, 33.228497, 35.929115>,  <47.057358, 32.874401, 36.040161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.908081, 33.228497, 35.929115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926678, 0.370079, -0.065637,
		0.044635, -0.281755, -0.958447,
		-0.373195, 0.885243, -0.277615,
		46.796124, 33.494068, 35.845829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.373772, 33.062183, 35.449802>,  <47.057358, 32.874401, 36.040161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.373772, 33.062183, 35.449802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262245, 33.404541, 35.624023>,  <47.195328, 33.609955, 35.728558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262245, 33.404541, 35.624023>,  <47.373772, 33.062183, 35.449802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.262245, 33.404541, 35.624023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889471, 0.401152, -0.218902,
		-0.362080, 0.326380, -0.873140,
		-0.278817, 0.855893, 0.435555,
		47.178600, 33.661308, 35.754688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.558445, 33.559654, 35.016949>,  <47.373772, 33.062183, 35.449802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.558445, 33.559654, 35.016949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576183, 33.672497, 35.400291>,  <47.586826, 33.740200, 35.630299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576183, 33.672497, 35.400291>,  <47.558445, 33.559654, 35.016949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.576183, 33.672497, 35.400291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990269, 0.114254, -0.079454,
		-0.131911, 0.952556, -0.274291,
		0.044346, 0.282103, 0.958359,
		47.589489, 33.757126, 35.687798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.950558, 33.959202, 34.786690>,  <47.558445, 33.559654, 35.016949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.950558, 33.959202, 34.786690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.010525, 34.246426, 35.058548>,  <47.046505, 34.418758, 35.221664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.010525, 34.246426, 35.058548>,  <46.950558, 33.959202, 34.786690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.010525, 34.246426, 35.058548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988696, -0.107509, -0.104506,
		-0.001973, 0.687632, -0.726057,
		0.149920, 0.718055, 0.679647,
		47.055500, 34.461842, 35.262444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381596, 34.551258, 34.486000>,  <46.950558, 33.959202, 34.786690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381596, 34.551258, 34.486000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.396656, 34.454079, 34.873722>,  <47.405693, 34.395771, 35.106358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.396656, 34.454079, 34.873722>,  <47.381596, 34.551258, 34.486000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.396656, 34.454079, 34.873722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984688, -0.156205, -0.077397,
		0.170214, 0.957379, 0.233352,
		0.037648, -0.242953, 0.969307,
		47.407951, 34.381191, 35.164513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.885345, 35.063126, 34.983391>,  <47.381596, 34.551258, 34.486000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.885345, 35.063126, 34.983391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.840488, 34.669518, 35.038727>,  <47.813572, 34.433353, 35.071926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.840488, 34.669518, 35.038727>,  <47.885345, 35.063126, 34.983391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.840488, 34.669518, 35.038727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991558, -0.119933, -0.049290,
		0.065093, 0.131640, 0.989158,
		-0.112144, -0.984016, 0.138336,
		47.806847, 34.374313, 35.080227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.112328, 29.518930, 21.752781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769176, 29.313782, 21.765453>,  <36.563286, 29.190693, 21.773058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769176, 29.313782, 21.765453>,  <37.112328, 29.518930, 21.752781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769176, 29.313782, 21.765453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136304, 0.286580, 0.948311,
		-0.495441, 0.809219, -0.315758,
		-0.857881, -0.512871, 0.031683,
		36.511810, 29.159920, 21.774958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676258, 29.899401, 22.129847>,  <37.112328, 29.518930, 21.752781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676258, 29.899401, 22.129847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452751, 29.567680, 22.132439>,  <36.318645, 29.368649, 22.133993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452751, 29.567680, 22.132439>,  <36.676258, 29.899401, 22.129847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452751, 29.567680, 22.132439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180423, 0.129183, 0.975069,
		-0.809460, 0.543668, -0.221809,
		-0.558768, -0.829299, 0.006478,
		36.285122, 29.318892, 22.134382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113640, 30.038864, 22.538235>,  <36.676258, 29.899401, 22.129847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113640, 30.038864, 22.538235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087173, 29.640190, 22.519304>,  <36.071293, 29.400986, 22.507946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087173, 29.640190, 22.519304>,  <36.113640, 30.038864, 22.538235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087173, 29.640190, 22.519304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355124, -0.020800, 0.934588,
		-0.932475, 0.078645, -0.352571,
		-0.066167, -0.996686, -0.047324,
		36.067322, 29.341185, 22.505108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375008, 29.752382, 22.648830>,  <36.113640, 30.038864, 22.538235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375008, 29.752382, 22.648830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596466, 29.429968, 22.732527>,  <35.729340, 29.236519, 22.782745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596466, 29.429968, 22.732527>,  <35.375008, 29.752382, 22.648830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596466, 29.429968, 22.732527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531239, -0.148359, 0.834131,
		-0.641298, -0.572969, -0.510337,
		0.553644, -0.806037, 0.209241,
		35.762558, 29.188156, 22.795300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823078, 29.256081, 22.781500>,  <35.375008, 29.752382, 22.648830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823078, 29.256081, 22.781500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148754, 29.097591, 22.951254>,  <35.344158, 29.002497, 23.053106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148754, 29.097591, 22.951254>,  <34.823078, 29.256081, 22.781500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148754, 29.097591, 22.951254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516660, -0.160973, 0.840922,
		-0.264878, -0.903933, -0.335775,
		0.814188, -0.396223, 0.424388,
		35.393009, 28.978724, 23.078569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624466, 28.598661, 23.138237>,  <34.823078, 29.256081, 22.781500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624466, 28.598661, 23.138237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.947182, 28.736937, 23.329901>,  <35.140812, 28.819901, 23.444899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.947182, 28.736937, 23.329901>,  <34.624466, 28.598661, 23.138237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947182, 28.736937, 23.329901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476169, -0.099708, 0.873683,
		0.349796, -0.933038, 0.084162,
		0.806788, 0.345686, 0.479161,
		35.189217, 28.840643, 23.473648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509819, 28.271769, 23.720972>,  <34.624466, 28.598661, 23.138237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509819, 28.271769, 23.720972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.779247, 28.559660, 23.788254>,  <34.940903, 28.732395, 23.828623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.779247, 28.559660, 23.788254>,  <34.509819, 28.271769, 23.720972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779247, 28.559660, 23.788254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330038, 0.089248, 0.939739,
		0.661344, -0.688496, 0.297653,
		0.673572, 0.719727, 0.168206,
		34.981319, 28.775578, 23.838717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705208, 27.996731, 24.306627>,  <34.509819, 28.271769, 23.720972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705208, 27.996731, 24.306627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.806995, 28.381804, 24.269768>,  <34.868069, 28.612846, 24.247652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.806995, 28.381804, 24.269768>,  <34.705208, 27.996731, 24.306627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806995, 28.381804, 24.269768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215633, 0.149371, 0.964982,
		0.942733, -0.225691, 0.245596,
		0.254473, 0.962680, -0.092151,
		34.883339, 28.670607, 24.242123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086323, 28.088112, 24.853113>,  <34.705208, 27.996731, 24.306627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086323, 28.088112, 24.853113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.977573, 28.460806, 24.756819>,  <34.912323, 28.684423, 24.699041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.977573, 28.460806, 24.756819>,  <35.086323, 28.088112, 24.853113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977573, 28.460806, 24.756819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196616, 0.191101, 0.961677,
		0.942034, 0.308783, 0.131240,
		-0.271870, 0.931737, -0.240735,
		34.896011, 28.740328, 24.684599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488487, 28.487457, 25.294714>,  <35.086323, 28.088112, 24.853113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488487, 28.487457, 25.294714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200092, 28.731098, 25.162552>,  <35.027054, 28.877283, 25.083254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200092, 28.731098, 25.162552>,  <35.488487, 28.487457, 25.294714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200092, 28.731098, 25.162552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131502, 0.347882, 0.928270,
		0.680354, 0.712722, -0.170721,
		-0.720990, 0.609102, -0.330407,
		34.983795, 28.913830, 25.063429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639801, 29.177296, 25.527794>,  <35.488487, 28.487457, 25.294714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639801, 29.177296, 25.527794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247108, 29.179846, 25.451725>,  <35.011494, 29.181376, 25.406084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247108, 29.179846, 25.451725>,  <35.639801, 29.177296, 25.527794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247108, 29.179846, 25.451725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160621, 0.508075, 0.846204,
		0.102019, 0.861289, -0.497768,
		-0.981730, 0.006376, -0.190174,
		34.952591, 29.181759, 25.394672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470684, 29.834589, 25.619190>,  <35.639801, 29.177296, 25.527794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470684, 29.834589, 25.619190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.118500, 29.648468, 25.655594>,  <34.907188, 29.536797, 25.677437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.118500, 29.648468, 25.655594>,  <35.470684, 29.834589, 25.619190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118500, 29.648468, 25.655594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209399, 0.553851, 0.805855,
		-0.425371, 0.690467, -0.585078,
		-0.880461, -0.465301, 0.091009,
		34.854362, 29.508877, 25.682896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916466, 30.336418, 25.646542>,  <35.470684, 29.834589, 25.619190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916466, 30.336418, 25.646542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733009, 30.025930, 25.819576>,  <34.622936, 29.839638, 25.923397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733009, 30.025930, 25.819576>,  <34.916466, 30.336418, 25.646542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733009, 30.025930, 25.819576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123139, 0.537627, 0.834143,
		-0.880046, 0.329307, -0.342163,
		-0.458645, -0.776218, 0.432586,
		34.595417, 29.793064, 25.949352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318207, 30.542757, 25.864237>,  <34.916466, 30.336418, 25.646542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318207, 30.542757, 25.864237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.376736, 30.223230, 26.097641>,  <34.411854, 30.031515, 26.237684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.376736, 30.223230, 26.097641>,  <34.318207, 30.542757, 25.864237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376736, 30.223230, 26.097641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186696, 0.556961, 0.809283,
		-0.971460, -0.227353, -0.067642,
		0.146319, -0.798815, 0.583511,
		34.420631, 29.983585, 26.272694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717556, 30.614277, 26.371111>,  <34.318207, 30.542757, 25.864237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717556, 30.614277, 26.371111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.997688, 30.363829, 26.508228>,  <34.165768, 30.213560, 26.590500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.997688, 30.363829, 26.508228>,  <33.717556, 30.614277, 26.371111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997688, 30.363829, 26.508228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157873, 0.332474, 0.929805,
		-0.696139, -0.705291, 0.133995,
		0.700333, -0.626119, 0.342795,
		34.207787, 30.175993, 26.611067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481388, 30.306463, 26.971836>,  <33.717556, 30.614277, 26.371111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481388, 30.306463, 26.971836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.875126, 30.252764, 27.017529>,  <34.111366, 30.220545, 27.044945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.875126, 30.252764, 27.017529>,  <33.481388, 30.306463, 26.971836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875126, 30.252764, 27.017529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092302, 0.159544, 0.982866,
		-0.150175, -0.978020, 0.144654,
		0.984341, -0.134250, 0.114233,
		34.170429, 30.212488, 27.051798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515572, 30.057825, 27.579800>,  <33.481388, 30.306463, 26.971836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515572, 30.057825, 27.579800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.892056, 30.179462, 27.520933>,  <34.117947, 30.252445, 27.485613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.892056, 30.179462, 27.520933>,  <33.515572, 30.057825, 27.579800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892056, 30.179462, 27.520933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020933, 0.382287, 0.923806,
		0.337183, -0.872573, 0.353446,
		0.941206, 0.304093, -0.147166,
		34.174416, 30.270691, 27.476784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860683, 29.882452, 28.190762>,  <33.515572, 30.057825, 27.579800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860683, 29.882452, 28.190762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.055256, 30.175259, 27.999960>,  <34.172001, 30.350943, 27.885479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.055256, 30.175259, 27.999960>,  <33.860683, 29.882452, 28.190762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055256, 30.175259, 27.999960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063852, 0.514706, 0.854986,
		0.871382, -0.446350, 0.203629,
		0.486432, 0.732017, -0.477006,
		34.201187, 30.394863, 27.856857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500336, 29.953314, 28.449142>,  <33.860683, 29.882452, 28.190762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500336, 29.953314, 28.449142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435455, 30.316307, 28.294136>,  <34.396526, 30.534103, 28.201132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435455, 30.316307, 28.294136>,  <34.500336, 29.953314, 28.449142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435455, 30.316307, 28.294136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242487, 0.417332, 0.875805,
		0.956500, 0.048085, -0.287743,
		-0.162198, 0.907481, -0.387517,
		34.386795, 30.588551, 28.177881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936256, 30.393042, 28.817087>,  <34.500336, 29.953314, 28.449142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936256, 30.393042, 28.817087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704552, 30.661371, 28.631849>,  <34.565529, 30.822369, 28.520706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704552, 30.661371, 28.631849>,  <34.936256, 30.393042, 28.817087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704552, 30.661371, 28.631849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225694, 0.677892, 0.699660,
		0.783277, 0.300766, -0.544075,
		-0.579258, 0.670822, -0.463096,
		34.530773, 30.862617, 28.492920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315113, 31.011684, 28.916630>,  <34.936256, 30.393042, 28.817087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315113, 31.011684, 28.916630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935883, 31.105364, 28.830553>,  <34.708344, 31.161572, 28.778908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935883, 31.105364, 28.830553>,  <35.315113, 31.011684, 28.916630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935883, 31.105364, 28.830553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067369, 0.513366, 0.855522,
		0.310832, 0.825595, -0.470931,
		-0.948074, 0.234198, -0.215190,
		34.651459, 31.175623, 28.765997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172562, 31.736141, 28.937763>,  <35.315113, 31.011684, 28.916630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172562, 31.736141, 28.937763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.851589, 31.513517, 29.023874>,  <34.659004, 31.379942, 29.075541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.851589, 31.513517, 29.023874>,  <35.172562, 31.736141, 28.937763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851589, 31.513517, 29.023874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015967, 0.380651, 0.924581,
		-0.596533, 0.738474, -0.314333,
		-0.802430, -0.556562, 0.215279,
		34.610859, 31.346548, 29.088459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807659, 31.898228, 29.586416>,  <35.172562, 31.736141, 28.937763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807659, 31.898228, 29.586416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149273, 32.062382, 29.714293>,  <35.354240, 32.160873, 29.791018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149273, 32.062382, 29.714293>,  <34.807659, 31.898228, 29.586416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149273, 32.062382, 29.714293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362953, -0.029824, -0.931330,
		-0.372670, 0.911424, -0.174422,
		0.854038, 0.410386, 0.319690,
		35.405483, 32.185497, 29.810200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853706, 32.398483, 29.221264>,  <34.807659, 31.898228, 29.586416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853706, 32.398483, 29.221264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232399, 32.317074, 29.321089>,  <35.459614, 32.268227, 29.380983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232399, 32.317074, 29.321089>,  <34.853706, 32.398483, 29.221264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232399, 32.317074, 29.321089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261490, 0.033551, -0.964623,
		0.187953, 0.978494, 0.084984,
		0.946729, -0.203526, 0.249561,
		35.516418, 32.256016, 29.395958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256744, 32.808445, 28.740377>,  <34.853706, 32.398483, 29.221264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256744, 32.808445, 28.740377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534264, 32.572178, 28.905184>,  <35.700775, 32.430420, 29.004068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534264, 32.572178, 28.905184>,  <35.256744, 32.808445, 28.740377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534264, 32.572178, 28.905184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592052, 0.142086, -0.793275,
		0.410017, 0.794310, 0.448283,
		0.693801, -0.590663, 0.412015,
		35.742405, 32.394978, 29.028788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960964, 33.141815, 28.631958>,  <35.256744, 32.808445, 28.740377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960964, 33.141815, 28.631958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.014954, 32.748592, 28.681570>,  <36.047348, 32.512657, 28.711338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.014954, 32.748592, 28.681570>,  <35.960964, 33.141815, 28.631958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014954, 32.748592, 28.681570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483056, -0.044009, -0.874483,
		0.865125, 0.177942, 0.468931,
		0.134969, -0.983056, 0.124029,
		36.055443, 32.453674, 28.718779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645679, 33.080997, 28.552515>,  <35.960964, 33.141815, 28.631958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645679, 33.080997, 28.552515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451607, 32.740791, 28.471306>,  <36.335163, 32.536667, 28.422581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451607, 32.740791, 28.471306>,  <36.645679, 33.080997, 28.552515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451607, 32.740791, 28.471306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516262, -0.091232, -0.851557,
		0.705745, -0.517969, 0.483355,
		-0.485178, -0.850520, -0.203022,
		36.306053, 32.485634, 28.410398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183586, 32.730801, 28.403748>,  <36.645679, 33.080997, 28.552515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183586, 32.730801, 28.403748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884567, 32.511921, 28.253151>,  <36.705154, 32.380592, 28.162794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884567, 32.511921, 28.253151>,  <37.183586, 32.730801, 28.403748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884567, 32.511921, 28.253151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579803, -0.261070, -0.771797,
		0.324037, -0.795245, 0.512431,
		-0.747548, -0.547200, -0.376489,
		36.660301, 32.347759, 28.140203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511108, 32.052753, 28.162300>,  <37.183586, 32.730801, 28.403748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511108, 32.052753, 28.162300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.157803, 32.054577, 27.974760>,  <36.945820, 32.055672, 27.862236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.157803, 32.054577, 27.974760>,  <37.511108, 32.052753, 28.162300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157803, 32.054577, 27.974760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451702, -0.259844, -0.853491,
		-0.125719, -0.965640, 0.227452,
		-0.883267, 0.004560, -0.468849,
		36.892822, 32.055946, 27.834105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449558, 31.521170, 27.710331>,  <37.511108, 32.052753, 28.162300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449558, 31.521170, 27.710331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179070, 31.757229, 27.533943>,  <37.016777, 31.898865, 27.428110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179070, 31.757229, 27.533943>,  <37.449558, 31.521170, 27.710331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179070, 31.757229, 27.533943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533152, -0.021055, -0.845758,
		-0.508407, -0.807020, -0.300401,
		-0.676219, 0.590148, -0.440969,
		36.976204, 31.934273, 27.401653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297764, 31.144018, 27.158115>,  <37.449558, 31.521170, 27.710331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297764, 31.144018, 27.158115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167828, 31.514013, 27.079247>,  <37.089867, 31.736010, 27.031925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167828, 31.514013, 27.079247>,  <37.297764, 31.144018, 27.158115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167828, 31.514013, 27.079247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223000, -0.127689, -0.966419,
		-0.919103, -0.357901, -0.164794,
		-0.324840, 0.924988, -0.197172,
		37.070377, 31.791510, 27.020096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812336, 31.134886, 26.578524>,  <37.297764, 31.144018, 27.158115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812336, 31.134886, 26.578524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.963173, 31.503670, 26.613842>,  <37.053673, 31.724939, 26.635033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.963173, 31.503670, 26.613842>,  <36.812336, 31.134886, 26.578524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963173, 31.503670, 26.613842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147348, 0.034401, -0.988486,
		-0.914381, 0.385757, -0.122877,
		0.377089, 0.921959, 0.088296,
		37.076298, 31.780258, 26.640331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548771, 31.442020, 26.007004>,  <36.812336, 31.134886, 26.578524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548771, 31.442020, 26.007004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866634, 31.674425, 26.077356>,  <37.057354, 31.813868, 26.119568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866634, 31.674425, 26.077356>,  <36.548771, 31.442020, 26.007004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866634, 31.674425, 26.077356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260347, -0.064459, -0.963361,
		-0.548389, 0.811337, -0.202488,
		0.794663, 0.581013, 0.175881,
		37.105034, 31.848730, 26.130121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635036, 31.769812, 25.432697>,  <36.548771, 31.442020, 26.007004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635036, 31.769812, 25.432697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999775, 31.813671, 25.590940>,  <37.218620, 31.839987, 25.685886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999775, 31.813671, 25.590940>,  <36.635036, 31.769812, 25.432697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999775, 31.813671, 25.590940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402726, -0.051984, -0.913843,
		-0.079638, 0.992610, -0.091561,
		0.911849, 0.109651, 0.395610,
		37.273331, 31.846567, 25.709623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925068, 32.376774, 25.053879>,  <36.635036, 31.769812, 25.432697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925068, 32.376774, 25.053879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.232922, 32.172791, 25.207556>,  <37.417633, 32.050400, 25.299763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.232922, 32.172791, 25.207556>,  <36.925068, 32.376774, 25.053879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232922, 32.172791, 25.207556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431484, -0.028109, -0.901682,
		0.470619, 0.859740, 0.198405,
		0.769636, -0.509957, 0.384193,
		37.463814, 32.019802, 25.322813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594574, 32.721172, 24.894709>,  <36.925068, 32.376774, 25.053879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594574, 32.721172, 24.894709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623142, 32.326550, 24.953497>,  <37.640282, 32.089775, 24.988770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623142, 32.326550, 24.953497>,  <37.594574, 32.721172, 24.894709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623142, 32.326550, 24.953497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220620, -0.128074, -0.966914,
		0.972742, 0.101480, 0.208508,
		0.071418, -0.986559, 0.146972,
		37.644569, 32.030582, 24.997589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141140, 32.443455, 24.456175>,  <37.594574, 32.721172, 24.894709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141140, 32.443455, 24.456175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955826, 32.106316, 24.565702>,  <37.844639, 31.904032, 24.631418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955826, 32.106316, 24.565702>,  <38.141140, 32.443455, 24.456175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955826, 32.106316, 24.565702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213080, -0.405853, -0.888752,
		0.860212, -0.353400, 0.367620,
		-0.463285, -0.842847, 0.273817,
		37.816841, 31.853462, 24.647848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576458, 31.946661, 24.350395>,  <38.141140, 32.443455, 24.456175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576458, 31.946661, 24.350395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216499, 31.772825, 24.335861>,  <38.000523, 31.668524, 24.327141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216499, 31.772825, 24.335861>,  <38.576458, 31.946661, 24.350395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216499, 31.772825, 24.335861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204540, -0.347012, -0.915284,
		0.385163, -0.831093, 0.401166,
		-0.899896, -0.434588, -0.036336,
		37.946529, 31.642448, 24.324961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665508, 31.213579, 24.134504>,  <38.576458, 31.946661, 24.350395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665508, 31.213579, 24.134504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284004, 31.302929, 24.054060>,  <38.055103, 31.356539, 24.005793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284004, 31.302929, 24.054060>,  <38.665508, 31.213579, 24.134504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284004, 31.302929, 24.054060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144110, -0.247335, -0.958153,
		-0.263779, -0.942828, 0.203705,
		-0.953757, 0.223385, -0.201113,
		37.997875, 31.369942, 23.993727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488819, 30.611120, 23.892586>,  <38.665508, 31.213579, 24.134504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488819, 30.611120, 23.892586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.246307, 30.884460, 23.729881>,  <38.100800, 31.048464, 23.632257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.246307, 30.884460, 23.729881>,  <38.488819, 30.611120, 23.892586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246307, 30.884460, 23.729881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140315, -0.411545, -0.900524,
		-0.782774, -0.603045, 0.153627,
		-0.606281, 0.683350, -0.406763,
		38.064423, 31.089466, 23.607853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.334282, 30.263891, 23.277519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132050, 30.606642, 23.237226>,  <38.010708, 30.812292, 23.213051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132050, 30.606642, 23.237226>,  <38.334282, 30.263891, 23.277519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132050, 30.606642, 23.237226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032733, -0.135717, -0.990207,
		-0.862156, -0.497337, 0.096665,
		-0.505585, 0.856877, -0.100730,
		37.980373, 30.863705, 23.207008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616928, 30.140875, 22.875528>,  <38.334282, 30.263891, 23.277519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616928, 30.140875, 22.875528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751457, 30.513628, 22.821152>,  <37.832172, 30.737280, 22.788525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751457, 30.513628, 22.821152>,  <37.616928, 30.140875, 22.875528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751457, 30.513628, 22.821152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064200, -0.166703, -0.983915,
		-0.939557, 0.322181, -0.115892,
		0.336318, 0.931885, -0.135943,
		37.852352, 30.793194, 22.780369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325569, 30.339483, 22.363092>,  <37.616928, 30.140875, 22.875528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325569, 30.339483, 22.363092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614250, 30.615950, 22.378250>,  <37.787457, 30.781830, 22.387344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614250, 30.615950, 22.378250>,  <37.325569, 30.339483, 22.363092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614250, 30.615950, 22.378250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168967, -0.122816, -0.977940,
		-0.671266, 0.712182, -0.205421,
		0.721700, 0.691167, 0.037893,
		37.830761, 30.823299, 22.389618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148026, 30.799183, 21.806362>,  <37.325569, 30.339483, 22.363092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148026, 30.799183, 21.806362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542156, 30.795876, 21.874557>,  <37.778633, 30.793890, 21.915476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542156, 30.795876, 21.874557>,  <37.148026, 30.799183, 21.806362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542156, 30.795876, 21.874557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166649, -0.169447, -0.971347,
		0.036921, 0.985505, -0.165582,
		0.985325, -0.008269, 0.170490,
		37.837753, 30.793394, 21.925705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484226, 31.284571, 21.356598>,  <37.148026, 30.799183, 21.806362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484226, 31.284571, 21.356598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.756275, 31.021013, 21.485153>,  <37.919506, 30.862879, 21.562286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.756275, 31.021013, 21.485153>,  <37.484226, 31.284571, 21.356598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756275, 31.021013, 21.485153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450523, 0.029824, -0.892266,
		0.578322, 0.751646, 0.317130,
		0.680127, -0.658892, 0.321386,
		37.960312, 30.823345, 21.581570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144051, 31.552860, 21.034649>,  <37.484226, 31.284571, 21.356598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144051, 31.552860, 21.034649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216328, 31.171675, 21.131983>,  <38.259693, 30.942965, 21.190384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216328, 31.171675, 21.131983>,  <38.144051, 31.552860, 21.034649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216328, 31.171675, 21.131983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363018, -0.165318, -0.916999,
		0.914094, 0.254032, 0.316070,
		0.180695, -0.952963, 0.243334,
		38.270535, 30.885786, 21.204983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725441, 31.438774, 20.626568>,  <38.144051, 31.552860, 21.034649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725441, 31.438774, 20.626568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604328, 31.072235, 20.731358>,  <38.531658, 30.852312, 20.794231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604328, 31.072235, 20.731358>,  <38.725441, 31.438774, 20.626568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604328, 31.072235, 20.731358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347394, -0.362080, -0.864994,
		0.887490, -0.170898, 0.427966,
		-0.302784, -0.916347, 0.261974,
		38.513493, 30.797331, 20.809950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271397, 30.942924, 20.395136>,  <38.725441, 31.438774, 20.626568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271397, 30.942924, 20.395136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942783, 30.727774, 20.470795>,  <38.745617, 30.598682, 20.516190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.942783, 30.727774, 20.470795>,  <39.271397, 30.942924, 20.395136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942783, 30.727774, 20.470795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078773, -0.435629, -0.896673,
		0.564698, -0.721744, 0.400253,
		-0.821529, -0.537878, 0.189145,
		38.696323, 30.566410, 20.527538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440929, 30.280939, 20.158796>,  <39.271397, 30.942924, 20.395136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440929, 30.280939, 20.158796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.041370, 30.268103, 20.172482>,  <38.801636, 30.260401, 20.180693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.041370, 30.268103, 20.172482>,  <39.440929, 30.280939, 20.158796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041370, 30.268103, 20.172482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015752, -0.457498, -0.889071,
		0.044185, -0.888631, 0.456489,
		-0.998899, -0.032093, 0.034212,
		38.741699, 30.258474, 20.182745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225754, 29.600090, 19.962120>,  <39.440929, 30.280939, 20.158796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225754, 29.600090, 19.962120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938026, 29.868301, 19.889488>,  <38.765388, 30.029228, 19.845909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938026, 29.868301, 19.889488>,  <39.225754, 29.600090, 19.962120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938026, 29.868301, 19.889488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042584, -0.218336, -0.974944,
		-0.693372, -0.709030, 0.128501,
		-0.719321, 0.670527, -0.181581,
		38.722229, 30.069460, 19.835014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966267, 29.322092, 19.449953>,  <39.225754, 29.600090, 19.962120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966267, 29.322092, 19.449953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794220, 29.682529, 19.427933>,  <38.690994, 29.898792, 19.414721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794220, 29.682529, 19.427933>,  <38.966267, 29.322092, 19.449953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794220, 29.682529, 19.427933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077026, -0.097390, -0.992261,
		-0.899482, -0.422545, 0.111297,
		-0.430114, 0.901094, -0.055053,
		38.665184, 29.952858, 19.411417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626873, 29.266138, 18.866087>,  <38.966267, 29.322092, 19.449953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626873, 29.266138, 18.866087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647125, 29.660870, 18.927549>,  <38.659275, 29.897709, 18.964428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647125, 29.660870, 18.927549>,  <38.626873, 29.266138, 18.866087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647125, 29.660870, 18.927549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062566, 0.150418, -0.986641,
		-0.996756, 0.059564, -0.054127,
		0.050626, 0.986826, 0.153657,
		38.662312, 29.956917, 18.973646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075592, 29.543732, 18.504232>,  <38.626873, 29.266138, 18.866087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075592, 29.543732, 18.504232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351421, 29.830532, 18.545015>,  <38.516918, 30.002613, 18.569485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351421, 29.830532, 18.545015>,  <38.075592, 29.543732, 18.504232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351421, 29.830532, 18.545015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029426, 0.112924, -0.993168,
		-0.723616, 0.687864, 0.056771,
		0.689575, 0.717002, 0.101955,
		38.558292, 30.045633, 18.575602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910343, 29.983379, 18.037941>,  <38.075592, 29.543732, 18.504232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910343, 29.983379, 18.037941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284576, 30.101925, 18.114725>,  <38.509117, 30.173052, 18.160795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284576, 30.101925, 18.114725>,  <37.910343, 29.983379, 18.037941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284576, 30.101925, 18.114725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151306, 0.154708, -0.976305,
		-0.319041, 0.942461, 0.099901,
		0.935585, 0.296365, 0.191959,
		38.565250, 30.190834, 18.172312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042942, 30.542030, 17.617249>,  <37.910343, 29.983379, 18.037941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042942, 30.542030, 17.617249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403408, 30.396322, 17.711237>,  <38.619686, 30.308897, 17.767630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403408, 30.396322, 17.711237>,  <38.042942, 30.542030, 17.617249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403408, 30.396322, 17.711237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177761, -0.183833, -0.966751,
		0.395352, 0.912970, -0.100911,
		0.901165, -0.364269, 0.234969,
		38.673756, 30.287041, 17.781727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494343, 30.828197, 17.095093>,  <38.042942, 30.542030, 17.617249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494343, 30.828197, 17.095093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.726486, 30.545593, 17.257093>,  <38.865772, 30.376032, 17.354294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.726486, 30.545593, 17.257093>,  <38.494343, 30.828197, 17.095093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726486, 30.545593, 17.257093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485369, -0.099249, -0.868658,
		0.653911, 0.700710, 0.285318,
		0.580360, -0.706509, 0.405003,
		38.900593, 30.333641, 17.378593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154606, 31.090214, 16.966320>,  <38.494343, 30.828197, 17.095093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154606, 31.090214, 16.966320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.154770, 30.694141, 17.022236>,  <39.154869, 30.456497, 17.055786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.154770, 30.694141, 17.022236>,  <39.154606, 31.090214, 16.966320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154770, 30.694141, 17.022236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387798, -0.128692, -0.912716,
		0.921744, 0.054588, 0.383937,
		0.000414, -0.990181, 0.139791,
		39.154896, 30.397087, 17.064173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851990, 30.911581, 16.857191>,  <39.154606, 31.090214, 16.966320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851990, 30.911581, 16.857191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.620708, 30.593349, 16.784826>,  <39.481937, 30.402411, 16.741407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.620708, 30.593349, 16.784826>,  <39.851990, 30.911581, 16.857191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620708, 30.593349, 16.784826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308720, -0.008087, -0.951118,
		0.755227, -0.605795, 0.250288,
		-0.578207, -0.795580, -0.180913,
		39.447247, 30.354675, 16.730553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300636, 30.492964, 16.383104>,  <39.851990, 30.911581, 16.857191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300636, 30.492964, 16.383104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.937454, 30.326157, 16.366583>,  <39.719543, 30.226072, 16.356670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.937454, 30.326157, 16.366583>,  <40.300636, 30.492964, 16.383104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937454, 30.326157, 16.366583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180686, -0.300649, -0.936463,
		0.378104, -0.857733, 0.348326,
		-0.907959, -0.417019, -0.041304,
		39.665066, 30.201052, 16.354191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447964, 29.770077, 16.144016>,  <40.300636, 30.492964, 16.383104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447964, 29.770077, 16.144016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.067268, 29.868431, 16.070553>,  <39.838852, 29.927444, 16.026476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.067268, 29.868431, 16.070553>,  <40.447964, 29.770077, 16.144016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067268, 29.868431, 16.070553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026215, -0.531099, -0.846904,
		-0.305782, -0.810848, 0.499022,
		-0.951741, 0.245886, -0.183657,
		39.781746, 29.942198, 16.015455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126038, 29.109245, 15.981151>,  <40.447964, 29.770077, 16.144016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126038, 29.109245, 15.981151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.898712, 29.392519, 15.813584>,  <39.762318, 29.562483, 15.713044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.898712, 29.392519, 15.813584>,  <40.126038, 29.109245, 15.981151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898712, 29.392519, 15.813584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035590, -0.529810, -0.847369,
		-0.822040, -0.466664, 0.326304,
		-0.568316, 0.708185, -0.418917,
		39.728218, 29.604975, 15.687909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922462, 28.759571, 15.470661>,  <40.126038, 29.109245, 15.981151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922462, 28.759571, 15.470661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816216, 29.128862, 15.359594>,  <39.752468, 29.350437, 15.292954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816216, 29.128862, 15.359594>,  <39.922462, 28.759571, 15.470661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816216, 29.128862, 15.359594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089006, -0.263299, -0.960600,
		-0.959962, -0.279864, -0.012236,
		-0.265616, 0.923228, -0.277666,
		39.736530, 29.405830, 15.276295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148720, 28.644930, 15.271880>,  <39.922462, 28.759571, 15.470661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148720, 28.644930, 15.271880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377762, 28.937803, 15.124347>,  <39.515186, 29.113527, 15.035827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377762, 28.937803, 15.124347>,  <39.148720, 28.644930, 15.271880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377762, 28.937803, 15.124347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227343, -0.290437, -0.929495,
		-0.787683, 0.616081, 0.000152,
		0.572600, 0.732182, -0.368834,
		39.549541, 29.157457, 15.013697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664890, 29.063604, 14.861921>,  <39.148720, 28.644930, 15.271880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664890, 29.063604, 14.861921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047310, 29.064098, 14.744636>,  <39.276760, 29.064394, 14.674264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047310, 29.064098, 14.744636>,  <38.664890, 29.063604, 14.861921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047310, 29.064098, 14.744636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267075, -0.409074, -0.872542,
		-0.121023, 0.912501, -0.390764,
		0.956046, 0.001235, -0.293213,
		39.334126, 29.064468, 14.656672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574474, 28.612600, 14.201640>,  <38.664890, 29.063604, 14.861921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574474, 28.612600, 14.201640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.372849, 28.267879, 14.224346>,  <38.251873, 28.061047, 14.237969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.372849, 28.267879, 14.224346>,  <38.574474, 28.612600, 14.201640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372849, 28.267879, 14.224346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110437, 0.129501, 0.985410,
		-0.856578, 0.490438, -0.160451,
		-0.504061, -0.861801, 0.056765,
		38.221630, 28.009338, 14.241376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013546, 28.764711, 14.548917>,  <38.574474, 28.612600, 14.201640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013546, 28.764711, 14.548917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.991650, 28.368555, 14.599722>,  <37.978512, 28.130861, 14.630205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.991650, 28.368555, 14.599722>,  <38.013546, 28.764711, 14.548917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991650, 28.368555, 14.599722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164210, 0.134401, 0.977226,
		-0.984905, 0.032640, -0.169989,
		-0.054743, -0.990389, 0.127012,
		37.975227, 28.071438, 14.637826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218536, 28.568510, 14.659202>,  <38.013546, 28.764711, 14.548917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218536, 28.568510, 14.659202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.429493, 28.278971, 14.837148>,  <37.556068, 28.105247, 14.943915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.429493, 28.278971, 14.837148>,  <37.218536, 28.568510, 14.659202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429493, 28.278971, 14.837148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460569, 0.196428, 0.865616,
		-0.713958, -0.661409, -0.229787,
		0.527390, -0.723847, 0.444866,
		37.587711, 28.061817, 14.970608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792393, 28.379681, 15.134727>,  <37.218536, 28.568510, 14.659202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792393, 28.379681, 15.134727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.116634, 28.189653, 15.271688>,  <37.311180, 28.075638, 15.353864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.116634, 28.189653, 15.271688>,  <36.792393, 28.379681, 15.134727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116634, 28.189653, 15.271688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378702, 0.020715, 0.925287,
		-0.446666, -0.879706, -0.163117,
		0.810601, -0.475066, 0.342399,
		37.359814, 28.047134, 15.374407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674507, 27.626564, 15.453596>,  <36.792393, 28.379681, 15.134727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674507, 27.626564, 15.453596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002163, 27.773825, 15.629539>,  <37.198757, 27.862181, 15.735106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002163, 27.773825, 15.629539>,  <36.674507, 27.626564, 15.453596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002163, 27.773825, 15.629539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481113, 0.023443, 0.876345,
		0.312315, -0.929471, 0.196325,
		0.819139, 0.368150, 0.439859,
		37.247906, 27.884270, 15.761497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565617, 27.383467, 16.077974>,  <36.674507, 27.626564, 15.453596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565617, 27.383467, 16.077974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857800, 27.651686, 16.129822>,  <37.033108, 27.812616, 16.160931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857800, 27.651686, 16.129822>,  <36.565617, 27.383467, 16.077974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857800, 27.651686, 16.129822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319402, 0.167650, 0.932671,
		0.603670, -0.722675, 0.336635,
		0.730455, 0.670548, 0.129618,
		37.076935, 27.852850, 16.168707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791977, 27.283922, 16.809029>,  <36.565617, 27.383467, 16.077974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791977, 27.283922, 16.809029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921055, 27.642639, 16.687946>,  <36.998501, 27.857870, 16.615297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921055, 27.642639, 16.687946>,  <36.791977, 27.283922, 16.809029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921055, 27.642639, 16.687946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330861, 0.406514, 0.851632,
		0.886793, -0.174662, 0.427893,
		0.322692, 0.896794, -0.302705,
		37.017864, 27.911678, 16.597136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250469, 27.587076, 17.276943>,  <36.791977, 27.283922, 16.809029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250469, 27.587076, 17.276943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154507, 27.934578, 17.103642>,  <37.096931, 28.143080, 16.999660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154507, 27.934578, 17.103642>,  <37.250469, 27.587076, 17.276943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154507, 27.934578, 17.103642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078840, 0.427378, 0.900629,
		0.967591, 0.250220, -0.034036,
		-0.239902, 0.868757, -0.433254,
		37.082535, 28.195206, 16.973665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647804, 28.148026, 17.541412>,  <37.250469, 27.587076, 17.276943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647804, 28.148026, 17.541412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348389, 28.355961, 17.376751>,  <37.168739, 28.480722, 17.277954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348389, 28.355961, 17.376751>,  <37.647804, 28.148026, 17.541412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348389, 28.355961, 17.376751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000454, 0.621211, 0.783643,
		0.663091, 0.586400, -0.465237,
		-0.748539, 0.519838, -0.411653,
		37.123829, 28.511911, 17.253256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723385, 28.835670, 17.628340>,  <37.647804, 28.148026, 17.541412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723385, 28.835670, 17.628340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327686, 28.817112, 17.572865>,  <37.090267, 28.805977, 17.539579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327686, 28.817112, 17.572865>,  <37.723385, 28.835670, 17.628340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327686, 28.817112, 17.572865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145898, 0.378348, 0.914093,
		0.010061, 0.924500, -0.381050,
		-0.989248, -0.046398, -0.138689,
		37.030910, 28.803192, 17.531258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351337, 29.584053, 17.864277>,  <37.723385, 28.835670, 17.628340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351337, 29.584053, 17.864277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078213, 29.293182, 17.892525>,  <36.914337, 29.118660, 17.909473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078213, 29.293182, 17.892525>,  <37.351337, 29.584053, 17.864277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078213, 29.293182, 17.892525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326697, 0.390355, 0.860751,
		-0.653482, 0.564659, -0.504104,
		-0.682811, -0.727174, 0.070618,
		36.873371, 29.075029, 17.913710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784496, 29.881617, 18.085159>,  <37.351337, 29.584053, 17.864277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784496, 29.881617, 18.085159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691051, 29.500397, 18.162231>,  <36.634987, 29.271666, 18.208475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691051, 29.500397, 18.162231>,  <36.784496, 29.881617, 18.085159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691051, 29.500397, 18.162231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238471, 0.248270, 0.938879,
		-0.942634, 0.173380, -0.285273,
		-0.233608, -0.953048, 0.192682,
		36.620968, 29.214481, 18.220036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123920, 29.960983, 18.532290>,  <36.784496, 29.881617, 18.085159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123920, 29.960983, 18.532290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243217, 29.580832, 18.567682>,  <36.314796, 29.352741, 18.588917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243217, 29.580832, 18.567682>,  <36.123920, 29.960983, 18.532290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243217, 29.580832, 18.567682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371882, -0.030326, 0.927784,
		-0.879063, -0.309613, -0.362474,
		0.298247, -0.950379, 0.088481,
		36.332691, 29.295717, 18.594227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599102, 29.658001, 18.892212>,  <36.123920, 29.960983, 18.532290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599102, 29.658001, 18.892212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901436, 29.404737, 18.958927>,  <36.082836, 29.252779, 18.998957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901436, 29.404737, 18.958927>,  <35.599102, 29.658001, 18.892212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901436, 29.404737, 18.958927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184827, 0.038053, 0.982034,
		-0.628133, -0.773084, -0.088263,
		0.755836, -0.633161, 0.166789,
		36.128185, 29.214788, 19.008965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348606, 29.357670, 19.474974>,  <35.599102, 29.658001, 18.892212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348606, 29.357670, 19.474974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742657, 29.289589, 19.465490>,  <35.979088, 29.248741, 19.459801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742657, 29.289589, 19.465490>,  <35.348606, 29.357670, 19.474974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742657, 29.289589, 19.465490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056061, 0.187900, 0.980587,
		-0.162443, -0.967329, 0.194646,
		0.985124, -0.170201, -0.023706,
		36.038193, 29.238529, 19.458378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453358, 28.785055, 19.817270>,  <35.348606, 29.357670, 19.474974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453358, 28.785055, 19.817270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806709, 28.969355, 19.851561>,  <36.018723, 29.079933, 19.872135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806709, 28.969355, 19.851561>,  <35.453358, 28.785055, 19.817270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806709, 28.969355, 19.851561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009306, -0.200124, 0.979726,
		0.468562, -0.864675, -0.181074,
		0.883382, 0.460747, 0.085724,
		36.071724, 29.107578, 19.877277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864677, 28.245892, 20.159424>,  <35.453358, 28.785055, 19.817270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864677, 28.245892, 20.159424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074631, 28.585142, 20.188217>,  <36.200603, 28.788692, 20.205494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074631, 28.585142, 20.188217>,  <35.864677, 28.245892, 20.159424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074631, 28.585142, 20.188217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248118, -0.233353, 0.940204,
		0.814208, -0.475638, -0.332918,
		0.524884, 0.848124, 0.071984,
		36.232098, 28.839579, 20.209812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614513, 28.037100, 20.503979>,  <35.864677, 28.245892, 20.159424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614513, 28.037100, 20.503979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531307, 28.426220, 20.544756>,  <36.481384, 28.659693, 20.569221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531307, 28.426220, 20.544756>,  <36.614513, 28.037100, 20.503979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531307, 28.426220, 20.544756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109291, -0.080452, 0.990749,
		0.972001, 0.217230, -0.089583,
		-0.208013, 0.972800, 0.101941,
		36.468903, 28.718060, 20.575338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111862, 28.274088, 21.047804>,  <36.614513, 28.037100, 20.503979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111862, 28.274088, 21.047804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810246, 28.535975, 21.026735>,  <36.629276, 28.693106, 21.014095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810246, 28.535975, 21.026735>,  <37.111862, 28.274088, 21.047804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810246, 28.535975, 21.026735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028748, 0.047214, 0.998471,
		0.656202, 0.754399, -0.016780,
		-0.754038, 0.654716, -0.052670,
		36.584034, 28.732389, 21.010935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277744, 28.738262, 21.518909>,  <37.111862, 28.274088, 21.047804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277744, 28.738262, 21.518909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898060, 28.847960, 21.457214>,  <36.670250, 28.913778, 21.420198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898060, 28.847960, 21.457214>,  <37.277744, 28.738262, 21.518909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898060, 28.847960, 21.457214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126820, 0.115144, 0.985220,
		0.287951, 0.954742, -0.074516,
		-0.949211, 0.274245, -0.154236,
		36.613297, 28.930233, 21.410944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.337898, 31.972822, 26.358158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.018131, 31.951880, 26.118763>,  <37.826271, 31.939314, 25.975126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.018131, 31.951880, 26.118763>,  <38.337898, 31.972822, 26.358158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018131, 31.951880, 26.118763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522134, 0.553297, 0.649029,
		0.297159, 0.831336, -0.469655,
		-0.799420, -0.052358, -0.598486,
		37.778305, 31.936172, 25.939217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037712, 32.696484, 26.346350>,  <38.337898, 31.972822, 26.358158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037712, 32.696484, 26.346350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.746849, 32.430759, 26.277143>,  <37.572330, 32.271324, 26.235620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.746849, 32.430759, 26.277143>,  <38.037712, 32.696484, 26.346350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746849, 32.430759, 26.277143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518413, 0.366198, 0.772753,
		-0.449991, 0.651605, -0.610671,
		-0.727156, -0.664311, -0.173015,
		37.528702, 32.231464, 26.225239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514751, 32.988419, 26.705891>,  <38.037712, 32.696484, 26.346350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514751, 32.988419, 26.705891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.346809, 32.627052, 26.671097>,  <37.246044, 32.410233, 26.650221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.346809, 32.627052, 26.671097>,  <37.514751, 32.988419, 26.705891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346809, 32.627052, 26.671097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611143, 0.210565, 0.762998,
		-0.670986, 0.373511, -0.640521,
		-0.419859, -0.903411, -0.086983,
		37.220852, 32.356030, 26.645002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831463, 33.064072, 26.949501>,  <37.514751, 32.988419, 26.705891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831463, 33.064072, 26.949501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.871113, 32.667660, 26.913641>,  <36.894905, 32.429813, 26.892124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.871113, 32.667660, 26.913641>,  <36.831463, 33.064072, 26.949501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871113, 32.667660, 26.913641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691902, -0.133397, 0.709561,
		-0.715155, -0.008306, -0.698917,
		0.099127, -0.991028, -0.089653,
		36.900852, 32.370350, 26.886745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211544, 32.765377, 26.856161>,  <36.831463, 33.064072, 26.949501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211544, 32.765377, 26.856161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.440655, 32.488079, 27.031132>,  <36.578121, 32.321701, 27.136114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.440655, 32.488079, 27.031132>,  <36.211544, 32.765377, 26.856161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440655, 32.488079, 27.031132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621933, -0.019913, 0.782817,
		-0.533975, -0.720426, -0.442558,
		0.572774, -0.693246, 0.437424,
		36.612488, 32.280106, 27.162359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786102, 32.236435, 27.139956>,  <36.211544, 32.765377, 26.856161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786102, 32.236435, 27.139956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.112736, 32.209011, 27.369209>,  <36.308716, 32.192558, 27.506762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.112736, 32.209011, 27.369209>,  <35.786102, 32.236435, 27.139956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112736, 32.209011, 27.369209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569699, 0.064060, 0.819353,
		-0.092890, -0.995588, 0.013252,
		0.816588, -0.068559, 0.573136,
		36.357712, 32.188442, 27.541149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595581, 31.731565, 27.575687>,  <35.786102, 32.236435, 27.139956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595581, 31.731565, 27.575687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.908081, 31.908184, 27.752180>,  <36.095581, 32.014156, 27.858076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.908081, 31.908184, 27.752180>,  <35.595581, 31.731565, 27.575687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908081, 31.908184, 27.752180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482539, -0.021217, 0.875618,
		0.395989, -0.896987, 0.196488,
		0.781249, 0.441548, 0.441233,
		36.142456, 32.040649, 27.884550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758690, 31.286455, 28.176332>,  <35.595581, 31.731565, 27.575687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758690, 31.286455, 28.176332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.899433, 31.649220, 28.269032>,  <35.983879, 31.866879, 28.324652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.899433, 31.649220, 28.269032>,  <35.758690, 31.286455, 28.176332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899433, 31.649220, 28.269032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175227, -0.179387, 0.968047,
		0.919507, -0.381220, 0.095798,
		0.351855, 0.906913, 0.231747,
		36.004990, 31.921293, 28.338556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161926, 31.190634, 28.763775>,  <35.758690, 31.286455, 28.176332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161926, 31.190634, 28.763775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.112885, 31.587584, 28.758678>,  <36.083462, 31.825754, 28.755621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.112885, 31.587584, 28.758678>,  <36.161926, 31.190634, 28.763775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112885, 31.587584, 28.758678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217798, -0.014377, 0.975888,
		0.968263, 0.122420, 0.217900,
		-0.122601, 0.992374, -0.012743,
		36.076103, 31.885296, 28.754856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455765, 31.469191, 29.414589>,  <36.161926, 31.190634, 28.763775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455765, 31.469191, 29.414589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.228771, 31.770338, 29.281233>,  <36.092575, 31.951027, 29.201220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.228771, 31.770338, 29.281233>,  <36.455765, 31.469191, 29.414589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228771, 31.770338, 29.281233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346358, 0.149064, 0.926183,
		0.746991, 0.641068, 0.176170,
		-0.567486, 0.752869, -0.333389,
		36.058525, 31.996199, 29.181215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623394, 31.875996, 29.864910>,  <36.455765, 31.469191, 29.414589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623394, 31.875996, 29.864910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.286922, 32.008972, 29.694311>,  <36.085041, 32.088757, 29.591951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.286922, 32.008972, 29.694311>,  <36.623394, 31.875996, 29.864910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286922, 32.008972, 29.694311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423715, 0.084833, 0.901814,
		0.335983, 0.939300, 0.069501,
		-0.841178, 0.332443, -0.426498,
		36.034569, 32.108704, 29.566362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577801, 32.542652, 30.087551>,  <36.623394, 31.875996, 29.864910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577801, 32.542652, 30.087551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.216438, 32.390903, 30.007612>,  <35.999622, 32.299854, 29.959648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.216438, 32.390903, 30.007612>,  <36.577801, 32.542652, 30.087551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216438, 32.390903, 30.007612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263814, 0.124343, 0.956525,
		-0.338028, 0.916851, -0.212415,
		-0.903404, -0.379371, -0.199847,
		35.945415, 32.277092, 29.947659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073601, 32.991962, 30.423468>,  <36.577801, 32.542652, 30.087551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073601, 32.991962, 30.423468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.944672, 32.618221, 30.362679>,  <35.867313, 32.393978, 30.326204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.944672, 32.618221, 30.362679>,  <36.073601, 32.991962, 30.423468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944672, 32.618221, 30.362679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452477, 0.011056, 0.891708,
		-0.831488, 0.356183, -0.426335,
		-0.322325, -0.934351, -0.151972,
		35.847973, 32.337917, 30.317087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488804, 33.626701, 30.475765>,  <36.073601, 32.991962, 30.423468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488804, 33.626701, 30.475765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.340214, 33.990566, 30.550093>,  <35.251060, 34.208885, 30.594688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.340214, 33.990566, 30.550093>,  <35.488804, 33.626701, 30.475765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340214, 33.990566, 30.550093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107310, 0.156730, -0.981795,
		-0.922220, -0.384654, 0.039394,
		-0.371477, 0.909658, 0.185816,
		35.228771, 34.263462, 30.605837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932751, 33.667511, 29.997873>,  <35.488804, 33.626701, 30.475765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932751, 33.667511, 29.997873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.086926, 34.021561, 30.102173>,  <35.179428, 34.233990, 30.164753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.086926, 34.021561, 30.102173>,  <34.932751, 33.667511, 29.997873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086926, 34.021561, 30.102173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157152, 0.215487, -0.963778,
		-0.909254, 0.412451, -0.056044,
		0.385435, 0.885127, 0.260750,
		35.202557, 34.287098, 30.180397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489601, 34.247967, 29.808771>,  <34.932751, 33.667511, 29.997873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489601, 34.247967, 29.808771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.853004, 34.415085, 29.811665>,  <35.071049, 34.515354, 29.813400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.853004, 34.415085, 29.811665>,  <34.489601, 34.247967, 29.808771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853004, 34.415085, 29.811665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142709, 0.326506, -0.934360,
		-0.392734, 0.847845, 0.356258,
		0.908512, 0.417796, 0.007235,
		35.125557, 34.540424, 29.813835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476036, 34.969227, 29.572397>,  <34.489601, 34.247967, 29.808771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476036, 34.969227, 29.572397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847736, 34.836693, 29.507023>,  <35.070755, 34.757172, 29.467798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847736, 34.836693, 29.507023>,  <34.476036, 34.969227, 29.572397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847736, 34.836693, 29.507023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036181, 0.358634, -0.932777,
		0.367671, 0.872698, 0.321273,
		0.929252, -0.331331, -0.163434,
		35.126511, 34.737293, 29.457993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694000, 35.453957, 29.021601>,  <34.476036, 34.969227, 29.572397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694000, 35.453957, 29.021601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.964043, 35.158875, 29.019720>,  <35.126068, 34.981827, 29.018591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.964043, 35.158875, 29.019720>,  <34.694000, 35.453957, 29.021601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964043, 35.158875, 29.019720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165845, 0.157978, -0.973416,
		0.718835, 0.656381, 0.228997,
		0.675109, -0.737703, -0.004703,
		35.166576, 34.937565, 29.018309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171371, 35.590973, 28.527979>,  <34.694000, 35.453957, 29.021601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171371, 35.590973, 28.527979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.171162, 35.193176, 28.569901>,  <35.171036, 34.954498, 28.595055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.171162, 35.193176, 28.569901>,  <35.171371, 35.590973, 28.527979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171162, 35.193176, 28.569901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125623, -0.103909, -0.986621,
		0.992078, -0.013687, -0.124876,
		-0.000528, -0.994492, 0.104805,
		35.171001, 34.894829, 28.601341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570866, 35.317982, 28.005074>,  <35.171371, 35.590973, 28.527979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570866, 35.317982, 28.005074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.329426, 35.022331, 28.124647>,  <35.184563, 34.844940, 28.196392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.329426, 35.022331, 28.124647>,  <35.570866, 35.317982, 28.005074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329426, 35.022331, 28.124647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194998, -0.226697, -0.954245,
		0.773074, -0.634274, -0.007294,
		-0.603600, -0.739124, 0.298935,
		35.148346, 34.800594, 28.214327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788769, 34.750305, 27.552956>,  <35.570866, 35.317982, 28.005074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788769, 34.750305, 27.552956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.439697, 34.624954, 27.702744>,  <35.230255, 34.549744, 27.792616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.439697, 34.624954, 27.702744>,  <35.788769, 34.750305, 27.552956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439697, 34.624954, 27.702744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298683, -0.264106, -0.917080,
		0.386293, -0.912163, 0.136879,
		-0.872678, -0.313378, 0.374470,
		35.177895, 34.530941, 27.815084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745117, 34.185696, 27.269367>,  <35.788769, 34.750305, 27.552956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745117, 34.185696, 27.269367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.367802, 34.240482, 27.390326>,  <35.141411, 34.273354, 27.462900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.367802, 34.240482, 27.390326>,  <35.745117, 34.185696, 27.269367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367802, 34.240482, 27.390326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331582, -0.344607, -0.878236,
		-0.016084, -0.928701, 0.370481,
		-0.943290, 0.136970, 0.302398,
		35.084816, 34.281574, 27.481045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385143, 33.661587, 27.086693>,  <35.745117, 34.185696, 27.269367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385143, 33.661587, 27.086693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.098064, 33.936886, 27.129082>,  <34.925816, 34.102066, 27.154514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.098064, 33.936886, 27.129082>,  <35.385143, 33.661587, 27.086693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098064, 33.936886, 27.129082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435499, -0.324870, -0.839523,
		-0.543372, -0.648672, 0.532889,
		-0.717695, 0.688247, 0.105971,
		34.882755, 34.143360, 27.160873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854465, 33.237255, 27.060602>,  <35.385143, 33.661587, 27.086693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854465, 33.237255, 27.060602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.723179, 33.603447, 26.967505>,  <34.644409, 33.823162, 26.911646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.723179, 33.603447, 26.967505>,  <34.854465, 33.237255, 27.060602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723179, 33.603447, 26.967505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316407, -0.338709, -0.886094,
		-0.890035, -0.217186, 0.400833,
		-0.328213, 0.915482, -0.232743,
		34.624714, 33.878090, 26.897682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197952, 33.159416, 26.880808>,  <34.854465, 33.237255, 27.060602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197952, 33.159416, 26.880808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.333424, 33.497543, 26.715525>,  <34.414707, 33.700420, 26.616354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.333424, 33.497543, 26.715525>,  <34.197952, 33.159416, 26.880808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333424, 33.497543, 26.715525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256353, -0.339647, -0.904944,
		-0.905307, 0.412411, 0.101669,
		0.338677, 0.845315, -0.413208,
		34.435028, 33.751137, 26.591562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688396, 33.390553, 26.424049>,  <34.197952, 33.159416, 26.880808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688396, 33.390553, 26.424049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.015362, 33.583267, 26.297737>,  <34.211540, 33.698895, 26.221949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.015362, 33.583267, 26.297737>,  <33.688396, 33.390553, 26.424049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015362, 33.583267, 26.297737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127160, -0.383750, -0.914640,
		-0.561843, 0.787793, -0.252418,
		0.817412, 0.481787, -0.315783,
		34.260586, 33.727802, 26.203003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519466, 33.679272, 25.753975>,  <33.688396, 33.390553, 26.424049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519466, 33.679272, 25.753975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.918907, 33.659443, 25.746582>,  <34.158569, 33.647545, 25.742147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.918907, 33.659443, 25.746582>,  <33.519466, 33.679272, 25.753975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918907, 33.659443, 25.746582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035307, -0.364274, -0.930623,
		0.039404, 0.929972, -0.365514,
		0.998599, -0.049576, -0.018480,
		34.218487, 33.644569, 25.741037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688435, 33.796730, 25.086559>,  <33.519466, 33.679272, 25.753975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688435, 33.796730, 25.086559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.029224, 33.628670, 25.211533>,  <34.233700, 33.527836, 25.286516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.029224, 33.628670, 25.211533>,  <33.688435, 33.796730, 25.086559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029224, 33.628670, 25.211533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092503, -0.466548, -0.879645,
		0.515346, 0.778337, -0.358623,
		0.851975, -0.420148, 0.312433,
		34.284817, 33.502625, 25.305262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899773, 34.463619, 24.808748>,  <33.688435, 33.796730, 25.086559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899773, 34.463619, 24.808748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.519810, 34.361427, 24.736748>,  <33.291832, 34.300114, 24.693548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.519810, 34.361427, 24.736748>,  <33.899773, 34.463619, 24.808748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519810, 34.361427, 24.736748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139345, -0.169305, 0.975663,
		-0.279733, 0.951876, 0.125225,
		-0.949912, -0.255476, -0.180000,
		33.234837, 34.284786, 24.682747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614407, 34.830456, 25.260963>,  <33.899773, 34.463619, 24.808748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614407, 34.830456, 25.260963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.368610, 34.530495, 25.162941>,  <33.221134, 34.350517, 25.104128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.368610, 34.530495, 25.162941>,  <33.614407, 34.830456, 25.260963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368610, 34.530495, 25.162941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337786, -0.030625, 0.940725,
		-0.712955, 0.660841, -0.234487,
		-0.614488, -0.749901, -0.245057,
		33.184265, 34.305523, 25.089424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229031, 34.856697, 25.860903>,  <33.614407, 34.830456, 25.260963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229031, 34.856697, 25.860903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.046570, 34.539101, 25.700151>,  <32.937096, 34.348541, 25.603701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.046570, 34.539101, 25.700151>,  <33.229031, 34.856697, 25.860903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046570, 34.539101, 25.700151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584954, -0.072805, 0.807792,
		-0.670640, 0.603552, -0.431239,
		-0.456148, -0.793993, -0.401877,
		32.909725, 34.300903, 25.579588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564297, 34.999420, 25.819792>,  <33.229031, 34.856697, 25.860903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564297, 34.999420, 25.819792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.587811, 34.600124, 25.823151>,  <32.601917, 34.360546, 25.825167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.587811, 34.600124, 25.823151>,  <32.564297, 34.999420, 25.819792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587811, 34.600124, 25.823151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615365, -0.029610, 0.787686,
		-0.786048, -0.051468, -0.616020,
		0.058781, -0.998236, 0.008397,
		32.605446, 34.300655, 25.825670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931429, 34.832214, 25.910894>,  <32.564297, 34.999420, 25.819792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931429, 34.832214, 25.910894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.135246, 34.499416, 25.998667>,  <32.257538, 34.299736, 26.051331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.135246, 34.499416, 25.998667>,  <31.931429, 34.832214, 25.910894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135246, 34.499416, 25.998667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485072, -0.067124, 0.871894,
		-0.710683, -0.550707, -0.437780,
		0.509544, -0.831995, 0.219429,
		32.288109, 34.249817, 26.064495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348545, 34.376320, 26.124786>,  <31.931429, 34.832214, 25.910894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348545, 34.376320, 26.124786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.703939, 34.231537, 26.237627>,  <31.917177, 34.144669, 26.305330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.703939, 34.231537, 26.237627>,  <31.348545, 34.376320, 26.124786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703939, 34.231537, 26.237627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384284, -0.250832, 0.888487,
		-0.250832, -0.897815, -0.361955,
		-0.888487, 0.361955, -0.282100,
		31.970486, 34.122952, 26.322256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348097, 33.684677, 26.159109>,  <31.348545, 34.376320, 26.124786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348097, 33.684677, 26.159109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.605345, 33.852085, 26.415621>,  <31.759693, 33.952530, 26.569527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.605345, 33.852085, 26.415621>,  <31.348097, 33.684677, 26.159109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605345, 33.852085, 26.415621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540639, -0.344916, 0.767295,
		0.542314, -0.840164, 0.004444,
		0.643121, 0.418518, 0.641278,
		31.798281, 33.977642, 26.608004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252886, 33.339806, 26.736000>,  <31.348097, 33.684677, 26.159109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252886, 33.339806, 26.736000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.484125, 33.617878, 26.906891>,  <31.622869, 33.784721, 27.009426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.484125, 33.617878, 26.906891>,  <31.252886, 33.339806, 26.736000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484125, 33.617878, 26.906891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422928, -0.192481, 0.885485,
		0.697808, -0.692582, 0.182740,
		0.578097, 0.695184, 0.427227,
		31.657555, 33.826431, 27.035059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535435, 33.071640, 27.387495>,  <31.252886, 33.339806, 26.736000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535435, 33.071640, 27.387495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.519176, 33.470982, 27.403643>,  <31.509422, 33.710587, 27.413330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.519176, 33.470982, 27.403643>,  <31.535435, 33.071640, 27.387495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519176, 33.470982, 27.403643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596789, -0.056660, 0.800395,
		0.801368, 0.008441, 0.598112,
		-0.040645, 0.998358, 0.040368,
		31.506983, 33.770489, 27.415752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745640, 33.129322, 28.033741>,  <31.535435, 33.071640, 27.387495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745640, 33.129322, 28.033741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.587742, 33.483570, 27.935875>,  <31.493004, 33.696117, 27.877155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.587742, 33.483570, 27.935875>,  <31.745640, 33.129322, 28.033741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587742, 33.483570, 27.935875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488765, 0.023076, 0.872110,
		0.778002, 0.463843, 0.423749,
		-0.394743, 0.885617, -0.244663,
		31.469318, 33.749256, 27.862476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799629, 33.568714, 28.648333>,  <31.745640, 33.129322, 28.033741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799629, 33.568714, 28.648333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.497229, 33.725216, 28.438425>,  <31.315788, 33.819115, 28.312481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.497229, 33.725216, 28.438425>,  <31.799629, 33.568714, 28.648333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497229, 33.725216, 28.438425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596769, -0.082583, 0.798152,
		0.268942, 0.916570, 0.295920,
		-0.756000, 0.391253, -0.524771,
		31.270428, 33.842590, 28.280994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618359, 34.020752, 29.115566>,  <31.799629, 33.568714, 28.648333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618359, 34.020752, 29.115566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.333858, 33.935200, 28.847723>,  <31.163158, 33.883869, 28.687017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.333858, 33.935200, 28.847723>,  <31.618359, 34.020752, 29.115566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333858, 33.935200, 28.847723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632330, -0.221429, 0.742380,
		-0.307050, 0.951433, 0.022250,
		-0.711252, -0.213878, -0.669609,
		31.120483, 33.871037, 28.646841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.181900, 35.375874, 21.098057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946217, 35.055325, 21.139315>,  <33.804806, 34.862995, 21.164070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946217, 35.055325, 21.139315>,  <34.181900, 35.375874, 21.098057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946217, 35.055325, 21.139315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502205, 0.463231, 0.730210,
		-0.632949, 0.378446, -0.675392,
		-0.589207, -0.801371, 0.103144,
		33.769455, 34.814915, 21.170258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539005, 35.627529, 21.407494>,  <34.181900, 35.375874, 21.098057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539005, 35.627529, 21.407494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526260, 35.234234, 21.479294>,  <33.518616, 34.998257, 21.522375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526260, 35.234234, 21.479294>,  <33.539005, 35.627529, 21.407494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526260, 35.234234, 21.479294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345663, 0.179351, 0.921060,
		-0.937818, -0.032703, -0.345584,
		-0.031859, -0.983242, 0.179503,
		33.516705, 34.939262, 21.533144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903751, 35.591759, 21.754858>,  <33.539005, 35.627529, 21.407494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903751, 35.591759, 21.754858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103035, 35.253666, 21.832180>,  <33.222607, 35.050808, 21.878572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103035, 35.253666, 21.832180>,  <32.903751, 35.591759, 21.754858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103035, 35.253666, 21.832180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376213, -0.009868, 0.926480,
		-0.781185, -0.534306, -0.322904,
		0.498210, -0.845233, 0.193305,
		33.252499, 35.000095, 21.890171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465137, 35.175983, 22.152033>,  <32.903751, 35.591759, 21.754858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465137, 35.175983, 22.152033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824142, 35.024746, 22.242825>,  <33.039547, 34.934006, 22.297300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824142, 35.024746, 22.242825>,  <32.465137, 35.175983, 22.152033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824142, 35.024746, 22.242825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328754, -0.230591, 0.915832,
		-0.293932, -0.896589, -0.331258,
		0.897510, -0.378095, 0.226980,
		33.093395, 34.911320, 22.310919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295528, 34.623020, 22.444433>,  <32.465137, 35.175983, 22.152033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295528, 34.623020, 22.444433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671616, 34.680840, 22.567781>,  <32.897266, 34.715530, 22.641790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671616, 34.680840, 22.567781>,  <32.295528, 34.623020, 22.444433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671616, 34.680840, 22.567781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257913, -0.289121, 0.921895,
		0.222418, -0.946316, -0.234555,
		0.940219, 0.144551, 0.308373,
		32.953682, 34.724205, 22.660294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644688, 33.967995, 22.732059>,  <32.295528, 34.623020, 22.444433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644688, 33.967995, 22.732059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865120, 34.271133, 22.871763>,  <32.997379, 34.453014, 22.955585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865120, 34.271133, 22.871763>,  <32.644688, 33.967995, 22.732059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865120, 34.271133, 22.871763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028912, -0.400955, 0.915641,
		0.833951, -0.514690, -0.199047,
		0.551081, 0.757845, 0.349258,
		33.030445, 34.498486, 22.976540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967613, 33.699234, 23.242111>,  <32.644688, 33.967995, 22.732059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967613, 33.699234, 23.242111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043495, 34.079205, 23.341425>,  <33.089024, 34.307186, 23.401014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043495, 34.079205, 23.341425>,  <32.967613, 33.699234, 23.242111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043495, 34.079205, 23.341425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142583, -0.223543, 0.964209,
		0.971434, -0.218314, 0.093037,
		0.189702, 0.949930, 0.248285,
		33.100407, 34.364185, 23.415911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523891, 33.641594, 23.746078>,  <32.967613, 33.699234, 23.242111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523891, 33.641594, 23.746078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349186, 33.996758, 23.803844>,  <33.244362, 34.209854, 23.838503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349186, 33.996758, 23.803844>,  <33.523891, 33.641594, 23.746078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349186, 33.996758, 23.803844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046738, -0.137920, 0.989340,
		0.898360, 0.438859, 0.018740,
		-0.436765, 0.887908, 0.144413,
		33.218155, 34.263130, 23.847168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913216, 33.936214, 24.290392>,  <33.523891, 33.641594, 23.746078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913216, 33.936214, 24.290392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559826, 34.123062, 24.276131>,  <33.347790, 34.235168, 24.267574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559826, 34.123062, 24.276131>,  <33.913216, 33.936214, 24.290392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559826, 34.123062, 24.276131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089919, -0.094388, 0.991466,
		0.459766, 0.879143, 0.125392,
		-0.883476, 0.467117, -0.035655,
		33.294785, 34.263199, 24.265434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621529, 34.190697, 24.509520>,  <33.913216, 33.936214, 24.290392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621529, 34.190697, 24.509520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662739, 33.851933, 24.718184>,  <34.687466, 33.648674, 24.843382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662739, 33.851933, 24.718184>,  <34.621529, 34.190697, 24.509520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662739, 33.851933, 24.718184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547718, -0.389476, -0.740482,
		0.830296, 0.362009, 0.423743,
		0.103024, -0.846911, 0.521659,
		34.693645, 33.597858, 24.874681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326515, 34.027451, 24.462448>,  <34.621529, 34.190697, 24.509520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326515, 34.027451, 24.462448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120434, 33.686153, 24.494810>,  <34.996784, 33.481377, 24.514227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120434, 33.686153, 24.494810>,  <35.326515, 34.027451, 24.462448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120434, 33.686153, 24.494810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446825, -0.347953, -0.824182,
		0.731374, -0.388475, 0.560516,
		-0.515208, -0.853238, 0.080904,
		34.965870, 33.430183, 24.519081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823162, 33.464283, 24.523897>,  <35.326515, 34.027451, 24.462448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823162, 33.464283, 24.523897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483673, 33.305847, 24.383738>,  <35.279980, 33.210785, 24.299643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483673, 33.305847, 24.383738>,  <35.823162, 33.464283, 24.523897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483673, 33.305847, 24.383738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509873, -0.437048, -0.740958,
		0.140348, -0.807526, 0.572890,
		-0.848724, -0.396093, -0.350397,
		35.229057, 33.187019, 24.278618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077904, 33.120037, 23.999340>,  <35.823162, 33.464283, 24.523897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077904, 33.120037, 23.999340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685276, 33.054127, 23.960598>,  <35.449699, 33.014580, 23.937353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685276, 33.054127, 23.960598>,  <36.077904, 33.120037, 23.999340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685276, 33.054127, 23.960598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140626, -0.279418, -0.949816,
		0.129441, -0.945926, 0.297438,
		-0.981564, -0.164773, -0.096854,
		35.390808, 33.004696, 23.931541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156628, 32.498238, 23.711143>,  <36.077904, 33.120037, 23.999340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156628, 32.498238, 23.711143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800056, 32.656017, 23.621916>,  <35.586113, 32.750683, 23.568378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800056, 32.656017, 23.621916>,  <36.156628, 32.498238, 23.711143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800056, 32.656017, 23.621916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086733, -0.334644, -0.938345,
		-0.444777, -0.855818, 0.264101,
		-0.891432, 0.394448, -0.223070,
		35.532627, 32.774353, 23.554995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740097, 31.966715, 23.272280>,  <36.156628, 32.498238, 23.711143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740097, 31.966715, 23.272280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579491, 32.324406, 23.193146>,  <35.483128, 32.539021, 23.145666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579491, 32.324406, 23.193146>,  <35.740097, 31.966715, 23.272280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579491, 32.324406, 23.193146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040450, -0.233116, -0.971607,
		-0.914957, -0.382116, 0.129772,
		-0.401519, 0.894228, -0.197834,
		35.459034, 32.592674, 23.133795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285759, 31.818939, 22.761772>,  <35.740097, 31.966715, 23.272280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285759, 31.818939, 22.761772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307034, 32.217926, 22.742882>,  <35.319798, 32.457317, 22.731548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307034, 32.217926, 22.742882>,  <35.285759, 31.818939, 22.761772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307034, 32.217926, 22.742882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095885, -0.052177, -0.994024,
		-0.993970, 0.048344, -0.098417,
		0.053190, 0.997467, -0.047226,
		35.322990, 32.517166, 22.728714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757568, 32.072887, 22.192587>,  <35.285759, 31.818939, 22.761772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757568, 32.072887, 22.192587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039532, 32.349667, 22.254972>,  <35.208710, 32.515732, 22.292404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039532, 32.349667, 22.254972>,  <34.757568, 32.072887, 22.192587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039532, 32.349667, 22.254972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220925, -0.005238, -0.975277,
		-0.674020, 0.721932, -0.156560,
		0.704904, 0.691944, 0.155963,
		35.251003, 32.557251, 22.301762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721069, 32.456997, 21.507776>,  <34.757568, 32.072887, 22.192587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721069, 32.456997, 21.507776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070518, 32.493252, 21.699011>,  <35.280190, 32.515003, 21.813751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070518, 32.493252, 21.699011>,  <34.721069, 32.456997, 21.507776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070518, 32.493252, 21.699011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485002, -0.082560, -0.870607,
		-0.039436, 0.992456, -0.116084,
		0.873623, 0.090634, 0.478088,
		35.332607, 32.520443, 21.842438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096561, 32.986195, 21.223431>,  <34.721069, 32.456997, 21.507776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096561, 32.986195, 21.223431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364983, 32.749889, 21.402622>,  <35.526035, 32.608105, 21.510138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364983, 32.749889, 21.402622>,  <35.096561, 32.986195, 21.223431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364983, 32.749889, 21.402622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533150, -0.035375, -0.845281,
		0.515211, 0.806067, 0.291228,
		0.671051, -0.590766, 0.447980,
		35.566299, 32.572659, 21.537016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778713, 33.318058, 21.035271>,  <35.096561, 32.986195, 21.223431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778713, 33.318058, 21.035271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893192, 32.951607, 21.147552>,  <35.961880, 32.731735, 21.214922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893192, 32.951607, 21.147552>,  <35.778713, 33.318058, 21.035271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893192, 32.951607, 21.147552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633632, -0.038797, -0.772661,
		0.718749, 0.398999, 0.569385,
		0.286200, -0.916130, 0.280704,
		35.979053, 32.676769, 21.231764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426559, 33.299980, 21.104027>,  <35.778713, 33.318058, 21.035271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426559, 33.299980, 21.104027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334618, 32.915779, 21.041298>,  <36.279453, 32.685257, 21.003660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334618, 32.915779, 21.041298>,  <36.426559, 33.299980, 21.104027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334618, 32.915779, 21.041298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610367, -0.016765, -0.791941,
		0.758035, -0.277754, 0.590115,
		-0.229858, -0.960506, -0.156823,
		36.265659, 32.627628, 20.994251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967003, 33.157761, 20.643129>,  <36.426559, 33.299980, 21.104027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967003, 33.157761, 20.643129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718311, 32.845222, 20.621380>,  <36.569096, 32.657700, 20.608330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718311, 32.845222, 20.621380>,  <36.967003, 33.157761, 20.643129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718311, 32.845222, 20.621380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254180, -0.135619, -0.957601,
		0.740840, -0.609190, 0.282920,
		-0.621730, -0.781342, -0.054372,
		36.531792, 32.610821, 20.605068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318577, 32.521629, 20.365246>,  <36.967003, 33.157761, 20.643129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318577, 32.521629, 20.365246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940716, 32.429256, 20.272034>,  <36.714001, 32.373833, 20.216106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940716, 32.429256, 20.272034>,  <37.318577, 32.521629, 20.365246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940716, 32.429256, 20.272034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282817, -0.213224, -0.935174,
		0.166277, -0.949318, 0.266735,
		-0.944651, -0.230935, -0.233029,
		36.657322, 32.359978, 20.202126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.695168, 27.255754, 19.266817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.679054, 27.645918, 19.180140>,  <33.669384, 27.880016, 19.128134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.679054, 27.645918, 19.180140>,  <33.695168, 27.255754, 19.266817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679054, 27.645918, 19.180140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161012, 0.207697, 0.964851,
		0.986130, 0.073761, 0.148685,
		-0.040287, 0.975408, -0.216692,
		33.666969, 27.938540, 19.115131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259071, 27.609684, 19.659191>,  <33.695168, 27.255754, 19.266817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259071, 27.609684, 19.659191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.957378, 27.856743, 19.570063>,  <33.776363, 28.004978, 19.516584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.957378, 27.856743, 19.570063>,  <34.259071, 27.609684, 19.659191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957378, 27.856743, 19.570063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049245, 0.285187, 0.957206,
		0.654760, 0.732927, -0.184681,
		-0.754230, 0.617646, -0.222822,
		33.731110, 28.042036, 19.503216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472191, 28.120331, 20.061680>,  <34.259071, 27.609684, 19.659191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472191, 28.120331, 20.061680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.076702, 28.147247, 20.008150>,  <33.839409, 28.163397, 19.976032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.076702, 28.147247, 20.008150>,  <34.472191, 28.120331, 20.061680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076702, 28.147247, 20.008150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098880, 0.377904, 0.920549,
		0.112516, 0.923396, -0.366987,
		-0.988718, 0.067289, -0.133826,
		33.780087, 28.167435, 19.968002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310905, 28.747972, 20.259943>,  <34.472191, 28.120331, 20.061680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310905, 28.747972, 20.259943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.960850, 28.556015, 20.284739>,  <33.750816, 28.440840, 20.299616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.960850, 28.556015, 20.284739>,  <34.310905, 28.747972, 20.259943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960850, 28.556015, 20.284739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147390, 0.386386, 0.910485,
		-0.460886, 0.787660, -0.408871,
		-0.875135, -0.479893, 0.061987,
		33.698311, 28.412046, 20.303335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908909, 29.241734, 20.641479>,  <34.310905, 28.747972, 20.259943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908909, 29.241734, 20.641479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.710312, 28.895395, 20.666153>,  <33.591152, 28.687592, 20.680956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.710312, 28.895395, 20.666153>,  <33.908909, 29.241734, 20.641479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710312, 28.895395, 20.666153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306384, 0.241287, 0.920820,
		-0.812171, 0.438284, -0.385079,
		-0.496495, -0.865845, 0.061683,
		33.561363, 28.635641, 20.684658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224785, 29.365086, 20.767172>,  <33.908909, 29.241734, 20.641479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224785, 29.365086, 20.767172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.262455, 28.992952, 20.908941>,  <33.285057, 28.769672, 20.994003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.262455, 28.992952, 20.908941>,  <33.224785, 29.365086, 20.767172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262455, 28.992952, 20.908941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531522, 0.254035, 0.808054,
		-0.841793, -0.264480, -0.470568,
		0.094174, -0.930331, 0.354422,
		33.290707, 28.713854, 21.015268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467300, 29.167488, 21.007862>,  <33.224785, 29.365086, 20.767172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467300, 29.167488, 21.007862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.733341, 28.929066, 21.187798>,  <32.892967, 28.786013, 21.295759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.733341, 28.929066, 21.187798>,  <32.467300, 29.167488, 21.007862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733341, 28.929066, 21.187798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502115, 0.088916, 0.860218,
		-0.552736, -0.798004, -0.240151,
		0.665104, -0.596056, 0.449837,
		32.932873, 28.750248, 21.322748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082939, 28.719881, 21.445679>,  <32.467300, 29.167488, 21.007862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082939, 28.719881, 21.445679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.443939, 28.674816, 21.611956>,  <32.660538, 28.647778, 21.711721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.443939, 28.674816, 21.611956>,  <32.082939, 28.719881, 21.445679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443939, 28.674816, 21.611956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394997, 0.168196, 0.903154,
		-0.171671, -0.979294, 0.107295,
		0.902500, -0.112664, 0.415692,
		32.714691, 28.641018, 21.736664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975840, 28.305614, 21.986374>,  <32.082939, 28.719881, 21.445679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975840, 28.305614, 21.986374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.304363, 28.502327, 22.102028>,  <32.501476, 28.620354, 22.171421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.304363, 28.502327, 22.102028>,  <31.975840, 28.305614, 21.986374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304363, 28.502327, 22.102028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359732, 0.053091, 0.931544,
		0.442765, -0.869099, 0.220513,
		0.821311, 0.491781, 0.289136,
		32.550758, 28.649860, 22.188768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146687, 27.965717, 22.638163>,  <31.975840, 28.305614, 21.986374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146687, 27.965717, 22.638163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.339489, 28.315620, 22.618292>,  <32.455170, 28.525562, 22.606369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.339489, 28.315620, 22.618292>,  <32.146687, 27.965717, 22.638163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339489, 28.315620, 22.618292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090794, 0.106263, 0.990184,
		0.871451, -0.472764, 0.130642,
		0.482006, 0.874758, -0.049679,
		32.484089, 28.578049, 22.603388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530731, 27.842773, 23.286392>,  <32.146687, 27.965717, 22.638163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530731, 27.842773, 23.286392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.566875, 28.226194, 23.178307>,  <32.588562, 28.456247, 23.113455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.566875, 28.226194, 23.178307>,  <32.530731, 27.842773, 23.286392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566875, 28.226194, 23.178307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021056, 0.269424, 0.962792,
		0.995687, -0.092686, 0.004161,
		0.090359, 0.958551, -0.270213,
		32.593983, 28.513760, 23.097242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218674, 28.129347, 23.479620>,  <32.530731, 27.842773, 23.286392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218674, 28.129347, 23.479620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.958008, 28.432684, 23.485926>,  <32.801609, 28.614685, 23.489710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.958008, 28.432684, 23.485926>,  <33.218674, 28.129347, 23.479620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958008, 28.432684, 23.485926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248806, 0.194081, 0.948909,
		0.716537, 0.622295, -0.315156,
		-0.651667, 0.758342, 0.015764,
		32.762508, 28.660187, 23.490656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496937, 28.565863, 23.999357>,  <33.218674, 28.129347, 23.479620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496937, 28.565863, 23.999357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.123837, 28.697588, 23.940674>,  <32.899975, 28.776623, 23.905464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.123837, 28.697588, 23.940674>,  <33.496937, 28.565863, 23.999357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123837, 28.697588, 23.940674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027731, 0.340195, 0.939946,
		0.359448, 0.880806, -0.308186,
		-0.932753, 0.329315, -0.146708,
		32.844009, 28.796383, 23.896662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474888, 29.136616, 24.356846>,  <33.496937, 28.565863, 23.999357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474888, 29.136616, 24.356846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.084259, 29.071411, 24.300661>,  <32.849880, 29.032290, 24.266951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.084259, 29.071411, 24.300661>,  <33.474888, 29.136616, 24.356846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084259, 29.071411, 24.300661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195068, 0.395140, 0.897671,
		-0.090827, 0.904042, -0.417681,
		-0.976575, -0.163009, -0.140460,
		32.791286, 29.022509, 24.258524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975574, 29.584652, 24.718464>,  <33.474888, 29.136616, 24.356846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975574, 29.584652, 24.718464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.289742, 29.356020, 24.813477>,  <34.478241, 29.218842, 24.870485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.289742, 29.356020, 24.813477>,  <33.975574, 29.584652, 24.718464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289742, 29.356020, 24.813477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301008, 0.017383, -0.953463,
		0.540852, 0.820362, 0.185703,
		0.785413, -0.571581, 0.237533,
		34.525364, 29.184546, 24.884737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457321, 29.983772, 24.352932>,  <33.975574, 29.584652, 24.718464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457321, 29.983772, 24.352932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.602779, 29.624020, 24.449987>,  <34.690056, 29.408167, 24.508221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.602779, 29.624020, 24.449987>,  <34.457321, 29.983772, 24.352932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602779, 29.624020, 24.449987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557306, 0.001333, -0.830306,
		0.746440, 0.437159, 0.501716,
		0.363645, -0.899383, 0.242637,
		34.711872, 29.354204, 24.522778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240337, 29.871122, 24.510349>,  <34.457321, 29.983772, 24.352932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240337, 29.871122, 24.510349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.093426, 29.524162, 24.376051>,  <35.005280, 29.315987, 24.295471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.093426, 29.524162, 24.376051>,  <35.240337, 29.871122, 24.510349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093426, 29.524162, 24.376051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697556, -0.018102, -0.716301,
		0.615242, -0.497283, 0.611709,
		-0.367278, -0.867400, -0.335745,
		34.983242, 29.263943, 24.275328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808487, 29.614399, 24.396782>,  <35.240337, 29.871122, 24.510349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808487, 29.614399, 24.396782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.576427, 29.344130, 24.214840>,  <35.437191, 29.181967, 24.105675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.576427, 29.344130, 24.214840>,  <35.808487, 29.614399, 24.396782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576427, 29.344130, 24.214840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710618, -0.146955, -0.688060,
		0.398061, -0.722404, 0.565402,
		-0.580146, -0.675675, -0.454856,
		35.402382, 29.141426, 24.078382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219414, 29.260494, 24.054573>,  <35.808487, 29.614399, 24.396782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219414, 29.260494, 24.054573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899693, 29.114140, 23.863890>,  <35.707859, 29.026327, 23.749479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899693, 29.114140, 23.863890>,  <36.219414, 29.260494, 24.054573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899693, 29.114140, 23.863890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533537, -0.067063, -0.843114,
		0.276514, -0.928240, 0.248818,
		-0.799298, -0.365886, -0.476707,
		35.659904, 29.004374, 23.720879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556618, 28.649820, 23.636337>,  <36.219414, 29.260494, 24.054573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556618, 28.649820, 23.636337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.211456, 28.770102, 23.473869>,  <36.004360, 28.842270, 23.376389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.211456, 28.770102, 23.473869>,  <36.556618, 28.649820, 23.636337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211456, 28.770102, 23.473869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413433, -0.042168, -0.909558,
		-0.290633, -0.952785, -0.087934,
		-0.862905, 0.300703, -0.406168,
		35.952583, 28.860312, 23.352018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518890, 28.193857, 23.133142>,  <36.556618, 28.649820, 23.636337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518890, 28.193857, 23.133142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.265842, 28.491232, 23.046335>,  <36.114014, 28.669657, 22.994251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.265842, 28.491232, 23.046335>,  <36.518890, 28.193857, 23.133142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265842, 28.491232, 23.046335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104730, -0.195521, -0.975091,
		-0.767352, -0.639586, 0.045829,
		-0.632615, 0.743439, -0.217018,
		36.076057, 28.714264, 22.981230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140713, 28.040661, 22.446802>,  <36.518890, 28.193857, 23.133142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140713, 28.040661, 22.446802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113483, 28.439573, 22.458075>,  <36.097145, 28.678921, 22.464838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113483, 28.439573, 22.458075>,  <36.140713, 28.040661, 22.446802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113483, 28.439573, 22.458075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096552, 0.034701, -0.994723,
		-0.992997, -0.064989, -0.098652,
		-0.068069, 0.997282, 0.028183,
		36.093063, 28.738758, 22.466530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583824, 28.258507, 22.058865>,  <36.140713, 28.040661, 22.446802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583824, 28.258507, 22.058865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805790, 28.590483, 22.081739>,  <35.938969, 28.789669, 22.095465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805790, 28.590483, 22.081739>,  <35.583824, 28.258507, 22.058865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805790, 28.590483, 22.081739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015810, 0.079248, -0.996729,
		-0.831757, 0.552195, 0.057097,
		0.554914, 0.829940, 0.057185,
		35.972263, 28.839464, 22.098894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279694, 28.613604, 21.556089>,  <35.583824, 28.258507, 22.058865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279694, 28.613604, 21.556089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644825, 28.753984, 21.639582>,  <35.863903, 28.838213, 21.689676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644825, 28.753984, 21.639582>,  <35.279694, 28.613604, 21.556089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644825, 28.753984, 21.639582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208447, 0.039051, -0.977254,
		-0.351122, 0.935578, -0.037508,
		0.912833, 0.350953, 0.208730,
		35.918674, 28.859270, 21.702200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375610, 29.206026, 21.198357>,  <35.279694, 28.613604, 21.556089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375610, 29.206026, 21.198357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761772, 29.127859, 21.267410>,  <35.993469, 29.080959, 21.308842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761772, 29.127859, 21.267410>,  <35.375610, 29.206026, 21.198357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761772, 29.127859, 21.267410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185467, 0.049260, -0.981415,
		0.183279, 0.979483, 0.083799,
		0.965407, -0.195415, 0.172634,
		36.051395, 29.069235, 21.319201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729694, 29.733541, 20.956675>,  <35.375610, 29.206026, 21.198357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729694, 29.733541, 20.956675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.972733, 29.416496, 20.977049>,  <36.118557, 29.226269, 20.989273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.972733, 29.416496, 20.977049>,  <35.729694, 29.733541, 20.956675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972733, 29.416496, 20.977049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263268, 0.140482, -0.954439,
		0.749344, 0.593323, 0.294026,
		0.607596, -0.792611, 0.050934,
		36.155010, 29.178713, 20.992329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279442, 30.028160, 20.722000>,  <35.729694, 29.733541, 20.956675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279442, 30.028160, 20.722000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316433, 29.631945, 20.681450>,  <36.338627, 29.394215, 20.657120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316433, 29.631945, 20.681450>,  <36.279442, 30.028160, 20.722000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316433, 29.631945, 20.681450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333678, 0.126755, -0.934126,
		0.938140, 0.052562, 0.342244,
		0.092481, -0.990540, -0.101376,
		36.344177, 29.334782, 20.651037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948212, 29.901209, 20.451046>,  <36.279442, 30.028160, 20.722000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948212, 29.901209, 20.451046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.711369, 29.591726, 20.360907>,  <36.569263, 29.406036, 20.306824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.711369, 29.591726, 20.360907>,  <36.948212, 29.901209, 20.451046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711369, 29.591726, 20.360907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296769, 0.050628, -0.953606,
		0.749221, -0.631518, 0.199635,
		-0.592112, -0.773707, -0.225346,
		36.533733, 29.359613, 20.293303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635433, 29.816019, 20.605928>,  <36.948212, 29.901209, 20.451046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635433, 29.816019, 20.605928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975819, 30.025776, 20.617737>,  <38.180050, 30.151630, 20.624823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975819, 30.025776, 20.617737>,  <37.635433, 29.816019, 20.605928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975819, 30.025776, 20.617737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168687, 0.219643, 0.960886,
		0.497396, -0.822661, 0.275366,
		0.850965, 0.524391, 0.029523,
		38.231110, 30.183094, 20.626595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000626, 29.597107, 21.150286>,  <37.635433, 29.816019, 20.605928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000626, 29.597107, 21.150286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.164356, 29.953833, 21.073227>,  <38.262596, 30.167870, 21.026991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.164356, 29.953833, 21.073227>,  <38.000626, 29.597107, 21.150286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164356, 29.953833, 21.073227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132567, 0.267039, 0.954524,
		0.902705, -0.365176, 0.227532,
		0.409329, 0.891816, -0.192647,
		38.287155, 30.221378, 21.015432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560711, 29.696857, 21.569921>,  <38.000626, 29.597107, 21.150286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560711, 29.696857, 21.569921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477848, 30.070463, 21.453506>,  <38.428131, 30.294626, 21.383657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477848, 30.070463, 21.453506>,  <38.560711, 29.696857, 21.569921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477848, 30.070463, 21.453506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045295, 0.288012, 0.956555,
		0.977259, 0.211338, -0.017357,
		-0.207155, 0.934016, -0.291035,
		38.415703, 30.350668, 21.366196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983742, 30.104532, 21.993683>,  <38.560711, 29.696857, 21.569921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983742, 30.104532, 21.993683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.699097, 30.346197, 21.850245>,  <38.528309, 30.491196, 21.764181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.699097, 30.346197, 21.850245>,  <38.983742, 30.104532, 21.993683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699097, 30.346197, 21.850245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012408, 0.521136, 0.853383,
		0.702460, 0.602831, -0.378345,
		-0.711615, 0.604162, -0.358598,
		38.485611, 30.527447, 21.742664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108250, 30.776297, 22.225441>,  <38.983742, 30.104532, 21.993683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108250, 30.776297, 22.225441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.719273, 30.786562, 22.132744>,  <38.485886, 30.792721, 22.077126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.719273, 30.786562, 22.132744>,  <39.108250, 30.776297, 22.225441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719273, 30.786562, 22.132744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179192, 0.553670, 0.813228,
		0.149178, 0.832341, -0.533812,
		-0.972438, 0.025661, -0.231744,
		38.427540, 30.794260, 22.063221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820099, 31.525328, 22.158028>,  <39.108250, 30.776297, 22.225441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820099, 31.525328, 22.158028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528664, 31.264605, 22.242224>,  <38.353802, 31.108170, 22.292742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528664, 31.264605, 22.242224>,  <38.820099, 31.525328, 22.158028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528664, 31.264605, 22.242224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267267, 0.553479, 0.788815,
		-0.630658, 0.518464, -0.577465,
		-0.728587, -0.651809, 0.210488,
		38.310089, 31.069061, 22.305370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375336, 31.916166, 22.429142>,  <38.820099, 31.525328, 22.158028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375336, 31.916166, 22.429142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.208488, 31.571661, 22.545238>,  <38.108379, 31.364958, 22.614897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.208488, 31.571661, 22.545238>,  <38.375336, 31.916166, 22.429142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208488, 31.571661, 22.545238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312747, 0.435861, 0.843928,
		-0.853349, 0.261243, -0.451162,
		-0.417114, -0.861265, 0.290239,
		38.083355, 31.313282, 22.632311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721539, 32.106956, 22.660110>,  <38.375336, 31.916166, 22.429142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721539, 32.106956, 22.660110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816402, 31.753866, 22.822371>,  <37.873322, 31.542013, 22.919727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816402, 31.753866, 22.822371>,  <37.721539, 32.106956, 22.660110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816402, 31.753866, 22.822371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402675, 0.290682, 0.867961,
		-0.884086, -0.369191, -0.286512,
		0.237160, -0.882724, 0.405652,
		37.887550, 31.489048, 22.944067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198853, 31.910833, 23.106447>,  <37.721539, 32.106956, 22.660110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198853, 31.910833, 23.106447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.474701, 31.664486, 23.258835>,  <37.640209, 31.516678, 23.350267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.474701, 31.664486, 23.258835>,  <37.198853, 31.910833, 23.106447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474701, 31.664486, 23.258835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173343, 0.370395, 0.912557,
		-0.703122, -0.695353, 0.148674,
		0.689617, -0.615867, 0.380967,
		37.681587, 31.479725, 23.373125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758656, 31.443058, 23.676249>,  <37.198853, 31.910833, 23.106447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758656, 31.443058, 23.676249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.143024, 31.422749, 23.785099>,  <37.373646, 31.410563, 23.850409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.143024, 31.422749, 23.785099>,  <36.758656, 31.443058, 23.676249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143024, 31.422749, 23.785099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251144, 0.253561, 0.934148,
		-0.116432, -0.965986, 0.230900,
		0.960921, -0.050776, 0.272125,
		37.431301, 31.407516, 23.866737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773178, 31.093348, 24.333460>,  <36.758656, 31.443058, 23.676249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773178, 31.093348, 24.333460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.121964, 31.288803, 24.321381>,  <37.331234, 31.406076, 24.314133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.121964, 31.288803, 24.321381>,  <36.773178, 31.093348, 24.333460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121964, 31.288803, 24.321381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034658, 0.123140, 0.991784,
		0.488345, -0.863751, 0.124309,
		0.871962, 0.488641, -0.030199,
		37.383553, 31.435396, 24.312321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141308, 30.799463, 25.004360>,  <36.773178, 31.093348, 24.333460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141308, 30.799463, 25.004360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364735, 31.107395, 24.880833>,  <37.498791, 31.292154, 24.806717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364735, 31.107395, 24.880833>,  <37.141308, 30.799463, 25.004360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364735, 31.107395, 24.880833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126967, 0.288572, 0.949002,
		0.819686, -0.569289, 0.063444,
		0.558565, 0.769829, -0.308819,
		37.532303, 31.338345, 24.788187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898548, 30.736300, 25.272476>,  <37.141308, 30.799463, 25.004360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898548, 30.736300, 25.272476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798542, 31.118006, 25.206911>,  <37.738541, 31.347031, 25.167572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798542, 31.118006, 25.206911>,  <37.898548, 30.736300, 25.272476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798542, 31.118006, 25.206911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128902, 0.200587, 0.971159,
		0.959624, 0.221673, -0.173156,
		-0.250013, 0.954267, -0.163914,
		37.723537, 31.404285, 25.157738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311516, 31.182457, 25.863993>,  <37.898548, 30.736300, 25.272476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311516, 31.182457, 25.863993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074818, 31.465706, 25.709898>,  <37.932800, 31.635654, 25.617441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074818, 31.465706, 25.709898>,  <38.311516, 31.182457, 25.863993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074818, 31.465706, 25.709898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219092, 0.318622, 0.922214,
		0.775784, 0.630114, -0.033398,
		-0.591741, 0.708122, -0.385235,
		37.897297, 31.678143, 25.594328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.346252, 31.932878, 19.912058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979698, 32.078087, 19.844576>,  <36.759766, 32.165211, 19.804087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979698, 32.078087, 19.844576>,  <37.346252, 31.932878, 19.912058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979698, 32.078087, 19.844576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120931, -0.150702, -0.981155,
		-0.381604, -0.919513, 0.094200,
		-0.916381, 0.363021, -0.168706,
		36.704784, 32.186993, 19.793964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107975, 31.561287, 19.399242>,  <37.346252, 31.932878, 19.912058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107975, 31.561287, 19.399242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.871090, 31.882771, 19.376146>,  <36.728958, 32.075661, 19.362289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.871090, 31.882771, 19.376146>,  <37.107975, 31.561287, 19.399242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871090, 31.882771, 19.376146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139015, 0.031324, -0.989795,
		-0.793701, -0.594194, -0.130279,
		-0.592211, 0.803712, -0.057741,
		36.693428, 32.123882, 19.358824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564629, 31.413607, 18.838814>,  <37.107975, 31.561287, 19.399242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564629, 31.413607, 18.838814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.564556, 31.809999, 18.892408>,  <36.564514, 32.047836, 18.924564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.564556, 31.809999, 18.892408>,  <36.564629, 31.413607, 18.838814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564556, 31.809999, 18.892408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067161, 0.133695, -0.988744,
		-0.997742, 0.008819, -0.066580,
		-0.000182, 0.990983, 0.133985,
		36.564503, 32.107296, 18.932604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041870, 31.714968, 18.340010>,  <36.564629, 31.413607, 18.838814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041870, 31.714968, 18.340010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328442, 31.978378, 18.432165>,  <36.500385, 32.136425, 18.487459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328442, 31.978378, 18.432165>,  <36.041870, 31.714968, 18.340010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328442, 31.978378, 18.432165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146881, 0.180459, -0.972554,
		-0.682028, 0.730601, 0.032560,
		0.716424, 0.658526, 0.230390,
		36.543369, 32.175938, 18.501282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912239, 32.176601, 17.770514>,  <36.041870, 31.714968, 18.340010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912239, 32.176601, 17.770514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287239, 32.244720, 17.891907>,  <36.512238, 32.285591, 17.964743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287239, 32.244720, 17.891907>,  <35.912239, 32.176601, 17.770514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287239, 32.244720, 17.891907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261693, 0.229853, -0.937382,
		-0.229387, 0.958210, 0.170922,
		0.937496, 0.170294, 0.303482,
		36.568489, 32.295811, 17.982952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126022, 32.781895, 17.483652>,  <35.912239, 32.176601, 17.770514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126022, 32.781895, 17.483652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487450, 32.651779, 17.595194>,  <36.704304, 32.573711, 17.662119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487450, 32.651779, 17.595194>,  <36.126022, 32.781895, 17.483652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487450, 32.651779, 17.595194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344974, 0.166358, -0.923752,
		0.254097, 0.930866, 0.262531,
		0.903564, -0.325289, 0.278854,
		36.758518, 32.554192, 17.678850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738461, 33.277573, 17.236380>,  <36.126022, 32.781895, 17.483652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738461, 33.277573, 17.236380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.931110, 32.937103, 17.319849>,  <37.046700, 32.732822, 17.369930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.931110, 32.937103, 17.319849>,  <36.738461, 33.277573, 17.236380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931110, 32.937103, 17.319849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601371, 0.147781, -0.785184,
		0.637489, 0.503653, 0.583045,
		0.481623, -0.851172, 0.208674,
		37.075596, 32.681751, 17.382452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392963, 33.419453, 17.134764>,  <36.738461, 33.277573, 17.236380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392963, 33.419453, 17.134764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.386913, 33.020504, 17.106409>,  <37.383282, 32.781136, 17.089397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.386913, 33.020504, 17.106409>,  <37.392963, 33.419453, 17.134764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386913, 33.020504, 17.106409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588612, 0.048427, -0.806963,
		0.808274, -0.053929, 0.586332,
		-0.015124, -0.997370, -0.070886,
		37.382378, 32.721294, 17.085144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100258, 33.246010, 16.888485>,  <37.392963, 33.419453, 17.134764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100258, 33.246010, 16.888485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.897388, 32.914261, 16.794744>,  <37.775665, 32.715214, 16.738501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.897388, 32.914261, 16.794744>,  <38.100258, 33.246010, 16.888485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897388, 32.914261, 16.794744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421154, -0.001260, -0.906988,
		0.751932, -0.558700, 0.349931,
		-0.507176, -0.829368, -0.234351,
		37.745235, 32.665451, 16.724440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530094, 32.708477, 16.701351>,  <38.100258, 33.246010, 16.888485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530094, 32.708477, 16.701351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.194553, 32.597786, 16.513840>,  <37.993229, 32.531372, 16.401333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.194553, 32.597786, 16.513840>,  <38.530094, 32.708477, 16.701351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194553, 32.597786, 16.513840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411553, 0.241269, -0.878870,
		0.356310, -0.930167, -0.088500,
		-0.838849, -0.276728, -0.468780,
		37.942898, 32.514767, 16.373205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733509, 32.253323, 16.169983>,  <38.530094, 32.708477, 16.701351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733509, 32.253323, 16.169983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.380585, 32.398911, 16.050619>,  <38.168831, 32.486263, 15.979001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.380585, 32.398911, 16.050619>,  <38.733509, 32.253323, 16.169983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380585, 32.398911, 16.050619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319475, -0.002456, -0.947591,
		-0.345632, -0.931406, -0.114114,
		-0.882312, 0.363975, -0.298410,
		38.115891, 32.508102, 15.961096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690090, 31.951471, 15.494936>,  <38.733509, 32.253323, 16.169983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690090, 31.951471, 15.494936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.433350, 32.255981, 15.531797>,  <38.279305, 32.438686, 15.553914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.433350, 32.255981, 15.531797>,  <38.690090, 31.951471, 15.494936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433350, 32.255981, 15.531797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193061, 0.276728, -0.941355,
		-0.742131, -0.586416, -0.324590,
		-0.641849, 0.761274, 0.092155,
		38.240795, 32.484364, 15.559443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170147, 31.899887, 15.013844>,  <38.690090, 31.951471, 15.494936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170147, 31.899887, 15.013844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.221657, 32.285694, 15.106036>,  <38.252563, 32.517178, 15.161351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.221657, 32.285694, 15.106036>,  <38.170147, 31.899887, 15.013844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221657, 32.285694, 15.106036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158737, 0.209369, -0.964866,
		-0.978886, 0.160840, -0.126142,
		0.128779, 0.964518, 0.230479,
		38.260292, 32.575050, 15.175180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494125, 31.159449, 14.941961>,  <38.170147, 31.899887, 15.013844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494125, 31.159449, 14.941961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324574, 31.204189, 14.582447>,  <38.222843, 31.231033, 14.366738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324574, 31.204189, 14.582447>,  <38.494125, 31.159449, 14.941961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324574, 31.204189, 14.582447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815575, -0.384447, -0.432478,
		-0.393912, -0.916345, 0.071728,
		-0.423875, 0.111859, -0.898787,
		38.197411, 31.237745, 14.312811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504028, 30.416550, 14.662746>,  <38.494125, 31.159449, 14.941961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504028, 30.416550, 14.662746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.544353, 30.699514, 14.382916>,  <38.568550, 30.869293, 14.215018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.544353, 30.699514, 14.382916>,  <38.504028, 30.416550, 14.662746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544353, 30.699514, 14.382916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905260, -0.356918, -0.230463,
		-0.412723, -0.610064, -0.676374,
		0.100813, 0.707412, -0.699575,
		38.574596, 30.911737, 14.173044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839790, 30.456879, 15.267631>,  <38.504028, 30.416550, 14.662746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839790, 30.456879, 15.267631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.115089, 30.190783, 15.383406>,  <39.280270, 30.031126, 15.452871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.115089, 30.190783, 15.383406>,  <38.839790, 30.456879, 15.267631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115089, 30.190783, 15.383406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216788, 0.192148, 0.957122,
		-0.692329, -0.721482, -0.011970,
		0.688246, -0.665238, 0.289438,
		39.321564, 29.991211, 15.470237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570370, 30.312181, 15.878261>,  <38.839790, 30.456879, 15.267631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570370, 30.312181, 15.878261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.941631, 30.166901, 15.910776>,  <39.164391, 30.079731, 15.930285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.941631, 30.166901, 15.910776>,  <38.570370, 30.312181, 15.878261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941631, 30.166901, 15.910776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081346, 0.015164, 0.996571,
		-0.363192, -0.931586, -0.015471,
		0.928156, -0.363205, 0.081288,
		39.220078, 30.057940, 15.935163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447002, 29.765978, 16.255314>,  <38.570370, 30.312181, 15.878261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447002, 29.765978, 16.255314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.831608, 29.871769, 16.285091>,  <39.062370, 29.935244, 16.302958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.831608, 29.871769, 16.285091>,  <38.447002, 29.765978, 16.255314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831608, 29.871769, 16.285091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059415, -0.064396, 0.996154,
		0.268258, -0.962239, -0.046204,
		0.961513, 0.264481, 0.074446,
		39.120064, 29.951113, 16.307425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776474, 29.278282, 16.742058>,  <38.447002, 29.765978, 16.255314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776474, 29.278282, 16.742058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984722, 29.618397, 16.711145>,  <39.109669, 29.822466, 16.692598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984722, 29.618397, 16.711145>,  <38.776474, 29.278282, 16.742058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984722, 29.618397, 16.711145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181207, -0.021587, 0.983208,
		0.834340, -0.525878, -0.165317,
		0.520616, 0.850286, -0.077282,
		39.140907, 29.873482, 16.687962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165161, 29.119154, 17.271570>,  <38.776474, 29.278282, 16.742058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165161, 29.119154, 17.271570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.198643, 29.513693, 17.214836>,  <39.218731, 29.750416, 17.180796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.198643, 29.513693, 17.214836>,  <39.165161, 29.119154, 17.271570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198643, 29.513693, 17.214836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026837, 0.144515, 0.989139,
		0.996129, -0.078985, 0.038567,
		0.083701, 0.986345, -0.141836,
		39.223755, 29.809597, 17.172285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641972, 29.363749, 17.741106>,  <39.165161, 29.119154, 17.271570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641972, 29.363749, 17.741106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422012, 29.682230, 17.640177>,  <39.290035, 29.873320, 17.579620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422012, 29.682230, 17.640177>,  <39.641972, 29.363749, 17.741106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422012, 29.682230, 17.640177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103476, 0.234827, 0.966514,
		0.828795, 0.557596, -0.046744,
		-0.549901, 0.796205, -0.252321,
		39.257042, 29.921091, 17.564480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858292, 29.901072, 18.100965>,  <39.641972, 29.363749, 17.741106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858292, 29.901072, 18.100965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.488533, 30.019560, 18.004845>,  <39.266678, 30.090652, 17.947172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.488533, 30.019560, 18.004845>,  <39.858292, 29.901072, 18.100965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488533, 30.019560, 18.004845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112859, 0.389379, 0.914137,
		0.364357, 0.872144, -0.326509,
		-0.924395, 0.296223, -0.240302,
		39.211216, 30.108427, 17.932755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751129, 30.566837, 18.557247>,  <39.858292, 29.901072, 18.100965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751129, 30.566837, 18.557247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399345, 30.427675, 18.427311>,  <39.188274, 30.344177, 18.349350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399345, 30.427675, 18.427311>,  <39.751129, 30.566837, 18.557247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399345, 30.427675, 18.427311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398679, 0.165592, 0.902017,
		-0.260027, 0.922789, -0.284334,
		-0.879455, -0.347907, -0.324839,
		39.135509, 30.323303, 18.329859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323521, 31.051052, 18.797302>,  <39.751129, 30.566837, 18.557247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323521, 31.051052, 18.797302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.106613, 30.723803, 18.720757>,  <38.976467, 30.527452, 18.674829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.106613, 30.723803, 18.720757>,  <39.323521, 31.051052, 18.797302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106613, 30.723803, 18.720757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496246, 0.128069, 0.858684,
		-0.678001, 0.560600, -0.475438,
		-0.542267, -0.818123, -0.191365,
		38.943932, 30.478365, 18.663347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669582, 31.243895, 18.923393>,  <39.323521, 31.051052, 18.797302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669582, 31.243895, 18.923393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.668259, 30.844532, 18.945911>,  <38.667465, 30.604914, 18.959423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.668259, 30.844532, 18.945911>,  <38.669582, 31.243895, 18.923393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668259, 30.844532, 18.945911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484877, 0.050839, 0.873103,
		-0.874576, -0.024408, -0.484274,
		-0.003309, -0.998408, 0.056297,
		38.667267, 30.545010, 18.962801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102398, 31.134449, 19.291027>,  <38.669582, 31.243895, 18.923393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102398, 31.134449, 19.291027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.281075, 30.779297, 19.335089>,  <38.388279, 30.566206, 19.361526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.281075, 30.779297, 19.335089>,  <38.102398, 31.134449, 19.291027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281075, 30.779297, 19.335089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395560, -0.085555, 0.914447,
		-0.802496, -0.452048, -0.389427,
		0.446691, -0.887882, 0.110154,
		38.415081, 30.512932, 19.368135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605160, 30.652384, 19.618629>,  <38.102398, 31.134449, 19.291027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605160, 30.652384, 19.618629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973572, 30.508501, 19.678383>,  <38.194618, 30.422173, 19.714235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973572, 30.508501, 19.678383>,  <37.605160, 30.652384, 19.618629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973572, 30.508501, 19.678383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187721, -0.073911, 0.979438,
		-0.341267, -0.930134, -0.135599,
		0.921030, -0.359705, 0.149382,
		38.249882, 30.400589, 19.723198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456192, 30.357363, 20.146254>,  <37.605160, 30.652384, 19.618629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456192, 30.357363, 20.146254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855896, 30.349283, 20.159325>,  <38.095718, 30.344435, 20.167168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855896, 30.349283, 20.159325>,  <37.456192, 30.357363, 20.146254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855896, 30.349283, 20.159325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034301, -0.086187, 0.995688,
		-0.017293, -0.996074, -0.086816,
		0.999262, -0.020196, 0.032676,
		38.155674, 30.343224, 20.169127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238850, 29.622606, 19.877901>,  <37.456192, 30.357363, 20.146254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238850, 29.622606, 19.877901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.871643, 29.463987, 19.878815>,  <36.651321, 29.368816, 19.879362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.871643, 29.463987, 19.878815>,  <37.238850, 29.622606, 19.877901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871643, 29.463987, 19.878815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071783, -0.171836, -0.982507,
		0.390001, -0.901789, 0.186213,
		-0.918012, -0.396545, 0.002283,
		36.596241, 29.345024, 19.879499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291004, 29.261267, 19.322395>,  <37.238850, 29.622606, 19.877901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291004, 29.261267, 19.322395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.902309, 29.198118, 19.392601>,  <36.669094, 29.160229, 19.434725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.902309, 29.198118, 19.392601>,  <37.291004, 29.261267, 19.322395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902309, 29.198118, 19.392601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071327, -0.512386, -0.855788,
		0.225033, -0.844120, 0.486644,
		-0.971737, -0.157870, 0.175512,
		36.610786, 29.150757, 19.445255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147034, 28.503294, 19.138908>,  <37.291004, 29.261267, 19.322395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147034, 28.503294, 19.138908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816547, 28.724384, 19.095360>,  <36.618256, 28.857038, 19.069231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816547, 28.724384, 19.095360>,  <37.147034, 28.503294, 19.138908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816547, 28.724384, 19.095360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067646, -0.289204, -0.954874,
		-0.559273, -0.781570, 0.276336,
		-0.826219, 0.552728, -0.108874,
		36.568680, 28.890203, 19.062698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708649, 28.054485, 18.919724>,  <37.147034, 28.503294, 19.138908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708649, 28.054485, 18.919724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.604759, 28.423340, 18.805033>,  <36.542427, 28.644651, 18.736219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.604759, 28.423340, 18.805033>,  <36.708649, 28.054485, 18.919724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604759, 28.423340, 18.805033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041152, -0.286075, -0.957323,
		-0.964806, -0.260439, 0.036353,
		-0.259724, 0.922135, -0.286725,
		36.526840, 28.699980, 18.719015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310658, 27.974606, 18.321579>,  <36.708649, 28.054485, 18.919724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310658, 27.974606, 18.321579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402130, 28.363131, 18.295488>,  <36.457012, 28.596247, 18.279835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402130, 28.363131, 18.295488>,  <36.310658, 27.974606, 18.321579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402130, 28.363131, 18.295488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076601, -0.048840, -0.995865,
		-0.970483, 0.232731, 0.063235,
		0.228680, 0.971314, -0.065226,
		36.470734, 28.654524, 18.275921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771404, 28.344549, 17.945312>,  <36.310658, 27.974606, 18.321579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771404, 28.344549, 17.945312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107834, 28.558044, 17.910151>,  <36.309692, 28.686142, 17.889053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107834, 28.558044, 17.910151>,  <35.771404, 28.344549, 17.945312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107834, 28.558044, 17.910151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061650, -0.066863, -0.995856,
		-0.537402, 0.843004, -0.023331,
		0.841070, 0.533736, -0.087903,
		36.360153, 28.718164, 17.883780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749126, 28.799740, 17.357996>,  <35.771404, 28.344549, 17.945312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749126, 28.799740, 17.357996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144638, 28.813190, 17.416225>,  <36.381943, 28.821260, 17.451164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144638, 28.813190, 17.416225>,  <35.749126, 28.799740, 17.357996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144638, 28.813190, 17.416225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147072, -0.047440, -0.987987,
		-0.026315, 0.998308, -0.051853,
		0.988775, 0.033625, 0.145575,
		36.441269, 28.823278, 17.459898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275410, 29.209236, 16.818987>,  <35.749126, 28.799740, 17.357996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275410, 29.209236, 16.818987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005325, 28.967514, 16.649799>,  <34.843273, 28.822481, 16.548286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005325, 28.967514, 16.649799>,  <35.275410, 29.209236, 16.818987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005325, 28.967514, 16.649799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400521, -0.181159, 0.898200,
		-0.619411, 0.775885, -0.119716,
		-0.675213, -0.604304, -0.422970,
		34.802761, 28.786222, 16.522907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708622, 29.426168, 17.204578>,  <35.275410, 29.209236, 16.818987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708622, 29.426168, 17.204578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620792, 29.070877, 17.043165>,  <34.568092, 28.857702, 16.946318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620792, 29.070877, 17.043165>,  <34.708622, 29.426168, 17.204578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620792, 29.070877, 17.043165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177528, -0.370343, 0.911773,
		-0.959307, 0.271844, -0.076366,
		-0.219579, -0.888227, -0.403532,
		34.554920, 28.804409, 16.922106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039375, 29.288807, 17.412155>,  <34.708622, 29.426168, 17.204578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039375, 29.288807, 17.412155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205566, 28.931969, 17.341112>,  <34.305279, 28.717865, 17.298487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205566, 28.931969, 17.341112>,  <34.039375, 29.288807, 17.412155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205566, 28.931969, 17.341112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457968, -0.373863, 0.806531,
		-0.785904, -0.253755, -0.563882,
		0.415476, -0.892096, -0.177609,
		34.330208, 28.664339, 17.287830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456867, 28.953142, 17.441740>,  <34.039375, 29.288807, 17.412155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456867, 28.953142, 17.441740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773071, 28.715536, 17.501385>,  <33.962795, 28.572973, 17.537172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773071, 28.715536, 17.501385>,  <33.456867, 28.953142, 17.441740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773071, 28.715536, 17.501385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379771, -0.284426, 0.880270,
		-0.480483, -0.752493, -0.450433,
		0.790513, -0.594016, 0.149113,
		34.010223, 28.537331, 17.546120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150711, 28.377972, 17.722124>,  <33.456867, 28.953142, 17.441740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150711, 28.377972, 17.722124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.531994, 28.300766, 17.815191>,  <33.760765, 28.254442, 17.871031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.531994, 28.300766, 17.815191>,  <33.150711, 28.377972, 17.722124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531994, 28.300766, 17.815191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277753, -0.255355, 0.926092,
		-0.119332, -0.947386, -0.297017,
		0.953212, -0.193010, 0.232668,
		33.817959, 28.242863, 17.884991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189857, 27.692699, 18.031719>,  <33.150711, 28.377972, 17.722124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189857, 27.692699, 18.031719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487949, 27.927568, 18.158121>,  <33.666805, 28.068491, 18.233961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487949, 27.927568, 18.158121>,  <33.189857, 27.692699, 18.031719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487949, 27.927568, 18.158121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378176, -0.018137, 0.925556,
		0.549195, -0.809257, 0.208539,
		0.745230, 0.587175, 0.316003,
		33.711517, 28.103722, 18.252922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376568, 27.253653, 18.591368>,  <33.189857, 27.692699, 18.031719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376568, 27.253653, 18.591368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.528793, 27.621090, 18.634001>,  <33.620129, 27.841553, 18.659580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.528793, 27.621090, 18.634001>,  <33.376568, 27.253653, 18.591368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528793, 27.621090, 18.634001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193093, -0.033784, 0.980599,
		0.904373, -0.393757, 0.164517,
		0.380559, 0.918594, 0.106585,
		33.642960, 27.896667, 18.665976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.108154, 34.342224, 14.465425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.443180, 34.248154, 14.662677>,  <35.644196, 34.191711, 14.781028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.443180, 34.248154, 14.662677>,  <35.108154, 34.342224, 14.465425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443180, 34.248154, 14.662677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538797, -0.206124, 0.816830,
		-0.090448, -0.949846, -0.299351,
		0.837566, -0.235170, 0.493130,
		35.694450, 34.177601, 14.810616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987194, 33.787533, 14.808422>,  <35.108154, 34.342224, 14.465425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987194, 33.787533, 14.808422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.302525, 33.933224, 15.006769>,  <35.491722, 34.020638, 15.125777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.302525, 33.933224, 15.006769>,  <34.987194, 33.787533, 14.808422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302525, 33.933224, 15.006769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518445, -0.040740, 0.854140,
		0.331306, -0.930417, 0.156718,
		0.788321, 0.364231, 0.495867,
		35.539021, 34.042492, 15.155530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211555, 33.344101, 15.390765>,  <34.987194, 33.787533, 14.808422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211555, 33.344101, 15.390765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.344528, 33.707726, 15.491241>,  <35.424313, 33.925900, 15.551527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.344528, 33.707726, 15.491241>,  <35.211555, 33.344101, 15.390765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344528, 33.707726, 15.491241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638293, 0.020787, 0.769513,
		0.694312, -0.416146, 0.587157,
		0.332435, 0.909060, 0.251190,
		35.444260, 33.980442, 15.566599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466400, 33.246441, 16.099371>,  <35.211555, 33.344101, 15.390765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466400, 33.246441, 16.099371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.424011, 33.639313, 16.037281>,  <35.398579, 33.875034, 16.000027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.424011, 33.639313, 16.037281>,  <35.466400, 33.246441, 16.099371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424011, 33.639313, 16.037281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369092, 0.106099, 0.923317,
		0.923331, 0.155140, 0.351270,
		-0.105974, 0.982178, -0.155226,
		35.392220, 33.933968, 15.990713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807652, 33.532776, 16.562910>,  <35.466400, 33.246441, 16.099371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807652, 33.532776, 16.562910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.530956, 33.811867, 16.488428>,  <35.364937, 33.979321, 16.443739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.530956, 33.811867, 16.488428>,  <35.807652, 33.532776, 16.562910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530956, 33.811867, 16.488428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029833, 0.230020, 0.972729,
		0.721529, 0.678431, -0.138299,
		-0.691741, 0.697726, -0.186206,
		35.323433, 34.021183, 16.432566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948467, 33.927841, 17.152473>,  <35.807652, 33.532776, 16.562910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948467, 33.927841, 17.152473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.613708, 34.085884, 17.000952>,  <35.412853, 34.180710, 16.910038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.613708, 34.085884, 17.000952>,  <35.948467, 33.927841, 17.152473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613708, 34.085884, 17.000952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212946, 0.402516, 0.890300,
		0.504242, 0.825754, -0.252727,
		-0.836896, 0.395110, -0.378806,
		35.362640, 34.204418, 16.887310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908070, 34.669533, 17.484884>,  <35.948467, 33.927841, 17.152473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908070, 34.669533, 17.484884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.544689, 34.550648, 17.367323>,  <35.326660, 34.479317, 17.296785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.544689, 34.550648, 17.367323>,  <35.908070, 34.669533, 17.484884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544689, 34.550648, 17.367323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381225, 0.300790, 0.874181,
		-0.171417, 0.906194, -0.386559,
		-0.908452, -0.297215, -0.293903,
		35.272152, 34.461483, 17.279152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424553, 35.120686, 17.868910>,  <35.908070, 34.669533, 17.484884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424553, 35.120686, 17.868910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.189587, 34.826912, 17.732943>,  <35.048607, 34.650646, 17.651363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.189587, 34.826912, 17.732943>,  <35.424553, 35.120686, 17.868910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189587, 34.826912, 17.732943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553227, 0.057867, 0.831018,
		-0.590660, 0.676206, -0.440302,
		-0.587418, -0.734436, -0.339916,
		35.013363, 34.606583, 17.630968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687813, 35.295284, 17.906780>,  <35.424553, 35.120686, 17.868910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687813, 35.295284, 17.906780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.691738, 34.895397, 17.898073>,  <34.694092, 34.655464, 17.892849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.691738, 34.895397, 17.898073>,  <34.687813, 35.295284, 17.906780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691738, 34.895397, 17.898073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568092, -0.023489, 0.822630,
		-0.822907, 0.004293, -0.568160,
		0.009814, -0.999715, -0.021768,
		34.694683, 34.595482, 17.891542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067616, 35.085217, 18.003904>,  <34.687813, 35.295284, 17.906780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067616, 35.085217, 18.003904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.256905, 34.741062, 18.079576>,  <34.370480, 34.534569, 18.124981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.256905, 34.741062, 18.079576>,  <34.067616, 35.085217, 18.003904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256905, 34.741062, 18.079576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667723, -0.210240, 0.714104,
		-0.574633, -0.464254, -0.673992,
		0.473226, -0.860388, 0.189182,
		34.398872, 34.482944, 18.136332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567024, 34.582954, 18.057899>,  <34.067616, 35.085217, 18.003904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567024, 34.582954, 18.057899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.893673, 34.438148, 18.237707>,  <34.089664, 34.351265, 18.345591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.893673, 34.438148, 18.237707>,  <33.567024, 34.582954, 18.057899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893673, 34.438148, 18.237707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522168, -0.131594, 0.842629,
		-0.245895, -0.922835, -0.296498,
		0.816625, -0.362020, 0.449517,
		34.138660, 34.329544, 18.372562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278625, 34.046036, 18.376225>,  <33.567024, 34.582954, 18.057899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278625, 34.046036, 18.376225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.623852, 34.133453, 18.558369>,  <33.830986, 34.185905, 18.667656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.623852, 34.133453, 18.558369>,  <33.278625, 34.046036, 18.376225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623852, 34.133453, 18.558369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438857, -0.121831, 0.890260,
		0.250041, -0.968191, -0.009237,
		0.863067, 0.218548, 0.455360,
		33.882771, 34.199017, 18.694977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304516, 33.271839, 18.379396>,  <33.278625, 34.046036, 18.376225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304516, 33.271839, 18.379396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.037304, 32.974472, 18.392422>,  <32.876976, 32.796051, 18.400238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.037304, 32.974472, 18.392422>,  <33.304516, 33.271839, 18.379396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037304, 32.974472, 18.392422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163079, -0.188959, -0.968349,
		0.726044, -0.641577, 0.247467,
		-0.668032, -0.743420, 0.032565,
		32.836895, 32.751446, 18.402191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636890, 32.626011, 18.217701>,  <33.304516, 33.271839, 18.379396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636890, 32.626011, 18.217701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.251057, 32.557903, 18.137123>,  <33.019554, 32.517040, 18.088778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.251057, 32.557903, 18.137123>,  <33.636890, 32.626011, 18.217701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251057, 32.557903, 18.137123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235299, -0.210371, -0.948883,
		0.119188, -0.962680, 0.242985,
		-0.964587, -0.170270, -0.201444,
		32.961681, 32.506821, 18.076691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589001, 31.860672, 17.950272>,  <33.636890, 32.626011, 18.217701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589001, 31.860672, 17.950272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.287029, 32.084015, 17.812677>,  <33.105846, 32.218021, 17.730120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.287029, 32.084015, 17.812677>,  <33.589001, 31.860672, 17.950272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287029, 32.084015, 17.812677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145387, -0.368980, -0.917996,
		-0.639492, -0.743029, 0.197375,
		-0.754925, 0.558356, -0.343987,
		33.060551, 32.251522, 17.709482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266960, 31.438560, 17.422659>,  <33.589001, 31.860672, 17.950272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266960, 31.438560, 17.422659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.095631, 31.791924, 17.346621>,  <32.992832, 32.003941, 17.300997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.095631, 31.791924, 17.346621>,  <33.266960, 31.438560, 17.422659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095631, 31.791924, 17.346621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039435, -0.191896, -0.980623,
		-0.902766, -0.427517, 0.047355,
		-0.428320, 0.883406, -0.190096,
		32.967136, 32.056946, 17.289591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779629, 31.311939, 16.944065>,  <33.266960, 31.438560, 17.422659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779629, 31.311939, 16.944065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.863136, 31.699100, 16.888090>,  <32.913242, 31.931396, 16.854506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.863136, 31.699100, 16.888090>,  <32.779629, 31.311939, 16.944065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863136, 31.699100, 16.888090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075349, -0.158585, -0.984466,
		-0.975057, 0.194984, -0.106039,
		0.208771, 0.967901, -0.139938,
		32.925766, 31.989471, 16.846109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518837, 31.480513, 16.348221>,  <32.779629, 31.311939, 16.944065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518837, 31.480513, 16.348221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.791336, 31.769552, 16.395132>,  <32.954834, 31.942976, 16.423279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.791336, 31.769552, 16.395132>,  <32.518837, 31.480513, 16.348221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791336, 31.769552, 16.395132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303031, -0.132521, -0.943722,
		-0.666393, 0.678444, -0.309250,
		0.681244, 0.722601, 0.117278,
		32.995708, 31.986332, 16.430315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495846, 31.843794, 15.744839>,  <32.518837, 31.480513, 16.348221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495846, 31.843794, 15.744839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849762, 31.959614, 15.890881>,  <33.062111, 32.029106, 15.978506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849762, 31.959614, 15.890881>,  <32.495846, 31.843794, 15.744839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849762, 31.959614, 15.890881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398054, -0.062285, -0.915245,
		-0.242266, 0.955135, -0.170365,
		0.884794, 0.289548, 0.365105,
		33.115200, 32.046478, 16.000412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748169, 32.308403, 15.282276>,  <32.495846, 31.843794, 15.744839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748169, 32.308403, 15.282276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.080791, 32.208782, 15.480865>,  <33.280365, 32.149010, 15.600018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.080791, 32.208782, 15.480865>,  <32.748169, 32.308403, 15.282276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080791, 32.208782, 15.480865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502426, -0.043807, -0.863510,
		0.236811, 0.967498, 0.088704,
		0.831558, -0.249056, 0.496470,
		33.330257, 32.134064, 15.629806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237995, 32.767605, 15.157673>,  <32.748169, 32.308403, 15.282276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237995, 32.767605, 15.157673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.424370, 32.422432, 15.235902>,  <33.536194, 32.215328, 15.282839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.424370, 32.422432, 15.235902>,  <33.237995, 32.767605, 15.157673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424370, 32.422432, 15.235902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545698, 0.106259, -0.831218,
		0.696507, 0.494014, 0.520412,
		0.465932, -0.862936, 0.195572,
		33.564148, 32.163551, 15.294574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946842, 32.838158, 14.904943>,  <33.237995, 32.767605, 15.157673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946842, 32.838158, 14.904943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.904995, 32.440929, 14.926351>,  <33.879887, 32.202591, 14.939195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.904995, 32.440929, 14.926351>,  <33.946842, 32.838158, 14.904943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904995, 32.440929, 14.926351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486358, -0.098028, -0.868244,
		0.867474, -0.064807, 0.493244,
		-0.104619, -0.993071, 0.053517,
		33.873608, 32.143009, 14.942406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581535, 32.650211, 14.605435>,  <33.946842, 32.838158, 14.904943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581535, 32.650211, 14.605435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.366451, 32.312996, 14.610334>,  <34.237400, 32.110668, 14.613274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.366451, 32.312996, 14.610334>,  <34.581535, 32.650211, 14.605435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366451, 32.312996, 14.610334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490848, -0.324822, -0.808430,
		0.685516, -0.428692, 0.588465,
		-0.537714, -0.843038, 0.012248,
		34.205135, 32.060085, 14.614009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022625, 32.220955, 14.242620>,  <34.581535, 32.650211, 14.605435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022625, 32.220955, 14.242620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.674309, 32.024696, 14.230034>,  <34.465321, 31.906940, 14.222482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.674309, 32.024696, 14.230034>,  <35.022625, 32.220955, 14.242620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674309, 32.024696, 14.230034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306060, -0.490869, -0.815706,
		0.384780, -0.719938, 0.577611,
		-0.870788, -0.490650, -0.031467,
		34.413071, 31.877501, 14.220593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173088, 31.509216, 14.183226>,  <35.022625, 32.220955, 14.242620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173088, 31.509216, 14.183226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.817013, 31.590109, 14.019928>,  <34.603367, 31.638645, 13.921949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.817013, 31.590109, 14.019928>,  <35.173088, 31.509216, 14.183226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817013, 31.590109, 14.019928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296268, -0.423771, -0.855946,
		-0.346099, -0.882905, 0.317323,
		-0.890191, 0.202230, -0.408244,
		34.549957, 31.650778, 13.897454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275360, 30.773863, 14.202147>,  <35.173088, 31.509216, 14.183226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275360, 30.773863, 14.202147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.417046, 30.434614, 14.044557>,  <35.502056, 30.231064, 13.950003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.417046, 30.434614, 14.044557>,  <35.275360, 30.773863, 14.202147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417046, 30.434614, 14.044557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492889, -0.527342, 0.692076,
		-0.794726, -0.050958, -0.604825,
		0.354217, -0.848123, -0.393977,
		35.523312, 30.180178, 13.926364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705788, 30.248995, 14.042682>,  <35.275360, 30.773863, 14.202147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705788, 30.248995, 14.042682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.050072, 30.055109, 14.104943>,  <35.256641, 29.938778, 14.142300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.050072, 30.055109, 14.104943>,  <34.705788, 30.248995, 14.042682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050072, 30.055109, 14.104943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436472, -0.545219, 0.715701,
		-0.262044, -0.683951, -0.680840,
		0.860712, -0.484713, 0.155654,
		35.308285, 29.909695, 14.151639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515007, 29.596992, 14.169400>,  <34.705788, 30.248995, 14.042682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515007, 29.596992, 14.169400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.888844, 29.570799, 14.309257>,  <35.113144, 29.555082, 14.393170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.888844, 29.570799, 14.309257>,  <34.515007, 29.596992, 14.169400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888844, 29.570799, 14.309257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325152, -0.555892, 0.765023,
		0.144265, -0.828671, -0.540825,
		0.934593, -0.065485, 0.349640,
		35.169220, 29.551153, 14.414148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693195, 28.855148, 14.260908>,  <34.515007, 29.596992, 14.169400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693195, 28.855148, 14.260908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.946697, 29.058657, 14.493978>,  <35.098797, 29.180761, 14.633819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.946697, 29.058657, 14.493978>,  <34.693195, 28.855148, 14.260908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946697, 29.058657, 14.493978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263689, -0.566050, 0.781061,
		0.727202, -0.648646, -0.224580,
		0.633756, 0.508769, 0.582673,
		35.136826, 29.211287, 14.668779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088226, 28.354496, 14.561782>,  <34.693195, 28.855148, 14.260908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088226, 28.354496, 14.561782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.118450, 28.684242, 14.786180>,  <35.136585, 28.882090, 14.920818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.118450, 28.684242, 14.786180>,  <35.088226, 28.354496, 14.561782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118450, 28.684242, 14.786180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228175, -0.533381, 0.814519,
		0.970684, -0.189548, 0.147798,
		0.075557, 0.824364, 0.560995,
		35.141117, 28.931551, 14.954478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390705, 28.106739, 15.243834>,  <35.088226, 28.354496, 14.561782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390705, 28.106739, 15.243834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.236942, 28.469706, 15.311749>,  <35.144684, 28.687485, 15.352497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.236942, 28.469706, 15.311749>,  <35.390705, 28.106739, 15.243834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236942, 28.469706, 15.311749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308187, -0.299508, 0.902949,
		0.870201, 0.294777, 0.394787,
		-0.384411, 0.907415, 0.169785,
		35.121620, 28.741930, 15.362684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712276, 28.289785, 15.847010>,  <35.390705, 28.106739, 15.243834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712276, 28.289785, 15.847010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.377090, 28.502792, 15.799283>,  <35.175980, 28.630596, 15.770647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.377090, 28.502792, 15.799283>,  <35.712276, 28.289785, 15.847010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377090, 28.502792, 15.799283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294451, -0.257115, 0.920429,
		0.459466, 0.806423, 0.372254,
		-0.837967, 0.532517, -0.119317,
		35.125702, 28.662548, 15.763488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620773, 28.736040, 16.403511>,  <35.712276, 28.289785, 15.847010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620773, 28.736040, 16.403511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.255966, 28.730919, 16.239532>,  <35.037083, 28.727846, 16.141146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.255966, 28.730919, 16.239532>,  <35.620773, 28.736040, 16.403511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255966, 28.730919, 16.239532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406615, -0.102681, 0.907811,
		-0.053718, 0.994632, 0.088441,
		-0.912019, -0.012805, -0.409948,
		34.982361, 28.727077, 16.116549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110115, 29.148987, 16.745802>,  <35.620773, 28.736040, 16.403511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110115, 29.148987, 16.745802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.424805, 28.969444, 16.915316>,  <36.613617, 28.861719, 17.017023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.424805, 28.969444, 16.915316>,  <36.110115, 29.148987, 16.745802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424805, 28.969444, 16.915316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324462, -0.283357, -0.902460,
		0.525157, 0.847489, -0.077286,
		0.786724, -0.448857, 0.423785,
		36.660820, 28.834787, 17.042452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629490, 29.180561, 16.289503>,  <36.110115, 29.148987, 16.745802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629490, 29.180561, 16.289503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.795418, 28.887199, 16.504925>,  <36.894974, 28.711182, 16.634178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.795418, 28.887199, 16.504925>,  <36.629490, 29.180561, 16.289503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795418, 28.887199, 16.504925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434190, -0.360596, -0.825500,
		0.799626, 0.576270, 0.168854,
		0.414822, -0.733406, 0.538552,
		36.919865, 28.667177, 16.666491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378361, 29.183620, 16.235001>,  <36.629490, 29.180561, 16.289503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378361, 29.183620, 16.235001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.290710, 28.812006, 16.354250>,  <37.238121, 28.589037, 16.425800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.290710, 28.812006, 16.354250>,  <37.378361, 29.183620, 16.235001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290710, 28.812006, 16.354250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465424, -0.368075, -0.804923,
		0.857533, -0.037627, 0.513051,
		-0.219128, -0.929034, 0.298124,
		37.224972, 28.533295, 16.443687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968174, 28.741701, 16.346458>,  <37.378361, 29.183620, 16.235001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968174, 28.741701, 16.346458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.678612, 28.470188, 16.297127>,  <37.504875, 28.307280, 16.267529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.678612, 28.470188, 16.297127>,  <37.968174, 28.741701, 16.346458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678612, 28.470188, 16.297127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480012, -0.367162, -0.796731,
		0.495527, -0.635959, 0.591616,
		-0.723907, -0.678784, -0.123329,
		37.461441, 28.266552, 16.260128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371109, 28.271042, 16.177624>,  <37.968174, 28.741701, 16.346458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371109, 28.271042, 16.177624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.007366, 28.166430, 16.048212>,  <37.789120, 28.103662, 15.970565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.007366, 28.166430, 16.048212>,  <38.371109, 28.271042, 16.177624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007366, 28.166430, 16.048212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405523, -0.383673, -0.829666,
		0.092853, -0.885662, 0.454952,
		-0.909356, -0.261531, -0.323531,
		37.734558, 28.087971, 15.951153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477425, 27.662249, 15.819086>,  <38.371109, 28.271042, 16.177624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477425, 27.662249, 15.819086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.117474, 27.771193, 15.682830>,  <37.901501, 27.836559, 15.601076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.117474, 27.771193, 15.682830>,  <38.477425, 27.662249, 15.819086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117474, 27.771193, 15.682830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303604, -0.169540, -0.937593,
		-0.313117, -0.947141, 0.069876,
		-0.899879, 0.272362, -0.340641,
		37.847511, 27.852901, 15.580638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256313, 27.122341, 15.447652>,  <38.477425, 27.662249, 15.819086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256313, 27.122341, 15.447652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040867, 27.424931, 15.299252>,  <37.911598, 27.606485, 15.210212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040867, 27.424931, 15.299252>,  <38.256313, 27.122341, 15.447652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040867, 27.424931, 15.299252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367071, -0.185661, -0.911476,
		-0.758389, -0.627117, -0.177680,
		-0.538614, 0.756475, -0.371000,
		37.879284, 27.651873, 15.187952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921013, 26.841715, 14.862774>,  <38.256313, 27.122341, 15.447652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921013, 26.841715, 14.862774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.966530, 27.232796, 14.792175>,  <37.993839, 27.467443, 14.749816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.966530, 27.232796, 14.792175>,  <37.921013, 26.841715, 14.862774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966530, 27.232796, 14.792175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015015, -0.179323, -0.983676,
		-0.993391, 0.109282, -0.035085,
		0.113790, 0.977702, -0.176497,
		38.000668, 27.526106, 14.739226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422390, 27.019508, 14.314915>,  <37.921013, 26.841715, 14.862774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422390, 27.019508, 14.314915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.701050, 27.305269, 14.288641>,  <37.868244, 27.476727, 14.272877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.701050, 27.305269, 14.288641>,  <37.422390, 27.019508, 14.314915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701050, 27.305269, 14.288641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038215, -0.128381, -0.990988,
		-0.716396, 0.687858, -0.116737,
		0.696646, 0.714402, -0.065685,
		37.910042, 27.519590, 14.268935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.535557, 30.878580, 29.103832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799080, 31.176001, 29.058044>,  <33.957195, 31.354454, 29.030571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799080, 31.176001, 29.058044>,  <33.535557, 30.878580, 29.103832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799080, 31.176001, 29.058044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200034, -0.319813, -0.926124,
		-0.725231, 0.587238, -0.359431,
		0.658806, 0.743553, -0.114471,
		33.996723, 31.399067, 29.023703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344913, 31.405790, 28.584826>,  <33.535557, 30.878580, 29.103832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344913, 31.405790, 28.584826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740730, 31.365456, 28.626083>,  <33.978222, 31.341255, 28.650837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740730, 31.365456, 28.626083>,  <33.344913, 31.405790, 28.584826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740730, 31.365456, 28.626083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070369, -0.286729, -0.955424,
		0.125915, 0.952690, -0.276635,
		0.989542, -0.100836, 0.103143,
		34.037594, 31.335205, 28.657026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700741, 31.684443, 27.977577>,  <33.344913, 31.405790, 28.584826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700741, 31.684443, 27.977577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971039, 31.441160, 28.144165>,  <34.133217, 31.295191, 28.244118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971039, 31.441160, 28.144165>,  <33.700741, 31.684443, 27.977577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971039, 31.441160, 28.144165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138983, -0.449730, -0.882285,
		0.723912, 0.654085, -0.219373,
		0.675748, -0.608207, 0.416471,
		34.173763, 31.258698, 28.269106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333424, 31.658377, 27.505449>,  <33.700741, 31.684443, 27.977577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333424, 31.658377, 27.505449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.329052, 31.334852, 27.740637>,  <34.326427, 31.140738, 27.881748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.329052, 31.334852, 27.740637>,  <34.333424, 31.658377, 27.505449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329052, 31.334852, 27.740637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303034, -0.563030, -0.768874,
		0.952917, 0.169772, 0.251250,
		-0.010928, -0.808810, 0.587968,
		34.325775, 31.092209, 27.917027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033718, 31.254936, 27.288086>,  <34.333424, 31.658377, 27.505449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033718, 31.254936, 27.288086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778725, 31.004654, 27.467909>,  <34.625729, 30.854485, 27.575804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778725, 31.004654, 27.467909>,  <35.033718, 31.254936, 27.288086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778725, 31.004654, 27.467909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334904, -0.750526, -0.569693,
		0.693866, -0.212612, 0.688002,
		-0.637487, -0.625705, 0.449559,
		34.587479, 30.816942, 27.602777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406403, 30.659056, 27.430302>,  <35.033718, 31.254936, 27.288086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406403, 30.659056, 27.430302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023491, 30.545881, 27.454172>,  <34.793743, 30.477978, 27.468494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023491, 30.545881, 27.454172>,  <35.406403, 30.659056, 27.430302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023491, 30.545881, 27.454172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177543, -0.738007, -0.651018,
		0.228236, -0.612613, 0.756713,
		-0.957281, -0.282934, 0.059675,
		34.736305, 30.461000, 27.472075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419712, 29.939104, 27.256544>,  <35.406403, 30.659056, 27.430302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419712, 29.939104, 27.256544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031883, 30.023943, 27.207645>,  <34.799187, 30.074846, 27.178307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031883, 30.023943, 27.207645>,  <35.419712, 29.939104, 27.256544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031883, 30.023943, 27.207645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006748, -0.522327, -0.852719,
		-0.244712, -0.825947, 0.507865,
		-0.969572, 0.212097, -0.122246,
		34.741013, 30.087572, 27.170971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153183, 29.399553, 27.064125>,  <35.419712, 29.939104, 27.256544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153183, 29.399553, 27.064125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850811, 29.627115, 26.934565>,  <34.669388, 29.763653, 26.856829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850811, 29.627115, 26.934565>,  <35.153183, 29.399553, 27.064125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850811, 29.627115, 26.934565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089451, -0.579893, -0.809767,
		-0.648511, -0.583155, 0.489248,
		-0.755931, 0.568906, -0.323902,
		34.624031, 29.797787, 26.837395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617989, 28.940216, 27.029907>,  <35.153183, 29.399553, 27.064125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617989, 28.940216, 27.029907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542004, 29.254705, 26.794699>,  <34.496414, 29.443399, 26.653574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542004, 29.254705, 26.794699>,  <34.617989, 28.940216, 27.029907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542004, 29.254705, 26.794699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132183, -0.572991, -0.808832,
		-0.972853, -0.231372, 0.004920,
		-0.189960, 0.786224, -0.588019,
		34.485016, 29.490572, 26.618294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105644, 28.655077, 26.489595>,  <34.617989, 28.940216, 27.029907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105644, 28.655077, 26.489595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267223, 28.987267, 26.336161>,  <34.364170, 29.186581, 26.244101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267223, 28.987267, 26.336161>,  <34.105644, 28.655077, 26.489595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267223, 28.987267, 26.336161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062821, -0.443514, -0.894063,
		-0.912623, 0.337055, -0.231327,
		0.403945, 0.830475, -0.383587,
		34.388409, 29.236408, 26.221085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836365, 28.746586, 25.850338>,  <34.105644, 28.655077, 26.489595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836365, 28.746586, 25.850338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122681, 29.016893, 25.779926>,  <34.294472, 29.179077, 25.737679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122681, 29.016893, 25.779926>,  <33.836365, 28.746586, 25.850338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122681, 29.016893, 25.779926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011214, -0.263167, -0.964685,
		-0.698227, 0.688536, -0.195950,
		0.715788, 0.675767, -0.176029,
		34.337418, 29.219624, 25.727118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661003, 29.208641, 25.240934>,  <33.836365, 28.746586, 25.850338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661003, 29.208641, 25.240934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057049, 29.177406, 25.287548>,  <34.294674, 29.158665, 25.315516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057049, 29.177406, 25.287548>,  <33.661003, 29.208641, 25.240934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057049, 29.177406, 25.287548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108531, -0.099901, -0.989061,
		0.088875, 0.991929, -0.090438,
		0.990112, -0.078087, 0.116533,
		34.354084, 29.153980, 25.322508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255634, 29.667919, 24.774168>,  <33.661003, 29.208641, 25.240934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255634, 29.667919, 24.774168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955524, 29.408270, 24.724020>,  <32.775459, 29.252480, 24.693932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955524, 29.408270, 24.724020>,  <33.255634, 29.667919, 24.774168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955524, 29.408270, 24.724020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447023, 0.358389, 0.819590,
		-0.487085, 0.670964, -0.559066,
		-0.750279, -0.649126, -0.125370,
		32.730442, 29.213531, 24.686409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694180, 30.006994, 24.908123>,  <33.255634, 29.667919, 24.774168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694180, 30.006994, 24.908123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558495, 29.636375, 24.973173>,  <32.477085, 29.414005, 25.012203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558495, 29.636375, 24.973173>,  <32.694180, 30.006994, 24.908123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558495, 29.636375, 24.973173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469683, 0.316599, 0.824114,
		-0.815066, 0.203168, -0.542577,
		-0.339213, -0.926546, 0.162625,
		32.456730, 29.358412, 25.021961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918512, 30.025450, 24.912693>,  <32.694180, 30.006994, 24.908123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918512, 30.025450, 24.912693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067169, 29.722935, 25.128065>,  <32.156364, 29.541426, 25.257288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067169, 29.722935, 25.128065>,  <31.918512, 30.025450, 24.912693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067169, 29.722935, 25.128065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543653, 0.292835, 0.786568,
		-0.752544, -0.585042, -0.302329,
		0.371642, -0.756289, 0.538431,
		32.178661, 29.496048, 25.289595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307205, 29.725134, 25.199303>,  <31.918512, 30.025450, 24.912693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307205, 29.725134, 25.199303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.617363, 29.587006, 25.410780>,  <31.803457, 29.504128, 25.537666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.617363, 29.587006, 25.410780>,  <31.307205, 29.725134, 25.199303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617363, 29.587006, 25.410780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435616, 0.313619, 0.843731,
		-0.457167, -0.884531, 0.092751,
		0.775395, -0.345322, 0.528692,
		31.849981, 29.483410, 25.569387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978813, 29.460487, 25.842203>,  <31.307205, 29.725134, 25.199303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978813, 29.460487, 25.842203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.371021, 29.483456, 25.917343>,  <31.606346, 29.497236, 25.962427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.371021, 29.483456, 25.917343>,  <30.978813, 29.460487, 25.842203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371021, 29.483456, 25.917343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196166, 0.335760, 0.921295,
		-0.010170, -0.940196, 0.340483,
		0.980518, 0.057422, 0.187849,
		31.665176, 29.500683, 25.973698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159309, 29.151384, 26.416349>,  <30.978813, 29.460487, 25.842203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159309, 29.151384, 26.416349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461336, 29.411938, 26.386480>,  <31.642551, 29.568270, 26.368559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461336, 29.411938, 26.386480>,  <31.159309, 29.151384, 26.416349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461336, 29.411938, 26.386480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087504, 0.212986, 0.973129,
		0.649783, -0.728243, 0.217817,
		0.755067, 0.651382, -0.074671,
		31.687857, 29.607351, 26.364079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276718, 29.203388, 27.078701>,  <31.159309, 29.151384, 26.416349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276718, 29.203388, 27.078701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516232, 29.491627, 26.938875>,  <31.659941, 29.664570, 26.854979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516232, 29.491627, 26.938875>,  <31.276718, 29.203388, 27.078701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516232, 29.491627, 26.938875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098966, 0.499687, 0.860534,
		0.794772, -0.480680, 0.370520,
		0.598785, 0.720597, -0.349566,
		31.695868, 29.707806, 26.834005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919905, 29.369890, 27.544258>,  <31.276718, 29.203388, 27.078701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919905, 29.369890, 27.544258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.844379, 29.696924, 27.326672>,  <31.799065, 29.893145, 27.196119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.844379, 29.696924, 27.326672>,  <31.919905, 29.369890, 27.544258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844379, 29.696924, 27.326672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133068, 0.527520, 0.839056,
		0.972955, 0.230811, 0.009191,
		-0.188815, 0.817587, -0.543967,
		31.787735, 29.942200, 27.163481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079605, 29.863886, 27.993267>,  <31.919905, 29.369890, 27.544258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079605, 29.863886, 27.993267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.888498, 30.070066, 27.708717>,  <31.773834, 30.193775, 27.537989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.888498, 30.070066, 27.708717>,  <32.079605, 29.863886, 27.993267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888498, 30.070066, 27.708717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221367, 0.713000, 0.665303,
		0.850140, 0.475332, -0.226542,
		-0.477764, 0.515451, -0.711373,
		31.745169, 30.224701, 27.495306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402668, 30.557981, 28.045853>,  <32.079605, 29.863886, 27.993267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402668, 30.557981, 28.045853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033180, 30.559973, 27.892635>,  <31.811487, 30.561169, 27.800705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033180, 30.559973, 27.892635>,  <32.402668, 30.557981, 28.045853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033180, 30.559973, 27.892635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212446, 0.825401, 0.523049,
		0.318768, 0.564526, -0.761379,
		-0.923717, 0.004979, -0.383042,
		31.756065, 30.561466, 27.777723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224411, 31.239935, 28.231874>,  <32.402668, 30.557981, 28.045853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224411, 31.239935, 28.231874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.881166, 31.077181, 28.106596>,  <31.675220, 30.979528, 28.031429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.881166, 31.077181, 28.106596>,  <32.224411, 31.239935, 28.231874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881166, 31.077181, 28.106596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512782, 0.710540, 0.481859,
		0.026478, 0.574090, -0.818364,
		-0.858110, -0.406884, -0.313197,
		31.623734, 30.955116, 28.012636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796803, 31.767271, 27.955805>,  <32.224411, 31.239935, 28.231874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796803, 31.767271, 27.955805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.552746, 31.466711, 28.056307>,  <31.406313, 31.286375, 28.116608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.552746, 31.466711, 28.056307>,  <31.796803, 31.767271, 27.955805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552746, 31.466711, 28.056307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597993, 0.644773, 0.476102,
		-0.519744, 0.140241, -0.842733,
		-0.610140, -0.751399, 0.251254,
		31.369703, 31.241291, 28.131683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071974, 31.921782, 27.858206>,  <31.796803, 31.767271, 27.955805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071974, 31.921782, 27.858206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993689, 31.599161, 28.081337>,  <30.946718, 31.405588, 28.215216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993689, 31.599161, 28.081337>,  <31.071974, 31.921782, 27.858206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993689, 31.599161, 28.081337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754036, 0.487454, 0.440248,
		-0.626998, -0.334460, -0.703569,
		-0.195712, -0.806551, 0.557828,
		30.934975, 31.357195, 28.248686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284142, 31.862457, 27.867439>,  <31.071974, 31.921782, 27.858206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284142, 31.862457, 27.867439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.485018, 31.710333, 28.178095>,  <30.605543, 31.619059, 28.364489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.485018, 31.710333, 28.178095>,  <30.284142, 31.862457, 27.867439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485018, 31.710333, 28.178095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741793, 0.272150, 0.612926,
		-0.444464, -0.883911, -0.145439,
		0.502190, -0.380309, 0.776640,
		30.635675, 31.596241, 28.411087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969080, 31.295473, 28.232712>,  <30.284142, 31.862457, 27.867439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969080, 31.295473, 28.232712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.169685, 31.494345, 28.515921>,  <30.290049, 31.613668, 28.685846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.169685, 31.494345, 28.515921>,  <29.969080, 31.295473, 28.232712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169685, 31.494345, 28.515921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827787, 0.037859, 0.559764,
		0.251498, -0.866822, 0.430545,
		0.501515, 0.497179, 0.708022,
		30.320141, 31.643497, 28.728327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239126, 31.299250, 28.275846>,  <29.969080, 31.295473, 28.232712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239126, 31.299250, 28.275846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.162416, 31.679960, 28.371632>,  <29.116390, 31.908386, 28.429102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.162416, 31.679960, 28.371632>,  <29.239126, 31.299250, 28.275846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162416, 31.679960, 28.371632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027795, 0.238626, -0.970714,
		-0.981046, -0.192813, -0.019307,
		-0.191773, 0.951778, 0.239462,
		29.104885, 31.965494, 28.443470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613462, 31.506664, 27.906996>,  <29.239126, 31.299250, 28.275846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613462, 31.506664, 27.906996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.845436, 31.820982, 27.992973>,  <28.984621, 32.009571, 28.044559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.845436, 31.820982, 27.992973>,  <28.613462, 31.506664, 27.906996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845436, 31.820982, 27.992973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083901, 0.320052, -0.943678,
		-0.810330, 0.529239, 0.251539,
		0.579936, 0.785795, 0.214944,
		29.019417, 32.056721, 28.057457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247786, 32.101971, 27.518291>,  <28.613462, 31.506664, 27.906996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247786, 32.101971, 27.518291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.622765, 32.229496, 27.574219>,  <28.847752, 32.306011, 27.607775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.622765, 32.229496, 27.574219>,  <28.247786, 32.101971, 27.518291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622765, 32.229496, 27.574219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004692, 0.390023, -0.920793,
		-0.348097, 0.863850, 0.364130,
		0.937447, 0.318817, 0.139819,
		28.903999, 32.325142, 27.616165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205217, 32.796936, 27.336849>,  <28.247786, 32.101971, 27.518291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205217, 32.796936, 27.336849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.592974, 32.700840, 27.316582>,  <28.825628, 32.643185, 27.304422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.592974, 32.700840, 27.316582>,  <28.205217, 32.796936, 27.336849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592974, 32.700840, 27.316582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059556, 0.430285, -0.900727,
		0.238189, 0.870139, 0.431422,
		0.969391, -0.240237, -0.050667,
		28.883791, 32.628769, 27.301382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526430, 33.390083, 27.155426>,  <28.205217, 32.796936, 27.336849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526430, 33.390083, 27.155426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782074, 33.097378, 27.060717>,  <28.935459, 32.921753, 27.003891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782074, 33.097378, 27.060717>,  <28.526430, 33.390083, 27.155426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782074, 33.097378, 27.060717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156981, 0.425483, -0.891247,
		0.752926, 0.532434, 0.386803,
		0.639108, -0.731763, -0.236776,
		28.973806, 32.877850, 26.989683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054949, 33.725883, 26.815489>,  <28.526430, 33.390083, 27.155426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054949, 33.725883, 26.815489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.096529, 33.345581, 26.698698>,  <29.121477, 33.117397, 26.628624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.096529, 33.345581, 26.698698>,  <29.054949, 33.725883, 26.815489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096529, 33.345581, 26.698698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211642, 0.307989, -0.927551,
		0.971804, 0.034623, 0.233236,
		0.103949, -0.950760, -0.291977,
		29.127714, 33.060352, 26.611105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642536, 33.793999, 26.456600>,  <29.054949, 33.725883, 26.815489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642536, 33.793999, 26.456600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.477795, 33.445961, 26.348293>,  <29.378950, 33.237137, 26.283308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.477795, 33.445961, 26.348293>,  <29.642536, 33.793999, 26.456600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477795, 33.445961, 26.348293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328846, 0.135203, -0.934655,
		0.849846, -0.473981, 0.230443,
		-0.411853, -0.870093, -0.270769,
		29.354239, 33.184933, 26.267063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123514, 33.581543, 25.946693>,  <29.642536, 33.793999, 26.456600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123514, 33.581543, 25.946693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.803497, 33.361317, 25.851351>,  <29.611488, 33.229179, 25.794146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.803497, 33.361317, 25.851351>,  <30.123514, 33.581543, 25.946693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803497, 33.361317, 25.851351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348200, -0.102582, -0.931790,
		0.488560, -0.828466, 0.273776,
		-0.800041, -0.550565, -0.238355,
		29.563484, 33.196148, 25.779844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396820, 32.921627, 25.684538>,  <30.123514, 33.581543, 25.946693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396820, 32.921627, 25.684538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.016188, 32.947124, 25.564253>,  <29.787807, 32.962421, 25.492083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.016188, 32.947124, 25.564253>,  <30.396820, 32.921627, 25.684538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016188, 32.947124, 25.564253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280295, -0.221690, -0.933964,
		-0.126195, -0.973032, 0.193090,
		-0.951583, 0.063740, -0.300712,
		29.730713, 32.966248, 25.474039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235104, 32.222614, 25.283213>,  <30.396820, 32.921627, 25.684538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235104, 32.222614, 25.283213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.997494, 32.520267, 25.160963>,  <29.854929, 32.698860, 25.087612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.997494, 32.520267, 25.160963>,  <30.235104, 32.222614, 25.283213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997494, 32.520267, 25.160963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324659, -0.125845, -0.937422,
		-0.736026, -0.656074, -0.166834,
		-0.594023, 0.744131, -0.305625,
		29.819286, 32.743507, 25.069275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078577, 32.085606, 24.535877>,  <30.235104, 32.222614, 25.283213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078577, 32.085606, 24.535877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.973330, 32.469414, 24.576065>,  <29.910181, 32.699699, 24.600178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.973330, 32.469414, 24.576065>,  <30.078577, 32.085606, 24.535877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973330, 32.469414, 24.576065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268516, 0.172861, -0.947638,
		-0.926643, -0.222364, -0.303129,
		-0.263120, 0.959517, 0.100472,
		29.894394, 32.757271, 24.606207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678246, 32.198212, 23.919651>,  <30.078577, 32.085606, 24.535877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678246, 32.198212, 23.919651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.817316, 32.546669, 24.058346>,  <29.900759, 32.755745, 24.141563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.817316, 32.546669, 24.058346>,  <29.678246, 32.198212, 23.919651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817316, 32.546669, 24.058346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260107, 0.265680, -0.928310,
		-0.900815, 0.412938, -0.134222,
		0.347674, 0.871147, 0.346736,
		29.921618, 32.808014, 24.162367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413897, 32.651199, 23.504955>,  <29.678246, 32.198212, 23.919651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413897, 32.651199, 23.504955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.710688, 32.850529, 23.684353>,  <29.888763, 32.970127, 23.791990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.710688, 32.850529, 23.684353>,  <29.413897, 32.651199, 23.504955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710688, 32.850529, 23.684353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385891, 0.229597, -0.893517,
		-0.548229, 0.836040, -0.021940,
		0.741979, 0.498319, 0.448492,
		29.933281, 33.000023, 23.818901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442778, 33.316017, 23.229380>,  <29.413897, 32.651199, 23.504955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442778, 33.316017, 23.229380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.815567, 33.243221, 23.354795>,  <30.039240, 33.199543, 23.430044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.815567, 33.243221, 23.354795>,  <29.442778, 33.316017, 23.229380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815567, 33.243221, 23.354795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358810, 0.339507, -0.869477,
		0.051786, 0.922830, 0.381710,
		0.931973, -0.181988, 0.313539,
		30.095160, 33.188625, 23.448856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839279, 33.730938, 22.797384>,  <29.442778, 33.316017, 23.229380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839279, 33.730938, 22.797384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.119999, 33.502113, 22.967194>,  <30.288431, 33.364819, 23.069080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.119999, 33.502113, 22.967194>,  <29.839279, 33.730938, 22.797384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119999, 33.502113, 22.967194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552808, 0.061468, -0.831038,
		0.449312, 0.817903, 0.359379,
		0.701799, -0.572063, 0.424525,
		30.330538, 33.330494, 23.094551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466282, 34.108860, 22.642448>,  <29.839279, 33.730938, 22.797384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466282, 34.108860, 22.642448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588100, 33.738529, 22.731974>,  <30.661192, 33.516331, 22.785688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588100, 33.738529, 22.731974>,  <30.466282, 34.108860, 22.642448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588100, 33.738529, 22.731974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595387, 0.001624, -0.803438,
		0.743483, 0.377936, 0.551721,
		0.304544, -0.925830, 0.223811,
		30.679464, 33.460781, 22.799116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188662, 34.117168, 22.619249>,  <30.466282, 34.108860, 22.642448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188662, 34.117168, 22.619249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.052938, 33.749435, 22.539555>,  <30.971504, 33.528793, 22.491737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.052938, 33.749435, 22.539555>,  <31.188662, 34.117168, 22.619249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052938, 33.749435, 22.539555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556118, -0.025218, -0.830720,
		0.758686, -0.392667, 0.519815,
		-0.339305, -0.919335, -0.199237,
		30.951147, 33.473637, 22.479784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723557, 33.877705, 22.382057>,  <31.188662, 34.117168, 22.619249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723557, 33.877705, 22.382057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.447145, 33.611687, 22.268785>,  <31.281300, 33.452076, 22.200823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.447145, 33.611687, 22.268785>,  <31.723557, 33.877705, 22.382057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447145, 33.611687, 22.268785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457805, -0.099505, -0.883467,
		0.559371, -0.740141, 0.373223,
		-0.691028, -0.665049, -0.283180,
		31.239838, 33.412170, 22.183832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044853, 33.300419, 22.197216>,  <31.723557, 33.877705, 22.382057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044853, 33.300419, 22.197216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.706913, 33.276363, 21.984570>,  <31.504150, 33.261929, 21.856981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.706913, 33.276363, 21.984570>,  <32.044853, 33.300419, 22.197216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706913, 33.276363, 21.984570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508363, -0.399909, -0.762653,
		-0.166734, -0.914580, 0.368435,
		-0.844847, -0.060139, -0.531617,
		31.453459, 33.258324, 21.825085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176937, 32.757454, 21.786068>,  <32.044853, 33.300419, 22.197216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176937, 32.757454, 21.786068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862089, 32.917667, 21.598448>,  <31.673180, 33.013794, 21.485876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862089, 32.917667, 21.598448>,  <32.176937, 32.757454, 21.786068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862089, 32.917667, 21.598448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386581, -0.272202, -0.881170,
		-0.480615, -0.874916, 0.059419,
		-0.787124, 0.400534, -0.469051,
		31.625952, 33.037827, 21.457733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043949, 32.331551, 21.261232>,  <32.176937, 32.757454, 21.786068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043949, 32.331551, 21.261232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842430, 32.657139, 21.145546>,  <31.721519, 32.852493, 21.076134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842430, 32.657139, 21.145546>,  <32.043949, 32.331551, 21.261232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842430, 32.657139, 21.145546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207843, -0.210752, -0.955189,
		-0.838447, -0.541329, -0.063003,
		-0.503793, 0.813970, -0.289216,
		31.691292, 32.901329, 21.058781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520084, 32.073486, 20.741104>,  <32.043949, 32.331551, 21.261232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520084, 32.073486, 20.741104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601423, 32.463669, 20.707329>,  <31.650227, 32.697781, 20.687063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.601423, 32.463669, 20.707329>,  <31.520084, 32.073486, 20.741104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601423, 32.463669, 20.707329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159399, -0.118071, -0.980128,
		-0.966044, 0.185849, -0.179496,
		0.203349, 0.975458, -0.084438,
		31.662428, 32.756306, 20.681997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305946, 32.131142, 20.086069>,  <31.520084, 32.073486, 20.741104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305946, 32.131142, 20.086069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516560, 32.462238, 20.163641>,  <31.642927, 32.660896, 20.210184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516560, 32.462238, 20.163641>,  <31.305946, 32.131142, 20.086069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516560, 32.462238, 20.163641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316153, 0.021111, -0.948474,
		-0.789185, 0.560713, -0.250577,
		0.526532, 0.827741, 0.193931,
		31.674519, 32.710560, 20.221821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185152, 32.708744, 19.525270>,  <31.305946, 32.131142, 20.086069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185152, 32.708744, 19.525270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538347, 32.776215, 19.700489>,  <31.750263, 32.816696, 19.805620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538347, 32.776215, 19.700489>,  <31.185152, 32.708744, 19.525270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538347, 32.776215, 19.700489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444889, -0.003120, -0.895580,
		-0.149694, 0.985667, -0.077796,
		0.882987, 0.168674, 0.438046,
		31.803244, 32.826817, 19.831903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365681, 33.351593, 19.336254>,  <31.185152, 32.708744, 19.525270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365681, 33.351593, 19.336254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.683542, 33.128311, 19.431698>,  <31.874260, 32.994343, 19.488964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.683542, 33.128311, 19.431698>,  <31.365681, 33.351593, 19.336254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683542, 33.128311, 19.431698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338257, 0.080761, -0.937582,
		0.504091, 0.825764, 0.252993,
		0.794654, -0.558203, 0.238610,
		31.921938, 32.960850, 19.503281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943802, 33.663826, 19.026163>,  <31.365681, 33.351593, 19.336254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943802, 33.663826, 19.026163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.100876, 33.301197, 19.088043>,  <32.195122, 33.083622, 19.125172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.100876, 33.301197, 19.088043>,  <31.943802, 33.663826, 19.026163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100876, 33.301197, 19.088043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476100, 0.056471, -0.877576,
		0.786847, 0.418263, 0.453792,
		0.392684, -0.906569, 0.154701,
		32.218681, 33.029228, 19.134453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624977, 33.629250, 18.739960>,  <31.943802, 33.663826, 19.026163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624977, 33.629250, 18.739960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570560, 33.233040, 18.747408>,  <32.537910, 32.995312, 18.751877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570560, 33.233040, 18.747408>,  <32.624977, 33.629250, 18.739960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570560, 33.233040, 18.747408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586373, -0.095657, -0.804373,
		0.798535, -0.098510, 0.593833,
		-0.136043, -0.990528, 0.018622,
		32.529747, 32.935883, 18.752995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266228, 33.609955, 19.112389>,  <32.624977, 33.629250, 18.739960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266228, 33.609955, 19.112389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559738, 33.878815, 19.151964>,  <33.735844, 34.040131, 19.175711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559738, 33.878815, 19.151964>,  <33.266228, 33.609955, 19.112389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559738, 33.878815, 19.151964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308197, 0.199533, 0.930162,
		0.605466, -0.713022, 0.353567,
		0.733775, 0.672150, 0.098941,
		33.779869, 34.080460, 19.181646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734146, 33.422546, 19.676949>,  <33.266228, 33.609955, 19.112389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734146, 33.422546, 19.676949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767971, 33.818035, 19.627499>,  <33.788265, 34.055328, 19.597830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767971, 33.818035, 19.627499>,  <33.734146, 33.422546, 19.676949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767971, 33.818035, 19.627499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226303, 0.139883, 0.963960,
		0.970379, -0.053539, 0.235579,
		0.084563, 0.988720, -0.123623,
		33.793339, 34.114651, 19.590412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232582, 33.626778, 20.134720>,  <33.734146, 33.422546, 19.676949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232582, 33.626778, 20.134720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.035355, 33.969254, 20.072977>,  <33.917019, 34.174740, 20.035933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.035355, 33.969254, 20.072977>,  <34.232582, 33.626778, 20.134720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035355, 33.969254, 20.072977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220547, 0.048613, 0.974164,
		0.841569, 0.514376, 0.164859,
		-0.493072, 0.856186, -0.154355,
		33.887432, 34.226109, 20.026670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610527, 34.129398, 20.542757>,  <34.232582, 33.626778, 20.134720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610527, 34.129398, 20.542757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.247055, 34.285969, 20.484682>,  <34.028973, 34.379913, 20.449837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.247055, 34.285969, 20.484682>,  <34.610527, 34.129398, 20.542757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247055, 34.285969, 20.484682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042017, 0.260256, 0.964625,
		0.415368, 0.882638, -0.220043,
		-0.908683, 0.391429, -0.145187,
		33.974449, 34.403397, 20.441126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608597, 34.797504, 20.895884>,  <34.610527, 34.129398, 20.542757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608597, 34.797504, 20.895884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.222858, 34.698059, 20.859612>,  <33.991413, 34.638390, 20.837849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.222858, 34.698059, 20.859612>,  <34.608597, 34.797504, 20.895884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222858, 34.698059, 20.859612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182636, 0.377260, 0.907920,
		-0.191514, 0.892112, -0.409216,
		-0.964348, -0.248617, -0.090681,
		33.933556, 34.623474, 20.832407>
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
