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
	<24.125057, 35.001991, 35.266914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359165, 35.083923, 34.953098>,  <24.499630, 35.133083, 34.764809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359165, 35.083923, 34.953098>,  <24.125057, 35.001991, 35.266914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.359165, 35.083923, 34.953098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495832, 0.675166, 0.546170,
		0.641568, -0.708657, 0.293593,
		0.585271, 0.204832, -0.784539,
		24.534746, 35.145374, 34.717735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903919, 34.718647, 35.241283>,  <24.125057, 35.001991, 35.266914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.903919, 34.718647, 35.241283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846653, 35.068596, 35.056202>,  <24.812294, 35.278564, 34.945152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846653, 35.068596, 35.056202>,  <24.903919, 34.718647, 35.241283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.846653, 35.068596, 35.056202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611294, 0.445849, 0.653863,
		0.778346, -0.189240, -0.598636,
		-0.143164, 0.874875, -0.462707,
		24.803703, 35.331059, 34.917389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.555017, 35.035732, 35.013180>,  <24.903919, 34.718647, 35.241283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.555017, 35.035732, 35.013180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288971, 35.334373, 35.018784>,  <25.129343, 35.513557, 35.022144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.288971, 35.334373, 35.018784>,  <25.555017, 35.035732, 35.013180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288971, 35.334373, 35.018784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666138, 0.584743, 0.462964,
		0.337460, 0.317258, -0.886266,
		-0.665117, 0.746608, 0.014010,
		25.089436, 35.558357, 35.022987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797344, 35.719955, 34.681084>,  <25.555017, 35.035732, 35.013180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797344, 35.719955, 34.681084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529203, 35.755234, 34.975796>,  <25.368319, 35.776402, 35.152622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529203, 35.755234, 34.975796>,  <25.797344, 35.719955, 34.681084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529203, 35.755234, 34.975796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683395, 0.460267, 0.566679,
		-0.289140, 0.883389, -0.368813,
		-0.670350, 0.088195, 0.736785,
		25.328098, 35.781693, 35.196831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684120, 36.491787, 34.720695>,  <25.797344, 35.719955, 34.681084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684120, 36.491787, 34.720695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575499, 36.292370, 35.049992>,  <25.510326, 36.172722, 35.247570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575499, 36.292370, 35.049992>,  <25.684120, 36.491787, 34.720695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575499, 36.292370, 35.049992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366479, 0.737373, 0.567427,
		-0.889917, 0.455785, -0.017531,
		-0.271552, -0.498538, 0.823237,
		25.494034, 36.142807, 35.296963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.008183, 36.673260, 34.994923>,  <25.684120, 36.491787, 34.720695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.008183, 36.673260, 34.994923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323730, 36.554291, 35.210037>,  <25.513060, 36.482910, 35.339108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323730, 36.554291, 35.210037>,  <25.008183, 36.673260, 34.994923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323730, 36.554291, 35.210037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153451, 0.942698, 0.296266,
		-0.595091, -0.151191, 0.789308,
		0.788872, -0.297426, 0.537791,
		25.560392, 36.465065, 35.371376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947357, 36.939266, 35.745319>,  <25.008183, 36.673260, 34.994923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947357, 36.939266, 35.745319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331293, 36.874500, 35.653675>,  <25.561655, 36.835640, 35.598690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331293, 36.874500, 35.653675>,  <24.947357, 36.939266, 35.745319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.331293, 36.874500, 35.653675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242575, 0.889237, 0.387832,
		0.140940, -0.427834, 0.892801,
		0.959840, -0.161911, -0.229111,
		25.619246, 36.825928, 35.584942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208555, 37.257401, 36.234364>,  <24.947357, 36.939266, 35.745319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208555, 37.257401, 36.234364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513865, 37.220886, 35.978527>,  <25.697050, 37.198978, 35.825024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513865, 37.220886, 35.978527>,  <25.208555, 37.257401, 36.234364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513865, 37.220886, 35.978527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354503, 0.886806, 0.296485,
		0.540129, -0.453037, 0.709238,
		0.763275, -0.091287, -0.639592,
		25.742847, 37.193501, 35.786648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790766, 37.557945, 36.541885>,  <25.208555, 37.257401, 36.234364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790766, 37.557945, 36.541885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860508, 37.549114, 36.148109>,  <25.902353, 37.543816, 35.911846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860508, 37.549114, 36.148109>,  <25.790766, 37.557945, 36.541885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860508, 37.549114, 36.148109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388155, 0.920337, 0.048107,
		0.904951, -0.390502, 0.169035,
		0.174355, -0.022077, -0.984435,
		25.912815, 37.542492, 35.852779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373812, 37.960056, 36.506233>,  <25.790766, 37.557945, 36.541885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373812, 37.960056, 36.506233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261658, 37.907642, 36.125874>,  <26.194365, 37.876194, 35.897655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261658, 37.907642, 36.125874>,  <26.373812, 37.960056, 36.506233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261658, 37.907642, 36.125874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426327, 0.870568, -0.245675,
		0.860017, -0.474279, -0.188230,
		-0.280386, -0.131037, -0.950901,
		26.177542, 37.868332, 35.840603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868414, 38.378986, 36.166943>,  <26.373812, 37.960056, 36.506233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868414, 38.378986, 36.166943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565731, 38.365196, 35.905804>,  <26.384121, 38.356922, 35.749119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565731, 38.365196, 35.905804>,  <26.868414, 38.378986, 36.166943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565731, 38.365196, 35.905804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113884, 0.976388, -0.183568,
		0.643761, -0.213256, -0.734911,
		-0.756705, -0.034480, -0.652847,
		26.338720, 38.354851, 35.709949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073254, 38.761139, 35.540173>,  <26.868414, 38.378986, 36.166943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073254, 38.761139, 35.540173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673489, 38.769974, 35.529705>,  <26.433630, 38.775276, 35.523426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673489, 38.769974, 35.529705>,  <27.073254, 38.761139, 35.540173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673489, 38.769974, 35.529705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028183, 0.964634, -0.262083,
		0.019455, -0.262666, -0.964691,
		-0.999413, 0.022090, -0.026169,
		26.373665, 38.776600, 35.521854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993216, 39.391800, 35.159325>,  <27.073254, 38.761139, 35.540173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993216, 39.391800, 35.159325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626810, 39.311771, 35.298401>,  <26.406967, 39.263756, 35.381847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626810, 39.311771, 35.298401>,  <26.993216, 39.391800, 35.159325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626810, 39.311771, 35.298401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254720, 0.959685, -0.118842,
		-0.309899, -0.197425, -0.930046,
		-0.916014, -0.200072, 0.347693,
		26.352007, 39.251751, 35.402710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492096, 39.696987, 34.705173>,  <26.993216, 39.391800, 35.159325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492096, 39.696987, 34.705173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304815, 39.663219, 35.057007>,  <26.192448, 39.642960, 35.268105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304815, 39.663219, 35.057007>,  <26.492096, 39.696987, 34.705173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304815, 39.663219, 35.057007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066566, 0.995967, 0.060153,
		-0.881111, -0.030386, -0.471933,
		-0.468201, -0.084416, 0.879580,
		26.164354, 39.637894, 35.320881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854780, 40.271408, 34.727634>,  <26.492096, 39.696987, 34.705173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854780, 40.271408, 34.727634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918440, 40.177292, 35.111156>,  <25.956636, 40.120823, 35.341270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918440, 40.177292, 35.111156>,  <25.854780, 40.271408, 34.727634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918440, 40.177292, 35.111156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124588, 0.968208, 0.216913,
		-0.979362, 0.084934, 0.183404,
		0.159150, -0.235286, 0.958807,
		25.966185, 40.106705, 35.398800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.458311, 40.727531, 35.014297>,  <25.854780, 40.271408, 34.727634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.458311, 40.727531, 35.014297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720625, 40.605705, 35.290611>,  <25.878014, 40.532612, 35.456402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720625, 40.605705, 35.290611>,  <25.458311, 40.727531, 35.014297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720625, 40.605705, 35.290611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096564, 0.941337, 0.323357,
		-0.748747, -0.145347, 0.646724,
		0.655785, -0.304563, 0.690788,
		25.917360, 40.514336, 35.497849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222218, 41.045784, 35.626133>,  <25.458311, 40.727531, 35.014297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222218, 41.045784, 35.626133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604195, 40.944771, 35.688496>,  <25.833382, 40.884163, 35.725914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604195, 40.944771, 35.688496>,  <25.222218, 41.045784, 35.626133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604195, 40.944771, 35.688496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193098, 0.927608, 0.319777,
		-0.225377, -0.275263, 0.934578,
		0.954944, -0.252536, 0.155909,
		25.890678, 40.869011, 35.735268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.359159, 41.260101, 36.240871>,  <25.222218, 41.045784, 35.626133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.359159, 41.260101, 36.240871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718714, 41.226261, 36.068897>,  <25.934446, 41.205959, 35.965714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718714, 41.226261, 36.068897>,  <25.359159, 41.260101, 36.240871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718714, 41.226261, 36.068897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176327, 0.968072, 0.178172,
		0.401136, -0.235966, 0.885104,
		0.898887, -0.084596, -0.429936,
		25.988380, 41.200882, 35.939915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802244, 41.541233, 36.768917>,  <25.359159, 41.260101, 36.240871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802244, 41.541233, 36.768917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993229, 41.554237, 36.417698>,  <26.107821, 41.562042, 36.206966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993229, 41.554237, 36.417698>,  <25.802244, 41.541233, 36.768917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993229, 41.554237, 36.417698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257836, 0.950137, 0.175389,
		0.839970, -0.310134, 0.445273,
		0.477464, 0.032514, -0.878049,
		26.136469, 41.563992, 36.154282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549742, 41.540195, 36.892834>,  <25.802244, 41.541233, 36.768917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549742, 41.540195, 36.892834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496323, 41.719772, 36.539425>,  <26.464272, 41.827518, 36.327377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496323, 41.719772, 36.539425>,  <26.549742, 41.540195, 36.892834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496323, 41.719772, 36.539425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533316, 0.783973, 0.317743,
		0.835307, -0.428764, -0.344127,
		-0.133549, 0.448941, -0.883525,
		26.456259, 41.854454, 36.274368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197727, 41.728985, 36.756481>,  <26.549742, 41.540195, 36.892834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197727, 41.728985, 36.756481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957556, 41.943016, 36.518764>,  <26.813452, 42.071434, 36.376137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957556, 41.943016, 36.518764>,  <27.197727, 41.728985, 36.756481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957556, 41.943016, 36.518764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611543, 0.786087, 0.089902,
		0.515266, -0.309453, -0.799212,
		-0.600430, 0.535077, -0.594287,
		26.777428, 42.103539, 36.340477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678505, 42.179897, 36.479855>,  <27.197727, 41.728985, 36.756481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678505, 42.179897, 36.479855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329662, 42.329094, 36.353168>,  <27.120358, 42.418610, 36.277157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329662, 42.329094, 36.353168>,  <27.678505, 42.179897, 36.479855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329662, 42.329094, 36.353168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475573, 0.798433, -0.369236,
		0.115158, -0.472636, -0.873701,
		-0.872106, 0.372988, -0.316719,
		27.068031, 42.440990, 36.258152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732878, 42.314930, 35.719357>,  <27.678505, 42.179897, 36.479855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732878, 42.314930, 35.719357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451277, 42.550682, 35.877857>,  <27.282316, 42.692135, 35.972958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451277, 42.550682, 35.877857>,  <27.732878, 42.314930, 35.719357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451277, 42.550682, 35.877857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453828, 0.802503, -0.387337,
		-0.546279, -0.092857, -0.832441,
		-0.704003, 0.589379, 0.396249,
		27.240076, 42.727497, 35.996731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624126, 42.835835, 35.201462>,  <27.732878, 42.314930, 35.719357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624126, 42.835835, 35.201462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464041, 43.003506, 35.527435>,  <27.367989, 43.104107, 35.723019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464041, 43.003506, 35.527435>,  <27.624126, 42.835835, 35.201462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464041, 43.003506, 35.527435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325660, 0.896267, -0.301082,
		-0.856605, 0.144893, -0.495211,
		-0.400216, 0.419179, 0.814933,
		27.343975, 43.129261, 35.771915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194273, 43.446705, 35.005497>,  <27.624126, 42.835835, 35.201462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194273, 43.446705, 35.005497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327194, 43.492821, 35.379936>,  <27.406948, 43.520489, 35.604599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327194, 43.492821, 35.379936>,  <27.194273, 43.446705, 35.005497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327194, 43.492821, 35.379936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511589, 0.811780, -0.281584,
		-0.792370, 0.572470, 0.210780,
		0.332305, 0.115286, 0.936100,
		27.426886, 43.527405, 35.660767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087959, 44.194832, 35.410454>,  <27.194273, 43.446705, 35.005497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087959, 44.194832, 35.410454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389082, 43.994480, 35.581287>,  <27.569756, 43.874271, 35.683788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389082, 43.994480, 35.581287>,  <27.087959, 44.194832, 35.410454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389082, 43.994480, 35.581287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629616, 0.737181, -0.245251,
		-0.191998, 0.453527, 0.870316,
		0.752808, -0.500877, 0.427085,
		27.614923, 43.844215, 35.709412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468750, 44.355217, 36.052082>,  <27.087959, 44.194832, 35.410454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468750, 44.355217, 36.052082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677181, 44.190617, 35.752979>,  <27.802240, 44.091858, 35.573517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677181, 44.190617, 35.752979>,  <27.468750, 44.355217, 36.052082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677181, 44.190617, 35.752979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623512, 0.781802, 0.004264,
		0.582847, -0.468460, 0.663954,
		0.521078, -0.411498, -0.747761,
		27.833506, 44.067169, 35.528652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208996, 44.387375, 36.172741>,  <27.468750, 44.355217, 36.052082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208996, 44.387375, 36.172741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166500, 44.399151, 35.775181>,  <28.141003, 44.406216, 35.536644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166500, 44.399151, 35.775181>,  <28.208996, 44.387375, 36.172741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166500, 44.399151, 35.775181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496449, 0.867634, -0.027364,
		0.861540, -0.496330, -0.106794,
		-0.106240, 0.029443, -0.993905,
		28.134628, 44.407982, 35.477009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815598, 44.520462, 35.860470>,  <28.208996, 44.387375, 36.172741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815598, 44.520462, 35.860470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549749, 44.632309, 35.583317>,  <28.390240, 44.699417, 35.417023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549749, 44.632309, 35.583317>,  <28.815598, 44.520462, 35.860470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549749, 44.632309, 35.583317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445207, 0.892941, -0.066690,
		0.600058, -0.352802, -0.717956,
		-0.664621, 0.279621, -0.692886,
		28.350363, 44.716194, 35.375450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158550, 44.818893, 35.228283>,  <28.815598, 44.520462, 35.860470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158550, 44.818893, 35.228283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801035, 44.979065, 35.309082>,  <28.586527, 45.075169, 35.357559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801035, 44.979065, 35.309082>,  <29.158550, 44.818893, 35.228283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801035, 44.979065, 35.309082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367748, 0.912142, -0.180995,
		-0.256724, -0.087488, -0.962517,
		-0.893787, 0.400429, 0.201995,
		28.532900, 45.099194, 35.369682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441250, 45.259853, 34.810841>,  <29.158550, 44.818893, 35.228283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441250, 45.259853, 34.810841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519762, 45.359070, 34.431377>,  <29.566870, 45.418598, 34.203701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519762, 45.359070, 34.431377>,  <29.441250, 45.259853, 34.810841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519762, 45.359070, 34.431377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302596, -0.935578, -0.182013,
		-0.932689, -0.251334, -0.258693,
		0.196281, 0.248041, -0.948657,
		29.578646, 45.433483, 34.146782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142836, 44.684246, 34.533283>,  <29.441250, 45.259853, 34.810841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142836, 44.684246, 34.533283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428596, 44.847580, 34.305988>,  <29.600052, 44.945580, 34.169613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428596, 44.847580, 34.305988>,  <29.142836, 44.684246, 34.533283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428596, 44.847580, 34.305988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425376, -0.898224, -0.110675,
		-0.555597, -0.162648, -0.815388,
		0.714400, 0.408337, -0.568237,
		29.642916, 44.970081, 34.135517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049042, 44.354053, 33.896564>,  <29.142836, 44.684246, 34.533283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049042, 44.354053, 33.896564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425598, 44.465511, 33.972607>,  <29.651531, 44.532387, 34.018230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425598, 44.465511, 33.972607>,  <29.049042, 44.354053, 33.896564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425598, 44.465511, 33.972607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291390, -0.955675, -0.042166,
		0.169929, 0.095089, -0.980858,
		0.941390, 0.278647, 0.190105,
		29.708015, 44.549107, 34.029636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441578, 43.932270, 33.416096>,  <29.049042, 44.354053, 33.896564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441578, 43.932270, 33.416096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650408, 44.060791, 33.732121>,  <29.775705, 44.137905, 33.921734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650408, 44.060791, 33.732121>,  <29.441578, 43.932270, 33.416096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650408, 44.060791, 33.732121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414822, -0.905040, 0.093949,
		0.745225, 0.278687, -0.605784,
		0.522076, 0.321305, 0.790063,
		29.807030, 44.157181, 33.969139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081335, 43.958473, 33.497066>,  <29.441578, 43.932270, 33.416096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081335, 43.958473, 33.497066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076344, 43.975853, 33.896656>,  <30.073349, 43.986279, 34.136410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076344, 43.975853, 33.896656>,  <30.081335, 43.958473, 33.497066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076344, 43.975853, 33.896656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448594, -0.892631, 0.044423,
		0.893649, 0.448690, -0.008352,
		-0.012477, 0.043445, 0.998978,
		30.072601, 43.988888, 34.196350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746424, 43.648434, 33.760147>,  <30.081335, 43.958473, 33.497066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746424, 43.648434, 33.760147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430294, 43.632118, 34.004681>,  <30.240616, 43.622330, 34.151402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430294, 43.632118, 34.004681>,  <30.746424, 43.648434, 33.760147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430294, 43.632118, 34.004681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077059, -0.996476, 0.033137,
		0.607824, 0.073297, 0.790681,
		-0.790324, -0.040788, 0.611331,
		30.193197, 43.619881, 34.188080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969742, 43.320572, 34.356407>,  <30.746424, 43.648434, 33.760147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969742, 43.320572, 34.356407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573477, 43.266033, 34.356983>,  <30.335718, 43.233311, 34.357330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573477, 43.266033, 34.356983>,  <30.969742, 43.320572, 34.356407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573477, 43.266033, 34.356983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135743, -0.985178, 0.104870,
		-0.012878, 0.104087, 0.994485,
		-0.990660, -0.136345, 0.001442,
		30.276279, 43.225128, 34.357414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859419, 42.867332, 34.861012>,  <30.969742, 43.320572, 34.356407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859419, 42.867332, 34.861012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518917, 42.844959, 34.652306>,  <30.314615, 42.831535, 34.527084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518917, 42.844959, 34.652306>,  <30.859419, 42.867332, 34.861012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518917, 42.844959, 34.652306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020760, -0.997114, 0.073020,
		-0.524340, 0.051327, 0.849961,
		-0.851256, -0.055933, -0.521762,
		30.263540, 42.828178, 34.495777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420832, 42.484119, 35.311874>,  <30.859419, 42.867332, 34.861012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420832, 42.484119, 35.311874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233835, 42.483524, 34.958275>,  <30.121637, 42.483166, 34.746117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233835, 42.483524, 34.958275>,  <30.420832, 42.484119, 35.311874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233835, 42.483524, 34.958275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309199, -0.936558, 0.165091,
		-0.828160, 0.350509, 0.437373,
		-0.467491, -0.001486, -0.883996,
		30.093588, 42.483078, 34.693077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641663, 42.408226, 35.427029>,  <30.420832, 42.484119, 35.311874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641663, 42.408226, 35.427029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754721, 42.260246, 35.073025>,  <29.822556, 42.171459, 34.860622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754721, 42.260246, 35.073025>,  <29.641663, 42.408226, 35.427029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754721, 42.260246, 35.073025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361591, -0.895665, 0.258917,
		-0.888460, 0.246829, -0.386929,
		0.282651, -0.369947, -0.885013,
		29.839516, 42.149261, 34.807522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047585, 42.058037, 35.083118>,  <29.641663, 42.408226, 35.427029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047585, 42.058037, 35.083118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404354, 41.909184, 34.980370>,  <29.618416, 41.819870, 34.918720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404354, 41.909184, 34.980370>,  <29.047585, 42.058037, 35.083118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404354, 41.909184, 34.980370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313437, -0.918261, 0.241978,
		-0.325923, -0.135314, -0.935663,
		0.891926, -0.372138, -0.256870,
		29.671932, 41.797543, 34.903309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705442, 41.490154, 34.798935>,  <29.047585, 42.058037, 35.083118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705442, 41.490154, 34.798935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090929, 41.408482, 34.730167>,  <29.322222, 41.359478, 34.688908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090929, 41.408482, 34.730167>,  <28.705442, 41.490154, 34.798935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090929, 41.408482, 34.730167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190385, -0.977256, 0.093406,
		-0.187082, -0.057286, -0.980673,
		0.963719, -0.204180, -0.171920,
		29.380045, 41.347229, 34.678593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804461, 40.851570, 34.389397>,  <28.705442, 41.490154, 34.798935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804461, 40.851570, 34.389397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175093, 40.885815, 34.535885>,  <29.397472, 40.906361, 34.623779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175093, 40.885815, 34.535885>,  <28.804461, 40.851570, 34.389397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175093, 40.885815, 34.535885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061134, -0.995081, 0.077949,
		0.371092, -0.049837, -0.927258,
		0.926582, 0.085614, 0.366220,
		29.453068, 40.911499, 34.645752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141562, 40.387867, 33.984905>,  <28.804461, 40.851570, 34.389397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141562, 40.387867, 33.984905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345499, 40.463959, 34.320496>,  <29.467861, 40.509613, 34.521851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345499, 40.463959, 34.320496>,  <29.141562, 40.387867, 33.984905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345499, 40.463959, 34.320496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000122, -0.975228, 0.221200,
		0.860268, -0.112880, -0.497189,
		0.509842, 0.190231, 0.838971,
		29.498451, 40.521027, 34.572186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630114, 39.777424, 34.045151>,  <29.141562, 40.387867, 33.984905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630114, 39.777424, 34.045151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609196, 39.977898, 34.390656>,  <29.596645, 40.098183, 34.597958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609196, 39.977898, 34.390656>,  <29.630114, 39.777424, 34.045151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609196, 39.977898, 34.390656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095421, -0.858476, 0.503898,
		0.994062, 0.108773, -0.002929,
		-0.052296, 0.501186, 0.863758,
		29.593508, 40.128254, 34.649784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124109, 39.493828, 34.495647>,  <29.630114, 39.777424, 34.045151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124109, 39.493828, 34.495647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834188, 39.664753, 34.711819>,  <29.660236, 39.767307, 34.841522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834188, 39.664753, 34.711819>,  <30.124109, 39.493828, 34.495647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834188, 39.664753, 34.711819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192265, -0.878707, 0.436931,
		0.661585, 0.212783, 0.719047,
		-0.724803, 0.427315, 0.540429,
		29.616747, 39.792946, 34.873947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233913, 39.211903, 35.135647>,  <30.124109, 39.493828, 34.495647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233913, 39.211903, 35.135647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853159, 39.333843, 35.123161>,  <29.624706, 39.407009, 35.115669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853159, 39.333843, 35.123161>,  <30.233913, 39.211903, 35.135647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853159, 39.333843, 35.123161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305399, -0.935299, 0.178740,
		0.025292, 0.179674, 0.983401,
		-0.951889, 0.304850, -0.031216,
		29.567593, 39.425297, 35.113796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057888, 39.032505, 35.728386>,  <30.233913, 39.211903, 35.135647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057888, 39.032505, 35.728386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731144, 39.055622, 35.498814>,  <29.535097, 39.069492, 35.361069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731144, 39.055622, 35.498814>,  <30.057888, 39.032505, 35.728386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731144, 39.055622, 35.498814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355834, -0.833587, 0.422511,
		-0.454002, 0.549357, 0.701491,
		-0.816862, 0.057793, -0.573930,
		29.486086, 39.072960, 35.326633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546955, 38.817944, 36.151775>,  <30.057888, 39.032505, 35.728386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546955, 38.817944, 36.151775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390619, 38.780407, 35.785511>,  <29.296818, 38.757885, 35.565750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390619, 38.780407, 35.785511>,  <29.546955, 38.817944, 36.151775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390619, 38.780407, 35.785511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368657, -0.895558, 0.249133,
		-0.843408, 0.434937, 0.315426,
		-0.390840, -0.093837, -0.915663,
		29.273367, 38.752254, 35.510811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883183, 38.664402, 36.283836>,  <29.546955, 38.817944, 36.151775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883183, 38.664402, 36.283836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936710, 38.553158, 35.903362>,  <28.968828, 38.486412, 35.675079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936710, 38.553158, 35.903362>,  <28.883183, 38.664402, 36.283836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936710, 38.553158, 35.903362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431148, -0.880556, 0.196803,
		-0.892302, 0.383764, -0.237743,
		0.133820, -0.278110, -0.951182,
		28.976856, 38.469723, 35.618008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298191, 38.314144, 36.139816>,  <28.883183, 38.664402, 36.283836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298191, 38.314144, 36.139816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525585, 38.188725, 35.835575>,  <28.662022, 38.113472, 35.653030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525585, 38.188725, 35.835575>,  <28.298191, 38.314144, 36.139816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525585, 38.188725, 35.835575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357873, -0.926717, 0.114553,
		-0.740778, 0.207076, -0.639037,
		0.568485, -0.313552, -0.760598,
		28.696131, 38.094658, 35.607395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823862, 37.918079, 35.616684>,  <28.298191, 38.314144, 36.139816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823862, 37.918079, 35.616684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205673, 37.805119, 35.578468>,  <28.434759, 37.737343, 35.555538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205673, 37.805119, 35.578468>,  <27.823862, 37.918079, 35.616684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205673, 37.805119, 35.578468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237519, -0.914051, 0.328779,
		-0.180177, -0.291136, -0.939562,
		0.954527, -0.282402, -0.095540,
		28.492031, 37.720398, 35.549805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760107, 37.410587, 35.203743>,  <27.823862, 37.918079, 35.616684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760107, 37.410587, 35.203743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111620, 37.342102, 35.381924>,  <28.322527, 37.301010, 35.488831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111620, 37.342102, 35.381924>,  <27.760107, 37.410587, 35.203743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111620, 37.342102, 35.381924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230496, -0.969608, 0.082047,
		0.417868, -0.174776, -0.891538,
		0.878782, -0.171211, 0.445453,
		28.375256, 37.290737, 35.515560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163662, 36.836628, 34.907955>,  <27.760107, 37.410587, 35.203743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163662, 36.836628, 34.907955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372036, 36.856064, 35.248840>,  <28.497061, 36.867725, 35.453373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372036, 36.856064, 35.248840>,  <28.163662, 36.836628, 34.907955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372036, 36.856064, 35.248840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238280, -0.950413, 0.199843,
		0.819663, -0.307171, -0.483526,
		0.520936, 0.048589, 0.852212,
		28.528316, 36.870640, 35.504505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551113, 36.304462, 34.943279>,  <28.163662, 36.836628, 34.907955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551113, 36.304462, 34.943279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540077, 36.387589, 35.334393>,  <28.533457, 36.437466, 35.569061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540077, 36.387589, 35.334393>,  <28.551113, 36.304462, 34.943279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540077, 36.387589, 35.334393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304379, -0.933449, 0.189807,
		0.952151, -0.292379, 0.089007,
		-0.027588, 0.207817, 0.977779,
		28.531801, 36.449932, 35.627728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850830, 35.765060, 35.227180>,  <28.551113, 36.304462, 34.943279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850830, 35.765060, 35.227180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628288, 35.913284, 35.524677>,  <28.494762, 36.002220, 35.703175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628288, 35.913284, 35.524677>,  <28.850830, 35.765060, 35.227180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628288, 35.913284, 35.524677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395303, -0.905318, 0.155357,
		0.730893, -0.207570, 0.650162,
		-0.556356, 0.370560, 0.743743,
		28.461382, 36.024452, 35.747799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795885, 35.223248, 35.772736>,  <28.850830, 35.765060, 35.227180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795885, 35.223248, 35.772736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503151, 35.491951, 35.818626>,  <28.327511, 35.653172, 35.846161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503151, 35.491951, 35.818626>,  <28.795885, 35.223248, 35.772736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503151, 35.491951, 35.818626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647093, -0.737789, 0.192189,
		0.213749, 0.066411, 0.974629,
		-0.731834, 0.671756, 0.114728,
		28.283600, 35.693478, 35.853046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989462, 34.610477, 35.416481>,  <28.795885, 35.223248, 35.772736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989462, 34.610477, 35.416481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644655, 34.446564, 35.535816>,  <28.437771, 34.348217, 35.607418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644655, 34.446564, 35.535816>,  <28.989462, 34.610477, 35.416481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644655, 34.446564, 35.535816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108301, 0.723885, 0.681367,
		-0.495173, 0.555041, -0.668381,
		-0.862018, -0.409781, 0.298337,
		28.386049, 34.323631, 35.625317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324709, 35.145264, 35.304890>,  <28.989462, 34.610477, 35.416481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324709, 35.145264, 35.304890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715925, 35.221634, 35.271450>,  <29.950655, 35.267456, 35.251385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715925, 35.221634, 35.271450>,  <29.324709, 35.145264, 35.304890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715925, 35.221634, 35.271450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149212, -0.361336, 0.920420,
		0.145521, -0.912680, -0.381889,
		0.978039, 0.190923, -0.083600,
		30.009336, 35.278912, 35.246368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658476, 34.582809, 35.672928>,  <29.324709, 35.145264, 35.304890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658476, 34.582809, 35.672928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880823, 34.915314, 35.674030>,  <30.014233, 35.114819, 35.674690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880823, 34.915314, 35.674030>,  <29.658476, 34.582809, 35.672928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880823, 34.915314, 35.674030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076069, -0.054164, 0.995630,
		0.827781, -0.553232, -0.093342,
		0.555870, 0.831264, 0.002753,
		30.047585, 35.164692, 35.674854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220690, 34.439362, 36.044022>,  <29.658476, 34.582809, 35.672928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220690, 34.439362, 36.044022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131292, 34.827736, 36.078274>,  <30.077654, 35.060760, 36.098824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131292, 34.827736, 36.078274>,  <30.220690, 34.439362, 36.044022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131292, 34.827736, 36.078274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144465, -0.119876, 0.982222,
		0.963940, 0.207150, 0.167058,
		-0.223493, 0.970937, 0.085627,
		30.064245, 35.119019, 36.103962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561569, 34.811981, 36.546288>,  <30.220690, 34.439362, 36.044022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561569, 34.811981, 36.546288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203283, 34.985989, 36.509499>,  <29.988312, 35.090393, 36.487423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203283, 34.985989, 36.509499>,  <30.561569, 34.811981, 36.546288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203283, 34.985989, 36.509499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165346, -0.133860, 0.977109,
		0.412745, 0.890417, 0.191829,
		-0.895713, 0.435015, -0.091977,
		29.934570, 35.116493, 36.481907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349207, 35.158680, 37.234550>,  <30.561569, 34.811981, 36.546288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349207, 35.158680, 37.234550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010923, 35.157600, 37.021095>,  <29.807953, 35.156952, 36.893021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010923, 35.157600, 37.021095>,  <30.349207, 35.158680, 37.234550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010923, 35.157600, 37.021095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511831, 0.287106, 0.809691,
		0.151023, 0.957895, -0.244190,
		-0.845707, -0.002702, -0.533641,
		29.757212, 35.156792, 36.861004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847343, 35.245594, 37.838020>,  <30.349207, 35.158680, 37.234550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847343, 35.245594, 37.838020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036833, 34.945637, 38.022732>,  <31.150526, 34.765663, 38.133560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036833, 34.945637, 38.022732>,  <30.847343, 35.245594, 37.838020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036833, 34.945637, 38.022732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280656, 0.368464, 0.886265,
		-0.834757, -0.549445, -0.035914,
		0.473721, -0.749896, 0.461783,
		31.178949, 34.720669, 38.161266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353699, 35.076599, 38.356152>,  <30.847343, 35.245594, 37.838020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353699, 35.076599, 38.356152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700434, 34.915260, 38.473389>,  <30.908476, 34.818459, 38.543732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700434, 34.915260, 38.473389>,  <30.353699, 35.076599, 38.356152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700434, 34.915260, 38.473389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296712, 0.055111, 0.953376,
		-0.400691, -0.913387, -0.071904,
		0.866839, -0.403344, 0.293095,
		30.960485, 34.794258, 38.561317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279633, 34.975983, 39.031487>,  <30.353699, 35.076599, 38.356152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279633, 34.975983, 39.031487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675941, 34.923702, 39.017143>,  <30.913727, 34.892334, 39.008537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675941, 34.923702, 39.017143>,  <30.279633, 34.975983, 39.031487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675941, 34.923702, 39.017143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052509, 0.126293, 0.990602,
		-0.124949, -0.983344, 0.131991,
		0.990773, -0.130705, -0.035854,
		30.973173, 34.884491, 39.006386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364025, 34.482639, 39.565113>,  <30.279633, 34.975983, 39.031487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364025, 34.482639, 39.565113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703035, 34.686615, 39.506237>,  <30.906441, 34.809002, 39.470913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703035, 34.686615, 39.506237>,  <30.364025, 34.482639, 39.565113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703035, 34.686615, 39.506237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120413, 0.085349, 0.989048,
		0.516919, -0.855965, 0.010931,
		0.847523, 0.509941, -0.147188,
		30.957293, 34.839596, 39.462082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754595, 34.268536, 40.095432>,  <30.364025, 34.482639, 39.565113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754595, 34.268536, 40.095432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945498, 34.602745, 39.986530>,  <31.060040, 34.803272, 39.921188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945498, 34.602745, 39.986530>,  <30.754595, 34.268536, 40.095432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945498, 34.602745, 39.986530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278449, 0.150061, 0.948656,
		0.833482, -0.528560, -0.161034,
		0.477256, 0.835527, -0.272251,
		31.088675, 34.853405, 39.904854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375708, 34.182358, 40.409454>,  <30.754595, 34.268536, 40.095432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375708, 34.182358, 40.409454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340508, 34.575390, 40.343990>,  <31.319387, 34.811211, 40.304710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340508, 34.575390, 40.343990>,  <31.375708, 34.182358, 40.409454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340508, 34.575390, 40.343990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121961, 0.173691, 0.977219,
		0.988626, 0.066035, -0.135122,
		-0.088000, 0.982584, -0.163662,
		31.314108, 34.870167, 40.294891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028355, 34.501701, 40.599014>,  <31.375708, 34.182358, 40.409454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028355, 34.501701, 40.599014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716610, 34.751839, 40.614716>,  <31.529564, 34.901920, 40.624138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716610, 34.751839, 40.614716>,  <32.028355, 34.501701, 40.599014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716610, 34.751839, 40.614716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195453, 0.183115, 0.963466,
		0.595311, 0.758560, -0.264938,
		-0.779361, 0.625345, 0.039252,
		31.482801, 34.939442, 40.626492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335625, 34.972355, 41.098782>,  <32.028355, 34.501701, 40.599014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335625, 34.972355, 41.098782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951036, 35.073250, 41.055061>,  <31.720284, 35.133785, 41.028828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951036, 35.073250, 41.055061>,  <32.335625, 34.972355, 41.098782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951036, 35.073250, 41.055061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013675, 0.353234, 0.935435,
		0.274557, 0.900891, -0.336176,
		-0.961474, 0.252233, -0.109303,
		31.662594, 35.148918, 41.022270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241371, 35.702362, 41.354877>,  <32.335625, 34.972355, 41.098782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241371, 35.702362, 41.354877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905582, 35.486774, 41.382603>,  <31.704109, 35.357422, 41.399239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905582, 35.486774, 41.382603>,  <32.241371, 35.702362, 41.354877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905582, 35.486774, 41.382603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039600, 0.066542, 0.996998,
		-0.541961, 0.839694, -0.034517,
		-0.839470, -0.538967, 0.069315,
		31.653742, 35.325085, 41.403397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804754, 36.122059, 41.776646>,  <32.241371, 35.702362, 41.354877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804754, 36.122059, 41.776646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632198, 35.761379, 41.788235>,  <31.528664, 35.544971, 41.795189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632198, 35.761379, 41.788235>,  <31.804754, 36.122059, 41.776646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632198, 35.761379, 41.788235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047540, 0.054787, 0.997366,
		-0.900912, 0.428877, -0.066501,
		-0.431391, -0.901700, 0.028970,
		31.502781, 35.490868, 41.796925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416107, 36.099625, 42.386604>,  <31.804754, 36.122059, 41.776646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416107, 36.099625, 42.386604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400223, 35.710541, 42.295166>,  <31.390692, 35.477089, 42.240303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400223, 35.710541, 42.295166>,  <31.416107, 36.099625, 42.386604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400223, 35.710541, 42.295166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113124, -0.231682, 0.966192,
		-0.992787, 0.012511, 0.119238,
		-0.039713, -0.972711, -0.228595,
		31.388309, 35.418728, 42.226589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949394, 35.836533, 42.839096>,  <31.416107, 36.099625, 42.386604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949394, 35.836533, 42.839096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187218, 35.530624, 42.739799>,  <31.329912, 35.347080, 42.680222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187218, 35.530624, 42.739799>,  <30.949394, 35.836533, 42.839096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187218, 35.530624, 42.739799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166351, -0.185064, 0.968545,
		-0.786656, -0.617152, 0.017190,
		0.594558, -0.764771, -0.248246,
		31.365585, 35.301193, 42.665325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697323, 35.195499, 43.147278>,  <30.949394, 35.836533, 42.839096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697323, 35.195499, 43.147278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079268, 35.110260, 43.064495>,  <31.308434, 35.059116, 43.014824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079268, 35.110260, 43.064495>,  <30.697323, 35.195499, 43.147278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079268, 35.110260, 43.064495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168482, -0.185312, 0.968129,
		-0.244660, -0.959296, -0.141044,
		0.954859, -0.213099, -0.206962,
		31.365726, 35.046333, 43.002407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802511, 34.692547, 43.583542>,  <30.697323, 35.195499, 43.147278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802511, 34.692547, 43.583542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164524, 34.817234, 43.467789>,  <31.381733, 34.892048, 43.398338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164524, 34.817234, 43.467789>,  <30.802511, 34.692547, 43.583542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164524, 34.817234, 43.467789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359587, -0.197357, 0.912002,
		0.227179, -0.929452, -0.290706,
		0.905034, 0.311721, -0.289383,
		31.436035, 34.910751, 43.380974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155695, 34.162529, 43.623398>,  <30.802511, 34.692547, 43.583542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155695, 34.162529, 43.623398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419743, 34.457554, 43.680313>,  <31.578171, 34.634567, 43.714462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419743, 34.457554, 43.680313>,  <31.155695, 34.162529, 43.623398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419743, 34.457554, 43.680313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320902, -0.448176, 0.834362,
		0.679165, -0.505116, -0.532535,
		0.660119, 0.737561, 0.142292,
		31.617779, 34.678822, 43.723000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857494, 33.801327, 43.720501>,  <31.155695, 34.162529, 43.623398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857494, 33.801327, 43.720501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879457, 34.166298, 43.882717>,  <31.892635, 34.385281, 43.980045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879457, 34.166298, 43.882717>,  <31.857494, 33.801327, 43.720501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879457, 34.166298, 43.882717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222115, -0.407139, 0.885947,
		0.973473, 0.041432, -0.225018,
		0.054908, 0.912426, 0.405541,
		31.895929, 34.440025, 44.004379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358223, 33.694565, 44.259167>,  <31.857494, 33.801327, 43.720501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358223, 33.694565, 44.259167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193565, 34.048756, 44.345402>,  <32.094772, 34.261269, 44.397144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193565, 34.048756, 44.345402>,  <32.358223, 33.694565, 44.259167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193565, 34.048756, 44.345402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023784, -0.226045, 0.973827,
		0.911036, 0.405995, 0.071989,
		-0.411641, 0.885479, 0.215591,
		32.070072, 34.314400, 44.410080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899872, 34.095005, 44.730480>,  <32.358223, 33.694565, 44.259167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899872, 34.095005, 44.730480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528622, 34.234241, 44.783272>,  <32.305874, 34.317783, 44.814949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528622, 34.234241, 44.783272>,  <32.899872, 34.095005, 44.730480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528622, 34.234241, 44.783272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070298, -0.184276, 0.980357,
		0.365575, 0.919171, 0.146561,
		-0.928124, 0.348091, 0.131982,
		32.250183, 34.338669, 44.822868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992916, 34.523193, 45.289707>,  <32.899872, 34.095005, 44.730480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992916, 34.523193, 45.289707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600620, 34.445095, 45.287724>,  <32.365242, 34.398235, 45.286533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600620, 34.445095, 45.287724>,  <32.992916, 34.523193, 45.289707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600620, 34.445095, 45.287724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008923, -0.070137, 0.997497,
		-0.195100, 0.978244, 0.070529,
		-0.980743, -0.195241, -0.004955,
		32.306396, 34.386524, 45.286236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742920, 34.894535, 45.812252>,  <32.992916, 34.523193, 45.289707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742920, 34.894535, 45.812252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465675, 34.611103, 45.759312>,  <32.299328, 34.441044, 45.727547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465675, 34.611103, 45.759312>,  <32.742920, 34.894535, 45.812252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465675, 34.611103, 45.759312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019619, -0.164997, 0.986099,
		-0.720565, 0.686071, 0.100459,
		-0.693109, -0.708578, -0.132351,
		32.257744, 34.398529, 45.719604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222103, 35.217556, 46.202412>,  <32.742920, 34.894535, 45.812252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222103, 35.217556, 46.202412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140068, 34.832699, 46.130608>,  <32.090847, 34.601784, 46.087524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140068, 34.832699, 46.130608>,  <32.222103, 35.217556, 46.202412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140068, 34.832699, 46.130608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395091, -0.086420, 0.914568,
		-0.895457, 0.258488, -0.362410,
		-0.205085, -0.962141, -0.179512,
		32.078541, 34.544056, 46.076756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516846, 35.137394, 46.305313>,  <32.222103, 35.217556, 46.202412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516846, 35.137394, 46.305313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689775, 34.778625, 46.342472>,  <31.793533, 34.563366, 46.364769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689775, 34.778625, 46.342472>,  <31.516846, 35.137394, 46.305313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689775, 34.778625, 46.342472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364184, -0.079431, 0.927934,
		-0.824904, -0.434998, -0.360984,
		0.432323, -0.896921, 0.092896,
		31.819473, 34.509548, 46.370342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939987, 34.697464, 46.366615>,  <31.516846, 35.137394, 46.305313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939987, 34.697464, 46.366615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264784, 34.521015, 46.519493>,  <31.459661, 34.415146, 46.611221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264784, 34.521015, 46.519493>,  <30.939987, 34.697464, 46.366615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264784, 34.521015, 46.519493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483796, -0.142371, 0.863523,
		-0.326508, -0.886081, -0.329019,
		0.811994, -0.441125, 0.382197,
		31.508383, 34.388676, 46.634151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682720, 34.361145, 46.897659>,  <30.939987, 34.697464, 46.366615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682720, 34.361145, 46.897659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073074, 34.323666, 46.976517>,  <31.307287, 34.301178, 47.023830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073074, 34.323666, 46.976517>,  <30.682720, 34.361145, 46.897659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073074, 34.323666, 46.976517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214982, -0.256294, 0.942389,
		-0.037777, -0.962047, -0.270258,
		0.975887, -0.093701, 0.197141,
		31.365841, 34.295555, 47.035660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660975, 33.782585, 47.304924>,  <30.682720, 34.361145, 46.897659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660975, 33.782585, 47.304924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976059, 34.020618, 47.368656>,  <31.165110, 34.163441, 47.406895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976059, 34.020618, 47.368656>,  <30.660975, 33.782585, 47.304924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976059, 34.020618, 47.368656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136160, -0.084054, 0.987115,
		0.600811, -0.799254, 0.014816,
		0.787710, 0.595087, 0.159327,
		31.212372, 34.199142, 47.416454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050234, 33.452324, 47.766304>,  <30.660975, 33.782585, 47.304924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050234, 33.452324, 47.766304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160696, 33.834595, 47.807144>,  <31.226974, 34.063957, 47.831646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160696, 33.834595, 47.807144>,  <31.050234, 33.452324, 47.766304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160696, 33.834595, 47.807144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088027, -0.080631, 0.992849,
		0.957073, -0.283170, 0.061859,
		0.276157, 0.955675, 0.102096,
		31.243544, 34.121296, 47.837772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580231, 33.479168, 48.346607>,  <31.050234, 33.452324, 47.766304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580231, 33.479168, 48.346607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430361, 33.847111, 48.300175>,  <31.340439, 34.067879, 48.272316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430361, 33.847111, 48.300175>,  <31.580231, 33.479168, 48.346607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430361, 33.847111, 48.300175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038296, 0.109741, 0.993222,
		0.926366, 0.376579, -0.005890,
		-0.374673, 0.919861, -0.116082,
		31.317959, 34.123070, 48.265350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968779, 33.942471, 48.713455>,  <31.580231, 33.479168, 48.346607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968779, 33.942471, 48.713455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625753, 34.145164, 48.678112>,  <31.419939, 34.266781, 48.656906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625753, 34.145164, 48.678112>,  <31.968779, 33.942471, 48.713455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625753, 34.145164, 48.678112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022185, 0.208048, 0.977867,
		0.513902, 0.836621, -0.189656,
		-0.857562, 0.506735, -0.088356,
		31.368484, 34.297184, 48.651604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994858, 34.064793, 49.377308>,  <31.968779, 33.942471, 48.713455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994858, 34.064793, 49.377308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661888, 34.254692, 49.262985>,  <31.462107, 34.368633, 49.194389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661888, 34.254692, 49.262985>,  <31.994858, 34.064793, 49.377308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661888, 34.254692, 49.262985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182663, 0.251863, 0.950368,
		0.523170, 0.843314, -0.122938,
		-0.832422, 0.474748, -0.285809,
		31.412161, 34.397118, 49.177242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965328, 34.800282, 49.682991>,  <31.994858, 34.064793, 49.377308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965328, 34.800282, 49.682991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602392, 34.648483, 49.610634>,  <31.384630, 34.557404, 49.567219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602392, 34.648483, 49.610634>,  <31.965328, 34.800282, 49.682991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602392, 34.648483, 49.610634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313228, 0.323261, 0.892967,
		-0.280401, 0.866883, -0.412175,
		-0.907339, -0.379493, -0.180889,
		31.330191, 34.534634, 49.556366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475599, 35.236782, 49.852291>,  <31.965328, 34.800282, 49.682991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475599, 35.236782, 49.852291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238132, 34.915874, 49.827232>,  <31.095654, 34.723331, 49.812199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238132, 34.915874, 49.827232>,  <31.475599, 35.236782, 49.852291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238132, 34.915874, 49.827232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394299, 0.222141, 0.891729,
		-0.701491, 0.554090, -0.448212,
		-0.593665, -0.802270, -0.062648,
		31.060034, 34.675194, 49.808437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885954, 35.549004, 49.908554>,  <31.475599, 35.236782, 49.852291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885954, 35.549004, 49.908554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871990, 35.168907, 50.032375>,  <30.863611, 34.940849, 50.106670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871990, 35.168907, 50.032375>,  <30.885954, 35.549004, 49.908554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871990, 35.168907, 50.032375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404626, 0.296661, 0.865026,
		-0.913816, -0.095055, -0.394849,
		-0.034911, -0.950240, 0.309555,
		30.861517, 34.883835, 50.125240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260763, 35.566185, 50.259792>,  <30.885954, 35.549004, 49.908554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260763, 35.566185, 50.259792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424736, 35.225925, 50.391457>,  <30.523119, 35.021770, 50.470455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424736, 35.225925, 50.391457>,  <30.260763, 35.566185, 50.259792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424736, 35.225925, 50.391457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504626, 0.089104, 0.858728,
		-0.759808, -0.518122, -0.392735,
		0.409931, -0.850653, 0.329160,
		30.547716, 34.970730, 50.490204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756990, 35.323177, 50.639046>,  <30.260763, 35.566185, 50.259792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756990, 35.323177, 50.639046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083750, 35.128494, 50.762852>,  <30.279804, 35.011684, 50.837135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083750, 35.128494, 50.762852>,  <29.756990, 35.323177, 50.639046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083750, 35.128494, 50.762852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426242, -0.147879, 0.892440,
		-0.388583, -0.860960, -0.328255,
		0.816897, -0.486704, 0.309513,
		30.328819, 34.982483, 50.855705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519665, 34.669815, 50.974255>,  <29.756990, 35.323177, 50.639046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519665, 34.669815, 50.974255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880507, 34.761192, 51.120693>,  <30.097012, 34.816017, 51.208557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880507, 34.761192, 51.120693>,  <29.519665, 34.669815, 50.974255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880507, 34.761192, 51.120693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317667, -0.222626, 0.921697,
		0.292059, -0.947761, -0.128262,
		0.902103, 0.228445, 0.366092,
		30.151138, 34.829727, 51.230522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709461, 34.157173, 51.358242>,  <29.519665, 34.669815, 50.974255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709461, 34.157173, 51.358242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988197, 34.401611, 51.508427>,  <30.155439, 34.548275, 51.598537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988197, 34.401611, 51.508427>,  <29.709461, 34.157173, 51.358242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988197, 34.401611, 51.508427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162861, -0.374995, 0.912609,
		0.698491, -0.697091, -0.161787,
		0.696841, 0.611100, 0.375459,
		30.197250, 34.584942, 51.621063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034222, 33.753220, 51.732449>,  <29.709461, 34.157173, 51.358242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034222, 33.753220, 51.732449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116444, 34.119156, 51.871479>,  <30.165777, 34.338718, 51.954899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116444, 34.119156, 51.871479>,  <30.034222, 33.753220, 51.732449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116444, 34.119156, 51.871479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062391, -0.342190, 0.937557,
		0.976654, -0.214408, -0.013261,
		0.205557, 0.914842, 0.347578,
		30.178110, 34.393608, 51.975754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300381, 33.627434, 52.358852>,  <30.034222, 33.753220, 51.732449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300381, 33.627434, 52.358852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242340, 34.021442, 52.396107>,  <30.207516, 34.257847, 52.418461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242340, 34.021442, 52.396107>,  <30.300381, 33.627434, 52.358852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242340, 34.021442, 52.396107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096028, -0.107709, 0.989534,
		0.984745, 0.134641, 0.110219,
		-0.145103, 0.985023, 0.093137,
		30.198809, 34.316948, 52.424049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616159, 33.860783, 52.967125>,  <30.300381, 33.627434, 52.358852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616159, 33.860783, 52.967125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330835, 34.133709, 52.903080>,  <30.159641, 34.297466, 52.864655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330835, 34.133709, 52.903080>,  <30.616159, 33.860783, 52.967125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330835, 34.133709, 52.903080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368746, -0.171099, 0.913647,
		0.596001, 0.710753, 0.373648,
		-0.713308, 0.682316, -0.160113,
		30.116842, 34.338406, 52.855045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629948, 34.217587, 53.470657>,  <30.616159, 33.860783, 52.967125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629948, 34.217587, 53.470657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257376, 34.268650, 53.334339>,  <30.033833, 34.299286, 53.252548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257376, 34.268650, 53.334339>,  <30.629948, 34.217587, 53.470657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257376, 34.268650, 53.334339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362539, -0.244074, 0.899441,
		0.031642, 0.961318, 0.273619,
		-0.931431, 0.127657, -0.340793,
		29.977947, 34.306946, 53.232101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356201, 34.775578, 53.877541>,  <30.629948, 34.217587, 53.470657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356201, 34.775578, 53.877541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031044, 34.581017, 53.749409>,  <29.835949, 34.464279, 53.672527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031044, 34.581017, 53.749409>,  <30.356201, 34.775578, 53.877541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031044, 34.581017, 53.749409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185142, -0.305669, 0.933964,
		-0.552202, 0.818520, 0.158421,
		-0.812893, -0.486407, -0.320334,
		29.787176, 34.435093, 53.653309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802549, 35.037514, 54.213028>,  <30.356201, 34.775578, 53.877541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802549, 35.037514, 54.213028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706160, 34.669144, 54.090508>,  <29.648325, 34.448120, 54.016994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706160, 34.669144, 54.090508>,  <29.802549, 35.037514, 54.213028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706160, 34.669144, 54.090508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132229, -0.281510, 0.950404,
		-0.961481, 0.269526, -0.053937,
		-0.240975, -0.920928, -0.306306,
		29.633867, 34.392864, 53.998615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195431, 34.824493, 54.532822>,  <29.802549, 35.037514, 54.213028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195431, 34.824493, 54.532822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433954, 34.520248, 54.430153>,  <29.577068, 34.337700, 54.368553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433954, 34.520248, 54.430153>,  <29.195431, 34.824493, 54.532822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433954, 34.520248, 54.430153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135246, -0.219972, 0.966085,
		-0.791280, -0.610799, -0.028301,
		0.596309, -0.760616, -0.256667,
		29.612846, 34.292065, 54.353153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107162, 34.304752, 54.967472>,  <29.195431, 34.824493, 54.532822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107162, 34.304752, 54.967472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462452, 34.159431, 54.854996>,  <29.675625, 34.072239, 54.787510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462452, 34.159431, 54.854996>,  <29.107162, 34.304752, 54.967472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462452, 34.159431, 54.854996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195302, -0.255408, 0.946902,
		-0.415833, -0.895978, -0.155906,
		0.888223, -0.363304, -0.281194,
		29.728920, 34.050442, 54.770638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290972, 33.542671, 55.070564>,  <29.107162, 34.304752, 54.967472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290972, 33.542671, 55.070564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637236, 33.741215, 55.096695>,  <29.844994, 33.860340, 55.112373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637236, 33.741215, 55.096695>,  <29.290972, 33.542671, 55.070564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637236, 33.741215, 55.096695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079382, -0.264926, 0.960996,
		0.494302, -0.826708, -0.268737,
		0.865658, 0.496355, 0.065328,
		29.896933, 33.890121, 55.116295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655790, 33.191830, 55.581825>,  <29.290972, 33.542671, 55.070564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655790, 33.191830, 55.581825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857487, 33.533726, 55.532562>,  <29.978504, 33.738861, 55.503006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857487, 33.533726, 55.532562>,  <29.655790, 33.191830, 55.581825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857487, 33.533726, 55.532562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097380, 0.085425, 0.991574,
		0.858055, -0.511985, -0.040160,
		0.504240, 0.854736, -0.123156,
		30.008759, 33.790146, 55.495617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726948, 32.482315, 55.451694>,  <29.655790, 33.191830, 55.581825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726948, 32.482315, 55.451694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450195, 32.218788, 55.569851>,  <29.284143, 32.060673, 55.640743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450195, 32.218788, 55.569851>,  <29.726948, 32.482315, 55.451694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450195, 32.218788, 55.569851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677311, -0.733959, -0.050540,
		0.250103, 0.165105, 0.954038,
		-0.691880, -0.658821, 0.295393,
		29.242632, 32.021141, 55.658470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958988, 32.691818, 55.411091>,  <29.726948, 32.482315, 55.451694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958988, 32.691818, 55.411091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283695, 32.714165, 55.178570>,  <29.478519, 32.727573, 55.039059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283695, 32.714165, 55.178570>,  <28.958988, 32.691818, 55.411091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283695, 32.714165, 55.178570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044356, -0.998436, -0.034022,
		-0.582290, 0.001834, -0.812979,
		0.811770, 0.055871, -0.581299,
		29.527225, 32.730927, 55.004181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953953, 32.454174, 54.668900>,  <28.958988, 32.691818, 55.411091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953953, 32.454174, 54.668900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341690, 32.414692, 54.758907>,  <29.574331, 32.391003, 54.812912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341690, 32.414692, 54.758907>,  <28.953953, 32.454174, 54.668900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341690, 32.414692, 54.758907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069381, -0.988457, -0.134684,
		0.235720, 0.114943, -0.965000,
		0.969341, -0.098701, 0.225024,
		29.632492, 32.385082, 54.826416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298548, 32.240379, 54.053589>,  <28.953953, 32.454174, 54.668900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298548, 32.240379, 54.053589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427687, 32.112507, 54.409920>,  <29.505169, 32.035782, 54.623718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427687, 32.112507, 54.409920>,  <29.298548, 32.240379, 54.053589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427687, 32.112507, 54.409920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025272, -0.937981, -0.345763,
		0.946114, 0.134141, -0.294745,
		0.322846, -0.319683, 0.890827,
		29.524540, 32.016602, 54.677170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959108, 31.954340, 54.055355>,  <29.298548, 32.240379, 54.053589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959108, 31.954340, 54.055355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731934, 31.789297, 54.340225>,  <29.595629, 31.690271, 54.511147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731934, 31.789297, 54.340225>,  <29.959108, 31.954340, 54.055355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731934, 31.789297, 54.340225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100367, -0.893532, -0.437639,
		0.816928, -0.177073, 0.548884,
		-0.567939, -0.412609, 0.712179,
		29.561552, 31.665514, 54.553879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898500, 31.265570, 53.743401>,  <29.959108, 31.954340, 54.055355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898500, 31.265570, 53.743401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628489, 31.525658, 53.603947>,  <29.466482, 31.681711, 53.520275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628489, 31.525658, 53.603947>,  <29.898500, 31.265570, 53.743401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628489, 31.525658, 53.603947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272453, -0.219454, -0.936808,
		-0.685644, -0.727359, -0.029018,
		-0.675027, 0.650222, -0.348638,
		29.425980, 31.720724, 53.499355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542355, 30.967861, 53.173965>,  <29.898500, 31.265570, 53.743401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542355, 30.967861, 53.173965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504391, 31.360662, 53.108654>,  <29.481611, 31.596344, 53.069466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504391, 31.360662, 53.108654>,  <29.542355, 30.967861, 53.173965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504391, 31.360662, 53.108654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199466, -0.141935, -0.969571,
		-0.975298, -0.124593, -0.182405,
		-0.094912, 0.982004, -0.163281,
		29.475918, 31.655264, 53.059669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161083, 31.020727, 52.571823>,  <29.542355, 30.967861, 53.173965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161083, 31.020727, 52.571823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291138, 31.398401, 52.592983>,  <29.369171, 31.625006, 52.605679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291138, 31.398401, 52.592983>,  <29.161083, 31.020727, 52.571823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291138, 31.398401, 52.592983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025573, 0.064695, -0.997577,
		-0.945322, 0.322995, 0.045181,
		0.325135, 0.944187, 0.052898,
		29.388678, 31.681658, 52.608852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666916, 31.380072, 52.124435>,  <29.161083, 31.020727, 52.571823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666916, 31.380072, 52.124435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018368, 31.567888, 52.159161>,  <29.229239, 31.680578, 52.179996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018368, 31.567888, 52.159161>,  <28.666916, 31.380072, 52.124435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018368, 31.567888, 52.159161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081106, 0.032419, -0.996178,
		-0.470563, 0.882314, -0.009598,
		0.878631, 0.469543, 0.086816,
		29.281958, 31.708752, 52.185207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670242, 31.909351, 51.566429>,  <28.666916, 31.380072, 52.124435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670242, 31.909351, 51.566429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056499, 31.885153, 51.667519>,  <29.288254, 31.870634, 51.728172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056499, 31.885153, 51.667519>,  <28.670242, 31.909351, 51.566429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056499, 31.885153, 51.667519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259833, 0.239906, -0.935378,
		-0.004041, 0.968909, 0.247383,
		0.965645, -0.060498, 0.252724,
		29.346193, 31.867002, 51.743336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935766, 32.421703, 51.232925>,  <28.670242, 31.909351, 51.566429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935766, 32.421703, 51.232925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246670, 32.192524, 51.336926>,  <29.433212, 32.055016, 51.399326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246670, 32.192524, 51.336926>,  <28.935766, 32.421703, 51.232925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246670, 32.192524, 51.336926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331222, 0.021271, -0.943313,
		0.534940, 0.819315, 0.206307,
		0.777258, -0.572949, 0.259997,
		29.479847, 32.020638, 51.414925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660286, 32.783863, 51.083618>,  <28.935766, 32.421703, 51.232925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660286, 32.783863, 51.083618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712883, 32.387550, 51.070557>,  <29.744442, 32.149765, 51.062721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712883, 32.387550, 51.070557>,  <29.660286, 32.783863, 51.083618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712883, 32.387550, 51.070557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516730, 0.096613, -0.850680,
		0.845990, 0.094985, 0.524669,
		0.131492, -0.990779, -0.032652,
		29.752331, 32.090317, 51.060760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254236, 32.676682, 50.801891>,  <29.660286, 32.783863, 51.083618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254236, 32.676682, 50.801891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148264, 32.292301, 50.769913>,  <30.084681, 32.061672, 50.750725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148264, 32.292301, 50.769913>,  <30.254236, 32.676682, 50.801891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148264, 32.292301, 50.769913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361920, -0.022244, -0.931944,
		0.893770, -0.275837, 0.353679,
		-0.264932, -0.960947, -0.079950,
		30.068785, 32.004017, 50.745926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860275, 32.259499, 50.554550>,  <30.254236, 32.676682, 50.801891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860275, 32.259499, 50.554550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521919, 32.078789, 50.441147>,  <30.318907, 31.970364, 50.373104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521919, 32.078789, 50.441147>,  <30.860275, 32.259499, 50.554550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521919, 32.078789, 50.441147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360834, -0.093293, -0.927952,
		0.392775, -0.887241, 0.241930,
		-0.845888, -0.451773, -0.283504,
		30.268152, 31.943256, 50.356094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991182, 31.764803, 50.109329>,  <30.860275, 32.259499, 50.554550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991182, 31.764803, 50.109329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606550, 31.829517, 50.020611>,  <30.375771, 31.868345, 49.967381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606550, 31.829517, 50.020611>,  <30.991182, 31.764803, 50.109329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606550, 31.829517, 50.020611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212427, -0.073298, -0.974424,
		-0.173905, -0.984100, 0.036114,
		-0.961577, 0.161785, -0.221796,
		30.318077, 31.878052, 49.954071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962029, 31.373966, 49.608250>,  <30.991182, 31.764803, 50.109329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962029, 31.373966, 49.608250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612232, 31.560968, 49.556549>,  <30.402355, 31.673170, 49.525528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612232, 31.560968, 49.556549>,  <30.962029, 31.373966, 49.608250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612232, 31.560968, 49.556549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127721, -0.035121, -0.991188,
		-0.467927, -0.883291, -0.028997,
		-0.874489, 0.467508, -0.129249,
		30.349886, 31.701221, 49.517773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622437, 30.946192, 49.201210>,  <30.962029, 31.373966, 49.608250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622437, 30.946192, 49.201210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472317, 31.314966, 49.162880>,  <30.382246, 31.536232, 49.139881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472317, 31.314966, 49.162880>,  <30.622437, 30.946192, 49.201210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472317, 31.314966, 49.162880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162240, -0.036444, -0.986078,
		-0.912595, -0.385619, -0.135898,
		-0.375298, 0.921938, -0.095822,
		30.359728, 31.591547, 49.134132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151152, 30.810112, 48.771282>,  <30.622437, 30.946192, 49.201210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151152, 30.810112, 48.771282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209023, 31.205860, 48.765469>,  <30.243746, 31.443310, 48.761982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209023, 31.205860, 48.765469>,  <30.151152, 30.810112, 48.771282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209023, 31.205860, 48.765469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023329, -0.011273, -0.999664,
		-0.989204, 0.144970, 0.021450,
		0.144679, 0.989372, -0.014533,
		30.252426, 31.502672, 48.761108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707857, 31.008425, 48.286152>,  <30.151152, 30.810112, 48.771282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707857, 31.008425, 48.286152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970490, 31.306446, 48.333130>,  <30.128069, 31.485260, 48.361317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970490, 31.306446, 48.333130>,  <29.707857, 31.008425, 48.286152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970490, 31.306446, 48.333130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060065, 0.206864, -0.976524,
		-0.751859, 0.634115, 0.180575,
		0.656582, 0.745054, 0.117445,
		30.167465, 31.529963, 48.368362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454117, 31.593168, 47.918110>,  <29.707857, 31.008425, 48.286152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454117, 31.593168, 47.918110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839542, 31.678413, 47.982769>,  <30.070797, 31.729561, 48.021564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839542, 31.678413, 47.982769>,  <29.454117, 31.593168, 47.918110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839542, 31.678413, 47.982769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061963, 0.410048, -0.909957,
		-0.260205, 0.886817, 0.381902,
		0.963563, 0.213112, 0.161646,
		30.128611, 31.742348, 48.031261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423344, 32.239273, 47.580482>,  <29.454117, 31.593168, 47.918110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423344, 32.239273, 47.580482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797831, 32.099846, 47.598362>,  <30.022522, 32.016190, 47.609089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797831, 32.099846, 47.598362>,  <29.423344, 32.239273, 47.580482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797831, 32.099846, 47.598362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181821, 0.371595, -0.910416,
		0.300735, 0.860474, 0.411271,
		0.936216, -0.348571, 0.044700,
		30.078695, 31.995274, 47.611771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666492, 32.590729, 47.069099>,  <29.423344, 32.239273, 47.580482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666492, 32.590729, 47.069099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945398, 32.310711, 47.130756>,  <30.112741, 32.142700, 47.167751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945398, 32.310711, 47.130756>,  <29.666492, 32.590729, 47.069099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945398, 32.310711, 47.130756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331769, 0.124556, -0.935102,
		0.635413, 0.703154, 0.319102,
		0.697266, -0.700043, 0.154140,
		30.154577, 32.100697, 47.176998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192383, 32.749035, 46.596363>,  <29.666492, 32.590729, 47.069099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192383, 32.749035, 46.596363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307522, 32.382488, 46.707657>,  <30.376606, 32.162560, 46.774433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307522, 32.382488, 46.707657>,  <30.192383, 32.749035, 46.596363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307522, 32.382488, 46.707657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537193, -0.086016, -0.839062,
		0.792822, 0.390986, 0.467508,
		0.287848, -0.916369, 0.278231,
		30.393877, 32.107578, 46.791126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899004, 32.692200, 46.489704>,  <30.192383, 32.749035, 46.596363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899004, 32.692200, 46.489704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765593, 32.315105, 46.490410>,  <30.685545, 32.088848, 46.490833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765593, 32.315105, 46.490410>,  <30.899004, 32.692200, 46.489704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765593, 32.315105, 46.490410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427429, -0.152887, -0.891028,
		0.840275, -0.296429, 0.453946,
		-0.333529, -0.942738, 0.001765,
		30.665533, 32.032284, 46.490940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483561, 32.270477, 46.262051>,  <30.899004, 32.692200, 46.489704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483561, 32.270477, 46.262051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149355, 32.066696, 46.179703>,  <30.948832, 31.944429, 46.130295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149355, 32.066696, 46.179703>,  <31.483561, 32.270477, 46.262051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149355, 32.066696, 46.179703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259977, -0.036444, -0.964927,
		0.484078, -0.859729, 0.162894,
		-0.835512, -0.509449, -0.205868,
		30.898701, 31.913862, 46.117943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654648, 31.606316, 45.833134>,  <31.483561, 32.270477, 46.262051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654648, 31.606316, 45.833134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273716, 31.710438, 45.769505>,  <31.045156, 31.772911, 45.731327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273716, 31.710438, 45.769505>,  <31.654648, 31.606316, 45.833134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273716, 31.710438, 45.769505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162478, -0.008533, -0.986675,
		-0.258197, -0.965488, -0.034168,
		-0.952331, 0.260308, -0.159074,
		30.988016, 31.788530, 45.721783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514204, 31.286104, 45.209866>,  <31.654648, 31.606316, 45.833134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514204, 31.286104, 45.209866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212627, 31.544449, 45.257923>,  <31.031681, 31.699455, 45.286758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212627, 31.544449, 45.257923>,  <31.514204, 31.286104, 45.209866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212627, 31.544449, 45.257923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017759, 0.162779, -0.986503,
		-0.656703, -0.745898, -0.111256,
		-0.753940, 0.645864, 0.120144,
		30.986444, 31.738209, 45.293968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070538, 31.144758, 44.593040>,  <31.514204, 31.286104, 45.209866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070538, 31.144758, 44.593040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989792, 31.511583, 44.730587>,  <30.941345, 31.731678, 44.813114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989792, 31.511583, 44.730587>,  <31.070538, 31.144758, 44.593040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989792, 31.511583, 44.730587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030501, 0.345038, -0.938093,
		-0.978939, -0.199854, -0.041678,
		-0.201862, 0.917065, 0.343867,
		30.929234, 31.786703, 44.833748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495657, 31.319447, 44.235420>,  <31.070538, 31.144758, 44.593040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495657, 31.319447, 44.235420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654036, 31.664415, 44.361568>,  <30.749062, 31.871397, 44.437256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654036, 31.664415, 44.361568>,  <30.495657, 31.319447, 44.235420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654036, 31.664415, 44.361568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217077, 0.245798, -0.944701,
		-0.892247, 0.442509, -0.089889,
		0.395945, 0.862420, 0.315371,
		30.772820, 31.923141, 44.456181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038460, 31.883360, 44.033684>,  <30.495657, 31.319447, 44.235420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038460, 31.883360, 44.033684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410374, 32.024590, 44.075336>,  <30.633522, 32.109325, 44.100330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410374, 32.024590, 44.075336>,  <30.038460, 31.883360, 44.033684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410374, 32.024590, 44.075336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010732, 0.308775, -0.951075,
		-0.367952, 0.883175, 0.290883,
		0.929783, 0.353072, 0.104136,
		30.689308, 32.130512, 44.106579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016956, 32.411167, 43.660694>,  <30.038460, 31.883360, 44.033684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016956, 32.411167, 43.660694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411182, 32.393227, 43.725994>,  <30.647718, 32.382462, 43.765175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411182, 32.393227, 43.725994>,  <30.016956, 32.411167, 43.660694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411182, 32.393227, 43.725994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167480, 0.399277, -0.901404,
		-0.024755, 0.915733, 0.401024,
		0.985565, -0.044849, 0.163251,
		30.706852, 32.379772, 43.774971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241898, 32.990387, 43.303902>,  <30.016956, 32.411167, 43.660694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241898, 32.990387, 43.303902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561171, 32.752201, 43.340389>,  <30.752735, 32.609287, 43.362282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561171, 32.752201, 43.340389>,  <30.241898, 32.990387, 43.303902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561171, 32.752201, 43.340389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291071, 0.248644, -0.923826,
		0.527427, 0.763934, 0.371786,
		0.798185, -0.595467, 0.091217,
		30.800627, 32.573563, 43.367756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932629, 33.330986, 43.099735>,  <30.241898, 32.990387, 43.303902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932629, 33.330986, 43.099735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027901, 32.942650, 43.088802>,  <31.085064, 32.709648, 43.082241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027901, 32.942650, 43.088802>,  <30.932629, 33.330986, 43.099735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027901, 32.942650, 43.088802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285619, 0.096918, -0.953430,
		0.928274, 0.219280, 0.300373,
		0.238180, -0.970836, -0.027336,
		31.099354, 32.651398, 43.080601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570723, 33.244854, 42.774181>,  <30.932629, 33.330986, 43.099735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570723, 33.244854, 42.774181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420197, 32.877270, 42.727028>,  <31.329882, 32.656719, 42.698738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420197, 32.877270, 42.727028>,  <31.570723, 33.244854, 42.774181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420197, 32.877270, 42.727028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345724, -0.021240, -0.938096,
		0.859570, -0.393774, 0.325700,
		-0.376315, -0.918962, -0.117880,
		31.307302, 32.601582, 42.691666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123505, 32.818424, 42.461674>,  <31.570723, 33.244854, 42.774181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123505, 32.818424, 42.461674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767815, 32.648140, 42.394672>,  <31.554401, 32.545971, 42.354473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767815, 32.648140, 42.394672>,  <32.123505, 32.818424, 42.461674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767815, 32.648140, 42.394672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271218, -0.195709, -0.942411,
		0.368412, -0.883442, 0.289488,
		-0.889221, -0.425710, -0.167504,
		31.501049, 32.520428, 42.344421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206867, 32.132431, 42.254757>,  <32.123505, 32.818424, 42.461674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206867, 32.132431, 42.254757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849285, 32.219139, 42.097862>,  <31.634735, 32.271164, 42.003727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849285, 32.219139, 42.097862>,  <32.206867, 32.132431, 42.254757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849285, 32.219139, 42.097862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318701, -0.307819, -0.896480,
		-0.315080, -0.926419, 0.206088,
		-0.893954, 0.216783, -0.392238,
		31.581097, 32.284168, 41.980190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049343, 31.545427, 41.799145>,  <32.206867, 32.132431, 42.254757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049343, 31.545427, 41.799145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794577, 31.836830, 41.698250>,  <31.641718, 32.011673, 41.637714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794577, 31.836830, 41.698250>,  <32.049343, 31.545427, 41.799145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794577, 31.836830, 41.698250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176550, -0.180654, -0.967571,
		-0.750448, -0.660790, -0.013557,
		-0.636912, 0.728506, -0.252234,
		31.603502, 32.055382, 41.622578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477896, 31.226868, 41.222397>,  <32.049343, 31.545427, 41.799145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477896, 31.226868, 41.222397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494761, 31.624634, 41.183701>,  <31.504879, 31.863295, 41.160484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494761, 31.624634, 41.183701>,  <31.477896, 31.226868, 41.222397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494761, 31.624634, 41.183701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000787, -0.096857, -0.995298,
		-0.999110, 0.041888, -0.004866,
		0.042163, 0.994416, -0.096738,
		31.507410, 31.922958, 41.154678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066628, 31.347898, 40.677639>,  <31.477896, 31.226868, 41.222397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066628, 31.347898, 40.677639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303711, 31.670034, 40.673157>,  <31.445961, 31.863316, 40.670467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303711, 31.670034, 40.673157>,  <31.066628, 31.347898, 40.677639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303711, 31.670034, 40.673157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104303, -0.090550, -0.990415,
		-0.798634, 0.585860, -0.137670,
		0.592710, 0.805338, -0.011209,
		31.481524, 31.911636, 40.669792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900080, 31.633621, 39.979122>,  <31.066628, 31.347898, 40.677639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900080, 31.633621, 39.979122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214809, 31.841368, 40.112492>,  <31.403646, 31.966015, 40.192513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214809, 31.841368, 40.112492>,  <30.900080, 31.633621, 39.979122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214809, 31.841368, 40.112492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266938, 0.200712, -0.942581,
		-0.556466, 0.830647, 0.019287,
		0.786823, 0.519366, 0.333420,
		31.450857, 31.997177, 40.212517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882845, 32.320740, 39.616932>,  <30.900080, 31.633621, 39.979122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882845, 32.320740, 39.616932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252125, 32.214054, 39.727615>,  <31.473692, 32.150043, 39.794025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252125, 32.214054, 39.727615>,  <30.882845, 32.320740, 39.616932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252125, 32.214054, 39.727615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372722, 0.445803, -0.813841,
		0.093702, 0.854474, 0.510974,
		0.923200, -0.266710, 0.276709,
		31.529085, 32.134041, 39.810627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273239, 32.941330, 39.585918>,  <30.882845, 32.320740, 39.616932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273239, 32.941330, 39.585918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535654, 32.639515, 39.579117>,  <31.693102, 32.458427, 39.575035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535654, 32.639515, 39.579117>,  <31.273239, 32.941330, 39.585918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535654, 32.639515, 39.579117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318647, 0.297331, -0.900032,
		0.684165, 0.585035, 0.435491,
		0.656036, -0.754538, -0.017003,
		31.732464, 32.413155, 39.574017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816793, 33.265518, 39.263172>,  <31.273239, 32.941330, 39.585918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816793, 33.265518, 39.263172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944113, 32.886520, 39.275436>,  <32.020504, 32.659122, 39.282795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944113, 32.886520, 39.275436>,  <31.816793, 33.265518, 39.263172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944113, 32.886520, 39.275436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518105, 0.146781, -0.842628,
		0.793885, 0.284093, 0.537622,
		0.318297, -0.947495, 0.030663,
		32.039600, 32.602272, 39.284634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540890, 33.221046, 39.295662>,  <31.816793, 33.265518, 39.263172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540890, 33.221046, 39.295662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414227, 32.868629, 39.155102>,  <32.338226, 32.657177, 39.070766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414227, 32.868629, 39.155102>,  <32.540890, 33.221046, 39.295662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414227, 32.868629, 39.155102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580926, 0.112725, -0.806113,
		0.749834, -0.459404, 0.476127,
		-0.316660, -0.881045, -0.351405,
		32.319229, 32.604317, 39.049679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119175, 32.862236, 38.947601>,  <32.540890, 33.221046, 39.295662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119175, 32.862236, 38.947601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809700, 32.677723, 38.773876>,  <32.624016, 32.567017, 38.669640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809700, 32.677723, 38.773876>,  <33.119175, 32.862236, 38.947601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809700, 32.677723, 38.773876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436460, 0.108849, -0.893115,
		0.459254, -0.880550, 0.117117,
		-0.773685, -0.461284, -0.434314,
		32.577595, 32.539337, 38.643581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415375, 32.373211, 38.473808>,  <33.119175, 32.862236, 38.947601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415375, 32.373211, 38.473808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046715, 32.469585, 38.352150>,  <32.825520, 32.527412, 38.279156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046715, 32.469585, 38.352150>,  <33.415375, 32.373211, 38.473808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046715, 32.469585, 38.352150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320179, 0.029461, -0.946899,
		-0.219186, -0.970092, -0.104298,
		-0.921652, 0.240941, -0.304146,
		32.770218, 32.541866, 38.260906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778542, 31.991352, 38.894600>,  <33.415375, 32.373211, 38.473808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778542, 31.991352, 38.894600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172691, 31.931677, 38.861675>,  <34.409184, 31.895872, 38.841923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172691, 31.931677, 38.861675>,  <33.778542, 31.991352, 38.894600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172691, 31.931677, 38.861675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031142, -0.632624, 0.773833,
		-0.167515, -0.759954, -0.628019,
		0.985377, -0.149186, -0.082308,
		34.468304, 31.886921, 38.836983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785843, 31.468496, 39.119099>,  <33.778542, 31.991352, 38.894600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785843, 31.468496, 39.119099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180363, 31.533358, 39.131214>,  <34.417076, 31.572273, 39.138481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180363, 31.533358, 39.131214>,  <33.785843, 31.468496, 39.119099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180363, 31.533358, 39.131214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078212, -0.621345, 0.779623,
		0.145236, -0.766575, -0.625516,
		0.986301, 0.162152, 0.030286,
		34.476254, 31.582003, 39.140301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179237, 30.851442, 39.348579>,  <33.785843, 31.468496, 39.119099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179237, 30.851442, 39.348579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435627, 31.149242, 39.423275>,  <34.589462, 31.327923, 39.468094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435627, 31.149242, 39.423275>,  <34.179237, 30.851442, 39.348579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435627, 31.149242, 39.423275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168794, -0.374057, 0.911915,
		0.748771, -0.552995, -0.365429,
		0.640976, 0.744498, 0.186741,
		34.627918, 31.372591, 39.479298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718609, 30.519707, 39.671188>,  <34.179237, 30.851442, 39.348579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718609, 30.519707, 39.671188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773708, 30.909096, 39.744270>,  <34.806767, 31.142729, 39.788120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773708, 30.909096, 39.744270>,  <34.718609, 30.519707, 39.671188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773708, 30.909096, 39.744270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311227, -0.217659, 0.925074,
		0.940300, -0.070563, -0.332952,
		0.137746, 0.973471, 0.182704,
		34.815033, 31.201138, 39.799080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361835, 30.550333, 40.169315>,  <34.718609, 30.519707, 39.671188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361835, 30.550333, 40.169315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147240, 30.885586, 40.208733>,  <35.018482, 31.086737, 40.232384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147240, 30.885586, 40.208733>,  <35.361835, 30.550333, 40.169315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147240, 30.885586, 40.208733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215895, 0.023431, 0.976135,
		0.815821, 0.544964, -0.193519,
		-0.536493, 0.838132, 0.098539,
		34.986290, 31.137026, 40.238293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667519, 30.918127, 40.719185>,  <35.361835, 30.550333, 40.169315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667519, 30.918127, 40.719185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327282, 31.128155, 40.707951>,  <35.123138, 31.254171, 40.701210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327282, 31.128155, 40.707951>,  <35.667519, 30.918127, 40.719185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327282, 31.128155, 40.707951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034243, -0.002007, 0.999411,
		0.524703, 0.851058, 0.019687,
		-0.850596, 0.525068, -0.028090,
		35.072102, 31.285675, 40.699524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743286, 31.400106, 41.265118>,  <35.667519, 30.918127, 40.719185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743286, 31.400106, 41.265118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348343, 31.369381, 41.209667>,  <35.111378, 31.350945, 41.176395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348343, 31.369381, 41.209667>,  <35.743286, 31.400106, 41.265118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348343, 31.369381, 41.209667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134837, -0.052532, 0.989474,
		-0.083289, 0.995661, 0.041510,
		-0.987361, -0.076815, -0.138627,
		35.052135, 31.346336, 41.168079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514160, 31.839361, 41.721695>,  <35.743286, 31.400106, 41.265118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514160, 31.839361, 41.721695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202301, 31.599041, 41.651051>,  <35.015186, 31.454849, 41.608665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202301, 31.599041, 41.651051>,  <35.514160, 31.839361, 41.721695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202301, 31.599041, 41.651051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172445, -0.065138, 0.982863,
		-0.602010, 0.796740, -0.052821,
		-0.779645, -0.600802, -0.176608,
		34.968407, 31.418800, 41.598068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006310, 32.137955, 42.076172>,  <35.514160, 31.839361, 41.721695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006310, 32.137955, 42.076172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859924, 31.769270, 42.024750>,  <34.772095, 31.548059, 41.993896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859924, 31.769270, 42.024750>,  <35.006310, 32.137955, 42.076172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859924, 31.769270, 42.024750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309470, -0.009751, 0.950859,
		-0.877668, 0.387761, -0.281673,
		-0.365960, -0.921708, -0.128558,
		34.750137, 31.492758, 41.986183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360432, 32.176785, 42.249004>,  <35.006310, 32.137955, 42.076172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360432, 32.176785, 42.249004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433376, 31.786318, 42.296066>,  <34.477142, 31.552038, 42.324303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433376, 31.786318, 42.296066>,  <34.360432, 32.176785, 42.249004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433376, 31.786318, 42.296066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292805, 0.060316, 0.954268,
		-0.938622, -0.208467, -0.274828,
		0.182357, -0.976168, 0.117654,
		34.488083, 31.493467, 42.331364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757805, 31.878063, 42.591782>,  <34.360432, 32.176785, 42.249004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757805, 31.878063, 42.591782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049438, 31.608252, 42.638176>,  <34.224419, 31.446365, 42.666012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049438, 31.608252, 42.638176>,  <33.757805, 31.878063, 42.591782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049438, 31.608252, 42.638176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307437, -0.171349, 0.936014,
		-0.611494, -0.718088, -0.332302,
		0.729080, -0.674528, 0.115988,
		34.268162, 31.405893, 42.672974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451546, 31.306396, 42.855717>,  <33.757805, 31.878063, 42.591782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451546, 31.306396, 42.855717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841637, 31.244366, 42.918819>,  <34.075691, 31.207148, 42.956680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841637, 31.244366, 42.918819>,  <33.451546, 31.306396, 42.855717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841637, 31.244366, 42.918819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204660, -0.361795, 0.909516,
		-0.083968, -0.919269, -0.384569,
		0.975225, -0.155076, 0.157759,
		34.134205, 31.197844, 42.966148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479595, 30.591372, 43.050545>,  <33.451546, 31.306396, 42.855717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479595, 30.591372, 43.050545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824974, 30.758022, 43.164307>,  <34.032200, 30.858013, 43.232563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824974, 30.758022, 43.164307>,  <33.479595, 30.591372, 43.050545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824974, 30.758022, 43.164307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145742, -0.333715, 0.931340,
		0.482931, -0.845610, -0.227425,
		0.863445, 0.416628, 0.284402,
		34.084007, 30.883011, 43.249626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831497, 30.068598, 43.465195>,  <33.479595, 30.591372, 43.050545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831497, 30.068598, 43.465195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977386, 30.427423, 43.564991>,  <34.064922, 30.642719, 43.624870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977386, 30.427423, 43.564991>,  <33.831497, 30.068598, 43.465195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977386, 30.427423, 43.564991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040431, -0.252440, 0.966768,
		0.930236, -0.362694, -0.055803,
		0.364727, 0.897066, 0.249493,
		34.086803, 30.696543, 43.639839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310341, 30.071339, 44.048786>,  <33.831497, 30.068598, 43.465195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310341, 30.071339, 44.048786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190098, 30.452688, 44.059498>,  <34.117954, 30.681498, 44.065926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190098, 30.452688, 44.059498>,  <34.310341, 30.071339, 44.048786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190098, 30.452688, 44.059498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102082, -0.060079, 0.992960,
		0.948270, 0.295755, 0.115383,
		-0.300605, 0.953373, 0.026780,
		34.099918, 30.738701, 44.067532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674213, 30.317755, 44.588978>,  <34.310341, 30.071339, 44.048786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674213, 30.317755, 44.588978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372295, 30.573578, 44.530674>,  <34.191143, 30.727072, 44.495693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372295, 30.573578, 44.530674>,  <34.674213, 30.317755, 44.588978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372295, 30.573578, 44.530674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174691, 0.018189, 0.984455,
		0.632269, 0.768527, 0.097996,
		-0.754798, 0.639559, -0.145756,
		34.145855, 30.765446, 44.486946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741581, 30.978584, 45.040920>,  <34.674213, 30.317755, 44.588978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741581, 30.978584, 45.040920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347244, 30.979185, 44.973843>,  <34.110641, 30.979546, 44.933598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347244, 30.979185, 44.973843>,  <34.741581, 30.978584, 45.040920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347244, 30.979185, 44.973843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165987, 0.133745, 0.977016,
		0.023895, 0.991015, -0.131601,
		-0.985838, 0.001502, -0.167691,
		34.051495, 30.979635, 44.923534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549541, 31.536371, 45.386208>,  <34.741581, 30.978584, 45.040920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549541, 31.536371, 45.386208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220055, 31.315344, 45.335365>,  <34.022362, 31.182728, 45.304859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220055, 31.315344, 45.335365>,  <34.549541, 31.536371, 45.386208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220055, 31.315344, 45.335365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323043, 0.273129, 0.906115,
		-0.465971, 0.787446, -0.403484,
		-0.823719, -0.552566, -0.127109,
		33.972939, 31.149574, 45.297234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022026, 31.960943, 45.681545>,  <34.549541, 31.536371, 45.386208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022026, 31.960943, 45.681545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893822, 31.582052, 45.683952>,  <33.816898, 31.354717, 45.685394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893822, 31.582052, 45.683952>,  <34.022026, 31.960943, 45.681545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893822, 31.582052, 45.683952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451668, 0.158404, 0.878012,
		-0.832629, 0.278694, -0.478601,
		-0.320509, -0.947226, 0.006015,
		33.797668, 31.297884, 45.685757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421715, 32.045776, 45.925934>,  <34.022026, 31.960943, 45.681545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421715, 32.045776, 45.925934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476528, 31.649956, 45.943886>,  <33.509415, 31.412464, 45.954655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476528, 31.649956, 45.943886>,  <33.421715, 32.045776, 45.925934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476528, 31.649956, 45.943886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599310, -0.046752, 0.799151,
		-0.788702, -0.136405, -0.599453,
		0.137033, -0.989550, 0.044876,
		33.517639, 31.353090, 45.957348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742626, 31.723064, 46.085659>,  <33.421715, 32.045776, 45.925934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742626, 31.723064, 46.085659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004971, 31.446081, 46.205891>,  <33.162376, 31.279892, 46.278030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004971, 31.446081, 46.205891>,  <32.742626, 31.723064, 46.085659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004971, 31.446081, 46.205891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535868, -0.146623, 0.831473,
		-0.531689, -0.706401, -0.467231,
		0.655860, -0.692459, 0.300580,
		33.201729, 31.238344, 46.296066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301357, 31.090538, 46.393536>,  <32.742626, 31.723064, 46.085659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301357, 31.090538, 46.393536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661835, 31.015335, 46.549740>,  <32.878120, 30.970213, 46.643463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661835, 31.015335, 46.549740>,  <32.301357, 31.090538, 46.393536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661835, 31.015335, 46.549740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425886, -0.216959, 0.878379,
		-0.080416, -0.957905, -0.275592,
		0.901196, -0.188006, 0.390511,
		32.932194, 30.958933, 46.666893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191685, 30.546675, 46.863392>,  <32.301357, 31.090538, 46.393536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191685, 30.546675, 46.863392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543690, 30.692648, 46.984982>,  <32.754894, 30.780231, 47.057934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543690, 30.692648, 46.984982>,  <32.191685, 30.546675, 46.863392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543690, 30.692648, 46.984982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284246, -0.108065, 0.952642,
		0.380497, -0.924742, 0.008632,
		0.880015, 0.364931, 0.303972,
		32.807693, 30.802128, 47.076172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443714, 30.093805, 47.395351>,  <32.191685, 30.546675, 46.863392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443714, 30.093805, 47.395351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623352, 30.449369, 47.431477>,  <32.731133, 30.662708, 47.453152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623352, 30.449369, 47.431477>,  <32.443714, 30.093805, 47.395351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623352, 30.449369, 47.431477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276833, 0.042325, 0.959985,
		0.849518, -0.456122, 0.265088,
		0.449090, 0.888910, 0.090314,
		32.758080, 30.716042, 47.458572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721100, 30.100544, 48.141911>,  <32.443714, 30.093805, 47.395351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721100, 30.100544, 48.141911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734879, 30.486721, 48.038578>,  <32.743145, 30.718428, 47.976578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734879, 30.486721, 48.038578>,  <32.721100, 30.100544, 48.141911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734879, 30.486721, 48.038578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016073, 0.258988, 0.965747,
		0.999277, -0.029111, 0.024438,
		0.034443, 0.965442, -0.258333,
		32.745213, 30.776354, 47.961079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950764, 30.403055, 48.773949>,  <32.721100, 30.100544, 48.141911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950764, 30.403055, 48.773949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837887, 30.692835, 48.522377>,  <32.770161, 30.866703, 48.371433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837887, 30.692835, 48.522377>,  <32.950764, 30.403055, 48.773949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837887, 30.692835, 48.522377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088113, 0.633225, 0.768936,
		0.955304, 0.272401, -0.114856,
		-0.282188, 0.724447, -0.628924,
		32.753231, 30.910170, 48.333698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374187, 30.967022, 48.868538>,  <32.950764, 30.403055, 48.773949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374187, 30.967022, 48.868538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027386, 31.108179, 48.727814>,  <32.819305, 31.192873, 48.643379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027386, 31.108179, 48.727814>,  <33.374187, 30.967022, 48.868538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027386, 31.108179, 48.727814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037554, 0.657741, 0.752308,
		0.496888, 0.665464, -0.557010,
		-0.867002, 0.352895, -0.351814,
		32.767284, 31.214048, 48.622269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351467, 31.736887, 48.940479>,  <33.374187, 30.967022, 48.868538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351467, 31.736887, 48.940479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965611, 31.641102, 48.896450>,  <32.734097, 31.583632, 48.870033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965611, 31.641102, 48.896450>,  <33.351467, 31.736887, 48.940479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965611, 31.641102, 48.896450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229365, 0.557092, 0.798148,
		-0.129808, 0.795176, -0.592322,
		-0.964646, -0.239464, -0.110071,
		32.676216, 31.569263, 48.863430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932995, 32.381123, 48.886681>,  <33.351467, 31.736887, 48.940479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932995, 32.381123, 48.886681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709015, 32.079777, 49.024612>,  <32.574627, 31.898970, 49.107372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709015, 32.079777, 49.024612>,  <32.932995, 32.381123, 48.886681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709015, 32.079777, 49.024612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082887, 0.465041, 0.881400,
		-0.824372, 0.464955, -0.322842,
		-0.559947, -0.753361, 0.344828,
		32.541031, 31.853769, 49.128059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337044, 32.673466, 49.208878>,  <32.932995, 32.381123, 48.886681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337044, 32.673466, 49.208878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374004, 32.306351, 49.363350>,  <32.396183, 32.086082, 49.456032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374004, 32.306351, 49.363350>,  <32.337044, 32.673466, 49.208878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374004, 32.306351, 49.363350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309082, 0.342243, 0.887321,
		-0.946536, -0.201354, -0.252045,
		0.092405, -0.917783, 0.386180,
		32.401726, 32.031017, 49.479202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762598, 32.528725, 49.550030>,  <32.337044, 32.673466, 49.208878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762598, 32.528725, 49.550030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050465, 32.308605, 49.719383>,  <32.223183, 32.176533, 49.820995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050465, 32.308605, 49.719383>,  <31.762598, 32.528725, 49.550030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050465, 32.308605, 49.719383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174599, 0.446757, 0.877453,
		-0.672010, -0.705395, 0.225434,
		0.719665, -0.550297, 0.423386,
		32.266365, 32.143517, 49.846397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478285, 32.348415, 50.090443>,  <31.762598, 32.528725, 49.550030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478285, 32.348415, 50.090443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863766, 32.273396, 50.166451>,  <32.095055, 32.228382, 50.212055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863766, 32.273396, 50.166451>,  <31.478285, 32.348415, 50.090443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863766, 32.273396, 50.166451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124199, 0.315106, 0.940895,
		-0.236340, -0.930341, 0.280374,
		0.963700, -0.187549, 0.190020,
		32.152874, 32.217133, 50.223457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526445, 31.980196, 50.703781>,  <31.478285, 32.348415, 50.090443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526445, 31.980196, 50.703781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908464, 32.097977, 50.690010>,  <32.137676, 32.168644, 50.681747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908464, 32.097977, 50.690010>,  <31.526445, 31.980196, 50.703781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908464, 32.097977, 50.690010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097866, 0.422755, 0.900944,
		0.279834, -0.857075, 0.432568,
		0.955047, 0.294449, -0.034423,
		32.194977, 32.186310, 50.679684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951435, 31.624832, 51.348923>,  <31.526445, 31.980196, 50.703781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951435, 31.624832, 51.348923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163712, 31.944548, 51.236137>,  <32.291077, 32.136375, 51.168465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163712, 31.944548, 51.236137>,  <31.951435, 31.624832, 51.348923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163712, 31.944548, 51.236137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170067, 0.225489, 0.959287,
		0.830327, -0.557039, -0.016267,
		0.530692, 0.799289, -0.281964,
		32.322918, 32.184334, 51.151546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411335, 31.572128, 51.835907>,  <31.951435, 31.624832, 51.348923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411335, 31.572128, 51.835907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508465, 31.926283, 51.677349>,  <32.566742, 32.138775, 51.582214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508465, 31.926283, 51.677349>,  <32.411335, 31.572128, 51.835907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508465, 31.926283, 51.677349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081961, 0.388438, 0.917823,
		0.966601, -0.255362, 0.021756,
		0.242828, 0.885385, -0.396394,
		32.581314, 32.191898, 51.558430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089417, 31.835760, 52.074539>,  <32.411335, 31.572128, 51.835907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089417, 31.835760, 52.074539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874100, 32.156410, 51.970505>,  <32.744911, 32.348801, 51.908085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874100, 32.156410, 51.970505>,  <33.089417, 31.835760, 52.074539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874100, 32.156410, 51.970505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001896, 0.309760, 0.950813,
		0.842758, 0.511319, -0.168260,
		-0.538289, 0.801625, -0.260083,
		32.712612, 32.396896, 51.892479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493668, 32.406078, 52.374794>,  <33.089417, 31.835760, 52.074539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493668, 32.406078, 52.374794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119820, 32.535866, 52.316555>,  <32.895512, 32.613739, 52.281612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119820, 32.535866, 52.316555>,  <33.493668, 32.406078, 52.374794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119820, 32.535866, 52.316555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030908, 0.481963, 0.875646,
		0.354290, 0.813900, -0.460483,
		-0.934624, 0.324466, -0.145599,
		32.839432, 32.633205, 52.272877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529781, 33.081356, 52.632576>,  <33.493668, 32.406078, 52.374794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529781, 33.081356, 52.632576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134636, 33.019859, 52.623734>,  <32.897549, 32.982964, 52.618427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134636, 33.019859, 52.623734>,  <33.529781, 33.081356, 52.632576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134636, 33.019859, 52.623734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109918, 0.591415, 0.798841,
		-0.109739, 0.791576, -0.601136,
		-0.987864, -0.153740, -0.022107,
		32.838276, 32.973736, 52.617100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858864, 33.517155, 53.223251>,  <33.529781, 33.081356, 52.632576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858864, 33.517155, 53.223251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194351, 33.734978, 53.224167>,  <34.395645, 33.865673, 53.224716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194351, 33.734978, 53.224167>,  <33.858864, 33.517155, 53.223251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194351, 33.734978, 53.224167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046697, -0.067732, -0.996610,
		-0.542560, 0.835982, -0.082237,
		0.838718, 0.544562, 0.002289,
		34.445965, 33.898346, 53.224854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751701, 34.165028, 52.881939>,  <33.858864, 33.517155, 53.223251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751701, 34.165028, 52.881939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132595, 34.042969, 52.877342>,  <34.361130, 33.969734, 52.874584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132595, 34.042969, 52.877342>,  <33.751701, 34.165028, 52.881939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132595, 34.042969, 52.877342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016312, -0.013254, -0.999779,
		0.304929, 0.952212, -0.017598,
		0.952235, -0.305149, -0.011491,
		34.418266, 33.951424, 52.873894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869011, 34.522827, 52.301033>,  <33.751701, 34.165028, 52.881939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869011, 34.522827, 52.301033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201923, 34.304619, 52.340443>,  <34.401672, 34.173695, 52.364090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201923, 34.304619, 52.340443>,  <33.869011, 34.522827, 52.301033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201923, 34.304619, 52.340443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065179, -0.080194, -0.994646,
		0.550504, 0.834250, -0.031187,
		0.832284, -0.545524, 0.098523,
		34.451607, 34.140961, 52.369999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354912, 34.905098, 51.894901>,  <33.869011, 34.522827, 52.301033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354912, 34.905098, 51.894901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482342, 34.530357, 51.952606>,  <34.558800, 34.305511, 51.987228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482342, 34.530357, 51.952606>,  <34.354912, 34.905098, 51.894901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482342, 34.530357, 51.952606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103620, -0.116857, -0.987728,
		0.942217, 0.329614, 0.059849,
		0.318575, -0.936856, 0.144260,
		34.577915, 34.249302, 51.995884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015373, 34.834461, 51.506153>,  <34.354912, 34.905098, 51.894901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015373, 34.834461, 51.506153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830116, 34.480675, 51.528873>,  <34.718964, 34.268402, 51.542507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830116, 34.480675, 51.528873>,  <35.015373, 34.834461, 51.506153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830116, 34.480675, 51.528873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163604, -0.148310, -0.975314,
		0.871054, -0.442414, 0.213391,
		-0.463140, -0.884462, 0.056806,
		34.691174, 34.215336, 51.545914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369663, 34.498627, 51.007965>,  <35.015373, 34.834461, 51.506153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369663, 34.498627, 51.007965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060837, 34.261974, 51.100826>,  <34.875542, 34.119984, 51.156544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060837, 34.261974, 51.100826>,  <35.369663, 34.498627, 51.007965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060837, 34.261974, 51.100826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041695, -0.411642, -0.910391,
		0.634177, -0.693200, 0.342482,
		-0.772063, -0.591628, 0.232151,
		34.829216, 34.084484, 51.170471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613796, 33.785797, 50.945450>,  <35.369663, 34.498627, 51.007965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613796, 33.785797, 50.945450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218269, 33.809525, 50.890717>,  <34.980953, 33.823761, 50.857876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218269, 33.809525, 50.890717>,  <35.613796, 33.785797, 50.945450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218269, 33.809525, 50.890717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104330, -0.380472, -0.918889,
		-0.106567, -0.922888, 0.370028,
		-0.988817, 0.059319, -0.136830,
		34.921623, 33.827320, 50.849667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458344, 33.236549, 50.549610>,  <35.613796, 33.785797, 50.945450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458344, 33.236549, 50.549610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110607, 33.420746, 50.477844>,  <34.901966, 33.531265, 50.434784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110607, 33.420746, 50.477844>,  <35.458344, 33.236549, 50.549610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110607, 33.420746, 50.477844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033599, -0.307133, -0.951073,
		-0.493065, -0.832837, 0.251532,
		-0.869343, 0.460490, -0.179419,
		34.849804, 33.558891, 50.424019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110664, 32.900883, 50.082458>,  <35.458344, 33.236549, 50.549610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110664, 32.900883, 50.082458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902515, 33.239525, 50.037777>,  <34.777626, 33.442711, 50.010967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902515, 33.239525, 50.037777>,  <35.110664, 32.900883, 50.082458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902515, 33.239525, 50.037777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106146, -0.193920, -0.975258,
		-0.847318, -0.495639, 0.190774,
		-0.520371, 0.846603, -0.111702,
		34.746403, 33.493507, 50.004265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529423, 32.708015, 49.749130>,  <35.110664, 32.900883, 50.082458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529423, 32.708015, 49.749130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562813, 33.102814, 49.694176>,  <34.582848, 33.339691, 49.661201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562813, 33.102814, 49.694176>,  <34.529423, 32.708015, 49.749130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562813, 33.102814, 49.694176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179798, -0.120685, -0.976272,
		-0.980155, 0.106201, 0.167385,
		0.083480, 0.986993, -0.137385,
		34.587856, 33.398911, 49.652962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860855, 33.031532, 49.493824>,  <34.529423, 32.708015, 49.749130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860855, 33.031532, 49.493824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165394, 33.270058, 49.392025>,  <34.348118, 33.413174, 49.330944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165394, 33.270058, 49.392025>,  <33.860855, 33.031532, 49.493824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165394, 33.270058, 49.392025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273434, -0.060597, -0.959980,
		-0.587870, 0.800462, 0.116917,
		0.761343, 0.596312, -0.254496,
		34.393795, 33.448952, 49.315678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723148, 33.162773, 48.754524>,  <33.860855, 33.031532, 49.493824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723148, 33.162773, 48.754524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054913, 33.382683, 48.794178>,  <34.253971, 33.514629, 48.817970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054913, 33.382683, 48.794178>,  <33.723148, 33.162773, 48.754524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054913, 33.382683, 48.794178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138075, -0.029799, -0.989973,
		-0.541308, 0.834782, -0.100626,
		0.829410, 0.549774, 0.099132,
		34.303734, 33.547615, 48.823917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678764, 33.877304, 48.410183>,  <33.723148, 33.162773, 48.754524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678764, 33.877304, 48.410183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060909, 33.763531, 48.442135>,  <34.290195, 33.695267, 48.461304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060909, 33.763531, 48.442135>,  <33.678764, 33.877304, 48.410183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060909, 33.763531, 48.442135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072328, -0.036963, -0.996696,
		0.286449, 0.957982, -0.014740,
		0.955362, -0.284436, 0.079877,
		34.347519, 33.678200, 48.466099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052193, 34.244461, 47.883713>,  <33.678764, 33.877304, 48.410183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052193, 34.244461, 47.883713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316227, 33.959961, 47.980389>,  <34.474648, 33.789261, 48.038395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316227, 33.959961, 47.980389>,  <34.052193, 34.244461, 47.883713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316227, 33.959961, 47.980389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338853, -0.005232, -0.940825,
		0.670426, 0.702920, 0.237555,
		0.660081, -0.711250, 0.241694,
		34.514252, 33.746586, 48.052898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820850, 34.489342, 47.763176>,  <34.052193, 34.244461, 47.883713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820850, 34.489342, 47.763176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802834, 34.090168, 47.744884>,  <34.792023, 33.850662, 47.733910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802834, 34.090168, 47.744884>,  <34.820850, 34.489342, 47.763176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802834, 34.090168, 47.744884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301369, 0.030073, -0.953033,
		0.952443, -0.056708, 0.299393,
		-0.045041, -0.997938, -0.045733,
		34.789322, 33.790787, 47.731163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413509, 34.328331, 47.404629>,  <34.820850, 34.489342, 47.763176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413509, 34.328331, 47.404629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162766, 34.017311, 47.384731>,  <35.012321, 33.830700, 47.372791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162766, 34.017311, 47.384731>,  <35.413509, 34.328331, 47.404629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162766, 34.017311, 47.384731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326419, -0.204114, -0.922924,
		0.707462, -0.594777, 0.381756,
		-0.626856, -0.777546, -0.049743,
		34.974709, 33.784046, 47.369808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826103, 33.937927, 46.937477>,  <35.413509, 34.328331, 47.404629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826103, 33.937927, 46.937477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474854, 33.750771, 46.977421>,  <35.264103, 33.638477, 47.001385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474854, 33.750771, 46.977421>,  <35.826103, 33.937927, 46.937477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474854, 33.750771, 46.977421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115744, -0.410277, -0.904586,
		0.464222, -0.782781, 0.414430,
		-0.878124, -0.467896, 0.099857,
		35.211418, 33.610401, 47.007378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966072, 33.199558, 46.794052>,  <35.826103, 33.937927, 46.937477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966072, 33.199558, 46.794052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582176, 33.280388, 46.716003>,  <35.351841, 33.328884, 46.669174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582176, 33.280388, 46.716003>,  <35.966072, 33.199558, 46.794052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582176, 33.280388, 46.716003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129442, -0.298341, -0.945641,
		-0.249300, -0.932824, 0.260172,
		-0.959737, 0.202071, -0.195123,
		35.294254, 33.341011, 46.657467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774860, 32.612602, 46.479076>,  <35.966072, 33.199558, 46.794052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774860, 32.612602, 46.479076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516655, 32.902683, 46.383244>,  <35.361732, 33.076733, 46.325745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516655, 32.902683, 46.383244>,  <35.774860, 32.612602, 46.479076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516655, 32.902683, 46.383244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097681, -0.232719, -0.967626,
		-0.757480, -0.648015, 0.079384,
		-0.645510, 0.725203, -0.239579,
		35.323002, 33.120243, 46.311371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191803, 32.321106, 46.039890>,  <35.774860, 32.612602, 46.479076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191803, 32.321106, 46.039890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271996, 32.705994, 45.966190>,  <35.320110, 32.936924, 45.921970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271996, 32.705994, 45.966190>,  <35.191803, 32.321106, 46.039890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271996, 32.705994, 45.966190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067183, -0.201131, -0.977258,
		-0.977391, 0.183544, -0.104967,
		0.200482, 0.962215, -0.184253,
		35.332142, 32.994659, 45.910915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024864, 32.291553, 45.448509>,  <35.191803, 32.321106, 46.039890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024864, 32.291553, 45.448509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205654, 32.646835, 45.481537>,  <35.314129, 32.860004, 45.501354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205654, 32.646835, 45.481537>,  <35.024864, 32.291553, 45.448509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205654, 32.646835, 45.481537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254503, -0.039682, -0.966258,
		-0.854957, 0.457734, -0.243985,
		0.451970, 0.888203, 0.082568,
		35.341244, 32.913296, 45.506306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747589, 32.807064, 44.861721>,  <35.024864, 32.291553, 45.448509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747589, 32.807064, 44.861721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101498, 32.945583, 44.986465>,  <35.313843, 33.028694, 45.061310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101498, 32.945583, 44.986465>,  <34.747589, 32.807064, 44.861721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101498, 32.945583, 44.986465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355287, -0.068182, -0.932267,
		-0.301584, 0.935642, -0.183362,
		0.884770, 0.346303, 0.311859,
		35.366928, 33.049473, 45.080025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083961, 33.163567, 44.219383>,  <34.747589, 32.807064, 44.861721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083961, 33.163567, 44.219383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396694, 33.114162, 44.463833>,  <35.584335, 33.084518, 44.610504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396694, 33.114162, 44.463833>,  <35.083961, 33.163567, 44.219383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396694, 33.114162, 44.463833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570237, -0.254702, -0.780998,
		0.252119, 0.959099, -0.128703,
		0.781835, -0.123513, 0.611129,
		35.631245, 33.077110, 44.647171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707298, 33.652802, 43.931530>,  <35.083961, 33.163567, 44.219383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707298, 33.652802, 43.931530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841423, 33.328918, 44.124168>,  <35.921898, 33.134586, 44.239750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841423, 33.328918, 44.124168>,  <35.707298, 33.652802, 43.931530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841423, 33.328918, 44.124168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570097, -0.232580, -0.787970,
		0.750037, 0.538773, 0.383626,
		0.335313, -0.809710, 0.481596,
		35.942017, 33.086006, 44.268646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327656, 33.538601, 43.542118>,  <35.707298, 33.652802, 43.931530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327656, 33.538601, 43.542118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277718, 33.206486, 43.759388>,  <36.247757, 33.007217, 43.889751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277718, 33.206486, 43.759388>,  <36.327656, 33.538601, 43.542118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277718, 33.206486, 43.759388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674709, -0.472432, -0.567076,
		0.727449, 0.295690, 0.619181,
		-0.124842, -0.830286, 0.543175,
		36.240265, 32.957401, 43.922340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032436, 33.307510, 43.780235>,  <36.327656, 33.538601, 43.542118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032436, 33.307510, 43.780235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789307, 32.990223, 43.765526>,  <36.643429, 32.799850, 43.756699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789307, 32.990223, 43.765526>,  <37.032436, 33.307510, 43.780235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789307, 32.990223, 43.765526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621712, -0.446564, -0.643471,
		0.493992, -0.413981, 0.764586,
		-0.607821, -0.793222, -0.036778,
		36.606960, 32.752254, 43.754494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387794, 32.743542, 43.696568>,  <37.032436, 33.307510, 43.780235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387794, 32.743542, 43.696568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044727, 32.557308, 43.609272>,  <36.838886, 32.445568, 43.556896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044727, 32.557308, 43.609272>,  <37.387794, 32.743542, 43.696568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044727, 32.557308, 43.609272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426453, -0.406941, -0.807798,
		0.287292, -0.785893, 0.547573,
		-0.857672, -0.465588, -0.218235,
		36.787426, 32.417633, 43.543800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550907, 32.032452, 43.521645>,  <37.387794, 32.743542, 43.696568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550907, 32.032452, 43.521645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193142, 32.111805, 43.361309>,  <36.978481, 32.159416, 43.265110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193142, 32.111805, 43.361309>,  <37.550907, 32.032452, 43.521645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193142, 32.111805, 43.361309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304137, -0.387324, -0.870334,
		-0.327911, -0.900347, 0.286093,
		-0.894413, 0.198381, -0.400836,
		36.924820, 32.171318, 43.241058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218815, 31.403643, 43.062962>,  <37.550907, 32.032452, 43.521645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218815, 31.403643, 43.062962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056767, 31.744678, 42.930923>,  <36.959538, 31.949301, 42.851700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056767, 31.744678, 42.930923>,  <37.218815, 31.403643, 43.062962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056767, 31.744678, 42.930923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311329, -0.210829, -0.926620,
		-0.859622, -0.478164, -0.180024,
		-0.405122, 0.852590, -0.330099,
		36.935230, 32.000454, 42.831894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925632, 31.227858, 42.445793>,  <37.218815, 31.403643, 43.062962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925632, 31.227858, 42.445793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955460, 31.626669, 42.438065>,  <36.973354, 31.865955, 42.433426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955460, 31.626669, 42.438065>,  <36.925632, 31.227858, 42.445793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955460, 31.626669, 42.438065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502435, -0.054299, -0.862908,
		-0.861393, 0.054639, -0.504991,
		0.074569, 0.997029, -0.019320,
		36.977829, 31.925777, 42.432270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609947, 31.416267, 41.811111>,  <36.925632, 31.227858, 42.445793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609947, 31.416267, 41.811111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850830, 31.722445, 41.901833>,  <36.995361, 31.906151, 41.956264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850830, 31.722445, 41.901833>,  <36.609947, 31.416267, 41.811111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850830, 31.722445, 41.901833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277308, 0.065838, -0.958523,
		-0.748628, 0.640124, -0.172616,
		0.602209, 0.765445, 0.226799,
		37.031494, 31.952078, 41.969872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573071, 31.848753, 41.294292>,  <36.609947, 31.416267, 41.811111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573071, 31.848753, 41.294292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907173, 31.992846, 41.460464>,  <37.107635, 32.079300, 41.560169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907173, 31.992846, 41.460464>,  <36.573071, 31.848753, 41.294292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907173, 31.992846, 41.460464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391000, 0.142098, -0.909356,
		-0.386610, 0.921977, -0.022162,
		0.835256, 0.360231, 0.415429,
		37.157749, 32.100914, 41.585094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774082, 32.336880, 40.860683>,  <36.573071, 31.848753, 41.294292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774082, 32.336880, 40.860683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111034, 32.273178, 41.066608>,  <37.313206, 32.234955, 41.190163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111034, 32.273178, 41.066608>,  <36.774082, 32.336880, 40.860683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111034, 32.273178, 41.066608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538766, 0.228665, -0.810829,
		0.011410, 0.960390, 0.278425,
		0.842378, -0.159258, 0.514816,
		37.363747, 32.225399, 41.221054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153812, 32.901196, 40.735149>,  <36.774082, 32.336880, 40.860683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153812, 32.901196, 40.735149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430283, 32.628613, 40.831383>,  <37.596165, 32.465061, 40.889122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430283, 32.628613, 40.831383>,  <37.153812, 32.901196, 40.735149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430283, 32.628613, 40.831383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567759, 0.306064, -0.764182,
		0.447126, 0.664781, 0.598452,
		0.691178, -0.681462, 0.240587,
		37.637634, 32.424175, 40.903557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696304, 33.225441, 40.587288>,  <37.153812, 32.901196, 40.735149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696304, 33.225441, 40.587288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807594, 32.841236, 40.587059>,  <37.874367, 32.610714, 40.586922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807594, 32.841236, 40.587059>,  <37.696304, 33.225441, 40.587288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807594, 32.841236, 40.587059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708720, 0.205685, -0.674841,
		0.648312, 0.187353, 0.737963,
		0.278222, -0.960517, -0.000567,
		37.891060, 32.553082, 40.586887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349472, 33.310833, 40.578434>,  <37.696304, 33.225441, 40.587288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349472, 33.310833, 40.578434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293980, 32.936264, 40.449520>,  <38.260685, 32.711521, 40.372169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293980, 32.936264, 40.449520>,  <38.349472, 33.310833, 40.578434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293980, 32.936264, 40.449520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757529, 0.109279, -0.643590,
		0.637891, -0.333426, 0.694206,
		-0.138727, -0.936421, -0.322289,
		38.252361, 32.655338, 40.352833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966282, 33.063122, 40.546547>,  <38.349472, 33.310833, 40.578434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966282, 33.063122, 40.546547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761684, 32.828682, 40.295193>,  <38.638927, 32.688019, 40.144382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761684, 32.828682, 40.295193>,  <38.966282, 33.063122, 40.546547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761684, 32.828682, 40.295193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780468, -0.010916, -0.625101,
		0.359512, -0.810165, 0.463016,
		-0.511489, -0.586100, -0.628384,
		38.608238, 32.652851, 40.106678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316776, 32.359608, 40.458012>,  <38.966282, 33.063122, 40.546547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316776, 32.359608, 40.458012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091160, 32.479950, 40.150417>,  <38.955791, 32.552155, 39.965858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091160, 32.479950, 40.150417>,  <39.316776, 32.359608, 40.458012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091160, 32.479950, 40.150417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789816, -0.075160, -0.608721,
		-0.240932, -0.950705, -0.195225,
		-0.564041, 0.300852, -0.768990,
		38.921947, 32.570206, 39.919720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743610, 32.129616, 39.789379>,  <39.316776, 32.359608, 40.458012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743610, 32.129616, 39.789379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449581, 32.344311, 39.623688>,  <39.273163, 32.473129, 39.524273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449581, 32.344311, 39.623688>,  <39.743610, 32.129616, 39.789379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449581, 32.344311, 39.623688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607251, 0.249498, -0.754319,
		-0.301524, -0.806016, -0.509334,
		-0.735071, 0.536739, -0.414224,
		39.229061, 32.505333, 39.499420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853096, 32.041264, 39.129299>,  <39.743610, 32.129616, 39.789379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853096, 32.041264, 39.129299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619438, 32.365742, 39.140110>,  <39.479244, 32.560429, 39.146595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619438, 32.365742, 39.140110>,  <39.853096, 32.041264, 39.129299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619438, 32.365742, 39.140110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454944, 0.354816, -0.816781,
		-0.672162, -0.464822, -0.576314,
		-0.584144, 0.811200, 0.027026,
		39.444195, 32.609100, 39.148216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501656, 32.214680, 38.541397>,  <39.853096, 32.041264, 39.129299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501656, 32.214680, 38.541397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590549, 32.550999, 38.738850>,  <39.643887, 32.752789, 38.857319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590549, 32.550999, 38.738850>,  <39.501656, 32.214680, 38.541397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590549, 32.550999, 38.738850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596162, 0.283430, -0.751171,
		-0.771492, 0.461221, -0.438263,
		0.222239, 0.840798, 0.493627,
		39.657223, 32.803238, 38.886936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391998, 32.763393, 38.077675>,  <39.501656, 32.214680, 38.541397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391998, 32.763393, 38.077675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662830, 32.883736, 38.346313>,  <39.825329, 32.955940, 38.507496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662830, 32.883736, 38.346313>,  <39.391998, 32.763393, 38.077675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662830, 32.883736, 38.346313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580702, 0.342162, -0.738722,
		-0.452046, 0.890174, 0.056963,
		0.677082, 0.300858, 0.671599,
		39.865955, 32.973991, 38.547794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595131, 33.504616, 38.010090>,  <39.391998, 32.763393, 38.077675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595131, 33.504616, 38.010090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893497, 33.295277, 38.174873>,  <40.072517, 33.169674, 38.273743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893497, 33.295277, 38.174873>,  <39.595131, 33.504616, 38.010090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893497, 33.295277, 38.174873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653018, 0.452982, -0.606939,
		0.131034, 0.721742, 0.679646,
		0.745921, -0.523350, 0.411955,
		40.117275, 33.138271, 38.298458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134251, 33.788246, 38.459747>,  <39.595131, 33.504616, 38.010090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134251, 33.788246, 38.459747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272205, 33.494869, 38.225441>,  <40.354977, 33.318844, 38.084858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272205, 33.494869, 38.225441>,  <40.134251, 33.788246, 38.459747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272205, 33.494869, 38.225441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376185, 0.679744, -0.629629,
		0.859965, -0.003206, 0.510343,
		0.344884, -0.733442, -0.585762,
		40.375671, 33.274837, 38.049713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648464, 34.046471, 38.070126>,  <40.134251, 33.788246, 38.459747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648464, 34.046471, 38.070126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670231, 33.702976, 37.866322>,  <40.683292, 33.496880, 37.744038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670231, 33.702976, 37.866322>,  <40.648464, 34.046471, 38.070126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670231, 33.702976, 37.866322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590937, 0.439012, -0.676803,
		0.804881, -0.264262, 0.531350,
		0.054416, -0.858740, -0.509514,
		40.686554, 33.445354, 37.713467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270077, 33.817978, 37.978073>,  <40.648464, 34.046471, 38.070126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270077, 33.817978, 37.978073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144257, 33.697601, 37.617962>,  <41.068764, 33.625374, 37.401897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144257, 33.697601, 37.617962>,  <41.270077, 33.817978, 37.978073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144257, 33.697601, 37.617962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691177, 0.577463, -0.434523,
		0.650641, -0.758927, 0.026364,
		-0.314548, -0.300941, -0.900275,
		41.049892, 33.607319, 37.347881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867413, 33.593987, 37.528702>,  <41.270077, 33.817978, 37.978073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867413, 33.593987, 37.528702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561867, 33.692135, 37.289936>,  <41.378540, 33.751026, 37.146675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561867, 33.692135, 37.289936>,  <41.867413, 33.593987, 37.528702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561867, 33.692135, 37.289936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571573, 0.686710, -0.449147,
		0.299698, -0.684266, -0.664802,
		-0.763862, 0.245374, -0.596914,
		41.332706, 33.765747, 37.110863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375259, 34.120716, 37.378468>,  <41.867413, 33.593987, 37.528702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375259, 34.120716, 37.378468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596581, 34.394196, 37.188137>,  <42.729374, 34.558285, 37.073936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596581, 34.394196, 37.188137>,  <42.375259, 34.120716, 37.378468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596581, 34.394196, 37.188137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831835, 0.483492, -0.272555,
		0.043713, 0.546615, 0.836242,
		0.553300, 0.683702, -0.475828,
		42.762569, 34.599304, 37.045387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172077, 34.801739, 37.670994>,  <42.375259, 34.120716, 37.378468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172077, 34.801739, 37.670994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326031, 34.870773, 37.308319>,  <42.418404, 34.912193, 37.090714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326031, 34.870773, 37.308319>,  <42.172077, 34.801739, 37.670994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326031, 34.870773, 37.308319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836018, 0.481432, -0.263245,
		0.391076, 0.859325, 0.329577,
		0.384882, 0.172583, -0.906687,
		42.441494, 34.922550, 37.036312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103676, 35.611626, 37.571602>,  <42.172077, 34.801739, 37.670994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103676, 35.611626, 37.571602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150551, 35.445129, 37.210934>,  <42.178677, 35.345234, 36.994534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150551, 35.445129, 37.210934>,  <42.103676, 35.611626, 37.571602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150551, 35.445129, 37.210934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791458, 0.509287, -0.337966,
		0.599884, 0.753241, -0.269753,
		0.117188, -0.416239, -0.901672,
		42.185707, 35.320259, 36.940434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014503, 36.113243, 37.138607>,  <42.103676, 35.611626, 37.571602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014503, 36.113243, 37.138607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959827, 35.797428, 36.899292>,  <41.927021, 35.607937, 36.755703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959827, 35.797428, 36.899292>,  <42.014503, 36.113243, 37.138607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959827, 35.797428, 36.899292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829458, 0.421412, -0.366622,
		0.541587, 0.446138, -0.712492,
		-0.136689, -0.789540, -0.598284,
		41.918819, 35.560566, 36.719807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986404, 36.393055, 36.432919>,  <42.014503, 36.113243, 37.138607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986404, 36.393055, 36.432919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812534, 36.033203, 36.416348>,  <41.708214, 35.817291, 36.406406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812534, 36.033203, 36.416348>,  <41.986404, 36.393055, 36.432919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812534, 36.033203, 36.416348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768044, 0.394332, -0.504589,
		0.470281, -0.187515, -0.862365,
		-0.434677, -0.899633, -0.041427,
		41.682133, 35.763313, 36.403919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644588, 36.425060, 35.787304>,  <41.986404, 36.393055, 36.432919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644588, 36.425060, 35.787304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465809, 36.128933, 35.988167>,  <41.358540, 35.951256, 36.108685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465809, 36.128933, 35.988167>,  <41.644588, 36.425060, 35.787304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465809, 36.128933, 35.988167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868016, 0.223180, -0.443553,
		0.216278, -0.634162, -0.742335,
		-0.446959, -0.740290, 0.502194,
		41.331722, 35.906837, 36.138813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192413, 36.076908, 35.283653>,  <41.644588, 36.425060, 35.787304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192413, 36.076908, 35.283653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057842, 35.992641, 35.650791>,  <40.977100, 35.942081, 35.871075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057842, 35.992641, 35.650791>,  <41.192413, 36.076908, 35.283653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057842, 35.992641, 35.650791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904562, 0.343337, -0.252759,
		-0.261882, -0.915281, -0.306070,
		-0.336431, -0.210666, 0.917842,
		40.956913, 35.929440, 35.926144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671295, 35.608856, 35.114784>,  <41.192413, 36.076908, 35.283653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671295, 35.608856, 35.114784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597115, 35.740475, 35.485153>,  <40.552605, 35.819447, 35.707375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597115, 35.740475, 35.485153>,  <40.671295, 35.608856, 35.114784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597115, 35.740475, 35.485153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924560, 0.260751, -0.277844,
		-0.332858, -0.907600, 0.255865,
		-0.185454, 0.329045, 0.925925,
		40.541477, 35.839188, 35.762932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068890, 35.163200, 35.382504>,  <40.671295, 35.608856, 35.114784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068890, 35.163200, 35.382504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092690, 35.518688, 35.564335>,  <40.106968, 35.731979, 35.673435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092690, 35.518688, 35.564335>,  <40.068890, 35.163200, 35.382504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092690, 35.518688, 35.564335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923081, 0.222323, -0.313837,
		-0.379975, -0.400942, 0.833585,
		0.059495, 0.888717, 0.454579,
		40.110538, 35.785305, 35.700710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419094, 35.319366, 35.709877>,  <40.068890, 35.163200, 35.382504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419094, 35.319366, 35.709877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583519, 35.682800, 35.680202>,  <39.682175, 35.900860, 35.662399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583519, 35.682800, 35.680202>,  <39.419094, 35.319366, 35.709877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583519, 35.682800, 35.680202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867966, 0.365205, -0.336541,
		-0.278683, 0.202727, 0.938742,
		0.411060, 0.908585, -0.074184,
		39.706837, 35.955376, 35.657948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914959, 35.606487, 35.977787>,  <39.419094, 35.319366, 35.709877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914959, 35.606487, 35.977787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143349, 35.881523, 35.798359>,  <39.280384, 36.046543, 35.690704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143349, 35.881523, 35.798359>,  <38.914959, 35.606487, 35.977787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143349, 35.881523, 35.798359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820087, 0.452391, -0.350427,
		-0.038022, 0.567949, 0.822185,
		0.570974, 0.687587, -0.448567,
		39.314640, 36.087799, 35.663788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611370, 36.227226, 36.002876>,  <38.914959, 35.606487, 35.977787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611370, 36.227226, 36.002876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868946, 36.292736, 35.703941>,  <39.023491, 36.332043, 35.524578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868946, 36.292736, 35.703941>,  <38.611370, 36.227226, 36.002876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868946, 36.292736, 35.703941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749206, 0.332913, -0.572590,
		0.155023, 0.928626, 0.337078,
		0.643940, 0.163776, -0.747341,
		39.062126, 36.341869, 35.479740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379539, 36.898376, 35.665604>,  <38.611370, 36.227226, 36.002876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379539, 36.898376, 35.665604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592785, 36.727806, 35.373314>,  <38.720734, 36.625465, 35.197941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592785, 36.727806, 35.373314>,  <38.379539, 36.898376, 35.665604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592785, 36.727806, 35.373314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581492, 0.442676, -0.682573,
		0.614539, 0.788796, -0.011968,
		0.533112, -0.426427, -0.730720,
		38.752720, 36.599876, 35.154099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434605, 37.410595, 35.073277>,  <38.379539, 36.898376, 35.665604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434605, 37.410595, 35.073277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532345, 37.067570, 34.892223>,  <38.590988, 36.861755, 34.783592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532345, 37.067570, 34.892223>,  <38.434605, 37.410595, 35.073277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532345, 37.067570, 34.892223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588864, 0.239626, -0.771892,
		0.770409, 0.455155, -0.446434,
		0.244353, -0.857562, -0.452635,
		38.605652, 36.810303, 34.756432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904224, 37.594009, 34.558201>,  <38.434605, 37.410595, 35.073277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904224, 37.594009, 34.558201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768517, 37.245461, 34.416431>,  <38.687092, 37.036331, 34.331371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768517, 37.245461, 34.416431>,  <38.904224, 37.594009, 34.558201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768517, 37.245461, 34.416431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427617, 0.478446, -0.766963,
		0.837879, -0.108650, -0.534934,
		-0.339268, -0.871369, -0.354419,
		38.666737, 36.984051, 34.310104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006416, 37.675079, 33.794277>,  <38.904224, 37.594009, 34.558201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006416, 37.675079, 33.794277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726578, 37.401592, 33.877323>,  <38.558678, 37.237499, 33.927151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726578, 37.401592, 33.877323>,  <39.006416, 37.675079, 33.794277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726578, 37.401592, 33.877323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586378, 0.383296, -0.713614,
		0.408344, -0.620967, -0.669070,
		-0.699582, -0.683728, 0.207605,
		38.516701, 37.196476, 33.939610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872616, 37.396240, 33.187840>,  <39.006416, 37.675079, 33.794277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872616, 37.396240, 33.187840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552803, 37.302479, 33.409039>,  <38.360916, 37.246223, 33.541756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552803, 37.302479, 33.409039>,  <38.872616, 37.396240, 33.187840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552803, 37.302479, 33.409039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598946, 0.242461, -0.763202,
		0.044815, -0.941419, -0.334248,
		-0.799534, -0.234399, 0.552993,
		38.312943, 37.232159, 33.574936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538620, 36.942490, 32.800751>,  <38.872616, 37.396240, 33.187840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538620, 36.942490, 32.800751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251354, 37.057304, 33.054317>,  <38.078995, 37.126194, 33.206459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251354, 37.057304, 33.054317>,  <38.538620, 36.942490, 32.800751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251354, 37.057304, 33.054317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552903, 0.317779, -0.770269,
		-0.422541, -0.903674, -0.069514,
		-0.718163, 0.287036, 0.633919,
		38.035904, 37.143414, 33.244492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956364, 36.646839, 32.624332>,  <38.538620, 36.942490, 32.800751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956364, 36.646839, 32.624332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807549, 36.943657, 32.847385>,  <37.718258, 37.121746, 32.981216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807549, 36.943657, 32.847385>,  <37.956364, 36.646839, 32.624332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807549, 36.943657, 32.847385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644983, 0.225364, -0.730211,
		-0.667520, -0.631332, 0.394762,
		-0.372040, 0.742045, 0.557633,
		37.695938, 37.166271, 33.014675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187698, 36.573277, 32.522083>,  <37.956364, 36.646839, 32.624332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187698, 36.573277, 32.522083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242290, 36.946041, 32.656490>,  <37.275047, 37.169701, 32.737137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242290, 36.946041, 32.656490>,  <37.187698, 36.573277, 32.522083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242290, 36.946041, 32.656490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598966, 0.347798, -0.721302,
		-0.789058, -0.102822, 0.605652,
		0.136479, 0.931914, 0.336020,
		37.283234, 37.225616, 32.757298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495354, 36.938461, 32.602489>,  <37.187698, 36.573277, 32.522083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495354, 36.938461, 32.602489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772751, 37.225529, 32.577126>,  <36.939190, 37.397770, 32.561909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772751, 37.225529, 32.577126>,  <36.495354, 36.938461, 32.602489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772751, 37.225529, 32.577126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428338, 0.339939, -0.837239,
		-0.579303, 0.607781, 0.543149,
		0.693495, 0.717666, -0.063408,
		36.980801, 37.440830, 32.558102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189014, 37.708572, 32.718498>,  <36.495354, 36.938461, 32.602489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189014, 37.708572, 32.718498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502605, 37.655727, 32.475868>,  <36.690758, 37.624020, 32.330292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502605, 37.655727, 32.475868>,  <36.189014, 37.708572, 32.718498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502605, 37.655727, 32.475868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524942, 0.380508, -0.761347,
		0.331392, 0.915292, 0.228955,
		0.783974, -0.132117, -0.606572,
		36.737797, 37.616093, 32.293896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529957, 38.300205, 32.347965>,  <36.189014, 37.708572, 32.718498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529957, 38.300205, 32.347965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541878, 37.984119, 32.103123>,  <36.549030, 37.794468, 31.956217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541878, 37.984119, 32.103123>,  <36.529957, 38.300205, 32.347965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541878, 37.984119, 32.103123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580065, 0.485043, -0.654414,
		0.814025, 0.374563, -0.443921,
		0.029799, -0.790213, -0.612108,
		36.550816, 37.747055, 31.919491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687614, 38.499413, 31.724817>,  <36.529957, 38.300205, 32.347965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687614, 38.499413, 31.724817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490894, 38.158943, 31.651457>,  <36.372864, 37.954662, 31.607441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490894, 38.158943, 31.651457>,  <36.687614, 38.499413, 31.724817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490894, 38.158943, 31.651457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711686, 0.514308, -0.478530,
		0.501633, -0.104824, -0.858706,
		-0.491801, -0.851176, -0.183392,
		36.343353, 37.903591, 31.596437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539921, 38.168228, 31.091354>,  <36.687614, 38.499413, 31.724817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539921, 38.168228, 31.091354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218803, 38.088718, 31.316214>,  <36.026134, 38.041012, 31.451130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218803, 38.088718, 31.316214>,  <36.539921, 38.168228, 31.091354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218803, 38.088718, 31.316214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537056, 0.650626, -0.536895,
		-0.259027, -0.732921, -0.629072,
		-0.802792, -0.198777, 0.562150,
		35.977966, 38.029087, 31.484858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257526, 37.891819, 30.852760>,  <36.539921, 38.168228, 31.091354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257526, 37.891819, 30.852760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206425, 37.851566, 30.458086>,  <37.175762, 37.827415, 30.221281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206425, 37.851566, 30.458086>,  <37.257526, 37.891819, 30.852760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206425, 37.851566, 30.458086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671903, -0.740551, -0.011468,
		-0.729538, -0.664423, 0.162227,
		-0.127757, -0.100635, -0.986687,
		37.168098, 37.821377, 30.162081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221725, 37.129318, 30.676609>,  <37.257526, 37.891819, 30.852760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221725, 37.129318, 30.676609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362892, 37.370338, 30.390285>,  <37.447594, 37.514950, 30.218491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362892, 37.370338, 30.390285>,  <37.221725, 37.129318, 30.676609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362892, 37.370338, 30.390285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811237, -0.578241, -0.086784,
		-0.466202, -0.550063, -0.692883,
		0.352917, 0.602551, -0.715809,
		37.468765, 37.551105, 30.175543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431854, 36.760197, 30.067688>,  <37.221725, 37.129318, 30.676609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431854, 36.760197, 30.067688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662647, 37.083290, 30.116102>,  <37.801125, 37.277145, 30.145151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662647, 37.083290, 30.116102>,  <37.431854, 36.760197, 30.067688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662647, 37.083290, 30.116102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816435, -0.566249, -0.113115,
		-0.022832, 0.164082, -0.986182,
		0.576985, 0.807737, 0.121034,
		37.835743, 37.325611, 30.152412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052658, 36.520065, 29.864624>,  <37.431854, 36.760197, 30.067688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052658, 36.520065, 29.864624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141644, 36.874893, 30.026424>,  <38.195034, 37.087788, 30.123505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141644, 36.874893, 30.026424>,  <38.052658, 36.520065, 29.864624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141644, 36.874893, 30.026424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974627, -0.212877, -0.069174,
		0.024747, 0.409627, -0.911917,
		0.222462, 0.887068, 0.404502,
		38.208382, 37.141014, 30.147776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489208, 36.889820, 29.505041>,  <38.052658, 36.520065, 29.864624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489208, 36.889820, 29.505041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527805, 36.977703, 29.893354>,  <38.550964, 37.030434, 30.126343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527805, 36.977703, 29.893354>,  <38.489208, 36.889820, 29.505041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527805, 36.977703, 29.893354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970049, -0.239200, -0.042282,
		0.222922, 0.945788, -0.236202,
		0.096489, 0.219702, 0.970784,
		38.556751, 37.043613, 30.184589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182522, 37.174244, 29.539671>,  <38.489208, 36.889820, 29.505041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182522, 37.174244, 29.539671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078564, 37.100887, 29.918896>,  <39.016190, 37.056873, 30.146431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078564, 37.100887, 29.918896>,  <39.182522, 37.174244, 29.539671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078564, 37.100887, 29.918896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917902, -0.351788, 0.183577,
		0.299850, 0.917939, 0.259765,
		-0.259895, -0.183393, 0.948062,
		39.000595, 37.045868, 30.203314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804623, 37.140072, 29.916178>,  <39.182522, 37.174244, 29.539671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804623, 37.140072, 29.916178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543900, 36.941406, 30.145430>,  <39.387466, 36.822208, 30.282980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543900, 36.941406, 30.145430>,  <39.804623, 37.140072, 29.916178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543900, 36.941406, 30.145430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757936, -0.452708, 0.469669,
		0.026193, 0.740528, 0.671515,
		-0.651803, -0.496663, 0.573130,
		39.348358, 36.792408, 30.317369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094395, 37.199192, 30.446484>,  <39.804623, 37.140072, 29.916178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094395, 37.199192, 30.446484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864456, 36.879398, 30.516186>,  <39.726494, 36.687523, 30.558008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864456, 36.879398, 30.516186>,  <40.094395, 37.199192, 30.446484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864456, 36.879398, 30.516186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690615, -0.359829, 0.627355,
		-0.438859, 0.480980, 0.758987,
		-0.574851, -0.799488, 0.174257,
		39.692001, 36.639553, 30.568462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114548, 37.245289, 31.179171>,  <40.094395, 37.199192, 30.446484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114548, 37.245289, 31.179171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995991, 36.882519, 31.059408>,  <39.924858, 36.664856, 30.987551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995991, 36.882519, 31.059408>,  <40.114548, 37.245289, 31.179171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995991, 36.882519, 31.059408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663601, -0.421016, 0.618369,
		-0.686867, -0.015405, 0.726620,
		-0.296393, -0.906922, -0.299404,
		39.907074, 36.610443, 30.969587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970592, 36.933743, 31.788822>,  <40.114548, 37.245289, 31.179171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970592, 36.933743, 31.788822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009499, 36.644493, 31.515287>,  <40.032841, 36.470943, 31.351166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009499, 36.644493, 31.515287>,  <39.970592, 36.933743, 31.788822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009499, 36.644493, 31.515287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641060, -0.480063, 0.598817,
		-0.761303, -0.496623, 0.416873,
		0.097261, -0.723122, -0.683838,
		40.038677, 36.427555, 31.310135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963959, 36.406181, 32.199020>,  <39.970592, 36.933743, 31.788822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963959, 36.406181, 32.199020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152489, 36.278145, 31.870289>,  <40.265606, 36.201324, 31.673050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152489, 36.278145, 31.870289>,  <39.963959, 36.406181, 32.199020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152489, 36.278145, 31.870289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600627, -0.565852, 0.564853,
		-0.645834, -0.759839, -0.074446,
		0.471323, -0.320087, -0.821826,
		40.293884, 36.182117, 31.623741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099140, 35.632370, 32.264191>,  <39.963959, 36.406181, 32.199020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099140, 35.632370, 32.264191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364250, 35.783493, 32.005581>,  <40.523315, 35.874168, 31.850414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364250, 35.783493, 32.005581>,  <40.099140, 35.632370, 32.264191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364250, 35.783493, 32.005581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709416, -0.593188, 0.380601,
		-0.239717, -0.710907, -0.661171,
		0.662771, 0.377809, -0.646525,
		40.563080, 35.896835, 31.811623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525745, 35.126587, 32.076706>,  <40.099140, 35.632370, 32.264191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525745, 35.126587, 32.076706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755123, 35.413654, 31.918665>,  <40.892750, 35.585896, 31.823841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755123, 35.413654, 31.918665>,  <40.525745, 35.126587, 32.076706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755123, 35.413654, 31.918665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803430, -0.398358, 0.442507,
		0.160184, -0.571189, -0.805037,
		0.573448, 0.717673, -0.395100,
		40.927158, 35.628956, 31.800135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047691, 34.803116, 31.767540>,  <40.525745, 35.126587, 32.076706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047691, 34.803116, 31.767540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203331, 35.165344, 31.835123>,  <41.296715, 35.382679, 31.875673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203331, 35.165344, 31.835123>,  <41.047691, 34.803116, 31.767540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203331, 35.165344, 31.835123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857853, -0.423034, 0.291770,
		0.335693, 0.031413, -0.941448,
		0.389099, 0.905569, 0.168957,
		41.320061, 35.437016, 31.885811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796059, 34.659451, 31.699606>,  <41.047691, 34.803116, 31.767540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796059, 34.659451, 31.699606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760368, 35.021881, 31.865046>,  <41.738956, 35.239338, 31.964310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760368, 35.021881, 31.865046>,  <41.796059, 34.659451, 31.699606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760368, 35.021881, 31.865046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814793, -0.172433, 0.553515,
		0.572845, 0.386384, -0.722880,
		-0.089221, 0.906076, 0.413600,
		41.733601, 35.293705, 31.989126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362972, 34.977276, 31.513063>,  <41.796059, 34.659451, 31.699606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362972, 34.977276, 31.513063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241032, 35.142853, 31.856159>,  <42.167866, 35.242199, 32.062016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241032, 35.142853, 31.856159>,  <42.362972, 34.977276, 31.513063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241032, 35.142853, 31.856159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802122, -0.373966, 0.465563,
		0.513482, 0.829939, -0.218030,
		-0.304853, 0.413945, 0.857738,
		42.149574, 35.267036, 32.113480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954056, 35.424507, 31.805885>,  <42.362972, 34.977276, 31.513063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954056, 35.424507, 31.805885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698696, 35.379890, 32.110519>,  <42.545483, 35.353119, 32.293301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698696, 35.379890, 32.110519>,  <42.954056, 35.424507, 31.805885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698696, 35.379890, 32.110519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769032, -0.133885, 0.625031,
		0.032247, 0.984699, 0.171252,
		-0.638396, -0.111543, 0.761583,
		42.507175, 35.346428, 32.338993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285408, 35.877895, 32.380856>,  <42.954056, 35.424507, 31.805885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285408, 35.877895, 32.380856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027824, 35.636375, 32.568787>,  <42.873276, 35.491463, 32.681545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027824, 35.636375, 32.568787>,  <43.285408, 35.877895, 32.380856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027824, 35.636375, 32.568787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665664, -0.139492, 0.733099,
		-0.377110, 0.784833, 0.491757,
		-0.643956, -0.603804, 0.469831,
		42.834637, 35.455235, 32.709736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222397, 36.112232, 33.098766>,  <43.285408, 35.877895, 32.380856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222397, 36.112232, 33.098766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098831, 35.731880, 33.106747>,  <43.024693, 35.503670, 33.111534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098831, 35.731880, 33.106747>,  <43.222397, 36.112232, 33.098766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098831, 35.731880, 33.106747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614142, -0.183414, 0.767586,
		-0.726222, 0.249375, 0.640635,
		-0.308918, -0.950879, 0.019953,
		43.006157, 35.446617, 33.112732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121735, 36.035091, 33.745991>,  <43.222397, 36.112232, 33.098766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121735, 36.035091, 33.745991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154705, 35.656490, 33.621197>,  <43.174488, 35.429329, 33.546318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154705, 35.656490, 33.621197>,  <43.121735, 36.035091, 33.745991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154705, 35.656490, 33.621197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532597, -0.222763, 0.816528,
		-0.842346, -0.233468, 0.485743,
		0.082427, -0.946504, -0.311988,
		43.179432, 35.372540, 33.527599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895664, 35.629120, 34.280415>,  <43.121735, 36.035091, 33.745991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895664, 35.629120, 34.280415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090195, 35.341927, 34.081226>,  <43.206913, 35.169609, 33.961712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090195, 35.341927, 34.081226>,  <42.895664, 35.629120, 34.280415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090195, 35.341927, 34.081226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508991, -0.230447, 0.829350,
		-0.710220, -0.656802, 0.253376,
		0.486329, -0.717987, -0.497974,
		43.236095, 35.126530, 33.931835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959709, 35.148426, 34.752010>,  <42.895664, 35.629120, 34.280415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959709, 35.148426, 34.752010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256142, 35.067554, 34.495911>,  <43.434002, 35.019032, 34.342251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256142, 35.067554, 34.495911>,  <42.959709, 35.148426, 34.752010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256142, 35.067554, 34.495911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625133, -0.140129, 0.767836,
		-0.244960, -0.969271, 0.022543,
		0.741083, -0.202181, -0.640250,
		43.478466, 35.006901, 34.303837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241940, 34.591412, 34.932899>,  <42.959709, 35.148426, 34.752010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241940, 34.591412, 34.932899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559216, 34.719620, 34.725777>,  <43.749580, 34.796543, 34.601505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559216, 34.719620, 34.725777>,  <43.241940, 34.591412, 34.932899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559216, 34.719620, 34.725777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514428, 0.102399, 0.851398,
		0.325914, -0.941690, -0.083664,
		0.793186, 0.320522, -0.517805,
		43.797173, 34.815777, 34.570435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788879, 34.339478, 35.288963>,  <43.241940, 34.591412, 34.932899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788879, 34.339478, 35.288963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966366, 34.615887, 35.060719>,  <44.072857, 34.781731, 34.923771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966366, 34.615887, 35.060719>,  <43.788879, 34.339478, 35.288963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966366, 34.615887, 35.060719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641408, 0.199800, 0.740727,
		0.625869, -0.694669, -0.354574,
		0.443716, 0.691024, -0.570615,
		44.099480, 34.823193, 34.889534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472809, 34.180767, 35.209225>,  <43.788879, 34.339478, 35.288963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472809, 34.180767, 35.209225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457001, 34.576962, 35.156487>,  <44.447514, 34.814678, 35.124844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457001, 34.576962, 35.156487>,  <44.472809, 34.180767, 35.209225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457001, 34.576962, 35.156487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539547, 0.132212, 0.831510,
		0.841027, -0.038273, -0.539637,
		-0.039522, 0.990482, -0.131844,
		44.445145, 34.874107, 35.116932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192398, 34.457432, 35.357906>,  <44.472809, 34.180767, 35.209225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192398, 34.457432, 35.357906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937168, 34.765244, 35.368370>,  <44.784031, 34.949932, 35.374649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937168, 34.765244, 35.368370>,  <45.192398, 34.457432, 35.357906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937168, 34.765244, 35.368370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603245, 0.478497, 0.638071,
		0.478497, 0.422919, -0.769532,
		-0.638071, 0.769532, 0.026164,
		44.745747, 34.996101, 35.376221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685234, 34.979446, 35.285213>,  <45.192398, 34.457432, 35.357906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685234, 34.979446, 35.285213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361923, 35.114674, 35.478043>,  <45.167938, 35.195808, 35.593742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361923, 35.114674, 35.478043>,  <45.685234, 34.979446, 35.285213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361923, 35.114674, 35.478043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581978, 0.334417, 0.741260,
		0.089382, 0.879702, -0.467050,
		-0.808278, 0.338068, 0.482076,
		45.119438, 35.216095, 35.622665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110603, 35.328876, 34.747097>,  <45.685234, 34.979446, 35.285213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110603, 35.328876, 34.747097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445503, 35.348022, 34.529209>,  <46.646442, 35.359509, 34.398476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445503, 35.348022, 34.529209>,  <46.110603, 35.328876, 34.747097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.445503, 35.348022, 34.529209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546436, -0.110598, 0.830166,
		-0.020514, -0.992712, -0.118750,
		0.837250, 0.047859, -0.544723,
		46.696678, 35.362381, 34.365791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.593765, 34.645756, 34.884842>,  <46.110603, 35.328876, 34.747097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.593765, 34.645756, 34.884842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773254, 34.986900, 34.778053>,  <46.880947, 35.191589, 34.713982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773254, 34.986900, 34.778053>,  <46.593765, 34.645756, 34.884842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773254, 34.986900, 34.778053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583616, -0.053426, 0.810270,
		0.676787, -0.519393, -0.521718,
		0.448722, 0.852864, -0.266968,
		46.907871, 35.242760, 34.697964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.415184, 34.585037, 34.666100>,  <46.593765, 34.645756, 34.884842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.415184, 34.585037, 34.666100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280113, 34.919907, 34.838196>,  <47.199070, 35.120831, 34.941452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280113, 34.919907, 34.838196>,  <47.415184, 34.585037, 34.666100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.280113, 34.919907, 34.838196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512221, -0.220041, 0.830188,
		0.789684, 0.500717, -0.354515,
		-0.337681, 0.837176, 0.430241,
		47.178810, 35.171059, 34.967270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.975319, 34.831860, 34.860649>,  <47.415184, 34.585037, 34.666100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.975319, 34.831860, 34.860649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.702744, 34.966194, 35.120758>,  <47.539200, 35.046795, 35.276825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.702744, 34.966194, 35.120758>,  <47.975319, 34.831860, 34.860649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.702744, 34.966194, 35.120758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661318, -0.098087, 0.743665,
		0.313531, 0.936800, -0.155252,
		-0.681437, 0.335833, 0.650277,
		47.498314, 35.066944, 35.315842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.952576, 37.735294, 47.535637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.589001, 37.590611, 47.452690>,  <33.370857, 37.503799, 47.402924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.589001, 37.590611, 47.452690>,  <33.952576, 37.735294, 47.535637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589001, 37.590611, 47.452690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260832, -0.105287, -0.959626,
		0.325277, -0.926325, 0.190045,
		-0.908934, -0.361714, -0.207368,
		33.316319, 37.482098, 47.390480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095512, 37.215786, 47.016293>,  <33.952576, 37.735294, 47.535637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095512, 37.215786, 47.016293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.703655, 37.283062, 46.972458>,  <33.468540, 37.323425, 46.946159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.703655, 37.283062, 46.972458>,  <34.095512, 37.215786, 47.016293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703655, 37.283062, 46.972458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104976, -0.036076, -0.993820,
		-0.171103, -0.985094, 0.017686,
		-0.979645, 0.168189, -0.109584,
		33.409763, 37.333519, 46.939583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931114, 36.778557, 46.511528>,  <34.095512, 37.215786, 47.016293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931114, 36.778557, 46.511528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.636398, 37.047935, 46.535553>,  <33.459568, 37.209564, 46.549969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.636398, 37.047935, 46.535553>,  <33.931114, 36.778557, 46.511528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636398, 37.047935, 46.535553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169209, -0.097658, -0.980730,
		-0.654608, -0.732753, 0.185908,
		-0.736788, 0.673450, 0.060061,
		33.415363, 37.249969, 46.553570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326408, 36.540855, 46.523376>,  <33.931114, 36.778557, 46.511528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326408, 36.540855, 46.523376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.268902, 36.898857, 46.354473>,  <33.234398, 37.113659, 46.253132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.268902, 36.898857, 46.354473>,  <33.326408, 36.540855, 46.523376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268902, 36.898857, 46.354473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113750, -0.408914, -0.905455,
		-0.983052, -0.178209, -0.043017,
		-0.143770, 0.895003, -0.422255,
		33.225769, 37.167358, 46.227795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860302, 36.517769, 45.941551>,  <33.326408, 36.540855, 46.523376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860302, 36.517769, 45.941551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.068047, 36.852657, 45.873051>,  <33.192692, 37.053589, 45.831951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.068047, 36.852657, 45.873051>,  <32.860302, 36.517769, 45.941551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068047, 36.852657, 45.873051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121158, -0.270514, -0.955062,
		-0.845923, 0.475272, -0.241930,
		0.519359, 0.837221, -0.171251,
		33.223854, 37.103825, 45.821674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557652, 36.711769, 45.396694>,  <32.860302, 36.517769, 45.941551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557652, 36.711769, 45.396694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.919853, 36.880589, 45.414284>,  <33.137173, 36.981880, 45.424839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.919853, 36.880589, 45.414284>,  <32.557652, 36.711769, 45.396694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919853, 36.880589, 45.414284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173339, -0.273309, -0.946179,
		-0.387315, 0.864394, -0.320641,
		0.905506, 0.422049, 0.043977,
		33.191505, 37.007202, 45.427475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555088, 37.140896, 44.869801>,  <32.557652, 36.711769, 45.396694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555088, 37.140896, 44.869801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.946777, 37.080585, 44.924030>,  <33.181793, 37.044399, 44.956570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.946777, 37.080585, 44.924030>,  <32.555088, 37.140896, 44.869801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946777, 37.080585, 44.924030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104771, -0.196203, -0.974950,
		0.173596, 0.968902, -0.176331,
		0.979228, -0.150773, 0.135573,
		33.240547, 37.035355, 44.964703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825962, 37.424812, 44.298149>,  <32.555088, 37.140896, 44.869801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825962, 37.424812, 44.298149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.110241, 37.178371, 44.433994>,  <33.280807, 37.030506, 44.515503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.110241, 37.178371, 44.433994>,  <32.825962, 37.424812, 44.298149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110241, 37.178371, 44.433994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275351, -0.200626, -0.940176,
		0.647375, 0.761691, 0.027059,
		0.710694, -0.616098, 0.339613,
		33.323448, 36.993542, 44.535877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544788, 37.704357, 44.033768>,  <32.825962, 37.424812, 44.298149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544788, 37.704357, 44.033768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.547752, 37.313210, 44.117405>,  <33.549530, 37.078522, 44.167587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.547752, 37.313210, 44.117405>,  <33.544788, 37.704357, 44.033768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547752, 37.313210, 44.117405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357941, -0.192652, -0.913654,
		0.933715, 0.081618, 0.348591,
		0.007414, -0.977867, 0.209096,
		33.549976, 37.019848, 44.180134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137142, 37.557926, 43.546822>,  <33.544788, 37.704357, 44.033768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137142, 37.557926, 43.546822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.973698, 37.219143, 43.682877>,  <33.875633, 37.015873, 43.764511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.973698, 37.219143, 43.682877>,  <34.137142, 37.557926, 43.546822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973698, 37.219143, 43.682877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229612, -0.456075, -0.859810,
		0.883355, -0.273226, 0.380829,
		-0.408610, -0.846961, 0.340141,
		33.851116, 36.965054, 43.784920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653671, 37.046776, 43.524910>,  <34.137142, 37.557926, 43.546822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653671, 37.046776, 43.524910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311184, 36.840134, 43.523769>,  <34.105690, 36.716148, 43.523083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311184, 36.840134, 43.523769>,  <34.653671, 37.046776, 43.524910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311184, 36.840134, 43.523769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384020, -0.632760, -0.672416,
		0.345567, -0.576832, 0.740168,
		-0.856220, -0.516604, -0.002854,
		34.054317, 36.685154, 43.522915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872692, 36.390232, 43.458511>,  <34.653671, 37.046776, 43.524910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872692, 36.390232, 43.458511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490715, 36.397282, 43.340008>,  <34.261528, 36.401512, 43.268906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490715, 36.397282, 43.340008>,  <34.872692, 36.390232, 43.458511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490715, 36.397282, 43.340008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260523, -0.428327, -0.865254,
		-0.142145, -0.903452, 0.404437,
		-0.954947, 0.017626, -0.296254,
		34.204231, 36.402569, 43.251133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795757, 35.704605, 43.182819>,  <34.872692, 36.390232, 43.458511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795757, 35.704605, 43.182819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506901, 35.938583, 43.035114>,  <34.333588, 36.078972, 42.946491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506901, 35.938583, 43.035114>,  <34.795757, 35.704605, 43.182819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506901, 35.938583, 43.035114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092937, -0.446930, -0.889728,
		-0.685479, -0.676824, 0.268381,
		-0.722137, 0.584947, -0.369263,
		34.290260, 36.114067, 42.924335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415409, 35.284809, 42.759789>,  <34.795757, 35.704605, 43.182819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415409, 35.284809, 42.759789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.304028, 35.639763, 42.612816>,  <34.237198, 35.852737, 42.524632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.304028, 35.639763, 42.612816>,  <34.415409, 35.284809, 42.759789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304028, 35.639763, 42.612816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025355, -0.375638, -0.926419,
		-0.960114, -0.267285, 0.082099,
		-0.278458, 0.887386, -0.367432,
		34.220490, 35.905979, 42.502586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922615, 35.059238, 42.263123>,  <34.415409, 35.284809, 42.759789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922615, 35.059238, 42.263123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992428, 35.448120, 42.200703>,  <34.034317, 35.681450, 42.163250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992428, 35.448120, 42.200703>,  <33.922615, 35.059238, 42.263123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992428, 35.448120, 42.200703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007119, -0.157234, -0.987536,
		-0.984626, 0.173468, -0.020521,
		0.174533, 0.972207, -0.156051,
		34.044788, 35.739780, 42.153889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440674, 35.276077, 41.792908>,  <33.922615, 35.059238, 42.263123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440674, 35.276077, 41.792908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.752079, 35.523502, 41.750389>,  <33.938923, 35.671955, 41.724876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.752079, 35.523502, 41.750389>,  <33.440674, 35.276077, 41.792908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752079, 35.523502, 41.750389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101646, -0.291392, -0.951188,
		-0.619343, 0.729707, -0.289727,
		0.778513, 0.618561, -0.106300,
		33.985634, 35.709072, 41.718498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475529, 35.390835, 41.068310>,  <33.440674, 35.276077, 41.792908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475529, 35.390835, 41.068310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.841549, 35.506618, 41.180668>,  <34.061161, 35.576088, 41.248081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.841549, 35.506618, 41.180668>,  <33.475529, 35.390835, 41.068310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841549, 35.506618, 41.180668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373535, -0.345409, -0.860909,
		-0.152173, 0.892697, -0.424188,
		0.915049, 0.289456, 0.280892,
		34.116062, 35.593456, 41.264935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800346, 35.823627, 40.462074>,  <33.475529, 35.390835, 41.068310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800346, 35.823627, 40.462074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092358, 35.658905, 40.680237>,  <34.267567, 35.560070, 40.811134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092358, 35.658905, 40.680237>,  <33.800346, 35.823627, 40.462074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092358, 35.658905, 40.680237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488535, -0.243615, -0.837845,
		0.477899, 0.878105, 0.023335,
		0.730031, -0.411806, 0.545409,
		34.311367, 35.535362, 40.843861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393799, 35.974644, 40.084496>,  <33.800346, 35.823627, 40.462074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393799, 35.974644, 40.084496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494953, 35.660370, 40.310329>,  <34.555645, 35.471806, 40.445831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494953, 35.660370, 40.310329>,  <34.393799, 35.974644, 40.084496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494953, 35.660370, 40.310329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525665, -0.378326, -0.761936,
		0.812235, 0.489465, 0.317331,
		0.252887, -0.785680, 0.564584,
		34.570820, 35.424667, 40.479706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156746, 35.887371, 40.097275>,  <34.393799, 35.974644, 40.084496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156746, 35.887371, 40.097275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.022617, 35.529228, 40.214508>,  <34.942139, 35.314342, 40.284847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.022617, 35.529228, 40.214508>,  <35.156746, 35.887371, 40.097275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022617, 35.529228, 40.214508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564412, -0.440010, -0.698449,
		0.754319, -0.068787, 0.652894,
		-0.335324, -0.895355, 0.293083,
		34.922020, 35.260620, 40.302433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673664, 35.487591, 40.183987>,  <35.156746, 35.887371, 40.097275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673664, 35.487591, 40.183987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403069, 35.197025, 40.135513>,  <35.240711, 35.022686, 40.106430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403069, 35.197025, 40.135513>,  <35.673664, 35.487591, 40.183987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403069, 35.197025, 40.135513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649625, -0.511074, -0.562842,
		0.346922, -0.459480, 0.817633,
		-0.676485, -0.726417, -0.121187,
		35.200123, 34.979099, 40.099155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931046, 34.840073, 40.384262>,  <35.673664, 35.487591, 40.183987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931046, 34.840073, 40.384262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.635529, 34.772366, 40.123333>,  <35.458218, 34.731743, 39.966774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.635529, 34.772366, 40.123333>,  <35.931046, 34.840073, 40.384262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635529, 34.772366, 40.123333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637023, -0.491319, -0.593976,
		-0.219960, -0.854374, 0.470811,
		-0.738796, -0.169266, -0.652326,
		35.413891, 34.721584, 39.927635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480560, 34.678749, 39.984329>,  <35.931046, 34.840073, 40.384262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480560, 34.678749, 39.984329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.870762, 34.594322, 40.009136>,  <37.104881, 34.543667, 40.024021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.870762, 34.594322, 40.009136>,  <36.480560, 34.678749, 39.984329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870762, 34.594322, 40.009136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015511, 0.347206, 0.937661,
		-0.219445, -0.913728, 0.341974,
		0.975502, -0.211069, 0.062019,
		37.163414, 34.531002, 40.027740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618080, 34.392239, 40.644741>,  <36.480560, 34.678749, 39.984329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618080, 34.392239, 40.644741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973309, 34.529129, 40.521969>,  <37.186447, 34.611263, 40.448303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973309, 34.529129, 40.521969>,  <36.618080, 34.392239, 40.644741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973309, 34.529129, 40.521969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161596, 0.392669, 0.905372,
		0.430366, -0.853635, 0.293416,
		0.888072, 0.342226, -0.306935,
		37.239731, 34.631794, 40.429890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098766, 34.239948, 41.176357>,  <36.618080, 34.392239, 40.644741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098766, 34.239948, 41.176357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302246, 34.521900, 40.978622>,  <37.424335, 34.691071, 40.859982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302246, 34.521900, 40.978622>,  <37.098766, 34.239948, 41.176357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302246, 34.521900, 40.978622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410358, 0.306251, 0.858963,
		0.756854, -0.639812, -0.133462,
		0.508702, 0.704876, -0.494340,
		37.454857, 34.733364, 40.830322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797989, 34.244362, 41.511658>,  <37.098766, 34.239948, 41.176357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797989, 34.244362, 41.511658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731625, 34.594429, 41.329861>,  <37.691807, 34.804470, 41.220783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731625, 34.594429, 41.329861>,  <37.797989, 34.244362, 41.511658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731625, 34.594429, 41.329861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329186, 0.483591, 0.811034,
		0.929576, -0.015054, -0.368323,
		-0.165908, 0.875164, -0.454491,
		37.681850, 34.856979, 41.193512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315838, 34.635967, 41.783047>,  <37.797989, 34.244362, 41.511658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315838, 34.635967, 41.783047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053658, 34.890076, 41.619675>,  <37.896351, 35.042542, 41.521652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053658, 34.890076, 41.619675>,  <38.315838, 34.635967, 41.783047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053658, 34.890076, 41.619675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054161, 0.578937, 0.813571,
		0.753293, 0.511135, -0.413872,
		-0.655451, 0.635273, -0.408426,
		37.857021, 35.080658, 41.497147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629402, 35.250511, 41.817261>,  <38.315838, 34.635967, 41.783047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629402, 35.250511, 41.817261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238922, 35.328281, 41.778816>,  <38.004635, 35.374943, 41.755749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238922, 35.328281, 41.778816>,  <38.629402, 35.250511, 41.817261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238922, 35.328281, 41.778816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029573, 0.558329, 0.829092,
		0.214861, 0.806515, -0.550789,
		-0.976197, 0.194428, -0.096112,
		37.946064, 35.386608, 41.749981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545429, 35.895271, 42.181446>,  <38.629402, 35.250511, 41.817261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545429, 35.895271, 42.181446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157375, 35.806953, 42.141270>,  <37.924541, 35.753963, 42.117165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157375, 35.806953, 42.141270>,  <38.545429, 35.895271, 42.181446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157375, 35.806953, 42.141270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169858, 0.322736, 0.931123,
		-0.173168, 0.920376, -0.350601,
		-0.970135, -0.220793, -0.100446,
		37.866337, 35.740715, 42.111137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232468, 36.477791, 42.442066>,  <38.545429, 35.895271, 42.181446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232468, 36.477791, 42.442066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968693, 36.179077, 42.476597>,  <37.810429, 35.999847, 42.497314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968693, 36.179077, 42.476597>,  <38.232468, 36.477791, 42.442066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968693, 36.179077, 42.476597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117722, 0.216004, 0.969270,
		-0.742485, 0.629010, -0.230354,
		-0.659437, -0.746786, 0.086331,
		37.770863, 35.955040, 42.502495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738171, 36.729836, 42.834633>,  <38.232468, 36.477791, 42.442066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738171, 36.729836, 42.834633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660522, 36.339790, 42.877468>,  <37.613934, 36.105762, 42.903172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660522, 36.339790, 42.877468>,  <37.738171, 36.729836, 42.834633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660522, 36.339790, 42.877468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134594, 0.134610, 0.981715,
		-0.971701, 0.176155, -0.157375,
		-0.194118, -0.975115, 0.107092,
		37.602287, 36.047256, 42.909595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034195, 36.654293, 43.172951>,  <37.738171, 36.729836, 42.834633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034195, 36.654293, 43.172951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222015, 36.311749, 43.258896>,  <37.334709, 36.106220, 43.310463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222015, 36.311749, 43.258896>,  <37.034195, 36.654293, 43.172951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222015, 36.311749, 43.258896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364331, 0.033739, 0.930658,
		-0.804230, -0.515272, -0.296157,
		0.469550, -0.856362, 0.214864,
		37.362881, 36.054840, 43.323357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595844, 36.183296, 43.477898>,  <37.034195, 36.654293, 43.172951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595844, 36.183296, 43.477898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953098, 36.051895, 43.600792>,  <37.167450, 35.973053, 43.674530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953098, 36.051895, 43.600792>,  <36.595844, 36.183296, 43.477898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953098, 36.051895, 43.600792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275552, 0.140270, 0.950997,
		-0.355503, -0.934029, 0.034760,
		0.893134, -0.328504, 0.307240,
		37.221039, 35.953342, 43.692963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492462, 35.670177, 43.914345>,  <36.595844, 36.183296, 43.477898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492462, 35.670177, 43.914345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.874207, 35.745434, 44.007118>,  <37.103252, 35.790588, 44.062782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.874207, 35.745434, 44.007118>,  <36.492462, 35.670177, 43.914345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874207, 35.745434, 44.007118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195283, -0.194454, 0.961276,
		0.225953, -0.962700, -0.148840,
		0.954363, 0.188138, 0.231936,
		37.160515, 35.801876, 44.076698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656998, 35.168903, 44.432995>,  <36.492462, 35.670177, 43.914345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656998, 35.168903, 44.432995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939785, 35.448986, 44.472805>,  <37.109459, 35.617035, 44.496693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939785, 35.448986, 44.472805>,  <36.656998, 35.168903, 44.432995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939785, 35.448986, 44.472805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161741, 0.023073, 0.986563,
		0.688499, -0.713570, 0.129564,
		0.706972, 0.700203, 0.099528,
		37.151878, 35.659046, 44.502663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041260, 34.982933, 44.988277>,  <36.656998, 35.168903, 44.432995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041260, 34.982933, 44.988277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115921, 35.375744, 44.977070>,  <37.160717, 35.611431, 44.970345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115921, 35.375744, 44.977070>,  <37.041260, 34.982933, 44.988277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115921, 35.375744, 44.977070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183231, 0.062814, 0.981061,
		0.965187, -0.177986, 0.191662,
		0.186654, 0.982026, -0.028014,
		37.171917, 35.670353, 44.968666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356705, 35.125134, 45.656025>,  <37.041260, 34.982933, 44.988277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356705, 35.125134, 45.656025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196270, 35.469738, 45.531494>,  <37.100010, 35.676502, 45.456776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196270, 35.469738, 45.531494>,  <37.356705, 35.125134, 45.656025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196270, 35.469738, 45.531494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237941, 0.230214, 0.943602,
		0.884599, 0.452542, 0.112654,
		-0.401085, 0.861514, -0.311325,
		37.075943, 35.728191, 45.438095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578461, 35.580887, 46.133163>,  <37.356705, 35.125134, 45.656025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578461, 35.580887, 46.133163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281551, 35.783943, 45.958199>,  <37.103405, 35.905777, 45.853222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281551, 35.783943, 45.958199>,  <37.578461, 35.580887, 46.133163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281551, 35.783943, 45.958199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373627, 0.228337, 0.899036,
		0.556261, 0.830763, 0.020177,
		-0.742278, 0.507637, -0.437410,
		37.058868, 35.936234, 45.826977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459171, 36.159431, 46.519138>,  <37.578461, 35.580887, 46.133163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459171, 36.159431, 46.519138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.116005, 36.117081, 46.318031>,  <36.910107, 36.091671, 46.197369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.116005, 36.117081, 46.318031>,  <37.459171, 36.159431, 46.519138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116005, 36.117081, 46.318031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511680, 0.087374, 0.854722,
		-0.046563, 0.990534, -0.129133,
		-0.857913, -0.105873, -0.502768,
		36.858631, 36.085320, 46.167202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087410, 36.747318, 46.695614>,  <37.459171, 36.159431, 46.519138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087410, 36.747318, 46.695614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819340, 36.471771, 46.585110>,  <36.658497, 36.306442, 46.518806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819340, 36.471771, 46.585110>,  <37.087410, 36.747318, 46.695614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819340, 36.471771, 46.585110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554297, 0.217012, 0.803530,
		-0.493575, 0.691639, -0.527275,
		-0.670178, -0.688870, -0.276262,
		36.618286, 36.265110, 46.502232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.491787, 37.175293, 46.767963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.376183, 36.792419, 46.761311>,  <36.306820, 36.562695, 46.757320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.376183, 36.792419, 46.761311>,  <36.491787, 37.175293, 46.767963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376183, 36.792419, 46.761311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502009, 0.136736, 0.853985,
		-0.815145, 0.255156, -0.520032,
		-0.289007, -0.957183, -0.016631,
		36.289482, 36.505264, 46.756321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659592, 37.146492, 46.822144>,  <36.491787, 37.175293, 46.767963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659592, 37.146492, 46.822144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.788727, 36.786678, 46.939861>,  <35.866207, 36.570789, 47.010490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.788727, 36.786678, 46.939861>,  <35.659592, 37.146492, 46.822144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788727, 36.786678, 46.939861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692155, -0.012316, 0.721644,
		-0.645521, -0.436671, -0.626595,
		0.322838, -0.899537, 0.294294,
		35.885578, 36.516819, 47.028149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022434, 36.721321, 46.981628>,  <35.659592, 37.146492, 46.822144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022434, 36.721321, 46.981628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331692, 36.553482, 47.171867>,  <35.517246, 36.452778, 47.286011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331692, 36.553482, 47.171867>,  <35.022434, 36.721321, 46.981628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331692, 36.553482, 47.171867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623814, -0.367713, 0.689669,
		-0.114500, -0.829894, -0.546045,
		0.773140, -0.419598, 0.475597,
		35.563633, 36.427601, 47.314545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797859, 36.186012, 47.367104>,  <35.022434, 36.721321, 46.981628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797859, 36.186012, 47.367104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137276, 36.250942, 47.568550>,  <35.340923, 36.289902, 47.689419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137276, 36.250942, 47.568550>,  <34.797859, 36.186012, 47.367104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137276, 36.250942, 47.568550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474451, -0.187968, 0.859979,
		0.234261, -0.968668, -0.082483,
		0.848539, 0.162325, 0.503619,
		35.391838, 36.299641, 47.719635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760075, 35.781094, 47.963886>,  <34.797859, 36.186012, 47.367104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760075, 35.781094, 47.963886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036507, 36.040844, 48.090836>,  <35.202366, 36.196693, 48.167004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036507, 36.040844, 48.090836>,  <34.760075, 35.781094, 47.963886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036507, 36.040844, 48.090836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376058, -0.051941, 0.925139,
		0.617247, -0.758692, 0.208308,
		0.691076, 0.649375, 0.317373,
		35.243828, 36.235657, 48.186047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846455, 35.569172, 48.729679>,  <34.760075, 35.781094, 47.963886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846455, 35.569172, 48.729679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048969, 35.914001, 48.720776>,  <35.170479, 36.120899, 48.715435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048969, 35.914001, 48.720776>,  <34.846455, 35.569172, 48.729679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048969, 35.914001, 48.720776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116299, 0.093832, 0.988772,
		0.854484, -0.498018, 0.147764,
		0.506291, 0.862075, -0.022259,
		35.200855, 36.172623, 48.714100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354778, 35.582642, 49.372299>,  <34.846455, 35.569172, 48.729679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354778, 35.582642, 49.372299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.282162, 35.956207, 49.249115>,  <35.238590, 36.180347, 49.175205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.282162, 35.956207, 49.249115>,  <35.354778, 35.582642, 49.372299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282162, 35.956207, 49.249115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148964, 0.335666, 0.930128,
		0.972035, 0.122984, -0.200058,
		-0.181544, 0.933918, -0.307959,
		35.227699, 36.236382, 49.156727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861790, 35.868557, 49.839024>,  <35.354778, 35.582642, 49.372299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861790, 35.868557, 49.839024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595570, 36.130733, 49.696228>,  <35.435837, 36.288040, 49.610550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595570, 36.130733, 49.696228>,  <35.861790, 35.868557, 49.839024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595570, 36.130733, 49.696228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140966, 0.580094, 0.802259,
		0.732918, 0.483622, -0.478478,
		-0.665552, 0.655439, -0.356987,
		35.395905, 36.327366, 49.589130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188591, 36.607273, 49.795368>,  <35.861790, 35.868557, 49.839024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188591, 36.607273, 49.795368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792290, 36.603497, 49.849510>,  <35.554508, 36.601231, 49.881996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792290, 36.603497, 49.849510>,  <36.188591, 36.607273, 49.795368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792290, 36.603497, 49.849510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100998, 0.614831, 0.782165,
		-0.090610, 0.788602, -0.608191,
		-0.990752, -0.009445, 0.135357,
		35.495064, 36.600662, 49.890118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150532, 37.308815, 50.091988>,  <36.188591, 36.607273, 49.795368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150532, 37.308815, 50.091988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792496, 37.139767, 50.148846>,  <35.577675, 37.038338, 50.182961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792496, 37.139767, 50.148846>,  <36.150532, 37.308815, 50.091988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792496, 37.139767, 50.148846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122299, 0.539269, 0.833206,
		-0.428783, 0.728410, -0.534381,
		-0.895091, -0.422619, 0.142146,
		35.523968, 37.012981, 50.191490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690155, 37.860523, 50.325417>,  <36.150532, 37.308815, 50.091988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690155, 37.860523, 50.325417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517281, 37.521008, 50.447254>,  <35.413555, 37.317299, 50.520355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517281, 37.521008, 50.447254>,  <35.690155, 37.860523, 50.325417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517281, 37.521008, 50.447254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107354, 0.383787, 0.917160,
		-0.895371, 0.363685, -0.256989,
		-0.432186, -0.848788, 0.304589,
		35.387623, 37.266373, 50.538631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274845, 38.125851, 50.870815>,  <35.690155, 37.860523, 50.325417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274845, 38.125851, 50.870815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.287128, 37.729584, 50.923943>,  <35.294498, 37.491825, 50.955818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.287128, 37.729584, 50.923943>,  <35.274845, 38.125851, 50.870815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287128, 37.729584, 50.923943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105887, 0.128906, 0.985987,
		-0.993904, -0.044339, -0.100940,
		0.030706, -0.990665, 0.132815,
		35.296341, 37.432384, 50.963787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618526, 37.891960, 51.173115>,  <35.274845, 38.125851, 50.870815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618526, 37.891960, 51.173115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929871, 37.658115, 51.264668>,  <35.116676, 37.517807, 51.319599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929871, 37.658115, 51.264668>,  <34.618526, 37.891960, 51.173115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929871, 37.658115, 51.264668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185505, 0.134124, 0.973447,
		-0.599790, -0.800147, -0.004052,
		0.778357, -0.584615, 0.228878,
		35.163380, 37.482731, 51.333332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408451, 37.607826, 51.774048>,  <34.618526, 37.891960, 51.173115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408451, 37.607826, 51.774048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776783, 37.451939, 51.768517>,  <34.997780, 37.358406, 51.765198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776783, 37.451939, 51.768517>,  <34.408451, 37.607826, 51.774048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776783, 37.451939, 51.768517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101115, -0.272861, 0.956725,
		-0.376633, -0.879580, -0.290665,
		0.920828, -0.389724, -0.013830,
		35.053032, 37.335022, 51.764366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370377, 36.854015, 52.093414>,  <34.408451, 37.607826, 51.774048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370377, 36.854015, 52.093414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744980, 36.988430, 52.133488>,  <34.969742, 37.069077, 52.157532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744980, 36.988430, 52.133488>,  <34.370377, 36.854015, 52.093414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744980, 36.988430, 52.133488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024387, -0.347426, 0.937390,
		0.349801, -0.875429, -0.333561,
		0.936506, 0.336035, 0.100181,
		35.025932, 37.089241, 52.163544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680382, 36.297997, 52.290115>,  <34.370377, 36.854015, 52.093414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680382, 36.297997, 52.290115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913109, 36.604504, 52.399166>,  <35.052746, 36.788406, 52.464596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913109, 36.604504, 52.399166>,  <34.680382, 36.297997, 52.290115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913109, 36.604504, 52.399166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105519, -0.261250, 0.959486,
		0.806446, -0.587012, -0.071144,
		0.581816, 0.766267, 0.272625,
		35.087654, 36.834385, 52.480953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392380, 36.041397, 52.740288>,  <34.680382, 36.297997, 52.290115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392380, 36.041397, 52.740288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244617, 36.405968, 52.812778>,  <35.155960, 36.624710, 52.856274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244617, 36.405968, 52.812778>,  <35.392380, 36.041397, 52.740288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244617, 36.405968, 52.812778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025499, -0.185005, 0.982407,
		0.928920, 0.367523, 0.045101,
		-0.369401, 0.911427, 0.181226,
		35.133797, 36.679398, 52.867146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643417, 36.159538, 53.356606>,  <35.392380, 36.041397, 52.740288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643417, 36.159538, 53.356606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385612, 36.462151, 53.312328>,  <35.230930, 36.643719, 53.285763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385612, 36.462151, 53.312328>,  <35.643417, 36.159538, 53.356606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385612, 36.462151, 53.312328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137314, 0.027892, 0.990135,
		0.752159, 0.653358, 0.085906,
		-0.644517, 0.756535, -0.110694,
		35.192257, 36.689110, 53.279121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886295, 36.586929, 53.782322>,  <35.643417, 36.159538, 53.356606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886295, 36.586929, 53.782322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513451, 36.727642, 53.747856>,  <35.289745, 36.812069, 53.727177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513451, 36.727642, 53.747856>,  <35.886295, 36.586929, 53.782322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513451, 36.727642, 53.747856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116418, -0.065730, 0.991023,
		0.342958, 0.933773, 0.102221,
		-0.932109, 0.351779, -0.086166,
		35.233818, 36.833176, 53.722008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906921, 37.147110, 54.184593>,  <35.886295, 36.586929, 53.782322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906921, 37.147110, 54.184593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.530975, 37.015236, 54.148895>,  <35.305408, 36.936111, 54.127476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.530975, 37.015236, 54.148895>,  <35.906921, 37.147110, 54.184593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530975, 37.015236, 54.148895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038832, -0.156463, 0.986920,
		-0.339341, 0.931034, 0.134251,
		-0.939862, -0.329689, -0.089248,
		35.249016, 36.916328, 54.122120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446590, 37.477943, 54.705582>,  <35.906921, 37.147110, 54.184593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446590, 37.477943, 54.705582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261707, 37.134754, 54.615910>,  <35.150780, 36.928841, 54.562107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261707, 37.134754, 54.615910>,  <35.446590, 37.477943, 54.705582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261707, 37.134754, 54.615910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075385, -0.213873, 0.973948,
		-0.883564, 0.467063, 0.034175,
		-0.462204, -0.857969, -0.224180,
		35.123047, 36.877365, 54.548656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971378, 37.373924, 55.328133>,  <35.446590, 37.477943, 54.705582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971378, 37.373924, 55.328133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030014, 37.020279, 55.150661>,  <35.065197, 36.808090, 55.044178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030014, 37.020279, 55.150661>,  <34.971378, 37.373924, 55.328133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030014, 37.020279, 55.150661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075361, -0.437241, 0.896182,
		-0.986322, -0.164809, 0.002532,
		0.146591, -0.884114, -0.443681,
		35.073990, 36.755043, 55.017559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618481, 36.782223, 55.670029>,  <34.971378, 37.373924, 55.328133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618481, 36.782223, 55.670029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911861, 36.602959, 55.465599>,  <35.087891, 36.495399, 55.342941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911861, 36.602959, 55.465599>,  <34.618481, 36.782223, 55.670029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911861, 36.602959, 55.465599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374206, -0.361464, 0.853999,
		-0.567464, -0.817616, -0.097413,
		0.733454, -0.448161, -0.511074,
		35.131897, 36.468510, 55.312279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914280, 36.513271, 55.591305>,  <34.618481, 36.782223, 55.670029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914280, 36.513271, 55.591305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555687, 36.351452, 55.663601>,  <33.340530, 36.254360, 55.706978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555687, 36.351452, 55.663601>,  <33.914280, 36.513271, 55.591305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555687, 36.351452, 55.663601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045831, -0.321054, -0.945951,
		0.440707, -0.856310, 0.269277,
		-0.896480, -0.404546, 0.180736,
		33.286743, 36.230087, 55.717823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736885, 35.823105, 55.301434>,  <33.914280, 36.513271, 55.591305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736885, 35.823105, 55.301434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379807, 36.001507, 55.327286>,  <33.165562, 36.108547, 55.342796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379807, 36.001507, 55.327286>,  <33.736885, 35.823105, 55.301434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379807, 36.001507, 55.327286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166738, -0.193638, -0.966800,
		-0.418688, -0.873830, 0.247226,
		-0.892692, 0.446010, 0.064627,
		33.112000, 36.135311, 55.346672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309834, 35.562389, 54.761581>,  <33.736885, 35.823105, 55.301434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309834, 35.562389, 54.761581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088585, 35.888584, 54.829739>,  <32.955833, 36.084301, 54.870632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088585, 35.888584, 54.829739>,  <33.309834, 35.562389, 54.761581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088585, 35.888584, 54.829739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237452, 0.041729, -0.970502,
		-0.798541, -0.577271, 0.170558,
		-0.553125, 0.815486, 0.170396,
		32.922646, 36.133228, 54.880859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719597, 35.404778, 54.521038>,  <33.309834, 35.562389, 54.761581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719597, 35.404778, 54.521038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.713371, 35.804726, 54.519817>,  <32.709637, 36.044697, 54.519085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.713371, 35.804726, 54.519817>,  <32.719597, 35.404778, 54.521038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713371, 35.804726, 54.519817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471386, -0.010027, -0.881870,
		-0.881790, -0.012284, 0.471483,
		-0.015560, 0.999875, -0.003051,
		32.708702, 36.104687, 54.518902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004551, 35.557865, 54.193012>,  <32.719597, 35.404778, 54.521038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004551, 35.557865, 54.193012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178181, 35.917080, 54.164433>,  <32.282360, 36.132610, 54.147285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178181, 35.917080, 54.164433>,  <32.004551, 35.557865, 54.193012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178181, 35.917080, 54.164433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328257, 0.083815, -0.940863,
		-0.838942, 0.431860, 0.331169,
		0.434078, 0.898038, -0.071445,
		32.308403, 36.186493, 54.142998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570368, 35.977722, 53.878036>,  <32.004551, 35.557865, 54.193012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570368, 35.977722, 53.878036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.916477, 36.160332, 53.795200>,  <32.124142, 36.269897, 53.745499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.916477, 36.160332, 53.795200>,  <31.570368, 35.977722, 53.878036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916477, 36.160332, 53.795200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269414, 0.075110, -0.960091,
		-0.422750, 0.886535, 0.187984,
		0.865274, 0.456524, -0.207092,
		32.176060, 36.297291, 53.733074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359777, 36.445538, 53.427021>,  <31.570368, 35.977722, 53.878036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359777, 36.445538, 53.427021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753469, 36.472713, 53.361687>,  <31.989685, 36.489021, 53.322487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753469, 36.472713, 53.361687>,  <31.359777, 36.445538, 53.427021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753469, 36.472713, 53.361687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176609, 0.324330, -0.929311,
		-0.010166, 0.943501, 0.331214,
		0.984229, 0.067943, -0.163334,
		32.048737, 36.493095, 53.312687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486767, 37.068817, 53.084301>,  <31.359777, 36.445538, 53.427021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486767, 37.068817, 53.084301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.814302, 36.854527, 53.001835>,  <32.010822, 36.725952, 52.952354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.814302, 36.854527, 53.001835>,  <31.486767, 37.068817, 53.084301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814302, 36.854527, 53.001835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068574, 0.265286, -0.961728,
		0.569912, 0.801638, 0.180490,
		0.818839, -0.535724, -0.206161,
		32.059956, 36.693810, 52.939987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834570, 37.420464, 52.619007>,  <31.486767, 37.068817, 53.084301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834570, 37.420464, 52.619007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993881, 37.056202, 52.575035>,  <32.089470, 36.837646, 52.548653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993881, 37.056202, 52.575035>,  <31.834570, 37.420464, 52.619007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993881, 37.056202, 52.575035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104330, 0.164046, -0.980920,
		0.911311, 0.379212, 0.160345,
		0.398281, -0.910652, -0.109934,
		32.113365, 36.783005, 52.542053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515900, 37.431721, 52.264740>,  <31.834570, 37.420464, 52.619007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515900, 37.431721, 52.264740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380085, 37.059174, 52.212181>,  <32.298595, 36.835644, 52.180645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380085, 37.059174, 52.212181>,  <32.515900, 37.431721, 52.264740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380085, 37.059174, 52.212181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148897, 0.084715, -0.985217,
		0.928734, -0.354078, 0.109915,
		-0.339532, -0.931371, -0.131399,
		32.278225, 36.779762, 52.172760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959251, 37.167034, 51.756321>,  <32.515900, 37.431721, 52.264740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959251, 37.167034, 51.756321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.664165, 36.898640, 51.726521>,  <32.487114, 36.737602, 51.708641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.664165, 36.898640, 51.726521>,  <32.959251, 37.167034, 51.756321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664165, 36.898640, 51.726521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050447, 0.055262, -0.997197,
		0.673223, -0.739407, -0.006918,
		-0.737716, -0.670987, -0.074505,
		32.442852, 36.697342, 51.704170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264599, 36.536743, 51.452957>,  <32.959251, 37.167034, 51.756321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264599, 36.536743, 51.452957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871838, 36.539341, 51.377239>,  <32.636181, 36.540901, 51.331810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871838, 36.539341, 51.377239>,  <33.264599, 36.536743, 51.452957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871838, 36.539341, 51.377239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188888, -0.040252, -0.981173,
		-0.013987, -0.999168, 0.038297,
		-0.981899, 0.006490, -0.189294,
		32.577267, 36.541290, 51.320450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072758, 36.056446, 50.861725>,  <33.264599, 36.536743, 51.452957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072758, 36.056446, 50.861725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.764294, 36.310913, 50.851913>,  <32.579216, 36.463593, 50.846027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.764294, 36.310913, 50.851913>,  <33.072758, 36.056446, 50.861725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764294, 36.310913, 50.851913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032592, 0.000975, -0.999468,
		-0.635808, -0.771549, -0.021486,
		-0.771159, 0.636170, -0.024527,
		32.532948, 36.501762, 50.844555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770309, 35.893570, 50.312077>,  <33.072758, 36.056446, 50.861725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770309, 35.893570, 50.312077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.596992, 36.244808, 50.393269>,  <32.493004, 36.455551, 50.441982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.596992, 36.244808, 50.393269>,  <32.770309, 35.893570, 50.312077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596992, 36.244808, 50.393269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124270, 0.164856, -0.978458,
		-0.892646, -0.449180, 0.037691,
		-0.433290, 0.878100, 0.202978,
		32.467007, 36.508240, 50.454163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188911, 35.968754, 49.897076>,  <32.770309, 35.893570, 50.312077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188911, 35.968754, 49.897076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282906, 36.348476, 49.980591>,  <32.339302, 36.576309, 50.030701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282906, 36.348476, 49.980591>,  <32.188911, 35.968754, 49.897076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282906, 36.348476, 49.980591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075878, 0.232066, -0.969736,
		-0.969032, 0.212033, 0.126564,
		0.234988, 0.949309, 0.208791,
		32.353401, 36.633270, 50.043228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031017, 36.306347, 49.371758>,  <32.188911, 35.968754, 49.897076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031017, 36.306347, 49.371758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.274094, 36.594666, 49.505123>,  <32.419941, 36.767654, 49.585144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.274094, 36.594666, 49.505123>,  <32.031017, 36.306347, 49.371758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274094, 36.594666, 49.505123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068371, 0.370785, -0.926199,
		-0.791222, 0.585642, 0.176042,
		0.607695, 0.720793, 0.333414,
		32.456402, 36.810902, 49.605148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777067, 36.928795, 49.026714>,  <32.031017, 36.306347, 49.371758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777067, 36.928795, 49.026714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.139568, 37.036240, 49.157284>,  <32.357071, 37.100708, 49.235626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.139568, 37.036240, 49.157284>,  <31.777067, 36.928795, 49.026714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139568, 37.036240, 49.157284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124129, 0.569032, -0.812892,
		-0.404100, 0.777205, 0.482344,
		0.906253, 0.268617, 0.326420,
		32.411446, 37.116825, 49.255211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819298, 37.595001, 48.763737>,  <31.777067, 36.928795, 49.026714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819298, 37.595001, 48.763737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194332, 37.463223, 48.808281>,  <32.419353, 37.384155, 48.835007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194332, 37.463223, 48.808281>,  <31.819298, 37.595001, 48.763737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194332, 37.463223, 48.808281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285666, 0.547011, -0.786876,
		0.198316, 0.769575, 0.606980,
		0.937585, -0.329444, 0.111360,
		32.475609, 37.364388, 48.841690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256866, 38.164509, 48.527115>,  <31.819298, 37.595001, 48.763737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256866, 38.164509, 48.527115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463856, 37.822254, 48.522957>,  <32.588047, 37.616901, 48.520462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463856, 37.822254, 48.522957>,  <32.256866, 38.164509, 48.527115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463856, 37.822254, 48.522957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389858, 0.246556, -0.887255,
		0.761732, 0.455076, 0.461163,
		0.517471, -0.855638, -0.010394,
		32.619099, 37.565563, 48.519840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894081, 38.345345, 48.254585>,  <32.256866, 38.164509, 48.527115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894081, 38.345345, 48.254585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866852, 37.949146, 48.206764>,  <32.850513, 37.711430, 48.178074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866852, 37.949146, 48.206764>,  <32.894081, 38.345345, 48.254585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866852, 37.949146, 48.206764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310312, 0.092864, -0.946088,
		0.948194, -0.101502, 0.301040,
		-0.068074, -0.990492, -0.119551,
		32.846428, 37.652000, 48.170898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439953, 38.263523, 47.751549>,  <32.894081, 38.345345, 48.254585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439953, 38.263523, 47.751549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.239262, 37.917789, 47.737713>,  <33.118847, 37.710350, 47.729412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.239262, 37.917789, 47.737713>,  <33.439953, 38.263523, 47.751549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239262, 37.917789, 47.737713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311939, -0.143485, -0.939205,
		0.806826, -0.482011, 0.341610,
		-0.501723, -0.864336, -0.034591,
		33.088745, 37.658489, 47.727337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.711689, 38.476673, 32.519039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482536, 38.148933, 32.527725>,  <37.345043, 37.952290, 32.532936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482536, 38.148933, 32.527725>,  <37.711689, 38.476673, 32.519039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482536, 38.148933, 32.527725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403013, -0.258517, 0.877923,
		-0.713710, 0.511702, 0.478308,
		-0.572886, -0.819347, 0.021717,
		37.310669, 37.903130, 32.534241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461441, 38.462498, 33.181252>,  <37.711689, 38.476673, 32.519039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461441, 38.462498, 33.181252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446262, 38.082150, 33.058346>,  <37.437157, 37.853943, 32.984604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446262, 38.082150, 33.058346>,  <37.461441, 38.462498, 33.181252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446262, 38.082150, 33.058346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371195, -0.298896, 0.879133,
		-0.927780, -0.080698, 0.364298,
		-0.037943, -0.950867, -0.307264,
		37.434879, 37.796890, 32.966167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426632, 38.196045, 33.770615>,  <37.461441, 38.462498, 33.181252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426632, 38.196045, 33.770615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482349, 37.876110, 33.537079>,  <37.515781, 37.684151, 33.396957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482349, 37.876110, 33.537079>,  <37.426632, 38.196045, 33.770615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482349, 37.876110, 33.537079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397749, -0.494742, 0.772674,
		-0.906859, -0.339849, 0.249218,
		0.139294, -0.799833, -0.583836,
		37.524136, 37.636162, 33.361927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148720, 37.617550, 34.077568>,  <37.426632, 38.196045, 33.770615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148720, 37.617550, 34.077568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425827, 37.473473, 33.827660>,  <37.592091, 37.387028, 33.677715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425827, 37.473473, 33.827660>,  <37.148720, 37.617550, 34.077568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425827, 37.473473, 33.827660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401153, -0.527459, 0.748908,
		-0.599291, -0.769446, -0.220914,
		0.692767, -0.360193, -0.624768,
		37.633656, 37.365414, 33.640228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361767, 37.003197, 34.425644>,  <37.148720, 37.617550, 34.077568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361767, 37.003197, 34.425644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635319, 37.059196, 34.139229>,  <37.799450, 37.092796, 33.967381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635319, 37.059196, 34.139229>,  <37.361767, 37.003197, 34.425644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635319, 37.059196, 34.139229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562503, -0.726198, 0.395256,
		-0.464652, -0.673081, -0.575379,
		0.683878, 0.139995, -0.716039,
		37.840481, 37.101196, 33.924416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530304, 36.321175, 34.211884>,  <37.361767, 37.003197, 34.425644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530304, 36.321175, 34.211884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.833641, 36.569786, 34.133286>,  <38.015644, 36.718952, 34.086128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.833641, 36.569786, 34.133286>,  <37.530304, 36.321175, 34.211884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833641, 36.569786, 34.133286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644322, -0.669026, 0.370476,
		0.098802, -0.407555, -0.907820,
		0.758345, 0.621532, -0.196496,
		38.061146, 36.756245, 34.074337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070747, 35.857048, 34.120483>,  <37.530304, 36.321175, 34.211884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070747, 35.857048, 34.120483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.248413, 36.211597, 34.172710>,  <38.355015, 36.424328, 34.204048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.248413, 36.211597, 34.172710>,  <38.070747, 35.857048, 34.120483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248413, 36.211597, 34.172710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691371, -0.431781, 0.579286,
		0.569843, -0.167030, -0.804599,
		0.444168, 0.886378, 0.130568,
		38.381664, 36.477512, 34.211880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755230, 35.716194, 34.154213>,  <38.070747, 35.857048, 34.120483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755230, 35.716194, 34.154213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.701401, 36.066154, 34.340309>,  <38.669102, 36.276131, 34.451965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.701401, 36.066154, 34.340309>,  <38.755230, 35.716194, 34.154213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701401, 36.066154, 34.340309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728273, -0.231052, 0.645161,
		0.671943, 0.425642, -0.606070,
		-0.134574, 0.874897, 0.465238,
		38.661030, 36.328625, 34.479881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431877, 36.048500, 34.217434>,  <38.755230, 35.716194, 34.154213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431877, 36.048500, 34.217434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204803, 36.200485, 34.509560>,  <39.068558, 36.291676, 34.684837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204803, 36.200485, 34.509560>,  <39.431877, 36.048500, 34.217434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204803, 36.200485, 34.509560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737519, -0.159438, 0.656236,
		0.365785, 0.911157, -0.189719,
		-0.567686, 0.379963, 0.730316,
		39.034496, 36.314472, 34.728653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849586, 36.526707, 34.430202>,  <39.431877, 36.048500, 34.217434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849586, 36.526707, 34.430202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614037, 36.466179, 34.747776>,  <39.472706, 36.429863, 34.938320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614037, 36.466179, 34.747776>,  <39.849586, 36.526707, 34.430202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614037, 36.466179, 34.747776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805988, -0.182962, 0.562946,
		0.060076, 0.971405, 0.229701,
		-0.588875, -0.151317, 0.793933,
		39.437374, 36.420784, 34.985954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153141, 36.873234, 35.052532>,  <39.849586, 36.526707, 34.430202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153141, 36.873234, 35.052532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883377, 36.647205, 35.242638>,  <39.721519, 36.511589, 35.356701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883377, 36.647205, 35.242638>,  <40.153141, 36.873234, 35.052532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883377, 36.647205, 35.242638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639411, -0.125085, 0.758621,
		-0.369225, 0.815507, 0.445670,
		-0.674408, -0.565069, 0.475260,
		39.681053, 36.477684, 35.385216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162971, 37.117840, 35.768818>,  <40.153141, 36.873234, 35.052532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162971, 37.117840, 35.768818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039440, 36.742279, 35.708027>,  <39.965321, 36.516945, 35.671555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039440, 36.742279, 35.708027>,  <40.162971, 37.117840, 35.768818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039440, 36.742279, 35.708027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639653, -0.323276, 0.697378,
		-0.703897, 0.118157, 0.700405,
		-0.308824, -0.938899, -0.151974,
		39.946793, 36.460609, 35.662434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259331, 36.824257, 36.424728>,  <40.162971, 37.117840, 35.768818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259331, 36.824257, 36.424728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.208302, 36.506107, 36.187710>,  <40.177685, 36.315220, 36.045498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.208302, 36.506107, 36.187710>,  <40.259331, 36.824257, 36.424728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208302, 36.506107, 36.187710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666780, -0.511053, 0.542429,
		-0.734255, -0.325902, 0.595531,
		-0.127569, -0.795369, -0.592548,
		40.170033, 36.267498, 36.009945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179981, 36.213627, 36.949516>,  <40.259331, 36.824257, 36.424728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179981, 36.213627, 36.949516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.296791, 36.107262, 36.582035>,  <40.366875, 36.043442, 36.361546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.296791, 36.107262, 36.582035>,  <40.179981, 36.213627, 36.949516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296791, 36.107262, 36.582035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807578, -0.446062, 0.385806,
		-0.512389, -0.854588, 0.084485,
		0.292020, -0.265911, -0.918703,
		40.384396, 36.027489, 36.306423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299843, 35.480415, 36.956169>,  <40.179981, 36.213627, 36.949516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299843, 35.480415, 36.956169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524841, 35.603088, 36.649040>,  <40.659840, 35.676693, 36.464764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524841, 35.603088, 36.649040>,  <40.299843, 35.480415, 36.956169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524841, 35.603088, 36.649040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782729, -0.496675, 0.375033,
		-0.266340, -0.811947, -0.519428,
		0.562494, 0.306685, -0.767819,
		40.693588, 35.695095, 36.418694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767002, 34.935341, 36.811523>,  <40.299843, 35.480415, 36.956169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767002, 34.935341, 36.811523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.932957, 35.243961, 36.618618>,  <41.032532, 35.429134, 36.502876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.932957, 35.243961, 36.618618>,  <40.767002, 34.935341, 36.811523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932957, 35.243961, 36.618618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909229, -0.371498, 0.187863,
		-0.034213, -0.516428, -0.855647,
		0.414889, 0.771551, -0.482261,
		41.057423, 35.475426, 36.473938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116802, 34.587627, 36.267056>,  <40.767002, 34.935341, 36.811523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116802, 34.587627, 36.267056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.295605, 34.942932, 36.309345>,  <41.402885, 35.156116, 36.334721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.295605, 34.942932, 36.309345>,  <41.116802, 34.587627, 36.267056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295605, 34.942932, 36.309345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807535, -0.451547, 0.379463,
		0.384803, -0.084244, -0.919146,
		0.447005, 0.888261, 0.105727,
		41.429707, 35.209412, 36.341064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727055, 34.468616, 35.948967>,  <41.116802, 34.587627, 36.267056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727055, 34.468616, 35.948967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789352, 34.801506, 36.161812>,  <41.826733, 35.001240, 36.289520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789352, 34.801506, 36.161812>,  <41.727055, 34.468616, 35.948967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789352, 34.801506, 36.161812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921901, -0.315917, 0.224263,
		0.354741, 0.455630, -0.816431,
		0.155744, 0.832224, 0.532115,
		41.836075, 35.051174, 36.321445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342915, 34.736698, 35.759422>,  <41.727055, 34.468616, 35.948967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342915, 34.736698, 35.759422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.280174, 34.874336, 36.129719>,  <42.242531, 34.956921, 36.351898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.280174, 34.874336, 36.129719>,  <42.342915, 34.736698, 35.759422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280174, 34.874336, 36.129719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926039, -0.274575, 0.258959,
		0.343292, 0.897889, -0.275583,
		-0.156848, 0.344100, 0.925740,
		42.233120, 34.977566, 36.407440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022194, 34.999111, 35.881149>,  <42.342915, 34.736698, 35.759422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022194, 34.999111, 35.881149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.846317, 34.998737, 36.240410>,  <42.740791, 34.998512, 36.455967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.846317, 34.998737, 36.240410>,  <43.022194, 34.999111, 35.881149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846317, 34.998737, 36.240410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838674, -0.358268, 0.410207,
		0.321395, 0.933618, 0.158310,
		-0.439694, -0.000932, 0.898147,
		42.714409, 34.998459, 36.509853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314373, 35.479351, 36.243450>,  <43.022194, 34.999111, 35.881149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314373, 35.479351, 36.243450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159744, 35.208073, 36.493446>,  <43.066967, 35.045303, 36.643444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159744, 35.208073, 36.493446>,  <43.314373, 35.479351, 36.243450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159744, 35.208073, 36.493446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921134, -0.317398, 0.225324,
		0.045555, 0.662801, 0.747409,
		-0.386571, -0.678199, 0.624987,
		43.043774, 35.004612, 36.680943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894352, 35.845570, 36.169407>,  <43.314373, 35.479351, 36.243450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894352, 35.845570, 36.169407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224789, 35.709759, 35.989494>,  <44.423050, 35.628273, 35.881546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224789, 35.709759, 35.989494>,  <43.894352, 35.845570, 36.169407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224789, 35.709759, 35.989494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377577, 0.259024, -0.889012,
		0.418346, 0.904228, 0.085779,
		0.826089, -0.339527, -0.449777,
		44.472614, 35.607903, 35.854561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965443, 36.085445, 35.452824>,  <43.894352, 35.845570, 36.169407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965443, 36.085445, 35.452824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179218, 35.748222, 35.428768>,  <44.307484, 35.545887, 35.414333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179218, 35.748222, 35.428768>,  <43.965443, 36.085445, 35.452824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179218, 35.748222, 35.428768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175816, -0.041292, -0.983557,
		0.826716, 0.536228, -0.170292,
		0.534443, -0.843062, -0.060141,
		44.339550, 35.495304, 35.410725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312313, 36.119774, 34.819065>,  <43.965443, 36.085445, 35.452824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312313, 36.119774, 34.819065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352734, 35.734097, 34.917145>,  <44.376987, 35.502689, 34.975994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352734, 35.734097, 34.917145>,  <44.312313, 36.119774, 34.819065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352734, 35.734097, 34.917145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276378, -0.263965, -0.924088,
		0.955722, 0.025614, -0.293155,
		0.101053, -0.964192, 0.245198,
		44.383049, 35.444839, 34.990704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654446, 35.847103, 34.256084>,  <44.312313, 36.119774, 34.819065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654446, 35.847103, 34.256084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479008, 35.544842, 34.450661>,  <44.373745, 35.363483, 34.567406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479008, 35.544842, 34.450661>,  <44.654446, 35.847103, 34.256084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479008, 35.544842, 34.450661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465175, -0.272232, -0.842319,
		0.768925, -0.595718, -0.232111,
		-0.438596, -0.755652, 0.486439,
		44.347427, 35.318146, 34.596592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626423, 35.327000, 33.769428>,  <44.654446, 35.847103, 34.256084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626423, 35.327000, 33.769428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364952, 35.178158, 34.033016>,  <44.208069, 35.088852, 34.191170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364952, 35.178158, 34.033016>,  <44.626423, 35.327000, 33.769428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364952, 35.178158, 34.033016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536771, -0.385840, -0.750336,
		0.533458, -0.844197, 0.052484,
		-0.653681, -0.372101, 0.658970,
		44.168846, 35.066528, 34.230709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409893, 34.769634, 33.410778>,  <44.626423, 35.327000, 33.769428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409893, 34.769634, 33.410778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121311, 34.865196, 33.670757>,  <43.948162, 34.922535, 33.826744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121311, 34.865196, 33.670757>,  <44.409893, 34.769634, 33.410778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121311, 34.865196, 33.670757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689912, -0.167489, -0.704250,
		-0.059391, -0.956489, 0.285659,
		-0.721453, 0.238905, 0.649946,
		43.904877, 34.936867, 33.865742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953133, 34.372803, 33.213367>,  <44.409893, 34.769634, 33.410778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953133, 34.372803, 33.213367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736004, 34.621971, 33.438690>,  <43.605724, 34.771473, 33.573883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736004, 34.621971, 33.438690>,  <43.953133, 34.372803, 33.213367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736004, 34.621971, 33.438690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685687, 0.058583, -0.725535,
		-0.484948, -0.780091, 0.395325,
		-0.542825, 0.622917, 0.563308,
		43.573158, 34.808846, 33.607681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300968, 34.119816, 33.260731>,  <43.953133, 34.372803, 33.213367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300968, 34.119816, 33.260731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.273640, 34.516212, 33.306816>,  <43.257240, 34.754051, 33.334469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.273640, 34.516212, 33.306816>,  <43.300968, 34.119816, 33.260731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273640, 34.516212, 33.306816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709969, 0.032837, -0.703466,
		-0.700910, -0.129863, 0.701328,
		-0.068325, 0.990988, 0.115214,
		43.253143, 34.813507, 33.341381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674679, 34.231686, 32.886219>,  <43.300968, 34.119816, 33.260731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674679, 34.231686, 32.886219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776569, 34.599251, 33.006691>,  <42.837704, 34.819790, 33.078972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776569, 34.599251, 33.006691>,  <42.674679, 34.231686, 32.886219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776569, 34.599251, 33.006691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808880, 0.373148, -0.454393,
		-0.529933, -0.127870, 0.838344,
		0.254723, 0.918917, 0.301175,
		42.852985, 34.874928, 33.097042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077980, 34.598854, 33.326584>,  <42.674679, 34.231686, 32.886219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077980, 34.598854, 33.326584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.304539, 34.856739, 33.121239>,  <42.440472, 35.011471, 32.998032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.304539, 34.856739, 33.121239>,  <42.077980, 34.598854, 33.326584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304539, 34.856739, 33.121239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818008, 0.363979, -0.445402,
		-0.100303, 0.672209, 0.733535,
		0.566395, 0.644713, -0.513364,
		42.474457, 35.050152, 32.967228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808315, 35.257713, 33.392193>,  <42.077980, 34.598854, 33.326584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808315, 35.257713, 33.392193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.043800, 35.301682, 33.071861>,  <42.185093, 35.328064, 32.879662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.043800, 35.301682, 33.071861>,  <41.808315, 35.257713, 33.392193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043800, 35.301682, 33.071861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717247, 0.527928, -0.454807,
		0.372789, 0.842146, 0.389639,
		0.588715, 0.109921, -0.800832,
		42.220413, 35.334660, 32.831612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845951, 35.966938, 33.152210>,  <41.808315, 35.257713, 33.392193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845951, 35.966938, 33.152210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.906166, 35.752884, 32.819714>,  <41.942295, 35.624451, 32.620216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.906166, 35.752884, 32.819714>,  <41.845951, 35.966938, 33.152210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906166, 35.752884, 32.819714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772067, 0.461518, -0.436936,
		0.617455, 0.707552, -0.343685,
		0.150538, -0.535137, -0.831244,
		41.951328, 35.592342, 32.570339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815250, 36.417645, 32.600174>,  <41.845951, 35.966938, 33.152210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815250, 36.417645, 32.600174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.776054, 36.072060, 32.402599>,  <41.752537, 35.864708, 32.284054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.776054, 36.072060, 32.402599>,  <41.815250, 36.417645, 32.600174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776054, 36.072060, 32.402599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672833, 0.423218, -0.606780,
		0.733276, 0.272876, -0.622772,
		-0.097993, -0.863959, -0.493936,
		41.746658, 35.812874, 32.254417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862659, 36.601467, 31.951435>,  <41.815250, 36.417645, 32.600174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862659, 36.601467, 31.951435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.686760, 36.242367, 31.941122>,  <41.581223, 36.026905, 31.934935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.686760, 36.242367, 31.941122>,  <41.862659, 36.601467, 31.951435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686760, 36.242367, 31.941122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640638, 0.333665, -0.691557,
		0.629449, -0.287592, -0.721862,
		-0.439746, -0.897752, -0.025783,
		41.554836, 35.973042, 31.933388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799240, 36.410717, 31.247372>,  <41.862659, 36.601467, 31.951435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799240, 36.410717, 31.247372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.517002, 36.195766, 31.432135>,  <41.347660, 36.066795, 31.542994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.517002, 36.195766, 31.432135>,  <41.799240, 36.410717, 31.247372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517002, 36.195766, 31.432135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654406, 0.244115, -0.715654,
		0.271834, -0.807226, -0.523920,
		-0.705592, -0.537395, 0.461895,
		41.305321, 36.034554, 31.570707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397972, 36.158634, 30.734390>,  <41.799240, 36.410717, 31.247372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397972, 36.158634, 30.734390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.151989, 36.092373, 31.042778>,  <41.004402, 36.052616, 31.227810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.151989, 36.092373, 31.042778>,  <41.397972, 36.158634, 30.734390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151989, 36.092373, 31.042778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788081, 0.094905, -0.608211,
		0.027584, -0.981607, -0.188912,
		-0.614953, -0.165655, 0.770968,
		40.967503, 36.042675, 31.274069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801826, 35.823208, 30.479410>,  <41.397972, 36.158634, 30.734390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801826, 35.823208, 30.479410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.640751, 35.881897, 30.840811>,  <40.544106, 35.917110, 31.057652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.640751, 35.881897, 30.840811>,  <40.801826, 35.823208, 30.479410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640751, 35.881897, 30.840811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873491, 0.233440, -0.427224,
		-0.273596, -0.961238, 0.034157,
		-0.402690, 0.146722, 0.903501,
		40.519943, 35.925915, 31.111860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226109, 35.465065, 30.479719>,  <40.801826, 35.823208, 30.479410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226109, 35.465065, 30.479719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.136860, 35.729813, 30.765976>,  <40.083309, 35.888660, 30.937729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.136860, 35.729813, 30.765976>,  <40.226109, 35.465065, 30.479719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136860, 35.729813, 30.765976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805207, 0.288641, -0.518004,
		-0.549416, -0.691819, 0.468540,
		-0.223125, 0.661871, 0.715641,
		40.069923, 35.928375, 30.980669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501312, 35.392544, 30.615749>,  <40.226109, 35.465065, 30.479719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501312, 35.392544, 30.615749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614666, 35.751686, 30.750536>,  <39.682678, 35.967171, 30.831408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614666, 35.751686, 30.750536>,  <39.501312, 35.392544, 30.615749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614666, 35.751686, 30.750536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815223, 0.410596, -0.408440,
		-0.505077, -0.158955, 0.848310,
		0.283389, 0.897855, 0.336966,
		39.699684, 36.021042, 30.851625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896603, 35.696262, 30.941515>,  <39.501312, 35.392544, 30.615749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896603, 35.696262, 30.941515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.147820, 35.989223, 30.836338>,  <39.298550, 36.165001, 30.773232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.147820, 35.989223, 30.836338>,  <38.896603, 35.696262, 30.941515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147820, 35.989223, 30.836338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775477, 0.560938, -0.289799,
		-0.064756, 0.385914, 0.920259,
		0.628046, 0.732406, -0.262943,
		39.336235, 36.208946, 30.757456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501965, 36.322720, 31.208427>,  <38.896603, 35.696262, 30.941515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501965, 36.322720, 31.208427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765980, 36.445129, 30.933996>,  <38.924389, 36.518578, 30.769337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765980, 36.445129, 30.933996>,  <38.501965, 36.322720, 31.208427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765980, 36.445129, 30.933996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714315, 0.538448, -0.447022,
		0.232616, 0.785125, 0.573994,
		0.660033, 0.306028, -0.686078,
		38.963989, 36.536938, 30.728172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.378166, 36.061466, 44.453575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004330, 35.967010, 44.347153>,  <37.780029, 35.910336, 44.283298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004330, 35.967010, 44.347153>,  <38.378166, 36.061466, 44.453575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004330, 35.967010, 44.347153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334142, -0.326140, -0.884297,
		0.122049, -0.915352, 0.383712,
		-0.934587, -0.236142, -0.266052,
		37.723953, 35.896168, 44.267338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292679, 35.392681, 44.140724>,  <38.378166, 36.061466, 44.453575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292679, 35.392681, 44.140724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965984, 35.578125, 44.003307>,  <37.769970, 35.689392, 43.920856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965984, 35.578125, 44.003307>,  <38.292679, 35.392681, 44.140724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965984, 35.578125, 44.003307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098989, -0.473971, -0.874959,
		-0.568464, -0.748613, 0.341215,
		-0.816731, 0.463606, -0.343540,
		37.720966, 35.717205, 43.900246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924316, 34.937252, 43.599926>,  <38.292679, 35.392681, 44.140724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924316, 34.937252, 43.599926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750061, 35.287079, 43.514751>,  <37.645508, 35.496975, 43.463646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750061, 35.287079, 43.514751>,  <37.924316, 34.937252, 43.599926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750061, 35.287079, 43.514751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123421, -0.292372, -0.948307,
		-0.891618, -0.386842, 0.235310,
		-0.435643, 0.874569, -0.212940,
		37.619370, 35.549450, 43.450871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400024, 34.750233, 43.090050>,  <37.924316, 34.937252, 43.599926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400024, 34.750233, 43.090050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435173, 35.144234, 43.030643>,  <37.456261, 35.380634, 42.994999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435173, 35.144234, 43.030643>,  <37.400024, 34.750233, 43.090050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435173, 35.144234, 43.030643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004422, -0.149481, -0.988755,
		-0.996122, 0.086224, -0.017491,
		0.087868, 0.984998, -0.148520,
		37.461533, 35.439732, 42.986088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970013, 34.930302, 42.524025>,  <37.400024, 34.750233, 43.090050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970013, 34.930302, 42.524025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205181, 35.253723, 42.533775>,  <37.346283, 35.447777, 42.539627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205181, 35.253723, 42.533775>,  <36.970013, 34.930302, 42.524025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205181, 35.253723, 42.533775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051444, 0.067449, -0.996396,
		-0.807280, 0.584549, 0.081250,
		0.587922, 0.808550, 0.024379,
		37.381557, 35.496288, 42.541088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660404, 35.349586, 42.094711>,  <36.970013, 34.930302, 42.524025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660404, 35.349586, 42.094711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050758, 35.436741, 42.099968>,  <37.284969, 35.489033, 42.103123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050758, 35.436741, 42.099968>,  <36.660404, 35.349586, 42.094711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050758, 35.436741, 42.099968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036830, -0.105009, -0.993789,
		-0.215154, 0.970308, -0.110502,
		0.975885, 0.217887, 0.013143,
		37.343525, 35.502106, 42.103912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702225, 35.670055, 41.509937>,  <36.660404, 35.349586, 42.094711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702225, 35.670055, 41.509937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090897, 35.607372, 41.580677>,  <37.324100, 35.569763, 41.623119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090897, 35.607372, 41.580677>,  <36.702225, 35.670055, 41.509937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090897, 35.607372, 41.580677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163703, -0.093237, -0.982094,
		0.170394, 0.983234, -0.064942,
		0.971683, -0.156712, 0.176845,
		37.382401, 35.560360, 41.633732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096867, 36.024284, 41.025227>,  <36.702225, 35.670055, 41.509937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096867, 36.024284, 41.025227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316776, 35.713924, 41.148983>,  <37.448723, 35.527706, 41.223236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316776, 35.713924, 41.148983>,  <37.096867, 36.024284, 41.025227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316776, 35.713924, 41.148983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212828, -0.228048, -0.950105,
		0.807744, 0.588191, 0.039758,
		0.549776, -0.775903, 0.309388,
		37.481709, 35.481155, 41.241798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660675, 36.048096, 40.604034>,  <37.096867, 36.024284, 41.025227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660675, 36.048096, 40.604034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660458, 35.677494, 40.754551>,  <37.660328, 35.455135, 40.844860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660458, 35.677494, 40.754551>,  <37.660675, 36.048096, 40.604034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660458, 35.677494, 40.754551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099630, -0.374473, -0.921870,
		0.995024, 0.036986, 0.092512,
		-0.000547, -0.926500, 0.376294,
		37.660294, 35.399544, 40.867439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916710, 35.732246, 40.144329>,  <37.660675, 36.048096, 40.604034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916710, 35.732246, 40.144329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774986, 35.424603, 40.357098>,  <37.689953, 35.240017, 40.484760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774986, 35.424603, 40.357098>,  <37.916710, 35.732246, 40.144329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774986, 35.424603, 40.357098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042683, -0.554928, -0.830803,
		0.934152, -0.317068, 0.163791,
		-0.354313, -0.769105, 0.531920,
		37.668694, 35.193871, 40.516674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405350, 35.081829, 40.072273>,  <37.916710, 35.732246, 40.144329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405350, 35.081829, 40.072273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053539, 34.939274, 40.198402>,  <37.842453, 34.853741, 40.274082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053539, 34.939274, 40.198402>,  <38.405350, 35.081829, 40.072273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053539, 34.939274, 40.198402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025343, -0.696790, -0.716828,
		0.475182, -0.622475, 0.621874,
		-0.879523, -0.356384, 0.315326,
		37.789684, 34.832359, 40.292999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502274, 34.417988, 40.153790>,  <38.405350, 35.081829, 40.072273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502274, 34.417988, 40.153790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103798, 34.440353, 40.126991>,  <37.864712, 34.453773, 40.110912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103798, 34.440353, 40.126991>,  <38.502274, 34.417988, 40.153790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103798, 34.440353, 40.126991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018953, -0.610762, -0.791587,
		-0.085181, -0.789837, 0.607373,
		-0.996185, 0.055917, -0.066995,
		37.804943, 34.457127, 40.106892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057297, 34.221104, 39.686665>,  <38.502274, 34.417988, 40.153790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057297, 34.221104, 39.686665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899139, 33.887909, 39.841480>,  <38.804245, 33.687992, 39.934368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899139, 33.887909, 39.841480>,  <39.057297, 34.221104, 39.686665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899139, 33.887909, 39.841480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897792, 0.261489, -0.354392,
		0.193997, -0.487605, -0.851238,
		-0.395393, -0.832986, 0.387039,
		38.780521, 33.638012, 39.957592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591892, 33.714859, 39.487934>,  <39.057297, 34.221104, 39.686665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591892, 33.714859, 39.487934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547852, 33.458885, 39.183731>,  <39.521427, 33.305302, 39.001209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547852, 33.458885, 39.183731>,  <39.591892, 33.714859, 39.487934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547852, 33.458885, 39.183731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864380, -0.316058, 0.391093,
		-0.490636, 0.700425, -0.518345,
		-0.110104, -0.639931, -0.760503,
		39.514820, 33.266907, 38.955582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779911, 33.700611, 39.198105>,  <39.591892, 33.714859, 39.487934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779911, 33.700611, 39.198105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992569, 33.362125, 39.183861>,  <39.120163, 33.159035, 39.175312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992569, 33.362125, 39.183861>,  <38.779911, 33.700611, 39.198105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992569, 33.362125, 39.183861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725033, -0.476441, 0.497324,
		-0.437810, -0.238583, -0.866834,
		0.531648, -0.846216, -0.035610,
		39.152061, 33.108261, 39.173176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296276, 33.215549, 39.002586>,  <38.779911, 33.700611, 39.198105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296276, 33.215549, 39.002586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587502, 32.973434, 39.131306>,  <38.762238, 32.828167, 39.208538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587502, 32.973434, 39.131306>,  <38.296276, 33.215549, 39.002586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587502, 32.973434, 39.131306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649318, -0.458405, 0.606836,
		-0.219798, -0.650762, -0.726772,
		0.728062, -0.605287, 0.321796,
		38.805920, 32.791847, 39.227844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102085, 32.563721, 38.855618>,  <38.296276, 33.215549, 39.002586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102085, 32.563721, 38.855618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343983, 32.574303, 39.174011>,  <38.489120, 32.580650, 39.365047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343983, 32.574303, 39.174011>,  <38.102085, 32.563721, 38.855618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343983, 32.574303, 39.174011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699473, -0.460262, 0.546714,
		0.380825, -0.887389, -0.259834,
		0.604740, 0.026455, 0.795984,
		38.525406, 32.582241, 39.412807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867844, 32.013584, 39.262646>,  <38.102085, 32.563721, 38.855618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867844, 32.013584, 39.262646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101086, 32.210266, 39.521320>,  <38.241032, 32.328278, 39.676525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101086, 32.210266, 39.521320>,  <37.867844, 32.013584, 39.262646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101086, 32.210266, 39.521320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609770, -0.261091, 0.748340,
		0.536810, -0.830694, 0.147586,
		0.583108, 0.491710, 0.646689,
		38.276020, 32.357780, 39.715328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063313, 31.461737, 39.862377>,  <37.867844, 32.013584, 39.262646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063313, 31.461737, 39.862377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104263, 31.823513, 40.028027>,  <38.128834, 32.040581, 40.127419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104263, 31.823513, 40.028027>,  <38.063313, 31.461737, 39.862377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104263, 31.823513, 40.028027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273459, -0.374687, 0.885906,
		0.956420, -0.203943, 0.208969,
		0.102377, 0.904443, 0.414128,
		38.134975, 32.094845, 40.152264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358555, 31.368147, 40.522198>,  <38.063313, 31.461737, 39.862377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358555, 31.368147, 40.522198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211380, 31.738184, 40.559780>,  <38.123077, 31.960207, 40.582329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211380, 31.738184, 40.559780>,  <38.358555, 31.368147, 40.522198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211380, 31.738184, 40.559780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329763, -0.224289, 0.917034,
		0.869414, 0.306425, 0.387585,
		-0.367934, 0.925093, 0.093953,
		38.101002, 32.015713, 40.587967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465454, 31.494326, 41.252171>,  <38.358555, 31.368147, 40.522198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465454, 31.494326, 41.252171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202862, 31.778124, 41.149689>,  <38.045307, 31.948402, 41.088200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202862, 31.778124, 41.149689>,  <38.465454, 31.494326, 41.252171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202862, 31.778124, 41.149689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387941, -0.026263, 0.921310,
		0.646939, 0.704218, 0.292485,
		-0.656485, 0.709498, -0.256204,
		38.005917, 31.990973, 41.072826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545292, 32.086327, 41.736298>,  <38.465454, 31.494326, 41.252171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545292, 32.086327, 41.736298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177872, 32.113430, 41.580513>,  <37.957420, 32.129692, 41.487041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177872, 32.113430, 41.580513>,  <38.545292, 32.086327, 41.736298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177872, 32.113430, 41.580513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359201, 0.268289, 0.893866,
		0.165054, 0.960953, -0.222097,
		-0.918549, 0.067759, -0.389457,
		37.902306, 32.133759, 41.463676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203697, 32.603489, 42.137383>,  <38.545292, 32.086327, 41.736298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203697, 32.603489, 42.137383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878605, 32.442657, 41.968716>,  <37.683552, 32.346157, 41.867516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878605, 32.442657, 41.968716>,  <38.203697, 32.603489, 42.137383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878605, 32.442657, 41.968716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482439, 0.058612, 0.873966,
		-0.326688, 0.913727, -0.241614,
		-0.812728, -0.402079, -0.421670,
		37.634785, 32.322033, 41.842216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668530, 33.014217, 42.312439>,  <38.203697, 32.603489, 42.137383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668530, 33.014217, 42.312439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485607, 32.669697, 42.223858>,  <37.375854, 32.462986, 42.170712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485607, 32.669697, 42.223858>,  <37.668530, 33.014217, 42.312439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485607, 32.669697, 42.223858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631681, 0.139312, 0.762608,
		-0.625982, 0.488628, -0.607773,
		-0.457302, -0.861298, -0.221450,
		37.348415, 32.411308, 42.157421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964859, 33.277676, 42.307404>,  <37.668530, 33.014217, 42.312439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964859, 33.277676, 42.307404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966831, 32.880180, 42.352062>,  <36.968014, 32.641685, 42.378857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966831, 32.880180, 42.352062>,  <36.964859, 33.277676, 42.307404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966831, 32.880180, 42.352062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566376, 0.089241, 0.819301,
		-0.824132, -0.067272, -0.562388,
		0.004928, -0.993736, 0.111648,
		36.968311, 32.582058, 42.385555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183914, 33.047451, 42.513348>,  <36.964859, 33.277676, 42.307404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183914, 33.047451, 42.513348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437069, 32.752331, 42.607243>,  <36.588963, 32.575260, 42.663582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437069, 32.752331, 42.607243>,  <36.183914, 33.047451, 42.513348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437069, 32.752331, 42.607243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481224, -0.137338, 0.865772,
		-0.606529, -0.660899, -0.441967,
		0.632887, -0.737802, 0.234741,
		36.626934, 32.530991, 42.677666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793503, 32.400593, 42.684517>,  <36.183914, 33.047451, 42.513348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793503, 32.400593, 42.684517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137577, 32.303852, 42.864113>,  <36.344021, 32.245808, 42.971870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137577, 32.303852, 42.864113>,  <35.793503, 32.400593, 42.684517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137577, 32.303852, 42.864113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474344, -0.056081, 0.878552,
		-0.187302, -0.968690, -0.162963,
		0.860184, -0.241855, 0.448988,
		36.395634, 32.231297, 42.998810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707397, 31.824558, 43.213711>,  <35.793503, 32.400593, 42.684517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707397, 31.824558, 43.213711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042919, 32.023849, 43.301502>,  <36.244232, 32.143425, 43.354176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042919, 32.023849, 43.301502>,  <35.707397, 31.824558, 43.213711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042919, 32.023849, 43.301502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298904, 0.084507, 0.950534,
		0.455036, -0.862918, 0.219808,
		0.838808, 0.498229, 0.219476,
		36.294563, 32.173317, 43.367344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387981, 31.166258, 43.134388>,  <35.707397, 31.824558, 43.213711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387981, 31.166258, 43.134388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988613, 31.158932, 43.113163>,  <34.748993, 31.154535, 43.100430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988613, 31.158932, 43.113163>,  <35.387981, 31.166258, 43.134388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988613, 31.158932, 43.113163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049685, 0.151435, -0.987218,
		0.026114, -0.988297, -0.150286,
		-0.998423, -0.018313, -0.053058,
		34.689087, 31.153437, 43.097244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241085, 30.505617, 42.878654>,  <35.387981, 31.166258, 43.134388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241085, 30.505617, 42.878654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956524, 30.778759, 42.812187>,  <34.785786, 30.942644, 42.772305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956524, 30.778759, 42.812187>,  <35.241085, 30.505617, 42.878654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956524, 30.778759, 42.812187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073165, -0.163202, -0.983876,
		-0.698966, -0.712089, 0.066141,
		-0.711402, 0.682857, -0.166173,
		34.743103, 30.983616, 42.762337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753983, 30.248806, 42.444431>,  <35.241085, 30.505617, 42.878654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753983, 30.248806, 42.444431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690826, 30.641239, 42.399616>,  <34.652935, 30.876699, 42.372726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690826, 30.641239, 42.399616>,  <34.753983, 30.248806, 42.444431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690826, 30.641239, 42.399616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030443, -0.118242, -0.992518,
		-0.986988, -0.153294, 0.048535,
		-0.157886, 0.981081, -0.112037,
		34.643459, 30.935564, 42.366005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377209, 30.282722, 41.870705>,  <34.753983, 30.248806, 42.444431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377209, 30.282722, 41.870705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505886, 30.660347, 41.899715>,  <34.583092, 30.886921, 41.917122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505886, 30.660347, 41.899715>,  <34.377209, 30.282722, 41.870705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505886, 30.660347, 41.899715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002119, 0.077319, -0.997004,
		-0.946841, 0.320576, 0.026874,
		0.321694, 0.944062, 0.072530,
		34.602394, 30.943565, 41.921474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980743, 30.603197, 41.366108>,  <34.377209, 30.282722, 41.870705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980743, 30.603197, 41.366108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283764, 30.854649, 41.436462>,  <34.465576, 31.005520, 41.478676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283764, 30.854649, 41.436462>,  <33.980743, 30.603197, 41.366108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283764, 30.854649, 41.436462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062281, 0.198618, -0.978096,
		-0.649794, 0.751916, 0.111312,
		0.757555, 0.628628, 0.175891,
		34.511032, 31.043238, 41.489231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804455, 31.067289, 40.977150>,  <33.980743, 30.603197, 41.366108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804455, 31.067289, 40.977150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191128, 31.148941, 41.038921>,  <34.423134, 31.197933, 41.075985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191128, 31.148941, 41.038921>,  <33.804455, 31.067289, 40.977150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191128, 31.148941, 41.038921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050763, 0.438433, -0.897329,
		-0.250878, 0.875275, 0.413465,
		0.966687, 0.204131, 0.154425,
		34.481133, 31.210180, 41.085247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908176, 31.731855, 40.801670>,  <33.804455, 31.067289, 40.977150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908176, 31.731855, 40.801670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277084, 31.587236, 40.746983>,  <34.498428, 31.500465, 40.714169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277084, 31.587236, 40.746983>,  <33.908176, 31.731855, 40.801670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277084, 31.587236, 40.746983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074764, 0.180179, -0.980788,
		0.379237, 0.914778, 0.139143,
		0.922274, -0.361549, -0.136723,
		34.553768, 31.478771, 40.705967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304516, 32.283958, 40.400093>,  <33.908176, 31.731855, 40.801670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304516, 32.283958, 40.400093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482582, 31.930803, 40.340313>,  <34.589420, 31.718910, 40.304447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482582, 31.930803, 40.340313>,  <34.304516, 32.283958, 40.400093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482582, 31.930803, 40.340313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048743, 0.190541, -0.980468,
		0.894121, 0.429185, 0.127857,
		0.445164, -0.882890, -0.149447,
		34.616131, 31.665936, 40.295479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957397, 32.499008, 40.018158>,  <34.304516, 32.283958, 40.400093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957397, 32.499008, 40.018158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897331, 32.104851, 39.986019>,  <34.861290, 31.868357, 39.966736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897331, 32.104851, 39.986019>,  <34.957397, 32.499008, 40.018158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897331, 32.104851, 39.986019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169790, 0.054359, -0.983980,
		0.973972, -0.161404, 0.159146,
		-0.150167, -0.985390, -0.080349,
		34.852280, 31.809235, 39.961914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494770, 32.303970, 39.548946>,  <34.957397, 32.499008, 40.018158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494770, 32.303970, 39.548946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233925, 32.001198, 39.531975>,  <35.077415, 31.819534, 39.521793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233925, 32.001198, 39.531975>,  <35.494770, 32.303970, 39.548946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233925, 32.001198, 39.531975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102250, 0.143264, -0.984388,
		0.751191, -0.637598, -0.170821,
		-0.652117, -0.756930, -0.042425,
		35.038288, 31.774118, 39.519249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790855, 31.863604, 39.140381>,  <35.494770, 32.303970, 39.548946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790855, 31.863604, 39.140381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406231, 31.756104, 39.117832>,  <35.175457, 31.691603, 39.104301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406231, 31.756104, 39.117832>,  <35.790855, 31.863604, 39.140381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406231, 31.756104, 39.117832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005462, 0.186524, -0.982435,
		0.274543, -0.944978, -0.177886,
		-0.961560, -0.268749, -0.056370,
		35.117764, 31.675478, 39.100922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636753, 31.410879, 38.536076>,  <35.790855, 31.863604, 39.140381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636753, 31.410879, 38.536076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314678, 31.628325, 38.630863>,  <35.121433, 31.758791, 38.687737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314678, 31.628325, 38.630863>,  <35.636753, 31.410879, 38.536076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314678, 31.628325, 38.630863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020865, 0.425328, -0.904799,
		-0.592652, -0.723589, -0.353811,
		-0.805188, 0.543614, 0.236974,
		35.073120, 31.791409, 38.701954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.999466, 30.261518, 46.586384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752857, 30.563995, 46.498676>,  <33.604893, 30.745481, 46.446053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752857, 30.563995, 46.498676>,  <33.999466, 30.261518, 46.586384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752857, 30.563995, 46.498676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172089, -0.142344, -0.974743,
		-0.768304, -0.638681, -0.042374,
		-0.616518, 0.756191, -0.219273,
		33.567902, 30.790854, 46.432896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718777, 30.051306, 46.044632>,  <33.999466, 30.261518, 46.586384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718777, 30.051306, 46.044632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648235, 30.444830, 46.031868>,  <33.605911, 30.680944, 46.024208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648235, 30.444830, 46.031868>,  <33.718777, 30.051306, 46.044632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648235, 30.444830, 46.031868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020379, -0.028763, -0.999379,
		-0.984117, -0.176890, -0.014977,
		-0.176350, 0.983810, -0.031911,
		33.595329, 30.739973, 46.022293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303471, 30.084850, 45.572861>,  <33.718777, 30.051306, 46.044632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303471, 30.084850, 45.572861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.474041, 30.444887, 45.608635>,  <33.576382, 30.660910, 45.630100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.474041, 30.444887, 45.608635>,  <33.303471, 30.084850, 45.572861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474041, 30.444887, 45.608635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119254, 0.042070, -0.991972,
		-0.896627, 0.433668, -0.089400,
		0.426425, 0.900090, 0.089437,
		33.601967, 30.714914, 45.635468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016090, 30.321121, 44.987236>,  <33.303471, 30.084850, 45.572861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016090, 30.321121, 44.987236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.287804, 30.595919, 45.090473>,  <33.450832, 30.760798, 45.152416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.287804, 30.595919, 45.090473>,  <33.016090, 30.321121, 44.987236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287804, 30.595919, 45.090473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150290, 0.214008, -0.965201,
		-0.718320, 0.694436, 0.042124,
		0.679286, 0.686993, 0.258094,
		33.491589, 30.802017, 45.167900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795429, 30.918217, 44.728828>,  <33.016090, 30.321121, 44.987236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795429, 30.918217, 44.728828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.190571, 30.942841, 44.785900>,  <33.427654, 30.957615, 44.820145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.190571, 30.942841, 44.785900>,  <32.795429, 30.918217, 44.728828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190571, 30.942841, 44.785900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122080, 0.260675, -0.957677,
		-0.096150, 0.963462, 0.249993,
		0.987852, 0.061562, 0.142683,
		33.486927, 30.961309, 44.828705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011326, 31.494211, 44.372658>,  <32.795429, 30.918217, 44.728828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011326, 31.494211, 44.372658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339916, 31.269552, 44.412113>,  <33.537071, 31.134756, 44.435787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.339916, 31.269552, 44.412113>,  <33.011326, 31.494211, 44.372658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339916, 31.269552, 44.412113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371275, 0.395494, -0.840083,
		0.432819, 0.726730, 0.533414,
		0.821476, -0.561647, 0.098639,
		33.586361, 31.101059, 44.441704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714417, 31.906557, 44.297058>,  <33.011326, 31.494211, 44.372658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714417, 31.906557, 44.297058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.814209, 31.529978, 44.206345>,  <33.874084, 31.304029, 44.151917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.814209, 31.529978, 44.206345>,  <33.714417, 31.906557, 44.297058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814209, 31.529978, 44.206345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522983, 0.328087, -0.786669,
		0.815014, 0.077654, 0.574214,
		0.249480, -0.941450, -0.226784,
		33.889053, 31.247543, 44.138309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496193, 31.884441, 43.965691>,  <33.714417, 31.906557, 44.297058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496193, 31.884441, 43.965691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.390491, 31.512638, 43.862789>,  <34.327068, 31.289557, 43.801048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.390491, 31.512638, 43.862789>,  <34.496193, 31.884441, 43.965691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390491, 31.512638, 43.862789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365178, 0.150442, -0.918702,
		0.892644, -0.336717, 0.299681,
		-0.264258, -0.929510, -0.257253,
		34.311214, 31.233786, 43.785614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068737, 31.612518, 43.659138>,  <34.496193, 31.884441, 43.965691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068737, 31.612518, 43.659138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.771633, 31.374578, 43.536201>,  <34.593369, 31.231815, 43.462440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.771633, 31.374578, 43.536201>,  <35.068737, 31.612518, 43.659138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771633, 31.374578, 43.536201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347642, 0.049679, -0.936310,
		0.572231, -0.802302, 0.169894,
		-0.742763, -0.594848, -0.307341,
		34.548805, 31.196125, 43.444000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761520, 31.796345, 43.947880>,  <35.068737, 31.612518, 43.659138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761520, 31.796345, 43.947880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047825, 32.068829, 43.886387>,  <36.219608, 32.232319, 43.849491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047825, 32.068829, 43.886387>,  <35.761520, 31.796345, 43.947880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047825, 32.068829, 43.886387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307504, 0.505096, 0.806424,
		0.626997, -0.529933, 0.571004,
		0.715762, 0.681211, -0.153737,
		36.262554, 32.273193, 43.840267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035915, 31.879337, 44.607903>,  <35.761520, 31.796345, 43.947880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035915, 31.879337, 44.607903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.126381, 32.214085, 44.408504>,  <36.180660, 32.414932, 44.288864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.126381, 32.214085, 44.408504>,  <36.035915, 31.879337, 44.607903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126381, 32.214085, 44.408504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478191, 0.541234, 0.691664,
		0.848635, 0.081945, 0.522593,
		0.226166, 0.836870, -0.498495,
		36.194229, 32.465145, 44.258957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445328, 32.218193, 45.068211>,  <36.035915, 31.879337, 44.607903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445328, 32.218193, 45.068211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268074, 32.470940, 44.813847>,  <36.161724, 32.622589, 44.661228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268074, 32.470940, 44.813847>,  <36.445328, 32.218193, 45.068211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268074, 32.470940, 44.813847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461422, 0.447406, 0.766106,
		0.768586, 0.632906, 0.093299,
		-0.443131, 0.631868, -0.635907,
		36.135136, 32.660500, 44.623074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711327, 32.840794, 45.346169>,  <36.445328, 32.218193, 45.068211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711327, 32.840794, 45.346169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368999, 32.898846, 45.147568>,  <36.163601, 32.933678, 45.028408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368999, 32.898846, 45.147568>,  <36.711327, 32.840794, 45.346169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368999, 32.898846, 45.147568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353710, 0.536181, 0.766420,
		0.377440, 0.831534, -0.407542,
		-0.855820, 0.145126, -0.496498,
		36.112255, 32.942383, 44.998619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527409, 33.411083, 45.470505>,  <36.711327, 32.840794, 45.346169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527409, 33.411083, 45.470505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163269, 33.293068, 45.354420>,  <35.944786, 33.222260, 45.284767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163269, 33.293068, 45.354420>,  <36.527409, 33.411083, 45.470505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163269, 33.293068, 45.354420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407541, 0.517135, 0.752650,
		-0.071980, 0.803445, -0.591012,
		-0.910346, -0.295037, -0.290214,
		35.890167, 33.204556, 45.267357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052208, 33.942535, 45.672550>,  <36.527409, 33.411083, 45.470505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052208, 33.942535, 45.672550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.811169, 33.630955, 45.603153>,  <35.666546, 33.444004, 45.561516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.811169, 33.630955, 45.603153>,  <36.052208, 33.942535, 45.672550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811169, 33.630955, 45.603153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635674, 0.337083, 0.694474,
		-0.482482, 0.528776, -0.698288,
		-0.602602, -0.778955, -0.173493,
		35.630386, 33.397266, 45.551105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382111, 34.197681, 45.867802>,  <36.052208, 33.942535, 45.672550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382111, 34.197681, 45.867802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324142, 33.802559, 45.845032>,  <35.289360, 33.565487, 45.831371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324142, 33.802559, 45.845032>,  <35.382111, 34.197681, 45.867802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324142, 33.802559, 45.845032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510300, 0.025331, 0.859623,
		-0.847698, 0.153623, -0.507748,
		-0.144919, -0.987805, -0.056921,
		35.280666, 33.506218, 45.827957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559750, 34.089359, 45.984089>,  <35.382111, 34.197681, 45.867802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559750, 34.089359, 45.984089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798225, 33.787811, 46.094540>,  <34.941311, 33.606884, 46.160809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798225, 33.787811, 46.094540>,  <34.559750, 34.089359, 45.984089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798225, 33.787811, 46.094540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344132, 0.070774, 0.936250,
		-0.725351, -0.653203, -0.217236,
		0.596187, -0.753868, 0.276124,
		34.977081, 33.561649, 46.177376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069523, 33.551884, 46.298069>,  <34.559750, 34.089359, 45.984089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069523, 33.551884, 46.298069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.440422, 33.465923, 46.420719>,  <34.662964, 33.414345, 46.494308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.440422, 33.465923, 46.420719>,  <34.069523, 33.551884, 46.298069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440422, 33.465923, 46.420719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294693, 0.086362, 0.951682,
		-0.231000, -0.972810, 0.016749,
		0.927252, -0.214902, 0.306630,
		34.718597, 33.401451, 46.512707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976627, 33.193424, 46.866901>,  <34.069523, 33.551884, 46.298069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976627, 33.193424, 46.866901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356308, 33.314224, 46.902264>,  <34.584114, 33.386703, 46.923481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356308, 33.314224, 46.902264>,  <33.976627, 33.193424, 46.866901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356308, 33.314224, 46.902264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122080, 0.094469, 0.988014,
		0.290031, -0.948615, 0.126538,
		0.949199, 0.302002, 0.088407,
		34.641068, 33.404823, 46.928787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211319, 32.691223, 47.296516>,  <33.976627, 33.193424, 46.866901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211319, 32.691223, 47.296516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.468227, 32.997765, 47.301998>,  <34.622372, 33.181690, 47.305286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.468227, 32.997765, 47.301998>,  <34.211319, 32.691223, 47.296516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468227, 32.997765, 47.301998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025275, -0.039050, 0.998917,
		0.766061, -0.641228, -0.044450,
		0.642270, 0.766356, 0.013707,
		34.660908, 33.227673, 47.306110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771500, 32.490635, 47.659573>,  <34.211319, 32.691223, 47.296516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771500, 32.490635, 47.659573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768864, 32.890507, 47.669415>,  <34.767284, 33.130428, 47.675320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768864, 32.890507, 47.669415>,  <34.771500, 32.490635, 47.659573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768864, 32.890507, 47.669415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079671, -0.025054, 0.996506,
		0.996800, 0.004603, 0.079810,
		-0.006586, 0.999676, 0.024607,
		34.766888, 33.190411, 47.676796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242603, 32.667343, 48.173454>,  <34.771500, 32.490635, 47.659573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242603, 32.667343, 48.173454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.013489, 32.994606, 48.153267>,  <34.876022, 33.190964, 48.141155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.013489, 32.994606, 48.153267>,  <35.242603, 32.667343, 48.173454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013489, 32.994606, 48.153267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059345, 0.102798, 0.992930,
		0.817557, 0.565737, -0.107434,
		-0.572782, 0.818153, -0.050470,
		34.841656, 33.240051, 48.138126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558918, 33.260921, 48.500820>,  <35.242603, 32.667343, 48.173454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558918, 33.260921, 48.500820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.173897, 33.369301, 48.504494>,  <34.942886, 33.434330, 48.506699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.173897, 33.369301, 48.504494>,  <35.558918, 33.260921, 48.500820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173897, 33.369301, 48.504494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096767, 0.311718, 0.945234,
		0.253245, 0.910725, -0.326263,
		-0.962550, 0.270947, 0.009187,
		34.885132, 33.450584, 48.507252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.514343, 35.185219, 48.596638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.781403, 34.888214, 48.618282>,  <30.941639, 34.710011, 48.631268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.781403, 34.888214, 48.618282>,  <30.514343, 35.185219, 48.596638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781403, 34.888214, 48.618282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282321, 0.185265, -0.941261,
		0.688870, 0.643706, 0.333318,
		0.667648, -0.742508, 0.054108,
		30.981697, 34.665462, 48.634514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996887, 35.387394, 48.102974>,  <30.514343, 35.185219, 48.596638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996887, 35.387394, 48.102974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.067648, 34.997288, 48.155972>,  <31.110104, 34.763222, 48.187771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.067648, 34.997288, 48.155972>,  <30.996887, 35.387394, 48.102974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067648, 34.997288, 48.155972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354007, -0.062557, -0.933148,
		0.918360, 0.211978, 0.334186,
		0.176901, -0.975270, 0.132492,
		31.120718, 34.704708, 48.195721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758038, 35.272198, 47.982185>,  <30.996887, 35.387394, 48.102974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758038, 35.272198, 47.982185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.581964, 34.917015, 47.928864>,  <31.476320, 34.703907, 47.896870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.581964, 34.917015, 47.928864>,  <31.758038, 35.272198, 47.982185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581964, 34.917015, 47.928864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425403, -0.075490, -0.901850,
		0.790742, -0.453687, 0.410970,
		-0.440182, -0.887958, -0.133307,
		31.449909, 34.650627, 47.888870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338490, 34.881252, 47.700932>,  <31.758038, 35.272198, 47.982185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338490, 34.881252, 47.700932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.009075, 34.665684, 47.630112>,  <31.811426, 34.536343, 47.587620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.009075, 34.665684, 47.630112>,  <32.338490, 34.881252, 47.700932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009075, 34.665684, 47.630112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320741, -0.184950, -0.928934,
		0.467875, -0.821802, 0.325168,
		-0.823540, -0.538920, -0.177052,
		31.762012, 34.504009, 47.576996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581902, 34.236156, 47.450554>,  <32.338490, 34.881252, 47.700932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581902, 34.236156, 47.450554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199516, 34.243565, 47.333397>,  <31.970085, 34.248009, 47.263103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199516, 34.243565, 47.333397>,  <32.581902, 34.236156, 47.450554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199516, 34.243565, 47.333397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289543, -0.103374, -0.951566,
		-0.047893, -0.994470, 0.093462,
		-0.955966, 0.018512, -0.292893,
		31.912727, 34.249119, 47.245529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573662, 33.805443, 47.035446>,  <32.581902, 34.236156, 47.450554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573662, 33.805443, 47.035446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221954, 33.965466, 46.932022>,  <32.010929, 34.061478, 46.869968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221954, 33.965466, 46.932022>,  <32.573662, 33.805443, 47.035446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221954, 33.965466, 46.932022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165684, -0.252051, -0.953425,
		-0.446589, -0.881152, 0.155337,
		-0.879265, 0.400052, -0.258556,
		31.958176, 34.085480, 46.854454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254303, 33.305321, 46.548691>,  <32.573662, 33.805443, 47.035446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254303, 33.305321, 46.548691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.078526, 33.660320, 46.493198>,  <31.973061, 33.873318, 46.459904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.078526, 33.660320, 46.493198>,  <32.254303, 33.305321, 46.548691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078526, 33.660320, 46.493198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047267, -0.131378, -0.990205,
		-0.897027, -0.441693, 0.015784,
		-0.439440, 0.887495, -0.138727,
		31.946693, 33.926567, 46.451580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760237, 33.247742, 45.975254>,  <32.254303, 33.305321, 46.548691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760237, 33.247742, 45.975254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.858089, 33.634495, 46.004353>,  <31.916801, 33.866547, 46.021812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.858089, 33.634495, 46.004353>,  <31.760237, 33.247742, 45.975254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858089, 33.634495, 46.004353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123701, 0.043295, -0.991375,
		-0.961693, 0.251522, -0.109013,
		0.244632, 0.966883, 0.072750,
		31.931479, 33.924561, 46.026176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331923, 33.523232, 45.495216>,  <31.760237, 33.247742, 45.975254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331923, 33.523232, 45.495216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.616261, 33.796997, 45.560059>,  <31.786863, 33.961254, 45.598965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.616261, 33.796997, 45.560059>,  <31.331923, 33.523232, 45.495216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616261, 33.796997, 45.560059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099872, 0.326355, -0.939956,
		-0.696220, 0.651976, 0.300342,
		0.710847, 0.684412, 0.162101,
		31.829515, 34.002319, 45.608688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078688, 34.076561, 45.183823>,  <31.331923, 33.523232, 45.495216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078688, 34.076561, 45.183823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456554, 34.201805, 45.222942>,  <31.683275, 34.276951, 45.246414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456554, 34.201805, 45.222942>,  <31.078688, 34.076561, 45.183823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456554, 34.201805, 45.222942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095642, 0.548088, -0.830934,
		-0.313780, 0.775602, 0.547708,
		0.944667, 0.313114, 0.097799,
		31.739954, 34.295738, 45.252281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100477, 34.906536, 45.088749>,  <31.078688, 34.076561, 45.183823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100477, 34.906536, 45.088749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.443069, 34.721474, 44.997196>,  <31.648624, 34.610435, 44.942265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.443069, 34.721474, 44.997196>,  <31.100477, 34.906536, 45.088749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443069, 34.721474, 44.997196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092791, 0.574188, -0.813448,
		0.507769, 0.675465, 0.534713,
		0.856482, -0.462660, -0.228877,
		31.700014, 34.582676, 44.928532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496122, 35.416710, 44.728935>,  <31.100477, 34.906536, 45.088749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496122, 35.416710, 44.728935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.670391, 35.073788, 44.619236>,  <31.774952, 34.868034, 44.553417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.670391, 35.073788, 44.619236>,  <31.496122, 35.416710, 44.728935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670391, 35.073788, 44.619236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028056, 0.291599, -0.956129,
		0.899669, 0.424252, 0.102989,
		0.435671, -0.857310, -0.274246,
		31.801092, 34.816593, 44.536961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017559, 35.655437, 44.338497>,  <31.496122, 35.416710, 44.728935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017559, 35.655437, 44.338497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.932787, 35.275024, 44.248493>,  <31.881924, 35.046776, 44.194492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.932787, 35.275024, 44.248493>,  <32.017559, 35.655437, 44.338497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932787, 35.275024, 44.248493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051254, 0.219108, -0.974354,
		0.975940, -0.218028, 0.002309,
		-0.211931, -0.951029, -0.225011,
		31.869207, 34.989716, 44.180988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575970, 35.539799, 43.929890>,  <32.017559, 35.655437, 44.338497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575970, 35.539799, 43.929890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267975, 35.293293, 43.863747>,  <32.083179, 35.145390, 43.824062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267975, 35.293293, 43.863747>,  <32.575970, 35.539799, 43.929890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267975, 35.293293, 43.863747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062505, 0.330755, -0.941644,
		0.634992, -0.714717, -0.293196,
		-0.769986, -0.616263, -0.165354,
		32.036980, 35.108414, 43.814140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150242, 35.911160, 44.200142>,  <32.575970, 35.539799, 43.929890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150242, 35.911160, 44.200142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.410336, 36.176426, 44.051868>,  <33.566391, 36.335587, 43.962906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.410336, 36.176426, 44.051868>,  <33.150242, 35.911160, 44.200142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410336, 36.176426, 44.051868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138983, 0.375841, 0.916202,
		0.746914, -0.647263, 0.152216,
		0.650234, 0.663169, -0.370680,
		33.605404, 36.375378, 43.940666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876698, 35.819187, 44.637482>,  <33.150242, 35.911160, 44.200142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876698, 35.819187, 44.637482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792229, 36.175327, 44.476143>,  <33.741547, 36.389011, 44.379341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792229, 36.175327, 44.476143>,  <33.876698, 35.819187, 44.637482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792229, 36.175327, 44.476143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062306, 0.424072, 0.903483,
		0.975460, 0.165662, -0.145027,
		-0.211175, 0.890348, -0.403343,
		33.728878, 36.442432, 44.355141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263931, 36.266243, 45.083733>,  <33.876698, 35.819187, 44.637482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263931, 36.266243, 45.083733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.984283, 36.497501, 44.915455>,  <33.816494, 36.636257, 44.814487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.984283, 36.497501, 44.915455>,  <34.263931, 36.266243, 45.083733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984283, 36.497501, 44.915455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011349, 0.597270, 0.801960,
		0.714919, 0.555888, -0.424122,
		-0.699115, 0.578150, -0.420691,
		33.774548, 36.670948, 44.789249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494427, 36.889610, 45.228607>,  <34.263931, 36.266243, 45.083733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494427, 36.889610, 45.228607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108208, 36.938744, 45.136848>,  <33.876476, 36.968224, 45.081791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.108208, 36.938744, 45.136848>,  <34.494427, 36.889610, 45.228607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108208, 36.938744, 45.136848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139779, 0.498761, 0.855394,
		0.219488, 0.857992, -0.464409,
		-0.965550, 0.122834, -0.229401,
		33.818542, 36.975594, 45.068027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334473, 37.645653, 45.389389>,  <34.494427, 36.889610, 45.228607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334473, 37.645653, 45.389389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.983452, 37.456924, 45.423515>,  <33.772839, 37.343685, 45.443993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.983452, 37.456924, 45.423515>,  <34.334473, 37.645653, 45.389389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983452, 37.456924, 45.423515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264084, 0.624140, 0.735330,
		-0.400194, 0.622763, -0.672318,
		-0.877556, -0.471823, 0.085316,
		33.720184, 37.315376, 45.449108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864738, 38.192841, 45.652172>,  <34.334473, 37.645653, 45.389389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864738, 38.192841, 45.652172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648415, 37.861385, 45.709980>,  <33.518620, 37.662514, 45.744667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648415, 37.861385, 45.709980>,  <33.864738, 38.192841, 45.652172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648415, 37.861385, 45.709980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363741, 0.385306, 0.848075,
		-0.758433, 0.406075, -0.509786,
		-0.540806, -0.828638, 0.144523,
		33.486172, 37.612793, 45.753338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101398, 38.403664, 45.836178>,  <33.864738, 38.192841, 45.652172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101398, 38.403664, 45.836178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.155750, 38.025650, 45.955135>,  <33.188362, 37.798840, 46.026508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.155750, 38.025650, 45.955135>,  <33.101398, 38.403664, 45.836178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155750, 38.025650, 45.955135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284423, 0.250332, 0.925439,
		-0.949021, -0.210333, -0.234776,
		0.135878, -0.945037, 0.297394,
		33.196514, 37.742138, 46.044353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593708, 38.304947, 46.369221>,  <33.101398, 38.403664, 45.836178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593708, 38.304947, 46.369221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.817387, 37.979393, 46.432320>,  <32.951595, 37.784061, 46.470177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.817387, 37.979393, 46.432320>,  <32.593708, 38.304947, 46.369221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817387, 37.979393, 46.432320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351562, -0.060485, 0.934209,
		-0.750801, -0.577863, -0.319955,
		0.559197, -0.813889, 0.157743,
		32.985146, 37.735226, 46.479641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217484, 37.811653, 46.798786>,  <32.593708, 38.304947, 46.369221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217484, 37.811653, 46.798786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.581913, 37.653572, 46.845692>,  <32.800571, 37.558723, 46.873833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.581913, 37.653572, 46.845692>,  <32.217484, 37.811653, 46.798786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581913, 37.653572, 46.845692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272511, -0.363967, 0.890655,
		-0.309314, -0.843410, -0.439300,
		0.911078, -0.395206, 0.117259,
		32.855236, 37.535011, 46.880871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137802, 37.090885, 47.087658>,  <32.217484, 37.811653, 46.798786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137802, 37.090885, 47.087658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501854, 37.214108, 47.198479>,  <32.720287, 37.288040, 47.264973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501854, 37.214108, 47.198479>,  <32.137802, 37.090885, 47.087658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501854, 37.214108, 47.198479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169847, -0.332522, 0.927675,
		0.377902, -0.891365, -0.250317,
		0.910133, 0.308054, 0.277056,
		32.774895, 37.306522, 47.281597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388557, 36.595455, 47.595669>,  <32.137802, 37.090885, 47.087658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388557, 36.595455, 47.595669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.622147, 36.915119, 47.652695>,  <32.762299, 37.106918, 47.686913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.622147, 36.915119, 47.652695>,  <32.388557, 36.595455, 47.595669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622147, 36.915119, 47.652695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118664, -0.089700, 0.988874,
		0.803055, -0.594391, 0.042449,
		0.583970, 0.799158, 0.142567,
		32.797337, 37.154865, 47.695465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919071, 36.389423, 48.088234>,  <32.388557, 36.595455, 47.595669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919071, 36.389423, 48.088234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916626, 36.787289, 48.129433>,  <32.915157, 37.026009, 48.154152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916626, 36.787289, 48.129433>,  <32.919071, 36.389423, 48.088234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916626, 36.787289, 48.129433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010141, -0.102936, 0.994636,
		0.999930, 0.007129, -0.009457,
		-0.006118, 0.994662, 0.103002,
		32.914791, 37.085686, 48.160332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347916, 36.499004, 48.586170>,  <32.919071, 36.389423, 48.088234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347916, 36.499004, 48.586170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.109726, 36.818607, 48.552692>,  <32.966812, 37.010368, 48.532608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.109726, 36.818607, 48.552692>,  <33.347916, 36.499004, 48.586170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109726, 36.818607, 48.552692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168940, -0.022694, 0.985365,
		0.785414, 0.600894, 0.148498,
		-0.595470, 0.799007, -0.083691,
		32.931084, 37.058308, 48.527584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684673, 36.949856, 49.023384>,  <33.347916, 36.499004, 48.586170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684673, 36.949856, 49.023384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304249, 37.063156, 48.973980>,  <33.075993, 37.131134, 48.944340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304249, 37.063156, 48.973980>,  <33.684673, 36.949856, 49.023384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304249, 37.063156, 48.973980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237402, -0.413931, 0.878807,
		0.197797, 0.865120, 0.460918,
		-0.951061, 0.283248, -0.123507,
		33.018932, 37.148132, 48.936928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406593, 37.053310, 49.264160>,  <33.684673, 36.949856, 49.023384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406593, 37.053310, 49.264160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.758713, 36.889614, 49.360161>,  <34.969982, 36.791397, 49.417763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.758713, 36.889614, 49.360161>,  <34.406593, 37.053310, 49.264160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758713, 36.889614, 49.360161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178012, -0.184007, -0.966671,
		0.439764, 0.893680, -0.089131,
		0.880295, -0.409241, 0.240005,
		35.022800, 36.766842, 49.432163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872410, 37.453480, 48.809872>,  <34.406593, 37.053310, 49.264160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872410, 37.453480, 48.809872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017185, 37.097351, 48.920376>,  <35.104050, 36.883675, 48.986679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017185, 37.097351, 48.920376>,  <34.872410, 37.453480, 48.809872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017185, 37.097351, 48.920376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404976, -0.116755, -0.906842,
		0.839640, 0.440102, 0.318301,
		0.361939, -0.890325, 0.276263,
		35.125767, 36.830254, 49.003254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602001, 37.441231, 48.560017>,  <34.872410, 37.453480, 48.809872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602001, 37.441231, 48.560017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.482388, 37.062527, 48.607719>,  <35.410622, 36.835304, 48.636341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.482388, 37.062527, 48.607719>,  <35.602001, 37.441231, 48.560017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482388, 37.062527, 48.607719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411342, -0.240663, -0.879135,
		0.861033, -0.213832, 0.461408,
		-0.299032, -0.946761, 0.119261,
		35.392677, 36.778500, 48.643497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216286, 37.044739, 48.443138>,  <35.602001, 37.441231, 48.560017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216286, 37.044739, 48.443138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922546, 36.781754, 48.375633>,  <35.746304, 36.623962, 48.335133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922546, 36.781754, 48.375633>,  <36.216286, 37.044739, 48.443138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922546, 36.781754, 48.375633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526017, -0.394076, -0.753665,
		0.429003, -0.642220, 0.635224,
		-0.734345, -0.657462, -0.168759,
		35.702244, 36.584515, 48.325005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505596, 36.393703, 48.361580>,  <36.216286, 37.044739, 48.443138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505596, 36.393703, 48.361580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.166847, 36.334389, 48.157299>,  <35.963596, 36.298801, 48.034729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.166847, 36.334389, 48.157299>,  <36.505596, 36.393703, 48.361580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166847, 36.334389, 48.157299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530948, -0.181614, -0.827714,
		0.029987, -0.972126, 0.232536,
		-0.846874, -0.148285, -0.510702,
		35.912785, 36.289902, 48.004089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528133, 35.810879, 47.904034>,  <36.505596, 36.393703, 48.361580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528133, 35.810879, 47.904034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220970, 35.993671, 47.724487>,  <36.036671, 36.103348, 47.616760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220970, 35.993671, 47.724487>,  <36.528133, 35.810879, 47.904034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220970, 35.993671, 47.724487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447179, -0.119273, -0.886456,
		-0.458633, -0.881442, -0.112762,
		-0.767910, 0.456983, -0.448865,
		35.990597, 36.130768, 47.589828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240990, 35.323463, 47.385345>,  <36.528133, 35.810879, 47.904034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240990, 35.323463, 47.385345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145893, 35.695709, 47.274036>,  <36.088833, 35.919056, 47.207253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145893, 35.695709, 47.274036>,  <36.240990, 35.323463, 47.385345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145893, 35.695709, 47.274036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306163, -0.200088, -0.930714,
		-0.921814, -0.306469, -0.237350,
		-0.237744, 0.930614, -0.278273,
		36.074570, 35.974892, 47.190556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799820, 35.280235, 46.747288>,  <36.240990, 35.323463, 47.385345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799820, 35.280235, 46.747288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.935043, 35.656677, 46.749966>,  <36.016178, 35.882542, 46.751572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.935043, 35.656677, 46.749966>,  <35.799820, 35.280235, 46.747288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935043, 35.656677, 46.749966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273175, -0.091313, -0.957621,
		-0.900608, 0.325558, -0.287954,
		0.338055, 0.941103, 0.006697,
		36.036461, 35.939007, 46.751976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646709, 35.590763, 46.077370>,  <35.799820, 35.280235, 46.747288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646709, 35.590763, 46.077370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.955853, 35.798904, 46.222656>,  <36.141338, 35.923790, 46.309830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.955853, 35.798904, 46.222656>,  <35.646709, 35.590763, 46.077370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955853, 35.798904, 46.222656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417695, 0.013763, -0.908483,
		-0.477728, 0.853842, -0.206711,
		0.772856, 0.520350, 0.363220,
		36.187710, 35.955009, 46.331623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708672, 35.944214, 45.532574>,  <35.646709, 35.590763, 46.077370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708672, 35.944214, 45.532574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058708, 35.995914, 45.719128>,  <36.268730, 36.026936, 45.831059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058708, 35.995914, 45.719128>,  <35.708672, 35.944214, 45.532574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058708, 35.995914, 45.719128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452866, 0.121149, -0.883309,
		-0.170674, 0.984183, 0.047480,
		0.875090, 0.129256, 0.466380,
		36.321236, 36.034691, 45.859043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977905, 36.457684, 45.270931>,  <35.708672, 35.944214, 45.532574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977905, 36.457684, 45.270931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.296192, 36.284889, 45.440746>,  <36.487164, 36.181213, 45.542633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.296192, 36.284889, 45.440746>,  <35.977905, 36.457684, 45.270931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296192, 36.284889, 45.440746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508750, 0.096365, -0.855504,
		0.328656, 0.896717, 0.296452,
		0.795713, -0.431986, 0.424534,
		36.534904, 36.155293, 45.568108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571033, 36.855370, 45.004555>,  <35.977905, 36.457684, 45.270931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571033, 36.855370, 45.004555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.704998, 36.500488, 45.131496>,  <36.785378, 36.287560, 45.207661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.704998, 36.500488, 45.131496>,  <36.571033, 36.855370, 45.004555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704998, 36.500488, 45.131496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538835, -0.095966, -0.836927,
		0.772976, 0.451297, 0.445914,
		0.334910, -0.887199, 0.317354,
		36.805470, 36.234329, 45.226704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387955, 36.969650, 44.992268>,  <36.571033, 36.855370, 45.004555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387955, 36.969650, 44.992268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.326027, 36.574951, 44.972832>,  <37.288872, 36.338131, 44.961170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.326027, 36.574951, 44.972832>,  <37.387955, 36.969650, 44.992268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326027, 36.574951, 44.972832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536032, -0.042584, -0.843123,
		0.829880, -0.156575, 0.535521,
		-0.154817, -0.986747, -0.048590,
		37.279583, 36.278927, 44.958256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000446, 36.600388, 44.758846>,  <37.387955, 36.969650, 44.992268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000446, 36.600388, 44.758846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.735355, 36.311718, 44.678864>,  <37.576302, 36.138515, 44.630875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.735355, 36.311718, 44.678864>,  <38.000446, 36.600388, 44.758846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735355, 36.311718, 44.678864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533565, -0.267700, -0.802275,
		0.525450, -0.638380, 0.562470,
		-0.662730, -0.721670, -0.199954,
		37.536537, 36.095219, 44.618877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.609146, 43.499977, 37.019749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568336, 43.516727, 36.622189>,  <27.543850, 43.526779, 36.383652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568336, 43.516727, 36.622189>,  <27.609146, 43.499977, 37.019749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568336, 43.516727, 36.622189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729058, -0.682900, 0.046065,
		-0.676805, 0.729311, 0.100202,
		-0.102024, 0.041876, -0.993900,
		27.537729, 43.529289, 36.324020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926443, 43.628571, 36.916908>,  <27.609146, 43.499977, 37.019749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926443, 43.628571, 36.916908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053417, 43.474052, 36.570496>,  <27.129602, 43.381344, 36.362648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053417, 43.474052, 36.570496>,  <26.926443, 43.628571, 36.916908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053417, 43.474052, 36.570496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819099, -0.571873, -0.045151,
		-0.477820, 0.723699, -0.497944,
		0.317436, -0.386291, -0.866033,
		27.148647, 43.358166, 36.310684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327356, 43.439350, 36.660263>,  <26.926443, 43.628571, 36.916908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327356, 43.439350, 36.660263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.585571, 43.227840, 36.439835>,  <26.740501, 43.100933, 36.307579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.585571, 43.227840, 36.439835>,  <26.327356, 43.439350, 36.660263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585571, 43.227840, 36.439835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683407, -0.722046, -0.107727,
		-0.340932, 0.446145, -0.827478,
		0.645539, -0.528776, -0.551067,
		26.779232, 43.069206, 36.274513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041952, 43.227306, 35.984055>,  <26.327356, 43.439350, 36.660263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041952, 43.227306, 35.984055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.339453, 42.966061, 36.041016>,  <26.517952, 42.809315, 36.075191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.339453, 42.966061, 36.041016>,  <26.041952, 43.227306, 35.984055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339453, 42.966061, 36.041016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556633, -0.723070, -0.409058,
		0.370130, 0.224969, -0.901328,
		0.743749, -0.653114, 0.142405,
		26.562578, 42.770126, 36.083736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969074, 42.793514, 35.492279>,  <26.041952, 43.227306, 35.984055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969074, 42.793514, 35.492279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.222105, 42.602013, 35.735802>,  <26.373922, 42.487114, 35.881916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.222105, 42.602013, 35.735802>,  <25.969074, 42.793514, 35.492279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222105, 42.602013, 35.735802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373506, -0.877190, -0.301714,
		0.678484, -0.036536, -0.733706,
		0.632576, -0.478752, 0.608806,
		26.411879, 42.458385, 35.918442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441111, 42.285240, 35.088112>,  <25.969074, 42.793514, 35.492279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441111, 42.285240, 35.088112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.403004, 42.156395, 35.464870>,  <26.380140, 42.079086, 35.690926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.403004, 42.156395, 35.464870>,  <26.441111, 42.285240, 35.088112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403004, 42.156395, 35.464870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339524, -0.878945, -0.334931,
		0.935761, -0.351703, -0.025632,
		-0.095267, -0.322118, 0.941894,
		26.374424, 42.059761, 35.747440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825150, 41.651882, 35.058327>,  <26.441111, 42.285240, 35.088112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825150, 41.651882, 35.058327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.606993, 41.613548, 35.391399>,  <26.476099, 41.590549, 35.591244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.606993, 41.613548, 35.391399>,  <26.825150, 41.651882, 35.058327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606993, 41.613548, 35.391399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190477, -0.981621, 0.011782,
		0.816251, 0.165033, 0.553623,
		-0.545393, -0.095835, 0.832684,
		26.443375, 41.584797, 35.641205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140156, 41.071007, 35.364815>,  <26.825150, 41.651882, 35.058327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140156, 41.071007, 35.364815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789093, 41.118206, 35.550629>,  <26.578455, 41.146526, 35.662117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789093, 41.118206, 35.550629>,  <27.140156, 41.071007, 35.364815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789093, 41.118206, 35.550629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123903, -0.992133, 0.017913,
		0.462998, -0.041836, 0.885371,
		-0.877657, 0.117994, 0.464539,
		26.525797, 41.153603, 35.689991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183924, 40.621597, 35.889885>,  <27.140156, 41.071007, 35.364815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183924, 40.621597, 35.889885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792778, 40.696503, 35.852547>,  <26.558090, 40.741447, 35.830143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792778, 40.696503, 35.852547>,  <27.183924, 40.621597, 35.889885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792778, 40.696503, 35.852547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180842, -0.980788, -0.073157,
		-0.105255, -0.054657, 0.992942,
		-0.977864, 0.187266, -0.093349,
		26.499418, 40.752682, 35.824543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798923, 40.034306, 36.370434>,  <27.183924, 40.621597, 35.889885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798923, 40.034306, 36.370434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527628, 40.179344, 36.114773>,  <26.364851, 40.266365, 35.961376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527628, 40.179344, 36.114773>,  <26.798923, 40.034306, 36.370434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527628, 40.179344, 36.114773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277426, -0.931764, -0.234201,
		-0.680462, 0.018474, 0.732550,
		-0.678237, 0.362593, -0.639156,
		26.324158, 40.288120, 35.923027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103708, 39.825394, 36.631817>,  <26.798923, 40.034306, 36.370434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103708, 39.825394, 36.631817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.077255, 39.909538, 36.241665>,  <26.061382, 39.960026, 36.007572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.077255, 39.909538, 36.241665>,  <26.103708, 39.825394, 36.631817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077255, 39.909538, 36.241665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219407, -0.956665, -0.191450,
		-0.973389, 0.201345, 0.109423,
		-0.066134, 0.210364, -0.975383,
		26.057415, 39.972649, 35.949051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643223, 39.421146, 36.452862>,  <26.103708, 39.825394, 36.631817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643223, 39.421146, 36.452862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797668, 39.501678, 36.092777>,  <25.890337, 39.549999, 35.876728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797668, 39.501678, 36.092777>,  <25.643223, 39.421146, 36.452862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797668, 39.501678, 36.092777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120934, -0.956420, -0.265774,
		-0.914488, 0.211486, -0.344941,
		0.386116, 0.201332, -0.900211,
		25.913504, 39.562077, 35.822716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215134, 39.122437, 36.005177>,  <25.643223, 39.421146, 36.452862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215134, 39.122437, 36.005177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.551910, 39.165855, 35.793762>,  <25.753977, 39.191906, 35.666912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.551910, 39.165855, 35.793762>,  <25.215134, 39.122437, 36.005177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551910, 39.165855, 35.793762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061822, -0.953699, -0.294340,
		-0.536011, 0.280493, -0.796251,
		0.841944, 0.108543, -0.528534,
		25.804493, 39.198418, 35.635201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099504, 38.837727, 35.455788>,  <25.215134, 39.122437, 36.005177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099504, 38.837727, 35.455788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.496965, 38.819145, 35.496777>,  <25.735441, 38.807995, 35.521370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.496965, 38.819145, 35.496777>,  <25.099504, 38.837727, 35.455788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496965, 38.819145, 35.496777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018523, -0.965900, -0.258252,
		0.110977, 0.254714, -0.960627,
		0.993650, -0.046453, 0.102474,
		25.795061, 38.805210, 35.527519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338875, 38.489311, 34.893776>,  <25.099504, 38.837727, 35.455788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338875, 38.489311, 34.893776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632174, 38.443420, 35.161861>,  <25.808153, 38.415886, 35.322712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632174, 38.443420, 35.161861>,  <25.338875, 38.489311, 34.893776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632174, 38.443420, 35.161861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056566, -0.971954, -0.228265,
		0.677605, 0.205286, -0.706193,
		0.733247, -0.114727, 0.670213,
		25.852148, 38.409000, 35.362926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824930, 38.004902, 34.576885>,  <25.338875, 38.489311, 34.893776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824930, 38.004902, 34.576885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.926716, 37.977177, 34.962723>,  <25.987787, 37.960541, 35.194225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.926716, 37.977177, 34.962723>,  <25.824930, 38.004902, 34.576885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926716, 37.977177, 34.962723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053283, -0.994908, -0.085550,
		0.965614, 0.073165, -0.249473,
		0.254462, -0.069315, 0.964596,
		26.003054, 37.956383, 35.252102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331551, 37.574898, 34.597279>,  <25.824930, 38.004902, 34.576885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331551, 37.574898, 34.597279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.227558, 37.550613, 34.982761>,  <26.165163, 37.536041, 35.214050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.227558, 37.550613, 34.982761>,  <26.331551, 37.574898, 34.597279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227558, 37.550613, 34.982761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055021, -0.997331, -0.047990,
		0.964044, 0.040547, 0.262630,
		-0.259983, -0.060715, 0.963703,
		26.149563, 37.532398, 35.271873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680088, 37.058880, 34.881489>,  <26.331551, 37.574898, 34.597279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680088, 37.058880, 34.881489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.410460, 37.083744, 35.175907>,  <26.248682, 37.098663, 35.352558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.410460, 37.083744, 35.175907>,  <26.680088, 37.058880, 34.881489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410460, 37.083744, 35.175907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076715, -0.996955, 0.013944,
		0.734672, -0.047066, 0.676787,
		-0.674070, 0.062164, 0.736046,
		26.208239, 37.102394, 35.396721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855200, 36.551537, 35.473015>,  <26.680088, 37.058880, 34.881489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855200, 36.551537, 35.473015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.466173, 36.641926, 35.495121>,  <26.232758, 36.696159, 35.508385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.466173, 36.641926, 35.495121>,  <26.855200, 36.551537, 35.473015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466173, 36.641926, 35.495121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228218, -0.972856, -0.038324,
		0.045104, -0.049885, 0.997736,
		-0.972565, 0.225973, 0.055265,
		26.174404, 36.709717, 35.511700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590773, 36.132607, 36.064793>,  <26.855200, 36.551537, 35.473015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590773, 36.132607, 36.064793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.296761, 36.233395, 35.813004>,  <26.120354, 36.293869, 35.661930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.296761, 36.233395, 35.813004>,  <26.590773, 36.132607, 36.064793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296761, 36.233395, 35.813004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216232, -0.967020, -0.134596,
		-0.642631, 0.037181, 0.765273,
		-0.735030, 0.251972, -0.629477,
		26.076252, 36.308987, 35.624161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258480, 36.433342, 36.078251>,  <26.590773, 36.132607, 36.064793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258480, 36.433342, 36.078251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.584520, 36.203201, 36.051189>,  <27.780146, 36.065117, 36.034954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.584520, 36.203201, 36.051189>,  <27.258480, 36.433342, 36.078251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584520, 36.203201, 36.051189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578397, 0.801659, 0.150992,
		-0.032638, -0.162205, 0.986217,
		0.815102, -0.575354, -0.067654,
		27.829050, 36.030594, 36.030891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739216, 36.549316, 36.668613>,  <27.258480, 36.433342, 36.078251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739216, 36.549316, 36.668613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972059, 36.376263, 36.393230>,  <28.111765, 36.272430, 36.228001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972059, 36.376263, 36.393230>,  <27.739216, 36.549316, 36.668613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972059, 36.376263, 36.393230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637724, 0.768191, 0.056479,
		0.504435, -0.471926, 0.723071,
		0.582111, -0.432630, -0.688461,
		28.146692, 36.246475, 36.186691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398243, 36.765839, 36.868847>,  <27.739216, 36.549316, 36.668613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398243, 36.765839, 36.868847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.436682, 36.677380, 36.480648>,  <28.459745, 36.624306, 36.247730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.436682, 36.677380, 36.480648>,  <28.398243, 36.765839, 36.868847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436682, 36.677380, 36.480648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591235, 0.797052, -0.123082,
		0.800753, -0.561962, 0.207345,
		0.096098, -0.221148, -0.970494,
		28.465511, 36.611034, 36.189499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053673, 36.900925, 36.683926>,  <28.398243, 36.765839, 36.868847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053673, 36.900925, 36.683926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866737, 36.895130, 36.330341>,  <28.754576, 36.891655, 36.118191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866737, 36.895130, 36.330341>,  <29.053673, 36.900925, 36.683926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866737, 36.895130, 36.330341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447395, 0.858509, -0.250600,
		0.762517, -0.512594, -0.394735,
		-0.467339, -0.014484, -0.883959,
		28.726536, 36.890785, 36.065155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562162, 37.080467, 36.115067>,  <29.053673, 36.900925, 36.683926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562162, 37.080467, 36.115067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215464, 37.157207, 35.930920>,  <29.007444, 37.203251, 35.820431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215464, 37.157207, 35.930920>,  <29.562162, 37.080467, 36.115067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215464, 37.157207, 35.930920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352312, 0.888872, -0.292887,
		0.353019, -0.416053, -0.838020,
		-0.866749, 0.191849, -0.460369,
		28.955439, 37.214764, 35.792809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709278, 37.257790, 35.385670>,  <29.562162, 37.080467, 36.115067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709278, 37.257790, 35.385670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338833, 37.401638, 35.431244>,  <29.116566, 37.487949, 35.458588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338833, 37.401638, 35.431244>,  <29.709278, 37.257790, 35.385670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338833, 37.401638, 35.431244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292338, 0.875056, -0.385766,
		-0.238432, -0.323956, -0.915534,
		-0.926115, 0.359625, 0.113936,
		29.060999, 37.509525, 35.465424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517853, 37.588997, 34.709923>,  <29.709278, 37.257790, 35.385670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517853, 37.588997, 34.709923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281933, 37.751102, 34.989323>,  <29.140381, 37.848366, 35.156963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281933, 37.751102, 34.989323>,  <29.517853, 37.588997, 34.709923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281933, 37.751102, 34.989323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220659, 0.912921, -0.343344,
		-0.776817, -0.048375, -0.627866,
		-0.589801, 0.405259, 0.698498,
		29.104992, 37.872681, 35.198872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106520, 38.160084, 34.357853>,  <29.517853, 37.588997, 34.709923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106520, 38.160084, 34.357853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.076036, 38.255070, 34.745213>,  <29.057747, 38.312061, 34.977631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.076036, 38.255070, 34.745213>,  <29.106520, 38.160084, 34.357853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076036, 38.255070, 34.745213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074599, 0.967147, -0.243027,
		-0.994297, -0.090763, -0.055990,
		-0.076208, 0.237464, 0.968402,
		29.053173, 38.326309, 35.035732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599314, 38.618919, 34.393425>,  <29.106520, 38.160084, 34.357853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599314, 38.618919, 34.393425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814526, 38.668915, 34.726868>,  <28.943653, 38.698914, 34.926933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814526, 38.668915, 34.726868>,  <28.599314, 38.618919, 34.393425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814526, 38.668915, 34.726868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207734, 0.938782, -0.274835,
		-0.816927, 0.321038, 0.479129,
		0.538030, 0.124989, 0.833607,
		28.975935, 38.706413, 34.976952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352600, 39.214451, 34.703358>,  <28.599314, 38.618919, 34.393425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352600, 39.214451, 34.703358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693630, 39.185448, 34.910378>,  <28.898249, 39.168045, 35.034592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693630, 39.185448, 34.910378>,  <28.352600, 39.214451, 34.703358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693630, 39.185448, 34.910378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153582, 0.981360, -0.115521,
		-0.499531, 0.177977, 0.847816,
		0.852573, -0.072503, 0.517554,
		28.949402, 39.163696, 35.065643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333435, 39.754868, 35.261730>,  <28.352600, 39.214451, 34.703358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333435, 39.754868, 35.261730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714926, 39.668221, 35.178318>,  <28.943821, 39.616234, 35.128273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714926, 39.668221, 35.178318>,  <28.333435, 39.754868, 35.261730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714926, 39.668221, 35.178318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215858, 0.976061, -0.026659,
		0.209309, -0.019587, 0.977653,
		0.953727, -0.216614, -0.208526,
		29.001043, 39.603237, 35.115761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707563, 40.396141, 35.471672>,  <28.333435, 39.754868, 35.261730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707563, 40.396141, 35.471672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.014088, 40.197803, 35.308254>,  <29.198002, 40.078800, 35.210201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.014088, 40.197803, 35.308254>,  <28.707563, 40.396141, 35.471672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014088, 40.197803, 35.308254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504702, 0.858078, -0.094752,
		0.397546, -0.133585, 0.907806,
		0.766311, -0.495840, -0.408546,
		29.243980, 40.049053, 35.185692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296730, 40.768955, 35.743713>,  <28.707563, 40.396141, 35.471672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296730, 40.768955, 35.743713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439417, 40.536827, 35.450871>,  <29.525028, 40.397549, 35.275166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439417, 40.536827, 35.450871>,  <29.296730, 40.768955, 35.743713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439417, 40.536827, 35.450871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598742, 0.743572, -0.297673,
		0.717120, -0.332159, 0.612707,
		0.356717, -0.580320, -0.732108,
		29.546432, 40.362732, 35.231239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126698, 40.691998, 35.737164>,  <29.296730, 40.768955, 35.743713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126698, 40.691998, 35.737164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.945959, 40.643761, 35.383602>,  <29.837515, 40.614819, 35.171463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.945959, 40.643761, 35.383602>,  <30.126698, 40.691998, 35.737164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945959, 40.643761, 35.383602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298374, 0.913328, -0.277137,
		0.840718, -0.388959, -0.376703,
		-0.451848, -0.120596, -0.883906,
		29.810404, 40.607582, 35.118431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580530, 41.007446, 35.263229>,  <30.126698, 40.691998, 35.737164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580530, 41.007446, 35.263229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.219694, 40.982128, 35.092476>,  <30.003193, 40.966938, 34.990025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.219694, 40.982128, 35.092476>,  <30.580530, 41.007446, 35.263229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219694, 40.982128, 35.092476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052851, 0.965535, -0.254850,
		0.428303, -0.252459, -0.867653,
		-0.902088, -0.063297, -0.426885,
		29.949068, 40.963139, 34.964409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699715, 41.133137, 34.539597>,  <30.580530, 41.007446, 35.263229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699715, 41.133137, 34.539597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.317041, 41.214691, 34.622723>,  <30.087437, 41.263622, 34.672600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.317041, 41.214691, 34.622723>,  <30.699715, 41.133137, 34.539597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317041, 41.214691, 34.622723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097387, 0.896825, -0.431533,
		-0.274356, -0.392603, -0.877834,
		-0.956684, 0.203883, 0.207815,
		30.030037, 41.275856, 34.685066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488937, 41.450043, 33.964012>,  <30.699715, 41.133137, 34.539597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488937, 41.450043, 33.964012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.228901, 41.550705, 34.250801>,  <30.072878, 41.611103, 34.422874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.228901, 41.550705, 34.250801>,  <30.488937, 41.450043, 33.964012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228901, 41.550705, 34.250801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104515, 0.904981, -0.412416,
		-0.752632, -0.343043, -0.562019,
		-0.650093, 0.251658, 0.716971,
		30.033873, 41.626202, 34.465893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960236, 41.762917, 33.600460>,  <30.488937, 41.450043, 33.964012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960236, 41.762917, 33.600460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946030, 41.904140, 33.974430>,  <29.937506, 41.988876, 34.198811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946030, 41.904140, 33.974430>,  <29.960236, 41.762917, 33.600460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946030, 41.904140, 33.974430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084665, 0.931090, -0.354830,
		-0.995776, -0.091758, -0.003177,
		-0.035517, 0.353062, 0.934926,
		29.935375, 42.010059, 34.254910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531599, 42.347584, 33.491299>,  <29.960236, 41.762917, 33.600460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531599, 42.347584, 33.491299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.703667, 42.397449, 33.848938>,  <29.806908, 42.427368, 34.063522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.703667, 42.397449, 33.848938>,  <29.531599, 42.347584, 33.491299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703667, 42.397449, 33.848938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107616, 0.990438, -0.086326,
		-0.896312, -0.059085, 0.439470,
		0.430167, 0.124669, 0.894100,
		29.832716, 42.434849, 34.117168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134533, 42.875458, 33.919449>,  <29.531599, 42.347584, 33.491299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134533, 42.875458, 33.919449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.476543, 42.847740, 34.125023>,  <29.681749, 42.831112, 34.248367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.476543, 42.847740, 34.125023>,  <29.134533, 42.875458, 33.919449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476543, 42.847740, 34.125023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079874, 0.961612, 0.262531,
		-0.512400, -0.265521, 0.816667,
		0.855024, -0.069290, 0.513938,
		29.733051, 42.826954, 34.279205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995070, 43.247395, 34.494366>,  <29.134533, 42.875458, 33.919449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995070, 43.247395, 34.494366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392735, 43.223488, 34.458427>,  <29.631332, 43.209145, 34.436863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392735, 43.223488, 34.458427>,  <28.995070, 43.247395, 34.494366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392735, 43.223488, 34.458427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073206, 0.985254, 0.154648,
		0.079277, -0.160322, 0.983876,
		0.994161, -0.059765, -0.089844,
		29.690983, 43.205559, 34.431473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230192, 43.675808, 35.085030>,  <28.995070, 43.247395, 34.494366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230192, 43.675808, 35.085030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506483, 43.652481, 34.796726>,  <29.672256, 43.638485, 34.623745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506483, 43.652481, 34.796726>,  <29.230192, 43.675808, 35.085030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506483, 43.652481, 34.796726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109399, 0.993697, 0.024441,
		0.714793, -0.095732, 0.692752,
		0.690726, -0.058316, -0.720761,
		29.713701, 43.634987, 34.580498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.534409, 33.819866, 49.000832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153416, 33.729431, 48.919178>,  <34.924820, 33.675171, 48.870186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153416, 33.729431, 48.919178>,  <35.534409, 33.819866, 49.000832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153416, 33.729431, 48.919178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277963, 0.371025, 0.886046,
		-0.124585, 0.900680, -0.416237,
		-0.952478, -0.226087, -0.204132,
		34.867672, 33.661606, 48.857937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202972, 34.423237, 48.940876>,  <35.534409, 33.819866, 49.000832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202972, 34.423237, 48.940876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.953514, 34.132294, 49.055435>,  <34.803841, 33.957729, 49.124172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.953514, 34.132294, 49.055435>,  <35.202972, 34.423237, 48.940876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953514, 34.132294, 49.055435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040037, 0.395612, 0.917544,
		-0.780684, 0.560753, -0.275842,
		-0.623643, -0.727356, 0.286397,
		34.766422, 33.914085, 49.141354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781078, 34.669312, 49.445736>,  <35.202972, 34.423237, 48.940876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781078, 34.669312, 49.445736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686192, 34.286499, 49.512451>,  <34.629257, 34.056812, 49.552479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686192, 34.286499, 49.512451>,  <34.781078, 34.669312, 49.445736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686192, 34.286499, 49.512451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074231, 0.189039, 0.979160,
		-0.968616, 0.219895, -0.115886,
		-0.237219, -0.957032, 0.166783,
		34.615025, 33.999390, 49.562485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118370, 34.587814, 49.852482>,  <34.781078, 34.669312, 49.445736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118370, 34.587814, 49.852482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294647, 34.233273, 49.909294>,  <34.400414, 34.020550, 49.943382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294647, 34.233273, 49.909294>,  <34.118370, 34.587814, 49.852482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294647, 34.233273, 49.909294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208484, 0.052836, 0.976598,
		-0.873113, -0.459989, -0.161506,
		0.440691, -0.886351, 0.142033,
		34.426853, 33.967369, 49.951904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726810, 34.279789, 50.302338>,  <34.118370, 34.587814, 49.852482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726810, 34.279789, 50.302338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078392, 34.093895, 50.345158>,  <34.289341, 33.982357, 50.370850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078392, 34.093895, 50.345158>,  <33.726810, 34.279789, 50.302338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078392, 34.093895, 50.345158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140007, -0.036881, 0.989463,
		-0.455894, -0.884679, -0.097484,
		0.878953, -0.464739, 0.107047,
		34.342079, 33.954472, 50.377274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613495, 33.895508, 50.791149>,  <33.726810, 34.279789, 50.302338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613495, 33.895508, 50.791149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013382, 33.886204, 50.793003>,  <34.253315, 33.880619, 50.794117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013382, 33.886204, 50.793003>,  <33.613495, 33.895508, 50.791149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013382, 33.886204, 50.793003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004406, 0.010050, 0.999940,
		-0.023315, -0.999679, 0.009944,
		0.999718, -0.023269, 0.004639,
		34.313297, 33.879227, 50.794395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731594, 33.394897, 51.268852>,  <33.613495, 33.895508, 50.791149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731594, 33.394897, 51.268852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070129, 33.605671, 51.237736>,  <34.273251, 33.732136, 51.219067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070129, 33.605671, 51.237736>,  <33.731594, 33.394897, 51.268852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070129, 33.605671, 51.237736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117773, -0.042690, 0.992123,
		0.519466, -0.848831, -0.098189,
		0.846336, 0.526938, -0.077793,
		34.324032, 33.763752, 51.214397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112034, 33.051315, 51.745846>,  <33.731594, 33.394897, 51.268852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112034, 33.051315, 51.745846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323509, 33.384300, 51.679512>,  <34.450394, 33.584091, 51.639713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323509, 33.384300, 51.679512>,  <34.112034, 33.051315, 51.745846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323509, 33.384300, 51.679512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152575, 0.098985, 0.983322,
		0.834992, -0.545171, -0.074680,
		0.528687, 0.832461, -0.165831,
		34.482117, 33.634037, 51.629765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920666, 33.004734, 52.028015>,  <34.112034, 33.051315, 51.745846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920666, 33.004734, 52.028015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806824, 33.388142, 52.021820>,  <34.738518, 33.618187, 52.018105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806824, 33.388142, 52.021820>,  <34.920666, 33.004734, 52.028015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806824, 33.388142, 52.021820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135032, 0.056078, 0.989253,
		0.949087, 0.279456, -0.145391,
		-0.284606, 0.958519, -0.015488,
		34.721443, 33.675697, 52.017174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516701, 33.409836, 52.334602>,  <34.920666, 33.004734, 52.028015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516701, 33.409836, 52.334602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200699, 33.654892, 52.344112>,  <35.011097, 33.801926, 52.349819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200699, 33.654892, 52.344112>,  <35.516701, 33.409836, 52.334602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200699, 33.654892, 52.344112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225208, 0.253902, 0.940646,
		0.570240, 0.748470, -0.338555,
		-0.790005, 0.612639, 0.023776,
		34.963696, 33.838684, 52.351246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661716, 34.180321, 52.581276>,  <35.516701, 33.409836, 52.334602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661716, 34.180321, 52.581276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288990, 34.070961, 52.676758>,  <35.065353, 34.005344, 52.734047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288990, 34.070961, 52.676758>,  <35.661716, 34.180321, 52.581276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288990, 34.070961, 52.676758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140004, 0.336016, 0.931393,
		-0.334850, 0.901302, -0.274827,
		-0.931812, -0.273400, 0.238701,
		35.009445, 33.988941, 52.748367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531693, 34.589302, 53.277512>,  <35.661716, 34.180321, 52.581276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531693, 34.589302, 53.277512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183575, 34.392803, 53.263279>,  <34.974705, 34.274906, 53.254742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183575, 34.392803, 53.263279>,  <35.531693, 34.589302, 53.277512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183575, 34.392803, 53.263279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212567, 0.309458, 0.926850,
		-0.444300, 0.814195, -0.373742,
		-0.870295, -0.491245, -0.035579,
		34.922485, 34.245430, 53.252605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146622, 35.168667, 53.508820>,  <35.531693, 34.589302, 53.277512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146622, 35.168667, 53.508820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982471, 34.813412, 53.591576>,  <34.883984, 34.600258, 53.641232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982471, 34.813412, 53.591576>,  <35.146622, 35.168667, 53.508820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982471, 34.813412, 53.591576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098825, 0.268852, 0.958098,
		-0.906547, 0.372731, -0.198100,
		-0.410373, -0.888138, 0.206892,
		34.859360, 34.546970, 53.653645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403671, 35.226231, 53.888481>,  <35.146622, 35.168667, 53.508820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403671, 35.226231, 53.888481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555767, 34.861275, 53.949108>,  <34.647022, 34.642303, 53.985485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555767, 34.861275, 53.949108>,  <34.403671, 35.226231, 53.888481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555767, 34.861275, 53.949108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239620, 0.061100, 0.968942,
		-0.893310, -0.404745, -0.195394,
		0.380236, -0.912386, 0.151566,
		34.669838, 34.587559, 53.994579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779423, 35.513535, 54.503456>,  <34.403671, 35.226231, 53.888481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779423, 35.513535, 54.503456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880798, 35.880226, 54.626987>,  <34.941624, 36.100243, 54.701107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880798, 35.880226, 54.626987>,  <34.779423, 35.513535, 54.503456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880798, 35.880226, 54.626987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405274, 0.390507, -0.826594,
		-0.878362, 0.084335, 0.470497,
		0.253443, 0.916729, 0.308827,
		34.956833, 36.155247, 54.719635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336376, 35.935204, 54.133514>,  <34.779423, 35.513535, 54.503456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336376, 35.935204, 54.133514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580463, 36.220535, 54.271385>,  <34.726913, 36.391735, 54.354107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580463, 36.220535, 54.271385>,  <34.336376, 35.935204, 54.133514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580463, 36.220535, 54.271385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174950, 0.545664, -0.819539,
		-0.772677, 0.439794, 0.457769,
		0.610216, 0.713325, 0.344680,
		34.763527, 36.434532, 54.374790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009392, 36.581631, 54.075520>,  <34.336376, 35.935204, 54.133514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009392, 36.581631, 54.075520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401951, 36.657890, 54.066471>,  <34.637486, 36.703648, 54.061043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401951, 36.657890, 54.066471>,  <34.009392, 36.581631, 54.075520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401951, 36.657890, 54.066471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103397, 0.425576, -0.898996,
		-0.161763, 0.884612, 0.437372,
		0.981398, 0.190648, -0.022624,
		34.696369, 36.715084, 54.059685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018917, 37.093407, 53.600124>,  <34.009392, 36.581631, 54.075520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018917, 37.093407, 53.600124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411213, 37.017536, 53.618752>,  <34.646591, 36.972012, 53.629929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411213, 37.017536, 53.618752>,  <34.018917, 37.093407, 53.600124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411213, 37.017536, 53.618752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103898, 0.304798, -0.946733,
		0.165382, 0.933338, 0.318635,
		0.980742, -0.189678, 0.046564,
		34.705437, 36.960632, 53.632721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405575, 37.682735, 53.395226>,  <34.018917, 37.093407, 53.600124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405575, 37.682735, 53.395226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649376, 37.369335, 53.346832>,  <34.795658, 37.181297, 53.317799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649376, 37.369335, 53.346832>,  <34.405575, 37.682735, 53.395226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649376, 37.369335, 53.346832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189604, 0.292236, -0.937362,
		0.769775, 0.548389, 0.326673,
		0.609505, -0.783497, -0.120980,
		34.832226, 37.134285, 53.310539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091640, 37.928535, 53.157127>,  <34.405575, 37.682735, 53.395226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091640, 37.928535, 53.157127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104729, 37.538719, 53.068405>,  <35.112583, 37.304829, 53.015171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104729, 37.538719, 53.068405>,  <35.091640, 37.928535, 53.157127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104729, 37.538719, 53.068405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321109, 0.220408, -0.921037,
		0.946477, -0.041083, 0.320147,
		0.032724, -0.974542, -0.221803,
		35.114548, 37.246357, 53.001865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741543, 37.912968, 52.867172>,  <35.091640, 37.928535, 53.157127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741543, 37.912968, 52.867172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547939, 37.585182, 52.744392>,  <35.431778, 37.388512, 52.670723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547939, 37.585182, 52.744392>,  <35.741543, 37.912968, 52.867172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547939, 37.585182, 52.744392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299727, 0.174313, -0.937965,
		0.822133, -0.545982, 0.161246,
		-0.484005, -0.819462, -0.306954,
		35.402737, 37.339344, 52.652306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160999, 37.562019, 52.378593>,  <35.741543, 37.912968, 52.867172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160999, 37.562019, 52.378593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800106, 37.406044, 52.304913>,  <35.583572, 37.312458, 52.260704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800106, 37.406044, 52.304913>,  <36.160999, 37.562019, 52.378593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800106, 37.406044, 52.304913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226498, -0.064983, -0.971842,
		0.366990, -0.918544, 0.146950,
		-0.902229, -0.389940, -0.184200,
		35.529438, 37.289062, 52.249653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266987, 37.053631, 51.876045>,  <36.160999, 37.562019, 52.378593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266987, 37.053631, 51.876045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875458, 37.124947, 51.835812>,  <35.640541, 37.167736, 51.811672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875458, 37.124947, 51.835812>,  <36.266987, 37.053631, 51.876045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875458, 37.124947, 51.835812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064056, -0.199933, -0.977713,
		-0.194378, -0.963461, 0.184284,
		-0.978833, 0.178242, -0.100578,
		35.581810, 37.178436, 51.805634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091164, 36.514908, 51.413826>,  <36.266987, 37.053631, 51.876045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091164, 36.514908, 51.413826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806995, 36.796326, 51.406532>,  <35.636494, 36.965176, 51.402157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806995, 36.796326, 51.406532>,  <36.091164, 36.514908, 51.413826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806995, 36.796326, 51.406532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295683, -0.321886, -0.899423,
		-0.638654, -0.633572, 0.436699,
		-0.710417, 0.703544, -0.018238,
		35.593872, 37.007389, 51.401062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494564, 36.180027, 51.158321>,  <36.091164, 36.514908, 51.413826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494564, 36.180027, 51.158321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424450, 36.569782, 51.101967>,  <35.382381, 36.803635, 51.068153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424450, 36.569782, 51.101967>,  <35.494564, 36.180027, 51.158321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424450, 36.569782, 51.101967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287969, -0.187584, -0.939088,
		-0.941462, -0.124034, 0.313473,
		-0.175281, 0.974386, -0.140886,
		35.371864, 36.862099, 51.059700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859180, 36.217258, 50.965897>,  <35.494564, 36.180027, 51.158321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859180, 36.217258, 50.965897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053776, 36.539104, 50.829704>,  <35.170532, 36.732212, 50.747990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053776, 36.539104, 50.829704>,  <34.859180, 36.217258, 50.965897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053776, 36.539104, 50.829704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313836, -0.202757, -0.927575,
		-0.815377, 0.558105, 0.153880,
		0.486484, 0.804617, -0.340477,
		35.199722, 36.780491, 50.727562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377258, 36.388947, 50.498188>,  <34.859180, 36.217258, 50.965897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377258, 36.388947, 50.498188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723896, 36.562012, 50.398727>,  <34.931877, 36.665852, 50.339050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723896, 36.562012, 50.398727>,  <34.377258, 36.388947, 50.498188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723896, 36.562012, 50.398727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108455, -0.323068, -0.940141,
		-0.487091, 0.841684, -0.233044,
		0.866591, 0.432659, -0.248649,
		34.983871, 36.691811, 50.324131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237743, 36.864090, 49.958935>,  <34.377258, 36.388947, 50.498188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237743, 36.864090, 49.958935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618484, 36.741844, 49.949387>,  <34.846931, 36.668495, 49.943657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618484, 36.741844, 49.949387>,  <34.237743, 36.864090, 49.958935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618484, 36.741844, 49.949387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136382, -0.352463, -0.925835,
		0.274535, 0.884517, -0.377174,
		0.951856, -0.305614, -0.023869,
		34.904041, 36.650162, 49.942226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615818, 37.331253, 49.664482>,  <34.237743, 36.864090, 49.958935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615818, 37.331253, 49.664482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252960, 37.244270, 49.520370>,  <33.035244, 37.192081, 49.433903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252960, 37.244270, 49.520370>,  <33.615818, 37.331253, 49.664482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252960, 37.244270, 49.520370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289974, -0.297420, 0.909646,
		-0.304962, 0.929653, 0.206746,
		-0.907146, -0.217456, -0.360277,
		32.980816, 37.179035, 49.412289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240456, 37.728954, 50.129879>,  <33.615818, 37.331253, 49.664482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240456, 37.728954, 50.129879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975067, 37.468426, 49.982594>,  <32.815834, 37.312107, 49.894222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975067, 37.468426, 49.982594>,  <33.240456, 37.728954, 50.129879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975067, 37.468426, 49.982594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383695, -0.126307, 0.914781,
		-0.642326, 0.748215, -0.166108,
		-0.663473, -0.651322, -0.368216,
		32.776024, 37.273029, 49.872128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584408, 37.811817, 50.509399>,  <33.240456, 37.728954, 50.129879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584408, 37.811817, 50.509399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503330, 37.460274, 50.336647>,  <32.454681, 37.249348, 50.232994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503330, 37.460274, 50.336647>,  <32.584408, 37.811817, 50.509399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503330, 37.460274, 50.336647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469752, -0.299708, 0.830367,
		-0.859213, 0.371189, -0.352096,
		-0.202697, -0.878859, -0.431880,
		32.442520, 37.196617, 50.207085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883648, 37.709755, 50.678734>,  <32.584408, 37.811817, 50.509399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883648, 37.709755, 50.678734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059818, 37.356335, 50.615028>,  <32.165520, 37.144283, 50.576805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059818, 37.356335, 50.615028>,  <31.883648, 37.709755, 50.678734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059818, 37.356335, 50.615028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204650, -0.271527, 0.940421,
		-0.874153, -0.381592, -0.300405,
		0.440426, -0.883550, -0.159263,
		32.191944, 37.091270, 50.567249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474325, 37.223778, 50.974190>,  <31.883648, 37.709755, 50.678734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474325, 37.223778, 50.974190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.805176, 37.002090, 50.936867>,  <32.003685, 36.869080, 50.914474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.805176, 37.002090, 50.936867>,  <31.474325, 37.223778, 50.974190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805176, 37.002090, 50.936867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234912, -0.491747, 0.838452,
		-0.510566, -0.671588, -0.536929,
		0.827127, -0.554216, -0.093305,
		32.053314, 36.835827, 50.908875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309362, 36.545708, 51.263424>,  <31.474325, 37.223778, 50.974190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309362, 36.545708, 51.263424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708883, 36.565178, 51.265335>,  <31.948597, 36.576859, 51.266479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708883, 36.565178, 51.265335>,  <31.309362, 36.545708, 51.263424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708883, 36.565178, 51.265335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016680, -0.430795, 0.902296,
		0.045973, -0.901137, -0.431091,
		0.998803, 0.048671, 0.004774,
		32.008526, 36.579781, 51.266766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496349, 35.862724, 51.542160>,  <31.309362, 36.545708, 51.263424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496349, 35.862724, 51.542160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790747, 36.128086, 51.596142>,  <31.967384, 36.287304, 51.628532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790747, 36.128086, 51.596142>,  <31.496349, 35.862724, 51.542160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790747, 36.128086, 51.596142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016071, -0.182174, 0.983135,
		0.676798, -0.725750, -0.123417,
		0.735994, 0.663400, 0.134958,
		32.011543, 36.327106, 51.636631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435640, 35.107681, 51.460922>,  <31.496349, 35.862724, 51.542160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435640, 35.107681, 51.460922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057661, 34.979309, 51.435368>,  <30.830873, 34.902287, 51.420036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057661, 34.979309, 51.435368>,  <31.435640, 35.107681, 51.460922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057661, 34.979309, 51.435368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151789, -0.256939, -0.954433,
		0.289888, -0.911586, 0.291507,
		-0.944947, -0.320927, -0.063885,
		30.774178, 34.883030, 51.416203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421907, 34.407223, 51.232948>,  <31.435640, 35.107681, 51.460922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421907, 34.407223, 51.232948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.059660, 34.533916, 51.120144>,  <30.842312, 34.609932, 51.052460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.059660, 34.533916, 51.120144>,  <31.421907, 34.407223, 51.232948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059660, 34.533916, 51.120144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138948, -0.406674, -0.902945,
		-0.400641, -0.856924, 0.324295,
		-0.905638, 0.316697, -0.281999,
		30.787973, 34.628937, 51.035542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180113, 33.892513, 50.892330>,  <31.421907, 34.407223, 51.232948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180113, 33.892513, 50.892330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.974808, 34.209454, 50.760429>,  <30.851625, 34.399620, 50.681290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.974808, 34.209454, 50.760429>,  <31.180113, 33.892513, 50.892330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974808, 34.209454, 50.760429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072391, -0.342886, -0.936584,
		-0.855174, -0.504583, 0.118631,
		-0.513261, 0.792354, -0.329754,
		30.820829, 34.447159, 50.661503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739780, 33.620857, 50.481289>,  <31.180113, 33.892513, 50.892330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739780, 33.620857, 50.481289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791101, 34.002155, 50.371849>,  <30.821894, 34.230934, 50.306183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791101, 34.002155, 50.371849>,  <30.739780, 33.620857, 50.481289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791101, 34.002155, 50.371849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073736, -0.265951, -0.961163,
		-0.988990, 0.143492, 0.036167,
		0.128301, 0.953247, -0.273603,
		30.829592, 34.288128, 50.289768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577526, 33.534069, 49.789112>,  <30.739780, 33.620857, 50.481289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577526, 33.534069, 49.789112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.700668, 33.914619, 49.793167>,  <30.774553, 34.142952, 49.795601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.700668, 33.914619, 49.793167>,  <30.577526, 33.534069, 49.789112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700668, 33.914619, 49.793167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091971, 0.040360, -0.994943,
		-0.946978, 0.305366, 0.099925,
		0.307855, 0.951379, 0.010135,
		30.793024, 34.200035, 49.796207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142097, 34.061031, 49.394653>,  <30.577526, 33.534069, 49.789112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142097, 34.061031, 49.394653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.508949, 34.219788, 49.409340>,  <30.729061, 34.315041, 49.418152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.508949, 34.219788, 49.409340>,  <30.142097, 34.061031, 49.394653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508949, 34.219788, 49.409340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004334, 0.102049, -0.994770,
		-0.398562, 0.912176, 0.095312,
		0.917131, 0.396890, 0.036719,
		30.784088, 34.338856, 49.420357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168934, 34.678841, 48.950047>,  <30.142097, 34.061031, 49.394653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168934, 34.678841, 48.950047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.554970, 34.608414, 49.027611>,  <30.786591, 34.566158, 49.074150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.554970, 34.608414, 49.027611>,  <30.168934, 34.678841, 48.950047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554970, 34.608414, 49.027611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227341, 0.195434, -0.954003,
		0.130076, 0.964782, 0.228640,
		0.965089, -0.176072, 0.193913,
		30.844496, 34.555592, 49.085785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.546492, 32.831776, 52.592407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.944757, 32.861526, 52.614731>,  <32.183716, 32.879379, 52.628124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.944757, 32.861526, 52.614731>,  <31.546492, 32.831776, 52.592407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944757, 32.861526, 52.614731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066807, -0.154665, -0.985706,
		-0.064686, 0.985163, -0.158964,
		0.995667, 0.074381, 0.055811,
		32.243458, 32.883842, 52.631474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693596, 33.139866, 51.991306>,  <31.546492, 32.831776, 52.592407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693596, 33.139866, 51.991306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042400, 32.974388, 52.095966>,  <32.251682, 32.875103, 52.158760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042400, 32.974388, 52.095966>,  <31.693596, 33.139866, 51.991306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042400, 32.974388, 52.095966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212924, -0.160728, -0.963758,
		0.440752, 0.896117, -0.052072,
		0.872010, -0.413691, 0.261646,
		32.304005, 32.850281, 52.174461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065647, 33.414818, 51.496128>,  <31.693596, 33.139866, 51.991306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065647, 33.414818, 51.496128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.281773, 33.108910, 51.636524>,  <32.411446, 32.925365, 51.720760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.281773, 33.108910, 51.636524>,  <32.065647, 33.414818, 51.496128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281773, 33.108910, 51.636524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019406, -0.405681, -0.913809,
		0.841242, 0.500552, -0.204352,
		0.540310, -0.764769, 0.350990,
		32.443867, 32.879478, 51.741821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750706, 33.425121, 51.035076>,  <32.065647, 33.414818, 51.496128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750706, 33.425121, 51.035076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.712540, 33.057026, 51.186897>,  <32.689640, 32.836170, 51.277988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.712540, 33.057026, 51.186897>,  <32.750706, 33.425121, 51.035076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712540, 33.057026, 51.186897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224359, -0.391359, -0.892469,
		0.969824, -0.000002, 0.243806,
		-0.095417, -0.920238, 0.379549,
		32.683914, 32.780956, 51.300762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277332, 33.022060, 50.784630>,  <32.750706, 33.425121, 51.035076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277332, 33.022060, 50.784630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964497, 32.788677, 50.872196>,  <32.776794, 32.648647, 50.924736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964497, 32.788677, 50.872196>,  <33.277332, 33.022060, 50.784630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964497, 32.788677, 50.872196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032568, -0.389076, -0.920630,
		0.622320, -0.712881, 0.323292,
		-0.782085, -0.583456, 0.218913,
		32.729870, 32.613640, 50.937870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453392, 32.412212, 50.588112>,  <33.277332, 33.022060, 50.784630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453392, 32.412212, 50.588112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.056404, 32.371754, 50.615719>,  <32.818211, 32.347477, 50.632282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.056404, 32.371754, 50.615719>,  <33.453392, 32.412212, 50.588112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056404, 32.371754, 50.615719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008712, -0.503901, -0.863718,
		0.122141, -0.857819, 0.499227,
		-0.992475, -0.101146, 0.069020,
		32.758663, 32.341412, 50.636425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338543, 31.738878, 50.355419>,  <33.453392, 32.412212, 50.588112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338543, 31.738878, 50.355419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.957817, 31.861185, 50.364845>,  <32.729382, 31.934568, 50.370502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.957817, 31.861185, 50.364845>,  <33.338543, 31.738878, 50.355419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957817, 31.861185, 50.364845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191738, -0.533368, -0.823866,
		-0.239341, -0.788686, 0.566295,
		-0.951815, 0.305765, 0.023565,
		32.672272, 31.952915, 50.371914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989693, 31.218649, 50.392601>,  <33.338543, 31.738878, 50.355419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989693, 31.218649, 50.392601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.775970, 31.500544, 50.205898>,  <32.647739, 31.669680, 50.093876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.775970, 31.500544, 50.205898>,  <32.989693, 31.218649, 50.392601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775970, 31.500544, 50.205898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076093, -0.590046, -0.803775,
		-0.841861, -0.393943, 0.368889,
		-0.534303, 0.704737, -0.466761,
		32.615681, 31.711966, 50.065868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439732, 30.837967, 49.971935>,  <32.989693, 31.218649, 50.392601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439732, 30.837967, 49.971935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.407593, 31.212103, 49.834129>,  <32.388309, 31.436584, 49.751446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.407593, 31.212103, 49.834129>,  <32.439732, 30.837967, 49.971935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407593, 31.212103, 49.834129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163812, -0.353320, -0.921049,
		-0.983214, -0.017568, 0.181608,
		-0.080347, 0.935338, -0.344511,
		32.383488, 31.492704, 49.730778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870781, 30.844639, 49.590073>,  <32.439732, 30.837967, 49.971935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870781, 30.844639, 49.590073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.067230, 31.165926, 49.455231>,  <32.185101, 31.358698, 49.374325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.067230, 31.165926, 49.455231>,  <31.870781, 30.844639, 49.590073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067230, 31.165926, 49.455231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170052, -0.291144, -0.941444,
		-0.854331, 0.519690, -0.006398,
		0.491122, 0.803217, -0.337108,
		32.214565, 31.406891, 49.354099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493082, 31.083509, 49.007458>,  <31.870781, 30.844639, 49.590073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493082, 31.083509, 49.007458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.856031, 31.246569, 48.966473>,  <32.073799, 31.344404, 48.941879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.856031, 31.246569, 48.966473>,  <31.493082, 31.083509, 49.007458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856031, 31.246569, 48.966473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003609, -0.251326, -0.967896,
		-0.420313, 0.877872, -0.229517,
		0.907372, 0.407647, -0.102467,
		32.128242, 31.368862, 48.935734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522163, 31.378086, 48.299896>,  <31.493082, 31.083509, 49.007458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522163, 31.378086, 48.299896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909954, 31.366549, 48.397289>,  <32.142628, 31.359627, 48.455723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909954, 31.366549, 48.397289>,  <31.522163, 31.378086, 48.299896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909954, 31.366549, 48.397289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229897, -0.238191, -0.943616,
		0.085211, 0.970790, -0.224290,
		0.969477, -0.028843, 0.243479,
		32.200798, 31.357895, 48.470333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359278, 32.133678, 48.030895>,  <31.522163, 31.378086, 48.299896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359278, 32.133678, 48.030895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.982038, 32.001030, 48.040653>,  <30.755695, 31.921442, 48.046509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.982038, 32.001030, 48.040653>,  <31.359278, 32.133678, 48.030895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982038, 32.001030, 48.040653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014548, 0.114442, 0.993324,
		-0.332194, 0.936447, -0.112754,
		-0.943099, -0.331617, 0.024393,
		30.699108, 31.901545, 48.047970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975803, 32.511711, 48.524872>,  <31.359278, 32.133678, 48.030895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975803, 32.511711, 48.524872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.711443, 32.216442, 48.470741>,  <30.552826, 32.039280, 48.438263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.711443, 32.216442, 48.470741>,  <30.975803, 32.511711, 48.524872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711443, 32.216442, 48.470741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359493, 0.153116, 0.920500,
		-0.658766, 0.657008, -0.366562,
		-0.660902, -0.738171, -0.135322,
		30.513172, 31.994991, 48.430145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356422, 32.796566, 48.671516>,  <30.975803, 32.511711, 48.524872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356422, 32.796566, 48.671516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.326065, 32.401123, 48.723503>,  <30.307850, 32.163857, 48.754696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.326065, 32.401123, 48.723503>,  <30.356422, 32.796566, 48.671516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326065, 32.401123, 48.723503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444966, 0.150223, 0.882858,
		-0.892326, 0.009174, -0.451299,
		-0.075895, -0.988609, 0.129966,
		30.303297, 32.104542, 48.762493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831247, 32.781353, 49.205109>,  <30.356422, 32.796566, 48.671516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831247, 32.781353, 49.205109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.943665, 32.400356, 49.158150>,  <30.011114, 32.171761, 49.129974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.943665, 32.400356, 49.158150>,  <29.831247, 32.781353, 49.205109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943665, 32.400356, 49.158150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483039, -0.246097, 0.840303,
		-0.829270, -0.179453, -0.529253,
		0.281042, -0.952488, -0.117398,
		30.027977, 32.114609, 49.122929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243223, 32.380089, 49.380207>,  <29.831247, 32.781353, 49.205109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243223, 32.380089, 49.380207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.570482, 32.154465, 49.424877>,  <29.766838, 32.019089, 49.451679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.570482, 32.154465, 49.424877>,  <29.243223, 32.380089, 49.380207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570482, 32.154465, 49.424877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257726, -0.186103, 0.948126,
		-0.514018, -0.804488, -0.297633,
		0.818146, -0.564062, 0.111677,
		29.815926, 31.985247, 49.458382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046392, 31.741936, 49.625835>,  <29.243223, 32.380089, 49.380207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046392, 31.741936, 49.625835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.425989, 31.796524, 49.739532>,  <29.653748, 31.829277, 49.807751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.425989, 31.796524, 49.739532>,  <29.046392, 31.741936, 49.625835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425989, 31.796524, 49.739532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245489, -0.245933, 0.937684,
		0.197873, -0.959631, -0.199885,
		0.948990, 0.136473, 0.284243,
		29.710686, 31.837465, 49.824806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218445, 31.196993, 50.069012>,  <29.046392, 31.741936, 49.625835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218445, 31.196993, 50.069012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.522495, 31.447762, 50.137337>,  <29.704926, 31.598223, 50.178333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.522495, 31.447762, 50.137337>,  <29.218445, 31.196993, 50.069012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522495, 31.447762, 50.137337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062524, -0.332229, 0.941124,
		0.646758, -0.704695, -0.291734,
		0.760128, 0.626920, 0.170812,
		29.750534, 31.635838, 50.188580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654448, 30.747896, 50.544693>,  <29.218445, 31.196993, 50.069012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654448, 30.747896, 50.544693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.740675, 31.135902, 50.589584>,  <29.792412, 31.368706, 50.616520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.740675, 31.135902, 50.589584>,  <29.654448, 30.747896, 50.544693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740675, 31.135902, 50.589584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065332, -0.100348, 0.992805,
		0.974300, -0.221351, 0.041741,
		0.215570, 0.970017, 0.112231,
		29.805346, 31.426908, 50.623253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041950, 30.797234, 51.138416>,  <29.654448, 30.747896, 50.544693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041950, 30.797234, 51.138416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.960604, 31.188118, 51.114075>,  <29.911797, 31.422647, 51.099472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.960604, 31.188118, 51.114075>,  <30.041950, 30.797234, 51.138416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960604, 31.188118, 51.114075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024782, 0.056991, 0.998067,
		0.978789, 0.204481, 0.012627,
		-0.203366, 0.977210, -0.060850,
		29.899593, 31.481281, 51.095821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454723, 31.188931, 51.643402>,  <30.041950, 30.797234, 51.138416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454723, 31.188931, 51.643402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.156467, 31.441448, 51.558094>,  <29.977512, 31.592958, 51.506908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.156467, 31.441448, 51.558094>,  <30.454723, 31.188931, 51.643402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156467, 31.441448, 51.558094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130414, 0.175610, 0.975783,
		0.653460, 0.755399, -0.048612,
		-0.745642, 0.631296, -0.213269,
		29.932775, 31.630836, 51.494114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618097, 31.782183, 51.981606>,  <30.454723, 31.188931, 51.643402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618097, 31.782183, 51.981606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.222099, 31.802242, 51.928844>,  <29.984501, 31.814278, 51.897186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.222099, 31.802242, 51.928844>,  <30.618097, 31.782183, 51.981606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222099, 31.802242, 51.928844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106420, 0.348556, 0.931227,
		0.092675, 0.935946, -0.339731,
		-0.989993, 0.050147, -0.131905,
		29.925102, 31.817286, 51.889275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457392, 32.418488, 52.334774>,  <30.618097, 31.782183, 51.981606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457392, 32.418488, 52.334774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.118387, 32.211590, 52.287151>,  <29.914984, 32.087452, 52.258575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.118387, 32.211590, 52.287151>,  <30.457392, 32.418488, 52.334774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118387, 32.211590, 52.287151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344038, 0.364533, 0.865305,
		-0.404176, 0.774319, -0.486900,
		-0.847513, -0.517248, -0.119060,
		29.864134, 32.056416, 52.251434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963625, 32.872536, 52.486702>,  <30.457392, 32.418488, 52.334774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963625, 32.872536, 52.486702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.817036, 32.503361, 52.533844>,  <29.729082, 32.281857, 52.562130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.817036, 32.503361, 52.533844>,  <29.963625, 32.872536, 52.486702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817036, 32.503361, 52.533844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309025, 0.240211, 0.920219,
		-0.877611, 0.300816, -0.373241,
		-0.366473, -0.922935, 0.117852,
		29.707094, 32.226479, 52.569199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451731, 32.986275, 52.957943>,  <29.963625, 32.872536, 52.486702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451731, 32.986275, 52.957943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.439819, 32.587196, 52.982304>,  <29.432673, 32.347748, 52.996922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.439819, 32.587196, 52.982304>,  <29.451731, 32.986275, 52.957943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439819, 32.587196, 52.982304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388422, 0.067690, 0.918992,
		-0.921000, 0.003710, -0.389544,
		-0.029778, -0.997699, 0.060901,
		29.430885, 32.287888, 53.000572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148626, 33.280598, 53.594036>,  <29.451731, 32.986275, 52.957943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148626, 33.280598, 53.594036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.266958, 33.642422, 53.716843>,  <29.337957, 33.859516, 53.790527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.266958, 33.642422, 53.716843>,  <29.148626, 33.280598, 53.594036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266958, 33.642422, 53.716843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216455, 0.376524, -0.900764,
		-0.930393, 0.200018, 0.307183,
		0.295831, 0.904556, 0.307021,
		29.355707, 33.913788, 53.808949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716154, 33.932407, 53.270554>,  <29.148626, 33.280598, 53.594036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716154, 33.932407, 53.270554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.086823, 34.042969, 53.372440>,  <29.309223, 34.109306, 53.433575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.086823, 34.042969, 53.372440>,  <28.716154, 33.932407, 53.270554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086823, 34.042969, 53.372440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078033, 0.521448, -0.849708,
		-0.367682, 0.807277, 0.461643,
		0.926672, 0.276399, 0.254721,
		29.364824, 34.125889, 53.448856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769575, 34.601589, 52.944080>,  <28.716154, 33.932407, 53.270554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769575, 34.601589, 52.944080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.148504, 34.497311, 53.018505>,  <29.375862, 34.434742, 53.063160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.148504, 34.497311, 53.018505>,  <28.769575, 34.601589, 52.944080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148504, 34.497311, 53.018505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286776, 0.431699, -0.855217,
		0.142629, 0.863523, 0.483719,
		0.947321, -0.260698, 0.186065,
		29.432701, 34.419102, 53.074326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183535, 35.155540, 52.569801>,  <28.769575, 34.601589, 52.944080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183535, 35.155540, 52.569801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.491650, 34.911964, 52.645527>,  <29.676519, 34.765820, 52.690964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.491650, 34.911964, 52.645527>,  <29.183535, 35.155540, 52.569801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491650, 34.911964, 52.645527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435741, 0.285855, -0.853473,
		0.465601, 0.739914, 0.485533,
		0.770289, -0.608945, 0.189316,
		29.722736, 34.729282, 52.702320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775679, 35.548367, 52.570511>,  <29.183535, 35.155540, 52.569801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775679, 35.548367, 52.570511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.916155, 35.178009, 52.514816>,  <30.000441, 34.955795, 52.481400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.916155, 35.178009, 52.514816>,  <29.775679, 35.548367, 52.570511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916155, 35.178009, 52.514816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525523, 0.318000, -0.789114,
		0.774914, 0.203955, 0.598256,
		0.351189, -0.925893, -0.139240,
		30.021511, 34.900242, 52.473045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467392, 35.553513, 52.451710>,  <29.775679, 35.548367, 52.570511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467392, 35.553513, 52.451710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.368736, 35.200562, 52.291420>,  <30.309544, 34.988792, 52.195248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.368736, 35.200562, 52.291420>,  <30.467392, 35.553513, 52.451710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368736, 35.200562, 52.291420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549188, 0.213431, -0.807985,
		0.798475, -0.419353, 0.431951,
		-0.246639, -0.882378, -0.400723,
		30.294744, 34.935848, 52.171204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137173, 35.328453, 52.179741>,  <30.467392, 35.553513, 52.451710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137173, 35.328453, 52.179741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.839613, 35.118229, 52.014626>,  <30.661077, 34.992096, 51.915554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.839613, 35.118229, 52.014626>,  <31.137173, 35.328453, 52.179741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839613, 35.118229, 52.014626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456590, 0.051340, -0.888195,
		0.487993, -0.849205, 0.201773,
		-0.743901, -0.525561, -0.412792,
		30.616444, 34.960560, 51.890789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932863, 35.549709, 52.141319>,  <31.137173, 35.328453, 52.179741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932863, 35.549709, 52.141319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.030334, 35.937294, 52.124660>,  <32.088818, 36.169846, 52.114666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.030334, 35.937294, 52.124660>,  <31.932863, 35.549709, 52.141319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030334, 35.937294, 52.124660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325509, -0.041260, 0.944638,
		0.913600, -0.243745, -0.325460,
		0.243679, 0.968961, -0.041646,
		32.103439, 36.227982, 52.112167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680595, 35.674103, 52.369839>,  <31.932863, 35.549709, 52.141319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680595, 35.674103, 52.369839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.525089, 36.040688, 52.407696>,  <32.431786, 36.260639, 52.430408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.525089, 36.040688, 52.407696>,  <32.680595, 35.674103, 52.369839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525089, 36.040688, 52.407696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296915, 0.027386, 0.954511,
		0.872182, 0.399184, -0.282758,
		-0.388769, 0.916462, 0.094638,
		32.408459, 36.315628, 52.436089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204872, 36.089436, 52.661896>,  <32.680595, 35.674103, 52.369839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204872, 36.089436, 52.661896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.853752, 36.250378, 52.765884>,  <32.643082, 36.346943, 52.828278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.853752, 36.250378, 52.765884>,  <33.204872, 36.089436, 52.661896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853752, 36.250378, 52.765884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286585, 0.006228, 0.958035,
		0.383848, 0.915464, -0.120775,
		-0.877798, 0.402352, 0.259968,
		32.590412, 36.371082, 52.843876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297424, 36.305038, 53.250965>,  <33.204872, 36.089436, 52.661896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297424, 36.305038, 53.250965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.904305, 36.378857, 53.253777>,  <32.668434, 36.423145, 53.255463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.904305, 36.378857, 53.253777>,  <33.297424, 36.305038, 53.250965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904305, 36.378857, 53.253777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040843, 0.180104, 0.982799,
		0.180104, 0.966181, -0.184543,
		-0.982799, 0.184543, 0.007024,
		32.609467, 36.434219, 53.255882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277210, 36.925114, 53.570858>,  <33.297424, 36.305038, 53.250965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277210, 36.925114, 53.570858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.920807, 36.749786, 53.618164>,  <32.706966, 36.644592, 53.646545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.920807, 36.749786, 53.618164>,  <33.277210, 36.925114, 53.570858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920807, 36.749786, 53.618164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105126, 0.054214, 0.992980,
		-0.441649, 0.897185, -0.002227,
		-0.891008, -0.438315, 0.118260,
		32.653503, 36.618294, 53.653641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919819, 37.307297, 54.078743>,  <33.277210, 36.925114, 53.570858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919819, 37.307297, 54.078743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.736740, 36.951843, 54.090427>,  <32.626892, 36.738571, 54.097439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.736740, 36.951843, 54.090427>,  <32.919819, 37.307297, 54.078743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736740, 36.951843, 54.090427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063284, 0.000212, 0.997996,
		-0.886855, 0.458624, 0.056139,
		-0.457693, -0.888630, 0.029211,
		32.599434, 36.685253, 54.099190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477535, 37.444355, 54.608120>,  <32.919819, 37.307297, 54.078743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477535, 37.444355, 54.608120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.525368, 37.047359, 54.597790>,  <32.554070, 36.809162, 54.591591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.525368, 37.047359, 54.597790>,  <32.477535, 37.444355, 54.608120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525368, 37.047359, 54.597790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173252, -0.004756, 0.984866,
		-0.977591, -0.122248, 0.171382,
		0.119583, -0.992488, -0.025829,
		32.561241, 36.749615, 54.590042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096210, 37.140175, 55.148685>,  <32.477535, 37.444355, 54.608120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096210, 37.140175, 55.148685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.336708, 36.828308, 55.078674>,  <32.481007, 36.641190, 55.036667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.336708, 36.828308, 55.078674>,  <32.096210, 37.140175, 55.148685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336708, 36.828308, 55.078674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111751, -0.134840, 0.984546,
		-0.791215, -0.611508, 0.006057,
		0.601241, -0.779664, -0.175024,
		32.517082, 36.594410, 55.026169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969856, 36.582668, 55.619389>,  <32.096210, 37.140175, 55.148685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969856, 36.582668, 55.619389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.344765, 36.501099, 55.506298>,  <32.569710, 36.452156, 55.438442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.344765, 36.501099, 55.506298>,  <31.969856, 36.582668, 55.619389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344765, 36.501099, 55.506298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280098, -0.042270, 0.959040,
		-0.207525, -0.978073, 0.017501,
		0.937272, -0.203927, -0.282728,
		32.625946, 36.439922, 55.421478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.272408, 34.626217, 39.282070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630772, 34.606258, 39.458645>,  <34.845791, 34.594284, 39.564590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630772, 34.606258, 39.458645>,  <34.272408, 34.626217, 39.282070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630772, 34.606258, 39.458645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393917, 0.370177, 0.841308,
		-0.205384, -0.927620, 0.311990,
		0.895906, -0.049893, 0.441434,
		34.899544, 34.591290, 39.591076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235126, 34.149406, 39.968678>,  <34.272408, 34.626217, 39.282070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235126, 34.149406, 39.968678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538227, 34.408218, 40.002541>,  <34.720089, 34.563507, 40.022858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538227, 34.408218, 40.002541>,  <34.235126, 34.149406, 39.968678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538227, 34.408218, 40.002541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320574, 0.256110, 0.911943,
		0.568372, -0.718165, 0.401488,
		0.757751, 0.647029, 0.084659,
		34.765553, 34.602325, 40.027939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488243, 34.089897, 40.679134>,  <34.235126, 34.149406, 39.968678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488243, 34.089897, 40.679134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625019, 34.449265, 40.568913>,  <34.707085, 34.664883, 40.502781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625019, 34.449265, 40.568913>,  <34.488243, 34.089897, 40.679134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625019, 34.449265, 40.568913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285357, 0.378652, 0.880451,
		0.895349, -0.222428, 0.385844,
		0.341938, 0.898415, -0.275554,
		34.727600, 34.718788, 40.486248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946621, 34.431126, 41.226551>,  <34.488243, 34.089897, 40.679134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946621, 34.431126, 41.226551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862617, 34.760437, 41.015610>,  <34.812214, 34.958023, 40.889046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862617, 34.760437, 41.015610>,  <34.946621, 34.431126, 41.226551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862617, 34.760437, 41.015610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240994, 0.479150, 0.844001,
		0.947533, 0.304337, 0.097780,
		-0.210010, 0.823282, -0.527354,
		34.799614, 35.007423, 40.857403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225220, 35.019760, 41.547215>,  <34.946621, 34.431126, 41.226551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225220, 35.019760, 41.547215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947105, 35.200504, 41.323643>,  <34.780235, 35.308952, 41.189499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947105, 35.200504, 41.323643>,  <35.225220, 35.019760, 41.547215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947105, 35.200504, 41.323643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356228, 0.458764, 0.814025,
		0.624244, 0.765084, -0.158005,
		-0.695285, 0.451864, -0.558926,
		34.738522, 35.336063, 41.155964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349434, 35.816589, 41.541309>,  <35.225220, 35.019760, 41.547215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349434, 35.816589, 41.541309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961002, 35.745102, 41.477985>,  <34.727943, 35.702209, 41.439991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961002, 35.745102, 41.477985>,  <35.349434, 35.816589, 41.541309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961002, 35.745102, 41.477985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238042, 0.673841, 0.699481,
		-0.018333, 0.716938, -0.696896,
		-0.971082, -0.178714, -0.158308,
		34.669678, 35.691486, 41.430492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050976, 36.483021, 41.638756>,  <35.349434, 35.816589, 41.541309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050976, 36.483021, 41.638756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729019, 36.246498, 41.658749>,  <34.535843, 36.104584, 41.670746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729019, 36.246498, 41.658749>,  <35.050976, 36.483021, 41.638756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729019, 36.246498, 41.658749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411103, 0.616368, 0.671629,
		-0.427946, 0.520044, -0.739200,
		-0.804895, -0.591308, 0.049980,
		34.487549, 36.069107, 41.673744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402020, 36.862076, 41.664745>,  <35.050976, 36.483021, 41.638756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402020, 36.862076, 41.664745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279045, 36.514233, 41.819283>,  <34.205261, 36.305527, 41.912003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279045, 36.514233, 41.819283>,  <34.402020, 36.862076, 41.664745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279045, 36.514233, 41.819283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427465, 0.488942, 0.760400,
		-0.850152, 0.068626, -0.522047,
		-0.307434, -0.869613, 0.386340,
		34.186813, 36.253349, 41.935184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787750, 36.996212, 41.994068>,  <34.402020, 36.862076, 41.664745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787750, 36.996212, 41.994068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935612, 36.665634, 42.163937>,  <34.024330, 36.467285, 42.265858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935612, 36.665634, 42.163937>,  <33.787750, 36.996212, 41.994068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935612, 36.665634, 42.163937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379247, 0.283040, 0.880943,
		-0.848250, -0.486697, -0.208801,
		0.369653, -0.826447, 0.424667,
		34.046509, 36.417702, 42.291336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293121, 36.842041, 42.412159>,  <33.787750, 36.996212, 41.994068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293121, 36.842041, 42.412159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579159, 36.605980, 42.562016>,  <33.750782, 36.464344, 42.651932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579159, 36.605980, 42.562016>,  <33.293121, 36.842041, 42.412159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579159, 36.605980, 42.562016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376486, 0.126426, 0.917755,
		-0.588985, -0.797327, -0.131780,
		0.715091, -0.590157, 0.374645,
		33.793686, 36.428932, 42.674408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972366, 36.392437, 42.877113>,  <33.293121, 36.842041, 42.412159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972366, 36.392437, 42.877113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352970, 36.370491, 42.998188>,  <33.581333, 36.357323, 43.070831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352970, 36.370491, 42.998188>,  <32.972366, 36.392437, 42.877113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352970, 36.370491, 42.998188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299574, 0.058224, 0.952295,
		-0.069874, -0.996794, 0.038963,
		0.951511, -0.054868, 0.302682,
		33.638424, 36.354031, 43.088993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950569, 36.049252, 43.498192>,  <32.972366, 36.392437, 42.877113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950569, 36.049252, 43.498192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311867, 36.220642, 43.507702>,  <33.528645, 36.323475, 43.513409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311867, 36.220642, 43.507702>,  <32.950569, 36.049252, 43.498192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311867, 36.220642, 43.507702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096625, 0.149088, 0.984092,
		0.418114, -0.891169, 0.176064,
		0.903241, 0.428475, 0.023773,
		33.582840, 36.349186, 43.514835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636215, 35.440895, 43.177311>,  <32.950569, 36.049252, 43.498192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636215, 35.440895, 43.177311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286663, 35.254322, 43.232121>,  <32.076931, 35.142380, 43.265007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286663, 35.254322, 43.232121>,  <32.636215, 35.440895, 43.177311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286663, 35.254322, 43.232121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128140, -0.050887, -0.990450,
		0.468950, -0.883092, -0.015300,
		-0.873880, -0.466431, 0.137023,
		32.024498, 35.114391, 43.273228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582706, 34.992020, 42.520336>,  <32.636215, 35.440895, 43.177311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582706, 34.992020, 42.520336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221779, 34.952404, 42.688148>,  <32.005222, 34.928635, 42.788834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221779, 34.952404, 42.688148>,  <32.582706, 34.992020, 42.520336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221779, 34.952404, 42.688148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402545, -0.154496, -0.902269,
		0.154175, -0.983017, 0.099537,
		-0.902323, -0.099039, 0.419528,
		31.951082, 34.922691, 42.814007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150364, 34.383743, 42.203133>,  <32.582706, 34.992020, 42.520336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150364, 34.383743, 42.203133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889303, 34.642029, 42.361679>,  <31.732668, 34.797001, 42.456806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889303, 34.642029, 42.361679>,  <32.150364, 34.383743, 42.203133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889303, 34.642029, 42.361679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475672, 0.057998, -0.877708,
		-0.589735, -0.761376, 0.269294,
		-0.652648, 0.645711, 0.396369,
		31.693508, 34.835743, 42.480591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462328, 34.157295, 41.965794>,  <32.150364, 34.383743, 42.203133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462328, 34.157295, 41.965794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458910, 34.549816, 42.042702>,  <31.456860, 34.785328, 42.088844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458910, 34.549816, 42.042702>,  <31.462328, 34.157295, 41.965794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458910, 34.549816, 42.042702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451964, 0.167723, -0.876127,
		-0.891995, -0.094386, 0.442081,
		-0.008547, 0.981305, 0.192267,
		31.456347, 34.844208, 42.100384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784719, 34.373478, 41.777847>,  <31.462328, 34.157295, 41.965794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784719, 34.373478, 41.777847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012688, 34.702095, 41.771408>,  <31.149469, 34.899265, 41.767544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012688, 34.702095, 41.771408>,  <30.784719, 34.373478, 41.777847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012688, 34.702095, 41.771408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233929, 0.143444, -0.961614,
		-0.787698, 0.551808, 0.273934,
		0.569920, 0.821543, -0.016093,
		31.183664, 34.948559, 41.766579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467258, 34.700600, 41.285435>,  <30.784719, 34.373478, 41.777847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467258, 34.700600, 41.285435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807915, 34.904606, 41.333755>,  <31.012308, 35.027012, 41.362747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807915, 34.904606, 41.333755>,  <30.467258, 34.700600, 41.285435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807915, 34.904606, 41.333755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070793, 0.340297, -0.937649,
		-0.519326, 0.789987, 0.325916,
		0.851639, 0.510018, 0.120800,
		31.063406, 35.057610, 41.369995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395950, 35.398716, 40.883717>,  <30.467258, 34.700600, 41.285435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395950, 35.398716, 40.883717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786539, 35.328995, 40.934498>,  <31.020893, 35.287163, 40.964966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786539, 35.328995, 40.934498>,  <30.395950, 35.398716, 40.883717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786539, 35.328995, 40.934498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158350, 0.180008, -0.970836,
		0.146369, 0.968099, 0.203374,
		0.976474, -0.174304, 0.126951,
		31.079481, 35.276703, 40.972584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746040, 36.028297, 40.594677>,  <30.395950, 35.398716, 40.883717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746040, 36.028297, 40.594677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969942, 35.696918, 40.602131>,  <31.104284, 35.498093, 40.606606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969942, 35.696918, 40.602131>,  <30.746040, 36.028297, 40.594677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969942, 35.696918, 40.602131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090128, 0.038506, -0.995185,
		0.823741, 0.558742, 0.096220,
		0.559757, -0.828447, 0.018639,
		31.137869, 35.448383, 40.607723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250366, 36.128681, 40.164066>,  <30.746040, 36.028297, 40.594677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250366, 36.128681, 40.164066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252150, 35.730793, 40.205070>,  <31.253220, 35.492062, 40.229675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252150, 35.730793, 40.205070>,  <31.250366, 36.128681, 40.164066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252150, 35.730793, 40.205070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063517, -0.102024, -0.992752,
		0.997971, 0.010940, 0.062727,
		0.004461, -0.994722, 0.102512,
		31.253489, 35.432377, 40.235825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624136, 36.003521, 39.562843>,  <31.250366, 36.128681, 40.164066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624136, 36.003521, 39.562843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467478, 35.651001, 39.668613>,  <31.373484, 35.439487, 39.732075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467478, 35.651001, 39.668613>,  <31.624136, 36.003521, 39.562843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467478, 35.651001, 39.668613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195144, -0.360406, -0.912155,
		0.899184, -0.305640, 0.313132,
		-0.391646, -0.881301, 0.264428,
		31.349983, 35.386612, 39.747940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058632, 35.474976, 39.280033>,  <31.624136, 36.003521, 39.562843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058632, 35.474976, 39.280033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718876, 35.271336, 39.335682>,  <31.515022, 35.149151, 39.369072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718876, 35.271336, 39.335682>,  <32.058632, 35.474976, 39.280033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718876, 35.271336, 39.335682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058129, -0.352240, -0.934103,
		0.524558, -0.785329, 0.328782,
		-0.849388, -0.509103, 0.139120,
		31.464060, 35.118607, 39.377419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235790, 34.714493, 39.110039>,  <32.058632, 35.474976, 39.280033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235790, 34.714493, 39.110039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851463, 34.816093, 39.065643>,  <31.620867, 34.877052, 39.039005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851463, 34.816093, 39.065643>,  <32.235790, 34.714493, 39.110039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851463, 34.816093, 39.065643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043940, -0.255773, -0.965738,
		-0.273700, -0.932768, 0.234588,
		-0.960811, 0.254015, -0.110991,
		31.563219, 34.892292, 39.032349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002312, 34.129055, 38.934616>,  <32.235790, 34.714493, 39.110039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002312, 34.129055, 38.934616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721680, 34.384167, 38.807484>,  <31.553299, 34.537235, 38.731205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721680, 34.384167, 38.807484>,  <32.002312, 34.129055, 38.934616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721680, 34.384167, 38.807484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006038, -0.440691, -0.897639,
		-0.712563, -0.631687, 0.305330,
		-0.701582, 0.637781, -0.317834,
		31.511206, 34.575500, 38.712135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699028, 33.645676, 38.600677>,  <32.002312, 34.129055, 38.934616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699028, 33.645676, 38.600677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584272, 34.002235, 38.460335>,  <31.515419, 34.216171, 38.376129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584272, 34.002235, 38.460335>,  <31.699028, 33.645676, 38.600677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584272, 34.002235, 38.460335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068403, -0.346256, -0.935643,
		-0.955518, -0.292428, 0.038364,
		-0.286891, 0.891400, -0.350857,
		31.498205, 34.269653, 38.355076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248936, 33.553963, 37.959755>,  <31.699028, 33.645676, 38.600677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248936, 33.553963, 37.959755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400587, 33.923794, 37.944698>,  <31.491577, 34.145691, 37.935665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400587, 33.923794, 37.944698>,  <31.248936, 33.553963, 37.959755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400587, 33.923794, 37.944698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297080, -0.160147, -0.941327,
		-0.876359, 0.345699, -0.335390,
		0.379127, 0.924578, -0.037646,
		31.514326, 34.201168, 37.933403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919031, 33.341179, 37.717911>,  <31.248936, 33.553963, 37.959755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919031, 33.341179, 37.717911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085926, 32.980793, 37.670292>,  <32.186062, 32.764561, 37.641720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085926, 32.980793, 37.670292>,  <31.919031, 33.341179, 37.717911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085926, 32.980793, 37.670292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763808, -0.418634, 0.491266,
		-0.492453, -0.114042, -0.862835,
		0.417237, -0.900966, -0.119051,
		32.211098, 32.710503, 37.634575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487780, 32.648884, 37.853329>,  <31.919031, 33.341179, 37.717911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487780, 32.648884, 37.853329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870132, 32.593319, 37.956863>,  <32.099545, 32.559982, 38.018982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870132, 32.593319, 37.956863>,  <31.487780, 32.648884, 37.853329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870132, 32.593319, 37.956863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285525, -0.232298, 0.929792,
		-0.069030, -0.962675, -0.261711,
		0.955882, -0.138908, 0.258833,
		32.156898, 32.551647, 38.034512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512304, 32.014484, 38.172195>,  <31.487780, 32.648884, 37.853329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512304, 32.014484, 38.172195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837336, 32.210945, 38.297722>,  <32.032356, 32.328823, 38.373039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837336, 32.210945, 38.297722>,  <31.512304, 32.014484, 38.172195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837336, 32.210945, 38.297722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305614, -0.099430, 0.946950,
		0.496303, -0.865379, 0.069309,
		0.812579, 0.491156, 0.313819,
		32.081108, 32.358292, 38.391869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788267, 31.528755, 38.531883>,  <31.512304, 32.014484, 38.172195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788267, 31.528755, 38.531883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950495, 31.863508, 38.678928>,  <32.047832, 32.064362, 38.767155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950495, 31.863508, 38.678928>,  <31.788267, 31.528755, 38.531883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950495, 31.863508, 38.678928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364474, -0.220759, 0.904668,
		0.838256, -0.500890, 0.215490,
		0.405567, 0.836884, 0.367614,
		32.072166, 32.114574, 38.789211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194630, 31.314508, 39.205860>,  <31.788267, 31.528755, 38.531883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194630, 31.314508, 39.205860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129597, 31.709076, 39.215214>,  <32.090576, 31.945816, 39.220825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129597, 31.709076, 39.215214>,  <32.194630, 31.314508, 39.205860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129597, 31.709076, 39.215214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209057, -0.057599, 0.976206,
		0.964294, 0.153825, 0.215582,
		-0.162582, 0.986418, 0.023384,
		32.080822, 32.005001, 39.222229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674500, 31.568672, 39.689926>,  <32.194630, 31.314508, 39.205860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674500, 31.568672, 39.689926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360245, 31.813292, 39.652431>,  <32.171692, 31.960064, 39.629936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360245, 31.813292, 39.652431>,  <32.674500, 31.568672, 39.689926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360245, 31.813292, 39.652431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272979, -0.206673, 0.939558,
		0.555214, 0.763736, 0.329309,
		-0.785634, 0.611550, -0.093736,
		32.124554, 31.996758, 39.624310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817570, 31.933588, 40.236259>,  <32.674500, 31.568672, 39.689926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817570, 31.933588, 40.236259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439667, 31.982035, 40.114429>,  <32.212925, 32.011105, 40.041332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439667, 31.982035, 40.114429>,  <32.817570, 31.933588, 40.236259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439667, 31.982035, 40.114429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308456, -0.014273, 0.951132,
		0.110851, 0.992536, 0.050843,
		-0.944758, 0.121117, -0.304571,
		32.156239, 32.018372, 40.023060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537296, 32.529106, 40.625816>,  <32.817570, 31.933588, 40.236259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537296, 32.529106, 40.625816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193157, 32.390842, 40.475983>,  <31.986673, 32.307884, 40.386082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193157, 32.390842, 40.475983>,  <32.537296, 32.529106, 40.625816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193157, 32.390842, 40.475983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461436, 0.216040, 0.860467,
		-0.216500, 0.913153, -0.345369,
		-0.860352, -0.345657, -0.374589,
		31.935051, 32.287144, 40.363605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085308, 33.022335, 40.868176>,  <32.537296, 32.529106, 40.625816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085308, 33.022335, 40.868176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902214, 32.676487, 40.785313>,  <31.792356, 32.468979, 40.735596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902214, 32.676487, 40.785313>,  <32.085308, 33.022335, 40.868176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902214, 32.676487, 40.785313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562057, 0.100869, 0.820924,
		-0.688889, 0.492203, -0.532136,
		-0.457737, -0.864617, -0.207159,
		31.764893, 32.417103, 40.723164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399061, 33.228622, 41.030956>,  <32.085308, 33.022335, 40.868176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399061, 33.228622, 41.030956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449020, 32.832043, 41.046093>,  <31.478996, 32.594093, 41.055176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449020, 32.832043, 41.046093>,  <31.399061, 33.228622, 41.030956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449020, 32.832043, 41.046093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452035, -0.022913, 0.891706,
		-0.883213, -0.128476, -0.451031,
		0.124897, -0.991448, 0.037839,
		31.486490, 32.534607, 41.057446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698090, 32.867950, 41.169762>,  <31.399061, 33.228622, 41.030956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698090, 32.867950, 41.169762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977301, 32.620743, 41.314434>,  <31.144827, 32.472420, 41.401237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977301, 32.620743, 41.314434>,  <30.698090, 32.867950, 41.169762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977301, 32.620743, 41.314434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397769, 0.085340, 0.913508,
		-0.595432, -0.781517, -0.186259,
		0.698027, -0.618020, 0.361677,
		31.186708, 32.435337, 41.422935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372702, 32.587379, 41.732613>,  <30.698090, 32.867950, 41.169762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372702, 32.587379, 41.732613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760870, 32.508652, 41.788532>,  <30.993771, 32.461414, 41.822086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760870, 32.508652, 41.788532>,  <30.372702, 32.587379, 41.732613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760870, 32.508652, 41.788532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147216, -0.023475, 0.988826,
		-0.191337, -0.980159, -0.051756,
		0.970421, -0.196818, 0.139804,
		31.051996, 32.449608, 41.830475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313698, 32.018326, 42.140263>,  <30.372702, 32.587379, 41.732613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313698, 32.018326, 42.140263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680872, 32.165913, 42.198593>,  <30.901176, 32.254463, 42.233593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680872, 32.165913, 42.198593>,  <30.313698, 32.018326, 42.140263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680872, 32.165913, 42.198593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040415, -0.278689, 0.959531,
		0.394671, -0.886679, -0.240906,
		0.917933, 0.368963, 0.145826,
		30.956251, 32.276600, 42.242340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798553, 31.486353, 42.383625>,  <30.313698, 32.018326, 42.140263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798553, 31.486353, 42.383625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918129, 31.852713, 42.490780>,  <30.989874, 32.072529, 42.555073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918129, 31.852713, 42.490780>,  <30.798553, 31.486353, 42.383625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918129, 31.852713, 42.490780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085916, -0.305415, 0.948335,
		0.950397, -0.260478, -0.169991,
		0.298939, 0.915900, 0.267886,
		31.007811, 32.127483, 42.571144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297716, 31.390947, 43.007908>,  <30.798553, 31.486353, 42.383625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297716, 31.390947, 43.007908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216518, 31.782600, 43.011799>,  <31.167801, 32.017593, 43.014133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216518, 31.782600, 43.011799>,  <31.297716, 31.390947, 43.007908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216518, 31.782600, 43.011799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094303, -0.029441, 0.995108,
		0.974629, 0.201082, 0.098311,
		-0.202993, 0.979132, 0.009731,
		31.155621, 32.076340, 43.014717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759283, 31.649708, 43.522129>,  <31.297716, 31.390947, 43.007908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759283, 31.649708, 43.522129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483000, 31.932051, 43.459282>,  <31.317230, 32.101456, 43.421574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483000, 31.932051, 43.459282>,  <31.759283, 31.649708, 43.522129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483000, 31.932051, 43.459282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019372, 0.235261, 0.971739,
		0.722874, 0.668144, -0.176171,
		-0.690708, 0.705858, -0.157120,
		31.275787, 32.143806, 43.412148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009533, 32.356876, 43.863663>,  <31.759283, 31.649708, 43.522129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009533, 32.356876, 43.863663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611189, 32.329849, 43.839329>,  <31.372183, 32.313633, 43.824730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611189, 32.329849, 43.839329>,  <32.009533, 32.356876, 43.863663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611189, 32.329849, 43.839329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061215, 0.003603, 0.998118,
		-0.067221, 0.997708, -0.007724,
		-0.995858, -0.067567, -0.060833,
		31.312431, 32.309578, 43.821079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833719, 32.531548, 44.509960>,  <32.009533, 32.356876, 43.863663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833719, 32.531548, 44.509960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474098, 32.440746, 44.360199>,  <31.258326, 32.386265, 44.270344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474098, 32.440746, 44.360199>,  <31.833719, 32.531548, 44.509960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474098, 32.440746, 44.360199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375185, -0.041382, 0.926026,
		-0.225706, 0.973014, -0.047965,
		-0.899051, -0.227005, -0.374400,
		31.204382, 32.372646, 44.247879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355238, 32.999729, 44.899055>,  <31.833719, 32.531548, 44.509960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355238, 32.999729, 44.899055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184166, 32.669987, 44.750721>,  <31.081522, 32.472141, 44.661720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184166, 32.669987, 44.750721>,  <31.355238, 32.999729, 44.899055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184166, 32.669987, 44.750721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343987, -0.230959, 0.910127,
		-0.835920, 0.516807, -0.184792,
		-0.427680, -0.824359, -0.370839,
		31.055862, 32.422680, 44.639469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677483, 32.981323, 45.189487>,  <31.355238, 32.999729, 44.899055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677483, 32.981323, 45.189487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745253, 32.603909, 45.075626>,  <30.785915, 32.377460, 45.007309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745253, 32.603909, 45.075626>,  <30.677483, 32.981323, 45.189487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745253, 32.603909, 45.075626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251186, -0.320635, 0.913290,
		-0.952995, -0.083233, -0.291328,
		0.169426, -0.943539, -0.284657,
		30.796080, 32.320847, 44.990231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058149, 32.687073, 45.357830>,  <30.677483, 32.981323, 45.189487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058149, 32.687073, 45.357830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338266, 32.402191, 45.338409>,  <30.506336, 32.231262, 45.326759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338266, 32.402191, 45.338409>,  <30.058149, 32.687073, 45.357830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338266, 32.402191, 45.338409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380718, -0.430149, 0.818551,
		-0.603859, -0.554741, -0.572378,
		0.700292, -0.712204, -0.048550,
		30.548353, 32.188530, 45.323845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714117, 32.048954, 45.526245>,  <30.058149, 32.687073, 45.357830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714117, 32.048954, 45.526245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101141, 31.974623, 45.594707>,  <30.333355, 31.930025, 45.635784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101141, 31.974623, 45.594707>,  <29.714117, 32.048954, 45.526245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101141, 31.974623, 45.594707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244169, -0.513876, 0.822383,
		-0.064864, -0.837497, -0.542579,
		0.967561, -0.185824, 0.171159,
		30.391409, 31.918875, 45.646053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805080, 31.340364, 45.793728>,  <29.714117, 32.048954, 45.526245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805080, 31.340364, 45.793728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132412, 31.532022, 45.920696>,  <30.328812, 31.647017, 45.996876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132412, 31.532022, 45.920696>,  <29.805080, 31.340364, 45.793728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132412, 31.532022, 45.920696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059885, -0.478192, 0.876211,
		0.571619, -0.736040, -0.362626,
		0.818331, 0.479143, 0.317421,
		30.377911, 31.675766, 46.015923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085918, 30.923330, 46.286911>,  <29.805080, 31.340364, 45.793728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085918, 30.923330, 46.286911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284372, 31.265419, 46.346844>,  <30.403444, 31.470673, 46.382801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284372, 31.265419, 46.346844>,  <30.085918, 30.923330, 46.286911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284372, 31.265419, 46.346844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089002, -0.121562, 0.988585,
		0.863672, -0.503806, 0.015805,
		0.496135, 0.855220, 0.149830,
		30.433212, 31.521984, 46.391792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276352, 30.878576, 46.905727>,  <30.085918, 30.923330, 46.286911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276352, 30.878576, 46.905727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373026, 31.264452, 46.863838>,  <30.431030, 31.495977, 46.838703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373026, 31.264452, 46.863838>,  <30.276352, 30.878576, 46.905727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373026, 31.264452, 46.863838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058459, 0.093255, 0.993925,
		0.968593, -0.246337, -0.033857,
		0.241683, 0.964688, -0.104726,
		30.445530, 31.553858, 46.832420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841784, 30.953032, 47.201885>,  <30.276352, 30.878576, 46.905727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841784, 30.953032, 47.201885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671633, 31.315001, 47.207081>,  <30.569542, 31.532183, 47.210197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671633, 31.315001, 47.207081>,  <30.841784, 30.953032, 47.201885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671633, 31.315001, 47.207081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061867, 0.014760, 0.997975,
		0.902900, 0.425318, -0.062263,
		-0.425376, 0.904924, 0.012986,
		30.544020, 31.586477, 47.210976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287622, 31.469152, 47.619324>,  <30.841784, 30.953032, 47.201885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287622, 31.469152, 47.619324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900280, 31.568945, 47.622147>,  <30.667875, 31.628820, 47.623840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900280, 31.568945, 47.622147>,  <31.287622, 31.469152, 47.619324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900280, 31.568945, 47.622147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008451, 0.004500, 0.999954,
		0.249438, 0.968369, -0.006466,
		-0.968354, 0.249481, 0.007061,
		30.609774, 31.643789, 47.624264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975998, 31.613005, 47.590199>,  <31.287622, 31.469152, 47.619324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975998, 31.613005, 47.590199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223110, 31.451334, 47.860008>,  <32.371376, 31.354332, 48.021896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223110, 31.451334, 47.860008>,  <31.975998, 31.613005, 47.590199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223110, 31.451334, 47.860008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668183, -0.182431, -0.721284,
		0.414582, 0.896303, 0.157363,
		0.617781, -0.404179, 0.674526,
		32.408443, 31.330080, 48.062366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530025, 31.956533, 47.568119>,  <31.975998, 31.613005, 47.590199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530025, 31.956533, 47.568119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631031, 31.591393, 47.696453>,  <32.691635, 31.372309, 47.773453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631031, 31.591393, 47.696453>,  <32.530025, 31.956533, 47.568119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631031, 31.591393, 47.696453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670814, -0.073800, -0.737945,
		0.697312, 0.401565, 0.593718,
		0.252516, -0.912852, 0.320837,
		32.706787, 31.317537, 47.792706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300495, 31.919479, 47.653564>,  <32.530025, 31.956533, 47.568119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300495, 31.919479, 47.653564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167408, 31.546255, 47.598873>,  <33.087555, 31.322321, 47.566059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167408, 31.546255, 47.598873>,  <33.300495, 31.919479, 47.653564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167408, 31.546255, 47.598873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578647, -0.087511, -0.810870,
		0.744627, -0.348907, 0.569030,
		-0.332715, -0.933063, -0.136731,
		33.067593, 31.266336, 47.557854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832626, 31.398943, 47.597183>,  <33.300495, 31.919479, 47.653564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832626, 31.398943, 47.597183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536774, 31.202166, 47.413467>,  <33.359264, 31.084099, 47.303238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536774, 31.202166, 47.413467>,  <33.832626, 31.398943, 47.597183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536774, 31.202166, 47.413467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537535, -0.021160, -0.842976,
		0.404978, -0.870370, 0.280087,
		-0.739627, -0.491944, -0.459285,
		33.314884, 31.054583, 47.275681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075512, 30.824253, 47.167255>,  <33.832626, 31.398943, 47.597183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075512, 30.824253, 47.167255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711952, 30.851543, 47.002697>,  <33.493816, 30.867918, 46.903961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711952, 30.851543, 47.002697>,  <34.075512, 30.824253, 47.167255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711952, 30.851543, 47.002697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399566, -0.139869, -0.905971,
		-0.119341, -0.987818, 0.099871,
		-0.908903, 0.068215, -0.411391,
		33.439281, 30.872011, 46.879280>
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
