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
	<24.441235, 34.658428, 34.965416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216444, 34.986641, 34.923637>,  <24.081570, 35.183567, 34.898571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216444, 34.986641, 34.923637>,  <24.441235, 34.658428, 34.965416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.216444, 34.986641, 34.923637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179317, 0.002420, 0.983788,
		0.807483, 0.571595, 0.145775,
		-0.561976, 0.820532, -0.104451,
		24.047852, 35.232800, 34.892303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.444132, 34.321983, 35.657818>,  <24.441235, 34.658428, 34.965416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.444132, 34.321983, 35.657818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.834450, 34.236954, 35.678360>,  <25.068640, 34.185936, 35.690685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.834450, 34.236954, 35.678360>,  <24.444132, 34.321983, 35.657818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.834450, 34.236954, 35.678360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135577, 0.403778, -0.904755,
		0.171588, 0.889818, 0.422825,
		0.975795, -0.212570, 0.051355,
		25.127188, 34.173183, 35.693768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831636, 34.929249, 35.501728>,  <24.444132, 34.321983, 35.657818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831636, 34.929249, 35.501728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073101, 34.617126, 35.436356>,  <25.217979, 34.429852, 35.397133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073101, 34.617126, 35.436356>,  <24.831636, 34.929249, 35.501728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073101, 34.617126, 35.436356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232752, 0.368558, -0.899995,
		0.762508, 0.505254, 0.404103,
		0.603662, -0.780310, -0.163429,
		25.254200, 34.383034, 35.387325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531832, 35.221912, 35.254868>,  <24.831636, 34.929249, 35.501728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531832, 35.221912, 35.254868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473906, 34.845459, 35.132694>,  <25.439150, 34.619587, 35.059391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473906, 34.845459, 35.132694>,  <25.531832, 35.221912, 35.254868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473906, 34.845459, 35.132694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165716, 0.281261, -0.945215,
		0.975483, -0.187496, 0.115231,
		-0.144814, -0.941136, -0.305436,
		25.430462, 34.563118, 35.041065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061634, 35.146423, 34.805759>,  <25.531832, 35.221912, 35.254868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061634, 35.146423, 34.805759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815535, 34.844109, 34.716087>,  <25.667875, 34.662720, 34.662285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815535, 34.844109, 34.716087>,  <26.061634, 35.146423, 34.805759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815535, 34.844109, 34.716087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079087, 0.223760, -0.971430,
		0.784356, -0.615400, -0.077895,
		-0.615248, -0.755787, -0.224178,
		25.630960, 34.617374, 34.648834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377466, 34.817307, 34.311295>,  <26.061634, 35.146423, 34.805759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377466, 34.817307, 34.311295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983610, 34.751545, 34.287800>,  <25.747295, 34.712086, 34.273705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983610, 34.751545, 34.287800>,  <26.377466, 34.817307, 34.311295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983610, 34.751545, 34.287800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033007, 0.155050, -0.987355,
		0.171451, -0.974128, -0.147241,
		-0.984639, -0.164423, -0.058737,
		25.688217, 34.702225, 34.270180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188663, 34.209877, 33.849602>,  <26.377466, 34.817307, 34.311295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188663, 34.209877, 33.849602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900585, 34.487141, 33.861256>,  <25.727737, 34.653500, 33.868248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900585, 34.487141, 33.861256>,  <26.188663, 34.209877, 33.849602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900585, 34.487141, 33.861256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006208, 0.048430, -0.998807,
		-0.693742, -0.719158, -0.039182,
		-0.720197, 0.693157, 0.029133,
		25.684526, 34.695087, 33.869995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720100, 34.078072, 33.319016>,  <26.188663, 34.209877, 33.849602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720100, 34.078072, 33.319016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645617, 34.466347, 33.379791>,  <25.600927, 34.699314, 33.416256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645617, 34.466347, 33.379791>,  <25.720100, 34.078072, 33.319016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645617, 34.466347, 33.379791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174360, 0.184832, -0.967179,
		-0.966915, -0.153606, -0.203667,
		-0.186208, 0.970692, 0.151935,
		25.589754, 34.757553, 33.425373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077925, 34.486336, 32.982365>,  <25.720100, 34.078072, 33.319016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077925, 34.486336, 32.982365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371557, 34.753189, 33.033054>,  <25.547737, 34.913300, 33.063469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371557, 34.753189, 33.033054>,  <25.077925, 34.486336, 32.982365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371557, 34.753189, 33.033054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092815, 0.086290, -0.991937,
		-0.672690, 0.739923, 0.001424,
		0.734080, 0.667134, 0.126722,
		25.591782, 34.953331, 33.071072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900288, 35.139931, 32.517525>,  <25.077925, 34.486336, 32.982365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900288, 35.139931, 32.517525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288994, 35.124981, 32.610714>,  <25.522217, 35.116013, 32.666630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288994, 35.124981, 32.610714>,  <24.900288, 35.139931, 32.517525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288994, 35.124981, 32.610714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235914, 0.135288, -0.962311,
		0.004442, 0.990101, 0.140285,
		0.971764, -0.037370, 0.232978,
		25.580523, 35.113770, 32.680607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248030, 35.625660, 32.103382>,  <24.900288, 35.139931, 32.517525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248030, 35.625660, 32.103382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557674, 35.399521, 32.217319>,  <25.743462, 35.263836, 32.285683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557674, 35.399521, 32.217319>,  <25.248030, 35.625660, 32.103382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557674, 35.399521, 32.217319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389573, 0.070775, -0.918272,
		0.498983, 0.821811, 0.275032,
		0.774112, -0.565347, 0.284840,
		25.789907, 35.229916, 32.302773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913086, 35.929008, 31.884987>,  <25.248030, 35.625660, 32.103382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913086, 35.929008, 31.884987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916647, 35.530430, 31.918497>,  <25.918783, 35.291283, 31.938602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916647, 35.530430, 31.918497>,  <25.913086, 35.929008, 31.884987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916647, 35.530430, 31.918497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322791, -0.076428, -0.943380,
		0.946429, 0.035441, 0.320963,
		0.008904, -0.996445, 0.083774,
		25.919317, 35.231495, 31.943628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611332, 35.502865, 31.853411>,  <25.913086, 35.929008, 31.884987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611332, 35.502865, 31.853411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302673, 35.304165, 31.694513>,  <26.117479, 35.184944, 31.599174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302673, 35.304165, 31.694513>,  <26.611332, 35.502865, 31.853411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302673, 35.304165, 31.694513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553572, -0.216924, -0.804054,
		0.313244, -0.840346, 0.442376,
		-0.771645, -0.496752, -0.397242,
		26.071180, 35.155140, 31.575340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842863, 34.849075, 31.723536>,  <26.611332, 35.502865, 31.853411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842863, 34.849075, 31.723536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534599, 34.944378, 31.487123>,  <26.349642, 35.001560, 31.345276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534599, 34.944378, 31.487123>,  <26.842863, 34.849075, 31.723536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534599, 34.944378, 31.487123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476293, -0.400809, -0.782622,
		-0.423358, -0.884638, 0.195406,
		-0.770658, 0.238258, -0.591032,
		26.303402, 35.015854, 31.309814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263283, 34.433140, 31.569263>,  <26.842863, 34.849075, 31.723536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263283, 34.433140, 31.569263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942131, 34.294403, 31.763206>,  <25.749441, 34.211163, 31.879572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942131, 34.294403, 31.763206>,  <26.263283, 34.433140, 31.569263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942131, 34.294403, 31.763206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334127, -0.411759, -0.847829,
		0.493707, -0.842707, 0.214703,
		-0.802877, -0.346841, 0.484860,
		25.701267, 34.190350, 31.908665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373047, 34.120338, 32.248524>,  <26.263283, 34.433140, 31.569263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373047, 34.120338, 32.248524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376688, 34.509449, 32.155899>,  <26.378874, 34.742916, 32.100323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376688, 34.509449, 32.155899>,  <26.373047, 34.120338, 32.248524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376688, 34.509449, 32.155899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300082, 0.223558, 0.927347,
		0.953870, 0.061044, 0.293948,
		0.009105, 0.972777, -0.231563,
		26.379419, 34.801281, 32.086430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717079, 34.473171, 32.757877>,  <26.373047, 34.120338, 32.248524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717079, 34.473171, 32.757877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460869, 34.727219, 32.585205>,  <26.307142, 34.879646, 32.481602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460869, 34.727219, 32.585205>,  <26.717079, 34.473171, 32.757877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460869, 34.727219, 32.585205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170343, 0.430620, 0.886313,
		0.748807, 0.641239, -0.167633,
		-0.640524, 0.635122, -0.431682,
		26.268711, 34.917755, 32.455700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869349, 35.137280, 33.023968>,  <26.717079, 34.473171, 32.757877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869349, 35.137280, 33.023968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482826, 35.152885, 32.922199>,  <26.250914, 35.162247, 32.861137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482826, 35.152885, 32.922199>,  <26.869349, 35.137280, 33.023968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482826, 35.152885, 32.922199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229713, 0.315220, 0.920798,
		0.116122, 0.948217, -0.295637,
		-0.966306, 0.039013, -0.254421,
		26.192934, 35.164589, 32.845871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553164, 35.743629, 33.194057>,  <26.869349, 35.137280, 33.023968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553164, 35.743629, 33.194057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248665, 35.486500, 33.159935>,  <26.065966, 35.332222, 33.139462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248665, 35.486500, 33.159935>,  <26.553164, 35.743629, 33.194057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248665, 35.486500, 33.159935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329549, 0.270209, 0.904646,
		-0.558482, 0.716770, -0.417539,
		-0.761246, -0.642828, -0.085304,
		26.020290, 35.293652, 33.134342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749887, 36.006336, 33.288624>,  <26.553164, 35.743629, 33.194057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749887, 36.006336, 33.288624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811338, 35.629204, 33.406929>,  <25.848209, 35.402924, 33.477913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811338, 35.629204, 33.406929>,  <25.749887, 36.006336, 33.288624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811338, 35.629204, 33.406929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366000, 0.223729, 0.903321,
		-0.917847, -0.247024, -0.310704,
		0.153628, -0.942828, 0.295760,
		25.857428, 35.346355, 33.495655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557642, 35.915920, 34.016689>,  <25.749887, 36.006336, 33.288624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557642, 35.915920, 34.016689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529314, 35.581627, 33.798870>,  <25.512318, 35.381050, 33.668179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529314, 35.581627, 33.798870>,  <25.557642, 35.915920, 34.016689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529314, 35.581627, 33.798870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240519, -0.515507, 0.822438,
		-0.968058, 0.189218, -0.164502,
		-0.070819, -0.835733, -0.544551,
		25.508068, 35.330906, 33.635506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878576, 35.643707, 34.091881>,  <25.557642, 35.915920, 34.016689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878576, 35.643707, 34.091881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101439, 35.326424, 33.993580>,  <25.235155, 35.136055, 33.934597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101439, 35.326424, 33.993580>,  <24.878576, 35.643707, 34.091881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101439, 35.326424, 33.993580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091432, -0.352742, 0.931243,
		-0.825360, -0.496377, -0.269057,
		0.557155, -0.793211, -0.245754,
		25.268585, 35.088459, 33.919853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473623, 35.029865, 34.338196>,  <24.878576, 35.643707, 34.091881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473623, 35.029865, 34.338196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846407, 34.893932, 34.287659>,  <25.070078, 34.812374, 34.257336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846407, 34.893932, 34.287659>,  <24.473623, 35.029865, 34.338196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.846407, 34.893932, 34.287659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003067, -0.341078, 0.940030,
		-0.362550, -0.876457, -0.316829,
		0.931959, -0.339836, -0.126346,
		25.125996, 34.791981, 34.249756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.490156, 34.258629, 34.266926>,  <24.473623, 35.029865, 34.338196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.490156, 34.258629, 34.266926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883142, 34.325569, 34.234058>,  <25.118935, 34.365734, 34.214340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883142, 34.325569, 34.234058>,  <24.490156, 34.258629, 34.266926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883142, 34.325569, 34.234058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164868, -0.574138, 0.801988,
		0.087039, -0.801473, -0.591663,
		0.982467, 0.167350, -0.082165,
		25.177883, 34.375774, 34.209408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831701, 33.654987, 34.277531>,  <24.490156, 34.258629, 34.266926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831701, 33.654987, 34.277531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093452, 33.936447, 34.388287>,  <25.250504, 34.105324, 34.454742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093452, 33.936447, 34.388287>,  <24.831701, 33.654987, 34.277531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.093452, 33.936447, 34.388287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005275, -0.370419, 0.928850,
		0.756150, -0.606357, -0.246105,
		0.654377, 0.703648, 0.276895,
		25.289766, 34.147541, 34.471355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478163, 33.347713, 34.609756>,  <24.831701, 33.654987, 34.277531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478163, 33.347713, 34.609756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437960, 33.719940, 34.750580>,  <25.413837, 33.943275, 34.835072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437960, 33.719940, 34.750580>,  <25.478163, 33.347713, 34.609756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437960, 33.719940, 34.750580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115137, -0.340591, 0.933135,
		0.988252, 0.134322, -0.072911,
		-0.100508, 0.930567, 0.352055,
		25.407808, 33.999111, 34.856197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080830, 33.441101, 35.113960>,  <25.478163, 33.347713, 34.609756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080830, 33.441101, 35.113960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814724, 33.726288, 35.202591>,  <25.655060, 33.897400, 35.255772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814724, 33.726288, 35.202591>,  <26.080830, 33.441101, 35.113960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814724, 33.726288, 35.202591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234809, -0.081924, 0.968583,
		0.708722, 0.696394, -0.112910,
		-0.665265, 0.712968, 0.221581,
		25.615145, 33.940178, 35.269066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349369, 33.750671, 35.663902>,  <26.080830, 33.441101, 35.113960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349369, 33.750671, 35.663902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959303, 33.838017, 35.649094>,  <25.725264, 33.890423, 35.640209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959303, 33.838017, 35.649094>,  <26.349369, 33.750671, 35.663902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959303, 33.838017, 35.649094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039638, -0.007594, 0.999185,
		0.217899, 0.975839, 0.016061,
		-0.975166, 0.218359, -0.037026,
		25.666754, 33.903522, 35.637985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017811, 34.424030, 36.019104>,  <26.349369, 33.750671, 35.663902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017811, 34.424030, 36.019104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769093, 34.111187, 36.035526>,  <25.619862, 33.923481, 36.045380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769093, 34.111187, 36.035526>,  <26.017811, 34.424030, 36.019104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769093, 34.111187, 36.035526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050497, 0.092347, 0.994446,
		-0.781551, 0.616267, -0.096915,
		-0.621794, -0.782104, 0.041054,
		25.582554, 33.876556, 36.047844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421434, 34.569279, 36.458721>,  <26.017811, 34.424030, 36.019104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421434, 34.569279, 36.458721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480446, 34.174679, 36.487183>,  <25.515852, 33.937920, 36.504257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480446, 34.174679, 36.487183>,  <25.421434, 34.569279, 36.458721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480446, 34.174679, 36.487183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039328, 0.066029, 0.997042,
		-0.988275, -0.149891, -0.029055,
		0.147529, -0.986495, 0.071150,
		25.524704, 33.878731, 36.508526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969328, 34.157585, 36.699875>,  <25.421434, 34.569279, 36.458721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969328, 34.157585, 36.699875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308529, 33.970711, 36.799973>,  <25.512051, 33.858585, 36.860031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308529, 33.970711, 36.799973>,  <24.969328, 34.157585, 36.699875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308529, 33.970711, 36.799973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224350, 0.111344, 0.968127,
		-0.480163, -0.877118, -0.010394,
		0.848004, -0.467190, 0.250244,
		25.562931, 33.830555, 36.875046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764790, 33.652458, 37.123062>,  <24.969328, 34.157585, 36.699875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764790, 33.652458, 37.123062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141909, 33.773144, 37.179768>,  <25.368181, 33.845554, 37.213791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141909, 33.773144, 37.179768>,  <24.764790, 33.652458, 37.123062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141909, 33.773144, 37.179768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232912, 0.291950, 0.927641,
		0.238492, -0.907599, 0.345522,
		0.942801, 0.301711, 0.141763,
		25.424747, 33.863659, 37.222298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888868, 33.510643, 37.760948>,  <24.764790, 33.652458, 37.123062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888868, 33.510643, 37.760948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201218, 33.755608, 37.711662>,  <25.388628, 33.902588, 37.682091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201218, 33.755608, 37.711662>,  <24.888868, 33.510643, 37.760948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201218, 33.755608, 37.711662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091238, 0.306936, 0.947347,
		0.617990, -0.728516, 0.295554,
		0.780873, 0.612417, -0.123215,
		25.435480, 33.939331, 37.674698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410521, 33.307377, 38.281143>,  <24.888868, 33.510643, 37.760948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410521, 33.307377, 38.281143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457094, 33.688908, 38.170387>,  <25.485039, 33.917824, 38.103935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457094, 33.688908, 38.170387>,  <25.410521, 33.307377, 38.281143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457094, 33.688908, 38.170387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023356, 0.281335, 0.959325,
		0.992924, -0.105231, 0.055034,
		0.116434, 0.953822, -0.276887,
		25.492023, 33.975056, 38.087322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009047, 33.593079, 38.593292>,  <25.410521, 33.307377, 38.281143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009047, 33.593079, 38.593292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758972, 33.897720, 38.525063>,  <25.608927, 34.080505, 38.484123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758972, 33.897720, 38.525063>,  <26.009047, 33.593079, 38.593292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758972, 33.897720, 38.525063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021431, 0.235225, 0.971705,
		0.780180, 0.603843, -0.163382,
		-0.625188, 0.761606, -0.170577,
		25.571415, 34.126202, 38.473888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269323, 34.145718, 38.976685>,  <26.009047, 33.593079, 38.593292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269323, 34.145718, 38.976685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885115, 34.236027, 38.911655>,  <25.654591, 34.290211, 38.872639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885115, 34.236027, 38.911655>,  <26.269323, 34.145718, 38.976685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885115, 34.236027, 38.911655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127967, 0.160330, 0.978733,
		0.247032, 0.960897, -0.125110,
		-0.960521, 0.225768, -0.162570,
		25.596958, 34.303757, 38.862885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663492, 34.705788, 38.868534>,  <26.269323, 34.145718, 38.976685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663492, 34.705788, 38.868534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267372, 34.724918, 38.816360>,  <26.029699, 34.736397, 38.785057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267372, 34.724918, 38.816360>,  <26.663492, 34.705788, 38.868534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267372, 34.724918, 38.816360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094455, 0.456703, 0.884591,
		0.101881, 0.888333, -0.447756,
		-0.990302, 0.047830, -0.130437,
		25.970282, 34.739265, 38.777229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433695, 35.362263, 38.993183>,  <26.663492, 34.705788, 38.868534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433695, 35.362263, 38.993183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096891, 35.168079, 39.087292>,  <25.894810, 35.051571, 39.143757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096891, 35.168079, 39.087292>,  <26.433695, 35.362263, 38.993183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096891, 35.168079, 39.087292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028486, 0.395501, 0.918024,
		-0.538711, 0.779686, -0.319187,
		-0.842009, -0.485457, 0.235271,
		25.844288, 35.022442, 39.157871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753027, 35.782890, 39.197346>,  <26.433695, 35.362263, 38.993183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753027, 35.782890, 39.197346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785667, 35.424728, 39.372433>,  <25.805252, 35.209831, 39.477486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785667, 35.424728, 39.372433>,  <25.753027, 35.782890, 39.197346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785667, 35.424728, 39.372433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128596, 0.444972, 0.886264,
		-0.988334, -0.016029, 0.151454,
		0.081599, -0.895401, 0.437719,
		25.810146, 35.156109, 39.503750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336206, 35.703941, 39.910889>,  <25.753027, 35.782890, 39.197346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336206, 35.703941, 39.910889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667051, 35.479786, 39.893681>,  <25.865559, 35.345291, 39.883358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667051, 35.479786, 39.893681>,  <25.336206, 35.703941, 39.910889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667051, 35.479786, 39.893681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183319, 0.196635, 0.963187,
		-0.531301, -0.804549, 0.265369,
		0.827112, -0.560389, -0.043016,
		25.915184, 35.311668, 39.880775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345123, 35.119560, 40.500061>,  <25.336206, 35.703941, 39.910889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345123, 35.119560, 40.500061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722029, 35.206841, 40.398449>,  <25.948172, 35.259209, 40.337482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722029, 35.206841, 40.398449>,  <25.345123, 35.119560, 40.500061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722029, 35.206841, 40.398449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246327, 0.062263, 0.967185,
		0.226859, -0.973915, 0.004919,
		0.942263, 0.218203, -0.254026,
		26.004707, 35.272301, 40.322243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862284, 34.645992, 40.581627>,  <25.345123, 35.119560, 40.500061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862284, 34.645992, 40.581627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737583, 34.331169, 40.794548>,  <24.662764, 34.142273, 40.922302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737583, 34.331169, 40.794548>,  <24.862284, 34.645992, 40.581627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737583, 34.331169, 40.794548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890185, -0.437825, -0.126017,
		0.332238, 0.434561, 0.837123,
		-0.311752, -0.787062, 0.532302,
		24.644058, 34.095051, 40.954239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.893509, 34.490597, 39.782879>,  <24.862284, 34.645992, 40.581627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.893509, 34.490597, 39.782879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080462, 34.786663, 39.589504>,  <25.192633, 34.964302, 39.473480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080462, 34.786663, 39.589504>,  <24.893509, 34.490597, 39.782879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080462, 34.786663, 39.589504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015740, -0.539783, -0.841657,
		-0.883915, 0.400985, -0.240635,
		0.467382, 0.740166, -0.483434,
		25.220676, 35.008713, 39.444473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.812977, 34.361851, 39.067329>,  <24.893509, 34.490597, 39.782879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.812977, 34.361851, 39.067329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102917, 34.636024, 39.039703>,  <25.276880, 34.800529, 39.023129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102917, 34.636024, 39.039703>,  <24.812977, 34.361851, 39.067329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102917, 34.636024, 39.039703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199891, -0.305194, -0.931075,
		-0.659272, 0.661083, -0.358232,
		0.724848, 0.685439, -0.069061,
		25.320372, 34.841656, 39.018986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.660839, 34.772213, 38.526176>,  <24.812977, 34.361851, 39.067329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.660839, 34.772213, 38.526176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052370, 34.763924, 38.607632>,  <25.287289, 34.758949, 38.656506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052370, 34.763924, 38.607632>,  <24.660839, 34.772213, 38.526176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.052370, 34.763924, 38.607632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194110, -0.221769, -0.955583,
		0.064967, 0.974879, -0.213050,
		0.978826, -0.020727, 0.203642,
		25.346018, 34.757706, 38.668724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.012337, 35.116852, 38.028320>,  <24.660839, 34.772213, 38.526176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.012337, 35.116852, 38.028320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293144, 34.884144, 38.192623>,  <25.461628, 34.744518, 38.291203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293144, 34.884144, 38.192623>,  <25.012337, 35.116852, 38.028320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293144, 34.884144, 38.192623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245330, -0.343912, -0.906387,
		0.668568, 0.737071, -0.098708,
		0.702019, -0.581765, 0.410754,
		25.503750, 34.709614, 38.315849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658257, 35.151802, 37.649330>,  <25.012337, 35.116852, 38.028320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658257, 35.151802, 37.649330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648794, 34.784981, 37.808552>,  <25.643116, 34.564888, 37.904087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648794, 34.784981, 37.808552>,  <25.658257, 35.151802, 37.649330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648794, 34.784981, 37.808552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272901, -0.388972, -0.879901,
		0.961751, 0.087815, 0.259467,
		-0.023657, -0.917055, 0.398059,
		25.641697, 34.509865, 37.927971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400702, 34.811642, 37.496590>,  <25.658257, 35.151802, 37.649330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400702, 34.811642, 37.496590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092915, 34.561363, 37.547844>,  <25.908243, 34.411194, 37.578598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092915, 34.561363, 37.547844>,  <26.400702, 34.811642, 37.496590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092915, 34.561363, 37.547844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332576, -0.563811, -0.755983,
		0.545265, -0.539088, 0.641927,
		-0.769467, -0.625701, 0.128139,
		25.862074, 34.373653, 37.586285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710556, 34.152939, 37.491375>,  <26.400702, 34.811642, 37.496590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710556, 34.152939, 37.491375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328674, 34.093155, 37.388458>,  <26.099545, 34.057285, 37.326706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328674, 34.093155, 37.388458>,  <26.710556, 34.152939, 37.491375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328674, 34.093155, 37.388458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297485, -0.498360, -0.814334,
		-0.006515, -0.853990, 0.520249,
		-0.954704, -0.149461, -0.257295,
		26.042263, 34.048317, 37.311268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550505, 33.472393, 37.432354>,  <26.710556, 34.152939, 37.491375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550505, 33.472393, 37.432354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306189, 33.687698, 37.200077>,  <26.159599, 33.816883, 37.060711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306189, 33.687698, 37.200077>,  <26.550505, 33.472393, 37.432354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306189, 33.687698, 37.200077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466763, -0.347642, -0.813190,
		-0.639584, -0.767736, -0.038904,
		-0.610790, 0.538262, -0.580697,
		26.122952, 33.849178, 37.025867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446436, 33.049713, 36.822124>,  <26.550505, 33.472393, 37.432354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446436, 33.049713, 36.822124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385138, 33.435188, 36.734646>,  <26.348358, 33.666473, 36.682159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385138, 33.435188, 36.734646>,  <26.446436, 33.049713, 36.822124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385138, 33.435188, 36.734646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458710, -0.126650, -0.879514,
		-0.875272, -0.235102, -0.422642,
		-0.153248, 0.963684, -0.218697,
		26.339163, 33.724293, 36.669037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649487, 32.599907, 36.201660>,  <26.446436, 33.049713, 36.822124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649487, 32.599907, 36.201660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713425, 32.461163, 36.571339>,  <26.751787, 32.377918, 36.793144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713425, 32.461163, 36.571339>,  <26.649487, 32.599907, 36.201660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713425, 32.461163, 36.571339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848977, -0.429395, -0.307990,
		0.503674, 0.833852, 0.225837,
		0.159845, -0.346857, 0.924197,
		26.761377, 32.357105, 36.848598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305090, 32.822914, 36.464710>,  <26.649487, 32.599907, 36.201660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305090, 32.822914, 36.464710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179581, 32.453812, 36.554218>,  <27.104275, 32.232349, 36.607922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179581, 32.453812, 36.554218>,  <27.305090, 32.822914, 36.464710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179581, 32.453812, 36.554218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862594, -0.375522, -0.338990,
		0.396834, 0.086657, 0.913790,
		-0.313772, -0.922754, 0.223769,
		27.085449, 32.176987, 36.621349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596939, 32.503506, 37.099564>,  <27.305090, 32.822914, 36.464710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596939, 32.503506, 37.099564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524145, 32.239422, 36.808086>,  <27.480469, 32.080971, 36.633198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524145, 32.239422, 36.808086>,  <27.596939, 32.503506, 37.099564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524145, 32.239422, 36.808086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981269, -0.169560, -0.091438,
		-0.063189, -0.731688, 0.678704,
		-0.181985, -0.660214, -0.728697,
		27.469549, 32.041359, 36.589478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032871, 32.078056, 37.337467>,  <27.596939, 32.503506, 37.099564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032871, 32.078056, 37.337467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100899, 31.802401, 37.619225>,  <28.141716, 31.637009, 37.788280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100899, 31.802401, 37.619225>,  <28.032871, 32.078056, 37.337467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100899, 31.802401, 37.619225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965442, 0.259769, 0.021045,
		-0.197482, 0.676471, 0.709499,
		0.170070, -0.689135, 0.704392,
		28.151920, 31.595659, 37.830544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294277, 32.392399, 37.997967>,  <28.032871, 32.078056, 37.337467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294277, 32.392399, 37.997967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417128, 32.023415, 37.904388>,  <28.490839, 31.802023, 37.848240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417128, 32.023415, 37.904388>,  <28.294277, 32.392399, 37.997967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417128, 32.023415, 37.904388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951667, 0.298085, 0.073992,
		0.001481, -0.245367, 0.969429,
		0.307128, -0.922464, -0.233949,
		28.509266, 31.746675, 37.834202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888107, 32.387451, 38.511536>,  <28.294277, 32.392399, 37.997967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888107, 32.387451, 38.511536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756546, 32.109634, 38.767487>,  <28.677610, 31.942945, 38.921055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756546, 32.109634, 38.767487>,  <28.888107, 32.387451, 38.511536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756546, 32.109634, 38.767487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481884, 0.706152, 0.518785,
		-0.812165, -0.137716, -0.566941,
		-0.328901, -0.694538, 0.639875,
		28.657875, 31.901274, 38.959450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586199, 32.124603, 38.607395>,  <28.888107, 32.387451, 38.511536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586199, 32.124603, 38.607395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756878, 31.844561, 38.378387>,  <29.859285, 31.676535, 38.240982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756878, 31.844561, 38.378387>,  <29.586199, 32.124603, 38.607395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756878, 31.844561, 38.378387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246504, 0.699105, -0.671183,
		0.870152, 0.145264, 0.470887,
		0.426698, -0.700107, -0.572520,
		29.884888, 31.634529, 38.206631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346947, 32.236076, 38.572033>,  <29.586199, 32.124603, 38.607395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346947, 32.236076, 38.572033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442402, 31.861443, 38.469376>,  <30.499674, 31.636663, 38.407784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442402, 31.861443, 38.469376>,  <30.346947, 32.236076, 38.572033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442402, 31.861443, 38.469376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051256, 0.276055, -0.959774,
		0.969755, 0.215883, 0.113883,
		0.238637, -0.936583, -0.256640,
		30.513992, 31.580467, 38.392384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818285, 32.320656, 38.200214>,  <30.346947, 32.236076, 38.572033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818285, 32.320656, 38.200214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725956, 31.946491, 38.093090>,  <30.670559, 31.721992, 38.028816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725956, 31.946491, 38.093090>,  <30.818285, 32.320656, 38.200214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725956, 31.946491, 38.093090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120359, 0.245680, -0.961850,
		0.965523, -0.254251, 0.055877,
		-0.230823, -0.935413, -0.267811,
		30.656710, 31.665867, 38.012749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386806, 31.828745, 37.861759>,  <30.818285, 32.320656, 38.200214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386806, 31.828745, 37.861759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007500, 31.804611, 37.737087>,  <30.779915, 31.790131, 37.662285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007500, 31.804611, 37.737087>,  <31.386806, 31.828745, 37.861759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007500, 31.804611, 37.737087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295479, 0.191291, -0.936002,
		0.116093, -0.979677, -0.163568,
		-0.948269, -0.060332, -0.311681,
		30.723019, 31.786510, 37.643581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371651, 31.450106, 37.212605>,  <31.386806, 31.828745, 37.861759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371651, 31.450106, 37.212605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030357, 31.658678, 37.208561>,  <30.825581, 31.783821, 37.206135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030357, 31.658678, 37.208561>,  <31.371651, 31.450106, 37.212605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030357, 31.658678, 37.208561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316054, 0.501555, -0.805327,
		-0.414852, -0.690328, -0.592744,
		-0.853234, 0.521431, -0.010109,
		30.774387, 31.815107, 37.205528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981365, 31.749294, 37.423119>,  <31.371651, 31.450106, 37.212605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981365, 31.749294, 37.423119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661163, 31.890425, 37.229332>,  <31.469042, 31.975103, 37.113060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661163, 31.890425, 37.229332>,  <31.981365, 31.749294, 37.423119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661163, 31.890425, 37.229332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473847, -0.122355, -0.872066,
		-0.366965, -0.927654, -0.069240,
		-0.800504, 0.352827, -0.484466,
		31.421013, 31.996273, 37.083992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732452, 32.049572, 37.338127>,  <31.981365, 31.749294, 37.423119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732452, 32.049572, 37.338127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046654, 32.294041, 37.299240>,  <33.235176, 32.440723, 37.275909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046654, 32.294041, 37.299240>,  <32.732452, 32.049572, 37.338127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046654, 32.294041, 37.299240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616844, -0.785889, 0.043391,
		-0.049880, -0.094050, -0.994317,
		0.785504, 0.611174, -0.097214,
		33.282307, 32.477394, 37.270077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003624, 32.086433, 36.596867>,  <32.732452, 32.049572, 37.338127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003624, 32.086433, 36.596867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239002, 32.103622, 36.919823>,  <33.380230, 32.113937, 37.113598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239002, 32.103622, 36.919823>,  <33.003624, 32.086433, 36.596867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239002, 32.103622, 36.919823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503147, -0.801139, -0.324066,
		0.632909, 0.596933, -0.493049,
		0.588447, 0.042971, 0.807393,
		33.415535, 32.116512, 37.162041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403175, 32.499134, 36.068230>,  <33.003624, 32.086433, 36.596867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403175, 32.499134, 36.068230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202759, 32.812412, 35.920959>,  <33.082508, 33.000381, 35.832596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202759, 32.812412, 35.920959>,  <33.403175, 32.499134, 36.068230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202759, 32.812412, 35.920959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850719, -0.367652, 0.375645,
		0.158843, 0.501431, 0.850491,
		-0.501045, 0.783198, -0.368178,
		33.052444, 33.047371, 35.810505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366573, 33.170456, 36.429176>,  <33.403175, 32.499134, 36.068230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366573, 33.170456, 36.429176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401978, 33.547680, 36.557426>,  <33.423222, 33.774014, 36.634377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401978, 33.547680, 36.557426>,  <33.366573, 33.170456, 36.429176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401978, 33.547680, 36.557426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259701, 0.288902, -0.921462,
		-0.961624, 0.164827, -0.219342,
		0.088514, 0.943063, 0.320621,
		33.428532, 33.830597, 36.653614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998215, 33.661514, 35.890179>,  <33.366573, 33.170456, 36.429176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998215, 33.661514, 35.890179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310585, 33.794170, 36.101902>,  <33.498009, 33.873764, 36.228935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310585, 33.794170, 36.101902>,  <32.998215, 33.661514, 35.890179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310585, 33.794170, 36.101902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467926, 0.250715, -0.847459,
		-0.413755, 0.909482, 0.040609,
		0.780930, 0.331638, 0.529305,
		33.544865, 33.893661, 36.260693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161568, 34.377384, 35.681301>,  <32.998215, 33.661514, 35.890179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161568, 34.377384, 35.681301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499214, 34.244598, 35.849716>,  <33.701801, 34.164928, 35.950768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499214, 34.244598, 35.849716>,  <33.161568, 34.377384, 35.681301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499214, 34.244598, 35.849716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508221, 0.245170, -0.825593,
		0.170840, 0.910874, 0.375662,
		0.844112, -0.331963, 0.421040,
		33.752449, 34.145008, 35.976028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620399, 34.890121, 35.525352>,  <33.161568, 34.377384, 35.681301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620399, 34.890121, 35.525352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834728, 34.560497, 35.598915>,  <33.963326, 34.362724, 35.643051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834728, 34.560497, 35.598915>,  <33.620399, 34.890121, 35.525352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834728, 34.560497, 35.598915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583479, 0.203953, -0.786102,
		0.610286, 0.528516, 0.590104,
		0.535821, -0.824059, 0.183908,
		33.995476, 34.313278, 35.654087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271400, 35.100170, 35.415287>,  <33.620399, 34.890121, 35.525352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271400, 35.100170, 35.415287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285065, 34.701065, 35.392311>,  <34.293262, 34.461601, 35.378525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285065, 34.701065, 35.392311>,  <34.271400, 35.100170, 35.415287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285065, 34.701065, 35.392311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490934, 0.066813, -0.868631,
		0.870527, 0.001472, 0.492119,
		0.034158, -0.997764, -0.057440,
		34.295311, 34.401737, 35.375080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031952, 34.910091, 35.319256>,  <34.271400, 35.100170, 35.415287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031952, 34.910091, 35.319256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835316, 34.587879, 35.186916>,  <34.717335, 34.394550, 35.107513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835316, 34.587879, 35.186916>,  <35.031952, 34.910091, 35.319256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835316, 34.587879, 35.186916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600215, -0.038152, -0.798929,
		0.630938, -0.591326, 0.502246,
		-0.491589, -0.805530, -0.330851,
		34.687840, 34.346222, 35.087662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456512, 34.626896, 34.898369>,  <35.031952, 34.910091, 35.319256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456512, 34.626896, 34.898369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149757, 34.380959, 34.824772>,  <34.965706, 34.233395, 34.780613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149757, 34.380959, 34.824772>,  <35.456512, 34.626896, 34.898369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149757, 34.380959, 34.824772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483683, -0.365273, -0.795378,
		0.421824, -0.698959, 0.577512,
		-0.766887, -0.614843, -0.183994,
		34.919693, 34.196507, 34.769573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739269, 33.962749, 34.647678>,  <35.456512, 34.626896, 34.898369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739269, 33.962749, 34.647678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374344, 34.016697, 34.493019>,  <35.155388, 34.049065, 34.400223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374344, 34.016697, 34.493019>,  <35.739269, 33.962749, 34.647678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374344, 34.016697, 34.493019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307702, -0.397240, -0.864592,
		-0.270199, -0.907750, 0.320907,
		-0.912311, 0.134868, -0.386650,
		35.100651, 34.057159, 34.377026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503117, 33.387215, 34.336720>,  <35.739269, 33.962749, 34.647678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503117, 33.387215, 34.336720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273605, 33.665531, 34.163906>,  <35.135899, 33.832520, 34.060219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273605, 33.665531, 34.163906>,  <35.503117, 33.387215, 34.336720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273605, 33.665531, 34.163906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370719, -0.249736, -0.894539,
		-0.730308, -0.673428, -0.114651,
		-0.573775, 0.695792, -0.432037,
		35.101471, 33.874268, 34.034294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352829, 33.127705, 33.657673>,  <35.503117, 33.387215, 34.336720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352829, 33.127705, 33.657673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253487, 33.514084, 33.628677>,  <35.193882, 33.745911, 33.611279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253487, 33.514084, 33.628677>,  <35.352829, 33.127705, 33.657673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253487, 33.514084, 33.628677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323376, 0.012134, -0.946192,
		-0.913097, -0.258437, -0.315380,
		-0.248358, 0.965952, -0.072493,
		35.178978, 33.803871, 33.606930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939430, 33.076218, 33.068989>,  <35.352829, 33.127705, 33.657673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939430, 33.076218, 33.068989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060383, 33.455963, 33.103088>,  <35.132954, 33.683811, 33.123550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060383, 33.455963, 33.103088>,  <34.939430, 33.076218, 33.068989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060383, 33.455963, 33.103088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254410, 0.005809, -0.967079,
		-0.918608, 0.314117, -0.239772,
		0.302383, 0.949367, 0.085251,
		35.151096, 33.740772, 33.128662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876575, 33.391254, 32.394302>,  <34.939430, 33.076218, 33.068989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876575, 33.391254, 32.394302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114460, 33.663765, 32.565033>,  <35.257191, 33.827271, 32.667473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114460, 33.663765, 32.565033>,  <34.876575, 33.391254, 32.394302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114460, 33.663765, 32.565033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488757, 0.115145, -0.864788,
		-0.638304, 0.722917, -0.264498,
		0.594715, 0.681272, 0.426828,
		35.292873, 33.868145, 32.693081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851498, 33.884300, 31.853176>,  <34.876575, 33.391254, 32.394302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851498, 33.884300, 31.853176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154819, 33.962517, 32.101929>,  <35.336811, 34.009445, 32.251179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154819, 33.962517, 32.101929>,  <34.851498, 33.884300, 31.853176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154819, 33.962517, 32.101929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502441, 0.432506, -0.748660,
		-0.415361, 0.880172, 0.229723,
		0.758306, 0.195542, 0.621881,
		35.382313, 34.021179, 32.288494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957905, 34.519886, 31.723589>,  <34.851498, 33.884300, 31.853176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957905, 34.519886, 31.723589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287506, 34.360138, 31.884348>,  <35.485268, 34.264290, 31.980803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287506, 34.360138, 31.884348>,  <34.957905, 34.519886, 31.723589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287506, 34.360138, 31.884348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561999, 0.486078, -0.669243,
		0.071923, 0.777324, 0.624975,
		0.824005, -0.399369, 0.401895,
		35.534706, 34.240326, 32.004917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520966, 35.011379, 31.742908>,  <34.957905, 34.519886, 31.723589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520966, 35.011379, 31.742908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722778, 34.666767, 31.765612>,  <35.843864, 34.459999, 31.779234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722778, 34.666767, 31.765612>,  <35.520966, 35.011379, 31.742908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722778, 34.666767, 31.765612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638701, 0.328188, -0.695955,
		0.580957, 0.387380, 0.715839,
		0.504529, -0.861527, 0.056757,
		35.874138, 34.408310, 31.782639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277954, 35.115444, 31.990360>,  <35.520966, 35.011379, 31.742908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277954, 35.115444, 31.990360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279770, 34.768150, 31.791906>,  <36.280857, 34.559772, 31.672834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279770, 34.768150, 31.791906>,  <36.277954, 35.115444, 31.990360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279770, 34.768150, 31.791906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680916, 0.366033, -0.634329,
		0.732347, -0.334949, 0.592854,
		0.004536, -0.868233, -0.496135,
		36.281132, 34.507679, 31.643066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039570, 34.801575, 31.907072>,  <36.277954, 35.115444, 31.990360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039570, 34.801575, 31.907072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807201, 34.655064, 31.616314>,  <36.667782, 34.567158, 31.441860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807201, 34.655064, 31.616314>,  <37.039570, 34.801575, 31.907072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807201, 34.655064, 31.616314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659276, 0.312020, -0.684104,
		0.477380, -0.876631, 0.060223,
		-0.580916, -0.366281, -0.726894,
		36.632927, 34.545177, 31.398247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560814, 34.839897, 31.374866>,  <37.039570, 34.801575, 31.907072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560814, 34.839897, 31.374866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223789, 34.728764, 31.190302>,  <37.021576, 34.662083, 31.079563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223789, 34.728764, 31.190302>,  <37.560814, 34.839897, 31.374866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223789, 34.728764, 31.190302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359455, 0.347924, -0.865876,
		0.401103, -0.895410, -0.193280,
		-0.842561, -0.277830, -0.461413,
		36.971020, 34.645412, 31.051878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819534, 34.514938, 30.780811>,  <37.560814, 34.839897, 31.374866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819534, 34.514938, 30.780811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436058, 34.593189, 30.698210>,  <37.205971, 34.640141, 30.648649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436058, 34.593189, 30.698210>,  <37.819534, 34.514938, 30.780811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436058, 34.593189, 30.698210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270330, 0.400667, -0.875436,
		-0.088521, -0.895095, -0.437000,
		-0.958690, 0.195629, -0.206503,
		37.148453, 34.651878, 30.636259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678463, 34.270020, 30.059227>,  <37.819534, 34.514938, 30.780811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678463, 34.270020, 30.059227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365944, 34.515923, 30.102413>,  <37.178432, 34.663464, 30.128325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365944, 34.515923, 30.102413>,  <37.678463, 34.270020, 30.059227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365944, 34.515923, 30.102413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075296, 0.264544, -0.961429,
		-0.619606, -0.743029, -0.252975,
		-0.781293, 0.614756, 0.107966,
		37.131557, 34.700348, 30.134804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152477, 34.124306, 29.496611>,  <37.678463, 34.270020, 30.059227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152477, 34.124306, 29.496611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095688, 34.494274, 29.637671>,  <37.061615, 34.716255, 29.722305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095688, 34.494274, 29.637671>,  <37.152477, 34.124306, 29.496611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095688, 34.494274, 29.637671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130435, 0.335670, -0.932905,
		-0.981239, -0.178446, 0.072986,
		-0.141974, 0.924923, 0.352648,
		37.053097, 34.771751, 29.743465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893410, 34.475491, 28.966927>,  <37.152477, 34.124306, 29.496611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893410, 34.475491, 28.966927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934200, 34.790627, 29.209879>,  <36.958675, 34.979706, 29.355652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934200, 34.790627, 29.209879>,  <36.893410, 34.475491, 28.966927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934200, 34.790627, 29.209879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052351, 0.613970, -0.787591,
		-0.993409, 0.048516, 0.103853,
		0.101974, 0.787837, 0.607383,
		36.964794, 35.026978, 29.392094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300270, 35.000824, 28.938797>,  <36.893410, 34.475491, 28.966927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300270, 35.000824, 28.938797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648640, 35.172138, 29.035177>,  <36.857662, 35.274925, 29.093006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648640, 35.172138, 29.035177>,  <36.300270, 35.000824, 28.938797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648640, 35.172138, 29.035177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064241, 0.386892, -0.919885,
		-0.487194, 0.816632, 0.309441,
		0.870928, 0.428284, 0.240952,
		36.909920, 35.300625, 29.107464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262959, 35.655815, 28.640642>,  <36.300270, 35.000824, 28.938797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262959, 35.655815, 28.640642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652153, 35.629162, 28.729053>,  <36.885670, 35.613171, 28.782101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652153, 35.629162, 28.729053>,  <36.262959, 35.655815, 28.640642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652153, 35.629162, 28.729053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226638, 0.457841, -0.859661,
		-0.043913, 0.886534, 0.460576,
		0.972989, -0.066634, 0.221027,
		36.944050, 35.609173, 28.795362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577415, 36.332737, 28.500858>,  <36.262959, 35.655815, 28.640642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577415, 36.332737, 28.500858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863247, 36.053535, 28.482252>,  <37.034748, 35.886013, 28.471088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863247, 36.053535, 28.482252>,  <36.577415, 36.332737, 28.500858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863247, 36.053535, 28.482252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433473, 0.493994, -0.753705,
		0.549067, 0.518420, 0.655565,
		0.714581, -0.698004, -0.046515,
		37.077621, 35.844135, 28.468298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045738, 36.695820, 28.217251>,  <36.577415, 36.332737, 28.500858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045738, 36.695820, 28.217251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205654, 36.331905, 28.172607>,  <37.301601, 36.113556, 28.145821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205654, 36.331905, 28.172607>,  <37.045738, 36.695820, 28.217251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205654, 36.331905, 28.172607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393628, 0.280372, -0.875471,
		0.827785, 0.306069, 0.470207,
		0.399787, -0.909788, -0.111610,
		37.325592, 36.058968, 28.139124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749001, 36.770252, 28.127747>,  <37.045738, 36.695820, 28.217251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749001, 36.770252, 28.127747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637962, 36.423042, 27.963076>,  <37.571339, 36.214718, 27.864273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637962, 36.423042, 27.963076>,  <37.749001, 36.770252, 28.127747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637962, 36.423042, 27.963076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391377, 0.289168, -0.873617,
		0.877362, -0.403633, 0.259453,
		-0.277595, -0.868022, -0.411678,
		37.554684, 36.162636, 27.839573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341942, 36.562637, 27.690838>,  <37.749001, 36.770252, 28.127747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341942, 36.562637, 27.690838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010567, 36.400833, 27.535889>,  <37.811741, 36.303753, 27.442919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010567, 36.400833, 27.535889>,  <38.341942, 36.562637, 27.690838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010567, 36.400833, 27.535889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388450, 0.083272, -0.917699,
		0.403472, -0.910736, 0.088145,
		-0.828442, -0.404506, -0.387374,
		37.762035, 36.279480, 27.419676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603989, 36.368637, 27.184528>,  <38.341942, 36.562637, 27.690838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603989, 36.368637, 27.184528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223866, 36.296955, 27.082710>,  <37.995792, 36.253944, 27.021620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223866, 36.296955, 27.082710>,  <38.603989, 36.368637, 27.184528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223866, 36.296955, 27.082710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282274, -0.151262, -0.947334,
		0.131267, -0.972113, 0.194332,
		-0.950310, -0.179209, -0.254547,
		37.938774, 36.243191, 27.006346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595402, 35.741566, 26.818859>,  <38.603989, 36.368637, 27.184528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595402, 35.741566, 26.818859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265377, 35.945316, 26.721039>,  <38.067360, 36.067566, 26.662346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265377, 35.945316, 26.721039>,  <38.595402, 35.741566, 26.818859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265377, 35.945316, 26.721039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201331, -0.139377, -0.969557,
		-0.527952, -0.849183, 0.012443,
		-0.825065, 0.509374, -0.244551,
		38.017857, 36.098129, 26.647673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284775, 35.294422, 26.312145>,  <38.595402, 35.741566, 26.818859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284775, 35.294422, 26.312145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141396, 35.666904, 26.285723>,  <38.055367, 35.890396, 26.269869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141396, 35.666904, 26.285723>,  <38.284775, 35.294422, 26.312145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141396, 35.666904, 26.285723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321237, 0.056595, -0.945306,
		-0.876539, -0.360066, -0.319425,
		-0.358451, 0.931209, -0.066058,
		38.033859, 35.946266, 26.265905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903156, 35.300438, 25.660244>,  <38.284775, 35.294422, 26.312145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903156, 35.300438, 25.660244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015945, 35.672470, 25.754427>,  <38.083618, 35.895691, 25.810936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015945, 35.672470, 25.754427>,  <37.903156, 35.300438, 25.660244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015945, 35.672470, 25.754427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280681, 0.154709, -0.947250,
		-0.917448, 0.333186, -0.217432,
		0.281972, 0.930082, 0.235457,
		38.100536, 35.951496, 25.825064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912987, 35.672192, 25.011892>,  <37.903156, 35.300438, 25.660244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912987, 35.672192, 25.011892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145519, 35.932331, 25.207481>,  <38.285038, 36.088417, 25.324835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145519, 35.932331, 25.207481>,  <37.912987, 35.672192, 25.011892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145519, 35.932331, 25.207481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275623, 0.408022, -0.870373,
		-0.765559, 0.640751, 0.057946,
		0.581335, 0.650351, 0.488971,
		38.319920, 36.127438, 25.354174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863335, 36.320019, 24.629688>,  <37.912987, 35.672192, 25.011892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863335, 36.320019, 24.629688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192890, 36.387737, 24.846035>,  <38.390625, 36.428368, 24.975843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192890, 36.387737, 24.846035>,  <37.863335, 36.320019, 24.629688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192890, 36.387737, 24.846035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446226, 0.394584, -0.803235,
		-0.349405, 0.903129, 0.249549,
		0.823893, 0.169299, 0.540869,
		38.440060, 36.438526, 25.008295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160824, 37.046230, 24.462709>,  <37.863335, 36.320019, 24.629688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160824, 37.046230, 24.462709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449501, 36.813782, 24.613152>,  <38.622707, 36.674313, 24.703417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449501, 36.813782, 24.613152>,  <38.160824, 37.046230, 24.462709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449501, 36.813782, 24.613152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651223, 0.385795, -0.653506,
		0.234670, 0.716558, 0.656867,
		0.721691, -0.581125, 0.376105,
		38.666008, 36.639442, 24.725983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817226, 37.446384, 24.354700>,  <38.160824, 37.046230, 24.462709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817226, 37.446384, 24.354700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952400, 37.077045, 24.427612>,  <39.033504, 36.855442, 24.471359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952400, 37.077045, 24.427612>,  <38.817226, 37.446384, 24.354700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952400, 37.077045, 24.427612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727721, 0.133527, -0.672750,
		0.596845, 0.359993, 0.717064,
		0.337933, -0.923350, 0.182280,
		39.053780, 36.800041, 24.482296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478512, 37.473614, 24.548014>,  <38.817226, 37.446384, 24.354700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478512, 37.473614, 24.548014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461117, 37.099072, 24.408676>,  <39.450680, 36.874344, 24.325073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461117, 37.099072, 24.408676>,  <39.478512, 37.473614, 24.548014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461117, 37.099072, 24.408676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743517, 0.202556, -0.637301,
		0.667301, -0.286712, 0.687390,
		-0.043487, -0.936358, -0.348342,
		39.448071, 36.818165, 24.304174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162804, 37.306347, 24.456629>,  <39.478512, 37.473614, 24.548014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162804, 37.306347, 24.456629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991589, 37.016155, 24.241049>,  <39.888859, 36.842041, 24.111702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991589, 37.016155, 24.241049>,  <40.162804, 37.306347, 24.456629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991589, 37.016155, 24.241049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720553, 0.086005, -0.688045,
		0.545513, -0.682852, 0.485931,
		-0.428041, -0.725476, -0.538948,
		39.863178, 36.798512, 24.079365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657204, 36.899036, 24.378735>,  <40.162804, 37.306347, 24.456629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657204, 36.899036, 24.378735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398457, 36.811474, 24.086533>,  <40.243206, 36.758934, 23.911211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398457, 36.811474, 24.086533>,  <40.657204, 36.899036, 24.378735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398457, 36.811474, 24.086533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738616, 0.058493, -0.671584,
		0.189745, -0.973991, 0.123853,
		-0.646872, -0.218910, -0.730504,
		40.204395, 36.745800, 23.867382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909046, 36.286514, 24.039070>,  <40.657204, 36.899036, 24.378735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909046, 36.286514, 24.039070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658627, 36.477623, 23.792557>,  <40.508377, 36.592289, 23.644650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658627, 36.477623, 23.792557>,  <40.909046, 36.286514, 24.039070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658627, 36.477623, 23.792557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742640, 0.124276, -0.658059,
		-0.237812, -0.869650, -0.432614,
		-0.626044, 0.477770, -0.616283,
		40.470814, 36.620953, 23.607672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976631, 36.049313, 23.299891>,  <40.909046, 36.286514, 24.039070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976631, 36.049313, 23.299891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809742, 36.411102, 23.264458>,  <40.709606, 36.628178, 23.243198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809742, 36.411102, 23.264458>,  <40.976631, 36.049313, 23.299891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809742, 36.411102, 23.264458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560446, 0.179342, -0.808540,
		-0.715419, -0.386987, -0.581736,
		-0.417224, 0.904476, -0.088580,
		40.684574, 36.682446, 23.237883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635876, 36.085125, 22.622223>,  <40.976631, 36.049313, 23.299891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635876, 36.085125, 22.622223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693012, 36.470100, 22.714581>,  <40.727295, 36.701084, 22.769995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693012, 36.470100, 22.714581>,  <40.635876, 36.085125, 22.622223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693012, 36.470100, 22.714581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589342, 0.104711, -0.801069,
		-0.795154, 0.250505, -0.552247,
		0.142845, 0.962436, 0.230895,
		40.735867, 36.758831, 22.783850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517040, 36.377869, 21.913425>,  <40.635876, 36.085125, 22.622223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517040, 36.377869, 21.913425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685219, 36.637508, 22.167007>,  <40.786125, 36.793293, 22.319157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685219, 36.637508, 22.167007>,  <40.517040, 36.377869, 21.913425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685219, 36.637508, 22.167007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704380, 0.206906, -0.678998,
		-0.571906, 0.732025, -0.370220,
		0.420443, 0.649098, 0.633955,
		40.811352, 36.832237, 22.357193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571098, 37.035664, 21.585886>,  <40.517040, 36.377869, 21.913425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571098, 37.035664, 21.585886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848476, 37.054707, 21.873459>,  <41.014904, 37.066132, 22.046003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848476, 37.054707, 21.873459>,  <40.571098, 37.035664, 21.585886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848476, 37.054707, 21.873459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681558, 0.280288, -0.675957,
		-0.233686, 0.958735, 0.161920,
		0.693448, 0.047604, 0.718933,
		41.056511, 37.068989, 22.089138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777058, 37.645050, 21.548012>,  <40.571098, 37.035664, 21.585886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777058, 37.645050, 21.548012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066196, 37.432144, 21.724279>,  <41.239681, 37.304401, 21.830040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066196, 37.432144, 21.724279>,  <40.777058, 37.645050, 21.548012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066196, 37.432144, 21.724279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682258, 0.448582, -0.577320,
		0.109610, 0.717964, 0.687396,
		0.722848, -0.532262, 0.440668,
		41.283051, 37.272465, 21.856480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229939, 38.032024, 21.988714>,  <40.777058, 37.645050, 21.548012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229939, 38.032024, 21.988714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432709, 37.745029, 21.797617>,  <41.554371, 37.572834, 21.682959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432709, 37.745029, 21.797617>,  <41.229939, 38.032024, 21.988714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432709, 37.745029, 21.797617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533036, 0.696484, -0.480399,
		0.677420, -0.011127, 0.735512,
		0.506927, -0.717486, -0.477743,
		41.584785, 37.529785, 21.654295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960747, 38.205807, 21.996466>,  <41.229939, 38.032024, 21.988714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960747, 38.205807, 21.996466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905495, 37.949299, 21.694553>,  <41.872341, 37.795395, 21.513407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905495, 37.949299, 21.694553>,  <41.960747, 38.205807, 21.996466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905495, 37.949299, 21.694553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389800, 0.665379, -0.636653,
		0.910481, -0.382155, 0.158057,
		-0.138133, -0.641271, -0.754779,
		41.864056, 37.756916, 21.468121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584839, 38.225903, 21.641060>,  <41.960747, 38.205807, 21.996466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584839, 38.225903, 21.641060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262035, 38.102798, 21.439459>,  <42.068352, 38.028934, 21.318499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262035, 38.102798, 21.439459>,  <42.584839, 38.225903, 21.641060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262035, 38.102798, 21.439459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194011, 0.667916, -0.718504,
		0.557762, -0.677621, -0.479304,
		-0.807008, -0.307764, -0.504004,
		42.019932, 38.010468, 21.288258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824566, 37.912670, 21.093000>,  <42.584839, 38.225903, 21.641060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824566, 37.912670, 21.093000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458557, 38.062660, 21.033489>,  <42.238953, 38.152653, 20.997784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458557, 38.062660, 21.033489>,  <42.824566, 37.912670, 21.093000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458557, 38.062660, 21.033489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363242, 0.605397, -0.708202,
		-0.175491, -0.702059, -0.690157,
		-0.915018, 0.374976, -0.148776,
		42.184052, 38.175152, 20.988857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216892, 38.503170, 21.355953>,  <42.824566, 37.912670, 21.093000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216892, 38.503170, 21.355953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232891, 38.891773, 21.449400>,  <43.242489, 39.124935, 21.505468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232891, 38.891773, 21.449400>,  <43.216892, 38.503170, 21.355953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232891, 38.891773, 21.449400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158442, -0.224679, 0.961465,
		0.986558, -0.075467, 0.144942,
		0.039993, 0.971506, 0.233616,
		43.244888, 39.183224, 21.519485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351379, 38.532505, 22.135534>,  <43.216892, 38.503170, 21.355953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351379, 38.532505, 22.135534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172813, 38.883503, 22.065418>,  <43.065674, 39.094101, 22.023348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172813, 38.883503, 22.065418>,  <43.351379, 38.532505, 22.135534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172813, 38.883503, 22.065418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469757, -0.063085, 0.880539,
		0.761606, 0.475427, 0.440369,
		-0.446413, 0.877490, -0.175290,
		43.038891, 39.146751, 22.012831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614052, 39.131523, 22.600317>,  <43.351379, 38.532505, 22.135534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614052, 39.131523, 22.600317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223774, 39.149319, 22.514494>,  <42.989605, 39.159996, 22.462999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223774, 39.149319, 22.514494>,  <43.614052, 39.131523, 22.600317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223774, 39.149319, 22.514494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216485, -0.044259, 0.975282,
		0.033891, 0.998029, 0.052814,
		-0.975698, 0.044487, -0.214558,
		42.931065, 39.162666, 22.450127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476933, 39.530388, 23.052212>,  <43.614052, 39.131523, 22.600317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476933, 39.530388, 23.052212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143318, 39.339588, 22.941322>,  <42.943150, 39.225109, 22.874788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143318, 39.339588, 22.941322>,  <43.476933, 39.530388, 23.052212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143318, 39.339588, 22.941322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191887, -0.220309, 0.956370,
		-0.517263, 0.850844, 0.092216,
		-0.834037, -0.477000, -0.277224,
		42.893108, 39.196487, 22.858154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898357, 39.840351, 23.433859>,  <43.476933, 39.530388, 23.052212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898357, 39.840351, 23.433859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795109, 39.471016, 23.320139>,  <42.733158, 39.249416, 23.251907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795109, 39.471016, 23.320139>,  <42.898357, 39.840351, 23.433859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795109, 39.471016, 23.320139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172412, -0.245521, 0.953936,
		-0.950603, 0.295251, -0.095819,
		-0.258125, -0.923334, -0.284298,
		42.717670, 39.194016, 23.234850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443604, 39.764751, 23.865671>,  <42.898357, 39.840351, 23.433859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443604, 39.764751, 23.865671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503323, 39.390186, 23.738644>,  <42.539154, 39.165447, 23.662428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503323, 39.390186, 23.738644>,  <42.443604, 39.764751, 23.865671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503323, 39.390186, 23.738644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407701, -0.350892, 0.843003,
		-0.900827, 0.003614, -0.434162,
		0.149297, -0.936409, -0.317567,
		42.548111, 39.109264, 23.643373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813892, 39.530052, 23.888029>,  <42.443604, 39.764751, 23.865671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813892, 39.530052, 23.888029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072693, 39.226295, 23.915459>,  <42.227974, 39.044041, 23.931917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072693, 39.226295, 23.915459>,  <41.813892, 39.530052, 23.888029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072693, 39.226295, 23.915459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408648, -0.269423, 0.872019,
		-0.643732, -0.592224, -0.484644,
		0.647005, -0.759395, 0.068574,
		42.266796, 38.998478, 23.936031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403053, 38.994389, 24.298937>,  <41.813892, 39.530052, 23.888029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403053, 38.994389, 24.298937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788704, 38.891712, 24.325968>,  <42.020096, 38.830105, 24.342186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788704, 38.891712, 24.325968>,  <41.403053, 38.994389, 24.298937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788704, 38.891712, 24.325968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192823, -0.502327, 0.842904,
		-0.182423, -0.825697, -0.533804,
		0.964127, -0.256694, 0.067577,
		42.077942, 38.814705, 24.346241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400105, 38.311310, 24.400173>,  <41.403053, 38.994389, 24.298937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400105, 38.311310, 24.400173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752460, 38.426537, 24.550398>,  <41.963875, 38.495674, 24.640533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752460, 38.426537, 24.550398>,  <41.400105, 38.311310, 24.400173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752460, 38.426537, 24.550398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180138, -0.529712, 0.828828,
		0.437702, -0.797759, -0.414725,
		0.880890, 0.288072, 0.375563,
		42.016727, 38.512959, 24.663067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720810, 37.716694, 24.757126>,  <41.400105, 38.311310, 24.400173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720810, 37.716694, 24.757126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882648, 38.050983, 24.905647>,  <41.979752, 38.251556, 24.994761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882648, 38.050983, 24.905647>,  <41.720810, 37.716694, 24.757126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882648, 38.050983, 24.905647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094611, -0.365590, 0.925955,
		0.909588, -0.409767, -0.068847,
		0.404596, 0.835724, 0.371305,
		42.004028, 38.301701, 25.017038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787102, 37.463268, 25.414619>,  <41.720810, 37.716694, 24.757126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787102, 37.463268, 25.414619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900215, 37.844345, 25.459187>,  <41.968082, 38.072990, 25.485928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900215, 37.844345, 25.459187>,  <41.787102, 37.463268, 25.414619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900215, 37.844345, 25.459187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053954, -0.131773, 0.989810,
		0.957666, -0.273887, -0.088665,
		0.282780, 0.952692, 0.111417,
		41.985050, 38.130154, 25.492611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334045, 37.481377, 25.864452>,  <41.787102, 37.463268, 25.414619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334045, 37.481377, 25.864452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225418, 37.865231, 25.893703>,  <42.160240, 38.095543, 25.911255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225418, 37.865231, 25.893703>,  <42.334045, 37.481377, 25.864452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225418, 37.865231, 25.893703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224763, -0.010643, 0.974355,
		0.935805, 0.281041, -0.212801,
		-0.271569, 0.959637, 0.073128,
		42.143948, 38.153122, 25.915642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932861, 37.982349, 26.058342>,  <42.334045, 37.481377, 25.864452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932861, 37.982349, 26.058342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586758, 38.145023, 26.175604>,  <42.379097, 38.242626, 26.245960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586758, 38.145023, 26.175604>,  <42.932861, 37.982349, 26.058342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586758, 38.145023, 26.175604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278025, -0.097329, 0.955630,
		0.417173, 0.908369, -0.028854,
		-0.865256, 0.406685, 0.293152,
		42.327179, 38.267029, 26.263550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041275, 38.446236, 26.694006>,  <42.932861, 37.982349, 26.058342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041275, 38.446236, 26.694006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642578, 38.416607, 26.681240>,  <42.403358, 38.398830, 26.673580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642578, 38.416607, 26.681240>,  <43.041275, 38.446236, 26.694006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642578, 38.416607, 26.681240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025902, -0.080737, 0.996399,
		-0.076379, 0.993980, 0.078555,
		-0.996742, -0.074069, -0.031913,
		42.343555, 38.394386, 26.671667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685863, 38.945911, 27.070589>,  <43.041275, 38.446236, 26.694006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685863, 38.945911, 27.070589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417805, 38.649345, 27.084463>,  <42.256969, 38.471405, 27.092787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417805, 38.649345, 27.084463>,  <42.685863, 38.945911, 27.070589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417805, 38.649345, 27.084463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072117, 0.111551, 0.991139,
		-0.738713, 0.661711, -0.128224,
		-0.670151, -0.741414, 0.034684,
		42.216759, 38.426922, 27.094868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303082, 39.078922, 27.613016>,  <42.685863, 38.945911, 27.070589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303082, 39.078922, 27.613016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187450, 38.698730, 27.567356>,  <42.118073, 38.470615, 27.539961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187450, 38.698730, 27.567356>,  <42.303082, 39.078922, 27.613016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187450, 38.698730, 27.567356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211614, -0.052845, 0.975924,
		-0.933624, 0.306272, -0.185857,
		-0.289077, -0.950476, -0.114149,
		42.100727, 38.413589, 27.533112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650360, 38.991486, 27.932062>,  <42.303082, 39.078922, 27.613016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650360, 38.991486, 27.932062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795071, 38.618637, 27.925472>,  <41.881897, 38.394928, 27.921518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795071, 38.618637, 27.925472>,  <41.650360, 38.991486, 27.932062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795071, 38.618637, 27.925472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190981, -0.091396, 0.977330,
		-0.912495, -0.350425, -0.211082,
		0.361773, -0.932121, -0.016473,
		41.903603, 38.339001, 27.920530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309574, 38.675995, 28.307941>,  <41.650360, 38.991486, 27.932062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309574, 38.675995, 28.307941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591068, 38.391914, 28.315626>,  <41.759964, 38.221466, 28.320238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591068, 38.391914, 28.315626>,  <41.309574, 38.675995, 28.307941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591068, 38.391914, 28.315626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278530, -0.250913, 0.927072,
		-0.653590, -0.657763, -0.374389,
		0.703733, -0.710204, 0.019213,
		41.802189, 38.178852, 28.321390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005440, 38.034615, 28.434647>,  <41.309574, 38.675995, 28.307941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005440, 38.034615, 28.434647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384960, 37.970165, 28.543322>,  <41.612671, 37.931496, 28.608526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384960, 37.970165, 28.543322>,  <41.005440, 38.034615, 28.434647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384960, 37.970165, 28.543322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315531, -0.443506, 0.838893,
		-0.014667, -0.881670, -0.471638,
		0.948802, -0.161121, 0.271690,
		41.669601, 37.921829, 28.624828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967663, 37.333588, 28.624268>,  <41.005440, 38.034615, 28.434647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967663, 37.333588, 28.624268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296555, 37.486313, 28.793098>,  <41.493889, 37.577950, 28.894398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296555, 37.486313, 28.793098>,  <40.967663, 37.333588, 28.624268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296555, 37.486313, 28.793098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368399, -0.208249, 0.906043,
		0.433836, -0.900473, -0.030570,
		0.822234, 0.381812, 0.422079,
		41.543224, 37.600857, 28.919722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241699, 36.796211, 29.079487>,  <40.967663, 37.333588, 28.624268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241699, 36.796211, 29.079487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389656, 37.147224, 29.201546>,  <41.478432, 37.357834, 29.274780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389656, 37.147224, 29.201546>,  <41.241699, 36.796211, 29.079487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389656, 37.147224, 29.201546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273649, -0.210967, 0.938408,
		0.887860, -0.430614, 0.162100,
		0.369894, 0.877533, 0.305146,
		41.500626, 37.410484, 29.293089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390102, 36.603619, 29.786652>,  <41.241699, 36.796211, 29.079487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390102, 36.603619, 29.786652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395367, 37.003567, 29.782768>,  <41.398525, 37.243534, 29.780437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395367, 37.003567, 29.782768>,  <41.390102, 36.603619, 29.786652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395367, 37.003567, 29.782768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204052, 0.012192, 0.978884,
		0.978872, -0.010897, 0.204185,
		0.013156, 0.999866, -0.009710,
		41.399315, 37.303528, 29.779856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799862, 36.889565, 30.328585>,  <41.390102, 36.603619, 29.786652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799862, 36.889565, 30.328585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547184, 37.187572, 30.242880>,  <41.395576, 37.366379, 30.191458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547184, 37.187572, 30.242880>,  <41.799862, 36.889565, 30.328585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547184, 37.187572, 30.242880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270165, 0.047491, 0.961642,
		0.726617, 0.665351, 0.171279,
		-0.631695, 0.745019, -0.214262,
		41.357674, 37.411079, 30.178600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777287, 37.250164, 30.913481>,  <41.799862, 36.889565, 30.328585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777287, 37.250164, 30.913481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452785, 37.404324, 30.737598>,  <41.258087, 37.496819, 30.632069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452785, 37.404324, 30.737598>,  <41.777287, 37.250164, 30.913481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452785, 37.404324, 30.737598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422480, 0.133507, 0.896486,
		0.404211, 0.913039, 0.054517,
		-0.811248, 0.385402, -0.439706,
		41.209412, 37.519943, 30.605686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656944, 37.828312, 31.266905>,  <41.777287, 37.250164, 30.913481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656944, 37.828312, 31.266905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314812, 37.741222, 31.078861>,  <41.109531, 37.688969, 30.966036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314812, 37.741222, 31.078861>,  <41.656944, 37.828312, 31.266905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314812, 37.741222, 31.078861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489524, 0.042557, 0.870951,
		-0.169616, 0.975083, -0.142979,
		-0.855334, -0.217719, -0.470108,
		41.058212, 37.675907, 30.937828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132641, 38.354759, 31.538149>,  <41.656944, 37.828312, 31.266905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132641, 38.354759, 31.538149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900982, 38.069782, 31.379652>,  <40.761986, 37.898796, 31.284554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900982, 38.069782, 31.379652>,  <41.132641, 38.354759, 31.538149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900982, 38.069782, 31.379652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584054, 0.023517, 0.811374,
		-0.568740, 0.701335, -0.429726,
		-0.579151, -0.712444, -0.396242,
		40.727238, 37.856049, 31.260778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474422, 38.498730, 31.752028>,  <41.132641, 38.354759, 31.538149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474422, 38.498730, 31.752028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430374, 38.119076, 31.634037>,  <40.403946, 37.891281, 31.563244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430374, 38.119076, 31.634037>,  <40.474422, 38.498730, 31.752028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430374, 38.119076, 31.634037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504818, -0.202240, 0.839201,
		-0.856174, 0.241319, -0.456872,
		-0.110117, -0.949139, -0.294975,
		40.397339, 37.834335, 31.545544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814262, 38.421059, 31.885622>,  <40.474422, 38.498730, 31.752028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814262, 38.421059, 31.885622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970924, 38.053692, 31.863289>,  <40.064922, 37.833271, 31.849890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970924, 38.053692, 31.863289>,  <39.814262, 38.421059, 31.885622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970924, 38.053692, 31.863289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500154, -0.263435, 0.824893,
		-0.772304, -0.295148, -0.562525,
		0.391654, -0.918417, -0.055832,
		40.088421, 37.778168, 31.846539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237335, 38.059132, 31.900705>,  <39.814262, 38.421059, 31.885622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237335, 38.059132, 31.900705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539894, 37.826057, 32.019592>,  <39.721432, 37.686214, 32.090923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539894, 37.826057, 32.019592>,  <39.237335, 38.059132, 31.900705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539894, 37.826057, 32.019592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545887, -0.311989, 0.777605,
		-0.360375, -0.750424, -0.554070,
		0.756397, -0.582689, 0.297214,
		39.766815, 37.651253, 32.108757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951733, 37.282845, 31.964973>,  <39.237335, 38.059132, 31.900705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951733, 37.282845, 31.964973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301109, 37.264553, 32.158886>,  <39.510735, 37.253578, 32.275234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301109, 37.264553, 32.158886>,  <38.951733, 37.282845, 31.964973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301109, 37.264553, 32.158886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444637, -0.480762, 0.755756,
		0.198502, -0.875658, -0.440250,
		0.873439, -0.045732, 0.484782,
		39.563141, 37.250832, 32.304321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005302, 36.641018, 32.239521>,  <38.951733, 37.282845, 31.964973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005302, 36.641018, 32.239521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256699, 36.868229, 32.452065>,  <39.407536, 37.004555, 32.579590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256699, 36.868229, 32.452065>,  <39.005302, 36.641018, 32.239521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256699, 36.868229, 32.452065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450154, -0.291484, 0.844037,
		0.634320, -0.769663, 0.072506,
		0.628489, 0.568028, 0.531361,
		39.445244, 37.038639, 32.611473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152695, 36.221268, 32.726494>,  <39.005302, 36.641018, 32.239521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152695, 36.221268, 32.726494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267700, 36.577236, 32.868126>,  <39.336704, 36.790817, 32.953106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267700, 36.577236, 32.868126>,  <39.152695, 36.221268, 32.726494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267700, 36.577236, 32.868126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515580, -0.167753, 0.840260,
		0.807164, -0.424143, 0.410595,
		0.287511, 0.889922, 0.354084,
		39.353954, 36.844212, 32.974350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408745, 36.132275, 33.438320>,  <39.152695, 36.221268, 32.726494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408745, 36.132275, 33.438320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320946, 36.522518, 33.439236>,  <39.268269, 36.756664, 33.439785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320946, 36.522518, 33.439236>,  <39.408745, 36.132275, 33.438320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320946, 36.522518, 33.439236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536790, -0.122723, 0.834742,
		0.814664, 0.181996, 0.550636,
		-0.219495, 0.975611, 0.002284,
		39.255096, 36.815201, 33.439922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610561, 36.466698, 34.086121>,  <39.408745, 36.132275, 33.438320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610561, 36.466698, 34.086121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316715, 36.691746, 33.934437>,  <39.140408, 36.826775, 33.843426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316715, 36.691746, 33.934437>,  <39.610561, 36.466698, 34.086121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316715, 36.691746, 33.934437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577858, -0.225925, 0.784244,
		0.355555, 0.795249, 0.491081,
		-0.734616, 0.562617, -0.379212,
		39.096329, 36.860531, 33.820675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483860, 36.920624, 34.674915>,  <39.610561, 36.466698, 34.086121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483860, 36.920624, 34.674915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175785, 36.936371, 34.420277>,  <38.990940, 36.945820, 34.267494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175785, 36.936371, 34.420277>,  <39.483860, 36.920624, 34.674915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175785, 36.936371, 34.420277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637128, -0.093878, 0.765019,
		-0.029644, 0.994805, 0.097388,
		-0.770187, 0.039370, -0.636601,
		38.944729, 36.948181, 34.229298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938786, 37.330421, 35.108601>,  <39.483860, 36.920624, 34.674915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938786, 37.330421, 35.108601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734024, 37.125069, 34.833099>,  <38.611168, 37.001858, 34.667797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734024, 37.125069, 34.833099>,  <38.938786, 37.330421, 35.108601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734024, 37.125069, 34.833099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643434, -0.302074, 0.703381,
		-0.569160, 0.803237, -0.175694,
		-0.511908, -0.513384, -0.688758,
		38.580452, 36.971054, 34.626472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274853, 37.491798, 35.228287>,  <38.938786, 37.330421, 35.108601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274853, 37.491798, 35.228287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228970, 37.161877, 35.006821>,  <38.201439, 36.963924, 34.873940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228970, 37.161877, 35.006821>,  <38.274853, 37.491798, 35.228287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228970, 37.161877, 35.006821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832187, -0.224590, 0.506976,
		-0.542502, 0.518908, -0.660626,
		-0.114704, -0.824800, -0.553668,
		38.194557, 36.914436, 34.840721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467182, 37.410641, 35.063843>,  <38.274853, 37.491798, 35.228287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467182, 37.410641, 35.063843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636066, 37.050560, 35.021191>,  <37.737396, 36.834511, 34.995598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636066, 37.050560, 35.021191>,  <37.467182, 37.410641, 35.063843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636066, 37.050560, 35.021191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806895, -0.426818, 0.408347,
		-0.413108, -0.086366, -0.906577,
		0.422211, -0.900204, -0.106633,
		37.762730, 36.780499, 34.989201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898533, 36.964798, 34.848133>,  <37.467182, 37.410641, 35.063843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898533, 36.964798, 34.848133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193298, 36.721504, 34.966129>,  <37.370155, 36.575527, 35.036926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193298, 36.721504, 34.966129>,  <36.898533, 36.964798, 34.848133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193298, 36.721504, 34.966129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651250, -0.521797, 0.551001,
		-0.181214, -0.598148, -0.780629,
		0.736909, -0.608233, 0.294987,
		37.414371, 36.539036, 35.054626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722446, 36.334682, 34.679806>,  <36.898533, 36.964798, 34.848133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722446, 36.334682, 34.679806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989712, 36.287033, 34.973572>,  <37.150070, 36.258442, 35.149830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989712, 36.287033, 34.973572>,  <36.722446, 36.334682, 34.679806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989712, 36.287033, 34.973572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667220, -0.532691, 0.520632,
		0.329196, -0.837884, -0.435408,
		0.668168, -0.119123, 0.734412,
		37.190163, 36.251297, 35.193897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711983, 35.549789, 34.933392>,  <36.722446, 36.334682, 34.679806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711983, 35.549789, 34.933392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891006, 35.739010, 35.236950>,  <36.998421, 35.852543, 35.419083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891006, 35.739010, 35.236950>,  <36.711983, 35.549789, 34.933392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891006, 35.739010, 35.236950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567088, -0.506039, 0.649873,
		0.691450, -0.721215, 0.041778,
		0.447557, 0.473047, 0.758893,
		37.025272, 35.880924, 35.464619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961643, 34.999626, 35.417770>,  <36.711983, 35.549789, 34.933392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961643, 34.999626, 35.417770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973904, 35.313236, 35.665760>,  <36.981258, 35.501400, 35.814556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973904, 35.313236, 35.665760>,  <36.961643, 34.999626, 35.417770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973904, 35.313236, 35.665760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407952, -0.556442, 0.723843,
		0.912489, -0.275103, 0.302790,
		0.030646, 0.784022, 0.619976,
		36.983097, 35.548443, 35.851753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105289, 34.740017, 35.956924>,  <36.961643, 34.999626, 35.417770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105289, 34.740017, 35.956924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948936, 35.082035, 36.093224>,  <36.855125, 35.287247, 36.175003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948936, 35.082035, 36.093224>,  <37.105289, 34.740017, 35.956924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948936, 35.082035, 36.093224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447240, -0.499999, 0.741605,
		0.804477, 0.137487, 0.577853,
		-0.390887, 0.855043, 0.340748,
		36.831669, 35.338547, 36.195446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116173, 34.649223, 36.770092>,  <37.105289, 34.740017, 35.956924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116173, 34.649223, 36.770092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834702, 34.917561, 36.676449>,  <36.665817, 35.078564, 36.620262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834702, 34.917561, 36.676449>,  <37.116173, 34.649223, 36.770092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834702, 34.917561, 36.676449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544841, -0.297974, 0.783811,
		0.456054, 0.679104, 0.575180,
		-0.703678, 0.670842, -0.234112,
		36.623600, 35.118813, 36.606216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705677, 34.698528, 36.392319>,  <37.116173, 34.649223, 36.770092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705677, 34.698528, 36.392319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027836, 34.527485, 36.556507>,  <38.221130, 34.424858, 36.655022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027836, 34.527485, 36.556507>,  <37.705677, 34.698528, 36.392319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027836, 34.527485, 36.556507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508635, 0.143012, -0.849021,
		0.304348, 0.892579, 0.332679,
		0.805396, -0.427611, 0.410472,
		38.269455, 34.399200, 36.679649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307510, 35.087009, 36.554569>,  <37.705677, 34.698528, 36.392319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307510, 35.087009, 36.554569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458015, 34.727707, 36.463737>,  <38.548317, 34.512127, 36.409237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458015, 34.727707, 36.463737>,  <38.307510, 35.087009, 36.554569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458015, 34.727707, 36.463737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646091, 0.430046, -0.630577,
		0.664074, 0.090546, 0.742164,
		0.376261, -0.898255, -0.227081,
		38.570892, 34.458229, 36.395615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091385, 35.157429, 36.651814>,  <38.307510, 35.087009, 36.554569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091385, 35.157429, 36.651814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005833, 34.839291, 36.424950>,  <38.954502, 34.648407, 36.288830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005833, 34.839291, 36.424950>,  <39.091385, 35.157429, 36.651814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005833, 34.839291, 36.424950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658022, 0.311813, -0.685405,
		0.721986, -0.519799, 0.456668,
		-0.213878, -0.795350, -0.567164,
		38.941669, 34.600685, 36.254799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785969, 34.908669, 36.340767>,  <39.091385, 35.157429, 36.651814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785969, 34.908669, 36.340767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510521, 34.718552, 36.121716>,  <39.345253, 34.604481, 35.990284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510521, 34.718552, 36.121716>,  <39.785969, 34.908669, 36.340767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510521, 34.718552, 36.121716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545590, 0.157841, -0.823054,
		0.477630, -0.865553, 0.150622,
		-0.688623, -0.475293, -0.547627,
		39.303936, 34.575962, 35.957428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148880, 34.246075, 36.176144>,  <39.785969, 34.908669, 36.340767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148880, 34.246075, 36.176144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868526, 34.369694, 35.919006>,  <39.700314, 34.443863, 35.764725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868526, 34.369694, 35.919006>,  <40.148880, 34.246075, 36.176144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868526, 34.369694, 35.919006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683295, 0.032370, -0.729424,
		-0.204615, -0.950497, -0.233856,
		-0.700885, 0.309043, -0.642847,
		39.658260, 34.462406, 35.726151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472603, 34.250305, 35.581268>,  <40.148880, 34.246075, 36.176144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472603, 34.250305, 35.581268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136295, 34.413647, 35.439083>,  <39.934509, 34.511650, 35.353771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136295, 34.413647, 35.439083>,  <40.472603, 34.250305, 35.581268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136295, 34.413647, 35.439083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473311, 0.235676, -0.848783,
		-0.262827, -0.881877, -0.391426,
		-0.840773, 0.408349, -0.355460,
		39.884064, 34.536152, 35.332443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216625, 33.876045, 34.867920>,  <40.472603, 34.250305, 35.581268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216625, 33.876045, 34.867920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083416, 34.250462, 34.913403>,  <40.003490, 34.475109, 34.940693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083416, 34.250462, 34.913403>,  <40.216625, 33.876045, 34.867920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083416, 34.250462, 34.913403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485522, 0.273603, -0.830307,
		-0.808310, -0.221301, -0.545583,
		-0.333021, 0.936038, 0.113710,
		39.983509, 34.531273, 34.947517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072174, 34.180622, 34.204315>,  <40.216625, 33.876045, 34.867920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072174, 34.180622, 34.204315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132618, 34.498184, 34.439903>,  <40.168884, 34.688721, 34.581257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132618, 34.498184, 34.439903>,  <40.072174, 34.180622, 34.204315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132618, 34.498184, 34.439903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409328, 0.492076, -0.768318,
		-0.899787, 0.357183, -0.250607,
		0.151112, 0.793903, 0.588969,
		40.177952, 34.736355, 34.616592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958065, 34.736866, 33.758430>,  <40.072174, 34.180622, 34.204315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958065, 34.736866, 33.758430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160290, 34.932831, 34.042515>,  <40.281624, 35.050407, 34.212967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160290, 34.932831, 34.042515>,  <39.958065, 34.736866, 33.758430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160290, 34.932831, 34.042515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593096, 0.400496, -0.698456,
		-0.626617, 0.774333, -0.088089,
		0.505558, 0.489909, 0.710211,
		40.311958, 35.079803, 34.255577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140984, 35.452679, 33.444489>,  <39.958065, 34.736866, 33.758430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140984, 35.452679, 33.444489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394184, 35.375267, 33.744320>,  <40.546104, 35.328819, 33.924217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394184, 35.375267, 33.744320>,  <40.140984, 35.452679, 33.444489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394184, 35.375267, 33.744320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741405, 0.430188, -0.515030,
		-0.222784, 0.881751, 0.415792,
		0.632997, -0.193530, 0.749574,
		40.584084, 35.317207, 33.969193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601288, 35.993755, 33.441574>,  <40.140984, 35.452679, 33.444489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601288, 35.993755, 33.441574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807194, 35.701679, 33.621281>,  <40.930737, 35.526436, 33.729103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807194, 35.701679, 33.621281>,  <40.601288, 35.993755, 33.441574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807194, 35.701679, 33.621281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819939, 0.266236, -0.506773,
		0.250428, 0.629242, 0.735758,
		0.514768, -0.730187, 0.449267,
		40.961624, 35.482624, 33.756062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191738, 36.384014, 33.719593>,  <40.601288, 35.993755, 33.441574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191738, 36.384014, 33.719593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280006, 35.996605, 33.673512>,  <41.332970, 35.764160, 33.645863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280006, 35.996605, 33.673512>,  <41.191738, 36.384014, 33.719593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280006, 35.996605, 33.673512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816360, 0.248045, -0.521565,
		0.533722, 0.021047, 0.845398,
		0.220674, -0.968520, -0.115205,
		41.346210, 35.706047, 33.638950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937687, 36.288620, 33.867161>,  <41.191738, 36.384014, 33.719593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937687, 36.288620, 33.867161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838802, 35.966194, 33.652073>,  <41.779472, 35.772739, 33.523022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838802, 35.966194, 33.652073>,  <41.937687, 36.288620, 33.867161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838802, 35.966194, 33.652073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788834, 0.154846, -0.594780,
		0.562696, -0.571208, 0.597574,
		-0.247211, -0.806067, -0.537720,
		41.764641, 35.724373, 33.490757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501774, 36.096626, 33.684612>,  <41.937687, 36.288620, 33.867161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501774, 36.096626, 33.684612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250641, 35.910294, 33.435184>,  <42.099960, 35.798496, 33.285530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250641, 35.910294, 33.435184>,  <42.501774, 36.096626, 33.684612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250641, 35.910294, 33.435184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711127, -0.017595, -0.702844,
		0.316433, -0.884700, 0.342310,
		-0.627829, -0.465829, -0.623566,
		42.062294, 35.770546, 33.248116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906189, 35.572098, 33.453407>,  <42.501774, 36.096626, 33.684612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906189, 35.572098, 33.453407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622692, 35.605000, 33.173141>,  <42.452595, 35.624741, 33.004982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622692, 35.605000, 33.173141>,  <42.906189, 35.572098, 33.453407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622692, 35.605000, 33.173141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691586, -0.115074, -0.713068,
		-0.139282, -0.989945, 0.024671,
		-0.708738, 0.082255, -0.700660,
		42.410072, 35.629673, 32.962944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037727, 35.058540, 32.895954>,  <42.906189, 35.572098, 33.453407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037727, 35.058540, 32.895954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823895, 35.359428, 32.741871>,  <42.695595, 35.539963, 32.649422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823895, 35.359428, 32.741871>,  <43.037727, 35.058540, 32.895954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823895, 35.359428, 32.741871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557451, -0.028722, -0.829713,
		-0.635191, -0.658286, -0.403971,
		-0.534586, 0.752220, -0.385206,
		42.663517, 35.585094, 32.626308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891487, 34.871723, 32.230057>,  <43.037727, 35.058540, 32.895954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891487, 34.871723, 32.230057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841026, 35.268402, 32.220055>,  <42.810749, 35.506409, 32.214054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841026, 35.268402, 32.220055>,  <42.891487, 34.871723, 32.230057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841026, 35.268402, 32.220055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399397, 0.027705, -0.916359,
		-0.908057, -0.125585, -0.399575,
		-0.126151, 0.991696, -0.025001,
		42.803181, 35.565910, 32.212555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565418, 35.002029, 31.574591>,  <42.891487, 34.871723, 32.230057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565418, 35.002029, 31.574591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712162, 35.351215, 31.703182>,  <42.800209, 35.560726, 31.780338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712162, 35.351215, 31.703182>,  <42.565418, 35.002029, 31.574591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712162, 35.351215, 31.703182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460660, 0.129761, -0.878040,
		-0.808213, 0.470209, -0.354536,
		0.366857, 0.872964, 0.321481,
		42.822220, 35.613106, 31.799627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404270, 35.510178, 31.066574>,  <42.565418, 35.002029, 31.574591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404270, 35.510178, 31.066574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705330, 35.653805, 31.287334>,  <42.885963, 35.739983, 31.419790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705330, 35.653805, 31.287334>,  <42.404270, 35.510178, 31.066574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705330, 35.653805, 31.287334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476072, 0.282259, -0.832878,
		-0.454840, 0.889606, 0.041498,
		0.752646, 0.359070, 0.551899,
		42.931126, 35.761524, 31.452904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510807, 36.037003, 30.694454>,  <42.404270, 35.510178, 31.066574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510807, 36.037003, 30.694454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833286, 35.975349, 30.922943>,  <43.026772, 35.938358, 31.060036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833286, 35.975349, 30.922943>,  <42.510807, 36.037003, 30.694454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833286, 35.975349, 30.922943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578053, 0.411010, -0.704930,
		-0.126123, 0.898506, 0.420452,
		0.806194, -0.154135, 0.571222,
		43.075146, 35.929108, 31.094309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762478, 36.658184, 30.709641>,  <42.510807, 36.037003, 30.694454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762478, 36.658184, 30.709641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051258, 36.396519, 30.799847>,  <43.224525, 36.239521, 30.853970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051258, 36.396519, 30.799847>,  <42.762478, 36.658184, 30.709641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051258, 36.396519, 30.799847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610574, 0.448935, -0.652424,
		0.325547, 0.608714, 0.723523,
		0.721955, -0.654159, 0.225515,
		43.267845, 36.200272, 30.867500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412643, 37.032516, 30.944601>,  <42.762478, 36.658184, 30.709641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412643, 37.032516, 30.944601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519127, 36.672092, 30.807648>,  <43.583019, 36.455837, 30.725475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519127, 36.672092, 30.807648>,  <43.412643, 37.032516, 30.944601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519127, 36.672092, 30.807648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575612, 0.433517, -0.693350,
		0.773178, -0.012502, 0.634067,
		0.266210, -0.901059, -0.342382,
		43.598991, 36.401775, 30.704933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039997, 37.125904, 30.554472>,  <43.412643, 37.032516, 30.944601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039997, 37.125904, 30.554472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948009, 36.762306, 30.415422>,  <43.892818, 36.544147, 30.331993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948009, 36.762306, 30.415422>,  <44.039997, 37.125904, 30.554472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948009, 36.762306, 30.415422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407916, 0.234274, -0.882451,
		0.883583, -0.344739, 0.316917,
		-0.229970, -0.908994, -0.347626,
		43.879017, 36.489609, 30.311134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594799, 36.963955, 30.125889>,  <44.039997, 37.125904, 30.554472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594799, 36.963955, 30.125889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337543, 36.691452, 29.986031>,  <44.183189, 36.527950, 29.902115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337543, 36.691452, 29.986031>,  <44.594799, 36.963955, 30.125889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337543, 36.691452, 29.986031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370943, 0.122280, -0.920570,
		0.669903, -0.721756, 0.174065,
		-0.643142, -0.681260, -0.349646,
		44.144600, 36.487076, 29.881136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913593, 36.658611, 29.582634>,  <44.594799, 36.963955, 30.125889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913593, 36.658611, 29.582634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536297, 36.552795, 29.502321>,  <44.309917, 36.489307, 29.454134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536297, 36.552795, 29.502321>,  <44.913593, 36.658611, 29.582634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536297, 36.552795, 29.502321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168694, 0.139124, -0.975801,
		0.286073, -0.954286, -0.086601,
		-0.943242, -0.264541, -0.200782,
		44.253323, 36.473434, 29.442087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975506, 36.156853, 29.087402>,  <44.913593, 36.658611, 29.582634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975506, 36.156853, 29.087402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599998, 36.288235, 29.045773>,  <44.374695, 36.367065, 29.020796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599998, 36.288235, 29.045773>,  <44.975506, 36.156853, 29.087402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599998, 36.288235, 29.045773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081538, -0.081694, -0.993316,
		-0.334764, -0.940979, 0.049910,
		-0.938768, 0.328457, -0.104074,
		44.318367, 36.386772, 29.014551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637875, 35.735088, 28.511322>,  <44.975506, 36.156853, 29.087402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637875, 35.735088, 28.511322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433876, 36.078884, 28.525066>,  <44.311478, 36.285160, 28.533314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433876, 36.078884, 28.525066>,  <44.637875, 35.735088, 28.511322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433876, 36.078884, 28.525066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094010, 0.095401, -0.990990,
		-0.855023, -0.502173, -0.129455,
		-0.509999, 0.859489, 0.034361,
		44.280876, 36.336731, 28.535376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942333, 35.685951, 28.044323>,  <44.637875, 35.735088, 28.511322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942333, 35.685951, 28.044323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037567, 36.072849, 28.079521>,  <44.094707, 36.304989, 28.100639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037567, 36.072849, 28.079521>,  <43.942333, 35.685951, 28.044323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037567, 36.072849, 28.079521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075855, 0.108842, -0.991161,
		-0.968277, 0.229310, 0.099285,
		0.238090, 0.967249, 0.087995,
		44.108994, 36.363026, 28.105919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586384, 35.981941, 27.469940>,  <43.942333, 35.685951, 28.044323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586384, 35.981941, 27.469940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828873, 36.278374, 27.585388>,  <43.974365, 36.456234, 27.654657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828873, 36.278374, 27.585388>,  <43.586384, 35.981941, 27.469940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828873, 36.278374, 27.585388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238703, 0.176626, -0.954895,
		-0.758628, 0.647772, -0.069823,
		0.606221, 0.741077, 0.288618,
		44.010738, 36.500698, 27.671974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281979, 36.598248, 27.202366>,  <43.586384, 35.981941, 27.469940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281979, 36.598248, 27.202366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672501, 36.665611, 27.256729>,  <43.906815, 36.706028, 27.289347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.672501, 36.665611, 27.256729>,  <43.281979, 36.598248, 27.202366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672501, 36.665611, 27.256729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077185, 0.315737, -0.945702,
		-0.202174, 0.933782, 0.295257,
		0.976303, 0.168407, 0.135908,
		43.965393, 36.716133, 27.297501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369232, 37.228073, 26.831911>,  <43.281979, 36.598248, 27.202366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369232, 37.228073, 26.831911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726479, 37.054623, 26.879755>,  <43.940826, 36.950554, 26.908461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726479, 37.054623, 26.879755>,  <43.369232, 37.228073, 26.831911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726479, 37.054623, 26.879755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245765, 0.247688, -0.937150,
		0.376748, 0.866382, 0.327785,
		0.893119, -0.433627, 0.119611,
		43.994415, 36.924534, 26.915638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830376, 37.700787, 26.563564>,  <43.369232, 37.228073, 26.831911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830376, 37.700787, 26.563564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042950, 37.362011, 26.570246>,  <44.170494, 37.158745, 26.574255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042950, 37.362011, 26.570246>,  <43.830376, 37.700787, 26.563564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042950, 37.362011, 26.570246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202675, 0.107976, -0.973275,
		0.822498, 0.520616, 0.229035,
		0.531432, -0.846936, 0.016705,
		44.202381, 37.107929, 26.575258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513180, 37.841774, 26.263842>,  <43.830376, 37.700787, 26.563564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513180, 37.841774, 26.263842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427132, 37.451939, 26.238846>,  <44.375504, 37.218037, 26.223848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427132, 37.451939, 26.238846>,  <44.513180, 37.841774, 26.263842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427132, 37.451939, 26.238846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135967, 0.033474, -0.990148,
		0.967076, -0.221500, 0.125310,
		-0.215123, -0.974586, -0.062489,
		44.362595, 37.159561, 26.220098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023712, 37.539177, 25.902552>,  <44.513180, 37.841774, 26.263842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023712, 37.539177, 25.902552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748074, 37.249706, 25.887373>,  <44.582691, 37.076023, 25.878265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748074, 37.249706, 25.887373>,  <45.023712, 37.539177, 25.902552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748074, 37.249706, 25.887373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252653, -0.190838, -0.948550,
		0.679204, -0.663226, 0.314345,
		-0.689092, -0.723680, -0.037948,
		44.541348, 37.032604, 25.875988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379517, 37.084934, 25.455364>,  <45.023712, 37.539177, 25.902552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379517, 37.084934, 25.455364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001293, 36.955738, 25.471357>,  <44.774361, 36.878220, 25.480953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001293, 36.955738, 25.471357>,  <45.379517, 37.084934, 25.455364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001293, 36.955738, 25.471357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022883, -0.188530, -0.981801,
		0.324655, -0.927432, 0.185656,
		-0.945556, -0.322994, 0.039985,
		44.717625, 36.858841, 25.483353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407726, 36.543259, 25.059298>,  <45.379517, 37.084934, 25.455364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407726, 36.543259, 25.059298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031120, 36.677216, 25.074259>,  <44.805157, 36.757591, 25.083237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031120, 36.677216, 25.074259>,  <45.407726, 36.543259, 25.059298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031120, 36.677216, 25.074259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026146, 0.038068, -0.998933,
		-0.335959, -0.941487, -0.027085,
		-0.941514, 0.334892, 0.037405,
		44.748665, 36.777683, 25.085480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.015011, 36.197430, 24.482832>,  <45.407726, 36.543259, 25.059298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.015011, 36.197430, 24.482832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794868, 36.522293, 24.560299>,  <44.662785, 36.717213, 24.606779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794868, 36.522293, 24.560299>,  <45.015011, 36.197430, 24.482832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794868, 36.522293, 24.560299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082919, 0.177645, -0.980595,
		-0.830802, -0.555736, -0.030425,
		-0.550357, 0.812157, 0.193669,
		44.629761, 36.765942, 24.618399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336571, 36.095734, 24.111856>,  <45.015011, 36.197430, 24.482832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336571, 36.095734, 24.111856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395016, 36.488426, 24.160622>,  <44.430084, 36.724041, 24.189880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395016, 36.488426, 24.160622>,  <44.336571, 36.095734, 24.111856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395016, 36.488426, 24.160622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197779, 0.149735, -0.968743,
		-0.969296, 0.117432, 0.216043,
		0.146111, 0.981727, 0.121912,
		44.438850, 36.782944, 24.197195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802326, 35.855145, 23.564468>,  <44.336571, 36.095734, 24.111856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802326, 35.855145, 23.564468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854633, 35.501904, 23.384232>,  <43.886017, 35.289959, 23.276089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854633, 35.501904, 23.384232>,  <43.802326, 35.855145, 23.564468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854633, 35.501904, 23.384232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159502, -0.467316, 0.869583,
		-0.978499, -0.041842, -0.201966,
		0.130766, -0.883100, -0.450594,
		43.893864, 35.236973, 23.249054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136696, 35.466751, 23.768576>,  <43.802326, 35.855145, 23.564468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136696, 35.466751, 23.768576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447140, 35.226826, 23.690723>,  <43.633404, 35.082870, 23.644012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447140, 35.226826, 23.690723>,  <43.136696, 35.466751, 23.768576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447140, 35.226826, 23.690723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168211, -0.494377, 0.852817,
		-0.607756, -0.629135, -0.484584,
		0.776104, -0.599817, -0.194633,
		43.679970, 35.046883, 23.632334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832294, 34.785046, 23.912388>,  <43.136696, 35.466751, 23.768576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832294, 34.785046, 23.912388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231091, 34.790154, 23.942978>,  <43.470367, 34.793221, 23.961332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231091, 34.790154, 23.942978>,  <42.832294, 34.785046, 23.912388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231091, 34.790154, 23.942978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061868, -0.463450, 0.883961,
		0.046732, -0.886031, -0.461264,
		0.996990, 0.012772, 0.076476,
		43.530186, 34.793983, 23.965921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062206, 34.132431, 24.160078>,  <42.832294, 34.785046, 23.912388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062206, 34.132431, 24.160078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355789, 34.391125, 24.243057>,  <43.531940, 34.546341, 24.292845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355789, 34.391125, 24.243057>,  <43.062206, 34.132431, 24.160078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355789, 34.391125, 24.243057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008799, -0.314465, 0.949228,
		0.679134, -0.694872, -0.236495,
		0.733962, 0.646734, 0.207450,
		43.575977, 34.585144, 24.305292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438858, 33.731571, 24.676556>,  <43.062206, 34.132431, 24.160078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438858, 33.731571, 24.676556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592083, 34.099888, 24.705957>,  <43.684017, 34.320877, 24.723598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592083, 34.099888, 24.705957>,  <43.438858, 33.731571, 24.676556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592083, 34.099888, 24.705957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119901, -0.128467, 0.984439,
		0.915908, -0.368288, -0.159615,
		0.383062, 0.920793, 0.073506,
		43.707001, 34.376125, 24.728010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033588, 33.603722, 25.043528>,  <43.438858, 33.731571, 24.676556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033588, 33.603722, 25.043528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970383, 33.997295, 25.076782>,  <43.932461, 34.233440, 25.096735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970383, 33.997295, 25.076782>,  <44.033588, 33.603722, 25.043528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970383, 33.997295, 25.076782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176106, -0.054765, 0.982846,
		0.971606, 0.169943, -0.164623,
		-0.158013, 0.983931, 0.083138,
		43.922977, 34.292473, 25.101725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647415, 33.839855, 25.374504>,  <44.033588, 33.603722, 25.043528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647415, 33.839855, 25.374504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349033, 34.095558, 25.449226>,  <44.170002, 34.248981, 25.494061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349033, 34.095558, 25.449226>,  <44.647415, 33.839855, 25.374504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349033, 34.095558, 25.449226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217315, -0.031505, 0.975593,
		0.629539, 0.768348, -0.115418,
		-0.745959, 0.639256, 0.186807,
		44.125244, 34.287334, 25.505268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805603, 34.172001, 26.120430>,  <44.647415, 33.839855, 25.374504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805603, 34.172001, 26.120430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424049, 34.279999, 26.067955>,  <44.195118, 34.344799, 26.036470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424049, 34.279999, 26.067955>,  <44.805603, 34.172001, 26.120430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424049, 34.279999, 26.067955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197225, -0.234240, 0.951963,
		0.226297, 0.933935, 0.276687,
		-0.953883, 0.269996, -0.131188,
		44.137886, 34.360996, 26.028599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547672, 34.451836, 26.797161>,  <44.805603, 34.172001, 26.120430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547672, 34.451836, 26.797161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206707, 34.359344, 26.609577>,  <44.002129, 34.303848, 26.497026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206707, 34.359344, 26.609577>,  <44.547672, 34.451836, 26.797161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206707, 34.359344, 26.609577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451926, -0.125257, 0.883217,
		-0.262967, 0.964802, 0.002272,
		-0.852415, -0.231230, -0.468958,
		43.950981, 34.289974, 26.468889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040546, 34.970406, 27.095470>,  <44.547672, 34.451836, 26.797161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040546, 34.970406, 27.095470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852875, 34.645203, 26.957544>,  <43.740273, 34.450081, 26.874788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852875, 34.645203, 26.957544>,  <44.040546, 34.970406, 27.095470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852875, 34.645203, 26.957544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551465, -0.035242, 0.833453,
		-0.689753, 0.581189, -0.431809,
		-0.469177, -0.813005, -0.344813,
		43.712120, 34.401302, 26.854101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367340, 35.043259, 27.386013>,  <44.040546, 34.970406, 27.095470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367340, 35.043259, 27.386013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403740, 34.652939, 27.306480>,  <43.425579, 34.418747, 27.258760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403740, 34.652939, 27.306480>,  <43.367340, 35.043259, 27.386013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403740, 34.652939, 27.306480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422315, -0.218629, 0.879688,
		-0.901870, 0.003921, -0.431989,
		0.090996, -0.975800, -0.198831,
		43.431038, 34.360199, 27.246832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690411, 34.793674, 27.651428>,  <43.367340, 35.043259, 27.386013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690411, 34.793674, 27.651428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943966, 34.487385, 27.607866>,  <43.096100, 34.303612, 27.581730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943966, 34.487385, 27.607866>,  <42.690411, 34.793674, 27.651428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943966, 34.487385, 27.607866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313418, -0.383040, 0.868936,
		-0.707077, -0.516674, -0.482795,
		0.633886, -0.765721, -0.108904,
		43.134132, 34.257668, 27.575195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344444, 34.194946, 27.688663>,  <42.690411, 34.793674, 27.651428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344444, 34.194946, 27.688663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715740, 34.134132, 27.824463>,  <42.938519, 34.097645, 27.905943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715740, 34.134132, 27.824463>,  <42.344444, 34.194946, 27.688663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715740, 34.134132, 27.824463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367014, -0.225573, 0.902451,
		-0.060622, -0.962290, -0.265185,
		0.928238, -0.152035, 0.339500,
		42.994213, 34.088520, 27.926313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314846, 33.577602, 28.006609>,  <42.344444, 34.194946, 27.688663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314846, 33.577602, 28.006609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623924, 33.773853, 28.167717>,  <42.809372, 33.891605, 28.264381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623924, 33.773853, 28.167717>,  <42.314846, 33.577602, 28.006609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623924, 33.773853, 28.167717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249416, -0.348815, 0.903394,
		0.583727, -0.798504, -0.147155,
		0.772693, 0.490632, 0.402772,
		42.855732, 33.921043, 28.288549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682076, 33.107792, 28.517897>,  <42.314846, 33.577602, 28.006609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682076, 33.107792, 28.517897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792278, 33.479572, 28.616058>,  <42.858402, 33.702641, 28.674955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792278, 33.479572, 28.616058>,  <42.682076, 33.107792, 28.517897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792278, 33.479572, 28.616058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065385, -0.272810, 0.959844,
		0.959072, -0.248402, -0.135934,
		0.275512, 0.929447, 0.245402,
		42.874931, 33.758408, 28.689678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180290, 33.003590, 29.001228>,  <42.682076, 33.107792, 28.517897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180290, 33.003590, 29.001228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065346, 33.384045, 29.046402>,  <42.996380, 33.612320, 29.073507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065346, 33.384045, 29.046402>,  <43.180290, 33.003590, 29.001228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065346, 33.384045, 29.046402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023855, -0.110765, 0.993560,
		0.957525, 0.288205, 0.009140,
		-0.287362, 0.951141, 0.112935,
		42.979137, 33.669388, 29.080282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488953, 33.078663, 29.631704>,  <43.180290, 33.003590, 29.001228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488953, 33.078663, 29.631704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223598, 33.372482, 29.574636>,  <43.064388, 33.548775, 29.540396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223598, 33.372482, 29.574636>,  <43.488953, 33.078663, 29.631704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223598, 33.372482, 29.574636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168064, 0.039529, 0.984983,
		0.729162, 0.677399, 0.097229,
		-0.663383, 0.734553, -0.142670,
		43.024582, 33.592850, 29.531836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723057, 33.594608, 30.150185>,  <43.488953, 33.078663, 29.631704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723057, 33.594608, 30.150185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340878, 33.645767, 30.043785>,  <43.111568, 33.676464, 29.979946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340878, 33.645767, 30.043785>,  <43.723057, 33.594608, 30.150185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340878, 33.645767, 30.043785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265349, 0.022396, 0.963892,
		0.129237, 0.991534, 0.012540,
		-0.955452, 0.127898, -0.265997,
		43.054241, 33.684135, 29.963985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449543, 34.020065, 30.650547>,  <43.723057, 33.594608, 30.150185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449543, 34.020065, 30.650547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131695, 33.848389, 30.478796>,  <42.940987, 33.745384, 30.375746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131695, 33.848389, 30.478796>,  <43.449543, 34.020065, 30.650547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131695, 33.848389, 30.478796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421453, -0.119090, 0.898996,
		-0.436976, 0.895328, -0.086253,
		-0.794625, -0.429191, -0.429378,
		42.893307, 33.719631, 30.349983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757381, 34.422230, 30.802227>,  <43.449543, 34.020065, 30.650547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757381, 34.422230, 30.802227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680927, 34.037998, 30.721466>,  <42.635056, 33.807461, 30.673010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680927, 34.037998, 30.721466>,  <42.757381, 34.422230, 30.802227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680927, 34.037998, 30.721466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501294, -0.081318, 0.861447,
		-0.843902, 0.265865, -0.465988,
		-0.191135, -0.960575, -0.201901,
		42.623589, 33.749825, 30.660896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336208, 34.297710, 31.293470>,  <42.757381, 34.422230, 30.802227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336208, 34.297710, 31.293470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379807, 33.938946, 31.122047>,  <42.405968, 33.723686, 31.019194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379807, 33.938946, 31.122047>,  <42.336208, 34.297710, 31.293470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379807, 33.938946, 31.122047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396005, -0.434618, 0.808880,
		-0.911756, 0.081544, -0.402555,
		0.108999, -0.896915, -0.428558,
		42.412506, 33.669872, 30.993481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636990, 34.000027, 31.249458>,  <42.336208, 34.297710, 31.293470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636990, 34.000027, 31.249458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922859, 33.720306, 31.243626>,  <42.094383, 33.552475, 31.240126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922859, 33.720306, 31.243626>,  <41.636990, 34.000027, 31.249458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922859, 33.720306, 31.243626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393490, -0.419199, 0.818191,
		-0.578277, -0.579004, -0.574761,
		0.714676, -0.699304, -0.014581,
		42.137260, 33.510517, 31.239252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225475, 33.478058, 31.502399>,  <41.636990, 34.000027, 31.249458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225475, 33.478058, 31.502399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606892, 33.358688, 31.518908>,  <41.835743, 33.287067, 31.528812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606892, 33.358688, 31.518908>,  <41.225475, 33.478058, 31.502399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606892, 33.358688, 31.518908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132963, -0.293956, 0.946526,
		-0.270332, -0.908039, -0.319978,
		0.953541, -0.298422, 0.041270,
		41.892956, 33.269161, 31.531288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176208, 32.883076, 31.893520>,  <41.225475, 33.478058, 31.502399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176208, 32.883076, 31.893520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564556, 32.977097, 31.912113>,  <41.797565, 33.033508, 31.923269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564556, 32.977097, 31.912113>,  <41.176208, 32.883076, 31.893520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564556, 32.977097, 31.912113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039194, -0.347176, 0.936980,
		0.236377, -0.907865, -0.346276,
		0.970870, 0.235053, 0.046482,
		41.855816, 33.047611, 31.926058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498508, 32.322216, 32.141842>,  <41.176208, 32.883076, 31.893520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498508, 32.322216, 32.141842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745361, 32.622738, 32.235390>,  <41.893475, 32.803051, 32.291519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745361, 32.622738, 32.235390>,  <41.498508, 32.322216, 32.141842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745361, 32.622738, 32.235390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119744, -0.204081, 0.971603,
		0.777695, -0.627612, -0.035981,
		0.617132, 0.751302, 0.233866,
		41.930500, 32.848129, 32.305550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943569, 32.005692, 32.747604>,  <41.498508, 32.322216, 32.141842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943569, 32.005692, 32.747604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947262, 32.405663, 32.744400>,  <41.949478, 32.645645, 32.742477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947262, 32.405663, 32.744400>,  <41.943569, 32.005692, 32.747604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947262, 32.405663, 32.744400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179066, 0.009530, 0.983791,
		0.983794, -0.007645, 0.179140,
		0.009229, 0.999925, -0.008007,
		41.950031, 32.705639, 32.741997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255753, 32.116940, 33.285950>,  <41.943569, 32.005692, 32.747604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255753, 32.116940, 33.285950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065563, 32.460918, 33.211739>,  <41.951450, 32.667305, 33.167210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065563, 32.460918, 33.211739>,  <42.255753, 32.116940, 33.285950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065563, 32.460918, 33.211739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372580, -0.005792, 0.927982,
		0.796939, 0.510353, 0.323153,
		-0.475470, 0.859945, -0.185532,
		41.922920, 32.718903, 33.156078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370823, 32.534359, 33.881279>,  <42.255753, 32.116940, 33.285950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370823, 32.534359, 33.881279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047600, 32.694664, 33.708565>,  <41.853668, 32.790848, 33.604935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047600, 32.694664, 33.708565>,  <42.370823, 32.534359, 33.881279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047600, 32.694664, 33.708565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447410, 0.059332, 0.892359,
		0.383240, 0.914260, 0.131360,
		-0.808054, 0.400760, -0.431787,
		41.805183, 32.814892, 33.579029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364719, 33.112671, 34.315773>,  <42.370823, 32.534359, 33.881279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364719, 33.112671, 34.315773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011040, 33.036282, 34.145260>,  <41.798832, 32.990448, 34.042953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011040, 33.036282, 34.145260>,  <42.364719, 33.112671, 34.315773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011040, 33.036282, 34.145260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438768, 0.026564, 0.898208,
		-0.160214, 0.981235, -0.107283,
		-0.884203, -0.190977, -0.426278,
		41.745777, 32.978989, 34.017376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922276, 33.532600, 34.575584>,  <42.364719, 33.112671, 34.315773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922276, 33.532600, 34.575584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685211, 33.238235, 34.444626>,  <41.542973, 33.061615, 34.366051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685211, 33.238235, 34.444626>,  <41.922276, 33.532600, 34.575584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685211, 33.238235, 34.444626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489692, 0.006489, 0.871871,
		-0.639500, 0.677042, -0.364217,
		-0.592657, -0.735916, -0.327392,
		41.507416, 33.017460, 34.346409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328285, 33.548618, 35.083439>,  <41.922276, 33.532600, 34.575584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328285, 33.548618, 35.083439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302094, 33.200779, 34.887680>,  <41.286377, 32.992073, 34.770226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302094, 33.200779, 34.887680>,  <41.328285, 33.548618, 35.083439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302094, 33.200779, 34.887680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531181, -0.384808, 0.754831,
		-0.844725, 0.309382, -0.436719,
		-0.065478, -0.869601, -0.489394,
		41.282452, 32.939899, 34.740860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682247, 33.384571, 35.163929>,  <41.328285, 33.548618, 35.083439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682247, 33.384571, 35.163929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880100, 33.040287, 35.115738>,  <40.998810, 32.833717, 35.086823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880100, 33.040287, 35.115738>,  <40.682247, 33.384571, 35.163929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880100, 33.040287, 35.115738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499496, -0.394971, 0.771040,
		-0.711228, -0.321203, -0.625287,
		0.494630, -0.860713, -0.120475,
		41.028488, 32.782074, 35.079594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164696, 32.914444, 35.258560>,  <40.682247, 33.384571, 35.163929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164696, 32.914444, 35.258560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512230, 32.716545, 35.266079>,  <40.720749, 32.597805, 35.270592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512230, 32.716545, 35.266079>,  <40.164696, 32.914444, 35.258560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512230, 32.716545, 35.266079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375637, -0.633976, 0.675996,
		-0.322527, -0.594391, -0.736665,
		0.868834, -0.494746, 0.018801,
		40.772881, 32.568123, 35.271721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918571, 32.322865, 35.217113>,  <40.164696, 32.914444, 35.258560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918571, 32.322865, 35.217113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291061, 32.281124, 35.356785>,  <40.514557, 32.256081, 35.440586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291061, 32.281124, 35.356785>,  <39.918571, 32.322865, 35.217113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291061, 32.281124, 35.356785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291551, -0.788188, 0.541994,
		0.218662, -0.606524, -0.764406,
		0.931228, -0.104350, 0.349179,
		40.570431, 32.249821, 35.461540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127865, 31.573994, 35.204906>,  <39.918571, 32.322865, 35.217113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127865, 31.573994, 35.204906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360443, 31.754364, 35.475784>,  <40.499989, 31.862587, 35.638309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360443, 31.754364, 35.475784>,  <40.127865, 31.573994, 35.204906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360443, 31.754364, 35.475784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174136, -0.744088, 0.644989,
		0.794732, -0.492949, -0.354123,
		0.581445, 0.450927, 0.677190,
		40.534878, 31.889643, 35.678940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578140, 31.095989, 35.382816>,  <40.127865, 31.573994, 35.204906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578140, 31.095989, 35.382816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598953, 31.357460, 35.684807>,  <40.611443, 31.514343, 35.866001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598953, 31.357460, 35.684807>,  <40.578140, 31.095989, 35.382816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598953, 31.357460, 35.684807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017829, -0.755276, 0.655164,
		0.998486, -0.047552, -0.027647,
		0.052036, 0.653679, 0.754981,
		40.614563, 31.553564, 35.911301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162827, 30.837723, 35.833450>,  <40.578140, 31.095989, 35.382816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162827, 30.837723, 35.833450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947227, 31.082096, 36.065395>,  <40.817867, 31.228720, 36.204563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947227, 31.082096, 36.065395>,  <41.162827, 30.837723, 35.833450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947227, 31.082096, 36.065395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126029, -0.739169, 0.661624,
		0.832827, 0.283532, 0.475404,
		-0.538996, 0.610932, 0.579867,
		40.785530, 31.265375, 36.239357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466553, 30.683235, 36.549114>,  <41.162827, 30.837723, 35.833450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466553, 30.683235, 36.549114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103210, 30.843441, 36.597237>,  <40.885204, 30.939566, 36.626110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103210, 30.843441, 36.597237>,  <41.466553, 30.683235, 36.549114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103210, 30.843441, 36.597237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160421, -0.599394, 0.784214,
		0.386203, 0.693046, 0.608715,
		-0.908357, 0.400516, 0.120309,
		40.830704, 30.963596, 36.633327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367661, 30.850161, 37.230198>,  <41.466553, 30.683235, 36.549114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367661, 30.850161, 37.230198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001461, 30.787136, 37.082127>,  <40.781742, 30.749321, 36.993282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001461, 30.787136, 37.082127>,  <41.367661, 30.850161, 37.230198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001461, 30.787136, 37.082127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173725, -0.675088, 0.716991,
		-0.362874, 0.720715, 0.590671,
		-0.915501, -0.157563, -0.370179,
		40.726810, 30.739866, 36.971073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648857, 31.043314, 37.634109>,  <41.367661, 30.850161, 37.230198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648857, 31.043314, 37.634109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634880, 30.691319, 37.444626>,  <40.626492, 30.480122, 37.330936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634880, 30.691319, 37.444626>,  <40.648857, 31.043314, 37.634109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634880, 30.691319, 37.444626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143471, -0.473504, 0.869028,
		-0.989037, -0.037593, 0.142801,
		-0.034947, -0.879989, -0.473706,
		40.624397, 30.427322, 37.302513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094196, 30.699652, 37.880539>,  <40.648857, 31.043314, 37.634109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094196, 30.699652, 37.880539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333176, 30.399210, 37.768185>,  <40.476562, 30.218945, 37.700771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333176, 30.399210, 37.768185>,  <40.094196, 30.699652, 37.880539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333176, 30.399210, 37.768185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017971, -0.362723, 0.931724,
		-0.801707, -0.551608, -0.230205,
		0.597447, -0.751106, -0.280884,
		40.512409, 30.173878, 37.683918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753464, 30.029963, 38.004372>,  <40.094196, 30.699652, 37.880539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753464, 30.029963, 38.004372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146889, 29.957764, 38.002132>,  <40.382942, 29.914444, 38.000790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146889, 29.957764, 38.002132>,  <39.753464, 30.029963, 38.004372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146889, 29.957764, 38.002132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036051, -0.226625, 0.973315,
		-0.176944, -0.957112, -0.229406,
		0.983560, -0.180493, -0.005595,
		40.441956, 29.903614, 38.000454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860947, 29.405695, 38.458553>,  <39.753464, 30.029963, 38.004372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860947, 29.405695, 38.458553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231884, 29.545557, 38.405216>,  <40.454445, 29.629475, 38.373215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231884, 29.545557, 38.405216>,  <39.860947, 29.405695, 38.458553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231884, 29.545557, 38.405216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253083, -0.323513, 0.911750,
		0.275661, -0.879249, -0.388499,
		0.927340, 0.349657, -0.133344,
		40.510086, 29.650454, 38.365211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480034, 28.854261, 38.426979>,  <39.860947, 29.405695, 38.458553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480034, 28.854261, 38.426979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591145, 29.198828, 38.597065>,  <40.657810, 29.405567, 38.699116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591145, 29.198828, 38.597065>,  <40.480034, 28.854261, 38.426979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591145, 29.198828, 38.597065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106476, -0.467511, 0.877551,
		0.954726, -0.198491, -0.221585,
		0.277779, 0.861414, 0.425210,
		40.674477, 29.457253, 38.724628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580582, 28.635677, 39.138405>,  <40.480034, 28.854261, 38.426979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580582, 28.635677, 39.138405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671352, 29.022551, 39.184124>,  <40.725815, 29.254675, 39.211555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671352, 29.022551, 39.184124>,  <40.580582, 28.635677, 39.138405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671352, 29.022551, 39.184124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265590, -0.174367, 0.948187,
		0.936998, -0.184817, -0.296443,
		0.226931, 0.967181, 0.114295,
		40.739433, 29.312704, 39.218414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113178, 28.631023, 39.563210>,  <40.580582, 28.635677, 39.138405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113178, 28.631023, 39.563210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021160, 29.011126, 39.647202>,  <40.965950, 29.239187, 39.697598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021160, 29.011126, 39.647202>,  <41.113178, 28.631023, 39.563210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021160, 29.011126, 39.647202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095849, -0.192594, 0.976586,
		0.968448, 0.244787, -0.046776,
		-0.230047, 0.950256, 0.209980,
		40.952145, 29.296202, 39.710194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521767, 28.774696, 40.174427>,  <41.113178, 28.631023, 39.563210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521767, 28.774696, 40.174427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211395, 29.026314, 40.193344>,  <41.025173, 29.177284, 40.204693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211395, 29.026314, 40.193344>,  <41.521767, 28.774696, 40.174427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211395, 29.026314, 40.193344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052725, -0.139375, 0.988835,
		0.628611, 0.764774, 0.141312,
		-0.775930, 0.629044, 0.047290,
		40.978615, 29.215027, 40.207531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626293, 29.325312, 40.610992>,  <41.521767, 28.774696, 40.174427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626293, 29.325312, 40.610992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229946, 29.271402, 40.612576>,  <40.992138, 29.239058, 40.613525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229946, 29.271402, 40.612576>,  <41.626293, 29.325312, 40.610992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229946, 29.271402, 40.612576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002613, 0.010123, 0.999945,
		-0.134806, 0.990825, -0.009679,
		-0.990869, -0.134774, 0.003953,
		40.932686, 29.230970, 40.613762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407326, 29.601646, 41.269463>,  <41.626293, 29.325312, 40.610992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407326, 29.601646, 41.269463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074833, 29.406832, 41.162251>,  <40.875336, 29.289944, 41.097923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074833, 29.406832, 41.162251>,  <41.407326, 29.601646, 41.269463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074833, 29.406832, 41.162251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167323, -0.240601, 0.956093,
		-0.530140, 0.839588, 0.118504,
		-0.831237, -0.487035, -0.268034,
		40.825462, 29.260721, 41.081841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909088, 29.910412, 41.674355>,  <41.407326, 29.601646, 41.269463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909088, 29.910412, 41.674355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764534, 29.555012, 41.561241>,  <40.677803, 29.341772, 41.493374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764534, 29.555012, 41.561241>,  <40.909088, 29.910412, 41.674355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764534, 29.555012, 41.561241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211864, -0.217102, 0.952880,
		-0.908027, 0.404269, -0.109784,
		-0.361385, -0.888501, -0.282785,
		40.656120, 29.288462, 41.476406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288857, 29.778450, 42.121990>,  <40.909088, 29.910412, 41.674355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288857, 29.778450, 42.121990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417889, 29.412666, 42.024246>,  <40.495308, 29.193197, 41.965599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417889, 29.412666, 42.024246>,  <40.288857, 29.778450, 42.121990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417889, 29.412666, 42.024246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170290, -0.310012, 0.935357,
		-0.931098, -0.260116, -0.255727,
		0.322580, -0.914457, -0.244356,
		40.514664, 29.138329, 41.950939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786556, 29.318214, 42.390453>,  <40.288857, 29.778450, 42.121990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786556, 29.318214, 42.390453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130814, 29.119831, 42.344303>,  <40.337368, 29.000801, 42.316612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130814, 29.119831, 42.344303>,  <39.786556, 29.318214, 42.390453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130814, 29.119831, 42.344303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104300, -0.393483, 0.913396,
		-0.498408, -0.774077, -0.390378,
		0.860646, -0.495961, -0.115378,
		40.389008, 28.971043, 42.309689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728298, 28.696585, 42.755539>,  <39.786556, 29.318214, 42.390453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728298, 28.696585, 42.755539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121048, 28.728943, 42.686974>,  <40.356697, 28.748358, 42.645836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121048, 28.728943, 42.686974>,  <39.728298, 28.696585, 42.755539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121048, 28.728943, 42.686974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188834, -0.339228, 0.921556,
		0.016401, -0.937220, -0.348354,
		0.981872, 0.080895, -0.171415,
		40.415611, 28.753212, 42.635548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884712, 28.011307, 42.789440>,  <39.728298, 28.696585, 42.755539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884712, 28.011307, 42.789440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199432, 28.251625, 42.846001>,  <40.388264, 28.395817, 42.879936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199432, 28.251625, 42.846001>,  <39.884712, 28.011307, 42.789440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199432, 28.251625, 42.846001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337698, -0.610797, 0.716161,
		0.516636, -0.515722, -0.683461,
		0.786795, 0.600798, 0.141401,
		40.435471, 28.431864, 42.888420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482738, 27.581516, 42.928471>,  <39.884712, 28.011307, 42.789440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482738, 27.581516, 42.928471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601910, 27.933426, 43.076656>,  <40.673412, 28.144571, 43.165565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601910, 27.933426, 43.076656>,  <40.482738, 27.581516, 42.928471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601910, 27.933426, 43.076656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327495, -0.458730, 0.826023,
		0.896653, -0.124770, -0.424789,
		0.297926, 0.879772, 0.370460,
		40.691288, 28.197357, 43.187794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064449, 27.396885, 43.293137>,  <40.482738, 27.581516, 42.928471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064449, 27.396885, 43.293137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966911, 27.753525, 43.445763>,  <40.908390, 27.967508, 43.537338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966911, 27.753525, 43.445763>,  <41.064449, 27.396885, 43.293137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966911, 27.753525, 43.445763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390811, -0.269740, 0.880061,
		0.887585, 0.363717, -0.282672,
		-0.243845, 0.891600, 0.381562,
		40.893757, 28.021006, 43.560230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604496, 27.572588, 43.713081>,  <41.064449, 27.396885, 43.293137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604496, 27.572588, 43.713081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296116, 27.783329, 43.856224>,  <41.111088, 27.909775, 43.942108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296116, 27.783329, 43.856224>,  <41.604496, 27.572588, 43.713081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296116, 27.783329, 43.856224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286328, -0.215181, 0.933656,
		0.568904, 0.822266, 0.015041,
		-0.770950, 0.526854, 0.357855,
		41.064831, 27.941385, 43.963581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891438, 27.944950, 44.350235>,  <41.604496, 27.572588, 43.713081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891438, 27.944950, 44.350235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494907, 27.955912, 44.401653>,  <41.256989, 27.962488, 44.432503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494907, 27.955912, 44.401653>,  <41.891438, 27.944950, 44.350235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494907, 27.955912, 44.401653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125497, -0.093286, 0.987698,
		0.039060, 0.995262, 0.089037,
		-0.991325, 0.027406, 0.128546,
		41.197510, 27.964134, 44.440216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747013, 28.455063, 44.850239>,  <41.891438, 27.944950, 44.350235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747013, 28.455063, 44.850239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418850, 28.226416, 44.855747>,  <41.221954, 28.089228, 44.859055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418850, 28.226416, 44.855747>,  <41.747013, 28.455063, 44.850239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418850, 28.226416, 44.855747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104488, -0.126191, 0.986488,
		-0.562156, 0.810758, 0.163255,
		-0.820404, -0.571618, 0.013776,
		41.172729, 28.054930, 44.859879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090733, 28.782875, 45.360909>,  <41.747013, 28.455063, 44.850239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090733, 28.782875, 45.360909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116844, 28.384750, 45.332363>,  <41.132511, 28.145876, 45.315235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116844, 28.384750, 45.332363>,  <41.090733, 28.782875, 45.360909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116844, 28.384750, 45.332363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114957, -0.063540, 0.991336,
		-0.991223, -0.072918, 0.110270,
		0.065279, -0.995312, -0.071365,
		41.136429, 28.086157, 45.310955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915936, 28.633402, 46.144650>,  <41.090733, 28.782875, 45.360909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915936, 28.633402, 46.144650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823853, 28.287699, 46.323563>,  <40.768600, 28.080276, 46.430912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823853, 28.287699, 46.323563>,  <40.915936, 28.633402, 46.144650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823853, 28.287699, 46.323563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951036, 0.297217, 0.084808,
		-0.206236, -0.405859, -0.890362,
		-0.230211, -0.864257, 0.447284,
		40.754791, 28.028421, 46.457748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436573, 28.149868, 45.774616>,  <40.915936, 28.633402, 46.144650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436573, 28.149868, 45.774616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369740, 28.116816, 46.167606>,  <40.329639, 28.096985, 46.403400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369740, 28.116816, 46.167606>,  <40.436573, 28.149868, 45.774616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369740, 28.116816, 46.167606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936869, 0.323770, -0.132099,
		-0.307180, -0.942521, -0.131512,
		-0.167086, -0.082631, 0.982473,
		40.319614, 28.092026, 46.462349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447849, 27.450397, 46.059158>,  <40.436573, 28.149868, 45.774616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447849, 27.450397, 46.059158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550037, 27.305031, 46.417526>,  <40.611351, 27.217812, 46.632545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550037, 27.305031, 46.417526>,  <40.447849, 27.450397, 46.059158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550037, 27.305031, 46.417526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790932, -0.611490, -0.022511,
		0.556025, -0.702857, -0.443653,
		0.255467, -0.363415, 0.895916,
		40.626678, 27.196007, 46.686302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300591, 26.760410, 45.981815>,  <40.447849, 27.450397, 46.059158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300591, 26.760410, 45.981815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262676, 26.878801, 46.362007>,  <40.239929, 26.949835, 46.590122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262676, 26.878801, 46.362007>,  <40.300591, 26.760410, 45.981815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262676, 26.878801, 46.362007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863027, -0.500321, 0.069737,
		0.496186, -0.813681, 0.302857,
		-0.094782, 0.295976, 0.950481,
		40.234241, 26.967594, 46.647152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472637, 26.387869, 45.464481>,  <40.300591, 26.760410, 45.981815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472637, 26.387869, 45.464481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212093, 26.437450, 45.165051>,  <40.055767, 26.467199, 44.985394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212093, 26.437450, 45.165051>,  <40.472637, 26.387869, 45.464481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212093, 26.437450, 45.165051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549494, -0.603277, -0.578025,
		-0.523247, -0.787840, 0.324839,
		-0.651359, 0.123953, -0.748577,
		40.016685, 26.474636, 44.940479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508423, 27.122656, 45.298782>,  <40.472637, 26.387869, 45.464481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508423, 27.122656, 45.298782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584862, 27.514721, 45.319798>,  <40.630726, 27.749960, 45.332409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584862, 27.514721, 45.319798>,  <40.508423, 27.122656, 45.298782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584862, 27.514721, 45.319798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296595, -0.006633, -0.954980,
		-0.935689, 0.198075, -0.291979,
		0.191095, 0.980164, 0.052541,
		40.642189, 27.808771, 45.335560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032932, 27.470819, 44.895969>,  <40.508423, 27.122656, 45.298782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032932, 27.470819, 44.895969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388031, 27.653778, 44.875217>,  <40.601089, 27.763554, 44.862766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388031, 27.653778, 44.875217>,  <40.032932, 27.470819, 44.895969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388031, 27.653778, 44.875217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106894, 0.095201, -0.989702,
		-0.447749, 0.884151, 0.133407,
		0.887747, 0.457399, -0.051884,
		40.654354, 27.790998, 44.859653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959118, 28.139259, 44.627991>,  <40.032932, 27.470819, 44.895969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959118, 28.139259, 44.627991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345749, 28.062117, 44.560421>,  <40.577728, 28.015831, 44.519878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345749, 28.062117, 44.560421>,  <39.959118, 28.139259, 44.627991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345749, 28.062117, 44.560421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128435, 0.206011, -0.970084,
		0.221889, 0.959357, 0.174356,
		0.966577, -0.192857, -0.168926,
		40.635723, 28.004259, 44.509743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148941, 28.731258, 44.426472>,  <39.959118, 28.139259, 44.627991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148941, 28.731258, 44.426472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414234, 28.480068, 44.263615>,  <40.573410, 28.329353, 44.165901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414234, 28.480068, 44.263615>,  <40.148941, 28.731258, 44.426472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414234, 28.480068, 44.263615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151627, 0.419981, -0.894777,
		0.732892, 0.655180, 0.183327,
		0.663234, -0.627977, -0.407143,
		40.613205, 28.291676, 44.141472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417725, 29.232073, 43.923859>,  <40.148941, 28.731258, 44.426472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417725, 29.232073, 43.923859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568356, 28.871307, 43.839249>,  <40.658733, 28.654848, 43.788483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568356, 28.871307, 43.839249>,  <40.417725, 29.232073, 43.923859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568356, 28.871307, 43.839249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073184, 0.256580, -0.963748,
		0.923490, 0.347446, 0.162628,
		0.376577, -0.901914, -0.211522,
		40.681328, 28.600733, 43.775791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035721, 29.385908, 43.653694>,  <40.417725, 29.232073, 43.923859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035721, 29.385908, 43.653694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945587, 29.024836, 43.507053>,  <40.891506, 28.808191, 43.419071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945587, 29.024836, 43.507053>,  <41.035721, 29.385908, 43.653694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945587, 29.024836, 43.507053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119798, 0.347749, -0.929903,
		0.966889, -0.253453, 0.029781,
		-0.225330, -0.902681, -0.366598,
		40.877987, 28.754032, 43.397076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553932, 29.078407, 43.187317>,  <41.035721, 29.385908, 43.653694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553932, 29.078407, 43.187317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215374, 28.888405, 43.091003>,  <41.012238, 28.774405, 43.033215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215374, 28.888405, 43.091003>,  <41.553932, 29.078407, 43.187317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215374, 28.888405, 43.091003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195433, 0.143542, -0.970155,
		0.495392, -0.868197, -0.028663,
		-0.846400, -0.475005, -0.240784,
		40.961452, 28.745903, 43.018768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709732, 28.611441, 42.480049>,  <41.553932, 29.078407, 43.187317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709732, 28.611441, 42.480049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310040, 28.611267, 42.495697>,  <41.070225, 28.611162, 42.505085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310040, 28.611267, 42.495697>,  <41.709732, 28.611441, 42.480049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310040, 28.611267, 42.495697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039058, 0.069391, -0.996825,
		-0.002285, -0.997589, -0.069355,
		-0.999234, -0.000431, 0.039122,
		41.010269, 28.611135, 42.507435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553978, 28.355295, 41.874100>,  <41.709732, 28.611441, 42.480049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553978, 28.355295, 41.874100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196884, 28.481348, 42.002918>,  <40.982628, 28.556980, 42.080212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196884, 28.481348, 42.002918>,  <41.553978, 28.355295, 41.874100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196884, 28.481348, 42.002918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247254, 0.254900, -0.934822,
		-0.376684, -0.914176, -0.149640,
		-0.892734, 0.315133, 0.322050,
		40.929062, 28.575888, 42.099533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969334, 28.084988, 41.464878>,  <41.553978, 28.355295, 41.874100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969334, 28.084988, 41.464878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828327, 28.427513, 41.615852>,  <40.743725, 28.633028, 41.706436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828327, 28.427513, 41.615852>,  <40.969334, 28.084988, 41.464878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828327, 28.427513, 41.615852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423818, 0.213504, -0.880224,
		-0.834334, -0.470254, 0.287659,
		-0.352513, 0.856316, 0.377436,
		40.722572, 28.684408, 41.729084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281742, 28.080914, 41.255665>,  <40.969334, 28.084988, 41.464878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281742, 28.080914, 41.255665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391808, 28.461361, 41.311756>,  <40.457848, 28.689629, 41.345409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391808, 28.461361, 41.311756>,  <40.281742, 28.080914, 41.255665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391808, 28.461361, 41.311756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316232, 0.227280, -0.921054,
		-0.907901, 0.209094, 0.363312,
		0.275161, 0.951117, 0.140225,
		40.474358, 28.746696, 41.353825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781647, 28.533403, 40.874092>,  <40.281742, 28.080914, 41.255665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781647, 28.533403, 40.874092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117931, 28.745476, 40.918114>,  <40.319702, 28.872719, 40.944527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117931, 28.745476, 40.918114>,  <39.781647, 28.533403, 40.874092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117931, 28.745476, 40.918114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155423, 0.430968, -0.888881,
		-0.518700, 0.730187, 0.444722,
		0.840710, 0.530183, 0.110055,
		40.370144, 28.904531, 40.951130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129395, 28.698179, 40.540096>,  <39.781647, 28.533403, 40.874092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129395, 28.698179, 40.540096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959690, 28.794289, 40.889328>,  <38.857868, 28.851954, 41.098866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959690, 28.794289, 40.889328>,  <39.129395, 28.698179, 40.540096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959690, 28.794289, 40.889328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128417, -0.938447, 0.320666,
		0.896387, 0.248165, 0.367293,
		-0.424263, 0.240274, 0.873080,
		38.832413, 28.866371, 41.151253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662964, 29.222172, 40.462341>,  <39.129395, 28.698179, 40.540096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662964, 29.222172, 40.462341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059303, 29.203470, 40.512978>,  <40.297108, 29.192249, 40.543362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059303, 29.203470, 40.512978>,  <39.662964, 29.222172, 40.462341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059303, 29.203470, 40.512978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134240, 0.437585, -0.889100,
		-0.013826, 0.897961, 0.439858,
		0.990852, -0.046754, 0.126593,
		40.356560, 29.189444, 40.550957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877754, 29.887312, 40.212078>,  <39.662964, 29.222172, 40.462341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877754, 29.887312, 40.212078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190361, 29.638239, 40.196564>,  <40.377926, 29.488796, 40.187256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190361, 29.638239, 40.196564>,  <39.877754, 29.887312, 40.212078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190361, 29.638239, 40.196564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235173, 0.351604, -0.906128,
		0.577866, 0.699030, 0.421221,
		0.781514, -0.622681, -0.038787,
		40.424816, 29.451435, 40.184929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410244, 30.346510, 39.977924>,  <39.877754, 29.887312, 40.212078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410244, 30.346510, 39.977924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547256, 29.985739, 39.872700>,  <40.629463, 29.769276, 39.809566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547256, 29.985739, 39.872700>,  <40.410244, 30.346510, 39.977924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547256, 29.985739, 39.872700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247914, 0.356847, -0.900666,
		0.906207, 0.243288, 0.345831,
		0.342530, -0.901927, -0.263063,
		40.650017, 29.715160, 39.793781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925159, 30.571514, 39.492062>,  <40.410244, 30.346510, 39.977924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925159, 30.571514, 39.492062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861877, 30.189106, 39.393272>,  <40.823910, 29.959661, 39.334000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861877, 30.189106, 39.393272>,  <40.925159, 30.571514, 39.492062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861877, 30.189106, 39.393272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324634, 0.185859, -0.927399,
		0.932514, -0.226897, 0.280953,
		-0.158206, -0.956020, -0.246975,
		40.814415, 29.902300, 39.319180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266834, 30.529089, 38.856491>,  <40.925159, 30.571514, 39.492062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266834, 30.529089, 38.856491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118305, 30.158598, 38.830505>,  <41.029186, 29.936304, 38.814915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118305, 30.158598, 38.830505>,  <41.266834, 30.529089, 38.856491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118305, 30.158598, 38.830505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069294, 0.097414, -0.992829,
		0.925913, -0.364163, -0.100355,
		-0.371327, -0.926227, -0.064962,
		41.006908, 29.880730, 38.811016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774757, 30.086729, 38.421120>,  <41.266834, 30.529089, 38.856491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774757, 30.086729, 38.421120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390430, 29.979893, 38.391483>,  <41.159832, 29.915791, 38.373703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390430, 29.979893, 38.391483>,  <41.774757, 30.086729, 38.421120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390430, 29.979893, 38.391483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002958, 0.277159, -0.960820,
		0.277159, -0.922955, -0.267090,
		0.960820, 0.267090, 0.074086,
		41.102184, 29.899765, 38.369259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677864, 29.633579, 37.919678>,  <41.774757, 30.086729, 38.421120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677864, 29.633579, 37.919678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289593, 29.723324, 37.954189>,  <41.056629, 29.777170, 37.974895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289593, 29.723324, 37.954189>,  <41.677864, 29.633579, 37.919678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289593, 29.723324, 37.954189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035244, 0.222216, -0.974360,
		-0.237782, -0.948832, -0.207793,
		-0.970679, 0.224362, 0.086279,
		40.998390, 29.790632, 37.980072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441727, 29.323729, 37.361805>,  <41.677864, 29.633579, 37.919678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441727, 29.323729, 37.361805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174942, 29.596605, 37.481655>,  <41.014870, 29.760332, 37.553566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174942, 29.596605, 37.481655>,  <41.441727, 29.323729, 37.361805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174942, 29.596605, 37.481655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195449, 0.227865, -0.953875,
		-0.718999, -0.694761, -0.018644,
		-0.666963, 0.682191, 0.299625,
		40.974854, 29.801262, 37.571541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017487, 29.300970, 36.899696>,  <41.441727, 29.323729, 37.361805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017487, 29.300970, 36.899696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057907, 29.614702, 37.144520>,  <42.082161, 29.802942, 37.291412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057907, 29.614702, 37.144520>,  <42.017487, 29.300970, 36.899696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057907, 29.614702, 37.144520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980753, 0.024772, -0.193672,
		-0.167065, 0.619848, -0.766732,
		0.101054, 0.784330, 0.612057,
		42.088223, 29.850002, 37.328136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441471, 29.721304, 36.482170>,  <42.017487, 29.300970, 36.899696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441471, 29.721304, 36.482170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503536, 29.834133, 36.860874>,  <42.540775, 29.901831, 37.088097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503536, 29.834133, 36.860874>,  <42.441471, 29.721304, 36.482170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503536, 29.834133, 36.860874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960446, 0.181249, -0.211407,
		-0.231232, 0.942117, -0.242791,
		0.155165, 0.282072, 0.946763,
		42.550087, 29.918755, 37.144901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220074, 30.011171, 36.459438>,  <42.441471, 29.721304, 36.482170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220074, 30.011171, 36.459438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497932, 29.911297, 36.189587>,  <43.664646, 29.851372, 36.027676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497932, 29.911297, 36.189587>,  <43.220074, 30.011171, 36.459438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497932, 29.911297, 36.189587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161618, 0.968024, -0.191858,
		0.700963, 0.024240, 0.712785,
		0.694643, -0.249685, -0.674632,
		43.706326, 29.836391, 35.987198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753113, 30.428268, 36.782032>,  <43.220074, 30.011171, 36.459438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753113, 30.428268, 36.782032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758812, 30.338226, 36.392342>,  <43.762230, 30.284201, 36.158527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758812, 30.338226, 36.392342>,  <43.753113, 30.428268, 36.782032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758812, 30.338226, 36.392342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117380, 0.967970, -0.221940,
		0.992985, -0.111193, 0.040216,
		0.014249, -0.225104, -0.974231,
		43.763088, 30.270695, 36.100071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326756, 30.805096, 36.304459>,  <43.753113, 30.428268, 36.782032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326756, 30.805096, 36.304459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972462, 30.754648, 36.125767>,  <43.759884, 30.724379, 36.018551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972462, 30.754648, 36.125767>,  <44.326756, 30.805096, 36.304459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972462, 30.754648, 36.125767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055469, 0.984243, -0.167893,
		0.460861, -0.123930, -0.878777,
		-0.885737, -0.126120, -0.446725,
		43.706741, 30.716812, 35.991749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379581, 31.111944, 35.669289>,  <44.326756, 30.805096, 36.304459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379581, 31.111944, 35.669289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991066, 31.131496, 35.762421>,  <43.757957, 31.143229, 35.818298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991066, 31.131496, 35.762421>,  <44.379581, 31.111944, 35.669289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991066, 31.131496, 35.762421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020716, 0.992324, -0.121913,
		-0.236999, -0.113589, -0.964846,
		-0.971289, 0.048881, 0.232826,
		43.699680, 31.146160, 35.832268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837608, 31.451168, 35.236099>,  <44.379581, 31.111944, 35.669289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837608, 31.451168, 35.236099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677864, 31.484932, 35.601261>,  <43.582020, 31.505190, 35.820358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677864, 31.484932, 35.601261>,  <43.837608, 31.451168, 35.236099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677864, 31.484932, 35.601261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117548, 0.982819, -0.142298,
		-0.909229, -0.164138, -0.382573,
		-0.399357, 0.084411, 0.912901,
		43.558056, 31.510256, 35.875130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110279, 31.837933, 35.401409>,  <43.837608, 31.451168, 35.236099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110279, 31.837933, 35.401409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425304, 31.889389, 35.642471>,  <43.614319, 31.920263, 35.787109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425304, 31.889389, 35.642471>,  <43.110279, 31.837933, 35.401409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425304, 31.889389, 35.642471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028423, 0.969345, -0.244055,
		-0.615579, 0.209338, 0.759763,
		0.787562, 0.128640, 0.602658,
		43.661572, 31.927980, 35.823269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040707, 32.402294, 35.992249>,  <43.110279, 31.837933, 35.401409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040707, 32.402294, 35.992249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412655, 32.346149, 35.856228>,  <43.635822, 32.312462, 35.774616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412655, 32.346149, 35.856228>,  <43.040707, 32.402294, 35.992249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412655, 32.346149, 35.856228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017769, 0.940412, -0.339573,
		0.367455, 0.309716, 0.876956,
		0.929871, -0.140361, -0.340056,
		43.691616, 32.304043, 35.754211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562538, 32.855225, 36.397041>,  <43.040707, 32.402294, 35.992249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562538, 32.855225, 36.397041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763340, 32.766502, 36.062668>,  <43.883823, 32.713268, 35.862041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763340, 32.766502, 36.062668>,  <43.562538, 32.855225, 36.397041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763340, 32.766502, 36.062668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169286, 0.973058, -0.156527,
		0.848133, -0.062934, 0.526033,
		0.502009, -0.221806, -0.835936,
		43.913944, 32.699959, 35.811886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316509, 33.070995, 36.336838>,  <43.562538, 32.855225, 36.397041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316509, 33.070995, 36.336838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094566, 33.069946, 36.004063>,  <43.961399, 33.069317, 35.804398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094566, 33.069946, 36.004063>,  <44.316509, 33.070995, 36.336838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094566, 33.069946, 36.004063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147659, 0.983808, -0.101584,
		0.818736, -0.179208, -0.545486,
		-0.554859, -0.002625, -0.831941,
		43.928108, 33.069160, 35.754482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596703, 33.648746, 35.973320>,  <44.316509, 33.070995, 36.336838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596703, 33.648746, 35.973320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217476, 33.589436, 35.860764>,  <43.989941, 33.553848, 35.793232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217476, 33.589436, 35.860764>,  <44.596703, 33.648746, 35.973320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217476, 33.589436, 35.860764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080543, 0.967772, -0.238601,
		0.307697, -0.203546, -0.929458,
		-0.948069, -0.148278, -0.281386,
		43.933056, 33.544952, 35.776348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352264, 33.844067, 35.171265>,  <44.596703, 33.648746, 35.973320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352264, 33.844067, 35.171265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056282, 33.867714, 35.439289>,  <43.878693, 33.881901, 35.600101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056282, 33.867714, 35.439289>,  <44.352264, 33.844067, 35.171265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056282, 33.867714, 35.439289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064601, 0.997772, -0.016693,
		-0.669551, 0.030935, -0.742122,
		-0.739952, 0.059118, 0.670057,
		43.834297, 33.885448, 35.640305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810165, 34.532749, 35.230953>,  <44.352264, 33.844067, 35.171265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810165, 34.532749, 35.230953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439880, 34.656643, 35.144127>,  <44.217709, 34.730980, 35.092030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439880, 34.656643, 35.144127>,  <44.810165, 34.532749, 35.230953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439880, 34.656643, 35.144127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225410, 0.912653, 0.340963,
		0.303715, 0.266705, -0.914672,
		-0.925715, 0.309732, -0.217069,
		44.162167, 34.749561, 35.079006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754448, 35.052685, 34.766685>,  <44.810165, 34.532749, 35.230953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754448, 35.052685, 34.766685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470982, 35.056080, 35.048882>,  <44.300900, 35.058117, 35.218201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470982, 35.056080, 35.048882>,  <44.754448, 35.052685, 34.766685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470982, 35.056080, 35.048882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394469, 0.833809, 0.386208,
		-0.584965, 0.551988, -0.594243,
		-0.708668, 0.008492, 0.705491,
		44.258381, 35.058628, 35.260529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407459, 35.035133, 34.887394>,  <44.754448, 35.052685, 34.766685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407459, 35.035133, 34.887394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664742, 35.341125, 34.900665>,  <45.819111, 35.524719, 34.908630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664742, 35.341125, 34.900665>,  <45.407459, 35.035133, 34.887394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664742, 35.341125, 34.900665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758642, -0.630807, -0.162930,
		-0.103707, 0.129969, -0.986080,
		0.643201, 0.764978, 0.033181,
		45.857700, 35.570618, 34.910618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809952, 35.024586, 34.280277>,  <45.407459, 35.035133, 34.887394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809952, 35.024586, 34.280277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.999359, 35.221504, 34.572422>,  <46.113003, 35.339657, 34.747707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.999359, 35.221504, 34.572422>,  <45.809952, 35.024586, 34.280277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.999359, 35.221504, 34.572422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668609, -0.740699, 0.065787,
		0.573365, 0.457175, -0.679885,
		0.473514, 0.492297, 0.730362,
		46.141415, 35.369194, 34.791531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.444477, 34.607979, 34.251598>,  <45.809952, 35.024586, 34.280277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.444477, 34.607979, 34.251598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518433, 34.859707, 34.553532>,  <46.562805, 35.010742, 34.734692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518433, 34.859707, 34.553532>,  <46.444477, 34.607979, 34.251598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518433, 34.859707, 34.553532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889864, -0.433173, 0.143187,
		0.417084, 0.645227, -0.640096,
		0.184884, 0.629320, 0.754834,
		46.573898, 35.048504, 34.779984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.035004, 35.116360, 34.178501>,  <46.444477, 34.607979, 34.251598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.035004, 35.116360, 34.178501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984226, 34.980000, 34.551098>,  <46.953758, 34.898186, 34.774654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984226, 34.980000, 34.551098>,  <47.035004, 35.116360, 34.178501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.984226, 34.980000, 34.551098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917777, -0.396588, -0.020063,
		0.376257, 0.852354, 0.363212,
		-0.126945, -0.340897, 0.931490,
		46.946144, 34.877731, 34.830544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.654770, 35.300476, 34.739246>,  <47.035004, 35.116360, 34.178501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.654770, 35.300476, 34.739246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.458672, 34.955559, 34.790012>,  <47.341015, 34.748608, 34.820473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.458672, 34.955559, 34.790012>,  <47.654770, 35.300476, 34.739246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.458672, 34.955559, 34.790012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871083, -0.489684, 0.037740,
		0.029608, 0.129059, 0.991195,
		-0.490243, -0.862295, 0.126919,
		47.311600, 34.696869, 34.828087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.868462, 35.022415, 35.359268>,  <47.654770, 35.300476, 34.739246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.868462, 35.022415, 35.359268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769520, 34.765766, 35.068851>,  <47.710155, 34.611778, 34.894600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769520, 34.765766, 35.068851>,  <47.868462, 35.022415, 35.359268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.769520, 34.765766, 35.068851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912346, -0.406545, 0.048441,
		-0.326250, -0.650421, 0.685940,
		-0.247358, -0.641618, -0.726044,
		47.695312, 34.573280, 34.851040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.882870, 32.100513, 28.046030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727478, 32.469070, 28.050394>,  <37.634243, 32.690205, 28.053013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727478, 32.469070, 28.050394>,  <37.882870, 32.100513, 28.046030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727478, 32.469070, 28.050394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253269, -0.118154, 0.960153,
		0.885967, 0.370236, 0.279261,
		-0.388480, 0.921393, 0.010911,
		37.610935, 32.745487, 28.053667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154366, 32.419987, 28.639696>,  <37.882870, 32.100513, 28.046030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154366, 32.419987, 28.639696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817482, 32.608829, 28.535538>,  <37.615353, 32.722134, 28.473043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817482, 32.608829, 28.535538>,  <38.154366, 32.419987, 28.639696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817482, 32.608829, 28.535538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347419, -0.105871, 0.931714,
		0.412301, 0.875161, 0.253184,
		-0.842204, 0.472107, -0.260396,
		37.564819, 32.750462, 28.457418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010323, 32.855064, 29.156406>,  <38.154366, 32.419987, 28.639696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010323, 32.855064, 29.156406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660202, 32.815105, 28.967152>,  <37.450127, 32.791130, 28.853598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660202, 32.815105, 28.967152>,  <38.010323, 32.855064, 29.156406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660202, 32.815105, 28.967152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445712, -0.212834, 0.869507,
		-0.187563, 0.971968, 0.141769,
		-0.875306, -0.099900, -0.473138,
		37.397610, 32.785137, 28.825211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524567, 33.338249, 29.485729>,  <38.010323, 32.855064, 29.156406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524567, 33.338249, 29.485729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310284, 33.053379, 29.304255>,  <37.181713, 32.882458, 29.195370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310284, 33.053379, 29.304255>,  <37.524567, 33.338249, 29.485729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310284, 33.053379, 29.304255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571464, -0.089777, 0.815702,
		-0.621650, 0.696242, -0.358886,
		-0.535706, -0.712171, -0.453687,
		37.149570, 32.839729, 29.168148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792599, 33.359661, 29.822056>,  <37.524567, 33.338249, 29.485729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792599, 33.359661, 29.822056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814522, 33.011887, 29.625658>,  <36.827675, 32.803223, 29.507818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814522, 33.011887, 29.625658>,  <36.792599, 33.359661, 29.822056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814522, 33.011887, 29.625658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792233, -0.337170, 0.508608,
		-0.607751, 0.361106, -0.707277,
		0.054812, -0.869436, -0.490996,
		36.830967, 32.751057, 29.478359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166077, 33.193924, 29.701967>,  <36.792599, 33.359661, 29.822056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166077, 33.193924, 29.701967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.377499, 32.854839, 29.684038>,  <36.504353, 32.651386, 29.673281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.377499, 32.854839, 29.684038>,  <36.166077, 33.193924, 29.701967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377499, 32.854839, 29.684038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488421, -0.346869, 0.800704,
		-0.694315, -0.401324, -0.597381,
		0.528555, -0.847715, -0.044821,
		36.536064, 32.600525, 29.670591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702969, 32.674461, 30.032450>,  <36.166077, 33.193924, 29.701967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702969, 32.674461, 30.032450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044434, 32.466133, 30.031378>,  <36.249313, 32.341137, 30.030735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044434, 32.466133, 30.031378>,  <35.702969, 32.674461, 30.032450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044434, 32.466133, 30.031378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293364, -0.485083, 0.823791,
		-0.430343, -0.702456, -0.566887,
		0.853664, -0.520816, -0.002677,
		36.300533, 32.309887, 30.030575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508797, 32.015018, 30.297724>,  <35.702969, 32.674461, 30.032450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508797, 32.015018, 30.297724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903172, 32.002712, 30.363417>,  <36.139797, 31.995327, 30.402832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903172, 32.002712, 30.363417>,  <35.508797, 32.015018, 30.297724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903172, 32.002712, 30.363417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165251, -0.324989, 0.931168,
		0.024723, -0.945217, -0.325505,
		0.985942, -0.030769, 0.164232,
		36.198956, 31.993481, 30.412685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577946, 31.444553, 30.563536>,  <35.508797, 32.015018, 30.297724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577946, 31.444553, 30.563536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.892727, 31.659456, 30.684904>,  <36.081596, 31.788399, 30.757725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.892727, 31.659456, 30.684904>,  <35.577946, 31.444553, 30.563536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892727, 31.659456, 30.684904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274009, -0.136306, 0.952019,
		0.552838, -0.832330, 0.039948,
		0.786949, 0.537258, 0.303421,
		36.128811, 31.820633, 30.775930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684673, 31.152473, 31.167002>,  <35.577946, 31.444553, 30.563536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684673, 31.152473, 31.167002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929779, 31.467270, 31.195740>,  <36.076843, 31.656149, 31.212982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929779, 31.467270, 31.195740>,  <35.684673, 31.152473, 31.167002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929779, 31.467270, 31.195740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124580, 0.006421, 0.992189,
		0.780385, -0.616928, 0.101978,
		0.612764, 0.786993, 0.071846,
		36.113609, 31.703367, 31.217293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239155, 31.017426, 31.692799>,  <35.684673, 31.152473, 31.167002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239155, 31.017426, 31.692799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.178162, 31.412729, 31.688885>,  <36.141567, 31.649912, 31.686537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.178162, 31.412729, 31.688885>,  <36.239155, 31.017426, 31.692799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178162, 31.412729, 31.688885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033207, 0.004771, 0.999437,
		0.987748, 0.152721, 0.032089,
		-0.152482, 0.988258, -0.009784,
		36.132416, 31.709208, 31.685949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801720, 31.389360, 32.135750>,  <36.239155, 31.017426, 31.692799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801720, 31.389360, 32.135750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.487770, 31.637197, 32.132252>,  <36.299400, 31.785900, 32.130154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.487770, 31.637197, 32.132252>,  <36.801720, 31.389360, 32.135750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487770, 31.637197, 32.132252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016350, 0.034811, 0.999260,
		0.619438, 0.784152, -0.037453,
		-0.784875, 0.619592, -0.008743,
		36.252308, 31.823074, 32.129627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950527, 31.897358, 32.644650>,  <36.801720, 31.389360, 32.135750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950527, 31.897358, 32.644650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554665, 31.905609, 32.587868>,  <36.317146, 31.910559, 32.553799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554665, 31.905609, 32.587868>,  <36.950527, 31.897358, 32.644650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554665, 31.905609, 32.587868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141963, 0.000990, 0.989872,
		0.020558, 0.999787, 0.001948,
		-0.989659, 0.020626, -0.141953,
		36.257767, 31.911797, 32.545280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858192, 32.421631, 33.166077>,  <36.950527, 31.897358, 32.644650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858192, 32.421631, 33.166077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521381, 32.221722, 33.084869>,  <36.319294, 32.101776, 33.036144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521381, 32.221722, 33.084869>,  <36.858192, 32.421631, 33.166077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521381, 32.221722, 33.084869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240526, 0.010970, 0.970581,
		-0.482840, 0.866088, -0.129445,
		-0.842029, -0.499770, -0.203020,
		36.268772, 32.071789, 33.023964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377785, 32.755451, 33.477394>,  <36.858192, 32.421631, 33.166077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377785, 32.755451, 33.477394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221710, 32.388069, 33.451496>,  <36.128067, 32.167641, 33.435959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221710, 32.388069, 33.451496>,  <36.377785, 32.755451, 33.477394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221710, 32.388069, 33.451496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169864, 0.002698, 0.985464,
		-0.904932, 0.395511, -0.157065,
		-0.390186, -0.918457, -0.064741,
		36.104656, 32.112534, 33.432076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888195, 32.733482, 33.976448>,  <36.377785, 32.755451, 33.477394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888195, 32.733482, 33.976448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957333, 32.348549, 33.892506>,  <35.998814, 32.117588, 33.842140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957333, 32.348549, 33.892506>,  <35.888195, 32.733482, 33.976448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957333, 32.348549, 33.892506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157412, -0.237311, 0.958596,
		-0.972290, -0.132650, -0.192499,
		0.172840, -0.962335, -0.209854,
		36.009186, 32.059849, 33.829548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413872, 32.327461, 34.247837>,  <35.888195, 32.733482, 33.976448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413872, 32.327461, 34.247837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.723854, 32.077145, 34.212460>,  <35.909843, 31.926954, 34.191235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.723854, 32.077145, 34.212460>,  <35.413872, 32.327461, 34.247837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723854, 32.077145, 34.212460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135934, -0.301702, 0.943662,
		-0.617220, -0.719277, -0.318873,
		0.774959, -0.625793, -0.088442,
		35.956341, 31.889406, 34.185928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174545, 31.810469, 34.624012>,  <35.413872, 32.327461, 34.247837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174545, 31.810469, 34.624012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568077, 31.752785, 34.581539>,  <35.804195, 31.718174, 34.556057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568077, 31.752785, 34.581539>,  <35.174545, 31.810469, 34.624012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568077, 31.752785, 34.581539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054494, -0.323703, 0.944588,
		-0.170589, -0.935104, -0.310611,
		0.983834, -0.144210, -0.106177,
		35.863228, 31.709520, 34.549686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253258, 31.097992, 34.724300>,  <35.174545, 31.810469, 34.624012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253258, 31.097992, 34.724300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.604134, 31.276585, 34.794937>,  <35.814659, 31.383741, 34.837318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.604134, 31.276585, 34.794937>,  <35.253258, 31.097992, 34.724300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604134, 31.276585, 34.794937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010232, -0.385098, 0.922819,
		0.480030, -0.807683, -0.342373,
		0.877192, 0.446484, 0.176594,
		35.867290, 31.410530, 34.847916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711185, 30.587431, 35.041882>,  <35.253258, 31.097992, 34.724300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711185, 30.587431, 35.041882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.877052, 30.941097, 35.127956>,  <35.976570, 31.153297, 35.179600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.877052, 30.941097, 35.127956>,  <35.711185, 30.587431, 35.041882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877052, 30.941097, 35.127956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320197, -0.363123, 0.874995,
		0.851779, -0.293927, -0.433681,
		0.414664, 0.884166, 0.215186,
		36.001453, 31.206347, 35.192513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301727, 30.464653, 35.457123>,  <35.711185, 30.587431, 35.041882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301727, 30.464653, 35.457123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227875, 30.852123, 35.523544>,  <36.183563, 31.084606, 35.563396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227875, 30.852123, 35.523544>,  <36.301727, 30.464653, 35.457123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227875, 30.852123, 35.523544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384044, -0.084417, 0.919448,
		0.904666, 0.233533, -0.356429,
		-0.184633, 0.968678, 0.166056,
		36.172485, 31.142727, 35.573360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791088, 30.708525, 35.946873>,  <36.301727, 30.464653, 35.457123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791088, 30.708525, 35.946873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.485237, 30.963797, 35.982815>,  <36.301727, 31.116961, 36.004379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.485237, 30.963797, 35.982815>,  <36.791088, 30.708525, 35.946873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485237, 30.963797, 35.982815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202091, 0.105037, 0.973718,
		0.611969, 0.762689, -0.209284,
		-0.764627, 0.638179, 0.089853,
		36.255848, 31.155251, 36.009769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332478, 30.291523, 36.336670>,  <36.791088, 30.708525, 35.946873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332478, 30.291523, 36.336670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.706600, 30.158871, 36.287304>,  <37.931072, 30.079279, 36.257687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.706600, 30.158871, 36.287304>,  <37.332478, 30.291523, 36.336670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706600, 30.158871, 36.287304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016617, 0.307226, -0.951492,
		0.353458, 0.891984, 0.281838,
		0.935303, -0.331629, -0.123413,
		37.987190, 30.059381, 36.250278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796074, 30.827065, 36.008919>,  <37.332478, 30.291523, 36.336670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796074, 30.827065, 36.008919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011986, 30.498434, 35.935547>,  <38.141533, 30.301256, 35.891525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011986, 30.498434, 35.935547>,  <37.796074, 30.827065, 36.008919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011986, 30.498434, 35.935547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166549, 0.317820, -0.933409,
		0.825164, 0.473288, 0.308387,
		0.539783, -0.821577, -0.183428,
		38.173920, 30.251961, 35.880520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405800, 31.129023, 35.822548>,  <37.796074, 30.827065, 36.008919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405800, 31.129023, 35.822548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427639, 30.751329, 35.692661>,  <38.440742, 30.524714, 35.614727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427639, 30.751329, 35.692661>,  <38.405800, 31.129023, 35.822548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427639, 30.751329, 35.692661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297861, 0.325800, -0.897292,
		0.953047, -0.047731, 0.299038,
		0.054598, -0.944233, -0.324720,
		38.444019, 30.468060, 35.595245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088371, 31.066553, 35.637100>,  <38.405800, 31.129023, 35.822548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088371, 31.066553, 35.637100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853195, 30.826054, 35.420647>,  <38.712090, 30.681753, 35.290775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853195, 30.826054, 35.420647>,  <39.088371, 31.066553, 35.637100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853195, 30.826054, 35.420647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246458, 0.504018, -0.827783,
		0.770447, -0.620051, -0.148147,
		-0.587937, -0.601250, -0.541136,
		38.676815, 30.645678, 35.258305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517014, 30.856909, 34.976513>,  <39.088371, 31.066553, 35.637100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517014, 30.856909, 34.976513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138630, 30.775978, 34.875141>,  <38.911598, 30.727421, 34.814320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138630, 30.775978, 34.875141>,  <39.517014, 30.856909, 34.976513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138630, 30.775978, 34.875141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218329, 0.180485, -0.959040,
		0.239782, -0.962543, -0.126556,
		-0.945958, -0.202329, -0.253428,
		38.854843, 30.715281, 34.799114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551338, 30.464846, 34.376423>,  <39.517014, 30.856909, 34.976513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551338, 30.464846, 34.376423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171032, 30.586687, 34.353550>,  <38.942848, 30.659792, 34.339828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171032, 30.586687, 34.353550>,  <39.551338, 30.464846, 34.376423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171032, 30.586687, 34.353550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088792, 0.090953, -0.991889,
		-0.296934, -0.948126, -0.113521,
		-0.950761, 0.304605, -0.057179,
		38.885803, 30.678068, 34.336395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454884, 30.178913, 33.846638>,  <39.551338, 30.464846, 34.376423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454884, 30.178913, 33.846638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.181923, 30.465239, 33.905888>,  <39.018147, 30.637033, 33.941437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.181923, 30.465239, 33.905888>,  <39.454884, 30.178913, 33.846638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181923, 30.465239, 33.905888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059339, 0.147723, -0.987247,
		-0.728568, -0.682485, -0.058330,
		-0.682398, 0.715816, 0.148124,
		38.977203, 30.679983, 33.950325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973858, 30.053429, 33.295506>,  <39.454884, 30.178913, 33.846638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973858, 30.053429, 33.295506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868637, 30.421606, 33.411152>,  <38.805504, 30.642513, 33.480537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868637, 30.421606, 33.411152>,  <38.973858, 30.053429, 33.295506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868637, 30.421606, 33.411152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007131, 0.297803, -0.954601,
		-0.964756, -0.253170, -0.071774,
		-0.263051, 0.920444, 0.289113,
		38.789722, 30.697739, 33.497887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415234, 30.280762, 32.826374>,  <38.973858, 30.053429, 33.295506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415234, 30.280762, 32.826374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560692, 30.613520, 32.994049>,  <38.647964, 30.813175, 33.094654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560692, 30.613520, 32.994049>,  <38.415234, 30.280762, 32.826374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560692, 30.613520, 32.994049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039955, 0.435647, -0.899230,
		-0.930681, 0.343747, 0.125182,
		0.363643, 0.831895, 0.419183,
		38.669785, 30.863089, 33.119804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991356, 30.839376, 32.545551>,  <38.415234, 30.280762, 32.826374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991356, 30.839376, 32.545551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339081, 30.992813, 32.670227>,  <38.547714, 31.084875, 32.745033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339081, 30.992813, 32.670227>,  <37.991356, 30.839376, 32.545551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339081, 30.992813, 32.670227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193057, 0.317003, -0.928568,
		-0.455000, 0.867390, 0.201520,
		0.869312, 0.383594, 0.311692,
		38.599876, 31.107891, 32.763733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958923, 31.492046, 32.272835>,  <37.991356, 30.839376, 32.545551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958923, 31.492046, 32.272835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341457, 31.424648, 32.368366>,  <38.570976, 31.384209, 32.425686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341457, 31.424648, 32.368366>,  <37.958923, 31.492046, 32.272835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341457, 31.424648, 32.368366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278401, 0.276244, -0.919881,
		0.089019, 0.946202, 0.311090,
		0.956331, -0.168495, 0.238833,
		38.628357, 31.374100, 32.440018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414268, 32.070461, 32.042046>,  <37.958923, 31.492046, 32.272835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414268, 32.070461, 32.042046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670311, 31.766293, 32.085903>,  <38.823936, 31.583792, 32.112217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670311, 31.766293, 32.085903>,  <38.414268, 32.070461, 32.042046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670311, 31.766293, 32.085903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295889, 0.112300, -0.948598,
		0.709020, 0.639649, 0.296884,
		0.640110, -0.760420, 0.109642,
		38.862343, 31.538166, 32.118797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839676, 32.384758, 31.633347>,  <38.414268, 32.070461, 32.042046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839676, 32.384758, 31.633347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921021, 31.993118, 31.632706>,  <38.969826, 31.758133, 31.632320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921021, 31.993118, 31.632706>,  <38.839676, 32.384758, 31.633347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921021, 31.993118, 31.632706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616978, 0.129415, -0.776267,
		0.760253, 0.156872, 0.630402,
		0.203358, -0.979103, -0.001602,
		38.982029, 31.699387, 31.632225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583504, 32.327045, 31.618942>,  <38.839676, 32.384758, 31.633347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583504, 32.327045, 31.618942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.418564, 31.992489, 31.474489>,  <39.319599, 31.791754, 31.387817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.418564, 31.992489, 31.474489>,  <39.583504, 32.327045, 31.618942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418564, 31.992489, 31.474489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519322, 0.109891, -0.847484,
		0.748515, -0.537000, 0.389045,
		-0.412346, -0.836394, -0.361131,
		39.294861, 31.741571, 31.366150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080235, 31.953156, 31.300089>,  <39.583504, 32.327045, 31.618942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080235, 31.953156, 31.300089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753643, 31.796930, 31.129995>,  <39.557690, 31.703196, 31.027939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753643, 31.796930, 31.129995>,  <40.080235, 31.953156, 31.300089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753643, 31.796930, 31.129995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402402, 0.143224, -0.904190,
		0.414047, -0.909366, 0.040224,
		-0.816479, -0.390563, -0.425232,
		39.508698, 31.679762, 31.002426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320530, 31.611752, 30.727564>,  <40.080235, 31.953156, 31.300089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320530, 31.611752, 30.727564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934338, 31.652767, 30.631783>,  <39.702621, 31.677378, 30.574314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934338, 31.652767, 30.631783>,  <40.320530, 31.611752, 30.727564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934338, 31.652767, 30.631783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226972, -0.119886, -0.966494,
		-0.127811, -0.987478, 0.092474,
		-0.965478, 0.102539, -0.239453,
		39.644695, 31.683529, 30.559946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322773, 31.235373, 30.235937>,  <40.320530, 31.611752, 30.727564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322773, 31.235373, 30.235937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.986473, 31.443869, 30.177351>,  <39.784695, 31.568966, 30.142199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.986473, 31.443869, 30.177351>,  <40.322773, 31.235373, 30.235937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986473, 31.443869, 30.177351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151331, -0.033507, -0.987915,
		-0.519848, -0.852752, -0.050709,
		-0.840748, 0.521240, -0.146466,
		39.734249, 31.600241, 30.133411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882992, 30.970404, 29.631796>,  <40.322773, 31.235373, 30.235937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882992, 30.970404, 29.631796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.768860, 31.349932, 29.685947>,  <39.700378, 31.577648, 29.718437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.768860, 31.349932, 29.685947>,  <39.882992, 30.970404, 29.631796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768860, 31.349932, 29.685947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164656, 0.187678, -0.968331,
		-0.944179, -0.254006, -0.209780,
		-0.285333, 0.948819, 0.135377,
		39.683258, 31.634577, 29.726561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.383957, 31.095711, 29.006056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.526096, 31.442785, 29.145109>,  <39.611378, 31.651030, 29.228540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.526096, 31.442785, 29.145109>,  <39.383957, 31.095711, 29.006056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526096, 31.442785, 29.145109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260982, 0.265016, -0.928253,
		-0.897562, 0.420577, -0.132279,
		0.355346, 0.867687, 0.347632,
		39.632702, 31.703091, 29.249399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153187, 31.649258, 28.650520>,  <39.383957, 31.095711, 29.006056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153187, 31.649258, 28.650520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.448833, 31.842463, 28.838312>,  <39.626221, 31.958385, 28.950987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.448833, 31.842463, 28.838312>,  <39.153187, 31.649258, 28.650520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448833, 31.842463, 28.838312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169075, 0.541637, -0.823433,
		-0.652015, 0.687988, 0.318666,
		0.739114, 0.483013, 0.469478,
		39.670567, 31.987366, 28.979156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917217, 32.375786, 28.707127>,  <39.153187, 31.649258, 28.650520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917217, 32.375786, 28.707127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316925, 32.364212, 28.717106>,  <39.556751, 32.357269, 28.723093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316925, 32.364212, 28.717106>,  <38.917217, 32.375786, 28.707127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316925, 32.364212, 28.717106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035313, 0.450427, -0.892115,
		0.014577, 0.892344, 0.451120,
		0.999270, -0.028935, 0.024946,
		39.616707, 32.355530, 28.724590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240341, 33.076931, 28.607180>,  <38.917217, 32.375786, 28.707127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240341, 33.076931, 28.607180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529530, 32.819439, 28.506834>,  <39.703041, 32.664944, 28.446627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529530, 32.819439, 28.506834>,  <39.240341, 33.076931, 28.607180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529530, 32.819439, 28.506834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122016, 0.476364, -0.870741,
		0.680023, 0.598907, 0.422940,
		0.722966, -0.643730, -0.250862,
		39.746418, 32.626320, 28.431576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552025, 33.317348, 28.003294>,  <39.240341, 33.076931, 28.607180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552025, 33.317348, 28.003294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715073, 32.953514, 27.971025>,  <39.812901, 32.735214, 27.951664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715073, 32.953514, 27.971025>,  <39.552025, 33.317348, 28.003294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715073, 32.953514, 27.971025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241331, 0.192506, -0.951158,
		0.880686, 0.368240, 0.297979,
		0.407617, -0.909583, -0.080669,
		39.837357, 32.680641, 27.946825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070347, 33.445023, 27.525276>,  <39.552025, 33.317348, 28.003294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070347, 33.445023, 27.525276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.033619, 33.046715, 27.524435>,  <40.011581, 32.807728, 27.523930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.033619, 33.046715, 27.524435>,  <40.070347, 33.445023, 27.525276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033619, 33.046715, 27.524435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350354, -0.030328, -0.936126,
		0.932106, -0.086692, 0.351658,
		-0.091820, -0.995773, -0.002104,
		40.006073, 32.747982, 27.523804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699314, 33.270573, 27.132719>,  <40.070347, 33.445023, 27.525276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699314, 33.270573, 27.132719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.454086, 32.954605, 27.137972>,  <40.306950, 32.765022, 27.141123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.454086, 32.954605, 27.137972>,  <40.699314, 33.270573, 27.132719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454086, 32.954605, 27.137972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393539, -0.319757, -0.861906,
		0.685039, -0.523237, 0.506898,
		-0.613065, -0.789923, 0.013132,
		40.270168, 32.717628, 27.141911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058319, 32.623898, 27.088146>,  <40.699314, 33.270573, 27.132719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058319, 32.623898, 27.088146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.684513, 32.569839, 26.956436>,  <40.460232, 32.537407, 26.877409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.684513, 32.569839, 26.956436>,  <41.058319, 32.623898, 27.088146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684513, 32.569839, 26.956436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348922, -0.165160, -0.922483,
		0.070284, -0.976964, 0.201499,
		-0.934512, -0.135143, -0.329276,
		40.404160, 32.529297, 26.857653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125763, 32.083652, 26.569841>,  <41.058319, 32.623898, 27.088146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125763, 32.083652, 26.569841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.762318, 32.226215, 26.482754>,  <40.544250, 32.311752, 26.430502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.762318, 32.226215, 26.482754>,  <41.125763, 32.083652, 26.569841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762318, 32.226215, 26.482754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266904, 0.094560, -0.959073,
		-0.321233, -0.929533, -0.181045,
		-0.908609, 0.356408, -0.217720,
		40.489735, 32.333138, 26.417439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793175, 31.737051, 25.942909>,  <41.125763, 32.083652, 26.569841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793175, 31.737051, 25.942909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617275, 32.094158, 25.982067>,  <40.511734, 32.308422, 26.005562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617275, 32.094158, 25.982067>,  <40.793175, 31.737051, 25.942909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617275, 32.094158, 25.982067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089531, 0.152032, -0.984312,
		-0.893648, -0.424084, -0.146786,
		-0.439747, 0.892770, 0.097894,
		40.485352, 32.361988, 26.011435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437130, 31.641953, 25.417078>,  <40.793175, 31.737051, 25.942909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437130, 31.641953, 25.417078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441200, 32.034454, 25.494061>,  <40.443642, 32.269955, 25.540251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441200, 32.034454, 25.494061>,  <40.437130, 31.641953, 25.417078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441200, 32.034454, 25.494061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205926, 0.186285, -0.960673,
		-0.978515, 0.049408, -0.200170,
		0.010177, 0.981253, 0.192457,
		40.444252, 32.328831, 25.551798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101707, 31.930849, 24.836681>,  <40.437130, 31.641953, 25.417078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101707, 31.930849, 24.836681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314037, 32.215340, 25.021023>,  <40.441433, 32.386032, 25.131628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314037, 32.215340, 25.021023>,  <40.101707, 31.930849, 24.836681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314037, 32.215340, 25.021023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323492, 0.332575, -0.885859,
		-0.783314, 0.619316, -0.053538,
		0.530821, 0.711225, 0.460855,
		40.473282, 32.428707, 25.159279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008701, 32.595409, 24.460464>,  <40.101707, 31.930849, 24.836681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008701, 32.595409, 24.460464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.351719, 32.613537, 24.665432>,  <40.557529, 32.624413, 24.788412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.351719, 32.613537, 24.665432>,  <40.008701, 32.595409, 24.460464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351719, 32.613537, 24.665432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497091, 0.183346, -0.848107,
		-0.132384, 0.982003, 0.134700,
		0.857540, 0.045317, 0.512417,
		40.608982, 32.627132, 24.819157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263077, 33.130283, 24.215076>,  <40.008701, 32.595409, 24.460464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263077, 33.130283, 24.215076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.570068, 32.933048, 24.378950>,  <40.754261, 32.814705, 24.477274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.570068, 32.933048, 24.378950>,  <40.263077, 33.130283, 24.215076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570068, 32.933048, 24.378950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558819, 0.201387, -0.804465,
		0.314170, 0.846347, 0.430109,
		0.767475, -0.493092, 0.409685,
		40.800312, 32.785122, 24.501856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864365, 33.527916, 24.100391>,  <40.263077, 33.130283, 24.215076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864365, 33.527916, 24.100391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.000183, 33.158039, 24.169271>,  <41.081673, 32.936111, 24.210600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.000183, 33.158039, 24.169271>,  <40.864365, 33.527916, 24.100391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000183, 33.158039, 24.169271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605076, 0.074569, -0.792668,
		0.720134, 0.373339, 0.584829,
		0.339544, -0.924693, 0.172199,
		41.102047, 32.880630, 24.220932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527962, 33.615005, 24.111034>,  <40.864365, 33.527916, 24.100391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527962, 33.615005, 24.111034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.480671, 33.221935, 24.053953>,  <41.452297, 32.986092, 24.019705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.480671, 33.221935, 24.053953>,  <41.527962, 33.615005, 24.111034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480671, 33.221935, 24.053953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533400, 0.058372, -0.843847,
		0.837561, -0.175881, 0.517260,
		-0.118223, -0.982679, -0.142705,
		41.445206, 32.927132, 24.011141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167702, 33.399254, 23.916922>,  <41.527962, 33.615005, 24.111034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167702, 33.399254, 23.916922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940552, 33.102192, 23.774948>,  <41.804264, 32.923954, 23.689764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940552, 33.102192, 23.774948>,  <42.167702, 33.399254, 23.916922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940552, 33.102192, 23.774948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561737, -0.034479, -0.826597,
		0.601642, -0.668782, 0.436759,
		-0.567872, -0.742659, -0.354936,
		41.770191, 32.879395, 23.668467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743637, 33.035797, 23.529428>,  <42.167702, 33.399254, 23.916922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743637, 33.035797, 23.529428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.381699, 32.925117, 23.400009>,  <42.164536, 32.858711, 23.322357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.381699, 32.925117, 23.400009>,  <42.743637, 33.035797, 23.529428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381699, 32.925117, 23.400009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326076, 0.038191, -0.944572,
		0.273719, -0.960198, 0.055668,
		-0.904849, -0.276699, -0.323551,
		42.110245, 32.842110, 23.302944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832798, 32.398300, 23.130575>,  <42.743637, 33.035797, 23.529428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832798, 32.398300, 23.130575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.508480, 32.605076, 23.020748>,  <42.313889, 32.729141, 22.954851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.508480, 32.605076, 23.020748>,  <42.832798, 32.398300, 23.130575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508480, 32.605076, 23.020748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385038, 0.117727, -0.915361,
		-0.440863, -0.847888, -0.294494,
		-0.810793, 0.516940, -0.274568,
		42.265244, 32.760159, 22.938377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556995, 32.094341, 22.550829>,  <42.832798, 32.398300, 23.130575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556995, 32.094341, 22.550829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.410908, 32.465420, 22.519871>,  <42.323257, 32.688068, 22.501295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.410908, 32.465420, 22.519871>,  <42.556995, 32.094341, 22.550829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410908, 32.465420, 22.519871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377696, 0.071672, -0.923151,
		-0.850861, -0.366381, -0.376564,
		-0.365215, 0.927700, -0.077398,
		42.301342, 32.743729, 22.496651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359184, 32.187778, 21.851374>,  <42.556995, 32.094341, 22.550829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359184, 32.187778, 21.851374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.300732, 32.563160, 21.976561>,  <42.265659, 32.788391, 22.051672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.300732, 32.563160, 21.976561>,  <42.359184, 32.187778, 21.851374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300732, 32.563160, 21.976561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315254, 0.344045, -0.884448,
		-0.937689, -0.030578, -0.346126,
		-0.146127, 0.938455, 0.312968,
		42.256893, 32.844696, 22.070452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952938, 32.477699, 21.387001>,  <42.359184, 32.187778, 21.851374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952938, 32.477699, 21.387001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.165577, 32.772923, 21.553219>,  <42.293159, 32.950054, 21.652950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.165577, 32.772923, 21.553219>,  <41.952938, 32.477699, 21.387001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165577, 32.772923, 21.553219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196818, 0.369540, -0.908132,
		-0.823811, 0.564548, 0.051185,
		0.531599, 0.738055, 0.415544,
		42.325058, 32.994339, 21.677881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720695, 33.044502, 20.902428>,  <41.952938, 32.477699, 21.387001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720695, 33.044502, 20.902428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.055901, 33.072056, 21.118940>,  <42.257023, 33.088589, 21.248848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.055901, 33.072056, 21.118940>,  <41.720695, 33.044502, 20.902428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055901, 33.072056, 21.118940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502406, 0.289620, -0.814683,
		-0.212889, 0.954659, 0.208095,
		0.838013, 0.068889, 0.541284,
		42.307304, 33.092724, 21.281326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072021, 33.208717, 21.136299>,  <41.720695, 33.044502, 20.902428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072021, 33.208717, 21.136299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.141861, 33.585087, 21.020243>,  <41.183765, 33.810909, 20.950609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.141861, 33.585087, 21.020243>,  <41.072021, 33.208717, 21.136299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141861, 33.585087, 21.020243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489815, 0.338619, 0.803379,
		0.854164, 0.001849, 0.520000,
		0.174596, 0.940921, -0.290142,
		41.194241, 33.867363, 20.933201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333881, 33.557220, 21.737368>,  <41.072021, 33.208717, 21.136299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333881, 33.557220, 21.737368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163803, 33.823528, 21.492104>,  <41.061756, 33.983315, 21.344946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163803, 33.823528, 21.492104>,  <41.333881, 33.557220, 21.737368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163803, 33.823528, 21.492104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477846, 0.410219, 0.776778,
		0.768683, 0.623276, 0.143713,
		-0.425193, 0.665768, -0.613159,
		41.036243, 34.023258, 21.308155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520161, 34.344139, 21.957325>,  <41.333881, 33.557220, 21.737368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520161, 34.344139, 21.957325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175152, 34.299583, 21.759884>,  <40.968147, 34.272850, 21.641418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175152, 34.299583, 21.759884>,  <41.520161, 34.344139, 21.957325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175152, 34.299583, 21.759884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490477, 0.423913, 0.761400,
		0.124431, 0.898827, -0.420270,
		-0.862525, -0.111391, -0.493602,
		40.916393, 34.266167, 21.611803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096771, 34.870609, 22.254484>,  <41.520161, 34.344139, 21.957325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096771, 34.870609, 22.254484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809818, 34.669930, 22.061131>,  <40.637646, 34.549522, 21.945118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809818, 34.669930, 22.061131>,  <41.096771, 34.870609, 22.254484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809818, 34.669930, 22.061131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620067, 0.143481, 0.771317,
		-0.317609, 0.853062, -0.414015,
		-0.717385, -0.501695, -0.483385,
		40.594604, 34.519421, 21.916115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434013, 35.317650, 22.289341>,  <41.096771, 34.870609, 22.254484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434013, 35.317650, 22.289341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.368523, 34.926426, 22.237822>,  <40.329227, 34.691692, 22.206909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.368523, 34.926426, 22.237822>,  <40.434013, 35.317650, 22.289341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368523, 34.926426, 22.237822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677968, 0.016713, 0.734902,
		-0.716626, 0.207647, -0.665830,
		-0.163728, -0.978061, -0.128801,
		40.319405, 34.633007, 22.199181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786152, 35.235161, 22.520247>,  <40.434013, 35.317650, 22.289341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786152, 35.235161, 22.520247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.872166, 34.845654, 22.490463>,  <39.923775, 34.611950, 22.472593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.872166, 34.845654, 22.490463>,  <39.786152, 35.235161, 22.520247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872166, 34.845654, 22.490463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624896, -0.195781, 0.755761,
		-0.750511, -0.115983, -0.650601,
		0.215030, -0.973765, -0.074459,
		39.936676, 34.553524, 22.468126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145065, 34.848774, 22.368910>,  <39.786152, 35.235161, 22.520247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145065, 34.848774, 22.368910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.380478, 34.543846, 22.476610>,  <39.521725, 34.360889, 22.541231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.380478, 34.543846, 22.476610>,  <39.145065, 34.848774, 22.368910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380478, 34.543846, 22.476610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739800, -0.373481, 0.559650,
		-0.326070, -0.528568, -0.783769,
		0.588536, -0.762317, 0.269253,
		39.557037, 34.315151, 22.557384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693317, 34.277882, 22.387314>,  <39.145065, 34.848774, 22.368910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693317, 34.277882, 22.387314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995953, 34.182873, 22.631006>,  <39.177532, 34.125870, 22.777222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995953, 34.182873, 22.631006>,  <38.693317, 34.277882, 22.387314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995953, 34.182873, 22.631006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646707, -0.134057, 0.750865,
		-0.096668, -0.962090, -0.255027,
		0.756588, -0.237512, 0.609231,
		39.222927, 34.111618, 22.813776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471489, 33.746578, 22.807659>,  <38.693317, 34.277882, 22.387314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471489, 33.746578, 22.807659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.779591, 33.889637, 23.018862>,  <38.964451, 33.975471, 23.145584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.779591, 33.889637, 23.018862>,  <38.471489, 33.746578, 22.807659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779591, 33.889637, 23.018862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543683, -0.064497, 0.836809,
		0.333337, -0.931627, 0.144767,
		0.770257, 0.357646, 0.528009,
		39.010666, 33.996929, 23.177265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427666, 33.419662, 23.332939>,  <38.471489, 33.746578, 22.807659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427666, 33.419662, 23.332939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681484, 33.688229, 23.486067>,  <38.833775, 33.849369, 23.577944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681484, 33.688229, 23.486067>,  <38.427666, 33.419662, 23.332939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681484, 33.688229, 23.486067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384274, -0.155678, 0.909999,
		0.670588, -0.724541, 0.159225,
		0.634544, 0.671420, 0.382818,
		38.871849, 33.889656, 23.600912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749207, 33.127079, 23.900185>,  <38.427666, 33.419662, 23.332939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749207, 33.127079, 23.900185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.765190, 33.523834, 23.948462>,  <38.774780, 33.761887, 23.977427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.765190, 33.523834, 23.948462>,  <38.749207, 33.127079, 23.900185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765190, 33.523834, 23.948462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308191, -0.102664, 0.945769,
		0.950485, -0.074984, 0.301588,
		0.039956, 0.991886, 0.120690,
		38.777176, 33.821400, 23.984669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252785, 33.165745, 24.417480>,  <38.749207, 33.127079, 23.900185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252785, 33.165745, 24.417480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005066, 33.479561, 24.429949>,  <38.856434, 33.667850, 24.437429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005066, 33.479561, 24.429949>,  <39.252785, 33.165745, 24.417480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005066, 33.479561, 24.429949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065496, -0.091179, 0.993678,
		0.782420, 0.613341, 0.107851,
		-0.619298, 0.784537, 0.031169,
		38.819275, 33.714924, 24.439299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519077, 33.540234, 25.035995>,  <39.252785, 33.165745, 24.417480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519077, 33.540234, 25.035995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.152626, 33.678310, 24.954453>,  <38.932755, 33.761158, 24.905527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.152626, 33.678310, 24.954453>,  <39.519077, 33.540234, 25.035995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152626, 33.678310, 24.954453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240552, -0.066541, 0.968353,
		0.320703, 0.936170, 0.143997,
		-0.916125, 0.345192, -0.203857,
		38.877789, 33.781868, 24.893295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340263, 33.996262, 25.518961>,  <39.519077, 33.540234, 25.035995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340263, 33.996262, 25.518961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970615, 33.946304, 25.374517>,  <38.748825, 33.916328, 25.287851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970615, 33.946304, 25.374517>,  <39.340263, 33.996262, 25.518961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970615, 33.946304, 25.374517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358769, -0.041543, 0.932501,
		-0.131466, 0.991300, -0.006418,
		-0.924122, -0.124895, -0.361109,
		38.693378, 33.908836, 25.266184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906017, 34.434734, 25.931429>,  <39.340263, 33.996262, 25.518961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906017, 34.434734, 25.931429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670006, 34.146107, 25.786541>,  <38.528397, 33.972931, 25.699608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670006, 34.146107, 25.786541>,  <38.906017, 34.434734, 25.931429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670006, 34.146107, 25.786541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186257, -0.314884, 0.930675,
		-0.785603, 0.616593, 0.051394,
		-0.590031, -0.721569, -0.362219,
		38.492996, 33.929638, 25.677876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380322, 34.513260, 26.361872>,  <38.906017, 34.434734, 25.931429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380322, 34.513260, 26.361872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302124, 34.156765, 26.198174>,  <38.255203, 33.942867, 26.099955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302124, 34.156765, 26.198174>,  <38.380322, 34.513260, 26.361872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302124, 34.156765, 26.198174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430867, -0.296811, 0.852207,
		-0.880985, 0.342934, -0.325977,
		-0.195497, -0.891234, -0.409245,
		38.243473, 33.889393, 26.075399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619850, 34.427525, 26.356119>,  <38.380322, 34.513260, 26.361872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619850, 34.427525, 26.356119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807533, 34.074406, 26.347013>,  <37.920143, 33.862534, 26.341551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807533, 34.074406, 26.347013>,  <37.619850, 34.427525, 26.356119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807533, 34.074406, 26.347013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493277, -0.283388, 0.822417,
		-0.732475, -0.374657, -0.568430,
		0.469211, -0.882793, -0.022764,
		37.948296, 33.809566, 26.340185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071129, 33.835209, 26.532352>,  <37.619850, 34.427525, 26.356119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071129, 33.835209, 26.532352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446167, 33.706898, 26.586033>,  <37.671192, 33.629910, 26.618240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446167, 33.706898, 26.586033>,  <37.071129, 33.835209, 26.532352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446167, 33.706898, 26.586033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236765, -0.306300, 0.922021,
		-0.254656, -0.896260, -0.363136,
		0.937599, -0.320776, 0.134202,
		37.727448, 33.610664, 26.626293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022911, 33.088779, 26.606260>,  <37.071129, 33.835209, 26.532352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022911, 33.088779, 26.606260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364067, 33.208748, 26.777203>,  <37.568760, 33.280727, 26.879768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364067, 33.208748, 26.777203>,  <37.022911, 33.088779, 26.606260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364067, 33.208748, 26.777203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264223, -0.458031, 0.848760,
		0.450303, -0.836813, -0.311402,
		0.852885, 0.299919, 0.427358,
		37.619934, 33.298725, 26.905411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334389, 32.466736, 26.863171>,  <37.022911, 33.088779, 26.606260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334389, 32.466736, 26.863171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505692, 32.769032, 27.061342>,  <37.608475, 32.950409, 27.180244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505692, 32.769032, 27.061342>,  <37.334389, 32.466736, 26.863171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505692, 32.769032, 27.061342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311105, -0.391428, 0.866024,
		0.848416, -0.525011, 0.067483,
		0.428258, 0.755743, 0.495427,
		37.634171, 32.995754, 27.209970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570663, 32.066669, 27.417667>,  <37.334389, 32.466736, 26.863171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570663, 32.066669, 27.417667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601135, 32.449169, 27.530651>,  <37.619419, 32.678669, 27.598442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601135, 32.449169, 27.530651>,  <37.570663, 32.066669, 27.417667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601135, 32.449169, 27.530651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112006, -0.273285, 0.955390,
		0.990784, -0.104414, 0.086288,
		0.076175, 0.956249, 0.282461,
		37.623989, 32.736046, 27.615389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.722458, 30.553259, 32.085602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463211, 30.857697, 32.096046>,  <39.307663, 31.040359, 32.102314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463211, 30.857697, 32.096046>,  <39.722458, 30.553259, 32.085602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463211, 30.857697, 32.096046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132670, -0.146604, 0.980258,
		0.749896, 0.631857, 0.195991,
		-0.648116, 0.761094, 0.026110,
		39.268776, 31.086025, 32.103878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860264, 30.959419, 32.721344>,  <39.722458, 30.553259, 32.085602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860264, 30.959419, 32.721344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.494995, 31.091429, 32.625683>,  <39.275833, 31.170633, 32.568287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.494995, 31.091429, 32.625683>,  <39.860264, 30.959419, 32.721344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494995, 31.091429, 32.625683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227342, 0.074562, 0.970956,
		0.338269, 0.941024, 0.006939,
		-0.913176, 0.330022, -0.239156,
		39.221043, 31.190435, 32.553936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745770, 31.516140, 33.199078>,  <39.860264, 30.959419, 32.721344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745770, 31.516140, 33.199078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.397308, 31.378063, 33.059399>,  <39.188232, 31.295218, 32.975590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.397308, 31.378063, 33.059399>,  <39.745770, 31.516140, 33.199078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397308, 31.378063, 33.059399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349290, -0.064176, 0.934814,
		-0.345102, 0.936335, -0.064665,
		-0.871149, -0.345193, -0.349200,
		39.135963, 31.274506, 32.954639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170589, 31.954788, 33.570129>,  <39.745770, 31.516140, 33.199078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170589, 31.954788, 33.570129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.004047, 31.617535, 33.434025>,  <38.904121, 31.415182, 33.352364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.004047, 31.617535, 33.434025>,  <39.170589, 31.954788, 33.570129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004047, 31.617535, 33.434025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434993, -0.143910, 0.888859,
		-0.798393, 0.518090, -0.306840,
		-0.416351, -0.843132, -0.340263,
		38.879143, 31.364595, 33.331947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591473, 31.947657, 33.807423>,  <39.170589, 31.954788, 33.570129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591473, 31.947657, 33.807423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640926, 31.559254, 33.725586>,  <38.670601, 31.326212, 33.676483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640926, 31.559254, 33.725586>,  <38.591473, 31.947657, 33.807423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640926, 31.559254, 33.725586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415498, -0.237890, 0.877935,
		-0.901152, -0.023537, -0.432864,
		0.123639, -0.971007, -0.204596,
		38.678017, 31.267952, 33.664207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025112, 31.496414, 34.193718>,  <38.591473, 31.947657, 33.807423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025112, 31.496414, 34.193718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.311996, 31.235352, 34.096031>,  <38.484127, 31.078714, 34.037418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.311996, 31.235352, 34.096031>,  <38.025112, 31.496414, 34.193718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311996, 31.235352, 34.096031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193829, -0.523470, 0.829704,
		-0.669352, -0.547740, -0.501945,
		0.717215, -0.652656, -0.244218,
		38.527161, 31.039555, 34.022766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619659, 30.918009, 34.272713>,  <38.025112, 31.496414, 34.193718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619659, 30.918009, 34.272713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.008442, 30.827835, 34.299473>,  <38.241711, 30.773731, 34.315529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.008442, 30.827835, 34.299473>,  <37.619659, 30.918009, 34.272713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008442, 30.827835, 34.299473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160478, -0.427969, 0.889432,
		-0.171878, -0.875227, -0.452146,
		0.971959, -0.225433, 0.066896,
		38.300030, 30.760204, 34.319542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656235, 30.252642, 34.484955>,  <37.619659, 30.918009, 34.272713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656235, 30.252642, 34.484955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.020653, 30.384806, 34.583607>,  <38.239304, 30.464104, 34.642799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.020653, 30.384806, 34.583607>,  <37.656235, 30.252642, 34.484955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020653, 30.384806, 34.583607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029065, -0.545223, 0.837787,
		0.411284, -0.770429, -0.487119,
		0.911044, 0.330410, 0.246634,
		38.293964, 30.483929, 34.657597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113567, 29.647120, 34.637276>,  <37.656235, 30.252642, 34.484955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113567, 29.647120, 34.637276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.289604, 29.953625, 34.824532>,  <38.395226, 30.137527, 34.936886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.289604, 29.953625, 34.824532>,  <38.113567, 29.647120, 34.637276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289604, 29.953625, 34.824532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052929, -0.498302, 0.865386,
		0.896392, -0.405627, -0.178741,
		0.440091, 0.766265, 0.468144,
		38.421631, 30.183504, 34.964973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486614, 29.307232, 35.089409>,  <38.113567, 29.647120, 34.637276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486614, 29.307232, 35.089409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.488914, 29.674484, 35.247906>,  <38.490295, 29.894835, 35.343002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.488914, 29.674484, 35.247906>,  <38.486614, 29.307232, 35.089409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488914, 29.674484, 35.247906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029429, -0.396230, 0.917679,
		0.999550, 0.006383, -0.029298,
		0.005751, 0.918129, 0.396240,
		38.490639, 29.949923, 35.366779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939178, 29.221041, 35.652409>,  <38.486614, 29.307232, 35.089409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939178, 29.221041, 35.652409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688698, 29.528366, 35.705418>,  <38.538410, 29.712761, 35.737221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688698, 29.528366, 35.705418>,  <38.939178, 29.221041, 35.652409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688698, 29.528366, 35.705418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128375, -0.269260, 0.954473,
		0.769017, 0.580684, 0.267244,
		-0.626205, 0.768313, 0.132520,
		38.500835, 29.758860, 35.745174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181404, 29.502981, 36.192024>,  <38.939178, 29.221041, 35.652409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181404, 29.502981, 36.192024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.826668, 29.687119, 36.208019>,  <38.613827, 29.797602, 36.217617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.826668, 29.687119, 36.208019>,  <39.181404, 29.502981, 36.192024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826668, 29.687119, 36.208019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068734, 0.045839, 0.996581,
		0.456939, 0.886555, -0.072293,
		-0.886838, 0.460346, 0.039991,
		38.560616, 29.825222, 36.220016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279308, 30.074764, 36.626740>,  <39.181404, 29.502981, 36.192024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279308, 30.074764, 36.626740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.903202, 29.938908, 36.617470>,  <38.677536, 29.857393, 36.611908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.903202, 29.938908, 36.617470>,  <39.279308, 30.074764, 36.626740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903202, 29.938908, 36.617470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017641, -0.019372, 0.999657,
		-0.339975, 0.940355, 0.012223,
		-0.940269, -0.339643, -0.023175,
		38.621120, 29.837015, 36.610516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979527, 30.406563, 37.249233>,  <39.279308, 30.074764, 36.626740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979527, 30.406563, 37.249233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.779915, 30.084635, 37.120712>,  <38.660149, 29.891478, 37.043602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.779915, 30.084635, 37.120712>,  <38.979527, 30.406563, 37.249233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779915, 30.084635, 37.120712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085641, -0.323148, 0.942465,
		-0.862343, 0.497834, 0.092335,
		-0.499029, -0.804821, -0.321299,
		38.630207, 29.843189, 37.024323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911892, 31.065430, 36.901344>,  <38.979527, 30.406563, 37.249233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911892, 31.065430, 36.901344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.808331, 30.946829, 37.269051>,  <38.746193, 30.875668, 37.489674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.808331, 30.946829, 37.269051>,  <38.911892, 31.065430, 36.901344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808331, 30.946829, 37.269051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852091, -0.378085, -0.361929,
		0.454875, -0.877005, -0.154760,
		-0.258901, -0.296502, 0.919270,
		38.730659, 30.857878, 37.544830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489288, 30.756731, 36.628033>,  <38.911892, 31.065430, 36.901344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489288, 30.756731, 36.628033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.868134, 30.777769, 36.754654>,  <40.095440, 30.790392, 36.830627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.868134, 30.777769, 36.754654>,  <39.489288, 30.756731, 36.628033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868134, 30.777769, 36.754654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210967, 0.641262, -0.737751,
		-0.241797, 0.765517, 0.596253,
		0.947115, 0.052596, 0.316554,
		40.152267, 30.793549, 36.849621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618469, 31.380848, 36.518677>,  <39.489288, 30.756731, 36.628033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618469, 31.380848, 36.518677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.990654, 31.253321, 36.590904>,  <40.213963, 31.176805, 36.634239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.990654, 31.253321, 36.590904>,  <39.618469, 31.380848, 36.518677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990654, 31.253321, 36.590904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365962, 0.832770, -0.415412,
		-0.017932, 0.452604, 0.891531,
		0.930457, -0.318817, 0.180569,
		40.269791, 31.157675, 36.645077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966152, 31.944979, 36.909191>,  <39.618469, 31.380848, 36.518677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966152, 31.944979, 36.909191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243179, 31.734421, 36.711903>,  <40.409393, 31.608086, 36.593529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243179, 31.734421, 36.711903>,  <39.966152, 31.944979, 36.909191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243179, 31.734421, 36.711903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247195, 0.815523, -0.523276,
		0.677680, 0.240481, 0.694924,
		0.692564, -0.526395, -0.493218,
		40.450947, 31.576502, 36.563938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609787, 32.419197, 36.879799>,  <39.966152, 31.944979, 36.909191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609787, 32.419197, 36.879799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633938, 32.138168, 36.596180>,  <40.648430, 31.969551, 36.426010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633938, 32.138168, 36.596180>,  <40.609787, 32.419197, 36.879799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633938, 32.138168, 36.596180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317369, 0.686996, -0.653692,
		0.946378, -0.185560, 0.264455,
		0.060381, -0.702570, -0.709049,
		40.652050, 31.927397, 36.383465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312256, 32.386742, 36.610149>,  <40.609787, 32.419197, 36.879799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312256, 32.386742, 36.610149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.090572, 32.215405, 36.324665>,  <40.957561, 32.112602, 36.153374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.090572, 32.215405, 36.324665>,  <41.312256, 32.386742, 36.610149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090572, 32.215405, 36.324665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389823, 0.624028, -0.677220,
		0.735454, -0.653540, -0.178864,
		-0.554207, -0.428339, -0.713709,
		40.924309, 32.086903, 36.110554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776333, 32.263885, 36.031849>,  <41.312256, 32.386742, 36.610149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776333, 32.263885, 36.031849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.419395, 32.216251, 35.857704>,  <41.205235, 32.187672, 35.753216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.419395, 32.216251, 35.857704>,  <41.776333, 32.263885, 36.031849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419395, 32.216251, 35.857704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360477, 0.392440, -0.846196,
		0.271626, -0.912036, -0.307263,
		-0.892343, -0.119087, -0.435364,
		41.151691, 32.180523, 35.727093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850731, 31.846970, 35.431000>,  <41.776333, 32.263885, 36.031849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850731, 31.846970, 35.431000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.529869, 32.084232, 35.403530>,  <41.337353, 32.226589, 35.387047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.529869, 32.084232, 35.403530>,  <41.850731, 31.846970, 35.431000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529869, 32.084232, 35.403530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233653, 0.205962, -0.950256,
		-0.549506, -0.778296, -0.303806,
		-0.802153, 0.593156, -0.068674,
		41.289223, 32.262180, 35.382927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517982, 31.645466, 34.812664>,  <41.850731, 31.846970, 35.431000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517982, 31.645466, 34.812664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.367897, 32.012321, 34.866436>,  <41.277847, 32.232433, 34.898701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.367897, 32.012321, 34.866436>,  <41.517982, 31.645466, 34.812664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367897, 32.012321, 34.866436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152723, 0.204210, -0.966940,
		-0.914272, -0.342274, -0.216690,
		-0.375209, 0.917140, 0.134430,
		41.255333, 32.287464, 34.906765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137688, 31.774513, 34.208038>,  <41.517982, 31.645466, 34.812664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137688, 31.774513, 34.208038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.176083, 32.140697, 34.364353>,  <41.199120, 32.360409, 34.458141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.176083, 32.140697, 34.364353>,  <41.137688, 31.774513, 34.208038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176083, 32.140697, 34.364353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140565, 0.376203, -0.915813,
		-0.985408, 0.142837, -0.092572,
		0.095987, 0.915461, 0.390791,
		41.204880, 32.415337, 34.481590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778206, 32.175598, 33.775612>,  <41.137688, 31.774513, 34.208038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778206, 32.175598, 33.775612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.996136, 32.449322, 33.969471>,  <41.126892, 32.613556, 34.085789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.996136, 32.449322, 33.969471>,  <40.778206, 32.175598, 33.775612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996136, 32.449322, 33.969471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217715, 0.442709, -0.869833,
		-0.809795, 0.579421, 0.092213,
		0.544823, 0.684310, 0.484652,
		41.159584, 32.654613, 34.114868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585312, 32.846432, 33.436134>,  <40.778206, 32.175598, 33.775612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585312, 32.846432, 33.436134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.944111, 32.889111, 33.607719>,  <41.159389, 32.914719, 33.710670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.944111, 32.889111, 33.607719>,  <40.585312, 32.846432, 33.436134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944111, 32.889111, 33.607719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374093, 0.333693, -0.865276,
		-0.235465, 0.936624, 0.259407,
		0.897001, 0.106700, 0.428958,
		41.213211, 32.921120, 33.736408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775871, 33.434624, 33.153389>,  <40.585312, 32.846432, 33.436134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775871, 33.434624, 33.153389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110279, 33.255756, 33.280586>,  <41.310925, 33.148434, 33.356903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110279, 33.255756, 33.280586>,  <40.775871, 33.434624, 33.153389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110279, 33.255756, 33.280586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491701, 0.353318, -0.795862,
		0.243535, 0.821708, 0.515254,
		0.836015, -0.447171, 0.317989,
		41.361084, 33.121605, 33.375984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418201, 33.902096, 33.064133>,  <40.775871, 33.434624, 33.153389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418201, 33.902096, 33.064133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602398, 33.547592, 33.084114>,  <41.712917, 33.334888, 33.096104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602398, 33.547592, 33.084114>,  <41.418201, 33.902096, 33.064133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602398, 33.547592, 33.084114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493820, 0.209005, -0.844073,
		0.737625, 0.413356, 0.533897,
		0.460490, -0.886258, 0.049956,
		41.740543, 33.281715, 33.099102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704918, 34.478645, 33.601593>,  <41.418201, 33.902096, 33.064133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704918, 34.478645, 33.601593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564430, 34.852837, 33.585953>,  <41.480137, 35.077351, 33.576569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564430, 34.852837, 33.585953>,  <41.704918, 34.478645, 33.601593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564430, 34.852837, 33.585953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674328, -0.223760, 0.703714,
		0.649558, 0.273525, 0.709406,
		-0.351220, 0.935476, -0.039101,
		41.459064, 35.133480, 33.574223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634117, 34.619785, 34.399151>,  <41.704918, 34.478645, 33.601593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634117, 34.619785, 34.399151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412121, 34.888893, 34.203449>,  <41.278923, 35.050358, 34.086029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412121, 34.888893, 34.203449>,  <41.634117, 34.619785, 34.399151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412121, 34.888893, 34.203449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653452, 0.011371, 0.756883,
		0.514768, 0.739769, 0.433309,
		-0.554991, 0.672765, -0.489256,
		41.245625, 35.090721, 34.056671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466797, 35.143517, 34.863598>,  <41.634117, 34.619785, 34.399151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466797, 35.143517, 34.863598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186779, 35.207451, 34.585205>,  <41.018768, 35.245811, 34.418171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186779, 35.207451, 34.585205>,  <41.466797, 35.143517, 34.863598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186779, 35.207451, 34.585205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710204, -0.054219, 0.701905,
		0.074452, 0.985654, 0.151469,
		-0.700048, 0.159832, -0.695978,
		40.976765, 35.255402, 34.376411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951885, 35.604252, 35.195633>,  <41.466797, 35.143517, 34.863598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951885, 35.604252, 35.195633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.746059, 35.456226, 34.886238>,  <40.622566, 35.367413, 34.700600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.746059, 35.456226, 34.886238>,  <40.951885, 35.604252, 35.195633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746059, 35.456226, 34.886238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792571, -0.138949, 0.593737,
		-0.327194, 0.918558, -0.221802,
		-0.514563, -0.370061, -0.773486,
		40.591690, 35.345207, 34.654194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173630, 35.880028, 35.247059>,  <40.951885, 35.604252, 35.195633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173630, 35.880028, 35.247059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.177937, 35.523106, 35.066536>,  <40.180519, 35.308952, 34.958221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.177937, 35.523106, 35.066536>,  <40.173630, 35.880028, 35.247059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177937, 35.523106, 35.066536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811638, -0.271420, 0.517277,
		-0.584062, 0.360728, -0.727150,
		0.010766, -0.892304, -0.451307,
		40.181168, 35.255413, 34.931145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451099, 35.668449, 35.192577>,  <40.173630, 35.880028, 35.247059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451099, 35.668449, 35.192577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602859, 35.316601, 35.077808>,  <39.693916, 35.105492, 35.008949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602859, 35.316601, 35.077808>,  <39.451099, 35.668449, 35.192577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602859, 35.316601, 35.077808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712770, -0.475594, 0.515528,
		-0.589927, 0.008916, -0.807407,
		0.379402, -0.879620, -0.286921,
		39.716679, 35.052715, 34.991734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992962, 35.266060, 34.842918>,  <39.451099, 35.668449, 35.192577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992962, 35.266060, 34.842918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251656, 35.008324, 35.006168>,  <39.406872, 34.853683, 35.104118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251656, 35.008324, 35.006168>,  <38.992962, 35.266060, 34.842918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251656, 35.008324, 35.006168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743697, -0.413984, 0.524911,
		-0.169262, -0.642999, -0.746928,
		0.646734, -0.644336, 0.408125,
		39.445675, 34.815022, 35.128605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668026, 34.666077, 34.806793>,  <38.992962, 35.266060, 34.842918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668026, 34.666077, 34.806793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.950962, 34.642323, 35.088543>,  <39.120724, 34.628071, 35.257591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.950962, 34.642323, 35.088543>,  <38.668026, 34.666077, 34.806793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950962, 34.642323, 35.088543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653228, -0.435692, 0.619246,
		0.270117, -0.898135, -0.346974,
		0.707341, -0.059384, 0.704374,
		39.163166, 34.624508, 35.299854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325626, 34.121151, 35.213020>,  <38.668026, 34.666077, 34.806793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325626, 34.121151, 35.213020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640903, 34.236980, 35.430241>,  <38.830070, 34.306477, 35.560574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.640903, 34.236980, 35.430241>,  <38.325626, 34.121151, 35.213020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640903, 34.236980, 35.430241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396834, -0.435320, 0.808096,
		0.470402, -0.852435, -0.228204,
		0.788191, 0.289571, 0.543051,
		38.877361, 34.323853, 35.593155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718494, 33.562706, 35.491795>,  <38.325626, 34.121151, 35.213020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718494, 33.562706, 35.491795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766182, 33.884148, 35.725033>,  <38.794796, 34.077011, 35.864975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766182, 33.884148, 35.725033>,  <38.718494, 33.562706, 35.491795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766182, 33.884148, 35.725033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455744, -0.477469, 0.751213,
		0.882090, -0.355305, 0.309314,
		0.119222, 0.803606, 0.583099,
		38.801949, 34.125229, 35.899963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850578, 33.238747, 36.081184>,  <38.718494, 33.562706, 35.491795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850578, 33.238747, 36.081184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.732067, 33.616676, 36.137074>,  <38.660961, 33.843433, 36.170605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.732067, 33.616676, 36.137074>,  <38.850578, 33.238747, 36.081184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732067, 33.616676, 36.137074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577470, -0.293730, 0.761742,
		0.760753, 0.145008, 0.632636,
		-0.296283, 0.944826, 0.139718,
		38.643181, 33.900124, 36.178989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015057, 33.291229, 36.771702>,  <38.850578, 33.238747, 36.081184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015057, 33.291229, 36.771702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744572, 33.558186, 36.646908>,  <38.582283, 33.718357, 36.572033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744572, 33.558186, 36.646908>,  <39.015057, 33.291229, 36.771702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744572, 33.558186, 36.646908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671798, -0.384792, 0.632947,
		0.302371, 0.637596, 0.708550,
		-0.676209, 0.667387, -0.311986,
		38.541710, 33.758400, 36.553310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.282688, 35.379948, 31.073193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975323, 35.630753, 31.021975>,  <43.790905, 35.781235, 30.991243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975323, 35.630753, 31.021975>,  <44.282688, 35.379948, 31.073193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975323, 35.630753, 31.021975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320214, -0.203481, 0.925234,
		0.554081, 0.751963, 0.357136,
		-0.768412, 0.627015, -0.128044,
		43.744801, 35.818855, 30.983561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260139, 35.866615, 31.706202>,  <44.282688, 35.379948, 31.073193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260139, 35.866615, 31.706202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902763, 35.866112, 31.526533>,  <43.688335, 35.865810, 31.418732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902763, 35.866112, 31.526533>,  <44.260139, 35.866615, 31.706202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902763, 35.866112, 31.526533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448778, 0.044511, 0.892534,
		0.018873, 0.999008, -0.040331,
		-0.893444, -0.001254, -0.449173,
		43.634731, 35.865734, 31.391781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847519, 36.400242, 32.066139>,  <44.260139, 35.866615, 31.706202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847519, 36.400242, 32.066139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557480, 36.205093, 31.871729>,  <43.383457, 36.088005, 31.755083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557480, 36.205093, 31.871729>,  <43.847519, 36.400242, 32.066139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557480, 36.205093, 31.871729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588743, 0.073043, 0.805013,
		-0.357240, 0.869855, -0.340193,
		-0.725094, -0.487869, -0.486028,
		43.339951, 36.058731, 31.725920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223980, 36.791466, 32.221279>,  <43.847519, 36.400242, 32.066139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223980, 36.791466, 32.221279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087006, 36.441822, 32.083485>,  <43.004822, 36.232037, 32.000809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087006, 36.441822, 32.083485>,  <43.223980, 36.791466, 32.221279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087006, 36.441822, 32.083485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694737, -0.011258, 0.719176,
		-0.632518, 0.485595, -0.603422,
		-0.342435, -0.874111, -0.344482,
		42.984276, 36.179588, 31.980141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519073, 36.859470, 32.275925>,  <43.223980, 36.791466, 32.221279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519073, 36.859470, 32.275925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582623, 36.468071, 32.223297>,  <42.620750, 36.233231, 32.191723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582623, 36.468071, 32.223297>,  <42.519073, 36.859470, 32.275925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582623, 36.468071, 32.223297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720719, -0.206016, 0.661907,
		-0.674777, -0.010337, -0.737950,
		0.158871, -0.978494, -0.131564,
		42.630283, 36.174522, 32.183826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893150, 36.450047, 32.034809>,  <42.519073, 36.859470, 32.275925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893150, 36.450047, 32.034809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140919, 36.206379, 32.232891>,  <42.289581, 36.060177, 32.351742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140919, 36.206379, 32.232891>,  <41.893150, 36.450047, 32.034809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140919, 36.206379, 32.232891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735173, -0.228828, 0.638090,
		-0.275390, -0.759307, -0.589588,
		0.619420, -0.609172, 0.495204,
		42.326744, 36.023628, 32.381454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431931, 35.914742, 32.176506>,  <41.893150, 36.450047, 32.034809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431931, 35.914742, 32.176506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739254, 35.814396, 32.412056>,  <41.923649, 35.754189, 32.553387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739254, 35.814396, 32.412056>,  <41.431931, 35.914742, 32.176506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739254, 35.814396, 32.412056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630670, -0.453848, 0.629506,
		0.109340, -0.855039, -0.506905,
		0.768310, -0.250860, 0.588871,
		41.969746, 35.739140, 32.588718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238827, 35.248192, 32.446167>,  <41.431931, 35.914742, 32.176506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238827, 35.248192, 32.446167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516342, 35.391136, 32.696274>,  <41.682850, 35.476902, 32.846336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516342, 35.391136, 32.696274>,  <41.238827, 35.248192, 32.446167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516342, 35.391136, 32.696274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491965, -0.398893, 0.773857,
		0.525960, -0.844499, -0.100936,
		0.693784, 0.357360, 0.625265,
		41.724476, 35.498344, 32.883854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549889, 34.613476, 32.896420>,  <41.238827, 35.248192, 32.446167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549889, 34.613476, 32.896420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595695, 34.968426, 33.075062>,  <41.623180, 35.181396, 33.182247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595695, 34.968426, 33.075062>,  <41.549889, 34.613476, 32.896420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595695, 34.968426, 33.075062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493927, -0.339194, 0.800615,
		0.861929, -0.312274, 0.399454,
		0.114519, 0.887374, 0.446601,
		41.630051, 35.234638, 33.209042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089840, 34.019424, 32.776138>,  <41.549889, 34.613476, 32.896420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089840, 34.019424, 32.776138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069084, 33.620316, 32.759335>,  <42.056633, 33.380852, 32.749252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069084, 33.620316, 32.759335>,  <42.089840, 34.019424, 32.776138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069084, 33.620316, 32.759335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460547, 0.013417, -0.887534,
		0.886118, -0.065397, 0.458824,
		-0.051886, -0.997769, -0.042007,
		42.053516, 33.320984, 32.746731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734840, 33.785076, 32.684216>,  <42.089840, 34.019424, 32.776138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734840, 33.785076, 32.684216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498238, 33.488895, 32.556561>,  <42.356277, 33.311188, 32.479965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498238, 33.488895, 32.556561>,  <42.734840, 33.785076, 32.684216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498238, 33.488895, 32.556561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283860, 0.179233, -0.941965,
		0.754683, -0.647767, 0.104168,
		-0.591504, -0.740454, -0.319140,
		42.320786, 33.266758, 32.460819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059292, 33.508442, 32.135700>,  <42.734840, 33.785076, 32.684216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059292, 33.508442, 32.135700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707355, 33.331760, 32.065525>,  <42.496193, 33.225754, 32.023418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707355, 33.331760, 32.065525>,  <43.059292, 33.508442, 32.135700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707355, 33.331760, 32.065525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075808, 0.233979, -0.969282,
		0.469181, -0.866114, -0.172380,
		-0.879842, -0.441701, -0.175437,
		42.443401, 33.199249, 32.012894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141655, 32.944881, 31.673363>,  <43.059292, 33.508442, 32.135700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141655, 32.944881, 31.673363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755772, 33.045746, 31.643026>,  <42.524242, 33.106266, 31.624825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755772, 33.045746, 31.643026>,  <43.141655, 32.944881, 31.673363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755772, 33.045746, 31.643026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109043, 0.120396, -0.986719,
		-0.239683, -0.960166, -0.143643,
		-0.964708, 0.252163, -0.075843,
		42.466358, 33.121395, 31.620274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880737, 32.481373, 31.200626>,  <43.141655, 32.944881, 31.673363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880737, 32.481373, 31.200626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653076, 32.810204, 31.206898>,  <42.516479, 33.007504, 31.210661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653076, 32.810204, 31.206898>,  <42.880737, 32.481373, 31.200626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653076, 32.810204, 31.206898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068542, 0.066439, -0.995433,
		-0.819369, -0.565480, -0.094161,
		-0.569154, 0.822082, 0.015679,
		42.482330, 33.056828, 31.211601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476498, 32.397335, 30.603470>,  <42.880737, 32.481373, 31.200626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476498, 32.397335, 30.603470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456905, 32.781773, 30.712206>,  <42.445152, 33.012436, 30.777447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456905, 32.781773, 30.712206>,  <42.476498, 32.397335, 30.603470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456905, 32.781773, 30.712206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009840, 0.272616, -0.962073,
		-0.998751, -0.044445, -0.022810,
		-0.048978, 0.961096, 0.271838,
		42.442211, 33.070103, 30.793756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239189, 32.718971, 30.072409>,  <42.476498, 32.397335, 30.603470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239189, 32.718971, 30.072409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357777, 33.038029, 30.282503>,  <42.428928, 33.229462, 30.408560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357777, 33.038029, 30.282503>,  <42.239189, 32.718971, 30.072409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357777, 33.038029, 30.282503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138885, 0.508105, -0.850024,
		-0.944890, 0.324953, 0.039857,
		0.296469, 0.797643, 0.525234,
		42.446716, 33.277321, 30.440073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757538, 33.218220, 29.822559>,  <42.239189, 32.718971, 30.072409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757538, 33.218220, 29.822559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084129, 33.382309, 29.985081>,  <42.280083, 33.480762, 30.082594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084129, 33.382309, 29.985081>,  <41.757538, 33.218220, 29.822559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084129, 33.382309, 29.985081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156297, 0.520393, -0.839501,
		-0.555820, 0.748937, 0.360772,
		0.816477, 0.410224, 0.406302,
		42.329071, 33.505375, 30.106972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725502, 33.849751, 29.666204>,  <41.757538, 33.218220, 29.822559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725502, 33.849751, 29.666204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111557, 33.787632, 29.750477>,  <42.343189, 33.750359, 29.801041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111557, 33.787632, 29.750477>,  <41.725502, 33.849751, 29.666204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111557, 33.787632, 29.750477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261409, 0.532059, -0.805344,
		0.012975, 0.832343, 0.554108,
		0.965141, -0.155299, 0.210679,
		42.401100, 33.741043, 29.813681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021549, 34.459148, 29.396271>,  <41.725502, 33.849751, 29.666204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021549, 34.459148, 29.396271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333672, 34.211105, 29.428732>,  <42.520947, 34.062279, 29.448208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333672, 34.211105, 29.428732>,  <42.021549, 34.459148, 29.396271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333672, 34.211105, 29.428732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312321, 0.273966, -0.909614,
		0.541827, 0.735124, 0.407451,
		0.780307, -0.620109, 0.081153,
		42.567764, 34.025074, 29.453077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616295, 34.866463, 29.416391>,  <42.021549, 34.459148, 29.396271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616295, 34.866463, 29.416391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734142, 34.502892, 29.298378>,  <42.804852, 34.284748, 29.227570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734142, 34.502892, 29.298378>,  <42.616295, 34.866463, 29.416391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734142, 34.502892, 29.298378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270484, 0.375429, -0.886505,
		0.916536, 0.181379, 0.356460,
		0.294619, -0.908931, -0.295034,
		42.822529, 34.230213, 29.209867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175961, 34.986031, 28.958204>,  <42.616295, 34.866463, 29.416391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175961, 34.986031, 28.958204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117176, 34.597542, 28.883223>,  <43.081905, 34.364449, 28.838234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117176, 34.597542, 28.883223>,  <43.175961, 34.986031, 28.958204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117176, 34.597542, 28.883223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433910, 0.107005, -0.894580,
		0.888890, -0.212807, 0.405695,
		-0.146962, -0.971217, -0.187455,
		43.073086, 34.306175, 28.826986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793056, 34.665970, 28.736370>,  <43.175961, 34.986031, 28.958204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793056, 34.665970, 28.736370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504932, 34.425869, 28.597315>,  <43.332058, 34.281807, 28.513882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504932, 34.425869, 28.597315>,  <43.793056, 34.665970, 28.736370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504932, 34.425869, 28.597315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465052, -0.046044, -0.884085,
		0.514669, -0.798483, 0.312315,
		-0.720307, -0.600254, -0.347639,
		43.288841, 34.245792, 28.493023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113991, 34.027405, 28.553301>,  <43.793056, 34.665970, 28.736370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113991, 34.027405, 28.553301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782696, 34.060665, 28.331633>,  <43.583920, 34.080620, 28.198631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782696, 34.060665, 28.331633>,  <44.113991, 34.027405, 28.553301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782696, 34.060665, 28.331633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540145, -0.144850, -0.829013,
		-0.149240, -0.985950, 0.075033,
		-0.828234, 0.083193, -0.554173,
		43.534225, 34.085609, 28.165380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.693386, 36.000786, 26.617977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.073483, 36.055676, 26.729837>,  <37.301540, 36.088612, 26.796953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.073483, 36.055676, 26.729837>,  <36.693386, 36.000786, 26.617977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073483, 36.055676, 26.729837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181222, -0.486657, 0.854590,
		0.253370, -0.862748, -0.437574,
		0.950243, 0.137229, 0.279653,
		37.358555, 36.096844, 26.813734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910950, 35.459221, 26.998005>,  <36.693386, 36.000786, 26.617977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910950, 35.459221, 26.998005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.188469, 35.719135, 27.122217>,  <37.354980, 35.875084, 27.196745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.188469, 35.719135, 27.122217>,  <36.910950, 35.459221, 26.998005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188469, 35.719135, 27.122217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110221, -0.330307, 0.937416,
		0.711687, -0.684603, -0.157547,
		0.693796, 0.649781, 0.310533,
		37.396606, 35.914070, 27.215378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235882, 35.000374, 27.361998>,  <36.910950, 35.459221, 26.998005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235882, 35.000374, 27.361998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.318680, 35.371105, 27.487307>,  <37.368359, 35.593544, 27.562492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.318680, 35.371105, 27.487307>,  <37.235882, 35.000374, 27.361998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318680, 35.371105, 27.487307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096432, -0.299319, 0.949268,
		0.973577, -0.226707, 0.027417,
		0.207000, 0.926829, 0.313272,
		37.380779, 35.649155, 27.581287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645088, 34.847836, 27.871803>,  <37.235882, 35.000374, 27.361998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645088, 34.847836, 27.871803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.568203, 35.230518, 27.959229>,  <37.522072, 35.460129, 28.011683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.568203, 35.230518, 27.959229>,  <37.645088, 34.847836, 27.871803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568203, 35.230518, 27.959229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026612, -0.227714, 0.973364,
		0.980993, 0.181274, 0.069229,
		-0.192210, 0.956706, 0.218562,
		37.510540, 35.517529, 28.024797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105988, 35.100037, 28.377840>,  <37.645088, 34.847836, 27.871803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105988, 35.100037, 28.377840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767143, 35.309086, 28.416365>,  <37.563839, 35.434517, 28.439480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767143, 35.309086, 28.416365>,  <38.105988, 35.100037, 28.377840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767143, 35.309086, 28.416365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003170, -0.176259, 0.984339,
		0.531413, 0.834146, 0.147653,
		-0.847107, 0.522622, 0.096311,
		37.513012, 35.465874, 28.445257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207355, 35.352505, 28.966013>,  <38.105988, 35.100037, 28.377840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207355, 35.352505, 28.966013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826309, 35.458836, 28.906872>,  <37.597683, 35.522636, 28.871387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826309, 35.458836, 28.906872>,  <38.207355, 35.352505, 28.966013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826309, 35.458836, 28.906872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182311, -0.109867, 0.977083,
		0.243494, 0.957739, 0.153124,
		-0.952614, 0.265831, -0.147854,
		37.540524, 35.538586, 28.862514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989189, 35.910789, 29.451296>,  <38.207355, 35.352505, 28.966013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989189, 35.910789, 29.451296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674572, 35.688873, 29.342813>,  <37.485802, 35.555725, 29.277725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674572, 35.688873, 29.342813>,  <37.989189, 35.910789, 29.451296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674572, 35.688873, 29.342813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129217, -0.281592, 0.950794,
		-0.603861, 0.782887, 0.149796,
		-0.786546, -0.554792, -0.271205,
		37.438610, 35.522434, 29.261452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676044, 35.884499, 30.071548>,  <37.989189, 35.910789, 29.451296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676044, 35.884499, 30.071548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454556, 35.626110, 29.861361>,  <37.321663, 35.471077, 29.735249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454556, 35.626110, 29.861361>,  <37.676044, 35.884499, 30.071548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454556, 35.626110, 29.861361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339119, -0.401405, 0.850807,
		-0.760523, 0.649304, 0.003204,
		-0.553718, -0.645971, -0.525469,
		37.288441, 35.432320, 29.703720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058937, 35.924618, 30.418392>,  <37.676044, 35.884499, 30.071548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058937, 35.924618, 30.418392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.031822, 35.591251, 30.199003>,  <37.015553, 35.391232, 30.067369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.031822, 35.591251, 30.199003>,  <37.058937, 35.924618, 30.418392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031822, 35.591251, 30.199003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442753, -0.467512, 0.765115,
		-0.894077, 0.294706, -0.337304,
		-0.067790, -0.833415, -0.548474,
		37.011486, 35.341228, 30.034462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282806, 35.632961, 30.466452>,  <37.058937, 35.924618, 30.418392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282806, 35.632961, 30.466452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.536724, 35.341091, 30.364775>,  <36.689075, 35.165970, 30.303768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.536724, 35.341091, 30.364775>,  <36.282806, 35.632961, 30.466452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536724, 35.341091, 30.364775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445754, -0.614533, 0.650886,
		-0.631146, -0.299869, -0.715355,
		0.634790, -0.729677, -0.254192,
		36.727161, 35.122189, 30.288517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849781, 34.995056, 30.522837>,  <36.282806, 35.632961, 30.466452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849781, 34.995056, 30.522837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.237389, 34.896412, 30.528164>,  <36.469955, 34.837223, 30.531361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.237389, 34.896412, 30.528164>,  <35.849781, 34.995056, 30.522837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237389, 34.896412, 30.528164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195528, -0.733118, 0.651388,
		-0.150878, -0.633813, -0.758628,
		0.969022, -0.246613, 0.013317,
		36.528095, 34.822430, 30.532160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861031, 34.266872, 30.510595>,  <35.849781, 34.995056, 30.522837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861031, 34.266872, 30.510595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.223648, 34.348801, 30.658236>,  <36.441219, 34.397957, 30.746819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.223648, 34.348801, 30.658236>,  <35.861031, 34.266872, 30.510595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223648, 34.348801, 30.658236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115067, -0.721379, 0.682914,
		0.406133, -0.661561, -0.630391,
		0.906540, 0.204817, 0.369099,
		36.495609, 34.410244, 30.768965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298988, 33.655479, 30.556356>,  <35.861031, 34.266872, 30.510595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298988, 33.655479, 30.556356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385578, 33.945988, 30.817329>,  <36.437534, 34.120293, 30.973913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385578, 33.945988, 30.817329>,  <36.298988, 33.655479, 30.556356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385578, 33.945988, 30.817329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224376, -0.613381, 0.757244,
		0.950154, -0.310317, 0.030175,
		0.216477, 0.726269, 0.652434,
		36.450520, 34.163868, 31.013060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293362, 33.300785, 31.201757>,  <36.298988, 33.655479, 30.556356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293362, 33.300785, 31.201757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308933, 33.676594, 31.337868>,  <36.318275, 33.902081, 31.419533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308933, 33.676594, 31.337868>,  <36.293362, 33.300785, 31.201757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308933, 33.676594, 31.337868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293018, -0.314828, 0.902786,
		0.955314, -0.134850, 0.263041,
		0.038928, 0.939520, 0.340273,
		36.320610, 33.958450, 31.439949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779678, 32.693665, 31.391962>,  <36.293362, 33.300785, 31.201757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779678, 32.693665, 31.391962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684326, 32.309814, 31.332224>,  <36.627117, 32.079506, 31.296381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684326, 32.309814, 31.332224>,  <36.779678, 32.693665, 31.391962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684326, 32.309814, 31.332224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258939, 0.085411, -0.962110,
		0.936017, -0.268016, 0.228123,
		-0.238376, -0.959621, -0.149346,
		36.612812, 32.021927, 31.287420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329185, 32.375614, 31.035486>,  <36.779678, 32.693665, 31.391962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329185, 32.375614, 31.035486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001350, 32.158321, 30.962633>,  <36.804649, 32.027946, 30.918922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001350, 32.158321, 30.962633>,  <37.329185, 32.375614, 31.035486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001350, 32.158321, 30.962633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164711, 0.081072, -0.983005,
		0.548770, -0.835656, 0.023031,
		-0.819587, -0.543237, -0.182131,
		36.755474, 31.995350, 30.907993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533691, 31.821932, 30.632433>,  <37.329185, 32.375614, 31.035486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533691, 31.821932, 30.632433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144730, 31.863876, 30.549063>,  <36.911354, 31.889044, 30.499041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144730, 31.863876, 30.549063>,  <37.533691, 31.821932, 30.632433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144730, 31.863876, 30.549063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228509, 0.247564, -0.941539,
		-0.047134, -0.963180, -0.264693,
		-0.972401, 0.104864, -0.208426,
		36.853008, 31.895336, 30.486534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461422, 31.681906, 30.067490>,  <37.533691, 31.821932, 30.632433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461422, 31.681906, 30.067490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117588, 31.886297, 30.065573>,  <36.911289, 32.008930, 30.064423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117588, 31.886297, 30.065573>,  <37.461422, 31.681906, 30.067490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117588, 31.886297, 30.065573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195605, 0.320360, -0.926880,
		-0.472080, -0.797666, -0.375326,
		-0.859581, 0.510978, -0.004792,
		36.859715, 32.039589, 30.064135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159046, 31.518650, 29.501188>,  <37.461422, 31.681906, 30.067490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159046, 31.518650, 29.501188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941715, 31.847313, 29.570095>,  <36.811317, 32.044510, 29.611439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941715, 31.847313, 29.570095>,  <37.159046, 31.518650, 29.501188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941715, 31.847313, 29.570095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143596, 0.293126, -0.945229,
		-0.827151, -0.488829, -0.277249,
		-0.543324, 0.821659, 0.172266,
		36.778717, 32.093811, 29.621775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729618, 31.604502, 28.908188>,  <37.159046, 31.518650, 29.501188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729618, 31.604502, 28.908188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.762745, 31.966866, 29.074306>,  <36.782619, 32.184284, 29.173979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.762745, 31.966866, 29.074306>,  <36.729618, 31.604502, 28.908188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762745, 31.966866, 29.074306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276836, 0.379414, -0.882840,
		-0.957342, 0.188084, -0.219366,
		0.082818, 0.905908, 0.415298,
		36.787590, 32.238640, 29.198896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418625, 32.109745, 28.398233>,  <36.729618, 31.604502, 28.908188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418625, 32.109745, 28.398233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.639568, 32.350365, 28.629070>,  <36.772137, 32.494736, 28.767572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.639568, 32.350365, 28.629070>,  <36.418625, 32.109745, 28.398233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639568, 32.350365, 28.629070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371950, 0.441700, -0.816428,
		-0.746022, 0.665614, 0.020233,
		0.552363, 0.601548, 0.577093,
		36.805279, 32.530830, 28.802198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172729, 32.736824, 28.275465>,  <36.418625, 32.109745, 28.398233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172729, 32.736824, 28.275465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542995, 32.769909, 28.423143>,  <36.765156, 32.789761, 28.511751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542995, 32.769909, 28.423143>,  <36.172729, 32.736824, 28.275465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542995, 32.769909, 28.423143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307894, 0.402426, -0.862122,
		-0.219884, 0.911708, 0.347044,
		0.925663, 0.082714, 0.369197,
		36.820694, 32.794724, 28.533903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511898, 33.308422, 27.927069>,  <36.172729, 32.736824, 28.275465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511898, 33.308422, 27.927069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.825462, 33.136757, 28.106537>,  <37.013599, 33.033760, 28.214218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.825462, 33.136757, 28.106537>,  <36.511898, 33.308422, 27.927069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825462, 33.136757, 28.106537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614867, 0.436346, -0.656917,
		0.086148, 0.790837, 0.605934,
		0.783911, -0.429161, 0.448669,
		37.060635, 33.008007, 28.241138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085850, 33.902828, 28.031895>,  <36.511898, 33.308422, 27.927069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085850, 33.902828, 28.031895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.266029, 33.546360, 28.053493>,  <37.374138, 33.332481, 28.066452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.266029, 33.546360, 28.053493>,  <37.085850, 33.902828, 28.031895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266029, 33.546360, 28.053493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681661, 0.304236, -0.665416,
		0.576570, 0.336543, 0.744517,
		0.450450, -0.891167, 0.053996,
		37.401165, 33.279011, 28.069693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777939, 33.961765, 28.232233>,  <37.085850, 33.902828, 28.031895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777939, 33.961765, 28.232233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740067, 33.629517, 28.012739>,  <37.717342, 33.430168, 27.881042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740067, 33.629517, 28.012739>,  <37.777939, 33.961765, 28.232233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740067, 33.629517, 28.012739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601110, 0.391677, -0.696603,
		0.793537, -0.395808, 0.462206,
		-0.094685, -0.830617, -0.548735,
		37.711662, 33.380333, 27.848118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435062, 33.856861, 27.841473>,  <37.777939, 33.961765, 28.232233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435062, 33.856861, 27.841473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.173222, 33.613117, 27.662508>,  <38.016117, 33.466869, 27.555130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.173222, 33.613117, 27.662508>,  <38.435062, 33.856861, 27.841473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173222, 33.613117, 27.662508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434516, 0.181024, -0.882285,
		0.618620, -0.771953, 0.146278,
		-0.654603, -0.609359, -0.447411,
		37.976841, 33.430309, 27.528284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817562, 33.655174, 27.260700>,  <38.435062, 33.856861, 27.841473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817562, 33.655174, 27.260700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.445599, 33.534706, 27.176254>,  <38.222420, 33.462425, 27.125587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.445599, 33.534706, 27.176254>,  <38.817562, 33.655174, 27.260700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445599, 33.534706, 27.176254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194404, 0.084782, -0.977251,
		0.312215, -0.949795, -0.020291,
		-0.929908, -0.301168, -0.211114,
		38.166626, 33.444355, 27.112921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860050, 33.008183, 26.875406>,  <38.817562, 33.655174, 27.260700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860050, 33.008183, 26.875406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.517727, 33.197758, 26.792480>,  <38.312332, 33.311501, 26.742725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.517727, 33.197758, 26.792480>,  <38.860050, 33.008183, 26.875406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517727, 33.197758, 26.792480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183105, -0.097288, -0.978268,
		-0.483804, -0.875169, -0.003519,
		-0.855807, 0.473935, -0.207316,
		38.260986, 33.339939, 26.730286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210625, 32.331646, 26.563599>,  <38.860050, 33.008183, 26.875406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210625, 32.331646, 26.563599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.590195, 32.438698, 26.630423>,  <39.817936, 32.502930, 26.670517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.590195, 32.438698, 26.630423>,  <39.210625, 32.331646, 26.563599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590195, 32.438698, 26.630423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087377, -0.285873, 0.954276,
		0.303155, -0.920135, -0.247888,
		0.948927, 0.267633, 0.167062,
		39.874874, 32.518990, 26.680542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240025, 31.901478, 27.181513>,  <39.210625, 32.331646, 26.563599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240025, 31.901478, 27.181513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.588463, 32.097122, 27.163803>,  <39.797527, 32.214508, 27.153177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.588463, 32.097122, 27.163803>,  <39.240025, 31.901478, 27.181513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588463, 32.097122, 27.163803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111543, -0.109247, 0.987737,
		0.478275, -0.865353, -0.149721,
		0.871098, 0.489111, -0.044274,
		39.849792, 32.243855, 27.150520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796669, 31.474939, 27.428066>,  <39.240025, 31.901478, 27.181513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796669, 31.474939, 27.428066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859650, 31.866621, 27.479246>,  <39.897438, 32.101631, 27.509954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859650, 31.866621, 27.479246>,  <39.796669, 31.474939, 27.428066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859650, 31.866621, 27.479246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069729, -0.140267, 0.987655,
		0.985062, -0.146587, -0.090364,
		0.157452, 0.979202, 0.127950,
		39.906887, 32.160381, 27.517632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189888, 31.483995, 28.084585>,  <39.796669, 31.474939, 27.428066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189888, 31.483995, 28.084585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136284, 31.874405, 28.015982>,  <40.104122, 32.108650, 27.974819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136284, 31.874405, 28.015982>,  <40.189888, 31.483995, 28.084585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136284, 31.874405, 28.015982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080997, 0.183277, 0.979719,
		0.987664, 0.117403, -0.103617,
		-0.134013, 0.976026, -0.171507,
		40.096081, 32.167213, 27.964529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745865, 31.869938, 28.413294>,  <40.189888, 31.483995, 28.084585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745865, 31.869938, 28.413294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.442619, 32.130688, 28.420431>,  <40.260670, 32.287136, 28.424713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.442619, 32.130688, 28.420431>,  <40.745865, 31.869938, 28.413294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442619, 32.130688, 28.420431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040146, -0.073961, 0.996453,
		0.650880, 0.754713, 0.082241,
		-0.758118, 0.651873, 0.017841,
		40.215183, 32.326248, 28.425783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888454, 32.398369, 28.926407>,  <40.745865, 31.869938, 28.413294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888454, 32.398369, 28.926407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.493549, 32.393787, 28.862925>,  <40.256607, 32.391037, 28.824835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.493549, 32.393787, 28.862925>,  <40.888454, 32.398369, 28.926407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493549, 32.393787, 28.862925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155454, -0.143352, 0.977386,
		-0.033946, 0.989606, 0.139745,
		-0.987260, -0.011454, -0.158704,
		40.197372, 32.390350, 28.815313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623840, 32.625732, 29.500813>,  <40.888454, 32.398369, 28.926407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623840, 32.625732, 29.500813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.315838, 32.421421, 29.347868>,  <40.131035, 32.298836, 29.256102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.315838, 32.421421, 29.347868>,  <40.623840, 32.625732, 29.500813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315838, 32.421421, 29.347868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244624, -0.317143, 0.916285,
		-0.589280, 0.799079, 0.119253,
		-0.770005, -0.510777, -0.382360,
		40.084835, 32.268188, 29.233160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048618, 32.833420, 29.815153>,  <40.623840, 32.625732, 29.500813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048618, 32.833420, 29.815153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.904530, 32.499817, 29.647982>,  <39.818077, 32.299656, 29.547678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.904530, 32.499817, 29.647982>,  <40.048618, 32.833420, 29.815153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904530, 32.499817, 29.647982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361210, -0.288359, 0.886779,
		-0.860097, 0.470399, -0.197379,
		-0.360224, -0.834010, -0.417930,
		39.796463, 32.249615, 29.522602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313900, 32.847546, 29.989084>,  <40.048618, 32.833420, 29.815153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313900, 32.847546, 29.989084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.425892, 32.476223, 29.891218>,  <39.493088, 32.253429, 29.832499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.425892, 32.476223, 29.891218>,  <39.313900, 32.847546, 29.989084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425892, 32.476223, 29.891218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353603, -0.336662, 0.872711,
		-0.892511, -0.157827, -0.422510,
		0.279980, -0.928305, -0.244666,
		39.509888, 32.197731, 29.817818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737896, 32.420040, 30.017944>,  <39.313900, 32.847546, 29.989084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737896, 32.420040, 30.017944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.035110, 32.153809, 30.045944>,  <39.213440, 31.994068, 30.062744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.035110, 32.153809, 30.045944>,  <38.737896, 32.420040, 30.017944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035110, 32.153809, 30.045944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435717, -0.401708, 0.805469,
		-0.507988, -0.628990, -0.588489,
		0.743033, -0.665583, 0.069999,
		39.258022, 31.954134, 30.066944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389576, 31.873589, 30.370474>,  <38.737896, 32.420040, 30.017944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389576, 31.873589, 30.370474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.778755, 31.798212, 30.423927>,  <39.012264, 31.752987, 30.455999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.778755, 31.798212, 30.423927>,  <38.389576, 31.873589, 30.370474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778755, 31.798212, 30.423927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199539, -0.394030, 0.897176,
		-0.116408, -0.899573, -0.420972,
		0.972950, -0.188439, 0.133632,
		39.070641, 31.741680, 30.464016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410675, 31.069937, 30.535713>,  <38.389576, 31.873589, 30.370474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410675, 31.069937, 30.535713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.728729, 31.276718, 30.662537>,  <38.919559, 31.400787, 30.738630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.728729, 31.276718, 30.662537>,  <38.410675, 31.069937, 30.535713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728729, 31.276718, 30.662537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105597, -0.396812, 0.911806,
		0.597173, -0.758486, -0.260929,
		0.795131, 0.516952, 0.317059,
		38.967270, 31.431805, 30.757654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808041, 30.539978, 30.977570>,  <38.410675, 31.069937, 30.535713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808041, 30.539978, 30.977570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930016, 30.908024, 31.075876>,  <39.003201, 31.128851, 31.134861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930016, 30.908024, 31.075876>,  <38.808041, 30.539978, 30.977570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930016, 30.908024, 31.075876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193761, -0.192724, 0.961932,
		0.932454, -0.340949, 0.119514,
		0.304936, 0.920115, 0.245769,
		39.021496, 31.184059, 31.149607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268230, 30.451990, 31.524679>,  <38.808041, 30.539978, 30.977570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268230, 30.451990, 31.524679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163929, 30.836786, 31.557137>,  <39.101349, 31.067663, 31.576611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163929, 30.836786, 31.557137>,  <39.268230, 30.451990, 31.524679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163929, 30.836786, 31.557137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013150, -0.080503, 0.996668,
		0.965315, 0.260955, 0.008342,
		-0.260757, 0.961988, 0.081142,
		39.085701, 31.125383, 31.581480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.907677, 33.235577, 27.605396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.634502, 33.525654, 27.570307>,  <43.470600, 33.699699, 27.549253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.634502, 33.525654, 27.570307>,  <43.907677, 33.235577, 27.605396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634502, 33.525654, 27.570307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119766, -0.007306, -0.992775,
		-0.720596, -0.688505, -0.081864,
		-0.682932, 0.725195, -0.087724,
		43.429623, 33.743214, 27.543989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458050, 33.056751, 26.999594>,  <43.907677, 33.235577, 27.605396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458050, 33.056751, 26.999594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.457806, 33.452511, 27.057674>,  <43.457657, 33.689968, 27.092524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.457806, 33.452511, 27.057674>,  <43.458050, 33.056751, 26.999594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457806, 33.452511, 27.057674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113626, 0.144333, -0.982984,
		-0.993523, 0.015894, -0.112510,
		-0.000615, 0.989402, 0.145204,
		43.457623, 33.749332, 27.101236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041584, 33.359959, 26.403730>,  <43.458050, 33.056751, 26.999594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041584, 33.359959, 26.403730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.235706, 33.684818, 26.533278>,  <43.352180, 33.879734, 26.611006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.235706, 33.684818, 26.533278>,  <43.041584, 33.359959, 26.403730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235706, 33.684818, 26.533278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214181, 0.248704, -0.944602,
		-0.847704, 0.527789, -0.053249,
		0.485307, 0.812148, 0.323870,
		43.381298, 33.928463, 26.630438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856152, 33.950546, 25.959564>,  <43.041584, 33.359959, 26.403730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856152, 33.950546, 25.959564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.202789, 34.065788, 26.122543>,  <43.410770, 34.134933, 26.220331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.202789, 34.065788, 26.122543>,  <42.856152, 33.950546, 25.959564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202789, 34.065788, 26.122543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329738, 0.282255, -0.900891,
		-0.374554, 0.915057, 0.149602,
		0.866593, 0.288103, 0.407449,
		43.462769, 34.152218, 26.244778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919445, 34.661995, 25.858261>,  <42.856152, 33.950546, 25.959564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919445, 34.661995, 25.858261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.306484, 34.571194, 25.902470>,  <43.538708, 34.516712, 25.928995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.306484, 34.571194, 25.902470>,  <42.919445, 34.661995, 25.858261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306484, 34.571194, 25.902470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188208, 0.356729, -0.915053,
		0.168295, 0.906208, 0.387896,
		0.967602, -0.227004, 0.110520,
		43.596764, 34.503094, 25.935625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221107, 35.193676, 25.814087>,  <42.919445, 34.661995, 25.858261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221107, 35.193676, 25.814087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.501312, 34.926235, 25.714275>,  <43.669434, 34.765770, 25.654388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.501312, 34.926235, 25.714275>,  <43.221107, 35.193676, 25.814087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501312, 34.926235, 25.714275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028615, 0.323058, -0.945947,
		0.713070, 0.669784, 0.207172,
		0.700509, -0.668598, -0.249529,
		43.711464, 34.725655, 25.639418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597942, 35.527287, 25.270231>,  <43.221107, 35.193676, 25.814087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597942, 35.527287, 25.270231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.725262, 35.151295, 25.221035>,  <43.801655, 34.925701, 25.191517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.725262, 35.151295, 25.221035>,  <43.597942, 35.527287, 25.270231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725262, 35.151295, 25.221035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012006, 0.133725, -0.990946,
		0.947914, 0.313940, 0.053850,
		0.318299, -0.939978, -0.122991,
		43.820751, 34.869301, 25.184137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239120, 35.577545, 24.800432>,  <43.597942, 35.527287, 25.270231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239120, 35.577545, 24.800432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.091175, 35.206745, 24.775515>,  <44.002407, 34.984264, 24.760565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.091175, 35.206745, 24.775515>,  <44.239120, 35.577545, 24.800432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091175, 35.206745, 24.775515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091828, 0.030247, -0.995316,
		0.924537, -0.373850, 0.073937,
		-0.369863, -0.926996, -0.062295,
		43.980217, 34.928646, 24.756826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671120, 35.209591, 24.458113>,  <44.239120, 35.577545, 24.800432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671120, 35.209591, 24.458113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.323212, 35.015400, 24.422779>,  <44.114468, 34.898884, 24.401579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.323212, 35.015400, 24.422779>,  <44.671120, 35.209591, 24.458113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323212, 35.015400, 24.422779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088318, 0.022962, -0.995828,
		0.485484, -0.873945, 0.022905,
		-0.869773, -0.485481, -0.088333,
		44.062279, 34.869755, 24.396278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838966, 34.656185, 24.088818>,  <44.671120, 35.209591, 24.458113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838966, 34.656185, 24.088818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.444775, 34.703861, 24.040461>,  <44.208260, 34.732468, 24.011446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.444775, 34.703861, 24.040461>,  <44.838966, 34.656185, 24.088818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444775, 34.703861, 24.040461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120873, -0.007426, -0.992640,
		-0.119215, -0.992843, -0.007090,
		-0.985483, 0.119195, -0.120893,
		44.149128, 34.739620, 24.004192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685741, 34.292953, 23.456970>,  <44.838966, 34.656185, 24.088818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685741, 34.292953, 23.456970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.367142, 34.529518, 23.507278>,  <44.175983, 34.671459, 23.537464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.367142, 34.529518, 23.507278>,  <44.685741, 34.292953, 23.456970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367142, 34.529518, 23.507278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043545, 0.151362, -0.987519,
		-0.603071, -0.792033, -0.094807,
		-0.796498, 0.591416, 0.125771,
		44.128193, 34.706944, 23.545010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117619, 33.972336, 23.061501>,  <44.685741, 34.292953, 23.456970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117619, 33.972336, 23.061501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.059074, 34.367371, 23.084324>,  <44.023949, 34.604389, 23.098019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.059074, 34.367371, 23.084324>,  <44.117619, 33.972336, 23.061501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059074, 34.367371, 23.084324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136539, 0.036959, -0.989945,
		-0.979763, -0.152682, 0.129434,
		-0.146363, 0.987584, 0.057058,
		44.015167, 34.663647, 23.101442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668175, 34.197365, 22.420691>,  <44.117619, 33.972336, 23.061501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668175, 34.197365, 22.420691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.849739, 34.515675, 22.581047>,  <43.958675, 34.706661, 22.677261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.849739, 34.515675, 22.581047>,  <43.668175, 34.197365, 22.420691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849739, 34.515675, 22.581047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088030, 0.407659, -0.908881,
		-0.886690, 0.447837, 0.114987,
		0.453906, 0.795774, 0.400890,
		43.985912, 34.754406, 22.701315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460659, 33.586128, 21.905176>,  <43.668175, 34.197365, 22.420691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460659, 33.586128, 21.905176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.102680, 33.571209, 21.727331>,  <42.887894, 33.562256, 21.620625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.102680, 33.571209, 21.727331>,  <43.460659, 33.586128, 21.905176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102680, 33.571209, 21.727331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419192, -0.270996, 0.866510,
		-0.152807, 0.961857, 0.226892,
		-0.894946, -0.037298, -0.444613,
		42.834198, 33.560020, 21.593946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919693, 34.029736, 22.176304>,  <43.460659, 33.586128, 21.905176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919693, 34.029736, 22.176304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.735283, 33.704948, 22.033100>,  <42.624638, 33.510078, 21.947178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.735283, 33.704948, 22.033100>,  <42.919693, 34.029736, 22.176304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735283, 33.704948, 22.033100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481628, -0.109898, 0.869458,
		-0.745314, 0.573267, -0.340399,
		-0.461022, -0.811965, -0.358010,
		42.596977, 33.461357, 21.925697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295788, 34.102779, 22.365540>,  <42.919693, 34.029736, 22.176304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295788, 34.102779, 22.365540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.272396, 33.710884, 22.288919>,  <42.258362, 33.475746, 22.242947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.272396, 33.710884, 22.288919>,  <42.295788, 34.102779, 22.365540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272396, 33.710884, 22.288919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598266, -0.119209, 0.792381,
		-0.799161, 0.160939, -0.579173,
		-0.058482, -0.979739, -0.191551,
		42.254852, 33.416962, 22.231455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694778, 33.917892, 22.576601>,  <42.295788, 34.102779, 22.365540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694778, 33.917892, 22.576601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.861092, 33.556759, 22.532738>,  <41.960880, 33.340080, 22.506420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.861092, 33.556759, 22.532738>,  <41.694778, 33.917892, 22.576601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861092, 33.556759, 22.532738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623612, -0.370779, 0.688208,
		-0.661994, -0.217759, -0.717178,
		0.415778, -0.902831, -0.109657,
		41.985825, 33.285908, 22.499842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125092, 33.370899, 22.666124>,  <41.694778, 33.917892, 22.576601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125092, 33.370899, 22.666124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.475628, 33.190628, 22.734131>,  <41.685951, 33.082466, 22.774935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.475628, 33.190628, 22.734131>,  <41.125092, 33.370899, 22.666124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475628, 33.190628, 22.734131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402297, -0.490686, 0.772906,
		-0.264907, -0.745731, -0.611318,
		0.876345, -0.450680, 0.170019,
		41.738533, 33.055424, 22.785137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931061, 32.540157, 22.772038>,  <41.125092, 33.370899, 22.666124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931061, 32.540157, 22.772038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.273102, 32.661339, 22.940332>,  <41.478325, 32.734047, 23.041309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.273102, 32.661339, 22.940332>,  <40.931061, 32.540157, 22.772038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273102, 32.661339, 22.940332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315404, -0.340108, 0.885916,
		0.411489, -0.890250, -0.195274,
		0.855101, 0.302954, 0.420739,
		41.529633, 32.752224, 23.066555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105373, 31.940516, 23.132627>,  <40.931061, 32.540157, 22.772038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105373, 31.940516, 23.132627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.301292, 32.242722, 23.306660>,  <41.418842, 32.424046, 23.411079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.301292, 32.242722, 23.306660>,  <41.105373, 31.940516, 23.132627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301292, 32.242722, 23.306660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343409, -0.291510, 0.892800,
		0.801354, -0.586703, 0.116669,
		0.489798, 0.755514, 0.435082,
		41.448231, 32.469376, 23.437183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205326, 31.658337, 23.784338>,  <41.105373, 31.940516, 23.132627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205326, 31.658337, 23.784338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.293217, 32.040245, 23.864468>,  <41.345951, 32.269390, 23.912546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.293217, 32.040245, 23.864468>,  <41.205326, 31.658337, 23.784338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293217, 32.040245, 23.864468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499234, -0.066372, 0.863921,
		0.838144, -0.289838, 0.462071,
		0.219729, 0.954772, 0.200326,
		41.359135, 32.326675, 23.924566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621799, 31.715675, 24.411442>,  <41.205326, 31.658337, 23.784338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621799, 31.715675, 24.411442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.450256, 32.072666, 24.355488>,  <41.347332, 32.286861, 24.321915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.450256, 32.072666, 24.355488>,  <41.621799, 31.715675, 24.411442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450256, 32.072666, 24.355488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226864, 0.043485, 0.972955,
		0.874421, 0.448995, 0.183822,
		-0.428859, 0.892475, -0.139885,
		41.321598, 32.340408, 24.313522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825150, 32.275932, 25.018431>,  <41.621799, 31.715675, 24.411442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825150, 32.275932, 25.018431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.486168, 32.392761, 24.841110>,  <41.282780, 32.462856, 24.734718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.486168, 32.392761, 24.841110>,  <41.825150, 32.275932, 25.018431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486168, 32.392761, 24.841110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443123, 0.070661, 0.893671,
		0.292339, 0.953783, 0.069541,
		-0.847455, 0.292070, -0.443301,
		41.231930, 32.480381, 24.708120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719418, 32.873535, 25.486977>,  <41.825150, 32.275932, 25.018431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719418, 32.873535, 25.486977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.383430, 32.802090, 25.282017>,  <41.181839, 32.759224, 25.159040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.383430, 32.802090, 25.282017>,  <41.719418, 32.873535, 25.486977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383430, 32.802090, 25.282017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542066, 0.232874, 0.807424,
		-0.024890, 0.955965, -0.292425,
		-0.839967, -0.178610, -0.512400,
		41.131439, 32.748508, 25.128296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223312, 33.349384, 25.631340>,  <41.719418, 32.873535, 25.486977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223312, 33.349384, 25.631340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.987686, 33.067902, 25.472448>,  <40.846310, 32.899014, 25.377113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.987686, 33.067902, 25.472448>,  <41.223312, 33.349384, 25.631340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987686, 33.067902, 25.472448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662257, 0.138733, 0.736321,
		-0.463046, 0.696813, -0.547759,
		-0.589070, -0.703708, -0.397230,
		40.810966, 32.856789, 25.353279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528809, 33.590160, 25.775932>,  <41.223312, 33.349384, 25.631340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528809, 33.590160, 25.775932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.488010, 33.197155, 25.713631>,  <40.463531, 32.961349, 25.676249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.488010, 33.197155, 25.713631>,  <40.528809, 33.590160, 25.775932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488010, 33.197155, 25.713631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271921, -0.123073, 0.954417,
		-0.956899, 0.139703, -0.254613,
		-0.101999, -0.982515, -0.155757,
		40.457409, 32.902401, 25.666904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821583, 33.442005, 25.962671>,  <40.528809, 33.590160, 25.775932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821583, 33.442005, 25.962671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.037807, 33.106716, 25.991459>,  <40.167542, 32.905544, 26.008732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.037807, 33.106716, 25.991459>,  <39.821583, 33.442005, 25.962671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037807, 33.106716, 25.991459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279880, -0.098501, 0.954968,
		-0.793388, -0.536358, -0.287848,
		0.540558, -0.838223, 0.071967,
		40.199974, 32.855247, 26.013048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336697, 32.853699, 26.022150>,  <39.821583, 33.442005, 25.962671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336697, 32.853699, 26.022150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.685162, 32.722267, 26.168087>,  <39.894241, 32.643406, 26.255650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.685162, 32.722267, 26.168087>,  <39.336697, 32.853699, 26.022150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685162, 32.722267, 26.168087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453220, -0.252323, 0.854941,
		-0.188857, -0.910148, -0.368733,
		0.871163, -0.328579, 0.364845,
		39.946510, 32.623692, 26.277540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632408, 32.668457, 26.224197>,  <39.336697, 32.853699, 26.022150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632408, 32.668457, 26.224197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.427322, 33.009869, 26.261311>,  <38.304272, 33.214718, 26.283579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.427322, 33.009869, 26.261311>,  <38.632408, 32.668457, 26.224197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427322, 33.009869, 26.261311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004754, 0.110888, -0.993822,
		-0.858546, -0.509105, -0.060912,
		-0.512714, 0.853531, 0.092782,
		38.273510, 33.265926, 26.289145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144482, 32.676048, 25.634525>,  <38.632408, 32.668457, 26.224197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144482, 32.676048, 25.634525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.177818, 33.048546, 25.776423>,  <38.197823, 33.272045, 25.861561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.177818, 33.048546, 25.776423>,  <38.144482, 32.676048, 25.634525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177818, 33.048546, 25.776423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037146, 0.358636, -0.932738,
		-0.995828, 0.064561, 0.064482,
		0.083344, 0.931242, 0.354742,
		38.202820, 33.327919, 25.882845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618729, 33.091881, 25.321136>,  <38.144482, 32.676048, 25.634525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618729, 33.091881, 25.321136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918884, 33.336079, 25.422504>,  <38.098976, 33.482597, 25.483326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918884, 33.336079, 25.422504>,  <37.618729, 33.091881, 25.321136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918884, 33.336079, 25.422504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097712, 0.276727, -0.955968,
		-0.653739, 0.742106, 0.147999,
		0.750385, 0.610492, 0.253419,
		38.144001, 33.519226, 25.498529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519527, 33.597721, 24.814812>,  <37.618729, 33.091881, 25.321136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519527, 33.597721, 24.814812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.882320, 33.683098, 24.960043>,  <38.099995, 33.734325, 25.047182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.882320, 33.683098, 24.960043>,  <37.519527, 33.597721, 24.814812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882320, 33.683098, 24.960043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301698, 0.272256, -0.913704,
		-0.293876, 0.938253, 0.182535,
		0.906981, 0.213446, 0.363079,
		38.154415, 33.747131, 25.068966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678078, 34.162796, 24.463728>,  <37.519527, 33.597721, 24.814812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678078, 34.162796, 24.463728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.037582, 34.064667, 24.609081>,  <38.253284, 34.005787, 24.696293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.037582, 34.064667, 24.609081>,  <37.678078, 34.162796, 24.463728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037582, 34.064667, 24.609081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425485, 0.288021, -0.857908,
		0.105806, 0.925667, 0.363245,
		0.898759, -0.245327, 0.363383,
		38.307209, 33.991070, 24.718096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115078, 34.812115, 24.482988>,  <37.678078, 34.162796, 24.463728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115078, 34.812115, 24.482988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.336113, 34.479515, 24.460178>,  <38.468735, 34.279957, 24.446493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.336113, 34.479515, 24.460178>,  <38.115078, 34.812115, 24.482988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336113, 34.479515, 24.460178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312142, 0.269908, -0.910888,
		0.772794, 0.485549, 0.408694,
		0.552591, -0.831500, -0.057023,
		38.501888, 34.230064, 24.443071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875854, 35.062534, 24.332178>,  <38.115078, 34.812115, 24.482988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875854, 35.062534, 24.332178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835964, 34.685608, 24.204369>,  <38.812031, 34.459454, 24.127684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835964, 34.685608, 24.204369>,  <38.875854, 35.062534, 24.332178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835964, 34.685608, 24.204369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569128, 0.209387, -0.795142,
		0.816179, -0.261146, 0.515418,
		-0.099726, -0.942316, -0.319522,
		38.806046, 34.402912, 24.108511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398941, 35.560951, 24.660446>,  <38.875854, 35.062534, 24.332178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398941, 35.560951, 24.660446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.294559, 35.941765, 24.596516>,  <39.231930, 36.170254, 24.558157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.294559, 35.941765, 24.596516>,  <39.398941, 35.560951, 24.660446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294559, 35.941765, 24.596516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549030, -0.010188, 0.835741,
		0.794022, 0.305837, 0.525351,
		-0.260953, 0.952029, -0.159825,
		39.216274, 36.227375, 24.548569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497852, 35.839729, 25.297552>,  <39.398941, 35.560951, 24.660446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497852, 35.839729, 25.297552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.264496, 36.113853, 25.123198>,  <39.124481, 36.278328, 25.018585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.264496, 36.113853, 25.123198>,  <39.497852, 35.839729, 25.297552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264496, 36.113853, 25.123198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498700, 0.121340, 0.858239,
		0.641054, 0.718068, 0.270978,
		-0.583394, 0.685314, -0.435886,
		39.089478, 36.319447, 24.992432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487457, 36.328102, 25.807383>,  <39.497852, 35.839729, 25.297552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487457, 36.328102, 25.807383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184834, 36.425423, 25.564592>,  <39.003258, 36.483814, 25.418919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184834, 36.425423, 25.564592>,  <39.487457, 36.328102, 25.807383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184834, 36.425423, 25.564592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579255, 0.181382, 0.794710,
		0.303450, 0.952840, 0.003708,
		-0.756559, 0.243303, -0.606978,
		38.957867, 36.498413, 25.382500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104610, 37.008018, 26.045919>,  <39.487457, 36.328102, 25.807383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104610, 37.008018, 26.045919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.863216, 36.763573, 25.841042>,  <38.718380, 36.616905, 25.718115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.863216, 36.763573, 25.841042>,  <39.104610, 37.008018, 26.045919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863216, 36.763573, 25.841042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642256, -0.008145, 0.766447,
		-0.472562, 0.791497, -0.387580,
		-0.603484, -0.611118, -0.512193,
		38.682171, 36.580238, 25.687384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330746, 37.173840, 26.076628>,  <39.104610, 37.008018, 26.045919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330746, 37.173840, 26.076628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.270050, 36.788620, 25.987629>,  <38.233631, 36.557487, 25.934229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.270050, 36.788620, 25.987629>,  <38.330746, 37.173840, 26.076628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270050, 36.788620, 25.987629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695967, -0.055740, 0.715907,
		-0.701858, 0.263484, -0.661795,
		-0.151741, -0.963052, -0.222498,
		38.224529, 36.499702, 25.920879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590202, 37.127377, 26.336767>,  <38.330746, 37.173840, 26.076628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590202, 37.127377, 26.336767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.718342, 36.751354, 26.289991>,  <37.795227, 36.525742, 26.261927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.718342, 36.751354, 26.289991>,  <37.590202, 37.127377, 26.336767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718342, 36.751354, 26.289991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528137, -0.279714, 0.801768,
		-0.786415, -0.195084, -0.586083,
		0.320347, -0.940054, -0.116940,
		37.814445, 36.469337, 26.254910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946163, 36.725319, 26.412434>,  <37.590202, 37.127377, 26.336767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946163, 36.725319, 26.412434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.274448, 36.508316, 26.484119>,  <37.471420, 36.378113, 26.527130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.274448, 36.508316, 26.484119>,  <36.946163, 36.725319, 26.412434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274448, 36.508316, 26.484119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449409, -0.419288, 0.788815,
		-0.352794, -0.727931, -0.587922,
		0.820712, -0.542507, 0.179216,
		37.520660, 36.345562, 26.537884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.319138, 38.030899, 24.304701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.391327, 37.638496, 24.276255>,  <44.434639, 37.403053, 24.259188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.391327, 37.638496, 24.276255>,  <44.319138, 38.030899, 24.304701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391327, 37.638496, 24.276255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349396, -0.131526, 0.927698,
		-0.919431, -0.142573, -0.366496,
		0.180469, -0.981006, -0.071115,
		44.445469, 37.344196, 24.254921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790230, 37.736710, 24.762856>,  <44.319138, 38.030899, 24.304701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790230, 37.736710, 24.762856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.062843, 37.445778, 24.730597>,  <44.226410, 37.271217, 24.711241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.062843, 37.445778, 24.730597>,  <43.790230, 37.736710, 24.762856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062843, 37.445778, 24.730597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144808, -0.242068, 0.959393,
		-0.717319, -0.642177, -0.270300,
		0.681530, -0.727332, -0.080648,
		44.267303, 37.227577, 24.706402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471378, 37.260349, 25.118010>,  <43.790230, 37.736710, 24.762856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471378, 37.260349, 25.118010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.849464, 37.129921, 25.111679>,  <44.076317, 37.051666, 25.107880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.849464, 37.129921, 25.111679>,  <43.471378, 37.260349, 25.118010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849464, 37.129921, 25.111679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092202, -0.313161, 0.945214,
		-0.313161, -0.891970, -0.326068,
		-0.945214, 0.326068, 0.015828,
		44.133030, 37.032101, 25.106930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490452, 36.617622, 25.227158>,  <43.471378, 37.260349, 25.118010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490452, 36.617622, 25.227158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.866058, 36.716236, 25.323048>,  <44.091423, 36.775406, 25.380581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.866058, 36.716236, 25.323048>,  <43.490452, 36.617622, 25.227158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866058, 36.716236, 25.323048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161870, -0.298165, 0.940689,
		0.303390, -0.922127, -0.240075,
		0.939017, 0.246534, 0.239725,
		44.147762, 36.790195, 25.394964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634197, 36.170250, 25.765051>,  <43.490452, 36.617622, 25.227158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634197, 36.170250, 25.765051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.920731, 36.446835, 25.802467>,  <44.092651, 36.612785, 25.824917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.920731, 36.446835, 25.802467>,  <43.634197, 36.170250, 25.765051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920731, 36.446835, 25.802467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059944, -0.072578, 0.995560,
		0.695183, -0.718755, -0.010540,
		0.716329, 0.691465, 0.093540,
		44.135628, 36.654274, 25.830530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190704, 35.855549, 26.080807>,  <43.634197, 36.170250, 25.765051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190704, 35.855549, 26.080807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.259773, 36.244682, 26.142475>,  <44.301216, 36.478165, 26.179476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.259773, 36.244682, 26.142475>,  <44.190704, 35.855549, 26.080807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259773, 36.244682, 26.142475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000298, -0.156471, 0.987683,
		0.984979, -0.170595, -0.026728,
		0.172676, 0.972838, 0.154171,
		44.311577, 36.536533, 26.188726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789146, 35.888180, 26.580082>,  <44.190704, 35.855549, 26.080807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789146, 35.888180, 26.580082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.603840, 36.242584, 26.572456>,  <44.492657, 36.455227, 26.567881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.603840, 36.242584, 26.572456>,  <44.789146, 35.888180, 26.580082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603840, 36.242584, 26.572456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081849, 0.064196, 0.994575,
		0.882431, 0.459194, -0.102259,
		-0.463267, 0.886013, -0.019064,
		44.464859, 36.508389, 26.566736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156578, 36.360435, 27.021576>,  <44.789146, 35.888180, 26.580082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156578, 36.360435, 27.021576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.806080, 36.550308, 26.988438>,  <44.595779, 36.664234, 26.968555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.806080, 36.550308, 26.988438>,  <45.156578, 36.360435, 27.021576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806080, 36.550308, 26.988438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050303, 0.080873, 0.995454,
		0.479226, 0.876433, -0.046987,
		-0.876249, 0.474684, -0.082843,
		44.543205, 36.692715, 26.963585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242584, 36.862118, 27.551247>,  <45.156578, 36.360435, 27.021576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242584, 36.862118, 27.551247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.851574, 36.852394, 27.467482>,  <44.616966, 36.846561, 27.417223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.851574, 36.852394, 27.467482>,  <45.242584, 36.862118, 27.551247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851574, 36.852394, 27.467482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210670, 0.075010, 0.974675,
		-0.007986, 0.996886, -0.078446,
		-0.977525, -0.024310, -0.209415,
		44.558315, 36.845100, 27.404657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915791, 37.392815, 28.049145>,  <45.242584, 36.862118, 27.551247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915791, 37.392815, 28.049145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.643696, 37.127190, 27.925018>,  <44.480438, 36.967815, 27.850542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.643696, 37.127190, 27.925018>,  <44.915791, 37.392815, 28.049145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643696, 37.127190, 27.925018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325511, -0.105642, 0.939618,
		-0.656749, 0.740175, -0.144298,
		-0.680238, -0.664064, -0.310315,
		44.439625, 36.927971, 27.831924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210316, 37.621880, 28.242851>,  <44.915791, 37.392815, 28.049145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210316, 37.621880, 28.242851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.212830, 37.223686, 28.204948>,  <44.214336, 36.984772, 28.182207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.212830, 37.223686, 28.204948>,  <44.210316, 37.621880, 28.242851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212830, 37.223686, 28.204948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322933, -0.091701, 0.941969,
		-0.946401, 0.024684, -0.322049,
		0.006280, -0.995481, -0.094757,
		44.214714, 36.925041, 28.176521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581123, 37.428619, 28.601015>,  <44.210316, 37.621880, 28.242851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581123, 37.428619, 28.601015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.810204, 37.101257, 28.582115>,  <43.947651, 36.904839, 28.570776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.810204, 37.101257, 28.582115>,  <43.581123, 37.428619, 28.601015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810204, 37.101257, 28.582115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159136, -0.167528, 0.972939,
		-0.804174, -0.549679, -0.226180,
		0.572696, -0.818406, -0.047248,
		43.982014, 36.855736, 28.567942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748066, 37.363464, 28.331480>,  <43.581123, 37.428619, 28.601015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748066, 37.363464, 28.331480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.428188, 37.603340, 28.319786>,  <42.236259, 37.747265, 28.312771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.428188, 37.603340, 28.319786>,  <42.748066, 37.363464, 28.331480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428188, 37.603340, 28.319786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104225, -0.186607, -0.976891,
		-0.591288, -0.778170, 0.211732,
		-0.799698, 0.599691, -0.029233,
		42.188278, 37.783249, 28.311016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247967, 37.085175, 27.908398>,  <42.748066, 37.363464, 28.331480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247967, 37.085175, 27.908398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.172737, 37.478031, 27.906115>,  <42.127598, 37.713745, 27.904745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.172737, 37.478031, 27.906115>,  <42.247967, 37.085175, 27.908398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172737, 37.478031, 27.906115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020680, -0.009772, -0.999739,
		-0.981937, -0.187911, 0.022149,
		-0.188078, 0.982138, -0.005709,
		42.116314, 37.772671, 27.904402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902206, 37.112232, 27.370897>,  <42.247967, 37.085175, 27.908398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902206, 37.112232, 27.370897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.973900, 37.502296, 27.422953>,  <42.016918, 37.736336, 27.454185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.973900, 37.502296, 27.422953>,  <41.902206, 37.112232, 27.370897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973900, 37.502296, 27.422953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025578, 0.127619, -0.991493,
		-0.983473, 0.181042, -0.002068,
		0.179237, 0.975160, 0.130140,
		42.027672, 37.794846, 27.461994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377956, 37.425652, 27.005522>,  <41.902206, 37.112232, 27.370897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377956, 37.425652, 27.005522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.638161, 37.728756, 27.026068>,  <41.794281, 37.910618, 27.038395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.638161, 37.728756, 27.026068>,  <41.377956, 37.425652, 27.005522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638161, 37.728756, 27.026068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109706, 0.160666, -0.980893,
		-0.751535, 0.632443, 0.187646,
		0.650507, 0.757761, 0.051364,
		41.833313, 37.956085, 27.041477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081970, 38.027554, 26.759455>,  <41.377956, 37.425652, 27.005522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081970, 38.027554, 26.759455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.468170, 38.128662, 26.734428>,  <41.699890, 38.189327, 26.719412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.468170, 38.128662, 26.734428>,  <41.081970, 38.027554, 26.759455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468170, 38.128662, 26.734428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162157, 0.395625, -0.903984,
		-0.203748, 0.882943, 0.422964,
		0.965501, 0.252771, -0.062568,
		41.757820, 38.204494, 26.715658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129189, 38.646107, 26.374310>,  <41.081970, 38.027554, 26.759455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129189, 38.646107, 26.374310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.513229, 38.534283, 26.371569>,  <41.743656, 38.467190, 26.369925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.513229, 38.534283, 26.371569>,  <41.129189, 38.646107, 26.374310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513229, 38.534283, 26.371569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108677, 0.395592, -0.911974,
		0.257658, 0.874846, 0.410191,
		0.960105, -0.279555, -0.006852,
		41.801262, 38.450417, 26.369513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558369, 39.240971, 26.169895>,  <41.129189, 38.646107, 26.374310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558369, 39.240971, 26.169895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.732143, 38.891399, 26.082697>,  <41.836407, 38.681656, 26.030376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.732143, 38.891399, 26.082697>,  <41.558369, 39.240971, 26.169895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732143, 38.891399, 26.082697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058154, 0.268741, -0.961455,
		0.898824, 0.405012, 0.167573,
		0.434435, -0.873924, -0.217998,
		41.862473, 38.629223, 26.017298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172428, 39.428589, 25.810760>,  <41.558369, 39.240971, 26.169895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172428, 39.428589, 25.810760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.110252, 39.047310, 25.707020>,  <42.072948, 38.818542, 25.644775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.110252, 39.047310, 25.707020>,  <42.172428, 39.428589, 25.810760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110252, 39.047310, 25.707020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202796, 0.226160, -0.952747,
		0.966806, -0.200685, 0.158150,
		-0.155435, -0.953193, -0.259351,
		42.063622, 38.761353, 25.629215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775517, 39.236702, 25.349533>,  <42.172428, 39.428589, 25.810760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775517, 39.236702, 25.349533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.529224, 38.931160, 25.272173>,  <42.381451, 38.747833, 25.225758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.529224, 38.931160, 25.272173>,  <42.775517, 39.236702, 25.349533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529224, 38.931160, 25.272173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187647, 0.096236, -0.977511,
		0.765290, -0.638171, 0.084080,
		-0.615727, -0.763857, -0.193400,
		42.344505, 38.702003, 25.214153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235939, 38.686806, 25.050217>,  <42.775517, 39.236702, 25.349533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235939, 38.686806, 25.050217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.860043, 38.646679, 24.919483>,  <42.634502, 38.622604, 24.841043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.860043, 38.646679, 24.919483>,  <43.235939, 38.686806, 25.050217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860043, 38.646679, 24.919483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315093, 0.116826, -0.941843,
		0.132671, -0.988072, -0.078176,
		-0.939742, -0.100322, -0.326834,
		42.578121, 38.616585, 24.821432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310020, 38.268028, 24.444323>,  <43.235939, 38.686806, 25.050217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310020, 38.268028, 24.444323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.954147, 38.445858, 24.402704>,  <42.740623, 38.552555, 24.377733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.954147, 38.445858, 24.402704>,  <43.310020, 38.268028, 24.444323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954147, 38.445858, 24.402704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115494, -0.001344, -0.993307,
		-0.441736, -0.895742, -0.050150,
		-0.889680, 0.444571, -0.104047,
		42.687244, 38.579231, 24.371490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126244, 37.989487, 23.870121>,  <43.310020, 38.268028, 24.444323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126244, 37.989487, 23.870121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.852261, 38.278957, 23.903866>,  <42.687870, 38.452641, 23.924112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.852261, 38.278957, 23.903866>,  <43.126244, 37.989487, 23.870121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852261, 38.278957, 23.903866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113966, 0.220785, -0.968641,
		-0.719610, -0.653868, -0.233704,
		-0.684962, 0.723678, 0.084360,
		42.646770, 38.496059, 23.929174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495438, 37.895054, 23.313028>,  <43.126244, 37.989487, 23.870121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495438, 37.895054, 23.313028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.539669, 38.278950, 23.416313>,  <42.566208, 38.509289, 23.478285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.539669, 38.278950, 23.416313>,  <42.495438, 37.895054, 23.313028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539669, 38.278950, 23.416313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082609, 0.267782, -0.959932,
		-0.990429, 0.084815, 0.108894,
		0.110576, 0.959739, 0.258212,
		42.572842, 38.566872, 23.493776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092960, 38.196514, 22.790936>,  <42.495438, 37.895054, 23.313028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092960, 38.196514, 22.790936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.301842, 38.507702, 22.930689>,  <42.427170, 38.694416, 23.014542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.301842, 38.507702, 22.930689>,  <42.092960, 38.196514, 22.790936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301842, 38.507702, 22.930689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125747, 0.475441, -0.870714,
		-0.843502, 0.410753, 0.346102,
		0.522200, 0.777970, 0.349385,
		42.458500, 38.741093, 23.035505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520306, 37.717323, 23.030071>,  <42.092960, 38.196514, 22.790936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520306, 37.717323, 23.030071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.289017, 37.455551, 22.835182>,  <41.150246, 37.298489, 22.718248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.289017, 37.455551, 22.835182>,  <41.520306, 37.717323, 23.030071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289017, 37.455551, 22.835182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786997, 0.289890, 0.544609,
		-0.215167, 0.698346, -0.682653,
		-0.578220, -0.654428, -0.487222,
		41.115551, 37.259224, 22.689016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899509, 37.945580, 23.204725>,  <41.520306, 37.717323, 23.030071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899509, 37.945580, 23.204725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.853790, 37.576340, 23.057850>,  <40.826359, 37.354797, 22.969725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.853790, 37.576340, 23.057850>,  <40.899509, 37.945580, 23.204725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853790, 37.576340, 23.057850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922266, -0.038788, 0.384604,
		-0.369269, 0.382606, -0.846908,
		-0.114302, -0.923097, -0.367187,
		40.819500, 37.299412, 22.947693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130848, 37.815639, 23.082165>,  <40.899509, 37.945580, 23.204725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130848, 37.815639, 23.082165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.292171, 37.451103, 23.115137>,  <40.388966, 37.232380, 23.134920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.292171, 37.451103, 23.115137>,  <40.130848, 37.815639, 23.082165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292171, 37.451103, 23.115137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824427, -0.322800, 0.464887,
		-0.397064, -0.255450, -0.881525,
		0.403311, -0.911343, 0.082427,
		40.413166, 37.177700, 23.139866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618412, 37.309742, 22.819788>,  <40.130848, 37.815639, 23.082165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618412, 37.309742, 22.819788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872509, 37.143799, 23.080362>,  <40.024967, 37.044235, 23.236708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872509, 37.143799, 23.080362>,  <39.618412, 37.309742, 22.819788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872509, 37.143799, 23.080362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769894, -0.406895, 0.491629,
		0.061112, -0.813838, -0.577869,
		0.635238, -0.414853, 0.651435,
		40.063080, 37.019344, 23.275793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379387, 36.639172, 22.839546>,  <39.618412, 37.309742, 22.819788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379387, 36.639172, 22.839546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.618053, 36.671646, 23.158897>,  <39.761253, 36.691132, 23.350508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.618053, 36.671646, 23.158897>,  <39.379387, 36.639172, 22.839546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618053, 36.671646, 23.158897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633666, -0.562783, 0.530794,
		0.492403, -0.822609, -0.284348,
		0.596662, 0.081183, 0.798376,
		39.797050, 36.696003, 23.398411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134182, 36.070900, 23.328957>,  <39.379387, 36.639172, 22.839546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134182, 36.070900, 23.328957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.371555, 36.286354, 23.568193>,  <39.513977, 36.415627, 23.711735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.371555, 36.286354, 23.568193>,  <39.134182, 36.070900, 23.328957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371555, 36.286354, 23.568193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502868, -0.332086, 0.798024,
		0.628461, -0.774333, 0.073792,
		0.593431, 0.538635, 0.598091,
		39.549583, 36.447945, 23.747620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316280, 35.645435, 23.879562>,  <39.134182, 36.070900, 23.328957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316280, 35.645435, 23.879562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.358810, 36.009953, 24.038683>,  <39.384331, 36.228661, 24.134155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.358810, 36.009953, 24.038683>,  <39.316280, 35.645435, 23.879562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358810, 36.009953, 24.038683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388621, -0.330161, 0.860214,
		0.915242, -0.246060, 0.319040,
		0.106330, 0.911290, 0.397801,
		39.390709, 36.283340, 24.158024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537922, 34.932949, 23.909670>,  <39.316280, 35.645435, 23.879562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537922, 34.932949, 23.909670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.317905, 34.608131, 23.831654>,  <39.185894, 34.413242, 23.784843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.317905, 34.608131, 23.831654>,  <39.537922, 34.932949, 23.909670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317905, 34.608131, 23.831654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591502, -0.213937, -0.777404,
		0.589560, -0.542970, 0.597999,
		-0.550041, -0.812043, -0.195039,
		39.152893, 34.364517, 23.773142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022808, 34.464874, 23.819611>,  <39.537922, 34.932949, 23.909670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022808, 34.464874, 23.819611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.700863, 34.344833, 23.614813>,  <39.507698, 34.272808, 23.491934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.700863, 34.344833, 23.614813>,  <40.022808, 34.464874, 23.819611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700863, 34.344833, 23.614813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592452, -0.355904, -0.722726,
		0.034674, -0.885025, 0.464251,
		-0.804859, -0.300106, -0.511994,
		39.459404, 34.254803, 23.461214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219448, 33.825321, 23.592827>,  <40.022808, 34.464874, 23.819611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219448, 33.825321, 23.592827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.911949, 33.908413, 23.350878>,  <39.727448, 33.958267, 23.205708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.911949, 33.908413, 23.350878>,  <40.219448, 33.825321, 23.592827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911949, 33.908413, 23.350878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573692, -0.194029, -0.795758,
		-0.282671, -0.958748, 0.029983,
		-0.768749, 0.207736, -0.604872,
		39.681324, 33.970734, 23.169416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344048, 33.371445, 23.070286>,  <40.219448, 33.825321, 23.592827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344048, 33.371445, 23.070286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.101723, 33.654823, 22.925463>,  <39.956326, 33.824852, 22.838570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.101723, 33.654823, 22.925463>,  <40.344048, 33.371445, 23.070286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101723, 33.654823, 22.925463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623372, 0.139905, -0.769307,
		-0.494361, -0.691756, -0.526384,
		-0.605817, 0.708449, -0.362058,
		39.919979, 33.867359, 22.816845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300976, 33.284100, 22.457846>,  <40.344048, 33.371445, 23.070286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300976, 33.284100, 22.457846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.189964, 33.668221, 22.446499>,  <40.123356, 33.898693, 22.439692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.189964, 33.668221, 22.446499>,  <40.300976, 33.284100, 22.457846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189964, 33.668221, 22.446499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515387, 0.123899, -0.847953,
		-0.810774, -0.249951, -0.529311,
		-0.277528, 0.960299, -0.028367,
		40.106705, 33.956310, 22.437988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963264, 33.374523, 21.823177>,  <40.300976, 33.284100, 22.457846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963264, 33.374523, 21.823177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.052605, 33.747368, 21.937216>,  <40.106209, 33.971077, 22.005638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.052605, 33.747368, 21.937216>,  <39.963264, 33.374523, 21.823177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052605, 33.747368, 21.937216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275703, 0.220129, -0.935698,
		-0.934934, 0.287590, -0.207821,
		0.223351, 0.932113, 0.285095,
		40.119610, 34.027000, 22.022745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655346, 33.915417, 21.294514>,  <39.963264, 33.374523, 21.823177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655346, 33.915417, 21.294514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.948029, 34.105171, 21.490294>,  <40.123638, 34.219025, 21.607761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.948029, 34.105171, 21.490294>,  <39.655346, 33.915417, 21.294514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948029, 34.105171, 21.490294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476732, 0.157047, -0.864906,
		-0.487168, 0.866194, -0.111244,
		0.731706, 0.474388, 0.489451,
		40.167542, 34.247486, 21.637129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832523, 34.387646, 20.839567>,  <39.655346, 33.915417, 21.294514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832523, 34.387646, 20.839567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.156944, 34.361843, 21.072130>,  <40.351597, 34.346359, 21.211668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.156944, 34.361843, 21.072130>,  <39.832523, 34.387646, 20.839567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156944, 34.361843, 21.072130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582520, 0.180021, -0.792631,
		-0.053534, 0.981545, 0.183583,
		0.811052, -0.064508, 0.581407,
		40.400261, 34.342491, 21.246552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324295, 34.639801, 20.397982>,  <39.832523, 34.387646, 20.839567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324295, 34.639801, 20.397982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.542130, 34.469387, 20.686958>,  <40.672829, 34.367138, 20.860344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.542130, 34.469387, 20.686958>,  <40.324295, 34.639801, 20.397982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542130, 34.469387, 20.686958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708947, -0.226416, -0.667930,
		0.448133, 0.875918, 0.178732,
		0.544584, -0.426033, 0.722443,
		40.705505, 34.341576, 20.903692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.468048, 31.939812, 35.949238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809429, 31.744514, 36.022171>,  <36.014256, 31.627337, 36.065929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809429, 31.744514, 36.022171>,  <35.468048, 31.939812, 35.949238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809429, 31.744514, 36.022171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192540, -0.029722, -0.980839,
		0.484305, 0.872203, 0.068639,
		0.853450, -0.488241, 0.182328,
		36.065464, 31.598042, 36.076870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023338, 32.422329, 35.848194>,  <35.468048, 31.939812, 35.949238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023338, 32.422329, 35.848194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101536, 32.039768, 35.761406>,  <36.148453, 31.810232, 35.709332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101536, 32.039768, 35.761406>,  <36.023338, 32.422329, 35.848194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101536, 32.039768, 35.761406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061835, 0.208778, -0.976006,
		0.978754, 0.204216, -0.018325,
		0.195490, -0.956403, -0.216970,
		36.160183, 31.752848, 35.696316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646263, 32.300289, 35.472332>,  <36.023338, 32.422329, 35.848194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646263, 32.300289, 35.472332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415535, 31.982359, 35.396931>,  <36.277100, 31.791601, 35.351688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415535, 31.982359, 35.396931>,  <36.646263, 32.300289, 35.472332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415535, 31.982359, 35.396931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130641, 0.138037, -0.981773,
		0.806357, -0.590934, 0.024214,
		-0.576820, -0.794823, -0.188507,
		36.242489, 31.743912, 35.340378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017338, 32.059502, 34.973644>,  <36.646263, 32.300289, 35.472332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017338, 32.059502, 34.973644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664692, 31.873077, 34.943851>,  <36.453106, 31.761223, 34.925976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.664692, 31.873077, 34.943851>,  <37.017338, 32.059502, 34.973644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664692, 31.873077, 34.943851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125931, -0.080197, -0.988792,
		0.454866, -0.881110, 0.129394,
		-0.881611, -0.466062, -0.074480,
		36.400208, 31.733259, 34.921509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156555, 31.407284, 34.551674>,  <37.017338, 32.059502, 34.973644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156555, 31.407284, 34.551674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.780708, 31.543882, 34.542717>,  <36.555199, 31.625841, 34.537342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.780708, 31.543882, 34.542717>,  <37.156555, 31.407284, 34.551674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780708, 31.543882, 34.542717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023731, -0.130296, -0.991191,
		-0.341408, -0.930807, 0.130532,
		-0.939616, 0.341499, -0.022395,
		36.498825, 31.646332, 34.535999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955307, 31.108250, 33.848339>,  <37.156555, 31.407284, 34.551674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955307, 31.108250, 33.848339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653725, 31.344433, 33.963516>,  <36.472775, 31.486143, 34.032623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653725, 31.344433, 33.963516>,  <36.955307, 31.108250, 33.848339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653725, 31.344433, 33.963516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279350, 0.108542, -0.954035,
		-0.594571, -0.799736, 0.083109,
		-0.753955, 0.590458, 0.287942,
		36.427540, 31.521570, 34.049900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227516, 30.859159, 33.429234>,  <36.955307, 31.108250, 33.848339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227516, 30.859159, 33.429234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130196, 31.220343, 33.570923>,  <36.071804, 31.437052, 33.655937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130196, 31.220343, 33.570923>,  <36.227516, 30.859159, 33.429234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130196, 31.220343, 33.570923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419896, 0.231156, -0.877641,
		-0.874353, -0.362266, 0.322908,
		-0.243298, 0.902956, 0.354226,
		36.057205, 31.491230, 33.677189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556835, 30.928360, 33.176807>,  <36.227516, 30.859159, 33.429234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556835, 30.928360, 33.176807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.703438, 31.290815, 33.261269>,  <35.791397, 31.508289, 33.311943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.703438, 31.290815, 33.261269>,  <35.556835, 30.928360, 33.176807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703438, 31.290815, 33.261269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161258, 0.285372, -0.944753,
		-0.916335, 0.312206, 0.250712,
		0.366504, 0.906140, 0.211151,
		35.813389, 31.562658, 33.324615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148434, 31.363960, 32.726189>,  <35.556835, 30.928360, 33.176807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148434, 31.363960, 32.726189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464638, 31.587376, 32.826698>,  <35.654358, 31.721424, 32.887005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464638, 31.587376, 32.826698>,  <35.148434, 31.363960, 32.726189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464638, 31.587376, 32.826698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032454, 0.371490, -0.927869,
		-0.611593, 0.741642, 0.275538,
		0.790507, 0.558536, 0.251270,
		35.701790, 31.754936, 32.902081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981194, 31.970160, 32.399460>,  <35.148434, 31.363960, 32.726189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981194, 31.970160, 32.399460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376846, 31.997166, 32.451706>,  <35.614239, 32.013371, 32.483051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376846, 31.997166, 32.451706>,  <34.981194, 31.970160, 32.399460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376846, 31.997166, 32.451706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098632, 0.354112, -0.929987,
		-0.109040, 0.932763, 0.343604,
		0.989132, 0.067516, 0.130613,
		35.673584, 32.017422, 32.490891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227558, 32.604988, 32.060364>,  <34.981194, 31.970160, 32.399460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227558, 32.604988, 32.060364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546265, 32.365128, 32.090252>,  <35.737488, 32.221210, 32.108185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546265, 32.365128, 32.090252>,  <35.227558, 32.604988, 32.060364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546265, 32.365128, 32.090252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246749, 0.209968, -0.946059,
		0.551614, 0.772227, 0.315258,
		0.796766, -0.599649, 0.074724,
		35.785294, 32.185234, 32.112671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834415, 32.928669, 31.647621>,  <35.227558, 32.604988, 32.060364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834415, 32.928669, 31.647621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898716, 32.534065, 31.659998>,  <35.937294, 32.297302, 31.667423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898716, 32.534065, 31.659998>,  <35.834415, 32.928669, 31.647621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898716, 32.534065, 31.659998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360070, 0.029424, -0.932461,
		0.918972, 0.161032, 0.359942,
		0.160748, -0.986510, 0.030943,
		35.946941, 32.238113, 31.669281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467926, 33.283127, 31.893244>,  <35.834415, 32.928669, 31.647621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467926, 33.283127, 31.893244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301086, 33.646572, 31.884779>,  <36.200985, 33.864639, 31.879700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301086, 33.646572, 31.884779>,  <36.467926, 33.283127, 31.893244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301086, 33.646572, 31.884779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429430, -0.176497, 0.885686,
		0.801013, 0.378503, 0.463803,
		-0.417094, 0.908617, -0.021164,
		36.175957, 33.919159, 31.878429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628296, 33.614742, 32.564476>,  <36.467926, 33.283127, 31.893244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628296, 33.614742, 32.564476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.314323, 33.801041, 32.401031>,  <36.125938, 33.912819, 32.302963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.314323, 33.801041, 32.401031>,  <36.628296, 33.614742, 32.564476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314323, 33.801041, 32.401031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440339, 0.044612, 0.896723,
		0.435870, 0.883796, 0.170067,
		-0.784932, 0.465742, -0.408615,
		36.078842, 33.940762, 32.278446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452282, 34.130096, 33.089981>,  <36.628296, 33.614742, 32.564476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452282, 34.130096, 33.089981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137337, 34.061615, 32.853085>,  <35.948368, 34.020527, 32.710945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137337, 34.061615, 32.853085>,  <36.452282, 34.130096, 33.089981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137337, 34.061615, 32.853085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575917, -0.138482, 0.805694,
		-0.219952, 0.975455, 0.010437,
		-0.787363, -0.171203, -0.592241,
		35.901127, 34.010254, 32.675411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075104, 34.693222, 33.236385>,  <36.452282, 34.130096, 33.089981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075104, 34.693222, 33.236385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828117, 34.420765, 33.079018>,  <35.679924, 34.257290, 32.984596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828117, 34.420765, 33.079018>,  <36.075104, 34.693222, 33.236385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828117, 34.420765, 33.079018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625017, 0.121180, 0.771148,
		-0.477587, 0.722052, -0.500551,
		-0.617466, -0.681143, -0.393421,
		35.642879, 34.216423, 32.960991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488995, 34.959465, 33.373222>,  <36.075104, 34.693222, 33.236385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488995, 34.959465, 33.373222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.397636, 34.579002, 33.290134>,  <35.342823, 34.350727, 33.240284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.397636, 34.579002, 33.290134>,  <35.488995, 34.959465, 33.373222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397636, 34.579002, 33.290134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631257, -0.017751, 0.775371,
		-0.741183, 0.308210, -0.596367,
		-0.228391, -0.951153, -0.207717,
		35.329121, 34.293655, 33.227818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725132, 34.916031, 33.254559>,  <35.488995, 34.959465, 33.373222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725132, 34.916031, 33.254559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865665, 34.567902, 33.392605>,  <34.949986, 34.359024, 33.475433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865665, 34.567902, 33.392605>,  <34.725132, 34.916031, 33.254559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865665, 34.567902, 33.392605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618601, 0.060910, 0.783341,
		-0.702779, -0.488705, -0.516982,
		0.351333, -0.870320, 0.345119,
		34.971066, 34.306805, 33.496140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215988, 34.741253, 33.577587>,  <34.725132, 34.916031, 33.254559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215988, 34.741253, 33.577587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483852, 34.474941, 33.709225>,  <34.644569, 34.315155, 33.788208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483852, 34.474941, 33.709225>,  <34.215988, 34.741253, 33.577587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483852, 34.474941, 33.709225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441745, -0.000859, 0.897140,
		-0.597011, -0.746152, -0.294678,
		0.669656, -0.665775, 0.329096,
		34.684750, 34.275208, 33.807953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846634, 34.186523, 33.888885>,  <34.215988, 34.741253, 33.577587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846634, 34.186523, 33.888885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209469, 34.150002, 34.053253>,  <34.427170, 34.128090, 34.151875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209469, 34.150002, 34.053253>,  <33.846634, 34.186523, 33.888885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209469, 34.150002, 34.053253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420675, -0.162161, 0.892601,
		-0.014858, -0.982532, -0.185502,
		0.907090, -0.091299, 0.410917,
		34.481594, 34.122612, 34.176529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812378, 33.647434, 34.217838>,  <33.846634, 34.186523, 33.888885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812378, 33.647434, 34.217838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131233, 33.817841, 34.388992>,  <34.322544, 33.920086, 34.491684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131233, 33.817841, 34.388992>,  <33.812378, 33.647434, 34.217838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131233, 33.817841, 34.388992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408111, -0.142125, 0.901801,
		0.444998, -0.893481, 0.060571,
		0.797133, 0.426019, 0.427885,
		34.370373, 33.945644, 34.517357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929504, 33.330933, 34.787033>,  <33.812378, 33.647434, 34.217838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929504, 33.330933, 34.787033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175610, 33.635567, 34.868458>,  <34.323273, 33.818348, 34.917313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175610, 33.635567, 34.868458>,  <33.929504, 33.330933, 34.787033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175610, 33.635567, 34.868458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165319, -0.127833, 0.977920,
		0.770793, -0.635331, 0.047254,
		0.615262, 0.761586, 0.203565,
		34.360188, 33.864044, 34.929527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417850, 33.141129, 35.303261>,  <33.929504, 33.330933, 34.787033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417850, 33.141129, 35.303261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373066, 33.537525, 35.332668>,  <34.346195, 33.775364, 35.350311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.373066, 33.537525, 35.332668>,  <34.417850, 33.141129, 35.303261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373066, 33.537525, 35.332668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132359, -0.088196, 0.987270,
		0.984858, 0.100806, 0.141041,
		-0.111962, 0.990989, 0.073518,
		34.339478, 33.834824, 35.354725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737564, 33.304890, 35.937954>,  <34.417850, 33.141129, 35.303261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737564, 33.304890, 35.937954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.493294, 33.614517, 35.871143>,  <34.346733, 33.800293, 35.831059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.493294, 33.614517, 35.871143>,  <34.737564, 33.304890, 35.937954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493294, 33.614517, 35.871143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307757, -0.037648, 0.950720,
		0.729634, 0.631981, 0.261215,
		-0.610671, 0.774069, -0.167027,
		34.310093, 33.846737, 35.821033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829182, 33.767365, 36.574253>,  <34.737564, 33.304890, 35.937954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829182, 33.767365, 36.574253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500710, 33.876911, 36.373985>,  <34.303627, 33.942638, 36.253826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500710, 33.876911, 36.373985>,  <34.829182, 33.767365, 36.574253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500710, 33.876911, 36.373985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520371, 0.000808, 0.853940,
		0.234267, 0.961768, 0.141846,
		-0.821178, 0.273863, -0.500665,
		34.254356, 33.959068, 36.223785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605438, 34.246933, 36.946247>,  <34.829182, 33.767365, 36.574253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605438, 34.246933, 36.946247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288109, 34.104004, 36.749088>,  <34.097710, 34.018246, 36.630791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288109, 34.104004, 36.749088>,  <34.605438, 34.246933, 36.946247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288109, 34.104004, 36.749088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559187, 0.107574, 0.822033,
		-0.240712, 0.927763, -0.285154,
		-0.793327, -0.357327, -0.492899,
		34.050110, 33.996807, 36.601219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283409, 34.609486, 37.027336>,  <34.605438, 34.246933, 36.946247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283409, 34.609486, 37.027336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674759, 34.687294, 36.999237>,  <35.909569, 34.733978, 36.982380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674759, 34.687294, 36.999237>,  <35.283409, 34.609486, 37.027336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674759, 34.687294, 36.999237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168605, -0.553491, 0.815610,
		0.119776, -0.809819, -0.574322,
		0.978379, 0.194524, -0.070245,
		35.968273, 34.745651, 36.978165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625420, 35.203907, 36.676346>,  <35.283409, 34.609486, 37.027336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625420, 35.203907, 36.676346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990940, 35.225796, 36.837326>,  <36.210255, 35.238930, 36.933914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990940, 35.225796, 36.837326>,  <35.625420, 35.203907, 36.676346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990940, 35.225796, 36.837326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344198, 0.421685, -0.838874,
		-0.215608, 0.905090, 0.366504,
		0.913806, 0.054718, 0.402449,
		36.265083, 35.242210, 36.958061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798580, 35.995605, 36.708729>,  <35.625420, 35.203907, 36.676346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798580, 35.995605, 36.708729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.127327, 35.767879, 36.700558>,  <36.324574, 35.631245, 36.695656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.127327, 35.767879, 36.700558>,  <35.798580, 35.995605, 36.708729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127327, 35.767879, 36.700558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348952, 0.531442, -0.771882,
		0.450298, 0.627257, 0.635437,
		0.821866, -0.569315, -0.020425,
		36.373886, 35.597084, 36.694431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231754, 36.398838, 36.572559>,  <35.798580, 35.995605, 36.708729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231754, 36.398838, 36.572559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439632, 36.070190, 36.478870>,  <36.564362, 35.873001, 36.422657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439632, 36.070190, 36.478870>,  <36.231754, 36.398838, 36.572559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439632, 36.070190, 36.478870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494256, 0.512755, -0.701993,
		0.696867, 0.249060, 0.672567,
		0.519700, -0.821615, -0.234222,
		36.595543, 35.823708, 36.408604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914940, 36.558441, 36.639629>,  <36.231754, 36.398838, 36.572559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914940, 36.558441, 36.639629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.953735, 36.252022, 36.385460>,  <36.977013, 36.068172, 36.232956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.953735, 36.252022, 36.385460>,  <36.914940, 36.558441, 36.639629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953735, 36.252022, 36.385460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559388, 0.570017, -0.601802,
		0.823211, -0.297081, 0.483803,
		0.096992, -0.766044, -0.635428,
		36.982834, 36.022209, 36.194832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645885, 36.471474, 36.479507>,  <36.914940, 36.558441, 36.639629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645885, 36.471474, 36.479507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454693, 36.315704, 36.164577>,  <37.339977, 36.222244, 35.975620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454693, 36.315704, 36.164577>,  <37.645885, 36.471474, 36.479507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454693, 36.315704, 36.164577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507052, 0.609595, -0.609338,
		0.717240, -0.690468, -0.093918,
		-0.477980, -0.389420, -0.787329,
		37.311298, 36.198879, 35.928379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148254, 36.156357, 36.042412>,  <37.645885, 36.471474, 36.479507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148254, 36.156357, 36.042412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832535, 36.189724, 35.799088>,  <37.643105, 36.209743, 35.653091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832535, 36.189724, 35.799088>,  <38.148254, 36.156357, 36.042412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832535, 36.189724, 35.799088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581986, 0.417414, -0.697895,
		0.195699, -0.904879, -0.378016,
		-0.789300, 0.083422, -0.608314,
		37.595745, 36.214752, 35.616592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400089, 35.838570, 35.465668>,  <38.148254, 36.156357, 36.042412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400089, 35.838570, 35.465668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074047, 36.034897, 35.342579>,  <37.878422, 36.152695, 35.268726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074047, 36.034897, 35.342579>,  <38.400089, 35.838570, 35.465668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074047, 36.034897, 35.342579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490703, 0.302650, -0.817076,
		-0.307908, -0.817005, -0.487540,
		-0.815109, 0.490822, -0.307718,
		37.829514, 36.182144, 35.250263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256580, 35.555107, 34.788757>,  <38.400089, 35.838570, 35.465668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256580, 35.555107, 34.788757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.113571, 35.924232, 34.846149>,  <38.027767, 36.145710, 34.880585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.113571, 35.924232, 34.846149>,  <38.256580, 35.555107, 34.788757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113571, 35.924232, 34.846149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556175, 0.333811, -0.761078,
		-0.750232, -0.192301, -0.632592,
		-0.357522, 0.922817, 0.143482,
		38.006313, 36.201077, 34.889194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176411, 35.800121, 34.191189>,  <38.256580, 35.555107, 34.788757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176411, 35.800121, 34.191189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.179806, 36.147121, 34.390133>,  <38.181843, 36.355320, 34.509499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.179806, 36.147121, 34.390133>,  <38.176411, 35.800121, 34.191189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179806, 36.147121, 34.390133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574721, 0.402792, -0.712358,
		-0.818305, 0.291890, -0.495153,
		0.008487, 0.867501, 0.497363,
		38.182350, 36.407372, 34.539341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904831, 36.325504, 33.692272>,  <38.176411, 35.800121, 34.191189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904831, 36.325504, 33.692272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109177, 36.524403, 33.972775>,  <38.231785, 36.643742, 34.141075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109177, 36.524403, 33.972775>,  <37.904831, 36.325504, 33.692272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109177, 36.524403, 33.972775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526004, 0.464406, -0.712493,
		-0.679950, 0.732855, -0.024301,
		0.510869, 0.497242, 0.701258,
		38.262436, 36.673576, 34.183151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891899, 37.039307, 33.429260>,  <37.904831, 36.325504, 33.692272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891899, 37.039307, 33.429260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.208828, 37.027740, 33.673027>,  <38.398983, 37.020802, 33.819286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.208828, 37.027740, 33.673027>,  <37.891899, 37.039307, 33.429260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208828, 37.027740, 33.673027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559559, 0.432538, -0.706969,
		-0.243153, 0.901152, 0.358889,
		0.792319, -0.028918, 0.609421,
		38.446526, 37.019066, 33.855854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251713, 37.651390, 33.341652>,  <37.891899, 37.039307, 33.429260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251713, 37.651390, 33.341652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.516270, 37.386089, 33.481747>,  <38.675003, 37.226910, 33.565804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.516270, 37.386089, 33.481747>,  <38.251713, 37.651390, 33.341652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516270, 37.386089, 33.481747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631995, 0.241341, -0.736435,
		0.403914, 0.708417, 0.578791,
		0.661389, -0.663250, 0.350234,
		38.714687, 37.187115, 33.586819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803299, 38.037277, 33.281094>,  <38.251713, 37.651390, 33.341652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803299, 38.037277, 33.281094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.958088, 37.672935, 33.338497>,  <39.050961, 37.454330, 33.372940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.958088, 37.672935, 33.338497>,  <38.803299, 38.037277, 33.281094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958088, 37.672935, 33.338497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736702, 0.211805, -0.642191,
		0.554549, 0.354229, 0.752992,
		0.386970, -0.910857, 0.143505,
		39.074181, 37.399677, 33.381550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509556, 38.036125, 33.449333>,  <38.803299, 38.037277, 33.281094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509556, 38.036125, 33.449333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.480137, 37.666321, 33.299740>,  <39.462486, 37.444439, 33.209984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.480137, 37.666321, 33.299740>,  <39.509556, 38.036125, 33.449333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480137, 37.666321, 33.299740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669503, 0.232168, -0.705594,
		0.739159, -0.302278, 0.601890,
		-0.073546, -0.924514, -0.373985,
		39.458073, 37.388966, 33.187546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224445, 37.730415, 33.354069>,  <39.509556, 38.036125, 33.449333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224445, 37.730415, 33.354069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.004478, 37.493607, 33.118408>,  <39.872498, 37.351521, 32.977013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.004478, 37.493607, 33.118408>,  <40.224445, 37.730415, 33.354069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004478, 37.493607, 33.118408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664277, 0.117570, -0.738182,
		0.506284, -0.797304, 0.328609,
		-0.549921, -0.592017, -0.589154,
		39.839500, 37.316002, 32.941662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706993, 37.362839, 32.918995>,  <40.224445, 37.730415, 33.354069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706993, 37.362839, 32.918995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.342388, 37.328621, 32.758080>,  <40.123627, 37.308090, 32.661530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.342388, 37.328621, 32.758080>,  <40.706993, 37.362839, 32.918995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342388, 37.328621, 32.758080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400107, 0.042021, -0.915504,
		0.095223, -0.995448, -0.004075,
		-0.911508, -0.085547, -0.402287,
		40.068935, 37.302959, 32.637394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674736, 36.756828, 32.418011>,  <40.706993, 37.362839, 32.918995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674736, 36.756828, 32.418011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.429840, 37.061489, 32.333115>,  <40.282902, 37.244286, 32.282177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.429840, 37.061489, 32.333115>,  <40.674736, 36.756828, 32.418011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429840, 37.061489, 32.333115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381931, 0.049853, -0.922845,
		-0.692310, -0.646061, -0.321422,
		-0.612238, 0.761656, -0.212237,
		40.246170, 37.289986, 32.269444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673782, 36.594883, 31.761265>,  <40.674736, 36.756828, 32.418011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673782, 36.594883, 31.761265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.484150, 36.944294, 31.805443>,  <40.370373, 37.153942, 31.831949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.484150, 36.944294, 31.805443>,  <40.673782, 36.594883, 31.761265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484150, 36.944294, 31.805443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070415, 0.162651, -0.984168,
		-0.877662, -0.458796, -0.138619,
		-0.474079, 0.873528, 0.110446,
		40.341927, 37.206352, 31.838577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267654, 36.562458, 31.210886>,  <40.673782, 36.594883, 31.761265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267654, 36.562458, 31.210886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.315685, 36.943825, 31.321569>,  <40.344505, 37.172646, 31.387980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.315685, 36.943825, 31.321569>,  <40.267654, 36.562458, 31.210886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315685, 36.943825, 31.321569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100893, 0.265564, -0.958799,
		-0.987624, 0.143049, -0.064305,
		0.120078, 0.953421, 0.276711,
		40.351707, 37.229851, 31.404583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993252, 36.914555, 30.758133>,  <40.267654, 36.562458, 31.210886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993252, 36.914555, 30.758133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.226822, 37.198345, 30.915953>,  <40.366966, 37.368618, 31.010645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.226822, 37.198345, 30.915953>,  <39.993252, 36.914555, 30.758133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226822, 37.198345, 30.915953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396610, 0.174743, -0.901202,
		-0.708327, 0.682720, -0.179348,
		0.583929, 0.709477, 0.394549,
		40.402000, 37.411190, 31.034317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946163, 37.416759, 30.347258>,  <39.993252, 36.914555, 30.758133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946163, 37.416759, 30.347258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.301823, 37.470726, 30.522171>,  <40.515217, 37.503105, 30.627119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.301823, 37.470726, 30.522171>,  <39.946163, 37.416759, 30.347258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301823, 37.470726, 30.522171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405638, 0.209980, -0.889588,
		-0.211841, 0.968352, 0.131976,
		0.889146, 0.134917, 0.437283,
		40.568565, 37.511200, 30.653357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154701, 38.062847, 30.001858>,  <39.946163, 37.416759, 30.347258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154701, 38.062847, 30.001858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.468052, 37.888390, 30.178986>,  <40.656063, 37.783714, 30.285263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.468052, 37.888390, 30.178986>,  <40.154701, 38.062847, 30.001858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468052, 37.888390, 30.178986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516910, 0.061555, -0.853824,
		0.345134, 0.897768, 0.273669,
		0.783381, -0.436146, 0.442821,
		40.703068, 37.757545, 30.311832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702290, 38.496517, 29.947924>,  <40.154701, 38.062847, 30.001858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702290, 38.496517, 29.947924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.893684, 38.152863, 30.020512>,  <41.008522, 37.946671, 30.064064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.893684, 38.152863, 30.020512>,  <40.702290, 38.496517, 29.947924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893684, 38.152863, 30.020512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548157, 0.130801, -0.826084,
		0.685984, 0.494746, 0.533528,
		0.478487, -0.859138, 0.181471,
		41.037231, 37.895123, 30.074953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354721, 38.610031, 29.733734>,  <40.702290, 38.496517, 29.947924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354721, 38.610031, 29.733734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.392483, 38.214138, 29.776657>,  <41.415138, 37.976601, 29.802410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.392483, 38.214138, 29.776657>,  <41.354721, 38.610031, 29.733734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392483, 38.214138, 29.776657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644075, -0.021469, -0.764661,
		0.759115, 0.141300, 0.635437,
		0.094404, -0.989734, 0.107305,
		41.420803, 37.917217, 29.808849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036572, 38.536194, 29.676781>,  <41.354721, 38.610031, 29.733734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036572, 38.536194, 29.676781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.878098, 38.186954, 29.563120>,  <41.783012, 37.977413, 29.494923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.878098, 38.186954, 29.563120>,  <42.036572, 38.536194, 29.676781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878098, 38.186954, 29.563120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645158, -0.044517, -0.762751,
		0.653304, -0.485515, 0.580921,
		-0.396188, -0.873094, -0.284151,
		41.759243, 37.925026, 29.477875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631634, 38.064926, 29.529385>,  <42.036572, 38.536194, 29.676781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631634, 38.064926, 29.529385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.307640, 37.936573, 29.333036>,  <42.113243, 37.859562, 29.215227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.307640, 37.936573, 29.333036>,  <42.631634, 38.064926, 29.529385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307640, 37.936573, 29.333036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536003, -0.065457, -0.841675,
		0.237949, -0.944854, 0.225014,
		-0.809989, -0.320884, -0.490869,
		42.064644, 37.840309, 29.185776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886269, 37.588589, 29.004210>,  <42.631634, 38.064926, 29.529385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886269, 37.588589, 29.004210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.524914, 37.696926, 28.871225>,  <42.308102, 37.761929, 28.791435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.524914, 37.696926, 28.871225>,  <42.886269, 37.588589, 29.004210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524914, 37.696926, 28.871225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330757, -0.053333, -0.942208,
		-0.272919, -0.961146, -0.041402,
		-0.903391, 0.270841, -0.332461,
		42.253895, 37.778179, 28.771486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148994, 36.912582, 28.874357>,  <42.886269, 37.588589, 29.004210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148994, 36.912582, 28.874357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.512104, 36.751534, 28.921413>,  <43.729969, 36.654903, 28.949648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.512104, 36.751534, 28.921413>,  <43.148994, 36.912582, 28.874357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512104, 36.751534, 28.921413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294124, -0.411020, 0.862875,
		-0.299064, -0.817896, -0.491535,
		0.907773, -0.402627, 0.117642,
		43.784435, 36.630745, 28.956705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009380, 36.244629, 29.193960>,  <43.148994, 36.912582, 28.874357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009380, 36.244629, 29.193960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.395786, 36.307076, 29.276365>,  <43.627632, 36.344543, 29.325808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.395786, 36.307076, 29.276365>,  <43.009380, 36.244629, 29.193960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395786, 36.307076, 29.276365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137267, -0.365504, 0.920633,
		0.219021, -0.917625, -0.331653,
		0.966016, 0.156113, 0.206013,
		43.685593, 36.353909, 29.338169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173973, 35.709717, 29.493904>,  <43.009380, 36.244629, 29.193960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173973, 35.709717, 29.493904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.480175, 35.935421, 29.617596>,  <43.663895, 36.070843, 29.691811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.480175, 35.935421, 29.617596>,  <43.173973, 35.709717, 29.493904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480175, 35.935421, 29.617596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220614, -0.221293, 0.949926,
		0.604432, -0.795390, -0.044917,
		0.765501, 0.564256, 0.309231,
		43.709824, 36.104698, 29.710365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602768, 35.308640, 29.881857>,  <43.173973, 35.709717, 29.493904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602768, 35.308640, 29.881857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.678951, 35.678459, 30.013880>,  <43.724663, 35.900349, 30.093094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.678951, 35.678459, 30.013880>,  <43.602768, 35.308640, 29.881857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678951, 35.678459, 30.013880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012363, -0.333928, 0.942517,
		0.981617, -0.183593, -0.052170,
		0.190461, 0.924546, 0.330059,
		43.736088, 35.955822, 30.112898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063309, 35.259830, 30.407274>,  <43.602768, 35.308640, 29.881857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063309, 35.259830, 30.407274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.897797, 35.617058, 30.477947>,  <43.798489, 35.831394, 30.520351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.897797, 35.617058, 30.477947>,  <44.063309, 35.259830, 30.407274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897797, 35.617058, 30.477947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208597, -0.281922, 0.936486,
		0.886158, 0.350641, 0.302944,
		-0.413778, 0.893068, 0.176685,
		43.773663, 35.884979, 30.530952>
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
