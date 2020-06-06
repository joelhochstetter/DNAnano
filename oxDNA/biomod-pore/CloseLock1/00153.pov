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
	<24.392992, 35.265755, 35.266857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351732, 35.009438, 34.962555>,  <24.326977, 34.855648, 34.779972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351732, 35.009438, 34.962555>,  <24.392992, 35.265755, 35.266857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351732, 35.009438, 34.962555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465244, 0.644930, -0.606311,
		0.879152, -0.416476, 0.231600,
		-0.103148, -0.640790, -0.760755,
		24.320787, 34.817200, 34.734329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066069, 35.285393, 34.937572>,  <24.392992, 35.265755, 35.266857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066069, 35.285393, 34.937572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732304, 35.191040, 34.738327>,  <24.532043, 35.134430, 34.618782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732304, 35.191040, 34.738327>,  <25.066069, 35.285393, 34.937572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732304, 35.191040, 34.738327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209186, 0.700612, -0.682190,
		0.509895, -0.673427, -0.535259,
		-0.834415, -0.235877, -0.498110,
		24.481979, 35.120277, 34.588894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.193125, 35.147305, 34.206417>,  <25.066069, 35.285393, 34.937572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.193125, 35.147305, 34.206417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811207, 35.266193, 34.204475>,  <24.582056, 35.337524, 34.203308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811207, 35.266193, 34.204475>,  <25.193125, 35.147305, 34.206417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.811207, 35.266193, 34.204475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180555, 0.566890, -0.803763,
		-0.236141, -0.768307, -0.594930,
		-0.954797, 0.297219, -0.004856,
		24.524767, 35.355358, 34.203018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124384, 34.806438, 33.512581>,  <25.193125, 35.147305, 34.206417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124384, 34.806438, 33.512581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954609, 35.139587, 33.654667>,  <24.852743, 35.339478, 33.739918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954609, 35.139587, 33.654667>,  <25.124384, 34.806438, 33.512581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954609, 35.139587, 33.654667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405282, 0.525564, -0.748016,
		-0.809690, -0.173523, -0.560617,
		-0.424439, 0.832870, 0.355218,
		24.827278, 35.389450, 33.761234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654346, 35.173275, 33.034096>,  <25.124384, 34.806438, 33.512581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654346, 35.173275, 33.034096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810720, 35.458920, 33.266376>,  <24.904545, 35.630306, 33.405746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810720, 35.458920, 33.266376>,  <24.654346, 35.173275, 33.034096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810720, 35.458920, 33.266376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383721, 0.447024, -0.808039,
		-0.836618, 0.538718, -0.099262,
		0.390933, 0.714109, 0.580706,
		24.927999, 35.673153, 33.440590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.402765, 35.834858, 32.749733>,  <24.654346, 35.173275, 33.034096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.402765, 35.834858, 32.749733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720865, 35.975098, 32.947582>,  <24.911726, 36.059242, 33.066292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720865, 35.975098, 32.947582>,  <24.402765, 35.834858, 32.749733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.720865, 35.975098, 32.947582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199278, 0.619346, -0.759407,
		-0.572595, 0.702487, 0.422668,
		0.795251, 0.350604, 0.494624,
		24.959440, 36.080280, 33.095970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.346807, 36.614040, 32.785442>,  <24.402765, 35.834858, 32.749733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.346807, 36.614040, 32.785442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719351, 36.468399, 32.785015>,  <24.942877, 36.381012, 32.784760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719351, 36.468399, 32.785015>,  <24.346807, 36.614040, 32.785442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719351, 36.468399, 32.785015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181742, 0.467428, -0.865148,
		0.315505, 0.805567, 0.501516,
		0.931357, -0.364105, -0.001070,
		24.998758, 36.359169, 32.784695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707428, 37.205067, 32.721779>,  <24.346807, 36.614040, 32.785442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707428, 37.205067, 32.721779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936966, 36.907303, 32.585217>,  <25.074690, 36.728645, 32.503277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936966, 36.907303, 32.585217>,  <24.707428, 37.205067, 32.721779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936966, 36.907303, 32.585217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128653, 0.493644, -0.860096,
		0.808794, 0.449640, 0.379046,
		0.573847, -0.744406, -0.341409,
		25.109119, 36.683983, 32.482796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246853, 37.529263, 32.406178>,  <24.707428, 37.205067, 32.721779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246853, 37.529263, 32.406178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284687, 37.163269, 32.249279>,  <25.307388, 36.943672, 32.155140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284687, 37.163269, 32.249279>,  <25.246853, 37.529263, 32.406178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284687, 37.163269, 32.249279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286054, 0.402372, -0.869637,
		0.953534, -0.029947, 0.299794,
		0.094585, -0.914986, -0.392242,
		25.313063, 36.888775, 32.131607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930189, 37.444580, 32.275410>,  <25.246853, 37.529263, 32.406178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930189, 37.444580, 32.275410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732908, 37.193523, 32.034473>,  <25.614540, 37.042889, 31.889910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732908, 37.193523, 32.034473>,  <25.930189, 37.444580, 32.275410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732908, 37.193523, 32.034473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282036, 0.539649, -0.793243,
		0.822926, -0.561112, -0.089139,
		-0.493202, -0.627640, -0.602345,
		25.584948, 37.005230, 31.853769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381243, 37.272778, 31.776777>,  <25.930189, 37.444580, 32.275410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381243, 37.272778, 31.776777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054989, 37.134171, 31.591448>,  <25.859238, 37.051006, 31.480249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054989, 37.134171, 31.591448>,  <26.381243, 37.272778, 31.776777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054989, 37.134171, 31.591448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173409, 0.617583, -0.767151,
		0.551968, -0.706060, -0.443633,
		-0.815635, -0.346513, -0.463323,
		25.810299, 37.030216, 31.452450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537870, 36.920219, 31.164522>,  <26.381243, 37.272778, 31.776777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537870, 36.920219, 31.164522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161957, 37.054600, 31.139400>,  <25.936409, 37.135227, 31.124327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161957, 37.054600, 31.139400>,  <26.537870, 36.920219, 31.164522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161957, 37.054600, 31.139400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245730, 0.536473, -0.807349,
		-0.237538, -0.774166, -0.586722,
		-0.939783, 0.335951, -0.062804,
		25.880022, 37.155384, 31.120560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580456, 36.924446, 30.513348>,  <26.537870, 36.920219, 31.164522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580456, 36.924446, 30.513348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246719, 37.124542, 30.605986>,  <26.046478, 37.244598, 30.661568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246719, 37.124542, 30.605986>,  <26.580456, 36.924446, 30.513348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246719, 37.124542, 30.605986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078080, 0.523133, -0.848667,
		-0.545692, -0.689994, -0.475530,
		-0.834340, 0.500240, 0.231594,
		25.996418, 37.274612, 30.675465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269733, 37.027893, 29.861889>,  <26.580456, 36.924446, 30.513348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269733, 37.027893, 29.861889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094126, 37.302620, 30.093596>,  <25.988762, 37.467453, 30.232620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094126, 37.302620, 30.093596>,  <26.269733, 37.027893, 29.861889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094126, 37.302620, 30.093596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108645, 0.680571, -0.724582,
		-0.891885, -0.255170, -0.373402,
		-0.439018, 0.686812, 0.579268,
		25.962420, 37.508663, 30.267376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.640587, 37.494270, 29.530830>,  <26.269733, 37.027893, 29.861889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.640587, 37.494270, 29.530830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789827, 37.752785, 29.797098>,  <25.879372, 37.907894, 29.956858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789827, 37.752785, 29.797098>,  <25.640587, 37.494270, 29.530830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789827, 37.752785, 29.797098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177708, 0.654412, -0.734959,
		-0.910613, 0.392508, 0.129311,
		0.373100, 0.646284, 0.665668,
		25.901758, 37.946671, 29.996798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484797, 38.222759, 29.221817>,  <25.640587, 37.494270, 29.530830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484797, 38.222759, 29.221817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726965, 38.299606, 29.530766>,  <25.872265, 38.345715, 29.716135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726965, 38.299606, 29.530766>,  <25.484797, 38.222759, 29.221817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726965, 38.299606, 29.530766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424814, 0.742635, -0.517713,
		-0.673052, 0.641548, 0.367990,
		0.605420, 0.192121, 0.772371,
		25.908590, 38.357243, 29.762476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398642, 38.926113, 29.391846>,  <25.484797, 38.222759, 29.221817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398642, 38.926113, 29.391846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759581, 38.818790, 29.526770>,  <25.976145, 38.754398, 29.607725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759581, 38.818790, 29.526770>,  <25.398642, 38.926113, 29.391846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759581, 38.818790, 29.526770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396534, 0.823485, -0.405751,
		-0.168904, 0.499883, 0.849463,
		0.902348, -0.268308, 0.337311,
		26.030285, 38.738297, 29.627962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577574, 39.477100, 29.749666>,  <25.398642, 38.926113, 29.391846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577574, 39.477100, 29.749666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936445, 39.317539, 29.673828>,  <26.151768, 39.221802, 29.628325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936445, 39.317539, 29.673828>,  <25.577574, 39.477100, 29.749666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936445, 39.317539, 29.673828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298701, 0.864233, -0.404820,
		0.325337, 0.306564, 0.894525,
		0.897181, -0.398899, -0.189595,
		26.205599, 39.197868, 29.616949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985106, 40.060966, 29.752726>,  <25.577574, 39.477100, 29.749666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985106, 40.060966, 29.752726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215321, 39.790619, 29.568573>,  <26.353451, 39.628410, 29.458080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215321, 39.790619, 29.568573>,  <25.985106, 40.060966, 29.752726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215321, 39.790619, 29.568573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464938, 0.733568, -0.495692,
		0.672747, 0.071241, 0.736435,
		0.575539, -0.675872, -0.460383,
		26.387981, 39.587856, 29.430458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786615, 40.229099, 29.844440>,  <25.985106, 40.060966, 29.752726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786615, 40.229099, 29.844440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722719, 40.002529, 29.521048>,  <26.684381, 39.866589, 29.327011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722719, 40.002529, 29.521048>,  <26.786615, 40.229099, 29.844440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722719, 40.002529, 29.521048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579098, 0.609501, -0.541437,
		0.799455, -0.554681, 0.230655,
		-0.159740, -0.566426, -0.808483,
		26.674797, 39.832600, 29.278503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476288, 40.208752, 29.553328>,  <26.786615, 40.229099, 29.844440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476288, 40.208752, 29.553328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220158, 40.106609, 29.263561>,  <27.066481, 40.045322, 29.089701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220158, 40.106609, 29.263561>,  <27.476288, 40.208752, 29.553328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220158, 40.106609, 29.263561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570312, 0.473697, -0.671085,
		0.514521, -0.842854, -0.157685,
		-0.640322, -0.255358, -0.724417,
		27.028061, 40.030003, 29.046236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844532, 39.972847, 28.983646>,  <27.476288, 40.208752, 29.553328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844532, 39.972847, 28.983646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486765, 40.081985, 28.841902>,  <27.272104, 40.147469, 28.756855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486765, 40.081985, 28.841902>,  <27.844532, 39.972847, 28.983646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486765, 40.081985, 28.841902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437012, 0.364784, -0.822163,
		-0.095055, -0.890219, -0.445505,
		-0.894418, 0.272842, -0.354362,
		27.218439, 40.163837, 28.735594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885170, 39.897079, 28.232395>,  <27.844532, 39.972847, 28.983646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885170, 39.897079, 28.232395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580158, 40.136753, 28.329990>,  <27.397152, 40.280556, 28.388548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580158, 40.136753, 28.329990>,  <27.885170, 39.897079, 28.232395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580158, 40.136753, 28.329990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359769, 0.706167, -0.609832,
		-0.537698, -0.377234, -0.754039,
		-0.762527, 0.599185, 0.243987,
		27.351400, 40.316509, 28.403187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855736, 40.227009, 27.616190>,  <27.885170, 39.897079, 28.232395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855736, 40.227009, 27.616190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634430, 40.438015, 27.874065>,  <27.501646, 40.564617, 28.028791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634430, 40.438015, 27.874065>,  <27.855736, 40.227009, 27.616190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634430, 40.438015, 27.874065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221477, 0.839230, -0.496630,
		-0.803022, -0.131985, -0.581150,
		-0.553267, 0.527516, 0.644688,
		27.468451, 40.596272, 28.067472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331703, 40.458290, 27.310822>,  <27.855736, 40.227009, 27.616190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331703, 40.458290, 27.310822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406153, 40.718071, 27.605730>,  <27.450823, 40.873940, 27.782675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406153, 40.718071, 27.605730>,  <27.331703, 40.458290, 27.310822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406153, 40.718071, 27.605730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047184, 0.743609, -0.666948,
		-0.981392, 0.158923, 0.107761,
		0.186125, 0.649453, 0.737271,
		27.461990, 40.912907, 27.826912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849472, 41.063965, 27.345146>,  <27.331703, 40.458290, 27.310822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849472, 41.063965, 27.345146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225121, 41.152279, 27.450449>,  <27.450510, 41.205265, 27.513630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225121, 41.152279, 27.450449>,  <26.849472, 41.063965, 27.345146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225121, 41.152279, 27.450449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047683, 0.675045, -0.736234,
		-0.340256, 0.703967, 0.623423,
		0.939123, 0.220781, 0.263255,
		27.506857, 41.218513, 27.529425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933868, 41.762386, 27.550543>,  <26.849472, 41.063965, 27.345146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933868, 41.762386, 27.550543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261044, 41.614330, 27.374372>,  <27.457348, 41.525497, 27.268669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261044, 41.614330, 27.374372>,  <26.933868, 41.762386, 27.550543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261044, 41.614330, 27.374372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132901, 0.623276, -0.770626,
		0.559748, 0.688856, 0.460607,
		0.817936, -0.370141, -0.440427,
		27.506424, 41.503288, 27.242245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162485, 42.278023, 27.211020>,  <26.933868, 41.762386, 27.550543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162485, 42.278023, 27.211020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410107, 42.002392, 27.060316>,  <27.558680, 41.837013, 26.969894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410107, 42.002392, 27.060316>,  <27.162485, 42.278023, 27.211020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410107, 42.002392, 27.060316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132614, 0.381125, -0.914963,
		0.774073, 0.616373, 0.144554,
		0.619052, -0.689078, -0.376758,
		27.595821, 41.795670, 26.947289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496420, 42.822849, 27.563538>,  <27.162485, 42.278023, 27.211020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496420, 42.822849, 27.563538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436026, 43.214340, 27.507971>,  <27.399790, 43.449234, 27.474630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436026, 43.214340, 27.507971>,  <27.496420, 42.822849, 27.563538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436026, 43.214340, 27.507971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058307, 0.149101, 0.987101,
		0.986815, 0.140936, -0.079578,
		-0.150984, 0.978727, -0.138918,
		27.390730, 43.507957, 27.466295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023382, 43.188190, 27.786127>,  <27.496420, 42.822849, 27.563538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023382, 43.188190, 27.786127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675711, 43.380630, 27.831856>,  <27.467108, 43.496094, 27.859293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675711, 43.380630, 27.831856>,  <28.023382, 43.188190, 27.786127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675711, 43.380630, 27.831856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131763, 0.002493, 0.991278,
		0.476623, 0.876660, -0.065559,
		-0.869177, 0.481104, 0.114323,
		27.414957, 43.524963, 27.866154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531353, 42.727749, 28.186665>,  <28.023382, 43.188190, 27.786127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531353, 42.727749, 28.186665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274786, 42.553028, 27.934381>,  <28.120846, 42.448196, 27.783012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274786, 42.553028, 27.934381>,  <28.531353, 42.727749, 28.186665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274786, 42.553028, 27.934381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621087, 0.186966, -0.761114,
		0.450374, -0.879915, 0.151367,
		-0.641416, -0.436799, -0.630708,
		28.082361, 42.421989, 27.745169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205242, 42.438324, 28.423464>,  <28.531353, 42.727749, 28.186665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205242, 42.438324, 28.423464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169262, 42.411648, 28.820948>,  <29.147675, 42.395641, 29.059439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169262, 42.411648, 28.820948>,  <29.205242, 42.438324, 28.423464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169262, 42.411648, 28.820948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988444, -0.128216, 0.080868,
		0.122017, 0.989502, 0.077449,
		-0.089949, -0.066687, 0.993711,
		29.142277, 42.391644, 29.119061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519361, 43.022900, 28.836882>,  <29.205242, 42.438324, 28.423464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519361, 43.022900, 28.836882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523390, 42.669392, 29.024008>,  <29.525806, 42.457287, 29.136284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523390, 42.669392, 29.024008>,  <29.519361, 43.022900, 28.836882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523390, 42.669392, 29.024008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993804, -0.042943, -0.102516,
		0.110690, 0.465950, 0.877860,
		0.010070, -0.883768, 0.467816,
		29.526411, 42.404263, 29.164352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904196, 42.976246, 28.209427>,  <29.519361, 43.022900, 28.836882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904196, 42.976246, 28.209427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957865, 42.883595, 28.594830>,  <29.990067, 42.828003, 28.826071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957865, 42.883595, 28.594830>,  <29.904196, 42.976246, 28.209427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957865, 42.883595, 28.594830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549443, -0.791770, -0.266856,
		0.824688, 0.565197, 0.021033,
		0.134173, -0.231630, 0.963507,
		29.998117, 42.814106, 28.883883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575373, 42.413372, 28.171648>,  <29.904196, 42.976246, 28.209427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575373, 42.413372, 28.171648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384056, 42.363152, 28.519320>,  <30.269266, 42.333019, 28.727922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384056, 42.363152, 28.519320>,  <30.575373, 42.413372, 28.171648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384056, 42.363152, 28.519320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338893, -0.939454, 0.050780,
		0.810179, 0.318846, 0.491882,
		-0.478291, -0.125554, 0.869180,
		30.240568, 42.325485, 28.780073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965239, 42.108501, 28.715069>,  <30.575373, 42.413372, 28.171648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965239, 42.108501, 28.715069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588421, 41.993450, 28.784143>,  <30.362329, 41.924419, 28.825588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588421, 41.993450, 28.784143>,  <30.965239, 42.108501, 28.715069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588421, 41.993450, 28.784143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315585, -0.934397, 0.165250,
		0.113826, 0.210170, 0.971016,
		-0.942045, -0.287629, 0.172686,
		30.305807, 41.907162, 28.835949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930019, 41.655682, 29.290550>,  <30.965239, 42.108501, 28.715069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930019, 41.655682, 29.290550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586946, 41.574348, 29.101645>,  <30.381102, 41.525551, 28.988300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586946, 41.574348, 29.101645>,  <30.930019, 41.655682, 29.290550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586946, 41.574348, 29.101645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116819, -0.971528, 0.206125,
		-0.500731, 0.121620, 0.857017,
		-0.857684, -0.203329, -0.472266,
		30.329641, 41.513351, 28.959965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590137, 41.124908, 29.788315>,  <30.930019, 41.655682, 29.290550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590137, 41.124908, 29.788315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439354, 41.107311, 29.418242>,  <30.348885, 41.096752, 29.196198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439354, 41.107311, 29.418242>,  <30.590137, 41.124908, 29.788315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439354, 41.107311, 29.418242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125906, -0.987166, 0.098239,
		-0.917633, 0.153518, 0.366582,
		-0.376959, -0.043992, -0.925185,
		30.326267, 41.094112, 29.140686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090130, 40.728020, 29.869839>,  <30.590137, 41.124908, 29.788315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090130, 40.728020, 29.869839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131826, 40.724918, 29.472031>,  <30.156843, 40.723057, 29.233345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131826, 40.724918, 29.472031>,  <30.090130, 40.728020, 29.869839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131826, 40.724918, 29.472031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208268, -0.977969, -0.014200,
		-0.972502, 0.208608, -0.103558,
		0.104239, -0.007758, -0.994522,
		30.163097, 40.722591, 29.173674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454092, 40.553791, 29.597652>,  <30.090130, 40.728020, 29.869839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454092, 40.553791, 29.597652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741125, 40.462196, 29.334553>,  <29.913345, 40.407238, 29.176693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741125, 40.462196, 29.334553>,  <29.454092, 40.553791, 29.597652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741125, 40.462196, 29.334553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205148, -0.972000, 0.114583,
		-0.665572, 0.052714, -0.744469,
		0.717584, -0.228990, -0.657751,
		29.956400, 40.393497, 29.137228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143816, 40.152115, 29.088634>,  <29.454092, 40.553791, 29.597652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143816, 40.152115, 29.088634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526371, 40.048264, 29.035091>,  <29.755903, 39.985954, 29.002966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526371, 40.048264, 29.035091>,  <29.143816, 40.152115, 29.088634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526371, 40.048264, 29.035091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251612, -0.964999, 0.073948,
		-0.148369, -0.037043, -0.988238,
		0.956388, -0.259624, -0.133856,
		29.813288, 39.970375, 28.994934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175873, 39.536255, 28.610455>,  <29.143816, 40.152115, 29.088634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175873, 39.536255, 28.610455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519537, 39.530437, 28.815056>,  <29.725735, 39.526947, 28.937817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519537, 39.530437, 28.815056>,  <29.175873, 39.536255, 28.610455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519537, 39.530437, 28.815056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284946, -0.843877, 0.454618,
		0.425032, -0.536339, -0.729169,
		0.859159, -0.014547, 0.511502,
		29.777285, 39.526073, 28.968506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426538, 38.885204, 28.469093>,  <29.175873, 39.536255, 28.610455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426538, 38.885204, 28.469093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605618, 38.991791, 28.810516>,  <29.713064, 39.055744, 29.015371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605618, 38.991791, 28.810516>,  <29.426538, 38.885204, 28.469093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605618, 38.991791, 28.810516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202215, -0.899665, 0.386926,
		0.871021, -0.345828, -0.348892,
		0.447696, 0.266469, 0.853559,
		29.739925, 39.071732, 29.066584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782726, 38.271126, 28.708487>,  <29.426538, 38.885204, 28.469093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782726, 38.271126, 28.708487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754654, 38.503616, 29.032770>,  <29.737810, 38.643112, 29.227341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754654, 38.503616, 29.032770>,  <29.782726, 38.271126, 28.708487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754654, 38.503616, 29.032770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165166, -0.808265, 0.565180,
		0.983765, -0.094236, 0.152726,
		-0.070183, 0.581230, 0.810707,
		29.733599, 38.677986, 29.275982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313858, 38.045315, 29.140642>,  <29.782726, 38.271126, 28.708487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313858, 38.045315, 29.140642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027020, 38.233078, 29.346722>,  <29.854916, 38.345734, 29.470369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027020, 38.233078, 29.346722>,  <30.313858, 38.045315, 29.140642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027020, 38.233078, 29.346722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148502, -0.825124, 0.545085,
		0.680970, 0.314370, 0.661401,
		-0.717096, 0.469406, 0.515200,
		29.811890, 38.373901, 29.501282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474316, 37.876915, 29.914534>,  <30.313858, 38.045315, 29.140642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474316, 37.876915, 29.914534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092279, 37.995243, 29.921423>,  <29.863058, 38.066238, 29.925556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092279, 37.995243, 29.921423>,  <30.474316, 37.876915, 29.914534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092279, 37.995243, 29.921423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209826, -0.716206, 0.665599,
		0.209231, 0.632092, 0.746111,
		-0.955089, 0.295818, 0.017223,
		29.805752, 38.083988, 29.926590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269148, 37.677719, 30.567608>,  <30.474316, 37.876915, 29.914534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269148, 37.677719, 30.567608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928009, 37.783100, 30.387278>,  <29.723326, 37.846329, 30.279079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928009, 37.783100, 30.387278>,  <30.269148, 37.677719, 30.567608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928009, 37.783100, 30.387278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521806, -0.461844, 0.717230,
		-0.019255, 0.846932, 0.531353,
		-0.852847, 0.263453, -0.450827,
		29.672155, 37.862137, 30.252029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839308, 38.014229, 31.015938>,  <30.269148, 37.677719, 30.567608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839308, 38.014229, 31.015938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608547, 37.823338, 30.750778>,  <29.470091, 37.708801, 30.591682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608547, 37.823338, 30.750778>,  <29.839308, 38.014229, 31.015938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608547, 37.823338, 30.750778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553963, -0.367810, 0.746887,
		-0.600258, 0.798103, -0.052177,
		-0.576902, -0.477229, -0.662901,
		29.435476, 37.680168, 30.551908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151651, 38.071724, 31.222124>,  <29.839308, 38.014229, 31.015938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151651, 38.071724, 31.222124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121317, 37.782764, 30.947205>,  <29.103115, 37.609386, 30.782253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121317, 37.782764, 30.947205>,  <29.151651, 38.071724, 31.222124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121317, 37.782764, 30.947205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551734, -0.543748, 0.632398,
		-0.830565, 0.427167, -0.357338,
		-0.075838, -0.722403, -0.687301,
		29.098566, 37.566044, 30.741014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365704, 37.916153, 31.053736>,  <29.151651, 38.071724, 31.222124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365704, 37.916153, 31.053736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582718, 37.588123, 30.980930>,  <28.712927, 37.391304, 30.937248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582718, 37.588123, 30.980930>,  <28.365704, 37.916153, 31.053736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582718, 37.588123, 30.980930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547141, -0.509385, 0.664201,
		-0.637413, -0.260764, -0.725057,
		0.542533, -0.820079, -0.182014,
		28.745478, 37.342098, 30.926327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893888, 37.396812, 31.133375>,  <28.365704, 37.916153, 31.053736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893888, 37.396812, 31.133375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233070, 37.185234, 31.119572>,  <28.436579, 37.058289, 31.111290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233070, 37.185234, 31.119572>,  <27.893888, 37.396812, 31.133375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233070, 37.185234, 31.119572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410331, -0.696226, 0.588981,
		-0.335566, -0.485268, -0.807410,
		0.847953, -0.528947, -0.034509,
		28.487455, 37.026550, 31.109219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763565, 36.793171, 31.019848>,  <27.893888, 37.396812, 31.133375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763565, 36.793171, 31.019848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118065, 36.722172, 31.190987>,  <28.330765, 36.679573, 31.293671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118065, 36.722172, 31.190987>,  <27.763565, 36.793171, 31.019848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118065, 36.722172, 31.190987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441335, -0.604057, 0.663580,
		0.140658, -0.776922, -0.613683,
		0.886250, -0.177502, 0.427849,
		28.383940, 36.668922, 31.319342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636839, 36.149487, 31.367594>,  <27.763565, 36.793171, 31.019848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636839, 36.149487, 31.367594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988388, 36.255341, 31.526365>,  <28.199318, 36.318851, 31.621628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988388, 36.255341, 31.526365>,  <27.636839, 36.149487, 31.367594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988388, 36.255341, 31.526365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269887, -0.410278, 0.871110,
		0.393373, -0.872722, -0.289162,
		0.878874, 0.264631, 0.396928,
		28.252050, 36.334728, 31.645443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013838, 35.596806, 31.567146>,  <27.636839, 36.149487, 31.367594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013838, 35.596806, 31.567146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152044, 35.899387, 31.789278>,  <28.234968, 36.080936, 31.922556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152044, 35.899387, 31.789278>,  <28.013838, 35.596806, 31.567146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152044, 35.899387, 31.789278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170118, -0.531477, 0.829814,
		0.922864, -0.381186, -0.054947,
		0.345517, 0.756458, 0.555328,
		28.255699, 36.126324, 31.955877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457541, 35.296490, 32.061157>,  <28.013838, 35.596806, 31.567146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457541, 35.296490, 32.061157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318920, 35.633793, 32.225506>,  <28.235748, 35.836174, 32.324116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318920, 35.633793, 32.225506>,  <28.457541, 35.296490, 32.061157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318920, 35.633793, 32.225506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283605, -0.511710, 0.811000,
		0.894132, 0.164525, 0.416485,
		-0.346549, 0.843258, 0.410876,
		28.214956, 35.886772, 32.348770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483698, 35.159084, 32.818485>,  <28.457541, 35.296490, 32.061157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483698, 35.159084, 32.818485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241470, 35.475010, 32.779541>,  <28.096134, 35.664566, 32.756176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241470, 35.475010, 32.779541>,  <28.483698, 35.159084, 32.818485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241470, 35.475010, 32.779541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510931, -0.292081, 0.808479,
		0.610111, 0.539335, 0.580417,
		-0.605569, 0.789815, -0.097361,
		28.059799, 35.711956, 32.750332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352043, 35.306156, 33.563141>,  <28.483698, 35.159084, 32.818485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352043, 35.306156, 33.563141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089365, 35.529366, 33.360218>,  <27.931759, 35.663292, 33.238464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089365, 35.529366, 33.360218>,  <28.352043, 35.306156, 33.563141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089365, 35.529366, 33.360218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687753, -0.167128, 0.706445,
		0.309430, 0.812819, 0.493536,
		-0.656696, 0.558026, -0.507304,
		27.892357, 35.696774, 33.208027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069420, 35.946880, 33.993622>,  <28.352043, 35.306156, 33.563141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069420, 35.946880, 33.993622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808565, 35.819309, 33.718521>,  <27.652052, 35.742767, 33.553463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808565, 35.819309, 33.718521>,  <28.069420, 35.946880, 33.993622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808565, 35.819309, 33.718521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648205, -0.235858, 0.724017,
		-0.393121, 0.917963, -0.052919,
		-0.652139, -0.318929, -0.687749,
		27.612923, 35.723629, 33.512196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474094, 36.292419, 33.646500>,  <28.069420, 35.946880, 33.993622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474094, 36.292419, 33.646500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633219, 36.276546, 34.013142>,  <28.728693, 36.267025, 34.233128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633219, 36.276546, 34.013142>,  <28.474094, 36.292419, 33.646500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633219, 36.276546, 34.013142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916206, 0.035179, 0.399161,
		-0.048085, -0.998593, -0.022363,
		0.397812, -0.039683, 0.916608,
		28.752563, 36.264641, 34.288124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153643, 35.920284, 33.619057>,  <28.474094, 36.292419, 33.646500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153643, 35.920284, 33.619057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005621, 35.658611, 33.882908>,  <28.916807, 35.501606, 34.041218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005621, 35.658611, 33.882908>,  <29.153643, 35.920284, 33.619057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005621, 35.658611, 33.882908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135418, -0.740432, -0.658349,
		0.919088, -0.154299, 0.362587,
		-0.370053, -0.654181, 0.659627,
		28.894606, 35.462357, 34.080795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647732, 35.365906, 33.771011>,  <29.153643, 35.920284, 33.619057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647732, 35.365906, 33.771011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266392, 35.250782, 33.807419>,  <29.037588, 35.181705, 33.829262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266392, 35.250782, 33.807419>,  <29.647732, 35.365906, 33.771011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266392, 35.250782, 33.807419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158219, -0.733221, -0.661328,
		0.257073, -0.616078, 0.744555,
		-0.953352, -0.287812, 0.091016,
		28.980387, 35.164440, 33.834724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609066, 34.755627, 34.094925>,  <29.647732, 35.365906, 33.771011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609066, 34.755627, 34.094925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320097, 34.803444, 33.822510>,  <29.146715, 34.832134, 33.659061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320097, 34.803444, 33.822510>,  <29.609066, 34.755627, 34.094925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320097, 34.803444, 33.822510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392482, -0.740002, -0.546218,
		-0.569267, -0.661896, 0.487676,
		-0.722421, 0.119540, -0.681042,
		29.103371, 34.839306, 33.618198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329828, 34.853382, 34.342819>,  <29.609066, 34.755627, 34.094925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329828, 34.853382, 34.342819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300789, 34.489658, 34.506714>,  <30.283365, 34.271423, 34.605053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300789, 34.489658, 34.506714>,  <30.329828, 34.853382, 34.342819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300789, 34.489658, 34.506714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305663, 0.370771, 0.876983,
		-0.949368, 0.188910, 0.251024,
		-0.072599, -0.909308, 0.409741,
		30.279009, 34.216866, 34.629635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925568, 34.793320, 34.988197>,  <30.329828, 34.853382, 34.342819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925568, 34.793320, 34.988197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205572, 34.508209, 35.005791>,  <30.373575, 34.337143, 35.016346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205572, 34.508209, 35.005791>,  <29.925568, 34.793320, 34.988197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205572, 34.508209, 35.005791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407751, 0.449495, 0.794791,
		-0.586281, -0.538426, 0.605286,
		0.700010, -0.712777, 0.043986,
		30.415575, 34.294376, 35.018986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794024, 34.513103, 35.626385>,  <29.925568, 34.793320, 34.988197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794024, 34.513103, 35.626385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162683, 34.425514, 35.498253>,  <30.383881, 34.372959, 35.421375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162683, 34.425514, 35.498253>,  <29.794024, 34.513103, 35.626385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162683, 34.425514, 35.498253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363512, 0.198535, 0.910188,
		-0.135714, -0.955318, 0.262581,
		0.921651, -0.218977, -0.320326,
		30.439178, 34.359821, 35.402157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179846, 33.965797, 36.130768>,  <29.794024, 34.513103, 35.626385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179846, 33.965797, 36.130768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457495, 34.190186, 35.950321>,  <30.624084, 34.324818, 35.842052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457495, 34.190186, 35.950321>,  <30.179846, 33.965797, 36.130768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457495, 34.190186, 35.950321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475384, 0.113374, 0.872442,
		0.540558, -0.820037, -0.187980,
		0.694123, 0.560969, -0.451118,
		30.665731, 34.358475, 35.814987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830519, 33.773666, 36.349621>,  <30.179846, 33.965797, 36.130768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830519, 33.773666, 36.349621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912350, 34.136368, 36.202141>,  <30.961449, 34.353989, 36.113651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912350, 34.136368, 36.202141>,  <30.830519, 33.773666, 36.349621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912350, 34.136368, 36.202141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545764, 0.207024, 0.811963,
		0.812582, -0.367333, -0.452523,
		0.204578, 0.906757, -0.368701,
		30.973722, 34.408394, 36.091530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482298, 33.881966, 36.417870>,  <30.830519, 33.773666, 36.349621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482298, 33.881966, 36.417870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345160, 34.256992, 36.394432>,  <31.262877, 34.482006, 36.380371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345160, 34.256992, 36.394432>,  <31.482298, 33.881966, 36.417870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345160, 34.256992, 36.394432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357799, 0.188002, 0.914678,
		0.868584, 0.292627, -0.399915,
		-0.342845, 0.937563, -0.058594,
		31.242306, 34.538261, 36.376854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983427, 34.425533, 36.690849>,  <31.482298, 33.881966, 36.417870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983427, 34.425533, 36.690849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630136, 34.611183, 36.717686>,  <31.418163, 34.722572, 36.733788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630136, 34.611183, 36.717686>,  <31.983427, 34.425533, 36.690849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630136, 34.611183, 36.717686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200269, 0.243944, 0.948885,
		0.424035, 0.851516, -0.308408,
		-0.883225, 0.464125, 0.067092,
		31.365170, 34.750420, 36.737812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172588, 35.133270, 36.804409>,  <31.983427, 34.425533, 36.690849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172588, 35.133270, 36.804409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813513, 35.044300, 36.956558>,  <31.598068, 34.990917, 37.047848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813513, 35.044300, 36.956558>,  <32.172588, 35.133270, 36.804409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813513, 35.044300, 36.956558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353698, 0.151067, 0.923080,
		-0.262780, 0.963174, -0.056939,
		-0.897688, -0.222428, 0.380370,
		31.544207, 34.977573, 37.070671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170395, 35.646030, 37.316391>,  <32.172588, 35.133270, 36.804409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170395, 35.646030, 37.316391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876896, 35.381458, 37.378521>,  <31.700798, 35.222713, 37.415798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876896, 35.381458, 37.378521>,  <32.170395, 35.646030, 37.316391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876896, 35.381458, 37.378521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169497, 0.043182, 0.984584,
		-0.657945, 0.748759, 0.080426,
		-0.733743, -0.661434, 0.155323,
		31.656773, 35.183029, 37.425117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604204, 35.943214, 37.802662>,  <32.170395, 35.646030, 37.316391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604204, 35.943214, 37.802662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548082, 35.548458, 37.834564>,  <31.514410, 35.311604, 37.853706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548082, 35.548458, 37.834564>,  <31.604204, 35.943214, 37.802662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548082, 35.548458, 37.834564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074535, 0.090847, 0.993072,
		-0.987299, 0.133387, -0.086304,
		-0.140304, -0.986892, 0.079751,
		31.505991, 35.252392, 37.858490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005476, 35.750217, 38.263306>,  <31.604204, 35.943214, 37.802662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005476, 35.750217, 38.263306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211452, 35.407425, 38.255146>,  <31.335037, 35.201748, 38.250248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211452, 35.407425, 38.255146>,  <31.005476, 35.750217, 38.263306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211452, 35.407425, 38.255146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159186, -0.118982, 0.980053,
		-0.842316, -0.501421, -0.197688,
		0.514940, -0.856983, -0.020401,
		31.365934, 35.150330, 38.249027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533422, 35.251320, 38.649429>,  <31.005476, 35.750217, 38.263306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533422, 35.251320, 38.649429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903847, 35.103676, 38.680843>,  <31.126101, 35.015087, 38.699692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903847, 35.103676, 38.680843>,  <30.533422, 35.251320, 38.649429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903847, 35.103676, 38.680843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050852, 0.084162, 0.995154,
		-0.373936, -0.925565, 0.059168,
		0.926059, -0.369115, 0.078538,
		31.181665, 34.992943, 38.704403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515099, 34.742226, 39.104153>,  <30.533422, 35.251320, 38.649429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515099, 34.742226, 39.104153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913580, 34.767536, 39.080235>,  <31.152668, 34.782722, 39.065884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913580, 34.767536, 39.080235>,  <30.515099, 34.742226, 39.104153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913580, 34.767536, 39.080235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077153, -0.323489, 0.943081,
		0.040331, -0.944114, -0.327142,
		0.996203, 0.063275, -0.059794,
		31.212440, 34.786518, 39.062298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753193, 34.152847, 39.353455>,  <30.515099, 34.742226, 39.104153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753193, 34.152847, 39.353455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080603, 34.378155, 39.398613>,  <31.277048, 34.513340, 39.425709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080603, 34.378155, 39.398613>,  <30.753193, 34.152847, 39.353455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080603, 34.378155, 39.398613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248595, -0.524473, 0.814327,
		0.517895, -0.638482, -0.569320,
		0.818526, 0.563266, 0.112898,
		31.326160, 34.547134, 39.432484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283375, 33.697086, 39.455360>,  <30.753193, 34.152847, 39.353455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283375, 33.697086, 39.455360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406378, 34.052967, 39.590336>,  <31.480179, 34.266495, 39.671322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406378, 34.052967, 39.590336>,  <31.283375, 33.697086, 39.455360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406378, 34.052967, 39.590336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350565, -0.435606, 0.829067,
		0.884615, -0.136649, -0.445851,
		0.307507, 0.889705, 0.337439,
		31.498631, 34.319878, 39.691566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964161, 33.577034, 39.636639>,  <31.283375, 33.697086, 39.455360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964161, 33.577034, 39.636639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853313, 33.898693, 39.846996>,  <31.786806, 34.091686, 39.973209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853313, 33.898693, 39.846996>,  <31.964161, 33.577034, 39.636639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853313, 33.898693, 39.846996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207433, -0.484349, 0.849928,
		0.938178, 0.344616, -0.032584,
		-0.277117, 0.804143, 0.525890,
		31.770178, 34.139935, 40.004765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564587, 33.820415, 39.976269>,  <31.964161, 33.577034, 39.636639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564587, 33.820415, 39.976269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273827, 33.982666, 40.197926>,  <32.099369, 34.080017, 40.330921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273827, 33.982666, 40.197926>,  <32.564587, 33.820415, 39.976269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273827, 33.982666, 40.197926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344114, -0.483167, 0.805068,
		0.594305, 0.775895, 0.211632,
		-0.726902, 0.405631, 0.554145,
		32.055756, 34.104355, 40.364170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891567, 34.009193, 40.563160>,  <32.564587, 33.820415, 39.976269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891567, 34.009193, 40.563160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506443, 34.017593, 40.670910>,  <32.275368, 34.022633, 40.735558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506443, 34.017593, 40.670910>,  <32.891567, 34.009193, 40.563160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506443, 34.017593, 40.670910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212545, -0.556672, 0.803082,
		0.166814, 0.830467, 0.531505,
		-0.962807, 0.020996, 0.269372,
		32.217602, 34.023891, 40.751720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787289, 34.218571, 41.366497>,  <32.891567, 34.009193, 40.563160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787289, 34.218571, 41.366497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458260, 34.015022, 41.264965>,  <32.260841, 33.892895, 41.204044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458260, 34.015022, 41.264965>,  <32.787289, 34.218571, 41.366497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458260, 34.015022, 41.264965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138271, -0.611949, 0.778717,
		-0.551596, 0.605452, 0.573733,
		-0.822571, -0.508868, -0.253832,
		32.211487, 33.862362, 41.188816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462368, 34.149063, 41.989422>,  <32.787289, 34.218571, 41.366497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462368, 34.149063, 41.989422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293709, 33.850937, 41.782845>,  <32.192513, 33.672062, 41.658897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293709, 33.850937, 41.782845>,  <32.462368, 34.149063, 41.989422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293709, 33.850937, 41.782845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061250, -0.591660, 0.803857,
		-0.904687, 0.307316, 0.295125,
		-0.421652, -0.745315, -0.516444,
		32.167213, 33.627342, 41.627911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891190, 33.895912, 42.400558>,  <32.462368, 34.149063, 41.989422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891190, 33.895912, 42.400558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012871, 33.598152, 42.162788>,  <32.085880, 33.419498, 42.020126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012871, 33.598152, 42.162788>,  <31.891190, 33.895912, 42.400558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012871, 33.598152, 42.162788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015055, -0.627672, 0.778332,
		-0.952489, -0.227822, -0.202146,
		0.304202, -0.744396, -0.594421,
		32.104130, 33.374832, 41.984463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469730, 33.362282, 42.602924>,  <31.891190, 33.895912, 42.400558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469730, 33.362282, 42.602924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789495, 33.200569, 42.425163>,  <31.981356, 33.103542, 42.318508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789495, 33.200569, 42.425163>,  <31.469730, 33.362282, 42.602924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789495, 33.200569, 42.425163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115425, -0.622574, 0.774002,
		-0.589585, -0.670044, -0.451032,
		0.799416, -0.404279, -0.444400,
		32.029320, 33.079285, 42.291843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359003, 32.640350, 42.675270>,  <31.469730, 33.362282, 42.602924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359003, 32.640350, 42.675270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746889, 32.690861, 42.591644>,  <31.979620, 32.721169, 42.541470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746889, 32.690861, 42.591644>,  <31.359003, 32.640350, 42.675270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746889, 32.690861, 42.591644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243335, -0.573222, 0.782435,
		-0.021035, -0.809611, -0.586590,
		0.969714, 0.126279, -0.209064,
		32.037804, 32.728745, 42.528923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610382, 32.006218, 42.521374>,  <31.359003, 32.640350, 42.675270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610382, 32.006218, 42.521374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926043, 32.229286, 42.624329>,  <32.115437, 32.363129, 42.686100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926043, 32.229286, 42.624329>,  <31.610382, 32.006218, 42.521374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926043, 32.229286, 42.624329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210320, -0.639081, 0.739825,
		0.577070, -0.529698, -0.621619,
		0.789149, 0.557670, 0.257388,
		32.162788, 32.396587, 42.701546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998970, 31.454657, 42.566505>,  <31.610382, 32.006218, 42.521374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998970, 31.454657, 42.566505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144993, 31.763622, 42.774395>,  <32.232609, 31.949001, 42.899128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144993, 31.763622, 42.774395>,  <31.998970, 31.454657, 42.566505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144993, 31.763622, 42.774395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060770, -0.576827, 0.814603,
		0.928999, -0.265795, -0.257515,
		0.365059, 0.772414, 0.519720,
		32.254509, 31.995346, 42.930309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621647, 31.252998, 42.857796>,  <31.998970, 31.454657, 42.566505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621647, 31.252998, 42.857796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542397, 31.576244, 43.079678>,  <32.494846, 31.770191, 43.212807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542397, 31.576244, 43.079678>,  <32.621647, 31.252998, 42.857796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542397, 31.576244, 43.079678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281925, -0.495026, 0.821868,
		0.938756, 0.319222, -0.129747,
		-0.198130, 0.808113, 0.554706,
		32.482956, 31.818678, 43.246090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160778, 31.378237, 43.378307>,  <32.621647, 31.252998, 42.857796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160778, 31.378237, 43.378307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838596, 31.565172, 43.524094>,  <32.645287, 31.677334, 43.611565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838596, 31.565172, 43.524094>,  <33.160778, 31.378237, 43.378307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838596, 31.565172, 43.524094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190953, -0.377527, 0.906097,
		0.561049, 0.799417, 0.214842,
		-0.805457, 0.467340, 0.364462,
		32.596958, 31.705374, 43.633430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405430, 31.698032, 44.014702>,  <33.160778, 31.378237, 43.378307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405430, 31.698032, 44.014702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006573, 31.698147, 44.044918>,  <32.767258, 31.698215, 44.063049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006573, 31.698147, 44.044918>,  <33.405430, 31.698032, 44.014702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006573, 31.698147, 44.044918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072688, -0.268734, 0.960468,
		0.020578, 0.963214, 0.267945,
		-0.997142, 0.000288, 0.075544,
		32.707432, 31.698233, 44.067581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288345, 32.094292, 44.633793>,  <33.405430, 31.698032, 44.014702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288345, 32.094292, 44.633793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968033, 31.861753, 44.576126>,  <32.775845, 31.722229, 44.541527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968033, 31.861753, 44.576126>,  <33.288345, 32.094292, 44.633793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968033, 31.861753, 44.576126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042951, -0.295811, 0.954280,
		-0.597416, 0.757977, 0.261849,
		-0.800780, -0.581349, -0.144167,
		32.727798, 31.687349, 44.532875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941872, 32.216476, 45.269005>,  <33.288345, 32.094292, 44.633793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941872, 32.216476, 45.269005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771645, 31.886271, 45.120720>,  <32.669510, 31.688147, 45.031750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771645, 31.886271, 45.120720>,  <32.941872, 32.216476, 45.269005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771645, 31.886271, 45.120720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056815, -0.433220, 0.899496,
		-0.903143, 0.361732, 0.231264,
		-0.425564, -0.825512, -0.370708,
		32.643974, 31.638617, 45.009506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433044, 32.109634, 45.687847>,  <32.941872, 32.216476, 45.269005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433044, 32.109634, 45.687847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472965, 31.749447, 45.518524>,  <32.496918, 31.533333, 45.416931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472965, 31.749447, 45.518524>,  <32.433044, 32.109634, 45.687847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472965, 31.749447, 45.518524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035176, -0.428359, 0.902924,
		-0.994385, -0.075224, -0.074426,
		0.099803, -0.900472, -0.423308,
		32.502907, 31.479305, 45.391533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924702, 31.722940, 45.951305>,  <32.433044, 32.109634, 45.687847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924702, 31.722940, 45.951305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193058, 31.442863, 45.853622>,  <32.354073, 31.274817, 45.795013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193058, 31.442863, 45.853622>,  <31.924702, 31.722940, 45.951305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193058, 31.442863, 45.853622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078060, -0.394168, 0.915717,
		-0.737438, -0.595282, -0.319100,
		0.670889, -0.700194, -0.244207,
		32.394325, 31.232805, 45.780361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631226, 31.146446, 46.127342>,  <31.924702, 31.722940, 45.951305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631226, 31.146446, 46.127342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020485, 31.054384, 46.125755>,  <32.254040, 30.999147, 46.124802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020485, 31.054384, 46.125755>,  <31.631226, 31.146446, 46.127342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020485, 31.054384, 46.125755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112480, -0.490503, 0.864150,
		-0.200834, -0.840498, -0.503218,
		0.973146, -0.230153, -0.003970,
		32.312428, 30.985338, 46.124565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639635, 30.637678, 46.584656>,  <31.631226, 31.146446, 46.127342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639635, 30.637678, 46.584656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037102, 30.677185, 46.563213>,  <32.275581, 30.700890, 46.550350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037102, 30.677185, 46.563213>,  <31.639635, 30.637678, 46.584656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037102, 30.677185, 46.563213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101271, -0.580302, 0.808080,
		0.048706, -0.808390, -0.586628,
		0.993666, 0.098767, -0.053603,
		32.335201, 30.706816, 46.547134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815533, 30.053093, 46.772991>,  <31.639635, 30.637678, 46.584656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815533, 30.053093, 46.772991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140285, 30.281342, 46.822372>,  <32.335136, 30.418291, 46.852001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140285, 30.281342, 46.822372>,  <31.815533, 30.053093, 46.772991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140285, 30.281342, 46.822372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164372, -0.426314, 0.889516,
		0.560205, -0.701889, -0.439910,
		0.811882, 0.570620, 0.123452,
		32.383850, 30.452528, 46.859409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516930, 29.707098, 46.701199>,  <31.815533, 30.053093, 46.772991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516930, 29.707098, 46.701199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574127, 30.020922, 46.942535>,  <32.608448, 30.209215, 47.087337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574127, 30.020922, 46.942535>,  <32.516930, 29.707098, 46.701199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574127, 30.020922, 46.942535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367823, -0.608071, 0.703531,
		0.918835, 0.121321, -0.375530,
		0.142996, 0.784558, 0.603342,
		32.617027, 30.256289, 47.123539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188087, 29.632475, 47.065979>,  <32.516930, 29.707098, 46.701199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188087, 29.632475, 47.065979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013176, 29.890146, 47.316998>,  <32.908230, 30.044750, 47.467609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013176, 29.890146, 47.316998>,  <33.188087, 29.632475, 47.065979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013176, 29.890146, 47.316998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229570, -0.594724, 0.770455,
		0.869529, 0.480973, 0.112178,
		-0.437283, 0.644180, 0.627547,
		32.881992, 30.083401, 47.505260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656128, 29.798471, 47.567177>,  <33.188087, 29.632475, 47.065979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656128, 29.798471, 47.567177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300373, 29.877377, 47.732140>,  <33.086922, 29.924721, 47.831116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300373, 29.877377, 47.732140>,  <33.656128, 29.798471, 47.567177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300373, 29.877377, 47.732140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280127, -0.477746, 0.832639,
		0.361274, 0.856064, 0.369643,
		-0.889387, 0.197264, 0.412404,
		33.033558, 29.936556, 47.855862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816898, 29.807882, 48.224598>,  <33.656128, 29.798471, 47.567177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816898, 29.807882, 48.224598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421619, 29.830948, 48.281353>,  <33.184452, 29.844788, 48.315407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421619, 29.830948, 48.281353>,  <33.816898, 29.807882, 48.224598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421619, 29.830948, 48.281353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105392, -0.416163, 0.903162,
		0.111127, 0.907460, 0.405176,
		-0.988202, 0.057663, 0.141886,
		33.125160, 29.848248, 48.323917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747150, 30.027296, 48.924099>,  <33.816898, 29.807882, 48.224598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747150, 30.027296, 48.924099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380268, 29.900171, 48.827991>,  <33.160137, 29.823896, 48.770325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380268, 29.900171, 48.827991>,  <33.747150, 30.027296, 48.924099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380268, 29.900171, 48.827991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161332, -0.255145, 0.953348,
		-0.364288, 0.913180, 0.182748,
		-0.917206, -0.317811, -0.240271,
		33.105106, 29.804829, 48.755909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423779, 30.328930, 49.525951>,  <33.747150, 30.027296, 48.924099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423779, 30.328930, 49.525951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204185, 30.034458, 49.367634>,  <33.072430, 29.857775, 49.272644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204185, 30.034458, 49.367634>,  <33.423779, 30.328930, 49.525951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204185, 30.034458, 49.367634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185065, -0.354724, 0.916472,
		-0.815086, 0.576379, 0.058498,
		-0.548986, -0.736178, -0.395798,
		33.039490, 29.813604, 49.248894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717705, 30.334930, 49.815323>,  <33.423779, 30.328930, 49.525951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717705, 30.334930, 49.815323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779499, 29.962303, 49.683678>,  <32.816574, 29.738726, 49.604691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779499, 29.962303, 49.683678>,  <32.717705, 30.334930, 49.815323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779499, 29.962303, 49.683678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282697, -0.360860, 0.888742,
		-0.946688, -0.044258, -0.319099,
		0.154484, -0.931569, -0.329110,
		32.825844, 29.682833, 49.584946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193779, 29.988802, 50.151760>,  <32.717705, 30.334930, 49.815323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193779, 29.988802, 50.151760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413963, 29.691666, 49.999348>,  <32.546074, 29.513384, 49.907902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413963, 29.691666, 49.999348>,  <32.193779, 29.988802, 50.151760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413963, 29.691666, 49.999348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306418, -0.604311, 0.735470,
		-0.776598, -0.288090, -0.560267,
		0.550457, -0.742841, -0.381030,
		32.579102, 29.468813, 49.885040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734428, 29.432573, 49.943806>,  <32.193779, 29.988802, 50.151760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734428, 29.432573, 49.943806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097256, 29.287865, 50.029919>,  <32.314953, 29.201040, 50.081585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097256, 29.287865, 50.029919>,  <31.734428, 29.432573, 49.943806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097256, 29.287865, 50.029919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404918, -0.609835, 0.681280,
		-0.115181, -0.705141, -0.699650,
		0.907069, -0.361772, 0.215283,
		32.369377, 29.179333, 50.094505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833632, 28.729149, 49.757263>,  <31.734428, 29.432573, 49.943806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833632, 28.729149, 49.757263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064392, 28.814564, 50.072628>,  <32.202847, 28.865812, 50.261845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064392, 28.814564, 50.072628>,  <31.833632, 28.729149, 49.757263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064392, 28.814564, 50.072628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475311, -0.697211, 0.536635,
		0.664278, -0.684324, -0.300725,
		0.576901, 0.213537, 0.788408,
		32.237461, 28.878624, 50.309151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917791, 28.111639, 50.191204>,  <31.833632, 28.729149, 49.757263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917791, 28.111639, 50.191204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031147, 28.400974, 50.443069>,  <32.099159, 28.574575, 50.594189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031147, 28.400974, 50.443069>,  <31.917791, 28.111639, 50.191204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031147, 28.400974, 50.443069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331946, -0.542005, 0.772038,
		0.899723, -0.427801, 0.086510,
		0.283390, 0.723337, 0.629662,
		32.116165, 28.617975, 50.631969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457085, 27.817020, 50.716507>,  <31.917791, 28.111639, 50.191204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457085, 27.817020, 50.716507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219131, 28.118982, 50.826954>,  <32.076359, 28.300159, 50.893223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219131, 28.118982, 50.826954>,  <32.457085, 27.817020, 50.716507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219131, 28.118982, 50.826954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411475, -0.581079, 0.702165,
		0.690512, 0.304088, 0.656295,
		-0.594879, 0.754903, 0.276117,
		32.040668, 28.345453, 50.909790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057491, 27.481373, 50.935928>,  <32.457085, 27.817020, 50.716507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057491, 27.481373, 50.935928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437149, 27.389557, 50.849731>,  <33.664944, 27.334467, 50.798012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437149, 27.389557, 50.849731>,  <33.057491, 27.481373, 50.935928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437149, 27.389557, 50.849731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263718, -0.953502, -0.145896,
		-0.171988, 0.195307, -0.965544,
		0.949143, -0.229539, -0.215497,
		33.721893, 27.320696, 50.785084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516533, 27.298122, 51.562283>,  <33.057491, 27.481373, 50.935928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516533, 27.298122, 51.562283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873940, 27.398340, 51.711334>,  <34.088383, 27.458471, 51.800766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873940, 27.398340, 51.711334>,  <33.516533, 27.298122, 51.562283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873940, 27.398340, 51.711334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334546, 0.182072, -0.924623,
		-0.299504, 0.950830, 0.078867,
		0.893519, 0.250544, 0.372628,
		34.141994, 27.473503, 51.823124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724880, 27.936859, 51.286804>,  <33.516533, 27.298122, 51.562283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724880, 27.936859, 51.286804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055141, 27.738405, 51.394249>,  <34.253300, 27.619333, 51.458714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055141, 27.738405, 51.394249>,  <33.724880, 27.936859, 51.286804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055141, 27.738405, 51.394249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380593, 0.138351, -0.914335,
		0.416469, 0.857153, 0.303055,
		0.825653, -0.496133, 0.268608,
		34.302837, 27.589565, 51.474831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445683, 28.409163, 51.194729>,  <33.724880, 27.936859, 51.286804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445683, 28.409163, 51.194729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459507, 28.011633, 51.152542>,  <34.467804, 27.773115, 51.127232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459507, 28.011633, 51.152542>,  <34.445683, 28.409163, 51.194729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459507, 28.011633, 51.152542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366396, 0.110779, -0.923841,
		0.929817, -0.006710, 0.367962,
		0.034563, -0.993822, -0.105463,
		34.469875, 27.713486, 51.120903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128967, 28.112123, 50.928020>,  <34.445683, 28.409163, 51.194729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128967, 28.112123, 50.928020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831127, 27.874823, 50.805626>,  <34.652424, 27.732443, 50.732189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831127, 27.874823, 50.805626>,  <35.128967, 28.112123, 50.928020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831127, 27.874823, 50.805626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332764, 0.067486, -0.940592,
		0.578657, -0.802184, 0.147163,
		-0.744596, -0.593251, -0.305989,
		34.607750, 27.696848, 50.713829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445686, 27.534595, 50.479927>,  <35.128967, 28.112123, 50.928020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445686, 27.534595, 50.479927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057465, 27.583918, 50.397148>,  <34.824532, 27.613510, 50.347481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057465, 27.583918, 50.397148>,  <35.445686, 27.534595, 50.479927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057465, 27.583918, 50.397148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206278, -0.018285, -0.978323,
		-0.124416, -0.992200, -0.007688,
		-0.970552, 0.123305, -0.206944,
		34.766300, 27.620909, 50.335064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264874, 27.003357, 50.057117>,  <35.445686, 27.534595, 50.479927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264874, 27.003357, 50.057117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038475, 27.327469, 49.996334>,  <34.902634, 27.521936, 49.959866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038475, 27.327469, 49.996334>,  <35.264874, 27.003357, 50.057117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038475, 27.327469, 49.996334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174892, -0.062111, -0.982627,
		-0.805641, -0.582742, -0.106557,
		-0.566000, 0.810280, -0.151956,
		34.868675, 27.570553, 49.950748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817940, 26.834063, 49.582687>,  <35.264874, 27.003357, 50.057117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817940, 26.834063, 49.582687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828350, 27.232946, 49.554703>,  <34.834595, 27.472277, 49.537910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828350, 27.232946, 49.554703>,  <34.817940, 26.834063, 49.582687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828350, 27.232946, 49.554703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149936, -0.073091, -0.985990,
		-0.988353, 0.015166, -0.151419,
		0.026021, 0.997210, -0.069966,
		34.836155, 27.532110, 49.533714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344624, 27.035353, 48.987545>,  <34.817940, 26.834063, 49.582687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344624, 27.035353, 48.987545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587933, 27.344618, 49.059345>,  <34.733917, 27.530176, 49.102425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587933, 27.344618, 49.059345>,  <34.344624, 27.035353, 48.987545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587933, 27.344618, 49.059345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075526, 0.168744, -0.982762,
		-0.790124, 0.611348, 0.044250,
		0.608277, 0.773162, 0.179501,
		34.770416, 27.576567, 49.113197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139851, 27.599709, 48.468994>,  <34.344624, 27.035353, 48.987545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139851, 27.599709, 48.468994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510708, 27.694107, 48.585419>,  <34.733223, 27.750746, 48.655273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510708, 27.694107, 48.585419>,  <34.139851, 27.599709, 48.468994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510708, 27.694107, 48.585419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218112, 0.291738, -0.931298,
		-0.304698, 0.926928, 0.219008,
		0.927139, 0.235996, 0.291066,
		34.788849, 27.764906, 48.672737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259087, 28.358335, 48.220390>,  <34.139851, 27.599709, 48.468994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259087, 28.358335, 48.220390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605247, 28.162577, 48.263428>,  <34.812943, 28.045120, 48.289249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605247, 28.162577, 48.263428>,  <34.259087, 28.358335, 48.220390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605247, 28.162577, 48.263428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328372, 0.391698, -0.859503,
		0.378495, 0.779142, 0.499679,
		0.865398, -0.489398, 0.107593,
		34.864868, 28.015757, 48.295704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684025, 28.798386, 47.813393>,  <34.259087, 28.358335, 48.220390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684025, 28.798386, 47.813393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915066, 28.476297, 47.867050>,  <35.053688, 28.283045, 47.899246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915066, 28.476297, 47.867050>,  <34.684025, 28.798386, 47.813393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915066, 28.476297, 47.867050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423787, 0.155332, -0.892343,
		0.697697, 0.572267, 0.430963,
		0.577601, -0.805222, 0.134144,
		35.088345, 28.234730, 47.907295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309040, 29.017294, 47.755051>,  <34.684025, 28.798386, 47.813393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309040, 29.017294, 47.755051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344856, 28.624382, 47.689190>,  <35.366344, 28.388636, 47.649673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344856, 28.624382, 47.689190>,  <35.309040, 29.017294, 47.755051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344856, 28.624382, 47.689190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380213, 0.186507, -0.905899,
		0.920554, 0.018513, 0.390175,
		0.089541, -0.982279, -0.164651,
		35.371719, 28.329699, 47.639793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001694, 28.875341, 47.597401>,  <35.309040, 29.017294, 47.755051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001694, 28.875341, 47.597401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774612, 28.591698, 47.430126>,  <35.638363, 28.421511, 47.329762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774612, 28.591698, 47.430126>,  <36.001694, 28.875341, 47.597401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774612, 28.591698, 47.430126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419895, 0.187517, -0.887989,
		0.708098, -0.679708, 0.191297,
		-0.567702, -0.709108, -0.418186,
		35.604301, 28.378965, 47.304668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465343, 28.580929, 47.151871>,  <36.001694, 28.875341, 47.597401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465343, 28.580929, 47.151871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096954, 28.460381, 47.053085>,  <35.875923, 28.388052, 46.993816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096954, 28.460381, 47.053085>,  <36.465343, 28.580929, 47.151871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096954, 28.460381, 47.053085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222733, 0.112846, -0.968326,
		0.319695, -0.946806, -0.036802,
		-0.920970, -0.301372, -0.246961,
		35.820663, 28.369968, 46.978996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544178, 28.347298, 46.462502>,  <36.465343, 28.580929, 47.151871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544178, 28.347298, 46.462502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147865, 28.392563, 46.492294>,  <35.910076, 28.419722, 46.510170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147865, 28.392563, 46.492294>,  <36.544178, 28.347298, 46.462502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147865, 28.392563, 46.492294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046796, 0.230102, -0.972041,
		-0.127139, -0.966564, -0.222685,
		-0.990780, 0.113164, 0.074487,
		35.850632, 28.426512, 46.514641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230080, 28.069473, 45.853989>,  <36.544178, 28.347298, 46.462502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230080, 28.069473, 45.853989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937752, 28.292080, 46.012074>,  <35.762356, 28.425644, 46.106926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937752, 28.292080, 46.012074>,  <36.230080, 28.069473, 45.853989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937752, 28.292080, 46.012074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272948, 0.292432, -0.916506,
		-0.625625, -0.777671, -0.061814,
		-0.730817, 0.556517, 0.395217,
		35.718506, 28.459034, 46.130638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576912, 27.929110, 45.395752>,  <36.230080, 28.069473, 45.853989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576912, 27.929110, 45.395752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513992, 28.271433, 45.592869>,  <35.476238, 28.476828, 45.711140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513992, 28.271433, 45.592869>,  <35.576912, 27.929110, 45.395752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513992, 28.271433, 45.592869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277673, 0.440549, -0.853707,
		-0.947710, -0.271125, 0.168336,
		-0.157301, 0.855808, 0.492796,
		35.466801, 28.528175, 45.740707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916576, 28.138233, 45.320084>,  <35.576912, 27.929110, 45.395752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916576, 28.138233, 45.320084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118443, 28.478456, 45.379238>,  <35.239563, 28.682590, 45.414730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118443, 28.478456, 45.379238>,  <34.916576, 28.138233, 45.320084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118443, 28.478456, 45.379238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386639, 0.375829, -0.842177,
		-0.771899, 0.367837, 0.518525,
		0.504661, 0.850558, 0.147882,
		35.269840, 28.733624, 45.423603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399353, 28.716900, 45.209732>,  <34.916576, 28.138233, 45.320084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399353, 28.716900, 45.209732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771946, 28.857990, 45.174133>,  <34.995502, 28.942644, 45.152775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771946, 28.857990, 45.174133>,  <34.399353, 28.716900, 45.209732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771946, 28.857990, 45.174133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286874, 0.561813, -0.775932,
		-0.223693, 0.748299, 0.624508,
		0.931485, 0.352726, -0.088994,
		35.051392, 28.963808, 45.147434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225937, 29.377892, 45.042400>,  <34.399353, 28.716900, 45.209732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225937, 29.377892, 45.042400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614014, 29.353796, 44.948502>,  <34.846859, 29.339338, 44.892162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614014, 29.353796, 44.948502>,  <34.225937, 29.377892, 45.042400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614014, 29.353796, 44.948502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201240, 0.339493, -0.918829,
		0.135044, 0.938678, 0.317249,
		0.970188, -0.060239, -0.234746,
		34.905071, 29.335724, 44.878078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398487, 29.998678, 44.600471>,  <34.225937, 29.377892, 45.042400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398487, 29.998678, 44.600471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699730, 29.746510, 44.525211>,  <34.880474, 29.595207, 44.480057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699730, 29.746510, 44.525211>,  <34.398487, 29.998678, 44.600471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699730, 29.746510, 44.525211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065544, 0.212665, -0.974924,
		0.654628, 0.746552, 0.118839,
		0.753105, -0.630423, -0.188148,
		34.925663, 29.557383, 44.468765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850838, 30.354683, 44.039440>,  <34.398487, 29.998678, 44.600471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850838, 30.354683, 44.039440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912575, 29.959511, 44.034195>,  <34.949615, 29.722408, 44.031048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912575, 29.959511, 44.034195>,  <34.850838, 30.354683, 44.039440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912575, 29.959511, 44.034195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045277, 0.020326, -0.998768,
		0.986980, 0.153556, 0.047868,
		0.154339, -0.987931, -0.013109,
		34.958878, 29.663132, 44.030262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299778, 30.292332, 43.477200>,  <34.850838, 30.354683, 44.039440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299778, 30.292332, 43.477200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186829, 29.912197, 43.529549>,  <35.119061, 29.684116, 43.560959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186829, 29.912197, 43.529549>,  <35.299778, 30.292332, 43.477200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186829, 29.912197, 43.529549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231783, -0.064800, -0.970607,
		0.930883, -0.304407, -0.201974,
		-0.282372, -0.950336, 0.130877,
		35.102116, 29.627096, 43.568813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586945, 29.826687, 43.032101>,  <35.299778, 30.292332, 43.477200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586945, 29.826687, 43.032101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252831, 29.628454, 43.127342>,  <35.052361, 29.509514, 43.184486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252831, 29.628454, 43.127342>,  <35.586945, 29.826687, 43.032101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252831, 29.628454, 43.127342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210396, -0.111984, -0.971181,
		0.507965, -0.861311, -0.010730,
		-0.835287, -0.495583, 0.238101,
		35.002243, 29.479780, 43.198772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578064, 29.279207, 42.600315>,  <35.586945, 29.826687, 43.032101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578064, 29.279207, 42.600315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195362, 29.296677, 42.715355>,  <34.965740, 29.307158, 42.784378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195362, 29.296677, 42.715355>,  <35.578064, 29.279207, 42.600315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195362, 29.296677, 42.715355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287360, 0.011765, -0.957750,
		-0.045206, -0.998977, 0.001293,
		-0.956755, 0.043668, 0.287598,
		34.908337, 29.309778, 42.801636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250240, 28.725494, 42.198795>,  <35.578064, 29.279207, 42.600315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250240, 28.725494, 42.198795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951801, 28.965931, 42.313354>,  <34.772739, 29.110193, 42.382092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951801, 28.965931, 42.313354>,  <35.250240, 28.725494, 42.198795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951801, 28.965931, 42.313354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382452, -0.034782, -0.923321,
		-0.545041, -0.798421, 0.255840,
		-0.746097, 0.601094, 0.286399,
		34.727970, 29.146259, 42.399273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548634, 28.376945, 42.024776>,  <35.250240, 28.725494, 42.198795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548634, 28.376945, 42.024776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519821, 28.772291, 42.078358>,  <34.502533, 29.009499, 42.110508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519821, 28.772291, 42.078358>,  <34.548634, 28.376945, 42.024776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519821, 28.772291, 42.078358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616410, 0.061468, -0.785023,
		-0.784124, -0.139118, 0.604811,
		-0.072034, 0.988367, 0.133952,
		34.498211, 29.068802, 42.118542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783016, 28.466070, 41.881161>,  <34.548634, 28.376945, 42.024776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783016, 28.466070, 41.881161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950081, 28.829002, 41.861908>,  <34.050320, 29.046761, 41.850357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950081, 28.829002, 41.861908>,  <33.783016, 28.466070, 41.881161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950081, 28.829002, 41.861908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575956, 0.223410, -0.786361,
		-0.702735, 0.356151, 0.615890,
		0.417659, 0.907328, -0.048129,
		34.075378, 29.101200, 41.847469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189407, 28.825220, 41.818802>,  <33.783016, 28.466070, 41.881161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189407, 28.825220, 41.818802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481853, 29.068012, 41.694191>,  <33.657322, 29.213688, 41.619423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481853, 29.068012, 41.694191>,  <33.189407, 28.825220, 41.818802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481853, 29.068012, 41.694191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506156, 0.176378, -0.844214,
		-0.457473, 0.774899, 0.436178,
		0.731112, 0.606979, -0.311532,
		33.701187, 29.250105, 41.600731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834969, 29.404766, 41.556038>,  <33.189407, 28.825220, 41.818802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834969, 29.404766, 41.556038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194901, 29.425303, 41.382751>,  <33.410858, 29.437624, 41.278782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194901, 29.425303, 41.382751>,  <32.834969, 29.404766, 41.556038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194901, 29.425303, 41.382751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432973, 0.226513, -0.872483,
		0.053334, 0.972654, 0.226052,
		0.899828, 0.051341, -0.433213,
		33.464848, 29.440704, 41.252789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845570, 29.989758, 41.221443>,  <32.834969, 29.404766, 41.556038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845570, 29.989758, 41.221443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137272, 29.789454, 41.034931>,  <33.312294, 29.669271, 40.923023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137272, 29.789454, 41.034931>,  <32.845570, 29.989758, 41.221443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137272, 29.789454, 41.034931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373422, 0.279759, -0.884472,
		0.573354, 0.819130, 0.017023,
		0.729260, -0.500759, -0.466283,
		33.356049, 29.639225, 40.895046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215691, 30.496511, 40.780106>,  <32.845570, 29.989758, 41.221443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215691, 30.496511, 40.780106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307697, 30.140800, 40.621975>,  <33.362900, 29.927374, 40.527096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307697, 30.140800, 40.621975>,  <33.215691, 30.496511, 40.780106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307697, 30.140800, 40.621975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154488, 0.367700, -0.917023,
		0.960846, 0.272004, -0.052805,
		0.230018, -0.889275, -0.395324,
		33.376701, 29.874018, 40.503376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705425, 30.681196, 40.169853>,  <33.215691, 30.496511, 40.780106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705425, 30.681196, 40.169853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547672, 30.320498, 40.099075>,  <33.453018, 30.104078, 40.056610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547672, 30.320498, 40.099075>,  <33.705425, 30.681196, 40.169853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547672, 30.320498, 40.099075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247612, 0.289708, -0.924531,
		0.884957, -0.320808, -0.337540,
		-0.394385, -0.901749, -0.176943,
		33.429356, 30.049973, 40.045994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028671, 30.478495, 39.628025>,  <33.705425, 30.681196, 40.169853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028671, 30.478495, 39.628025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691677, 30.264317, 39.651749>,  <33.489483, 30.135809, 39.665985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691677, 30.264317, 39.651749>,  <34.028671, 30.478495, 39.628025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691677, 30.264317, 39.651749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222626, 0.245783, -0.943413,
		0.490570, -0.808014, -0.326273,
		-0.842483, -0.535447, 0.059311,
		33.438931, 30.103682, 39.669540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019825, 29.985580, 39.113281>,  <34.028671, 30.478495, 39.628025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019825, 29.985580, 39.113281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634060, 30.049591, 39.197479>,  <33.402603, 30.087997, 39.247997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634060, 30.049591, 39.197479>,  <34.019825, 29.985580, 39.113281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634060, 30.049591, 39.197479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186084, 0.154794, -0.970264,
		-0.187853, -0.974900, -0.119506,
		-0.964409, 0.160028, 0.210492,
		33.344738, 30.097599, 39.260628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758209, 29.678854, 38.504688>,  <34.019825, 29.985580, 39.113281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758209, 29.678854, 38.504688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473209, 29.901175, 38.676003>,  <33.302208, 30.034567, 38.778790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473209, 29.901175, 38.676003>,  <33.758209, 29.678854, 38.504688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473209, 29.901175, 38.676003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286698, 0.326497, -0.900669,
		-0.640425, -0.764516, -0.073283,
		-0.712502, 0.555801, 0.428282,
		33.259460, 30.067915, 38.804485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400608, 29.791851, 37.953411>,  <33.758209, 29.678854, 38.504688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400608, 29.791851, 37.953411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229950, 30.050606, 38.206238>,  <33.127556, 30.205858, 38.357933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229950, 30.050606, 38.206238>,  <33.400608, 29.791851, 37.953411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229950, 30.050606, 38.206238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244244, 0.590486, -0.769202,
		-0.870813, -0.482557, -0.093932,
		-0.426649, 0.646889, 0.632064,
		33.101955, 30.244673, 38.395859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689289, 29.974966, 37.698956>,  <33.400608, 29.791851, 37.953411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689289, 29.974966, 37.698956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792229, 30.271891, 37.946419>,  <32.853992, 30.450047, 38.094898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792229, 30.271891, 37.946419>,  <32.689289, 29.974966, 37.698956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792229, 30.271891, 37.946419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377312, 0.666595, -0.642873,
		-0.889610, -0.067984, 0.451634,
		0.257352, 0.742313, 0.618661,
		32.869434, 30.494585, 38.132015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066422, 30.448612, 37.733631>,  <32.689289, 29.974966, 37.698956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066422, 30.448612, 37.733631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375179, 30.670601, 37.857685>,  <32.560432, 30.803795, 37.932117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375179, 30.670601, 37.857685>,  <32.066422, 30.448612, 37.733631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375179, 30.670601, 37.857685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313850, 0.756880, -0.573263,
		-0.552882, 0.345162, 0.758409,
		0.771894, 0.554973, 0.310136,
		32.606747, 30.837093, 37.950726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754536, 31.089323, 38.013042>,  <32.066422, 30.448612, 37.733631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754536, 31.089323, 38.013042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116779, 31.145681, 37.853031>,  <32.334126, 31.179497, 37.757027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116779, 31.145681, 37.853031>,  <31.754536, 31.089323, 38.013042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116779, 31.145681, 37.853031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394913, 0.624066, -0.674230,
		0.154646, 0.768564, 0.620801,
		0.905609, 0.140895, -0.400025,
		32.388462, 31.187950, 37.733025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771172, 31.720470, 37.815487>,  <31.754536, 31.089323, 38.013042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771172, 31.720470, 37.815487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101795, 31.603710, 37.622990>,  <32.300171, 31.533653, 37.507492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101795, 31.603710, 37.622990>,  <31.771172, 31.720470, 37.815487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101795, 31.603710, 37.622990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202902, 0.642987, -0.738511,
		0.525002, 0.708069, 0.472241,
		0.826561, -0.291901, -0.481238,
		32.349762, 31.516140, 37.478619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041588, 32.329166, 37.601250>,  <31.771172, 31.720470, 37.815487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041588, 32.329166, 37.601250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189899, 32.041805, 37.365822>,  <32.278885, 31.869389, 37.224564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189899, 32.041805, 37.365822>,  <32.041588, 32.329166, 37.601250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189899, 32.041805, 37.365822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216367, 0.683124, -0.697515,
		0.903165, 0.131277, 0.408729,
		0.370780, -0.718407, -0.588570,
		32.301132, 31.826283, 37.189251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692200, 32.630936, 37.373165>,  <32.041588, 32.329166, 37.601250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692200, 32.630936, 37.373165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577518, 32.336250, 37.128201>,  <32.508709, 32.159439, 36.981220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577518, 32.336250, 37.128201>,  <32.692200, 32.630936, 37.373165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577518, 32.336250, 37.128201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102201, 0.612081, -0.784163,
		0.952552, -0.287411, -0.100192,
		-0.286703, -0.736717, -0.612413,
		32.491508, 32.115234, 36.944477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203640, 32.699909, 36.790577>,  <32.692200, 32.630936, 37.373165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203640, 32.699909, 36.790577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888420, 32.494301, 36.655071>,  <32.699287, 32.370937, 36.573769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888420, 32.494301, 36.655071>,  <33.203640, 32.699909, 36.790577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888420, 32.494301, 36.655071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042221, 0.503866, -0.862749,
		0.614162, -0.694193, -0.375369,
		-0.788050, -0.514019, -0.338765,
		32.652004, 32.340096, 36.553444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415977, 32.423111, 36.137371>,  <33.203640, 32.699909, 36.790577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415977, 32.423111, 36.137371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019646, 32.378468, 36.106915>,  <32.781845, 32.351681, 36.088642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019646, 32.378468, 36.106915>,  <33.415977, 32.423111, 36.137371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019646, 32.378468, 36.106915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027308, 0.386474, -0.921896,
		0.132320, -0.915522, -0.379882,
		-0.990830, -0.111612, -0.076139,
		32.722397, 32.344982, 36.084072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913586, 32.775772, 35.706871>,  <33.415977, 32.423111, 36.137371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913586, 32.775772, 35.706871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211674, 32.971447, 35.525612>,  <34.390526, 33.088852, 35.416855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211674, 32.971447, 35.525612>,  <33.913586, 32.775772, 35.706871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211674, 32.971447, 35.525612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579438, -0.138755, 0.803118,
		0.330001, -0.861069, -0.386858,
		0.745219, 0.489190, -0.453147,
		34.435238, 33.118202, 35.389668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514275, 32.363579, 35.653259>,  <33.913586, 32.775772, 35.706871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514275, 32.363579, 35.653259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660488, 32.735550, 35.637169>,  <34.748219, 32.958733, 35.627514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660488, 32.735550, 35.637169>,  <34.514275, 32.363579, 35.653259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660488, 32.735550, 35.637169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635927, -0.217947, 0.740335,
		0.679691, -0.296198, -0.671034,
		0.365536, 0.929927, -0.040224,
		34.770149, 33.014526, 35.625103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241436, 32.297699, 35.644566>,  <34.514275, 32.363579, 35.653259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241436, 32.297699, 35.644566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153877, 32.665684, 35.774651>,  <35.101341, 32.886475, 35.852699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153877, 32.665684, 35.774651>,  <35.241436, 32.297699, 35.644566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153877, 32.665684, 35.774651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522963, -0.170768, 0.835074,
		0.823768, 0.352867, -0.443723,
		-0.218896, 0.919958, 0.325210,
		35.088207, 32.941669, 35.872215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891972, 32.679741, 35.744476>,  <35.241436, 32.297699, 35.644566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891972, 32.679741, 35.744476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635403, 32.888229, 35.969650>,  <35.481461, 33.013325, 36.104755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635403, 32.888229, 35.969650>,  <35.891972, 32.679741, 35.744476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635403, 32.888229, 35.969650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584033, -0.144062, 0.798844,
		0.497476, 0.841172, -0.212008,
		-0.641423, 0.521225, 0.562940,
		35.442974, 33.044598, 36.138531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295708, 33.138794, 36.201683>,  <35.891972, 32.679741, 35.744476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295708, 33.138794, 36.201683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944244, 33.054520, 36.373058>,  <35.733364, 33.003956, 36.475883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944244, 33.054520, 36.373058>,  <36.295708, 33.138794, 36.201683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944244, 33.054520, 36.373058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461540, -0.145141, 0.875166,
		-0.122204, 0.966718, 0.224772,
		-0.878662, -0.210690, 0.428442,
		35.680645, 32.991314, 36.501591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390961, 33.473591, 36.921047>,  <36.295708, 33.138794, 36.201683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390961, 33.473591, 36.921047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065361, 33.243492, 36.953293>,  <35.870003, 33.105434, 36.972641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065361, 33.243492, 36.953293>,  <36.390961, 33.473591, 36.921047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065361, 33.243492, 36.953293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335202, -0.351843, 0.873983,
		-0.474392, 0.738443, 0.479223,
		-0.813998, -0.575247, 0.080616,
		35.821163, 33.070919, 36.977478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873638, 33.700993, 37.502991>,  <36.390961, 33.473591, 36.921047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873638, 33.700993, 37.502991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837051, 33.310215, 37.425835>,  <35.815098, 33.075748, 37.379543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837051, 33.310215, 37.425835>,  <35.873638, 33.700993, 37.502991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837051, 33.310215, 37.425835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263350, -0.210533, 0.941447,
		-0.960355, 0.035313, 0.276536,
		-0.091466, -0.976949, -0.192887,
		35.809612, 33.017132, 37.367970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907539, 33.465809, 38.249210>,  <35.873638, 33.700993, 37.502991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907539, 33.465809, 38.249210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880573, 33.136250, 38.024124>,  <35.864395, 32.938515, 37.889072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880573, 33.136250, 38.024124>,  <35.907539, 33.465809, 38.249210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880573, 33.136250, 38.024124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206072, -0.563334, 0.800118,
		-0.976212, -0.062021, 0.207759,
		-0.067413, -0.823898, -0.562714,
		35.860348, 32.889080, 37.855309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498241, 33.012501, 38.550407>,  <35.907539, 33.465809, 38.249210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498241, 33.012501, 38.550407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756256, 32.793884, 38.336784>,  <35.911064, 32.662716, 38.208611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756256, 32.793884, 38.336784>,  <35.498241, 33.012501, 38.550407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756256, 32.793884, 38.336784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203620, -0.550691, 0.809493,
		-0.736524, -0.630897, -0.243928,
		0.645036, -0.546542, -0.534060,
		35.949768, 32.629921, 38.176567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331688, 32.322842, 38.669193>,  <35.498241, 33.012501, 38.550407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331688, 32.322842, 38.669193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711460, 32.307381, 38.544556>,  <35.939323, 32.298103, 38.469772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711460, 32.307381, 38.544556>,  <35.331688, 32.322842, 38.669193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711460, 32.307381, 38.544556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248072, -0.516016, 0.819871,
		-0.192476, -0.855707, -0.480332,
		0.949428, -0.038648, -0.311598,
		35.996288, 32.295788, 38.451077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474159, 31.617092, 38.716537>,  <35.331688, 32.322842, 38.669193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474159, 31.617092, 38.716537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814575, 31.827120, 38.718815>,  <36.018826, 31.953136, 38.720181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814575, 31.827120, 38.718815>,  <35.474159, 31.617092, 38.716537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814575, 31.827120, 38.718815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254466, -0.421882, 0.870208,
		0.459321, -0.739134, -0.492651,
		0.851042, 0.525067, 0.005695,
		36.069889, 31.984640, 38.720524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931610, 31.154068, 38.904766>,  <35.474159, 31.617092, 38.716537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931610, 31.154068, 38.904766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095951, 31.512514, 38.971912>,  <36.194557, 31.727581, 39.012199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095951, 31.512514, 38.971912>,  <35.931610, 31.154068, 38.904766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095951, 31.512514, 38.971912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312310, -0.311316, 0.897521,
		0.856541, -0.316324, -0.407771,
		0.410853, 0.896115, 0.167863,
		36.219208, 31.781349, 39.022270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516552, 30.988194, 39.174706>,  <35.931610, 31.154068, 38.904766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516552, 30.988194, 39.174706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458733, 31.362999, 39.301895>,  <36.424042, 31.587883, 39.378208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458733, 31.362999, 39.301895>,  <36.516552, 30.988194, 39.174706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458733, 31.362999, 39.301895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264022, -0.273177, 0.925022,
		0.953623, 0.217667, -0.207904,
		-0.144552, 0.937014, 0.317977,
		36.415367, 31.644104, 39.397289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097965, 31.060410, 39.595921>,  <36.516552, 30.988194, 39.174706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097965, 31.060410, 39.595921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830704, 31.338299, 39.702454>,  <36.670349, 31.505032, 39.766373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830704, 31.338299, 39.702454>,  <37.097965, 31.060410, 39.595921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830704, 31.338299, 39.702454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133813, -0.239926, 0.961524,
		0.731894, 0.678082, 0.067344,
		-0.668150, 0.694723, 0.266337,
		36.630260, 31.546715, 39.782356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493820, 31.444620, 40.128021>,  <37.097965, 31.060410, 39.595921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493820, 31.444620, 40.128021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106358, 31.525944, 40.185104>,  <36.873878, 31.574738, 40.219353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106358, 31.525944, 40.185104>,  <37.493820, 31.444620, 40.128021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106358, 31.525944, 40.185104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102063, -0.198016, 0.974871,
		0.226459, 0.958882, 0.171059,
		-0.968659, 0.203309, 0.142709,
		36.815762, 31.586937, 40.227917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399246, 31.975199, 40.620396>,  <37.493820, 31.444620, 40.128021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399246, 31.975199, 40.620396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072075, 31.745127, 40.625534>,  <36.875774, 31.607084, 40.628616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072075, 31.745127, 40.625534>,  <37.399246, 31.975199, 40.620396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072075, 31.745127, 40.625534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095033, -0.113054, 0.989034,
		-0.567420, 0.810177, 0.147131,
		-0.817926, -0.575180, 0.012844,
		36.826698, 31.572573, 40.629387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116009, 32.189892, 41.220963>,  <37.399246, 31.975199, 40.620396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116009, 32.189892, 41.220963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919113, 31.845974, 41.166626>,  <36.800976, 31.639624, 41.134026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919113, 31.845974, 41.166626>,  <37.116009, 32.189892, 41.220963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919113, 31.845974, 41.166626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009712, -0.150620, 0.988544,
		-0.870405, 0.487921, 0.065791,
		-0.492241, -0.859795, -0.135840,
		36.771442, 31.588036, 41.125874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771820, 32.129181, 41.856636>,  <37.116009, 32.189892, 41.220963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771820, 32.129181, 41.856636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730053, 31.770622, 41.684322>,  <36.704994, 31.555487, 41.580933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730053, 31.770622, 41.684322>,  <36.771820, 32.129181, 41.856636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730053, 31.770622, 41.684322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017570, -0.431420, 0.901980,
		-0.994379, 0.101747, 0.029296,
		-0.104413, -0.896395, -0.430783,
		36.698730, 31.501703, 41.555088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197887, 31.756142, 41.971916>,  <36.771820, 32.129181, 41.856636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197887, 31.756142, 41.971916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469284, 31.469044, 41.909309>,  <36.632122, 31.296785, 41.871746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469284, 31.469044, 41.909309>,  <36.197887, 31.756142, 41.971916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469284, 31.469044, 41.909309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247746, -0.424146, 0.871047,
		-0.691575, -0.552218, -0.465596,
		0.678488, -0.717743, -0.156519,
		36.672832, 31.253721, 41.862354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871101, 31.096024, 42.309196>,  <36.197887, 31.756142, 41.971916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871101, 31.096024, 42.309196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262344, 31.036711, 42.250805>,  <36.497089, 31.001123, 42.215771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262344, 31.036711, 42.250805>,  <35.871101, 31.096024, 42.309196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262344, 31.036711, 42.250805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074728, -0.404446, 0.911504,
		-0.194199, -0.902462, -0.384513,
		0.978111, -0.148279, -0.145982,
		36.555779, 30.992228, 42.207008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012474, 30.454857, 42.662045>,  <35.871101, 31.096024, 42.309196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012474, 30.454857, 42.662045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355667, 30.659292, 42.641464>,  <36.561584, 30.781954, 42.629116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355667, 30.659292, 42.641464>,  <36.012474, 30.454857, 42.662045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355667, 30.659292, 42.641464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135934, -0.129313, 0.982242,
		0.495361, -0.849744, -0.180423,
		0.857986, 0.511090, -0.051453,
		36.613064, 30.812618, 42.626030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586937, 30.048695, 42.895580>,  <36.012474, 30.454857, 42.662045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586937, 30.048695, 42.895580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643398, 30.439646, 42.958580>,  <36.677277, 30.674217, 42.996380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643398, 30.439646, 42.958580>,  <36.586937, 30.048695, 42.895580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643398, 30.439646, 42.958580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208906, -0.184920, 0.960293,
		0.967695, -0.102643, -0.230282,
		0.141152, 0.977379, 0.157504,
		36.685745, 30.732859, 43.005833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227608, 30.094954, 43.182430>,  <36.586937, 30.048695, 42.895580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227608, 30.094954, 43.182430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020679, 30.416933, 43.298660>,  <36.896523, 30.610121, 43.368397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020679, 30.416933, 43.298660>,  <37.227608, 30.094954, 43.182430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020679, 30.416933, 43.298660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250962, -0.181916, 0.950750,
		0.818164, 0.564770, -0.107902,
		-0.517325, 0.804949, 0.290572,
		36.865482, 30.658417, 43.385834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736576, 30.527802, 43.384251>,  <37.227608, 30.094954, 43.182430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736576, 30.527802, 43.384251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406574, 30.622942, 43.589306>,  <37.208572, 30.680025, 43.712341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406574, 30.622942, 43.589306>,  <37.736576, 30.527802, 43.384251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406574, 30.622942, 43.589306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543434, 0.084944, 0.835143,
		0.155092, 0.967581, -0.199334,
		-0.825001, 0.237849, 0.512642,
		37.159073, 30.694296, 43.743099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888245, 30.721548, 44.101097>,  <37.736576, 30.527802, 43.384251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888245, 30.721548, 44.101097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494980, 30.765482, 44.159519>,  <37.259022, 30.791842, 44.194572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494980, 30.765482, 44.159519>,  <37.888245, 30.721548, 44.101097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494980, 30.765482, 44.159519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168249, 0.232073, 0.958037,
		0.071328, 0.966478, -0.246644,
		-0.983160, 0.109833, 0.146056,
		37.200031, 30.798431, 44.203335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743725, 31.361235, 44.479980>,  <37.888245, 30.721548, 44.101097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743725, 31.361235, 44.479980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434132, 31.117855, 44.550102>,  <37.248375, 30.971827, 44.592175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434132, 31.117855, 44.550102>,  <37.743725, 31.361235, 44.479980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434132, 31.117855, 44.550102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218481, 0.003236, 0.975836,
		-0.594315, 0.793585, 0.130430,
		-0.773987, -0.608451, 0.175306,
		37.201935, 30.935320, 44.602695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440434, 31.542618, 45.121811>,  <37.743725, 31.361235, 44.479980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440434, 31.542618, 45.121811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328472, 31.160709, 45.081688>,  <37.261295, 30.931564, 45.057613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328472, 31.160709, 45.081688>,  <37.440434, 31.542618, 45.121811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328472, 31.160709, 45.081688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077468, -0.126608, 0.988923,
		-0.956896, 0.269037, 0.109403,
		-0.279908, -0.954772, -0.100309,
		37.244499, 30.874277, 45.051594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913925, 31.444218, 45.605583>,  <37.440434, 31.542618, 45.121811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913925, 31.444218, 45.605583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035778, 31.068678, 45.541382>,  <37.108891, 30.843353, 45.502861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035778, 31.068678, 45.541382>,  <36.913925, 31.444218, 45.605583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035778, 31.068678, 45.541382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014148, -0.172958, 0.984828,
		-0.952367, -0.297734, -0.065971,
		0.304627, -0.938850, -0.160507,
		37.127167, 30.787024, 45.493229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464859, 31.075632, 45.941158>,  <36.913925, 31.444218, 45.605583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464859, 31.075632, 45.941158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794273, 30.850847, 45.910221>,  <36.991924, 30.715977, 45.891659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794273, 30.850847, 45.910221>,  <36.464859, 31.075632, 45.941158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794273, 30.850847, 45.910221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044293, -0.199640, 0.978868,
		-0.565528, -0.802710, -0.189302,
		0.823539, -0.561961, -0.077347,
		37.041336, 30.682259, 45.887016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305069, 30.428993, 46.355976>,  <36.464859, 31.075632, 45.941158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305069, 30.428993, 46.355976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700226, 30.422394, 46.294258>,  <36.937321, 30.418434, 46.257229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700226, 30.422394, 46.294258>,  <36.305069, 30.428993, 46.355976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700226, 30.422394, 46.294258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137747, -0.364540, 0.920943,
		-0.071438, -0.931041, -0.357852,
		0.987888, -0.016497, -0.154290,
		36.996593, 30.417444, 46.247971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542736, 29.849142, 46.549679>,  <36.305069, 30.428993, 46.355976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542736, 29.849142, 46.549679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875607, 30.068909, 46.579666>,  <37.075329, 30.200769, 46.597656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875607, 30.068909, 46.579666>,  <36.542736, 29.849142, 46.549679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875607, 30.068909, 46.579666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224362, -0.457250, 0.860572,
		0.507091, -0.699330, -0.503781,
		0.832178, 0.549418, 0.074964,
		37.125259, 30.233734, 46.602154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979488, 29.355484, 46.724724>,  <36.542736, 29.849142, 46.549679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979488, 29.355484, 46.724724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154095, 29.701225, 46.824600>,  <37.258858, 29.908670, 46.884525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154095, 29.701225, 46.824600>,  <36.979488, 29.355484, 46.724724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154095, 29.701225, 46.824600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378539, -0.428213, 0.820574,
		0.816187, -0.263678, -0.514114,
		0.436518, 0.864354, 0.249690,
		37.285049, 29.960531, 46.899506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594097, 29.164936, 46.931137>,  <36.979488, 29.355484, 46.724724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594097, 29.164936, 46.931137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556564, 29.535614, 47.076706>,  <37.534046, 29.758020, 47.164047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556564, 29.535614, 47.076706>,  <37.594097, 29.164936, 46.931137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556564, 29.535614, 47.076706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347835, -0.311983, 0.884125,
		0.932849, 0.209541, -0.293063,
		-0.093829, 0.926693, 0.363919,
		37.528416, 29.813622, 47.185883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246063, 29.290310, 47.319817>,  <37.594097, 29.164936, 46.931137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246063, 29.290310, 47.319817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982170, 29.557171, 47.458187>,  <37.823833, 29.717287, 47.541210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982170, 29.557171, 47.458187>,  <38.246063, 29.290310, 47.319817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982170, 29.557171, 47.458187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335225, -0.150726, 0.930003,
		0.672593, 0.729515, -0.124207,
		-0.659730, 0.667151, 0.345929,
		37.784252, 29.757317, 47.561966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636654, 29.669992, 47.806259>,  <38.246063, 29.290310, 47.319817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636654, 29.669992, 47.806259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259720, 29.724894, 47.928352>,  <38.033558, 29.757833, 48.001610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259720, 29.724894, 47.928352>,  <38.636654, 29.669992, 47.806259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259720, 29.724894, 47.928352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276807, -0.192979, 0.941348,
		0.188105, 0.971556, 0.143858,
		-0.942335, 0.137251, 0.305234,
		37.977020, 29.766069, 48.019924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675205, 30.080725, 48.337822>,  <38.636654, 29.669992, 47.806259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675205, 30.080725, 48.337822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322495, 29.897390, 48.382351>,  <38.110867, 29.787390, 48.409069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322495, 29.897390, 48.382351>,  <38.675205, 30.080725, 48.337822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322495, 29.897390, 48.382351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225338, -0.202022, 0.953105,
		-0.414350, 0.865515, 0.281419,
		-0.881780, -0.458334, 0.111326,
		38.057961, 29.759890, 48.415749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507999, 30.250776, 48.989605>,  <38.675205, 30.080725, 48.337822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507999, 30.250776, 48.989605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282539, 29.933182, 48.898487>,  <38.147263, 29.742626, 48.843815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282539, 29.933182, 48.898487>,  <38.507999, 30.250776, 48.989605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282539, 29.933182, 48.898487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041807, -0.302848, 0.952122,
		-0.824958, 0.527136, 0.203893,
		-0.563646, -0.793984, -0.227799,
		38.113445, 29.694986, 48.830147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795547, 30.982164, 49.168091>,  <38.507999, 30.250776, 48.989605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795547, 30.982164, 49.168091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701138, 31.315483, 49.368053>,  <38.644493, 31.515474, 49.488033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701138, 31.315483, 49.368053>,  <38.795547, 30.982164, 49.168091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701138, 31.315483, 49.368053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085087, 0.530190, -0.843599,
		-0.968015, -0.156574, -0.196040,
		-0.236024, 0.833297, 0.499910,
		38.630329, 31.565472, 49.518024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151917, 31.327557, 48.956654>,  <38.795547, 30.982164, 49.168091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151917, 31.327557, 48.956654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393776, 31.602026, 49.118423>,  <38.538891, 31.766708, 49.215485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393776, 31.602026, 49.118423>,  <38.151917, 31.327557, 48.956654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393776, 31.602026, 49.118423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021979, 0.493192, -0.869643,
		-0.796187, 0.534720, 0.283128,
		0.604652, 0.686175, 0.404425,
		38.575172, 31.807878, 49.239750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806957, 32.017311, 48.843388>,  <38.151917, 31.327557, 48.956654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806957, 32.017311, 48.843388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199879, 32.067429, 48.899078>,  <38.435631, 32.097500, 48.932495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199879, 32.067429, 48.899078>,  <37.806957, 32.017311, 48.843388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199879, 32.067429, 48.899078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034910, 0.607832, -0.793298,
		-0.184024, 0.784118, 0.592700,
		0.982302, 0.125295, 0.139229,
		38.494568, 32.105019, 48.940845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996021, 32.789032, 48.832684>,  <37.806957, 32.017311, 48.843388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996021, 32.789032, 48.832684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334045, 32.592060, 48.749363>,  <38.536861, 32.473877, 48.699371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334045, 32.592060, 48.749363>,  <37.996021, 32.789032, 48.832684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334045, 32.592060, 48.749363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162190, 0.607319, -0.777726,
		0.509479, 0.623441, 0.593088,
		0.845060, -0.492428, -0.208301,
		38.587563, 32.444332, 48.686874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490536, 33.333359, 48.902828>,  <37.996021, 32.789032, 48.832684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490536, 33.333359, 48.902828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681919, 33.063251, 48.678295>,  <38.796749, 32.901188, 48.543575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681919, 33.063251, 48.678295>,  <38.490536, 33.333359, 48.902828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681919, 33.063251, 48.678295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125487, 0.685268, -0.717398,
		0.869097, 0.272807, 0.412610,
		0.478460, -0.675266, -0.561331,
		38.825459, 32.860672, 48.509895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951679, 33.630112, 48.547688>,  <38.490536, 33.333359, 48.902828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951679, 33.630112, 48.547688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919647, 33.307377, 48.313557>,  <38.900429, 33.113735, 48.173080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919647, 33.307377, 48.313557>,  <38.951679, 33.630112, 48.547688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919647, 33.307377, 48.313557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012429, 0.587972, -0.808786,
		0.996711, -0.057492, -0.057113,
		-0.080080, -0.806836, -0.585324,
		38.895622, 33.065327, 48.137959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253288, 33.807644, 47.933128>,  <38.951679, 33.630112, 48.547688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253288, 33.807644, 47.933128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071125, 33.467739, 47.826912>,  <38.961826, 33.263798, 47.763180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071125, 33.467739, 47.826912>,  <39.253288, 33.807644, 47.933128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071125, 33.467739, 47.826912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298093, 0.426595, -0.853907,
		0.838896, -0.309716, -0.447581,
		-0.455405, -0.849761, -0.265544,
		38.934502, 33.212811, 47.747250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496017, 33.702480, 47.249443>,  <39.253288, 33.807644, 47.933128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496017, 33.702480, 47.249443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160328, 33.489876, 47.295399>,  <38.958916, 33.362312, 47.322971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160328, 33.489876, 47.295399>,  <39.496017, 33.702480, 47.249443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160328, 33.489876, 47.295399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230109, 0.155685, -0.960631,
		0.492703, -0.832619, -0.252961,
		-0.839222, -0.531514, 0.114886,
		38.908562, 33.330421, 47.329865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430592, 33.218945, 46.575169>,  <39.496017, 33.702480, 47.249443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430592, 33.218945, 46.575169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070904, 33.243591, 46.748425>,  <38.855091, 33.258381, 46.852379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070904, 33.243591, 46.748425>,  <39.430592, 33.218945, 46.575169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070904, 33.243591, 46.748425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434428, -0.008548, -0.900666,
		-0.051789, -0.998064, 0.034452,
		-0.899217, 0.061612, 0.433144,
		38.801140, 33.262077, 46.878368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000740, 32.780796, 46.181759>,  <39.430592, 33.218945, 46.575169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000740, 32.780796, 46.181759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744987, 33.038723, 46.349285>,  <38.591537, 33.193481, 46.449802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744987, 33.038723, 46.349285>,  <39.000740, 32.780796, 46.181759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744987, 33.038723, 46.349285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508575, 0.053859, -0.859331,
		-0.576670, -0.762435, 0.293503,
		-0.639377, 0.644820, 0.418814,
		38.553173, 33.232170, 46.474930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481133, 32.761528, 45.745483>,  <39.000740, 32.780796, 46.181759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481133, 32.761528, 45.745483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361759, 33.075226, 45.963074>,  <38.290134, 33.263443, 46.093628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361759, 33.075226, 45.963074>,  <38.481133, 32.761528, 45.745483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361759, 33.075226, 45.963074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666634, 0.236603, -0.706837,
		-0.683035, -0.573573, 0.452191,
		-0.298433, 0.784241, 0.543971,
		38.272228, 33.310497, 46.126266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739811, 32.690174, 45.822346>,  <38.481133, 32.761528, 45.745483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739811, 32.690174, 45.822346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850845, 33.072876, 45.857128>,  <37.917465, 33.302498, 45.877998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850845, 33.072876, 45.857128>,  <37.739811, 32.690174, 45.822346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850845, 33.072876, 45.857128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729777, 0.268863, -0.628600,
		-0.624797, 0.111032, 0.772852,
		0.277587, 0.956757, 0.086956,
		37.934120, 33.359901, 45.883217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103111, 33.099442, 45.668240>,  <37.739811, 32.690174, 45.822346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103111, 33.099442, 45.668240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376820, 33.390888, 45.656292>,  <37.541046, 33.565754, 45.649124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376820, 33.390888, 45.656292>,  <37.103111, 33.099442, 45.668240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376820, 33.390888, 45.656292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487058, 0.426171, -0.762334,
		-0.542718, 0.536192, 0.646494,
		0.684275, 0.728613, -0.029866,
		37.582104, 33.609470, 45.647331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766617, 33.714817, 45.699524>,  <37.103111, 33.099442, 45.668240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766617, 33.714817, 45.699524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111465, 33.797394, 45.514427>,  <37.318375, 33.846939, 45.403370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111465, 33.797394, 45.514427>,  <36.766617, 33.714817, 45.699524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111465, 33.797394, 45.514427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506636, 0.365912, -0.780659,
		0.008161, 0.907463, 0.420052,
		0.862121, 0.206442, -0.462740,
		37.370102, 33.859325, 45.375607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592728, 34.272472, 45.246223>,  <36.766617, 33.714817, 45.699524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592728, 34.272472, 45.246223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938816, 34.147163, 45.089634>,  <37.146469, 34.071976, 44.995682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938816, 34.147163, 45.089634>,  <36.592728, 34.272472, 45.246223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938816, 34.147163, 45.089634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262290, 0.382622, -0.885892,
		0.427314, 0.869172, 0.248883,
		0.865220, -0.313275, -0.391474,
		37.198383, 34.053181, 44.972191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131306, 34.789997, 44.912037>,  <36.592728, 34.272472, 45.246223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131306, 34.789997, 44.912037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259892, 34.458241, 44.729271>,  <37.337044, 34.259186, 44.619610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259892, 34.458241, 44.729271>,  <37.131306, 34.789997, 44.912037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259892, 34.458241, 44.729271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075940, 0.458392, -0.885500,
		0.943871, 0.319355, 0.084373,
		0.321465, -0.829391, -0.456915,
		37.356331, 34.209423, 44.592197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208988, 35.018562, 44.149666>,  <37.131306, 34.789997, 44.912037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208988, 35.018562, 44.149666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221748, 34.618965, 44.137051>,  <37.229404, 34.379208, 44.129482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221748, 34.618965, 44.137051>,  <37.208988, 35.018562, 44.149666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221748, 34.618965, 44.137051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402341, 0.016048, -0.915349,
		0.914934, 0.041892, -0.401424,
		0.031904, -0.998993, -0.031537,
		37.231319, 34.319267, 44.127590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655975, 34.791660, 43.601875>,  <37.208988, 35.018562, 44.149666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655975, 34.791660, 43.601875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399273, 34.493591, 43.674400>,  <37.245251, 34.314751, 43.717915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399273, 34.493591, 43.674400>,  <37.655975, 34.791660, 43.601875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399273, 34.493591, 43.674400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247375, -0.022649, -0.968655,
		0.725919, -0.666490, -0.169802,
		-0.641753, -0.745170, 0.181314,
		37.206745, 34.270039, 43.728794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795670, 34.386463, 43.034912>,  <37.655975, 34.791660, 43.601875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795670, 34.386463, 43.034912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475113, 34.184460, 43.163120>,  <37.282780, 34.063259, 43.240044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475113, 34.184460, 43.163120>,  <37.795670, 34.386463, 43.034912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475113, 34.184460, 43.163120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214913, -0.256967, -0.942221,
		0.558194, -0.823974, 0.097399,
		-0.801394, -0.505009, 0.320520,
		37.234695, 34.032955, 43.259277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804337, 33.618622, 42.765388>,  <37.795670, 34.386463, 43.034912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804337, 33.618622, 42.765388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426628, 33.729816, 42.835907>,  <37.200005, 33.796535, 42.878220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426628, 33.729816, 42.835907>,  <37.804337, 33.618622, 42.765388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426628, 33.729816, 42.835907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241994, -0.223156, -0.944267,
		-0.223156, -0.934303, 0.277990,
		0.944267, -0.277990, -0.176297,
		37.143349, 33.813213, 42.888798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468567, 33.224449, 42.310162>,  <37.804337, 33.618622, 42.765388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468567, 33.224449, 42.310162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216099, 33.516953, 42.413616>,  <37.064617, 33.692455, 42.475689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216099, 33.516953, 42.413616>,  <37.468567, 33.224449, 42.310162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216099, 33.516953, 42.413616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519711, -0.151174, -0.840861,
		-0.575784, -0.665142, 0.475457,
		-0.631169, 0.731254, 0.258638,
		37.026749, 33.736328, 42.491207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788605, 32.961441, 42.012985>,  <37.468567, 33.224449, 42.310162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788605, 32.961441, 42.012985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790310, 33.356117, 42.078003>,  <36.791332, 33.592922, 42.117012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790310, 33.356117, 42.078003>,  <36.788605, 32.961441, 42.012985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790310, 33.356117, 42.078003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285735, 0.156967, -0.945366,
		-0.958299, -0.042412, 0.282602,
		0.004264, 0.986693, 0.162540,
		36.791588, 33.652126, 42.126766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069218, 33.221523, 41.757294>,  <36.788605, 32.961441, 42.012985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069218, 33.221523, 41.757294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323597, 33.528595, 41.788883>,  <36.476223, 33.712837, 41.807835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323597, 33.528595, 41.788883>,  <36.069218, 33.221523, 41.757294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323597, 33.528595, 41.788883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248944, 0.300925, -0.920582,
		-0.730479, 0.565781, 0.382482,
		0.635946, 0.767682, 0.078972,
		36.514381, 33.758900, 41.812576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755283, 33.791916, 41.339893>,  <36.069218, 33.221523, 41.757294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755283, 33.791916, 41.339893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143703, 33.881081, 41.374218>,  <36.376755, 33.934578, 41.394814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143703, 33.881081, 41.374218>,  <35.755283, 33.791916, 41.339893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143703, 33.881081, 41.374218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014380, 0.304039, -0.952551,
		-0.238423, 0.926213, 0.292033,
		0.971055, 0.222911, 0.085809,
		36.435020, 33.947952, 41.399960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801365, 34.496284, 41.055458>,  <35.755283, 33.791916, 41.339893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801365, 34.496284, 41.055458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164661, 34.329720, 41.038952>,  <36.382637, 34.229778, 41.029049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164661, 34.329720, 41.038952>,  <35.801365, 34.496284, 41.055458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164661, 34.329720, 41.038952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188470, 0.495116, -0.848138,
		0.373608, 0.762534, 0.528165,
		0.908238, -0.416415, -0.041264,
		36.437134, 34.204796, 41.026573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125797, 34.984886, 40.690269>,  <35.801365, 34.496284, 41.055458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125797, 34.984886, 40.690269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367901, 34.668167, 40.657467>,  <36.513165, 34.478138, 40.637783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367901, 34.668167, 40.657467>,  <36.125797, 34.984886, 40.690269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367901, 34.668167, 40.657467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282651, 0.310079, -0.907722,
		0.744158, 0.526226, 0.411479,
		0.605258, -0.791794, -0.082009,
		36.549477, 34.430630, 40.632866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742706, 35.213776, 40.510387>,  <36.125797, 34.984886, 40.690269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742706, 35.213776, 40.510387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810188, 34.835133, 40.400501>,  <36.850677, 34.607944, 40.334568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810188, 34.835133, 40.400501>,  <36.742706, 35.213776, 40.510387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810188, 34.835133, 40.400501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552822, 0.321620, -0.768731,
		0.816042, -0.022179, 0.577566,
		0.168707, -0.946609, -0.274716,
		36.860802, 34.551151, 40.318085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419159, 35.224995, 40.325497>,  <36.742706, 35.213776, 40.510387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419159, 35.224995, 40.325497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242130, 34.915535, 40.144123>,  <37.135914, 34.729858, 40.035297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242130, 34.915535, 40.144123>,  <37.419159, 35.224995, 40.325497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242130, 34.915535, 40.144123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422833, 0.265874, -0.866328,
		0.790788, -0.575137, 0.209455,
		-0.442569, -0.773646, -0.453437,
		37.109360, 34.683441, 40.008091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948982, 35.045795, 39.784573>,  <37.419159, 35.224995, 40.325497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948982, 35.045795, 39.784573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609192, 34.866226, 39.673683>,  <37.405315, 34.758484, 39.607147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609192, 34.866226, 39.673683>,  <37.948982, 35.045795, 39.784573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609192, 34.866226, 39.673683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220408, 0.175459, -0.959497,
		0.479379, -0.876177, -0.050103,
		-0.849480, -0.448920, -0.277228,
		37.354347, 34.731552, 39.590515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224262, 34.666740, 39.221294>,  <37.948982, 35.045795, 39.784573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224262, 34.666740, 39.221294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825897, 34.668816, 39.185234>,  <37.586876, 34.670059, 39.163597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825897, 34.668816, 39.185234>,  <38.224262, 34.666740, 39.221294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825897, 34.668816, 39.185234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089453, 0.192715, -0.977169,
		0.012303, -0.981241, -0.192392,
		-0.995915, 0.005188, -0.090146,
		37.527122, 34.670372, 39.158192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073627, 34.205101, 38.604973>,  <38.224262, 34.666740, 39.221294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073627, 34.205101, 38.604973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743847, 34.424213, 38.661861>,  <37.545979, 34.555679, 38.695995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743847, 34.424213, 38.661861>,  <38.073627, 34.205101, 38.604973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743847, 34.424213, 38.661861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042473, 0.310474, -0.949633,
		-0.564343, -0.776882, -0.279235,
		-0.824447, 0.547778, 0.142217,
		37.496513, 34.588547, 38.704525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589996, 34.098286, 38.074448>,  <38.073627, 34.205101, 38.604973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589996, 34.098286, 38.074448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490261, 34.458309, 38.217403>,  <37.430420, 34.674324, 38.303177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490261, 34.458309, 38.217403>,  <37.589996, 34.098286, 38.074448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490261, 34.458309, 38.217403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170126, 0.322593, -0.931123,
		-0.953357, -0.292962, 0.072690,
		-0.249334, 0.900059, 0.357387,
		37.415462, 34.728329, 38.324619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136459, 34.351219, 37.469250>,  <37.589996, 34.098286, 38.074448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136459, 34.351219, 37.469250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222359, 34.658466, 37.710541>,  <37.273899, 34.842815, 37.855316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222359, 34.658466, 37.710541>,  <37.136459, 34.351219, 37.469250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222359, 34.658466, 37.710541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087548, 0.630287, -0.771410,
		-0.972737, 0.112849, 0.202601,
		0.214750, 0.768117, 0.603224,
		37.286785, 34.888901, 37.891506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650528, 34.817909, 37.368565>,  <37.136459, 34.351219, 37.469250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650528, 34.817909, 37.368565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962730, 35.024124, 37.510002>,  <37.150051, 35.147854, 37.594864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962730, 35.024124, 37.510002>,  <36.650528, 34.817909, 37.368565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962730, 35.024124, 37.510002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027692, 0.593574, -0.804303,
		-0.624529, 0.617975, 0.477567,
		0.780511, 0.515535, 0.353592,
		37.196884, 35.178783, 37.616081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485069, 35.423489, 37.114571>,  <36.650528, 34.817909, 37.368565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485069, 35.423489, 37.114571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862198, 35.469700, 37.239620>,  <37.088478, 35.497425, 37.314648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862198, 35.469700, 37.239620>,  <36.485069, 35.423489, 37.114571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862198, 35.469700, 37.239620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170853, 0.637840, -0.750979,
		-0.286161, 0.761455, 0.581634,
		0.942826, 0.115527, 0.312622,
		37.145046, 35.504356, 37.333408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658077, 36.161957, 37.120968>,  <36.485069, 35.423489, 37.114571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658077, 36.161957, 37.120968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014702, 35.980873, 37.115883>,  <37.228676, 35.872223, 37.112831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014702, 35.980873, 37.115883>,  <36.658077, 36.161957, 37.120968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014702, 35.980873, 37.115883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329043, 0.666786, -0.668676,
		0.311195, 0.591986, 0.743445,
		0.891565, -0.452714, -0.012712,
		37.282173, 35.845058, 37.112068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205563, 36.648254, 37.076935>,  <36.658077, 36.161957, 37.120968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205563, 36.648254, 37.076935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412663, 36.336700, 36.935352>,  <37.536922, 36.149769, 36.850403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412663, 36.336700, 36.935352>,  <37.205563, 36.648254, 37.076935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412663, 36.336700, 36.935352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305663, 0.554821, -0.773786,
		0.799068, 0.292434, 0.525331,
		0.517746, -0.778881, -0.353953,
		37.567986, 36.103035, 36.829166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786167, 36.955849, 36.920277>,  <37.205563, 36.648254, 37.076935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786167, 36.955849, 36.920277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746632, 36.624569, 36.699619>,  <37.722912, 36.425800, 36.567226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746632, 36.624569, 36.699619>,  <37.786167, 36.955849, 36.920277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746632, 36.624569, 36.699619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182183, 0.529929, -0.828242,
		0.978285, -0.182359, 0.098510,
		-0.098834, -0.828203, -0.551644,
		37.716980, 36.376106, 36.534126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306702, 36.820374, 36.525364>,  <37.786167, 36.955849, 36.920277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306702, 36.820374, 36.525364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060551, 36.582409, 36.318523>,  <37.912861, 36.439629, 36.194420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060551, 36.582409, 36.318523>,  <38.306702, 36.820374, 36.525364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060551, 36.582409, 36.318523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155828, 0.551260, -0.819652,
		0.772678, -0.584972, -0.246528,
		-0.615375, -0.594912, -0.517102,
		37.875938, 36.403934, 36.163391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648708, 36.711887, 35.935314>,  <38.306702, 36.820374, 36.525364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648708, 36.711887, 35.935314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260998, 36.636852, 35.871681>,  <38.028370, 36.591831, 35.833500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260998, 36.636852, 35.871681>,  <38.648708, 36.711887, 35.935314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260998, 36.636852, 35.871681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019292, 0.586813, -0.809493,
		0.245198, -0.787695, -0.565167,
		-0.969281, -0.187583, -0.159082,
		37.970215, 36.580578, 35.823956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500420, 36.457203, 35.288231>,  <38.648708, 36.711887, 35.935314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500420, 36.457203, 35.288231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205021, 36.688416, 35.427086>,  <38.027782, 36.827145, 35.510399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205021, 36.688416, 35.427086>,  <38.500420, 36.457203, 35.288231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205021, 36.688416, 35.427086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144287, 0.638390, -0.756068,
		-0.658641, -0.508265, -0.554850,
		-0.738494, 0.578035, 0.347134,
		37.983471, 36.861828, 35.531227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168716, 36.194130, 34.999378>,  <38.500420, 36.457203, 35.288231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168716, 36.194130, 34.999378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472126, 36.385048, 34.821915>,  <39.654171, 36.499599, 34.715439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472126, 36.385048, 34.821915>,  <39.168716, 36.194130, 34.999378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472126, 36.385048, 34.821915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645963, -0.640429, 0.415430,
		-0.085848, -0.601700, -0.794095,
		0.758526, 0.477293, -0.443656,
		39.699684, 36.528236, 34.688816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717358, 35.786022, 34.625816>,  <39.168716, 36.194130, 34.999378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717358, 35.786022, 34.625816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906639, 36.112812, 34.757656>,  <40.020206, 36.308884, 34.836758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906639, 36.112812, 34.757656>,  <39.717358, 35.786022, 34.625816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906639, 36.112812, 34.757656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722048, -0.574026, 0.386189,
		0.504702, 0.055238, -0.861525,
		0.473205, 0.816972, 0.329597,
		40.048599, 36.357903, 34.856537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404022, 35.822399, 34.301491>,  <39.717358, 35.786022, 34.625816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404022, 35.822399, 34.301491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355335, 35.956928, 34.675030>,  <40.326122, 36.037647, 34.899155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355335, 35.956928, 34.675030>,  <40.404022, 35.822399, 34.301491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355335, 35.956928, 34.675030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670995, -0.665409, 0.327104,
		0.731403, 0.666421, -0.144680,
		-0.121718, 0.336324, 0.933847,
		40.318821, 36.057827, 34.955185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515888, 35.298374, 33.864574>,  <40.404022, 35.822399, 34.301491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515888, 35.298374, 33.864574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814537, 35.560192, 33.912117>,  <40.993725, 35.717281, 33.940643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814537, 35.560192, 33.912117>,  <40.515888, 35.298374, 33.864574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814537, 35.560192, 33.912117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649813, -0.679299, -0.341022,
		-0.142474, 0.331850, -0.932511,
		0.746622, 0.654545, 0.118858,
		41.038525, 35.756554, 33.947773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013405, 35.250278, 33.341328>,  <40.515888, 35.298374, 33.864574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013405, 35.250278, 33.341328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175976, 35.406319, 33.671814>,  <41.273518, 35.499943, 33.870106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175976, 35.406319, 33.671814>,  <41.013405, 35.250278, 33.341328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175976, 35.406319, 33.671814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852982, -0.486096, -0.190083,
		0.327469, 0.782004, -0.530314,
		0.406430, 0.390102, 0.826217,
		41.297905, 35.523350, 33.919678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751232, 35.514912, 33.285126>,  <41.013405, 35.250278, 33.341328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751232, 35.514912, 33.285126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734577, 35.483425, 33.683537>,  <41.724583, 35.464535, 33.922585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734577, 35.483425, 33.683537>,  <41.751232, 35.514912, 33.285126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734577, 35.483425, 33.683537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976928, -0.212210, 0.024068,
		0.209472, 0.974049, 0.085732,
		-0.041637, -0.078712, 0.996027,
		41.722088, 35.459812, 33.982346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495007, 35.633717, 33.338974>,  <41.751232, 35.514912, 33.285126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495007, 35.633717, 33.338974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873150, 35.632168, 33.469376>,  <43.100037, 35.631237, 33.547619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873150, 35.632168, 33.469376>,  <42.495007, 35.633717, 33.338974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873150, 35.632168, 33.469376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041305, -0.990449, -0.131549,
		0.323404, 0.137827, -0.936170,
		0.945359, -0.003874, 0.326008,
		43.156757, 35.631004, 33.567177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928780, 35.236004, 32.776157>,  <42.495007, 35.633717, 33.338974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928780, 35.236004, 32.776157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040138, 35.233921, 33.160339>,  <43.106953, 35.232670, 33.390846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040138, 35.233921, 33.160339>,  <42.928780, 35.236004, 32.776157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040138, 35.233921, 33.160339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291407, -0.952391, -0.089630,
		0.915193, 0.304835, -0.263622,
		0.278394, -0.005207, 0.960453,
		43.123657, 35.232357, 33.448475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533154, 34.867985, 32.755890>,  <42.928780, 35.236004, 32.776157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533154, 34.867985, 32.755890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456482, 34.847706, 33.147949>,  <43.410477, 34.835537, 33.383186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456482, 34.847706, 33.147949>,  <43.533154, 34.867985, 32.755890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456482, 34.847706, 33.147949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123733, -0.991945, -0.027112,
		0.973626, 0.116080, 0.196410,
		-0.191681, -0.050700, 0.980147,
		43.398979, 34.832497, 33.441994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011990, 34.345222, 33.057102>,  <43.533154, 34.867985, 32.755890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011990, 34.345222, 33.057102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722118, 34.363476, 33.332130>,  <43.548195, 34.374428, 33.497147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722118, 34.363476, 33.332130>,  <44.011990, 34.345222, 33.057102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722118, 34.363476, 33.332130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007522, -0.997222, 0.074107,
		0.689043, 0.058876, 0.722325,
		-0.724682, 0.045630, 0.687571,
		43.504715, 34.377163, 33.538403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283749, 33.880722, 33.520569>,  <44.011990, 34.345222, 33.057102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283749, 33.880722, 33.520569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889145, 33.911259, 33.578503>,  <43.652382, 33.929581, 33.613262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889145, 33.911259, 33.578503>,  <44.283749, 33.880722, 33.520569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889145, 33.911259, 33.578503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076777, -0.997045, 0.002620,
		0.144604, -0.008535, 0.989453,
		-0.986506, 0.076346, 0.144832,
		43.593193, 33.934162, 33.621952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079113, 33.362606, 33.973003>,  <44.283749, 33.880722, 33.520569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079113, 33.362606, 33.973003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722748, 33.452473, 33.815117>,  <43.508930, 33.506393, 33.720387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722748, 33.452473, 33.815117>,  <44.079113, 33.362606, 33.973003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722748, 33.452473, 33.815117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268774, -0.961366, 0.059462,
		-0.366104, 0.159064, 0.916879,
		-0.890914, 0.224663, -0.394712,
		43.455475, 33.519871, 33.696705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538315, 33.051018, 34.395679>,  <44.079113, 33.362606, 33.973003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538315, 33.051018, 34.395679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332355, 33.117252, 34.059238>,  <43.208778, 33.156994, 33.857372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332355, 33.117252, 34.059238>,  <43.538315, 33.051018, 34.395679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332355, 33.117252, 34.059238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280654, -0.959656, -0.017119,
		-0.810008, 0.227245, 0.540599,
		-0.514898, 0.165588, -0.841107,
		43.177887, 33.166927, 33.806908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909698, 32.819363, 34.492924>,  <43.538315, 33.051018, 34.395679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909698, 32.819363, 34.492924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962971, 32.811844, 34.096558>,  <42.994934, 32.807331, 33.858738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962971, 32.811844, 34.096558>,  <42.909698, 32.819363, 34.492924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962971, 32.811844, 34.096558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233819, -0.972194, -0.012982,
		-0.963116, 0.233423, -0.133874,
		0.133182, -0.018799, -0.990913,
		43.002926, 32.806206, 33.799282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441875, 32.407757, 34.311172>,  <42.909698, 32.819363, 34.492924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441875, 32.407757, 34.311172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684811, 32.391869, 33.993793>,  <42.830574, 32.382336, 33.803368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684811, 32.391869, 33.993793>,  <42.441875, 32.407757, 34.311172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684811, 32.391869, 33.993793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214169, -0.969958, -0.115382,
		-0.765028, 0.240008, -0.597603,
		0.607342, -0.039717, -0.793447,
		42.867012, 32.379955, 33.755760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068703, 31.986547, 33.827534>,  <42.441875, 32.407757, 34.311172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068703, 31.986547, 33.827534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450409, 31.972479, 33.708782>,  <42.679432, 31.964039, 33.637531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450409, 31.972479, 33.708782>,  <42.068703, 31.986547, 33.827534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450409, 31.972479, 33.708782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126380, -0.947418, -0.293984,
		-0.270933, 0.318059, -0.908534,
		0.954266, -0.035170, -0.296883,
		42.736691, 31.961927, 33.619717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052711, 31.519739, 33.329300>,  <42.068703, 31.986547, 33.827534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052711, 31.519739, 33.329300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450886, 31.541260, 33.360821>,  <42.689793, 31.554173, 33.379734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450886, 31.541260, 33.360821>,  <42.052711, 31.519739, 33.329300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450886, 31.541260, 33.360821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079124, -0.926995, -0.366633,
		0.053320, 0.371195, -0.927023,
		0.995438, 0.053801, 0.078798,
		42.749516, 31.557400, 33.384460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294960, 31.229698, 32.655174>,  <42.052711, 31.519739, 33.329300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294960, 31.229698, 32.655174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542450, 31.191416, 32.967079>,  <42.690945, 31.168446, 33.154221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542450, 31.191416, 32.967079>,  <42.294960, 31.229698, 32.655174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542450, 31.191416, 32.967079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091270, -0.977073, -0.192347,
		0.780291, 0.190178, -0.595801,
		0.618721, -0.095707, 0.779759,
		42.728065, 31.162704, 33.201008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796051, 30.721197, 32.464317>,  <42.294960, 31.229698, 32.655174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796051, 30.721197, 32.464317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851685, 30.743956, 32.859776>,  <42.885063, 30.757610, 33.097050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851685, 30.743956, 32.859776>,  <42.796051, 30.721197, 32.464317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851685, 30.743956, 32.859776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099345, -0.994113, 0.043235,
		0.985285, 0.092203, -0.143917,
		0.139084, 0.056896, 0.988645,
		42.893410, 30.761024, 33.156368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300335, 30.321571, 32.502403>,  <42.796051, 30.721197, 32.464317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300335, 30.321571, 32.502403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141323, 30.332504, 32.869278>,  <43.045918, 30.339064, 33.089401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141323, 30.332504, 32.869278>,  <43.300335, 30.321571, 32.502403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141323, 30.332504, 32.869278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111695, -0.990682, 0.077935,
		0.910767, 0.133426, 0.390770,
		-0.397527, 0.027334, 0.917183,
		43.022064, 30.340704, 33.144432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716179, 29.874708, 32.927265>,  <43.300335, 30.321571, 32.502403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716179, 29.874708, 32.927265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375408, 29.905329, 33.134476>,  <43.170944, 29.923700, 33.258804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375408, 29.905329, 33.134476>,  <43.716179, 29.874708, 32.927265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375408, 29.905329, 33.134476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070398, -0.997020, 0.031558,
		0.518900, -0.009583, 0.854781,
		-0.851931, 0.076551, 0.518028,
		43.119827, 29.928293, 33.289883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705975, 29.464731, 33.612911>,  <43.716179, 29.874708, 32.927265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705975, 29.464731, 33.612911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311192, 29.505129, 33.562759>,  <43.074322, 29.529367, 33.532669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311192, 29.505129, 33.562759>,  <43.705975, 29.464731, 33.612911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311192, 29.505129, 33.562759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131016, -0.956431, 0.260911,
		-0.093563, 0.273933, 0.957187,
		-0.986955, 0.100995, -0.125376,
		43.015106, 29.535427, 33.525146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294186, 29.218973, 34.195755>,  <43.705975, 29.464731, 33.612911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294186, 29.218973, 34.195755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014622, 29.205130, 33.910007>,  <42.846882, 29.196823, 33.738560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014622, 29.205130, 33.910007>,  <43.294186, 29.218973, 34.195755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014622, 29.205130, 33.910007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213793, -0.943050, 0.254851,
		-0.682509, 0.330846, 0.651708,
		-0.698909, -0.034607, -0.714372,
		42.804951, 29.194748, 33.695694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739265, 28.811632, 34.479279>,  <43.294186, 29.218973, 34.195755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739265, 28.811632, 34.479279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668621, 28.803377, 34.085651>,  <42.626236, 28.798424, 33.849476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668621, 28.803377, 34.085651>,  <42.739265, 28.811632, 34.479279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668621, 28.803377, 34.085651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491240, -0.864515, 0.106290,
		-0.852932, 0.502183, 0.142543,
		-0.176607, -0.020636, -0.984065,
		42.615639, 28.797186, 33.790432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047138, 28.687304, 34.425076>,  <42.739265, 28.811632, 34.479279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047138, 28.687304, 34.425076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235386, 28.579700, 34.088943>,  <42.348335, 28.515139, 33.887264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235386, 28.579700, 34.088943>,  <42.047138, 28.687304, 34.425076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235386, 28.579700, 34.088943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498924, -0.866644, -0.001982,
		-0.727734, 0.420194, -0.542071,
		0.470615, -0.269010, -0.840330,
		42.376572, 28.498997, 33.836845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525517, 28.404213, 33.950718>,  <42.047138, 28.687304, 34.425076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525517, 28.404213, 33.950718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872955, 28.250486, 33.825603>,  <42.081421, 28.158251, 33.750534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872955, 28.250486, 33.825603>,  <41.525517, 28.404213, 33.950718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872955, 28.250486, 33.825603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448623, -0.877966, -0.167071,
		-0.210407, 0.285441, -0.935015,
		0.868600, -0.384316, -0.312786,
		42.133533, 28.135191, 33.731770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234245, 27.897022, 33.442707>,  <41.525517, 28.404213, 33.950718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234245, 27.897022, 33.442707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611336, 27.784678, 33.514690>,  <41.837589, 27.717270, 33.557880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611336, 27.784678, 33.514690>,  <41.234245, 27.897022, 33.442707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611336, 27.784678, 33.514690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279665, -0.959547, -0.032529,
		0.181814, -0.019662, -0.983136,
		0.942725, -0.280863, 0.179957,
		41.894154, 27.700418, 33.568676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432976, 27.271416, 32.998844>,  <41.234245, 27.897022, 33.442707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432976, 27.271416, 32.998844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707821, 27.248642, 33.288570>,  <41.872730, 27.234978, 33.462406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707821, 27.248642, 33.288570>,  <41.432976, 27.271416, 32.998844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707821, 27.248642, 33.288570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103307, -0.994452, 0.019833,
		0.719165, -0.088454, -0.689187,
		0.687117, -0.056935, 0.724312,
		41.913956, 27.231562, 33.505863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994465, 26.786612, 32.767021>,  <41.432976, 27.271416, 32.998844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994465, 26.786612, 32.767021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927063, 26.826933, 33.159233>,  <41.886620, 26.851126, 33.394562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927063, 26.826933, 33.159233>,  <41.994465, 26.786612, 32.767021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927063, 26.826933, 33.159233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130671, -0.988262, 0.079141,
		0.977001, -0.114791, 0.179703,
		-0.168509, 0.100802, 0.980532,
		41.876511, 26.857174, 33.453392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516792, 26.281685, 33.120266>,  <41.994465, 26.786612, 32.767021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516792, 26.281685, 33.120266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190735, 26.372400, 33.333473>,  <41.995102, 26.426828, 33.461399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190735, 26.372400, 33.333473>,  <42.516792, 26.281685, 33.120266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190735, 26.372400, 33.333473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134525, -0.969131, 0.206612,
		0.563423, 0.096714, 0.820488,
		-0.815143, 0.226786, 0.533020,
		41.946194, 26.440435, 33.493378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635345, 26.046009, 33.748901>,  <42.516792, 26.281685, 33.120266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635345, 26.046009, 33.748901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241665, 26.070267, 33.682369>,  <42.005455, 26.084822, 33.642448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241665, 26.070267, 33.682369>,  <42.635345, 26.046009, 33.748901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241665, 26.070267, 33.682369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113882, -0.936199, 0.332508,
		-0.135552, 0.346198, 0.928317,
		-0.984203, 0.060646, -0.166329,
		41.946404, 26.088461, 33.632469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179314, 26.216700, 34.173679>,  <42.635345, 26.046009, 33.748901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179314, 26.216700, 34.173679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223164, 25.821083, 34.134125>,  <43.249474, 25.583714, 34.110390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223164, 25.821083, 34.134125>,  <43.179314, 26.216700, 34.173679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223164, 25.821083, 34.134125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970520, 0.127992, -0.204228,
		0.214647, -0.073586, 0.973916,
		0.109625, -0.989042, -0.098890,
		43.256050, 25.524370, 34.104458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812534, 25.986357, 34.660995>,  <43.179314, 26.216700, 34.173679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812534, 25.986357, 34.660995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730045, 25.739702, 34.357094>,  <43.680553, 25.591709, 34.174751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730045, 25.739702, 34.357094>,  <43.812534, 25.986357, 34.660995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730045, 25.739702, 34.357094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973376, -0.049872, -0.223723,
		0.100065, -0.785666, 0.610504,
		-0.206219, -0.616637, -0.759758,
		43.668179, 25.554710, 34.129166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040302, 25.202360, 34.688389>,  <43.812534, 25.986357, 34.660995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040302, 25.202360, 34.688389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032764, 25.365326, 34.323170>,  <44.028240, 25.463106, 34.104038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032764, 25.365326, 34.323170>,  <44.040302, 25.202360, 34.688389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032764, 25.365326, 34.323170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968063, -0.220907, -0.118556,
		-0.250000, -0.886123, -0.390239,
		-0.018848, 0.407415, -0.913049,
		44.027111, 25.487551, 34.049255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367924, 25.339680, 35.410671>,  <44.040302, 25.202360, 34.688389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367924, 25.339680, 35.410671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489632, 25.209579, 35.052536>,  <44.562656, 25.131519, 34.837654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489632, 25.209579, 35.052536>,  <44.367924, 25.339680, 35.410671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489632, 25.209579, 35.052536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585020, 0.805573, -0.093828,
		0.751777, -0.495241, 0.435393,
		0.304274, -0.325252, -0.895337,
		44.580914, 25.112003, 34.783936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123688, 25.318430, 35.370590>,  <44.367924, 25.339680, 35.410671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.123688, 25.318430, 35.370590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944283, 25.357924, 35.015266>,  <44.836639, 25.381620, 34.802074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944283, 25.357924, 35.015266>,  <45.123688, 25.318430, 35.370590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944283, 25.357924, 35.015266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462007, 0.876408, -0.135860,
		0.765105, -0.471339, -0.438697,
		-0.448514, 0.098734, -0.888306,
		44.809727, 25.387543, 34.748775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616451, 25.555952, 34.929585>,  <45.123688, 25.318430, 35.370590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616451, 25.555952, 34.929585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257790, 25.683598, 34.806831>,  <45.042591, 25.760185, 34.733181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257790, 25.683598, 34.806831>,  <45.616451, 25.555952, 34.929585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.257790, 25.683598, 34.806831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370303, 0.920491, -0.124787,
		0.242661, -0.225530, -0.943532,
		-0.896656, 0.319111, -0.306882,
		44.988792, 25.779331, 34.714767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642818, 26.183378, 34.459179>,  <45.616451, 25.555952, 34.929585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642818, 26.183378, 34.459179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248028, 26.201189, 34.521015>,  <45.011154, 26.211876, 34.558117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248028, 26.201189, 34.521015>,  <45.642818, 26.183378, 34.459179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248028, 26.201189, 34.521015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010076, 0.941933, -0.335649,
		-0.160557, -0.332835, -0.929216,
		-0.986975, 0.044528, 0.154587,
		44.951935, 26.214548, 34.567390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490219, 26.613083, 33.960178>,  <45.642818, 26.183378, 34.459179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490219, 26.613083, 33.960178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201508, 26.601717, 34.236794>,  <45.028278, 26.594896, 34.402763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201508, 26.601717, 34.236794>,  <45.490219, 26.613083, 33.960178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201508, 26.601717, 34.236794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171426, 0.975364, -0.138844,
		-0.670555, -0.218762, -0.708872,
		-0.721782, -0.028416, 0.691537,
		44.984974, 26.593193, 34.444256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894505, 27.027967, 33.763691>,  <45.490219, 26.613083, 33.960178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894505, 27.027967, 33.763691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834507, 26.993692, 34.157677>,  <44.798508, 26.973127, 34.394070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834507, 26.993692, 34.157677>,  <44.894505, 27.027967, 33.763691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834507, 26.993692, 34.157677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148703, 0.986860, 0.063208,
		-0.977440, -0.136987, -0.160764,
		-0.149993, -0.085688, 0.984967,
		44.789509, 26.967985, 34.453167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293018, 27.406677, 33.962414>,  <44.894505, 27.027967, 33.763691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293018, 27.406677, 33.962414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481350, 27.377966, 34.314133>,  <44.594349, 27.360739, 34.525166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481350, 27.377966, 34.314133>,  <44.293018, 27.406677, 33.962414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481350, 27.377966, 34.314133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137955, 0.978434, 0.153738,
		-0.871370, -0.193689, 0.450775,
		0.470831, -0.071776, 0.879298,
		44.622601, 27.356434, 34.577923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996319, 27.973734, 34.364182>,  <44.293018, 27.406677, 33.962414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996319, 27.973734, 34.364182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350311, 27.870083, 34.518929>,  <44.562706, 27.807892, 34.611778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350311, 27.870083, 34.518929>,  <43.996319, 27.973734, 34.364182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350311, 27.870083, 34.518929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116717, 0.927768, 0.354434,
		-0.450768, -0.268512, 0.851299,
		0.884978, -0.259129, 0.386868,
		44.615803, 27.792345, 34.634991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002361, 28.361200, 34.980274>,  <43.996319, 27.973734, 34.364182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002361, 28.361200, 34.980274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382130, 28.255098, 34.913063>,  <44.609993, 28.191437, 34.872734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382130, 28.255098, 34.913063>,  <44.002361, 28.361200, 34.980274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382130, 28.255098, 34.913063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303443, 0.912666, 0.273795,
		0.080730, -0.310935, 0.946996,
		0.949423, -0.265256, -0.168030,
		44.666958, 28.175522, 34.862656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380165, 28.536978, 35.610004>,  <44.002361, 28.361200, 34.980274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380165, 28.536978, 35.610004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669994, 28.514011, 35.335285>,  <44.843891, 28.500231, 35.170452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669994, 28.514011, 35.335285>,  <44.380165, 28.536978, 35.610004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669994, 28.514011, 35.335285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254445, 0.948409, 0.189152,
		0.640508, -0.311807, 0.701801,
		0.724573, -0.057417, -0.686802,
		44.887367, 28.496786, 35.129246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929806, 28.894453, 35.947376>,  <44.380165, 28.536978, 35.610004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929806, 28.894453, 35.947376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048370, 28.923889, 35.566486>,  <45.119507, 28.941551, 35.337952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048370, 28.923889, 35.566486>,  <44.929806, 28.894453, 35.947376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048370, 28.923889, 35.566486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123578, 0.985690, 0.114645,
		0.947032, -0.151656, 0.283074,
		0.296410, 0.073590, -0.952221,
		45.137295, 28.945967, 35.280819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561295, 29.278744, 35.895462>,  <44.929806, 28.894453, 35.947376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561295, 29.278744, 35.895462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435677, 29.332350, 35.519501>,  <45.360306, 29.364513, 35.293922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435677, 29.332350, 35.519501>,  <45.561295, 29.278744, 35.895462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435677, 29.332350, 35.519501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210217, 0.975230, 0.068815,
		0.925844, -0.175973, -0.334435,
		-0.314041, 0.134016, -0.939903,
		45.341465, 29.372555, 35.237530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068703, 29.632046, 35.493145>,  <45.561295, 29.278744, 35.895462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068703, 29.632046, 35.493145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743465, 29.703367, 35.271484>,  <45.548325, 29.746161, 35.138489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743465, 29.703367, 35.271484>,  <46.068703, 29.632046, 35.493145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743465, 29.703367, 35.271484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227067, 0.973676, -0.019878,
		0.536021, -0.141993, -0.832178,
		-0.813094, 0.178305, -0.554153,
		45.499538, 29.756859, 35.105240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233654, 30.204895, 35.050182>,  <46.068703, 29.632046, 35.493145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233654, 30.204895, 35.050182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834366, 30.181126, 35.052006>,  <45.594791, 30.166864, 35.053101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.834366, 30.181126, 35.052006>,  <46.233654, 30.204895, 35.050182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834366, 30.181126, 35.052006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059274, 0.981827, -0.180284,
		0.006234, -0.180234, -0.983604,
		-0.998223, -0.059426, 0.004562,
		45.534901, 30.163298, 35.053375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008636, 30.642540, 34.417141>,  <46.233654, 30.204895, 35.050182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008636, 30.642540, 34.417141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700626, 30.613848, 34.670731>,  <45.515820, 30.596632, 34.822884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700626, 30.613848, 34.670731>,  <46.008636, 30.642540, 34.417141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700626, 30.613848, 34.670731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083314, 0.996456, 0.011550,
		-0.632552, -0.043925, -0.773272,
		-0.770024, -0.071730, 0.633970,
		45.469620, 30.592329, 34.860920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358040, 31.017557, 34.108692>,  <46.008636, 30.642540, 34.417141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358040, 31.017557, 34.108692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336735, 31.005981, 34.507957>,  <45.323952, 30.999037, 34.747517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336735, 31.005981, 34.507957>,  <45.358040, 31.017557, 34.108692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336735, 31.005981, 34.507957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177824, 0.983878, 0.019034,
		-0.982620, -0.176483, -0.057551,
		-0.053264, -0.028937, 0.998161,
		45.320755, 30.997301, 34.807407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806042, 31.552235, 34.217739>,  <45.358040, 31.017557, 34.108692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806042, 31.552235, 34.217739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979969, 31.496269, 34.573574>,  <45.084324, 31.462690, 34.787075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979969, 31.496269, 34.573574>,  <44.806042, 31.552235, 34.217739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979969, 31.496269, 34.573574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140860, 0.965129, 0.220647,
		-0.889434, -0.221248, 0.399946,
		0.434817, -0.139915, 0.889583,
		45.110413, 31.454294, 34.840450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371765, 31.752022, 34.687305>,  <44.806042, 31.552235, 34.217739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371765, 31.752022, 34.687305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.722878, 31.772478, 34.877834>,  <44.933544, 31.784752, 34.992153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.722878, 31.772478, 34.877834>,  <44.371765, 31.752022, 34.687305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722878, 31.772478, 34.877834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171195, 0.962117, 0.212187,
		-0.447429, -0.267799, 0.853283,
		0.877781, 0.051139, 0.476325,
		44.986214, 31.787819, 35.020733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167774, 32.133350, 35.283230>,  <44.371765, 31.752022, 34.687305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167774, 32.133350, 35.283230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565697, 32.171764, 35.269722>,  <44.804451, 32.194813, 35.261620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565697, 32.171764, 35.269722>,  <44.167774, 32.133350, 35.283230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565697, 32.171764, 35.269722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090317, 0.985682, 0.142385,
		0.046957, -0.138596, 0.989235,
		0.994806, 0.096031, -0.033767,
		44.864140, 32.200573, 35.259590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302094, 32.568317, 35.810936>,  <44.167774, 32.133350, 35.283230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302094, 32.568317, 35.810936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621281, 32.575821, 35.569973>,  <44.812794, 32.580322, 35.425396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621281, 32.575821, 35.569973>,  <44.302094, 32.568317, 35.810936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621281, 32.575821, 35.569973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068547, 0.990205, 0.121637,
		0.598787, -0.138356, 0.788867,
		0.797969, 0.018760, -0.602406,
		44.860672, 32.581448, 35.389252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705688, 33.164463, 36.112579>,  <44.302094, 32.568317, 35.810936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705688, 33.164463, 36.112579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893005, 33.080620, 35.769241>,  <45.005394, 33.030312, 35.563236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893005, 33.080620, 35.769241>,  <44.705688, 33.164463, 36.112579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893005, 33.080620, 35.769241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172701, 0.974430, -0.143737,
		0.866531, -0.080927, 0.492519,
		0.468293, -0.209612, -0.858350,
		45.033493, 33.017735, 35.511738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410141, 33.528782, 36.114166>,  <44.705688, 33.164463, 36.112579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410141, 33.528782, 36.114166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289886, 33.476654, 35.736248>,  <45.217731, 33.445377, 35.509499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289886, 33.476654, 35.736248>,  <45.410141, 33.528782, 36.114166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289886, 33.476654, 35.736248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272356, 0.937640, -0.215996,
		0.914024, -0.322256, -0.246398,
		-0.300638, -0.130318, -0.944793,
		45.199696, 33.437557, 35.452808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.981064, 33.776875, 35.725666>,  <45.410141, 33.528782, 36.114166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.981064, 33.776875, 35.725666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643116, 33.807110, 35.513821>,  <45.440350, 33.825249, 35.386715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643116, 33.807110, 35.513821>,  <45.981064, 33.776875, 35.725666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643116, 33.807110, 35.513821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175900, 0.974175, -0.141575,
		0.505234, -0.212770, -0.836342,
		-0.844866, 0.075584, -0.529612,
		45.389656, 33.829784, 35.354939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167614, 34.104305, 35.209743>,  <45.981064, 33.776875, 35.725666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167614, 34.104305, 35.209743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775570, 34.176830, 35.242008>,  <45.540344, 34.220345, 35.261368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775570, 34.176830, 35.242008>,  <46.167614, 34.104305, 35.209743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775570, 34.176830, 35.242008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169394, 0.976134, -0.135898,
		-0.103374, -0.119532, -0.987434,
		-0.980112, 0.181314, 0.080659,
		45.481537, 34.231224, 35.266205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906288, 34.513027, 34.599007>,  <46.167614, 34.104305, 35.209743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906288, 34.513027, 34.599007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649513, 34.575932, 34.899189>,  <45.495449, 34.613674, 35.079300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.649513, 34.575932, 34.899189>,  <45.906288, 34.513027, 34.599007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649513, 34.575932, 34.899189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033939, 0.971954, -0.232709,
		-0.766005, -0.174855, -0.618596,
		-0.641938, 0.157262, 0.750456,
		45.456932, 34.623112, 35.124325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499077, 34.093922, 34.380562>,  <45.906288, 34.513027, 34.599007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499077, 34.093922, 34.380562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683842, 34.335556, 34.120804>,  <46.794701, 34.480537, 33.964951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683842, 34.335556, 34.120804>,  <46.499077, 34.093922, 34.380562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683842, 34.335556, 34.120804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193225, 0.783139, 0.591064,
		0.865624, -0.147538, 0.478465,
		0.461909, 0.604090, -0.649396,
		46.822414, 34.516785, 33.925983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.994576, 34.375526, 34.718708>,  <46.499077, 34.093922, 34.380562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.994576, 34.375526, 34.718708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.897430, 34.633389, 34.428761>,  <46.839142, 34.788105, 34.254791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.897430, 34.633389, 34.428761>,  <46.994576, 34.375526, 34.718708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.897430, 34.633389, 34.428761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325026, 0.649968, 0.686949,
		0.913988, 0.402438, 0.051675,
		-0.242867, 0.644659, -0.724866,
		46.824570, 34.826786, 34.211300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.003685, 35.074131, 35.015461>,  <46.994576, 34.375526, 34.718708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.003685, 35.074131, 35.015461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740742, 35.063660, 34.714214>,  <46.582973, 35.057377, 34.533466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740742, 35.063660, 34.714214>,  <47.003685, 35.074131, 35.015461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740742, 35.063660, 34.714214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416487, 0.845513, 0.334135,
		0.628025, 0.533313, -0.566712,
		-0.657361, -0.026183, -0.753121,
		46.543533, 35.055805, 34.488277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.666321, 34.606625, 35.017456>,  <47.003685, 35.074131, 35.015461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.666321, 34.606625, 35.017456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557343, 34.988514, 34.969673>,  <47.491955, 35.217648, 34.941006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557343, 34.988514, 34.969673>,  <47.666321, 34.606625, 35.017456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.557343, 34.988514, 34.969673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954634, 0.283728, 0.090395,
		0.120195, -0.089409, -0.988716,
		-0.272445, 0.954727, -0.119456,
		47.475609, 35.274933, 34.933838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.925377, 34.887329, 44.437878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.532608, 34.820072, 44.403084>,  <33.296947, 34.779716, 44.382210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.532608, 34.820072, 44.403084>,  <33.925377, 34.887329, 44.437878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532608, 34.820072, 44.403084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048533, 0.220527, -0.974173,
		0.182978, -0.960779, -0.208380,
		-0.981918, -0.168139, -0.086981,
		33.238033, 34.769630, 44.376987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809879, 34.543606, 43.797001>,  <33.925377, 34.887329, 44.437878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809879, 34.543606, 43.797001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.442963, 34.679230, 43.880535>,  <33.222813, 34.760605, 43.930656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.442963, 34.679230, 43.880535>,  <33.809879, 34.543606, 43.797001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442963, 34.679230, 43.880535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176349, 0.124329, -0.976444,
		-0.357039, -0.932513, -0.054252,
		-0.917292, 0.339061, 0.208838,
		33.167774, 34.780949, 43.943188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422253, 34.354858, 43.212524>,  <33.809879, 34.543606, 43.797001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422253, 34.354858, 43.212524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.188873, 34.611362, 43.411873>,  <33.048843, 34.765266, 43.531483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.188873, 34.611362, 43.411873>,  <33.422253, 34.354858, 43.212524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188873, 34.611362, 43.411873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289665, 0.408972, -0.865353,
		-0.758734, -0.649252, -0.052866,
		-0.583453, 0.641259, 0.498366,
		33.013836, 34.803741, 43.561382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853317, 34.420841, 42.821186>,  <33.422253, 34.354858, 43.212524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853317, 34.420841, 42.821186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.825558, 34.756622, 43.036781>,  <32.808903, 34.958092, 43.166138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.825558, 34.756622, 43.036781>,  <32.853317, 34.420841, 42.821186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825558, 34.756622, 43.036781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081476, 0.533713, -0.841732,
		-0.994256, -0.102327, 0.031358,
		-0.069395, 0.839452, 0.538985,
		32.804741, 35.008457, 43.198479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146118, 34.706375, 42.667534>,  <32.853317, 34.420841, 42.821186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146118, 34.706375, 42.667534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.366112, 35.005875, 42.815529>,  <32.498108, 35.185574, 42.904327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.366112, 35.005875, 42.815529>,  <32.146118, 34.706375, 42.667534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366112, 35.005875, 42.815529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086543, 0.491713, -0.866446,
		-0.830679, 0.444512, 0.335233,
		0.549984, 0.748751, 0.369986,
		32.531105, 35.230499, 42.926525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836323, 35.319447, 42.420841>,  <32.146118, 34.706375, 42.667534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836323, 35.319447, 42.420841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.219162, 35.411160, 42.491711>,  <32.448868, 35.466187, 42.534233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.219162, 35.411160, 42.491711>,  <31.836323, 35.319447, 42.420841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219162, 35.411160, 42.491711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034416, 0.517175, -0.855187,
		-0.287706, 0.824598, 0.487097,
		0.957100, 0.229279, 0.177174,
		32.506290, 35.479942, 42.544865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847572, 35.995518, 42.154995>,  <31.836323, 35.319447, 42.420841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847572, 35.995518, 42.154995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.239754, 35.918385, 42.170624>,  <32.475063, 35.872105, 42.180000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.239754, 35.918385, 42.170624>,  <31.847572, 35.995518, 42.154995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239754, 35.918385, 42.170624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136736, 0.524997, -0.840048,
		0.141476, 0.828971, 0.541102,
		0.980453, -0.192835, 0.039075,
		32.533890, 35.860535, 42.182346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164272, 36.634678, 41.967484>,  <31.847572, 35.995518, 42.154995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164272, 36.634678, 41.967484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.439064, 36.352184, 41.899025>,  <32.603939, 36.182690, 41.857948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.439064, 36.352184, 41.899025>,  <32.164272, 36.634678, 41.967484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439064, 36.352184, 41.899025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206236, 0.415327, -0.885986,
		0.696796, 0.573358, 0.430972,
		0.686981, -0.706233, -0.171151,
		32.645157, 36.140316, 41.847679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716755, 37.006283, 41.736389>,  <32.164272, 36.634678, 41.967484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716755, 37.006283, 41.736389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.769669, 36.632435, 41.604336>,  <32.801418, 36.408127, 41.525105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.769669, 36.632435, 41.604336>,  <32.716755, 37.006283, 41.736389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769669, 36.632435, 41.604336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156982, 0.348608, -0.924029,
		0.978702, 0.070413, 0.192834,
		0.132287, -0.934620, -0.330129,
		32.809353, 36.352047, 41.505299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280903, 37.048832, 41.257351>,  <32.716755, 37.006283, 41.736389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280903, 37.048832, 41.257351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.118378, 36.693535, 41.171619>,  <33.020863, 36.480358, 41.120182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.118378, 36.693535, 41.171619>,  <33.280903, 37.048832, 41.257351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118378, 36.693535, 41.171619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207318, 0.138829, -0.968373,
		0.889904, -0.437896, 0.127740,
		-0.406312, -0.888242, -0.214328,
		32.996483, 36.427063, 41.107323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778103, 36.646988, 40.714638>,  <33.280903, 37.048832, 41.257351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778103, 36.646988, 40.714638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.421997, 36.470280, 40.670319>,  <33.208336, 36.364254, 40.643726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.421997, 36.470280, 40.670319>,  <33.778103, 36.646988, 40.714638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421997, 36.470280, 40.670319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163988, -0.083956, -0.982883,
		0.424905, -0.893192, 0.147187,
		-0.890261, -0.441769, -0.110799,
		33.154919, 36.337749, 40.637077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830467, 35.960773, 40.341953>,  <33.778103, 36.646988, 40.714638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830467, 35.960773, 40.341953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.451138, 36.074921, 40.286461>,  <33.223541, 36.143410, 40.253166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.451138, 36.074921, 40.286461>,  <33.830467, 35.960773, 40.341953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451138, 36.074921, 40.286461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083293, -0.198014, -0.976654,
		-0.306175, -0.937740, 0.164012,
		-0.948324, 0.285366, -0.138734,
		33.166641, 36.160530, 40.244843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618233, 35.459316, 39.917336>,  <33.830467, 35.960773, 40.341953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618233, 35.459316, 39.917336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.357922, 35.761551, 39.887486>,  <33.201736, 35.942894, 39.869576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.357922, 35.761551, 39.887486>,  <33.618233, 35.459316, 39.917336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357922, 35.761551, 39.887486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194209, 0.070637, -0.978414,
		-0.734010, -0.651224, -0.192711,
		-0.650779, 0.755591, -0.074625,
		33.162689, 35.988228, 39.865097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040348, 35.309505, 39.479259>,  <33.618233, 35.459316, 39.917336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040348, 35.309505, 39.479259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.088478, 35.706070, 39.458759>,  <33.117355, 35.944008, 39.446461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.088478, 35.706070, 39.458759>,  <33.040348, 35.309505, 39.479259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088478, 35.706070, 39.458759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165376, -0.070922, -0.983677,
		-0.978863, 0.109885, -0.172489,
		0.120325, 0.991411, -0.051251,
		33.124577, 36.003494, 39.443382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587650, 35.630699, 38.943069>,  <33.040348, 35.309505, 39.479259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587650, 35.630699, 38.943069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.893318, 35.886765, 38.974659>,  <33.076717, 36.040405, 38.993614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.893318, 35.886765, 38.974659>,  <32.587650, 35.630699, 38.943069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893318, 35.886765, 38.974659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196394, -0.114299, -0.973840,
		-0.614394, 0.759686, -0.213069,
		0.764166, 0.640167, 0.078973,
		33.122566, 36.078815, 38.998352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606361, 35.853504, 38.256584>,  <32.587650, 35.630699, 38.943069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606361, 35.853504, 38.256584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.927994, 36.021355, 38.425041>,  <33.120975, 36.122066, 38.526115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.927994, 36.021355, 38.425041>,  <32.606361, 35.853504, 38.256584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927994, 36.021355, 38.425041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298515, 0.327634, -0.896406,
		-0.514136, 0.846504, 0.138181,
		0.804085, 0.419626, 0.421143,
		33.169220, 36.147243, 38.551384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641010, 36.590084, 38.088139>,  <32.606361, 35.853504, 38.256584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641010, 36.590084, 38.088139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.017166, 36.484238, 38.173607>,  <33.242859, 36.420731, 38.224888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.017166, 36.484238, 38.173607>,  <32.641010, 36.590084, 38.088139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017166, 36.484238, 38.173607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319528, 0.472114, -0.821590,
		0.116524, 0.840886, 0.528520,
		0.940385, -0.264611, 0.213674,
		33.299282, 36.404854, 38.237709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034214, 37.128567, 37.895622>,  <32.641010, 36.590084, 38.088139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034214, 37.128567, 37.895622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.307671, 36.837227, 37.914127>,  <33.471745, 36.662422, 37.925232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.307671, 36.837227, 37.914127>,  <33.034214, 37.128567, 37.895622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307671, 36.837227, 37.914127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394565, 0.315531, -0.862994,
		0.613961, 0.608236, 0.503091,
		0.683645, -0.728347, 0.046265,
		33.512764, 36.618721, 37.928005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704960, 37.489872, 37.800892>,  <33.034214, 37.128567, 37.895622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704960, 37.489872, 37.800892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.720894, 37.098465, 37.719975>,  <33.730453, 36.863621, 37.671425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.720894, 37.098465, 37.719975>,  <33.704960, 37.489872, 37.800892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720894, 37.098465, 37.719975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421204, 0.200028, -0.884633,
		0.906091, -0.049971, 0.420122,
		0.039831, -0.978515, -0.202292,
		33.732841, 36.804909, 37.659286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390354, 37.335182, 37.485638>,  <33.704960, 37.489872, 37.800892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390354, 37.335182, 37.485638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.165779, 37.022766, 37.376263>,  <34.031033, 36.835316, 37.310638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.165779, 37.022766, 37.376263>,  <34.390354, 37.335182, 37.485638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165779, 37.022766, 37.376263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402377, 0.031079, -0.914946,
		0.723104, -0.623712, 0.296822,
		-0.561439, -0.781036, -0.273441,
		33.997349, 36.788456, 37.294231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809338, 36.901875, 37.182861>,  <34.390354, 37.335182, 37.485638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809338, 36.901875, 37.182861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442657, 36.805420, 37.055412>,  <34.222649, 36.747547, 36.978943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442657, 36.805420, 37.055412>,  <34.809338, 36.901875, 37.182861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442657, 36.805420, 37.055412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343775, -0.069488, -0.936478,
		0.203682, -0.967999, 0.146598,
		-0.916696, -0.241141, -0.318621,
		34.167648, 36.733078, 36.959827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893665, 37.281464, 36.531013>,  <34.809338, 36.901875, 37.182861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893665, 37.281464, 36.531013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204399, 37.494312, 36.396328>,  <35.390839, 37.622021, 36.315517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.204399, 37.494312, 36.396328>,  <34.893665, 37.281464, 36.531013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204399, 37.494312, 36.396328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419373, -0.038310, 0.907005,
		0.469736, -0.845802, -0.252917,
		0.776836, 0.532119, -0.336711,
		35.437450, 37.653950, 36.295315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436256, 36.849545, 36.533463>,  <34.893665, 37.281464, 36.531013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436256, 36.849545, 36.533463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568264, 37.226151, 36.560688>,  <35.647469, 37.452114, 36.577023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568264, 37.226151, 36.560688>,  <35.436256, 36.849545, 36.533463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568264, 37.226151, 36.560688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269046, -0.162930, 0.949246,
		0.904823, -0.294952, -0.307081,
		0.330015, 0.941518, 0.068067,
		35.667267, 37.508606, 36.581108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011829, 36.801762, 36.925072>,  <35.436256, 36.849545, 36.533463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011829, 36.801762, 36.925072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.926540, 37.189198, 36.976246>,  <35.875366, 37.421661, 37.006950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.926540, 37.189198, 36.976246>,  <36.011829, 36.801762, 36.925072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926540, 37.189198, 36.976246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452152, -0.018248, 0.891754,
		0.866080, 0.247985, -0.434060,
		-0.213221, 0.968592, 0.127931,
		35.862576, 37.479774, 37.014626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574131, 36.984386, 37.272499>,  <36.011829, 36.801762, 36.925072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574131, 36.984386, 37.272499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319767, 37.289505, 37.319427>,  <36.167149, 37.472576, 37.347584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319767, 37.289505, 37.319427>,  <36.574131, 36.984386, 37.272499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319767, 37.289505, 37.319427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363085, 0.161549, 0.917644,
		0.681018, 0.626139, -0.379689,
		-0.635912, 0.762792, 0.117324,
		36.128994, 37.518341, 37.354626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928982, 37.451351, 37.625717>,  <36.574131, 36.984386, 37.272499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928982, 37.451351, 37.625717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552410, 37.556652, 37.710003>,  <36.326466, 37.619835, 37.760574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552410, 37.556652, 37.710003>,  <36.928982, 37.451351, 37.625717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552410, 37.556652, 37.710003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219874, 0.005489, 0.975513,
		0.255653, 0.964710, -0.063051,
		-0.941434, 0.263256, 0.210711,
		36.269981, 37.635628, 37.773216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063622, 37.936867, 38.112648>,  <36.928982, 37.451351, 37.625717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063622, 37.936867, 38.112648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690975, 37.795174, 38.145168>,  <36.467388, 37.710159, 38.164680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690975, 37.795174, 38.145168>,  <37.063622, 37.936867, 38.112648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690975, 37.795174, 38.145168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146583, -0.161522, 0.975922,
		-0.332569, 0.921103, 0.202401,
		-0.931617, -0.354230, 0.081301,
		36.411491, 37.688904, 38.169559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911995, 38.173878, 38.805225>,  <37.063622, 37.936867, 38.112648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911995, 38.173878, 38.805225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625122, 37.909527, 38.716778>,  <36.452999, 37.750916, 38.663712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625122, 37.909527, 38.716778>,  <36.911995, 38.173878, 38.805225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625122, 37.909527, 38.716778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124624, -0.190552, 0.973735,
		-0.685653, 0.725901, 0.054299,
		-0.717181, -0.660877, -0.221117,
		36.409969, 37.711266, 38.650444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463730, 38.370155, 39.318264>,  <36.911995, 38.173878, 38.805225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463730, 38.370155, 39.318264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361160, 38.003384, 39.195957>,  <36.299618, 37.783321, 39.122574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361160, 38.003384, 39.195957>,  <36.463730, 38.370155, 39.318264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361160, 38.003384, 39.195957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318678, -0.218452, 0.922347,
		-0.912518, 0.333956, -0.236187,
		-0.256427, -0.916926, -0.305765,
		36.284233, 37.728306, 39.104229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715897, 38.244785, 39.484905>,  <36.463730, 38.370155, 39.318264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715897, 38.244785, 39.484905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.890663, 37.885456, 39.503330>,  <35.995522, 37.669857, 39.514385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.890663, 37.885456, 39.503330>,  <35.715897, 38.244785, 39.484905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890663, 37.885456, 39.503330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422956, -0.159977, 0.891917,
		-0.793859, -0.409176, -0.449847,
		0.436917, -0.898322, 0.046064,
		36.021740, 37.615959, 39.517151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203697, 37.724976, 39.596107>,  <35.715897, 38.244785, 39.484905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203697, 37.724976, 39.596107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524109, 37.519230, 39.718597>,  <35.716354, 37.395782, 39.792091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524109, 37.519230, 39.718597>,  <35.203697, 37.724976, 39.596107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524109, 37.519230, 39.718597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459167, -0.199730, 0.865606,
		-0.384078, -0.833986, -0.396171,
		0.801031, -0.514368, 0.306227,
		35.764420, 37.364918, 39.810467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089897, 37.199005, 40.011700>,  <35.203697, 37.724976, 39.596107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089897, 37.199005, 40.011700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.483566, 37.170742, 40.076714>,  <35.719769, 37.153786, 40.115723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.483566, 37.170742, 40.076714>,  <35.089897, 37.199005, 40.011700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483566, 37.170742, 40.076714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176177, -0.290151, 0.940624,
		-0.019299, -0.954369, -0.298005,
		0.984169, -0.070655, 0.162538,
		35.778816, 37.149544, 40.125477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275993, 36.540733, 40.179024>,  <35.089897, 37.199005, 40.011700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275993, 36.540733, 40.179024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531826, 36.778614, 40.373863>,  <35.685326, 36.921341, 40.490768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531826, 36.778614, 40.373863>,  <35.275993, 36.540733, 40.179024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531826, 36.778614, 40.373863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224035, -0.461939, 0.858150,
		0.735352, -0.657985, -0.162215,
		0.639583, 0.594700, 0.487099,
		35.723701, 36.957024, 40.519993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554298, 36.180771, 40.787643>,  <35.275993, 36.540733, 40.179024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554298, 36.180771, 40.787643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657162, 36.549992, 40.902077>,  <35.718880, 36.771523, 40.970737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657162, 36.549992, 40.902077>,  <35.554298, 36.180771, 40.787643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657162, 36.549992, 40.902077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270120, -0.215580, 0.938382,
		0.927849, -0.318591, 0.193897,
		0.257159, 0.923052, 0.286083,
		35.734310, 36.826908, 40.987904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009853, 36.136147, 41.372108>,  <35.554298, 36.180771, 40.787643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009853, 36.136147, 41.372108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832237, 36.494457, 41.363945>,  <35.725670, 36.709442, 41.359047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832237, 36.494457, 41.363945>,  <36.009853, 36.136147, 41.372108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832237, 36.494457, 41.363945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087008, -0.020442, 0.995998,
		0.891774, 0.444034, 0.087017,
		-0.444036, 0.895777, -0.020405,
		35.699028, 36.763191, 41.357822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275967, 36.477947, 41.948620>,  <36.009853, 36.136147, 41.372108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275967, 36.477947, 41.948620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949718, 36.697979, 41.876873>,  <35.753967, 36.829998, 41.833824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949718, 36.697979, 41.876873>,  <36.275967, 36.477947, 41.948620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949718, 36.697979, 41.876873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219094, -0.006712, 0.975681,
		0.535496, 0.835087, 0.125992,
		-0.815624, 0.550077, -0.179368,
		35.705032, 36.863003, 41.823063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336422, 37.029705, 42.391045>,  <36.275967, 36.477947, 41.948620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336422, 37.029705, 42.391045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948219, 36.986328, 42.304920>,  <35.715298, 36.960300, 42.253246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948219, 36.986328, 42.304920>,  <36.336422, 37.029705, 42.391045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948219, 36.986328, 42.304920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184632, -0.239921, 0.953074,
		-0.155009, 0.964716, 0.212823,
		-0.970507, -0.108441, -0.215307,
		35.657066, 36.953796, 42.240330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941673, 37.491768, 42.864964>,  <36.336422, 37.029705, 42.391045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941673, 37.491768, 42.864964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676540, 37.216660, 42.746555>,  <35.517460, 37.051594, 42.675510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676540, 37.216660, 42.746555>,  <35.941673, 37.491768, 42.864964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676540, 37.216660, 42.746555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147184, -0.267959, 0.952121,
		-0.734163, 0.674664, 0.076382,
		-0.662829, -0.687770, -0.296025,
		35.477692, 37.010330, 42.657749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328835, 37.557735, 43.288528>,  <35.941673, 37.491768, 42.864964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328835, 37.557735, 43.288528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348251, 37.184166, 43.146866>,  <35.359901, 36.960022, 43.061867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348251, 37.184166, 43.146866>,  <35.328835, 37.557735, 43.288528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348251, 37.184166, 43.146866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079180, -0.357057, 0.930720,
		-0.995678, -0.017134, -0.091280,
		0.048539, -0.933926, -0.354157,
		35.362812, 36.903988, 43.040619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841011, 37.185574, 43.739632>,  <35.328835, 37.557735, 43.288528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841011, 37.185574, 43.739632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034954, 36.893215, 43.547504>,  <35.151321, 36.717800, 43.432228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034954, 36.893215, 43.547504>,  <34.841011, 37.185574, 43.739632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034954, 36.893215, 43.547504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275821, -0.648954, 0.709070,
		-0.829961, -0.211316, -0.516246,
		0.484858, -0.730892, -0.480322,
		35.180412, 36.673946, 43.403408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.428303, 36.550217, 43.732639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794704, 36.411335, 43.652260>,  <35.014545, 36.328007, 43.604031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794704, 36.411335, 43.652260>,  <34.428303, 36.550217, 43.732639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794704, 36.411335, 43.652260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112705, -0.703472, 0.701730,
		-0.385008, -0.620141, -0.683516,
		0.916006, -0.347207, -0.200949,
		35.069508, 36.307175, 43.591976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475067, 35.781845, 43.598827>,  <34.428303, 36.550217, 43.732639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475067, 35.781845, 43.598827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.844429, 35.885490, 43.712093>,  <35.066048, 35.947678, 43.780052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.844429, 35.885490, 43.712093>,  <34.475067, 35.781845, 43.598827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844429, 35.885490, 43.712093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104885, -0.539321, 0.835543,
		0.369221, -0.801244, -0.470834,
		0.923404, 0.259117, 0.283167,
		35.121449, 35.963226, 43.797043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725056, 35.144680, 43.864971>,  <34.475067, 35.781845, 43.598827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725056, 35.144680, 43.864971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.981796, 35.414909, 44.010098>,  <35.135841, 35.577045, 44.097172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.981796, 35.414909, 44.010098>,  <34.725056, 35.144680, 43.864971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981796, 35.414909, 44.010098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058407, -0.514832, 0.855299,
		0.764605, -0.527780, -0.369902,
		0.641847, 0.675571, 0.362817,
		35.174351, 35.617580, 44.118942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289509, 34.827606, 44.095043>,  <34.725056, 35.144680, 43.864971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289509, 34.827606, 44.095043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278179, 35.163063, 44.312622>,  <35.271381, 35.364338, 44.443169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278179, 35.163063, 44.312622>,  <35.289509, 34.827606, 44.095043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278179, 35.163063, 44.312622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114289, -0.537876, 0.835241,
		0.993044, 0.085824, -0.080612,
		-0.028325, 0.838644, 0.543944,
		35.269680, 35.414658, 44.475803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631241, 34.492882, 44.595066>,  <35.289509, 34.827606, 44.095043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631241, 34.492882, 44.595066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472336, 34.835274, 44.727413>,  <35.376991, 35.040710, 44.806820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472336, 34.835274, 44.727413>,  <35.631241, 34.492882, 44.595066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472336, 34.835274, 44.727413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057907, -0.336438, 0.939924,
		0.915874, 0.392560, 0.084088,
		-0.397267, 0.855983, 0.330866,
		35.353157, 35.092068, 44.826672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938145, 34.615402, 45.178112>,  <35.631241, 34.492882, 44.595066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938145, 34.615402, 45.178112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.643620, 34.877975, 45.243774>,  <35.466904, 35.035519, 45.283173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.643620, 34.877975, 45.243774>,  <35.938145, 34.615402, 45.178112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643620, 34.877975, 45.243774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053660, -0.185188, 0.981237,
		0.674514, 0.731302, 0.101131,
		-0.736309, 0.656432, 0.164153,
		35.422726, 35.074905, 45.293022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093124, 34.959938, 45.808022>,  <35.938145, 34.615402, 45.178112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093124, 34.959938, 45.808022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700146, 35.014114, 45.756710>,  <35.464359, 35.046619, 45.725922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700146, 35.014114, 45.756710>,  <36.093124, 34.959938, 45.808022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700146, 35.014114, 45.756710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149698, -0.162075, 0.975357,
		0.111313, 0.977439, 0.179506,
		-0.982446, 0.135442, -0.128280,
		35.405411, 35.054749, 45.718227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905449, 35.426971, 46.298130>,  <36.093124, 34.959938, 45.808022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905449, 35.426971, 46.298130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590176, 35.192757, 46.222328>,  <35.401012, 35.052227, 46.176846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590176, 35.192757, 46.222328>,  <35.905449, 35.426971, 46.298130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590176, 35.192757, 46.222328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090076, -0.194852, 0.976688,
		-0.608811, 0.786881, 0.100837,
		-0.788185, -0.585535, -0.189507,
		35.353722, 35.017097, 46.165478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381996, 35.755680, 46.633492>,  <35.905449, 35.426971, 46.298130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381996, 35.755680, 46.633492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271175, 35.373821, 46.589863>,  <35.204685, 35.144707, 46.563686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271175, 35.373821, 46.589863>,  <35.381996, 35.755680, 46.633492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271175, 35.373821, 46.589863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229236, -0.044571, 0.972350,
		-0.933111, 0.294391, -0.206491,
		-0.277047, -0.954645, -0.109075,
		35.188061, 35.087429, 46.557140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961830, 35.635681, 47.227474>,  <35.381996, 35.755680, 46.633492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961830, 35.635681, 47.227474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.065948, 35.269390, 47.105045>,  <35.128422, 35.049614, 47.031586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.065948, 35.269390, 47.105045>,  <34.961830, 35.635681, 47.227474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065948, 35.269390, 47.105045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104650, -0.341892, 0.933894,
		-0.959840, -0.211059, -0.184825,
		0.260298, -0.915731, -0.306074,
		35.144039, 34.994671, 47.013222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471951, 35.116253, 47.623558>,  <34.961830, 35.635681, 47.227474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471951, 35.116253, 47.623558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809296, 34.941471, 47.498463>,  <35.011703, 34.836601, 47.423405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809296, 34.941471, 47.498463>,  <34.471951, 35.116253, 47.623558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809296, 34.941471, 47.498463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111799, -0.426586, 0.897511,
		-0.525586, -0.791891, -0.310915,
		0.843362, -0.436959, -0.312741,
		35.062305, 34.810383, 47.404640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471142, 34.458389, 47.892239>,  <34.471951, 35.116253, 47.623558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471142, 34.458389, 47.892239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856983, 34.486057, 47.790443>,  <35.088486, 34.502659, 47.729366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856983, 34.486057, 47.790443>,  <34.471142, 34.458389, 47.892239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856983, 34.486057, 47.790443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256958, -0.463662, 0.847933,
		-0.059341, -0.883308, -0.465023,
		0.964599, 0.069175, -0.254487,
		35.146362, 34.506809, 47.714096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727619, 33.787083, 47.943027>,  <34.471142, 34.458389, 47.892239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727619, 33.787083, 47.943027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043457, 34.031788, 47.962170>,  <35.232960, 34.178612, 47.973656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043457, 34.031788, 47.962170>,  <34.727619, 33.787083, 47.943027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043457, 34.031788, 47.962170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369544, -0.536322, 0.758812,
		0.489879, -0.581468, -0.649549,
		0.789592, 0.611764, 0.047855,
		35.280334, 34.215317, 47.976524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259045, 33.307804, 48.147514>,  <34.727619, 33.787083, 47.943027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259045, 33.307804, 48.147514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465591, 33.642559, 48.220154>,  <35.589520, 33.843414, 48.263737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465591, 33.642559, 48.220154>,  <35.259045, 33.307804, 48.147514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465591, 33.642559, 48.220154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233470, -0.341601, 0.910385,
		0.823929, -0.427692, -0.371780,
		0.516365, 0.836892, 0.181602,
		35.620502, 33.893627, 48.274635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977314, 33.089573, 48.440647>,  <35.259045, 33.307804, 48.147514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977314, 33.089573, 48.440647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914825, 33.475380, 48.525784>,  <35.877335, 33.706863, 48.576866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914825, 33.475380, 48.525784>,  <35.977314, 33.089573, 48.440647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914825, 33.475380, 48.525784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505096, -0.107174, 0.856383,
		0.848807, 0.241291, -0.470431,
		-0.156219, 0.964517, 0.212845,
		35.867958, 33.764736, 48.589638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595081, 33.366383, 48.554520>,  <35.977314, 33.089573, 48.440647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595081, 33.366383, 48.554520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.344784, 33.603886, 48.756866>,  <36.194607, 33.746387, 48.878273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.344784, 33.603886, 48.756866>,  <36.595081, 33.366383, 48.554520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344784, 33.603886, 48.756866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501787, -0.190111, 0.843841,
		0.597206, 0.781864, -0.178979,
		-0.625743, 0.593756, 0.505865,
		36.157063, 33.782013, 48.908627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072544, 33.621887, 49.102139>,  <36.595081, 33.366383, 48.554520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072544, 33.621887, 49.102139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.705276, 33.728180, 49.219681>,  <36.484917, 33.791954, 49.290207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.705276, 33.728180, 49.219681>,  <37.072544, 33.621887, 49.102139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705276, 33.728180, 49.219681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289639, -0.055863, 0.955504,
		0.270323, 0.962427, -0.025675,
		-0.918169, 0.265731, 0.293857,
		36.429825, 33.807899, 49.307838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135357, 34.157124, 49.462605>,  <37.072544, 33.621887, 49.102139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135357, 34.157124, 49.462605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.803101, 33.980965, 49.598892>,  <36.603748, 33.875271, 49.680664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.803101, 33.980965, 49.598892>,  <37.135357, 34.157124, 49.462605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803101, 33.980965, 49.598892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413488, -0.078062, 0.907157,
		-0.372912, 0.894403, 0.246940,
		-0.830641, -0.440397, 0.340715,
		36.553909, 33.848846, 49.701107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106148, 34.347324, 50.152458>,  <37.135357, 34.157124, 49.462605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106148, 34.347324, 50.152458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.871666, 34.023983, 50.130791>,  <36.730976, 33.829979, 50.117790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.871666, 34.023983, 50.130791>,  <37.106148, 34.347324, 50.152458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871666, 34.023983, 50.130791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393260, -0.342372, 0.853304,
		-0.708314, 0.478909, 0.518592,
		-0.586206, -0.808349, -0.054172,
		36.695805, 33.781479, 50.114540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807461, 34.101463, 50.853477>,  <37.106148, 34.347324, 50.152458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807461, 34.101463, 50.853477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815861, 33.774029, 50.623878>,  <36.820900, 33.577568, 50.486118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815861, 33.774029, 50.623878>,  <36.807461, 34.101463, 50.853477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815861, 33.774029, 50.623878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438064, -0.508543, 0.741272,
		-0.898699, -0.267013, 0.347915,
		0.020999, -0.818589, -0.573996,
		36.822159, 33.528454, 50.451679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747414, 33.532299, 51.348618>,  <36.807461, 34.101463, 50.853477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747414, 33.532299, 51.348618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.854206, 33.333813, 51.018166>,  <36.918282, 33.214722, 50.819893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.854206, 33.333813, 51.018166>,  <36.747414, 33.532299, 51.348618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854206, 33.333813, 51.018166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387290, -0.729734, 0.563467,
		-0.882457, -0.470386, -0.002645,
		0.266977, -0.496211, -0.826134,
		36.934299, 33.184948, 50.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317822, 32.972527, 51.300709>,  <36.747414, 33.532299, 51.348618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317822, 32.972527, 51.300709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.656811, 32.907608, 51.098537>,  <36.860203, 32.868656, 50.977234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.656811, 32.907608, 51.098537>,  <36.317822, 32.972527, 51.300709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656811, 32.907608, 51.098537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256939, -0.707745, 0.658088,
		-0.464520, -0.687573, -0.558090,
		0.847469, -0.162300, -0.505426,
		36.911053, 32.858917, 50.946911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804005, 32.526604, 51.663582>,  <36.317822, 32.972527, 51.300709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804005, 32.526604, 51.663582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.813034, 32.142403, 51.774525>,  <35.818451, 31.911882, 51.841091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.813034, 32.142403, 51.774525>,  <35.804005, 32.526604, 51.663582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813034, 32.142403, 51.774525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285209, -0.272080, -0.919036,
		0.958200, -0.058361, -0.280085,
		0.022570, -0.960503, 0.277352,
		35.819805, 31.854252, 51.857731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546661, 32.172287, 51.145046>,  <35.804005, 32.526604, 51.663582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546661, 32.172287, 51.145046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.398540, 31.819759, 51.262455>,  <35.309669, 31.608242, 51.332901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.398540, 31.819759, 51.262455>,  <35.546661, 32.172287, 51.145046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398540, 31.819759, 51.262455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721797, 0.074092, -0.688128,
		0.584712, -0.466678, -0.663569,
		-0.370299, -0.881319, 0.293524,
		35.287449, 31.555365, 51.350513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658890, 31.762831, 50.578880>,  <35.546661, 32.172287, 51.145046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658890, 31.762831, 50.578880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.343185, 31.671404, 50.806850>,  <35.153763, 31.616549, 50.943634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.343185, 31.671404, 50.806850>,  <35.658890, 31.762831, 50.578880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343185, 31.671404, 50.806850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603779, 0.119768, -0.788103,
		0.111856, -0.966139, -0.232518,
		-0.789265, -0.228543, 0.569937,
		35.106407, 31.602833, 50.977829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257210, 31.321064, 50.105591>,  <35.658890, 31.762831, 50.578880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257210, 31.321064, 50.105591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021244, 31.488657, 50.381695>,  <34.879665, 31.589212, 50.547356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021244, 31.488657, 50.381695>,  <35.257210, 31.321064, 50.105591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021244, 31.488657, 50.381695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762949, -0.009304, -0.646391,
		-0.264404, -0.907947, 0.325151,
		-0.589914, 0.418982, 0.690257,
		34.844269, 31.614351, 50.588772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583187, 31.001472, 50.006397>,  <35.257210, 31.321064, 50.105591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583187, 31.001472, 50.006397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506458, 31.339554, 50.205929>,  <34.460423, 31.542404, 50.325649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506458, 31.339554, 50.205929>,  <34.583187, 31.001472, 50.006397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506458, 31.339554, 50.205929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778763, 0.178234, -0.601465,
		-0.597270, -0.503845, 0.624026,
		-0.191823, 0.845206, 0.498830,
		34.448910, 31.593115, 50.355579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883972, 31.013666, 50.138226>,  <34.583187, 31.001472, 50.006397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883972, 31.013666, 50.138226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995888, 31.397650, 50.143856>,  <34.063038, 31.628040, 50.147232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995888, 31.397650, 50.143856>,  <33.883972, 31.013666, 50.138226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995888, 31.397650, 50.143856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754719, 0.228980, -0.614791,
		-0.593396, 0.161390, 0.788565,
		0.279787, 0.959959, 0.014072,
		34.079823, 31.685638, 50.148079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304722, 31.390970, 50.059120>,  <33.883972, 31.013666, 50.138226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304722, 31.390970, 50.059120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572536, 31.676027, 49.975349>,  <33.733227, 31.847061, 49.925087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572536, 31.676027, 49.975349>,  <33.304722, 31.390970, 50.059120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572536, 31.676027, 49.975349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669263, 0.456502, -0.586253,
		-0.322185, 0.532681, 0.782591,
		0.669540, 0.712641, -0.209426,
		33.773399, 31.889820, 49.912521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941223, 31.975447, 50.076103>,  <33.304722, 31.390970, 50.059120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941223, 31.975447, 50.076103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257072, 32.082863, 49.855419>,  <33.446583, 32.147312, 49.723007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257072, 32.082863, 49.855419>,  <32.941223, 31.975447, 50.076103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257072, 32.082863, 49.855419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597750, 0.539670, -0.592833,
		0.138544, 0.797899, 0.586653,
		0.789620, 0.268539, -0.551712,
		33.493958, 32.163425, 49.689907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691929, 32.514214, 49.728550>,  <32.941223, 31.975447, 50.076103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691929, 32.514214, 49.728550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.022373, 32.430077, 49.519440>,  <33.220642, 32.379593, 49.393974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.022373, 32.430077, 49.519440>,  <32.691929, 32.514214, 49.728550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022373, 32.430077, 49.519440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365276, 0.506525, -0.781029,
		0.429082, 0.836175, 0.341614,
		0.826113, -0.210342, -0.522775,
		33.270206, 32.366974, 49.362606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902092, 33.125149, 49.377491>,  <32.691929, 32.514214, 49.728550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902092, 33.125149, 49.377491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116898, 32.845428, 49.188774>,  <33.245781, 32.677597, 49.075546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116898, 32.845428, 49.188774>,  <32.902092, 33.125149, 49.377491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116898, 32.845428, 49.188774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167766, 0.459571, -0.872152,
		0.826721, 0.547511, 0.129478,
		0.537017, -0.699304, -0.471791,
		33.278004, 32.635635, 49.047237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369179, 33.425236, 48.891506>,  <32.902092, 33.125149, 49.377491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369179, 33.425236, 48.891506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291378, 33.057522, 48.754642>,  <33.244698, 32.836891, 48.672523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291378, 33.057522, 48.754642>,  <33.369179, 33.425236, 48.891506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291378, 33.057522, 48.754642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215530, 0.380353, -0.899376,
		0.956930, -0.101187, -0.272115,
		-0.194505, -0.919289, -0.342163,
		33.233025, 32.781734, 48.651993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832928, 33.353558, 48.408363>,  <33.369179, 33.425236, 48.891506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832928, 33.353558, 48.408363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.547970, 33.085335, 48.325573>,  <33.376995, 32.924400, 48.275898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.547970, 33.085335, 48.325573>,  <33.832928, 33.353558, 48.408363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547970, 33.085335, 48.325573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097107, 0.197900, -0.975400,
		0.695025, -0.714972, -0.075867,
		-0.712398, -0.670560, -0.206974,
		33.334251, 32.884167, 48.263481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048393, 32.939350, 47.956329>,  <33.832928, 33.353558, 48.408363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048393, 32.939350, 47.956329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651344, 32.937340, 47.907887>,  <33.413113, 32.936134, 47.878822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651344, 32.937340, 47.907887>,  <34.048393, 32.939350, 47.956329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651344, 32.937340, 47.907887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114387, 0.291576, -0.949684,
		0.040088, -0.956535, -0.288851,
		-0.992627, -0.005030, -0.121104,
		33.353558, 32.935829, 47.871555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918678, 32.749329, 47.257114>,  <34.048393, 32.939350, 47.956329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918678, 32.749329, 47.257114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.567181, 32.913578, 47.354443>,  <33.356281, 33.012127, 47.412838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.567181, 32.913578, 47.354443>,  <33.918678, 32.749329, 47.257114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567181, 32.913578, 47.354443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125469, 0.293123, -0.947806,
		-0.460512, -0.863405, -0.206059,
		-0.878741, 0.410622, 0.243317,
		33.303558, 33.036766, 47.427437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623379, 32.737141, 46.632416>,  <33.918678, 32.749329, 47.257114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623379, 32.737141, 46.632416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373112, 32.976261, 46.832882>,  <33.222950, 33.119736, 46.953163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373112, 32.976261, 46.832882>,  <33.623379, 32.737141, 46.632416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373112, 32.976261, 46.832882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133597, 0.550841, -0.823848,
		-0.768563, -0.582411, -0.264779,
		-0.625670, 0.597805, 0.501164,
		33.185410, 33.155602, 46.983231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152313, 32.824017, 46.155590>,  <33.623379, 32.737141, 46.632416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152313, 32.824017, 46.155590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105614, 33.112476, 46.428738>,  <33.077595, 33.285553, 46.592625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105614, 33.112476, 46.428738>,  <33.152313, 32.824017, 46.155590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105614, 33.112476, 46.428738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306696, 0.627788, -0.715416,
		-0.944620, -0.292956, 0.147881,
		-0.116747, 0.721151, 0.682870,
		33.070591, 33.328823, 46.633598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459332, 33.156620, 45.996471>,  <33.152313, 32.824017, 46.155590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459332, 33.156620, 45.996471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700863, 33.398144, 46.204628>,  <32.845783, 33.543056, 46.329521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700863, 33.398144, 46.204628>,  <32.459332, 33.156620, 45.996471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700863, 33.398144, 46.204628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186703, 0.741817, -0.644089,
		-0.774940, 0.291761, 0.560664,
		0.603830, 0.603807, 0.520390,
		32.882011, 33.579285, 46.360744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110058, 33.689919, 46.017830>,  <32.459332, 33.156620, 45.996471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110058, 33.689919, 46.017830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486378, 33.816105, 46.067440>,  <32.712170, 33.891815, 46.097206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486378, 33.816105, 46.067440>,  <32.110058, 33.689919, 46.017830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486378, 33.816105, 46.067440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061831, 0.519463, -0.852253,
		-0.333279, 0.794130, 0.508215,
		0.940799, 0.315461, 0.124025,
		32.768616, 33.910744, 46.104649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152397, 34.453953, 45.822472>,  <32.110058, 33.689919, 46.017830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152397, 34.453953, 45.822472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.511860, 34.281147, 45.792053>,  <32.727539, 34.177464, 45.773804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.511860, 34.281147, 45.792053>,  <32.152397, 34.453953, 45.822472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511860, 34.281147, 45.792053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215295, 0.585435, -0.781610,
		0.382183, 0.686027, 0.619115,
		0.898657, -0.432011, -0.076045,
		32.781456, 34.151543, 45.769241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504429, 35.013973, 45.859581>,  <32.152397, 34.453953, 45.822472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504429, 35.013973, 45.859581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.707241, 34.708843, 45.699070>,  <32.828930, 34.525764, 45.602764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.707241, 34.708843, 45.699070>,  <32.504429, 35.013973, 45.859581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707241, 34.708843, 45.699070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214808, 0.562699, -0.798265,
		0.834733, 0.318547, 0.449165,
		0.507030, -0.762822, -0.401277,
		32.859348, 34.479996, 45.578686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070686, 35.391563, 45.520866>,  <32.504429, 35.013973, 45.859581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070686, 35.391563, 45.520866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055912, 35.022812, 45.366577>,  <33.047047, 34.801563, 45.274006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055912, 35.022812, 45.366577>,  <33.070686, 35.391563, 45.520866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055912, 35.022812, 45.366577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223568, 0.368577, -0.902313,
		0.973988, -0.119560, 0.192489,
		-0.036933, -0.921876, -0.385720,
		33.044830, 34.746250, 45.250862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615913, 35.361397, 44.915466>,  <33.070686, 35.391563, 45.520866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615913, 35.361397, 44.915466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349747, 35.066681, 44.867538>,  <33.190044, 34.889851, 44.838779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349747, 35.066681, 44.867538>,  <33.615913, 35.361397, 44.915466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349747, 35.066681, 44.867538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122221, 0.050814, -0.991201,
		0.736397, -0.674208, 0.056239,
		-0.665418, -0.736791, -0.119822,
		33.150120, 34.845642, 44.831593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.841007, 27.176451, 34.366974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.561691, 27.192463, 34.081097>,  <42.394100, 27.202070, 33.909569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.561691, 27.192463, 34.081097>,  <42.841007, 27.176451, 34.366974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561691, 27.192463, 34.081097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340885, 0.896546, -0.282849,
		0.629433, -0.441139, -0.639695,
		-0.698291, 0.040028, -0.714693,
		42.352203, 27.204472, 33.866688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140087, 27.379278, 33.775272>,  <42.841007, 27.176451, 34.366974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140087, 27.379278, 33.775272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.762306, 27.492075, 33.707760>,  <42.535637, 27.559753, 33.667252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.762306, 27.492075, 33.707760>,  <43.140087, 27.379278, 33.775272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762306, 27.492075, 33.707760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321320, 0.900140, -0.294112,
		0.068991, -0.332009, -0.940750,
		-0.944454, 0.281991, -0.168782,
		42.478970, 27.576672, 33.657124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173264, 27.667950, 33.105713>,  <43.140087, 27.379278, 33.775272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173264, 27.667950, 33.105713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.846687, 27.809414, 33.288296>,  <42.650742, 27.894293, 33.397846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.846687, 27.809414, 33.288296>,  <43.173264, 27.667950, 33.105713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846687, 27.809414, 33.288296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344182, 0.932776, -0.107087,
		-0.463645, 0.069674, -0.883277,
		-0.816439, 0.353658, 0.456457,
		42.601757, 27.915512, 33.425232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816376, 28.209072, 32.635334>,  <43.173264, 27.667950, 33.105713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816376, 28.209072, 32.635334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684299, 28.291935, 33.003693>,  <42.605053, 28.341652, 33.224709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684299, 28.291935, 33.003693>,  <42.816376, 28.209072, 32.635334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684299, 28.291935, 33.003693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323016, 0.941515, -0.095976,
		-0.886923, 0.265774, -0.377799,
		-0.330195, 0.207158, 0.920900,
		42.585239, 28.354082, 33.279964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596027, 28.821274, 32.528652>,  <42.816376, 28.209072, 32.635334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596027, 28.821274, 32.528652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.569019, 28.813391, 32.927662>,  <42.552814, 28.808661, 33.167068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.569019, 28.813391, 32.927662>,  <42.596027, 28.821274, 32.528652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569019, 28.813391, 32.927662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081339, 0.996368, 0.025191,
		-0.994397, 0.082838, -0.065668,
		-0.067516, -0.019709, 0.997523,
		42.548763, 28.807478, 33.226917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052441, 29.208481, 32.671154>,  <42.596027, 28.821274, 32.528652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052441, 29.208481, 32.671154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288525, 29.199007, 32.993916>,  <42.430176, 29.193323, 33.187572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288525, 29.199007, 32.993916>,  <42.052441, 29.208481, 32.671154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288525, 29.199007, 32.993916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004138, 0.999645, 0.026314,
		-0.807240, -0.012192, 0.590097,
		0.590209, -0.023684, 0.806903,
		42.465588, 29.191902, 33.235985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790718, 29.695166, 33.190350>,  <42.052441, 29.208481, 32.671154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790718, 29.695166, 33.190350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.172523, 29.669258, 33.306774>,  <42.401608, 29.653713, 33.376629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.172523, 29.669258, 33.306774>,  <41.790718, 29.695166, 33.190350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172523, 29.669258, 33.306774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073824, 0.997066, -0.020224,
		-0.288897, 0.040791, 0.956491,
		0.954510, -0.064769, 0.291061,
		42.458878, 29.649828, 33.394093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928444, 30.055708, 33.844196>,  <41.790718, 29.695166, 33.190350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928444, 30.055708, 33.844196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286896, 30.014545, 33.671516>,  <42.501965, 29.989849, 33.567909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286896, 30.014545, 33.671516>,  <41.928444, 30.055708, 33.844196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286896, 30.014545, 33.671516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194281, 0.965547, 0.173129,
		0.399013, -0.239017, 0.885246,
		0.896127, -0.102905, -0.431702,
		42.555733, 29.983673, 33.542007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403267, 30.366026, 34.301807>,  <41.928444, 30.055708, 33.844196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403267, 30.366026, 34.301807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.578461, 30.356667, 33.942337>,  <42.683575, 30.351051, 33.726654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.578461, 30.356667, 33.942337>,  <42.403267, 30.366026, 34.301807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578461, 30.356667, 33.942337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296821, 0.947364, 0.119996,
		0.848568, -0.319303, 0.421874,
		0.437983, -0.023396, -0.898679,
		42.709854, 30.349648, 33.672733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953430, 30.819448, 34.456390>,  <42.403267, 30.366026, 34.301807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953430, 30.819448, 34.456390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923138, 30.795673, 34.058247>,  <42.904961, 30.781408, 33.819363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923138, 30.795673, 34.058247>,  <42.953430, 30.819448, 34.456390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923138, 30.795673, 34.058247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070608, 0.995396, -0.064811,
		0.994625, -0.075188, -0.071190,
		-0.075736, -0.059436, -0.995355,
		42.900417, 30.777843, 33.759640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534966, 31.150015, 34.258606>,  <42.953430, 30.819448, 34.456390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534966, 31.150015, 34.258606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282085, 31.154613, 33.948719>,  <43.130356, 31.157373, 33.762787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282085, 31.154613, 33.948719>,  <43.534966, 31.150015, 34.258606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282085, 31.154613, 33.948719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142872, 0.984473, -0.101982,
		0.761515, -0.175158, -0.624031,
		-0.632204, 0.011496, -0.774716,
		43.092422, 31.158062, 33.716305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969963, 31.412525, 33.819180>,  <43.534966, 31.150015, 34.258606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969963, 31.412525, 33.819180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.585545, 31.460938, 33.719784>,  <43.354893, 31.489985, 33.660145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.585545, 31.460938, 33.719784>,  <43.969963, 31.412525, 33.819180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585545, 31.460938, 33.719784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127052, 0.991862, -0.008266,
		0.245471, -0.039515, -0.968598,
		-0.961042, 0.121033, -0.248494,
		43.297234, 31.497248, 33.645237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934982, 31.844311, 33.191978>,  <43.969963, 31.412525, 33.819180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934982, 31.844311, 33.191978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.565151, 31.891489, 33.336887>,  <43.343254, 31.919796, 33.423832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.565151, 31.891489, 33.336887>,  <43.934982, 31.844311, 33.191978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565151, 31.891489, 33.336887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091440, 0.991778, -0.089523,
		-0.369854, -0.049645, -0.927763,
		-0.924579, 0.117945, 0.362274,
		43.287777, 31.926872, 33.445568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630600, 32.317604, 32.713123>,  <43.934982, 31.844311, 33.191978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630600, 32.317604, 32.713123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395481, 32.337540, 33.036110>,  <43.254410, 32.349503, 33.229904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395481, 32.337540, 33.036110>,  <43.630600, 32.317604, 32.713123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395481, 32.337540, 33.036110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062389, 0.997921, -0.016180,
		-0.806596, 0.040867, -0.589689,
		-0.587802, 0.049841, 0.807468,
		43.219139, 32.352493, 33.278351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074131, 32.811661, 32.515892>,  <43.630600, 32.317604, 32.713123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074131, 32.811661, 32.515892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.034145, 32.815910, 32.913864>,  <43.010155, 32.818459, 33.152649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.034145, 32.815910, 32.913864>,  <43.074131, 32.811661, 32.515892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034145, 32.815910, 32.913864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054309, 0.998511, -0.005202,
		-0.993507, 0.053514, -0.100395,
		-0.099967, 0.010620, 0.994934,
		43.004154, 32.819096, 33.212345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676418, 33.386890, 32.618641>,  <43.074131, 32.811661, 32.515892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676418, 33.386890, 32.618641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.804379, 33.312897, 32.990326>,  <42.881153, 33.268501, 33.213337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.804379, 33.312897, 32.990326>,  <42.676418, 33.386890, 32.618641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804379, 33.312897, 32.990326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138987, 0.979306, 0.147111,
		-0.937202, 0.082088, 0.338991,
		0.319900, -0.184988, 0.929217,
		42.900349, 33.257401, 33.269093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331894, 33.777004, 33.088303>,  <42.676418, 33.386890, 32.618641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331894, 33.777004, 33.088303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670864, 33.704330, 33.287842>,  <42.874249, 33.660725, 33.407566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670864, 33.704330, 33.287842>,  <42.331894, 33.777004, 33.088303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670864, 33.704330, 33.287842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159060, 0.983345, 0.087936,
		-0.506520, 0.004828, 0.862215,
		0.847430, -0.181685, 0.498852,
		42.925095, 33.649826, 33.437496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326542, 34.030388, 33.749397>,  <42.331894, 33.777004, 33.088303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326542, 34.030388, 33.749397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.722740, 33.992027, 33.709969>,  <42.960461, 33.969009, 33.686310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.722740, 33.992027, 33.709969>,  <42.326542, 34.030388, 33.749397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722740, 33.992027, 33.709969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113348, 0.975184, 0.190178,
		0.077890, -0.199545, 0.976788,
		0.990497, -0.095903, -0.098575,
		43.019890, 33.963257, 33.680397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551716, 34.278553, 34.360306>,  <42.326542, 34.030388, 33.749397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551716, 34.278553, 34.360306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.857758, 34.317825, 34.105755>,  <43.041382, 34.341389, 33.953026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.857758, 34.317825, 34.105755>,  <42.551716, 34.278553, 34.360306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857758, 34.317825, 34.105755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087201, 0.963405, 0.253472,
		0.637975, -0.249425, 0.728544,
		0.765104, 0.098179, -0.636378,
		43.087288, 34.347279, 33.914841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923355, 34.869389, 34.651066>,  <42.551716, 34.278553, 34.360306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923355, 34.869389, 34.651066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068520, 34.842949, 34.279274>,  <43.155617, 34.827084, 34.056198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068520, 34.842949, 34.279274>,  <42.923355, 34.869389, 34.651066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068520, 34.842949, 34.279274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032141, 0.997775, -0.058409,
		0.931269, -0.008677, 0.364229,
		0.362912, -0.066101, -0.929476,
		43.177395, 34.823120, 34.000431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660801, 35.220478, 34.622269>,  <42.923355, 34.869389, 34.651066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660801, 35.220478, 34.622269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473503, 35.203712, 34.269226>,  <43.361122, 35.193653, 34.057400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473503, 35.203712, 34.269226>,  <43.660801, 35.220478, 34.622269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473503, 35.203712, 34.269226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135330, 0.983688, -0.118511,
		0.873172, -0.174935, -0.454938,
		-0.468249, -0.041913, -0.882602,
		43.333027, 35.191139, 34.004444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010483, 35.123875, 35.217793>,  <43.660801, 35.220478, 34.622269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010483, 35.123875, 35.217793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351681, 35.232971, 35.395786>,  <44.556400, 35.298428, 35.502583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351681, 35.232971, 35.395786>,  <44.010483, 35.123875, 35.217793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351681, 35.232971, 35.395786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179457, -0.647337, 0.740777,
		0.490093, -0.711735, -0.503231,
		0.852997, 0.272741, 0.444981,
		44.607578, 35.314793, 35.529282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170845, 34.400391, 35.199184>,  <44.010483, 35.123875, 35.217793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170845, 34.400391, 35.199184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.562756, 34.350273, 35.136780>,  <44.797901, 34.320202, 35.099335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.562756, 34.350273, 35.136780>,  <44.170845, 34.400391, 35.199184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562756, 34.350273, 35.136780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139558, -0.986638, -0.084079,
		-0.143396, 0.104152, -0.984170,
		0.979776, -0.125292, -0.156015,
		44.856689, 34.312687, 35.089973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399494, 33.950970, 34.516712>,  <44.170845, 34.400391, 35.199184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399494, 33.950970, 34.516712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.694683, 33.911343, 34.783718>,  <44.871796, 33.887566, 34.943924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.694683, 33.911343, 34.783718>,  <44.399494, 33.950970, 34.516712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694683, 33.911343, 34.783718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009312, -0.990566, -0.136721,
		0.674765, 0.094681, -0.731934,
		0.737973, -0.099071, 0.667518,
		44.916077, 33.881622, 34.983974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819080, 33.358837, 34.224930>,  <44.399494, 33.950970, 34.516712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819080, 33.358837, 34.224930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948879, 33.374809, 34.602947>,  <45.026760, 33.384392, 34.829758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948879, 33.374809, 34.602947>,  <44.819080, 33.358837, 34.224930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948879, 33.374809, 34.602947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219547, -0.975003, -0.034191,
		0.920054, 0.218576, -0.325154,
		0.324499, 0.039929, 0.945043,
		45.046230, 33.386787, 34.886459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426018, 32.861507, 34.275497>,  <44.819080, 33.358837, 34.224930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426018, 32.861507, 34.275497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313782, 32.905594, 34.656891>,  <45.246441, 32.932045, 34.885727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313782, 32.905594, 34.656891>,  <45.426018, 32.861507, 34.275497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313782, 32.905594, 34.656891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002434, -0.993300, 0.115537,
		0.959826, 0.034739, 0.278438,
		-0.280586, 0.110217, 0.953480,
		45.229607, 32.938660, 34.942936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951462, 32.536469, 34.626892>,  <45.426018, 32.861507, 34.275497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951462, 32.536469, 34.626892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.622852, 32.555492, 34.854168>,  <45.425686, 32.566906, 34.990532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.622852, 32.555492, 34.854168>,  <45.951462, 32.536469, 34.626892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622852, 32.555492, 34.854168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067275, -0.981470, 0.179418,
		0.566194, 0.185621, 0.803100,
		-0.821522, 0.047557, 0.568190,
		45.376396, 32.569759, 35.024624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181931, 32.194897, 35.202400>,  <45.951462, 32.536469, 34.626892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181931, 32.194897, 35.202400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.782150, 32.203678, 35.212395>,  <45.542282, 32.208946, 35.218391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.782150, 32.203678, 35.212395>,  <46.181931, 32.194897, 35.202400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782150, 32.203678, 35.212395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017938, -0.988380, 0.150942,
		0.028009, 0.150411, 0.988227,
		-0.999447, 0.021955, 0.024985,
		45.482315, 32.210266, 35.219891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.014557, 31.808935, 35.746410>,  <46.181931, 32.194897, 35.202400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.014557, 31.808935, 35.746410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.694324, 31.812475, 35.506748>,  <45.502186, 31.814598, 35.362949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.694324, 31.812475, 35.506748>,  <46.014557, 31.808935, 35.746410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694324, 31.812475, 35.506748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049617, -0.997436, 0.051567,
		-0.597167, 0.071012, 0.798968,
		-0.800581, 0.008848, -0.599159,
		45.454151, 31.815130, 35.327000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.580372, 31.420687, 36.052727>,  <46.014557, 31.808935, 35.746410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.580372, 31.420687, 36.052727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.444435, 31.408636, 35.676727>,  <45.362873, 31.401405, 35.451126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.444435, 31.408636, 35.676727>,  <45.580372, 31.420687, 36.052727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444435, 31.408636, 35.676727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280547, -0.950735, 0.131897,
		-0.897666, 0.308538, 0.314643,
		-0.339837, -0.030127, -0.940002,
		45.342484, 31.399597, 35.394726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.947186, 31.024857, 36.075516>,  <45.580372, 31.420687, 36.052727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.947186, 31.024857, 36.075516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074146, 31.018423, 35.696255>,  <45.150322, 31.014563, 35.468697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074146, 31.018423, 35.696255>,  <44.947186, 31.024857, 36.075516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074146, 31.018423, 35.696255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244854, -0.967341, -0.065557,
		-0.916135, 0.252968, -0.310972,
		0.317400, -0.016083, -0.948155,
		45.169365, 31.013597, 35.411808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724209, 30.476269, 35.835140>,  <44.947186, 31.024857, 36.075516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724209, 30.476269, 35.835140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.914745, 30.518023, 35.485924>,  <45.029068, 30.543074, 35.276394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.914745, 30.518023, 35.485924>,  <44.724209, 30.476269, 35.835140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914745, 30.518023, 35.485924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294450, -0.916658, -0.270255,
		-0.828490, 0.385801, -0.405909,
		0.476344, 0.104383, -0.873041,
		45.057648, 30.549337, 35.224010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306637, 30.070652, 35.269020>,  <44.724209, 30.476269, 35.835140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306637, 30.070652, 35.269020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.679474, 30.113529, 35.130615>,  <44.903175, 30.139256, 35.047573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.679474, 30.113529, 35.130615>,  <44.306637, 30.070652, 35.269020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679474, 30.113529, 35.130615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019256, -0.939197, -0.342839,
		-0.361720, 0.326219, -0.873350,
		0.932088, 0.107195, -0.346008,
		44.959099, 30.145687, 35.026814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336830, 29.802835, 34.528107>,  <44.306637, 30.070652, 35.269020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336830, 29.802835, 34.528107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701992, 29.784939, 34.690388>,  <44.921089, 29.774200, 34.787758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701992, 29.784939, 34.690388>,  <44.336830, 29.802835, 34.528107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701992, 29.784939, 34.690388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031228, -0.983405, -0.178717,
		0.406968, 0.175822, -0.896362,
		0.912909, -0.044740, 0.405704,
		44.975864, 29.771517, 34.812099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740536, 29.372528, 34.107815>,  <44.336830, 29.802835, 34.528107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740536, 29.372528, 34.107815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933479, 29.379122, 34.458141>,  <45.049244, 29.383078, 34.668339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933479, 29.379122, 34.458141>,  <44.740536, 29.372528, 34.107815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933479, 29.379122, 34.458141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002085, -0.999842, 0.017671,
		0.875971, -0.006698, -0.482318,
		0.482360, 0.016485, 0.875818,
		45.078186, 29.384068, 34.720886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401638, 29.008190, 33.995903>,  <44.740536, 29.372528, 34.107815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401638, 29.008190, 33.995903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.351498, 28.986206, 34.392139>,  <45.321411, 28.973017, 34.629879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.351498, 28.986206, 34.392139>,  <45.401638, 29.008190, 33.995903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.351498, 28.986206, 34.392139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074341, -0.995137, -0.064619,
		0.989323, -0.081742, 0.120659,
		-0.125354, -0.054959, 0.990588,
		45.313892, 28.969719, 34.689316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751953, 28.500998, 34.176605>,  <45.401638, 29.008190, 33.995903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751953, 28.500998, 34.176605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502083, 28.482847, 34.488430>,  <45.352161, 28.471956, 34.675526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502083, 28.482847, 34.488430>,  <45.751953, 28.500998, 34.176605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502083, 28.482847, 34.488430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127779, -0.978914, -0.159371,
		0.770361, -0.199167, 0.605704,
		-0.624674, -0.045377, 0.779566,
		45.314682, 28.469234, 34.722301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898575, 27.939957, 34.535767>,  <45.751953, 28.500998, 34.176605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898575, 27.939957, 34.535767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.521320, 28.013340, 34.646648>,  <45.294968, 28.057369, 34.713177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.521320, 28.013340, 34.646648>,  <45.898575, 27.939957, 34.535767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521320, 28.013340, 34.646648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217689, -0.971089, -0.097963,
		0.251223, -0.152737, 0.955802,
		-0.943132, 0.183457, 0.277209,
		45.238380, 28.068377, 34.729813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736694, 27.612276, 35.150600>,  <45.898575, 27.939957, 34.535767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736694, 27.612276, 35.150600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.378700, 27.648075, 34.975792>,  <45.163902, 27.669556, 34.870907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.378700, 27.648075, 34.975792>,  <45.736694, 27.612276, 35.150600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378700, 27.648075, 34.975792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145304, -0.984728, 0.095906,
		-0.421766, 0.149336, 0.894322,
		-0.894986, 0.089498, -0.437024,
		45.110203, 27.674925, 34.844685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263992, 27.356070, 35.670971>,  <45.736694, 27.612276, 35.150600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263992, 27.356070, 35.670971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.069439, 27.356777, 35.321476>,  <44.952705, 27.357203, 35.111778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.069439, 27.356777, 35.321476>,  <45.263992, 27.356070, 35.670971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069439, 27.356777, 35.321476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194352, -0.975164, 0.106216,
		-0.851854, 0.221475, 0.474652,
		-0.486388, 0.001769, -0.873741,
		44.923523, 27.357307, 35.059353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648438, 26.931641, 35.730408>,  <45.263992, 27.356070, 35.670971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648438, 26.931641, 35.730408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674282, 26.948889, 35.331615>,  <44.689789, 26.959238, 35.092342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674282, 26.948889, 35.331615>,  <44.648438, 26.931641, 35.730408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674282, 26.948889, 35.331615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168222, -0.984298, -0.053472,
		-0.983629, 0.171168, -0.056347,
		0.064615, 0.043118, -0.996978,
		44.693668, 26.961824, 35.032520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135555, 26.497612, 35.497105>,  <44.648438, 26.931641, 35.730408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135555, 26.497612, 35.497105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386375, 26.546677, 35.189400>,  <44.536869, 26.576117, 35.004776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386375, 26.546677, 35.189400>,  <44.135555, 26.497612, 35.497105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386375, 26.546677, 35.189400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020458, -0.989777, -0.141150,
		-0.778709, 0.072771, -0.623150,
		0.627051, 0.122663, -0.769260,
		44.574490, 26.583475, 34.958622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.881573, 38.053051, 41.176781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876495, 37.654617, 41.141766>,  <35.873447, 37.415558, 41.120758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876495, 37.654617, 41.141766>,  <35.881573, 38.053051, 41.176781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876495, 37.654617, 41.141766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364603, 0.076904, -0.927982,
		0.931077, -0.043696, 0.362198,
		-0.012695, -0.996081, -0.087536,
		35.872688, 37.355793, 41.115505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566860, 37.815926, 40.938995>,  <35.881573, 38.053051, 41.176781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566860, 37.815926, 40.938995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304367, 37.537914, 40.821495>,  <36.146873, 37.371105, 40.750996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304367, 37.537914, 40.821495>,  <36.566860, 37.815926, 40.938995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304367, 37.537914, 40.821495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349986, 0.064531, -0.934530,
		0.668485, -0.716076, 0.200904,
		-0.656230, -0.695033, -0.293755,
		36.107498, 37.329403, 40.733368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977528, 37.408211, 40.448494>,  <36.566860, 37.815926, 40.938995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977528, 37.408211, 40.448494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605484, 37.304447, 40.344486>,  <36.382259, 37.242188, 40.282082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605484, 37.304447, 40.344486>,  <36.977528, 37.408211, 40.448494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605484, 37.304447, 40.344486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251580, 0.065830, -0.965595,
		0.267603, -0.963521, 0.004033,
		-0.930105, -0.259411, -0.260019,
		36.326454, 37.226624, 40.266479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978092, 36.914108, 39.877171>,  <36.977528, 37.408211, 40.448494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978092, 36.914108, 39.877171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599247, 37.042461, 39.876057>,  <36.371941, 37.119473, 39.875389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599247, 37.042461, 39.876057>,  <36.978092, 36.914108, 39.877171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599247, 37.042461, 39.876057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024000, -0.079494, -0.996546,
		-0.320000, -0.943776, 0.082991,
		-0.947114, 0.320887, -0.002788,
		36.315113, 37.138729, 39.875221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612164, 36.469948, 39.384190>,  <36.978092, 36.914108, 39.877171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612164, 36.469948, 39.384190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449715, 36.834106, 39.415794>,  <36.352245, 37.052601, 39.434757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449715, 36.834106, 39.415794>,  <36.612164, 36.469948, 39.384190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449715, 36.834106, 39.415794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042425, 0.067586, -0.996811,
		-0.912834, -0.408179, 0.011176,
		-0.406122, 0.910397, 0.079012,
		36.327877, 37.107227, 39.439499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953640, 36.502480, 38.860069>,  <36.612164, 36.469948, 39.384190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953640, 36.502480, 38.860069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071484, 36.878551, 38.928497>,  <36.142189, 37.104195, 38.969555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071484, 36.878551, 38.928497>,  <35.953640, 36.502480, 38.860069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071484, 36.878551, 38.928497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151080, 0.222587, -0.963136,
		-0.943600, 0.257901, 0.207618,
		0.294607, 0.940182, 0.171069,
		36.159866, 37.160606, 38.979816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537064, 36.807232, 38.376884>,  <35.953640, 36.502480, 38.860069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537064, 36.807232, 38.376884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793938, 37.100925, 38.464970>,  <35.948063, 37.277142, 38.517822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793938, 37.100925, 38.464970>,  <35.537064, 36.807232, 38.376884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793938, 37.100925, 38.464970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024704, 0.306957, -0.951403,
		-0.766148, 0.605541, 0.215263,
		0.642190, 0.734233, 0.220216,
		35.986595, 37.321194, 38.531033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193920, 37.385044, 38.275490>,  <35.537064, 36.807232, 38.376884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193920, 37.385044, 38.275490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579075, 37.477802, 38.220249>,  <35.810169, 37.533459, 38.187103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579075, 37.477802, 38.220249>,  <35.193920, 37.385044, 38.275490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579075, 37.477802, 38.220249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212030, 0.333303, -0.918669,
		-0.167009, 0.913856, 0.370102,
		0.962887, 0.231898, -0.138100,
		35.867943, 37.547371, 38.178818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095951, 37.992558, 38.075012>,  <35.193920, 37.385044, 38.275490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095951, 37.992558, 38.075012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464066, 37.890549, 37.956326>,  <35.684933, 37.829342, 37.885113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464066, 37.890549, 37.956326>,  <35.095951, 37.992558, 38.075012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464066, 37.890549, 37.956326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236693, 0.240966, -0.941229,
		0.311534, 0.936428, 0.161395,
		0.920284, -0.255024, -0.296715,
		35.740150, 37.814041, 37.867310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362053, 38.496063, 37.651882>,  <35.095951, 37.992558, 38.075012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362053, 38.496063, 37.651882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580536, 38.176823, 37.550148>,  <35.711624, 37.985279, 37.489105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580536, 38.176823, 37.550148>,  <35.362053, 38.496063, 37.651882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580536, 38.176823, 37.550148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138261, 0.213569, -0.967095,
		0.826163, 0.563396, 0.006306,
		0.546204, -0.798106, -0.254339,
		35.744396, 37.937389, 37.473846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561096, 38.717590, 37.044411>,  <35.362053, 38.496063, 37.651882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561096, 38.717590, 37.044411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683037, 38.336700, 37.037220>,  <35.756203, 38.108166, 37.032906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683037, 38.336700, 37.037220>,  <35.561096, 38.717590, 37.044411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683037, 38.336700, 37.037220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120007, 0.057131, -0.991128,
		0.944807, 0.299994, 0.131691,
		0.304856, -0.952229, -0.017977,
		35.774494, 38.051033, 37.031826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272572, 38.663322, 36.736851>,  <35.561096, 38.717590, 37.044411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272572, 38.663322, 36.736851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067383, 38.324776, 36.679539>,  <35.944271, 38.121647, 36.645153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067383, 38.324776, 36.679539>,  <36.272572, 38.663322, 36.736851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067383, 38.324776, 36.679539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134652, 0.085507, -0.987197,
		0.847779, -0.525696, 0.070102,
		-0.512971, -0.846364, -0.143277,
		35.913490, 38.070866, 36.636555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695889, 38.233509, 36.254131>,  <36.272572, 38.663322, 36.736851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695889, 38.233509, 36.254131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306095, 38.143730, 36.254696>,  <36.072220, 38.089863, 36.255035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306095, 38.143730, 36.254696>,  <36.695889, 38.233509, 36.254131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306095, 38.143730, 36.254696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024261, -0.111593, -0.993458,
		0.223140, -0.968075, 0.114191,
		-0.974485, -0.224450, 0.001414,
		36.013748, 38.076397, 36.255119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422523, 37.565754, 35.908173>,  <36.695889, 38.233509, 36.254131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422523, 37.565754, 35.908173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120880, 37.824577, 35.863220>,  <35.939892, 37.979874, 35.836246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120880, 37.824577, 35.863220>,  <36.422523, 37.565754, 35.908173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120880, 37.824577, 35.863220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107635, -0.047042, -0.993077,
		-0.647868, -0.760986, -0.034171,
		-0.754110, 0.647061, -0.112386,
		35.894646, 38.018696, 35.829506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875301, 36.988281, 35.874348>,  <36.422523, 37.565754, 35.908173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875301, 36.988281, 35.874348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166004, 36.825756, 35.652813>,  <37.340424, 36.728241, 35.519894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166004, 36.825756, 35.652813>,  <36.875301, 36.988281, 35.874348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166004, 36.825756, 35.652813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057799, -0.767256, 0.638731,
		-0.684460, -0.496212, -0.534123,
		0.726756, -0.406314, -0.553837,
		37.384029, 36.703861, 35.486660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734138, 36.275501, 35.649948>,  <36.875301, 36.988281, 35.874348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734138, 36.275501, 35.649948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124088, 36.356346, 35.687389>,  <37.358059, 36.404854, 35.709854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124088, 36.356346, 35.687389>,  <36.734138, 36.275501, 35.649948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124088, 36.356346, 35.687389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059296, -0.640587, 0.765593,
		0.214699, -0.740810, -0.636479,
		0.974878, 0.202113, 0.093606,
		37.416553, 36.416981, 35.715469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986031, 35.685719, 35.645523>,  <36.734138, 36.275501, 35.649948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986031, 35.685719, 35.645523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263794, 35.918919, 35.814240>,  <37.430450, 36.058838, 35.915470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263794, 35.918919, 35.814240>,  <36.986031, 35.685719, 35.645523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263794, 35.918919, 35.814240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124407, -0.674602, 0.727623,
		0.708747, -0.452792, -0.540978,
		0.694407, 0.583002, 0.421792,
		37.472115, 36.093819, 35.940777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658573, 35.305714, 35.753452>,  <36.986031, 35.685719, 35.645523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658573, 35.305714, 35.753452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654015, 35.614017, 36.008259>,  <37.651279, 35.799000, 36.161144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654015, 35.614017, 36.008259>,  <37.658573, 35.305714, 35.753452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654015, 35.614017, 36.008259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107001, -0.632462, 0.767166,
		0.994193, 0.076907, -0.075263,
		-0.011400, 0.770764, 0.637018,
		37.650593, 35.845245, 36.199364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962387, 34.975197, 36.361488>,  <37.658573, 35.305714, 35.753452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962387, 34.975197, 36.361488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852238, 35.333176, 36.501904>,  <37.786148, 35.547962, 36.586155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852238, 35.333176, 36.501904>,  <37.962387, 34.975197, 36.361488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852238, 35.333176, 36.501904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061856, -0.347907, 0.935486,
		0.959344, 0.279326, 0.040448,
		-0.275378, 0.894951, 0.351041,
		37.769623, 35.601662, 36.607216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464462, 35.279263, 36.906693>,  <37.962387, 34.975197, 36.361488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464462, 35.279263, 36.906693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106812, 35.447418, 36.968403>,  <37.892220, 35.548313, 37.005428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106812, 35.447418, 36.968403>,  <38.464462, 35.279263, 36.906693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106812, 35.447418, 36.968403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093223, -0.162230, 0.982339,
		0.437994, 0.892723, 0.105865,
		-0.894131, 0.420390, 0.154278,
		37.838573, 35.573536, 37.014687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466385, 35.580971, 37.600304>,  <38.464462, 35.279263, 36.906693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466385, 35.580971, 37.600304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072495, 35.587788, 37.530998>,  <37.836159, 35.591877, 37.489414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072495, 35.587788, 37.530998>,  <38.466385, 35.580971, 37.600304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072495, 35.587788, 37.530998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170413, -0.298075, 0.939207,
		-0.035636, 0.954390, 0.296428,
		-0.984728, 0.017046, -0.173263,
		37.777077, 35.592903, 37.479019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183147, 35.823307, 38.142811>,  <38.466385, 35.580971, 37.600304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183147, 35.823307, 38.142811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883049, 35.614693, 37.980267>,  <37.702991, 35.489525, 37.882740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883049, 35.614693, 37.980267>,  <38.183147, 35.823307, 38.142811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883049, 35.614693, 37.980267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258819, -0.333902, 0.906379,
		-0.608394, 0.785182, 0.115526,
		-0.750246, -0.521535, -0.406364,
		37.657974, 35.458233, 37.858356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641273, 35.939735, 38.605976>,  <38.183147, 35.823307, 38.142811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641273, 35.939735, 38.605976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553852, 35.612473, 38.393238>,  <37.501400, 35.416115, 38.265594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553852, 35.612473, 38.393238>,  <37.641273, 35.939735, 38.605976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553852, 35.612473, 38.393238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248172, -0.480496, 0.841150,
		-0.943739, 0.315829, -0.098027,
		-0.218558, -0.818154, -0.531842,
		37.488285, 35.367027, 38.233685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946369, 35.855957, 38.723179>,  <37.641273, 35.939735, 38.605976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946369, 35.855957, 38.723179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114552, 35.510345, 38.612427>,  <37.215462, 35.302979, 38.545975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114552, 35.510345, 38.612427>,  <36.946369, 35.855957, 38.723179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114552, 35.510345, 38.612427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256620, -0.405955, 0.877124,
		-0.870266, -0.297738, -0.392414,
		0.420455, -0.864033, -0.276883,
		37.240688, 35.251137, 38.529362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453655, 35.344624, 38.761341>,  <36.946369, 35.855957, 38.723179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453655, 35.344624, 38.761341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794777, 35.136513, 38.779392>,  <36.999451, 35.011646, 38.790222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794777, 35.136513, 38.779392>,  <36.453655, 35.344624, 38.761341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794777, 35.136513, 38.779392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350852, -0.506790, 0.787443,
		-0.386813, -0.687371, -0.614733,
		0.852806, -0.520273, 0.045133,
		37.050617, 34.980431, 38.792931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249058, 34.863068, 39.152954>,  <36.453655, 35.344624, 38.761341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249058, 34.863068, 39.152954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643913, 34.799591, 39.145214>,  <36.880825, 34.761505, 39.140572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643913, 34.799591, 39.145214>,  <36.249058, 34.863068, 39.152954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643913, 34.799591, 39.145214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060179, -0.480967, 0.874671,
		-0.148108, -0.862257, -0.484331,
		0.987138, -0.158692, -0.019346,
		36.940056, 34.751984, 39.139412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252247, 34.176437, 39.262836>,  <36.249058, 34.863068, 39.152954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252247, 34.176437, 39.262836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596409, 34.347664, 39.373451>,  <36.802906, 34.450397, 39.439819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596409, 34.347664, 39.373451>,  <36.252247, 34.176437, 39.262836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596409, 34.347664, 39.373451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062474, -0.627141, 0.776396,
		0.505774, -0.650735, -0.566335,
		0.860400, 0.428062, 0.276538,
		36.854530, 34.476082, 39.456413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745247, 33.635529, 39.376469>,  <36.252247, 34.176437, 39.262836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745247, 33.635529, 39.376469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833340, 33.967678, 39.581200>,  <36.886196, 34.166969, 39.704041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833340, 33.967678, 39.581200>,  <36.745247, 33.635529, 39.376469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833340, 33.967678, 39.581200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087111, -0.539359, 0.837558,
		0.971550, -0.139871, -0.191120,
		0.220232, 0.830378, 0.511830,
		36.899410, 34.216793, 39.734749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883827, 32.895222, 39.366173>,  <36.745247, 33.635529, 39.376469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883827, 32.895222, 39.366173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681328, 32.569351, 39.253025>,  <36.559826, 32.373829, 39.185135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681328, 32.569351, 39.253025>,  <36.883827, 32.895222, 39.366173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681328, 32.569351, 39.253025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057063, 0.295650, -0.953591,
		0.860496, -0.498899, -0.103186,
		-0.506252, -0.814672, -0.282874,
		36.529453, 32.324951, 39.168163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154301, 32.694973, 38.772453>,  <36.883827, 32.895222, 39.366173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154301, 32.694973, 38.772453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818672, 32.480167, 38.737656>,  <36.617294, 32.351284, 38.716778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818672, 32.480167, 38.737656>,  <37.154301, 32.694973, 38.772453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818672, 32.480167, 38.737656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153132, 0.386597, -0.909447,
		0.522024, -0.749769, -0.406617,
		-0.839072, -0.537019, -0.087000,
		36.566952, 32.319061, 38.711555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220490, 32.333584, 38.083603>,  <37.154301, 32.694973, 38.772453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220490, 32.333584, 38.083603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836422, 32.354286, 38.193439>,  <36.605984, 32.366707, 38.259342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836422, 32.354286, 38.193439>,  <37.220490, 32.333584, 38.083603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836422, 32.354286, 38.193439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264127, 0.152641, -0.952333,
		-0.091202, -0.986926, -0.132891,
		-0.960166, 0.051755, 0.274595,
		36.548370, 32.369812, 38.275818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867321, 32.024952, 37.493446>,  <37.220490, 32.333584, 38.083603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867321, 32.024952, 37.493446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585289, 32.217674, 37.701572>,  <36.416069, 32.333305, 37.826447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585289, 32.217674, 37.701572>,  <36.867321, 32.024952, 37.493446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585289, 32.217674, 37.701572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336478, 0.418567, -0.843554,
		-0.624212, -0.769849, -0.133009,
		-0.705083, 0.481802, 0.520312,
		36.373764, 32.362213, 37.857666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143013, 31.803514, 37.269451>,  <36.867321, 32.024952, 37.493446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143013, 31.803514, 37.269451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019161, 32.138199, 37.450138>,  <35.944851, 32.339008, 37.558548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019161, 32.138199, 37.450138>,  <36.143013, 31.803514, 37.269451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019161, 32.138199, 37.450138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451843, 0.288524, -0.844151,
		-0.836640, -0.465480, 0.288725,
		-0.309631, 0.836709, 0.451715,
		35.926273, 32.389210, 37.585651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396137, 31.826866, 37.170967>,  <36.143013, 31.803514, 37.269451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396137, 31.826866, 37.170967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544037, 32.195793, 37.215889>,  <35.632778, 32.417149, 37.242844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544037, 32.195793, 37.215889>,  <35.396137, 31.826866, 37.170967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544037, 32.195793, 37.215889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598628, 0.328923, -0.730380,
		-0.710584, 0.202827, 0.673745,
		0.369751, 0.922318, 0.112309,
		35.654961, 32.472488, 37.249580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916794, 32.185215, 36.975258>,  <35.396137, 31.826866, 37.170967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916794, 32.185215, 36.975258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167889, 32.495731, 36.998295>,  <35.318546, 32.682041, 37.012119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167889, 32.495731, 36.998295>,  <34.916794, 32.185215, 36.975258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167889, 32.495731, 36.998295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454813, 0.425808, -0.782198,
		-0.631740, 0.464818, 0.620363,
		0.627734, 0.776294, 0.057594,
		35.356209, 32.728619, 37.015572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465641, 32.843624, 36.997753>,  <34.916794, 32.185215, 36.975258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465641, 32.843624, 36.997753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838013, 32.907013, 36.866146>,  <35.061436, 32.945045, 36.787182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838013, 32.907013, 36.866146>,  <34.465641, 32.843624, 36.997753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838013, 32.907013, 36.866146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364285, 0.339643, -0.867144,
		-0.025667, 0.927109, 0.373912,
		0.930934, 0.158468, -0.329014,
		35.117294, 32.954552, 36.767441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593460, 33.662071, 36.864304>,  <34.465641, 32.843624, 36.997753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593460, 33.662071, 36.864304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867191, 33.479431, 36.636894>,  <35.031429, 33.369846, 36.500450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867191, 33.479431, 36.636894>,  <34.593460, 33.662071, 36.864304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867191, 33.479431, 36.636894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468019, 0.322844, -0.822636,
		0.559159, 0.829029, 0.007233,
		0.684324, -0.456599, -0.568523,
		35.072487, 33.342453, 36.466339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878841, 34.129650, 36.304531>,  <34.593460, 33.662071, 36.864304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878841, 34.129650, 36.304531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934307, 33.756588, 36.171314>,  <34.967587, 33.532749, 36.091385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934307, 33.756588, 36.171314>,  <34.878841, 34.129650, 36.304531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934307, 33.756588, 36.171314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172599, 0.308389, -0.935471,
		0.975183, 0.187198, -0.118214,
		0.138663, -0.932659, -0.333046,
		34.975906, 33.476791, 36.071400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121819, 34.203197, 35.561344>,  <34.878841, 34.129650, 36.304531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121819, 34.203197, 35.561344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012890, 33.818378, 35.568356>,  <34.947533, 33.587486, 35.572563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012890, 33.818378, 35.568356>,  <35.121819, 34.203197, 35.561344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012890, 33.818378, 35.568356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274289, 0.060152, -0.959764,
		0.922282, -0.266176, -0.280260,
		-0.272325, -0.962046, 0.017532,
		34.931194, 33.529766, 35.573616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423660, 33.914276, 35.018822>,  <35.121819, 34.203197, 35.561344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423660, 33.914276, 35.018822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108524, 33.679008, 35.091892>,  <34.919445, 33.537849, 35.135735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108524, 33.679008, 35.091892>,  <35.423660, 33.914276, 35.018822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108524, 33.679008, 35.091892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214595, -0.015865, -0.976574,
		0.577288, -0.808583, -0.113719,
		-0.787837, -0.588168, 0.182677,
		34.872173, 33.502560, 35.146694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.716484, 31.403559, 42.373795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404579, 31.173271, 42.472195>,  <37.217434, 31.035099, 42.531235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404579, 31.173271, 42.472195>,  <37.716484, 31.403559, 42.373795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404579, 31.173271, 42.472195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221663, -0.113605, -0.968483,
		0.585519, -0.809718, -0.039030,
		-0.779764, -0.575717, 0.246003,
		37.170650, 31.000557, 42.545994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839436, 30.758141, 42.031532>,  <37.716484, 31.403559, 42.373795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839436, 30.758141, 42.031532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.457134, 30.854876, 42.098526>,  <37.227753, 30.912916, 42.138721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.457134, 30.854876, 42.098526>,  <37.839436, 30.758141, 42.031532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457134, 30.854876, 42.098526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160686, 0.047730, -0.985851,
		-0.246410, -0.969142, -0.006758,
		-0.955752, 0.241838, 0.167489,
		37.170410, 30.927427, 42.148773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444225, 30.347427, 41.512772>,  <37.839436, 30.758141, 42.031532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444225, 30.347427, 41.512772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192646, 30.634249, 41.632946>,  <37.041698, 30.806341, 41.705051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192646, 30.634249, 41.632946>,  <37.444225, 30.347427, 41.512772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192646, 30.634249, 41.632946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195378, 0.228262, -0.953794,
		-0.752498, -0.658585, -0.003468,
		-0.628947, 0.717051, 0.300440,
		37.003963, 30.849363, 41.723080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855053, 30.304358, 41.078709>,  <37.444225, 30.347427, 41.512772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855053, 30.304358, 41.078709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.775391, 30.667580, 41.226097>,  <36.727592, 30.885513, 41.314529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.775391, 30.667580, 41.226097>,  <36.855053, 30.304358, 41.078709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775391, 30.667580, 41.226097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151803, 0.342875, -0.927034,
		-0.968139, -0.240558, 0.069560,
		-0.199155, 0.908057, 0.368468,
		36.715645, 30.939997, 41.336639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179607, 30.466900, 40.858707>,  <36.855053, 30.304358, 41.078709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179607, 30.466900, 40.858707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361835, 30.813963, 40.938332>,  <36.471172, 31.022202, 40.986107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361835, 30.813963, 40.938332>,  <36.179607, 30.466900, 40.858707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361835, 30.813963, 40.938332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254627, 0.341278, -0.904817,
		-0.853006, 0.361524, 0.376406,
		0.455572, 0.867657, 0.199058,
		36.498508, 31.074261, 40.998051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698120, 30.919001, 40.513783>,  <36.179607, 30.466900, 40.858707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698120, 30.919001, 40.513783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.044941, 31.114193, 40.553982>,  <36.253033, 31.231308, 40.578102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.044941, 31.114193, 40.553982>,  <35.698120, 30.919001, 40.513783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044941, 31.114193, 40.553982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108099, 0.381161, -0.918167,
		-0.486356, 0.785232, 0.383236,
		0.867048, 0.487983, 0.100497,
		36.305054, 31.260588, 40.584129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538696, 31.671749, 40.446644>,  <35.698120, 30.919001, 40.513783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538696, 31.671749, 40.446644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932907, 31.670525, 40.378841>,  <36.169434, 31.669790, 40.338161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932907, 31.670525, 40.378841>,  <35.538696, 31.671749, 40.446644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932907, 31.670525, 40.378841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153250, 0.411492, -0.898437,
		0.072499, 0.911408, 0.405067,
		0.985524, -0.003060, -0.169506,
		36.228565, 31.669607, 40.327988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779854, 32.384830, 40.239979>,  <35.538696, 31.671749, 40.446644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779854, 32.384830, 40.239979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061333, 32.145702, 40.086403>,  <36.230221, 32.002224, 39.994255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061333, 32.145702, 40.086403>,  <35.779854, 32.384830, 40.239979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061333, 32.145702, 40.086403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208927, 0.342382, -0.916037,
		0.679083, 0.724833, 0.116033,
		0.703702, -0.597823, -0.383942,
		36.272442, 31.966356, 39.971222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225563, 32.879356, 39.796032>,  <35.779854, 32.384830, 40.239979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225563, 32.879356, 39.796032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253822, 32.501049, 39.669205>,  <36.270779, 32.274063, 39.593109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253822, 32.501049, 39.669205>,  <36.225563, 32.879356, 39.796032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253822, 32.501049, 39.669205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033496, 0.319933, -0.946848,
		0.996939, 0.056270, 0.054281,
		0.070645, -0.945768, -0.317069,
		36.275017, 32.217319, 39.574085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887867, 33.272335, 39.975704>,  <36.225563, 32.879356, 39.796032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887867, 33.272335, 39.975704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895950, 33.656696, 40.086155>,  <36.900803, 33.887314, 40.152428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895950, 33.656696, 40.086155>,  <36.887867, 33.272335, 39.975704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895950, 33.656696, 40.086155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158673, -0.269603, 0.949809,
		0.987124, -0.063011, 0.147021,
		0.020211, 0.960908, 0.276130,
		36.902012, 33.944969, 40.168995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385582, 33.462086, 40.425442>,  <36.887867, 33.272335, 39.975704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385582, 33.462086, 40.425442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099689, 33.731205, 40.501854>,  <36.928154, 33.892677, 40.547699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099689, 33.731205, 40.501854>,  <37.385582, 33.462086, 40.425442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099689, 33.731205, 40.501854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089346, -0.183059, 0.979033,
		0.693665, 0.716817, 0.070727,
		-0.714735, 0.672802, 0.191027,
		36.885269, 33.933044, 40.559162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668915, 33.758884, 41.098797>,  <37.385582, 33.462086, 40.425442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668915, 33.758884, 41.098797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.296070, 33.900864, 41.070030>,  <37.072361, 33.986053, 41.052773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.296070, 33.900864, 41.070030>,  <37.668915, 33.758884, 41.098797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296070, 33.900864, 41.070030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080991, -0.010766, 0.996657,
		0.352989, 0.934823, 0.038783,
		-0.932115, 0.354950, -0.071912,
		37.016434, 34.007347, 41.048458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659306, 34.274303, 41.508839>,  <37.668915, 33.758884, 41.098797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659306, 34.274303, 41.508839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269989, 34.188393, 41.476387>,  <37.036400, 34.136845, 41.456917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269989, 34.188393, 41.476387>,  <37.659306, 34.274303, 41.508839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269989, 34.188393, 41.476387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141849, 0.284665, 0.948074,
		-0.180529, 0.934257, -0.307527,
		-0.973287, -0.214777, -0.081133,
		36.978004, 34.123959, 41.452045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313187, 34.769550, 41.858791>,  <37.659306, 34.274303, 41.508839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313187, 34.769550, 41.858791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.069855, 34.452152, 41.851837>,  <36.923855, 34.261715, 41.847664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.069855, 34.452152, 41.851837>,  <37.313187, 34.769550, 41.858791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069855, 34.452152, 41.851837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042304, -0.054289, 0.997629,
		-0.792558, 0.606149, 0.066594,
		-0.608327, -0.793496, -0.017385,
		36.887356, 34.214104, 41.846622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826466, 34.939034, 42.387516>,  <37.313187, 34.769550, 41.858791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826466, 34.939034, 42.387516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818466, 34.548668, 42.300621>,  <36.813667, 34.314449, 42.248482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818466, 34.548668, 42.300621>,  <36.826466, 34.939034, 42.387516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818466, 34.548668, 42.300621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083429, -0.218156, 0.972341,
		-0.996313, 0.001319, 0.085782,
		-0.019996, -0.975913, -0.217242,
		36.812466, 34.255894, 42.235447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203213, 34.730358, 42.775322>,  <36.826466, 34.939034, 42.387516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203213, 34.730358, 42.775322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452805, 34.432228, 42.681396>,  <36.602562, 34.253349, 42.625042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452805, 34.432228, 42.681396>,  <36.203213, 34.730358, 42.775322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452805, 34.432228, 42.681396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152297, -0.178734, 0.972039,
		-0.766453, -0.642297, 0.001984,
		0.623983, -0.745324, -0.234811,
		36.639999, 34.208630, 42.610954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899269, 34.152077, 43.134445>,  <36.203213, 34.730358, 42.775322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899269, 34.152077, 43.134445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.284233, 34.069717, 43.063599>,  <36.515213, 34.020302, 43.021091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.284233, 34.069717, 43.063599>,  <35.899269, 34.152077, 43.134445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284233, 34.069717, 43.063599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142766, -0.171227, 0.974833,
		-0.231046, -0.963476, -0.135395,
		0.962412, -0.205901, -0.177113,
		36.572956, 34.007946, 43.010464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024090, 33.517830, 43.571957>,  <35.899269, 34.152077, 43.134445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024090, 33.517830, 43.571957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.369564, 33.702503, 43.491066>,  <36.576847, 33.813305, 43.442532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.369564, 33.702503, 43.491066>,  <36.024090, 33.517830, 43.571957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369564, 33.702503, 43.491066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177919, 0.096133, 0.979338,
		0.471583, -0.881821, 0.000887,
		0.863687, 0.461681, -0.202228,
		36.628670, 33.841007, 43.430397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439453, 33.323174, 44.120235>,  <36.024090, 33.517830, 43.571957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439453, 33.323174, 44.120235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687759, 33.606655, 43.986137>,  <36.836742, 33.776745, 43.905678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687759, 33.606655, 43.986137>,  <36.439453, 33.323174, 44.120235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687759, 33.606655, 43.986137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565766, -0.108927, 0.817339,
		0.542734, -0.697046, -0.468578,
		0.620764, 0.708704, -0.335246,
		36.873989, 33.819267, 43.885563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071568, 33.021606, 44.205971>,  <36.439453, 33.323174, 44.120235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071568, 33.021606, 44.205971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.131084, 33.416870, 44.191002>,  <37.166794, 33.654030, 44.182018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.131084, 33.416870, 44.191002>,  <37.071568, 33.021606, 44.205971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131084, 33.416870, 44.191002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764786, -0.091003, 0.637825,
		0.626867, -0.123528, -0.769271,
		0.148795, 0.988160, -0.037426,
		37.175724, 33.713318, 44.179775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831669, 33.219769, 44.015800>,  <37.071568, 33.021606, 44.205971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831669, 33.219769, 44.015800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.636772, 33.488285, 44.239216>,  <37.519836, 33.649395, 44.373264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.636772, 33.488285, 44.239216>,  <37.831669, 33.219769, 44.015800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636772, 33.488285, 44.239216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729803, -0.038233, 0.682587,
		0.479569, 0.740207, -0.471282,
		-0.487238, 0.671291, 0.558541,
		37.490601, 33.689671, 44.406776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289131, 33.585236, 44.379639>,  <37.831669, 33.219769, 44.015800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289131, 33.585236, 44.379639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955540, 33.703667, 44.565891>,  <37.755383, 33.774727, 44.677643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955540, 33.703667, 44.565891>,  <38.289131, 33.585236, 44.379639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955540, 33.703667, 44.565891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538395, 0.251825, 0.804186,
		0.120848, 0.921368, -0.369427,
		-0.833982, 0.296082, 0.465628,
		37.705345, 33.792492, 44.705578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431248, 34.149117, 44.754513>,  <38.289131, 33.585236, 44.379639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431248, 34.149117, 44.754513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103909, 34.061188, 44.966919>,  <37.907505, 34.008430, 45.094364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103909, 34.061188, 44.966919>,  <38.431248, 34.149117, 44.754513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103909, 34.061188, 44.966919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541098, 0.016679, 0.840794,
		-0.193682, 0.975397, 0.105296,
		-0.818352, -0.219822, 0.531016,
		37.858402, 33.995239, 45.126225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.627367, 31.050447, 44.475372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984732, 31.229843, 44.465031>,  <32.199150, 31.337481, 44.458824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984732, 31.229843, 44.465031>,  <31.627367, 31.050447, 44.475372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984732, 31.229843, 44.465031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341902, 0.641490, -0.686726,
		-0.291404, 0.622371, 0.726456,
		0.893413, 0.448491, -0.025857,
		32.252754, 31.364391, 44.457275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430742, 31.704838, 44.189762>,  <31.627367, 31.050447, 44.475372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430742, 31.704838, 44.189762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828310, 31.698349, 44.146206>,  <32.066853, 31.694456, 44.120071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828310, 31.698349, 44.146206>,  <31.430742, 31.704838, 44.189762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828310, 31.698349, 44.146206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072688, 0.646135, -0.759754,
		0.082681, 0.763051, 0.641028,
		0.993922, -0.016222, -0.108888,
		32.126488, 31.693481, 44.113541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664230, 32.382450, 44.185436>,  <31.430742, 31.704838, 44.189762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664230, 32.382450, 44.185436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.962055, 32.188389, 44.002026>,  <32.140751, 32.071953, 43.891979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.962055, 32.188389, 44.002026>,  <31.664230, 32.382450, 44.185436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962055, 32.188389, 44.002026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020475, 0.703156, -0.710741,
		0.667240, 0.519801, 0.533477,
		0.744561, -0.485158, -0.458531,
		32.185425, 32.042843, 43.864468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140251, 32.876606, 44.025787>,  <31.664230, 32.382450, 44.185436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140251, 32.876606, 44.025787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214607, 32.571129, 43.778492>,  <32.259220, 32.387840, 43.630116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214607, 32.571129, 43.778492>,  <32.140251, 32.876606, 44.025787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214607, 32.571129, 43.778492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189050, 0.645244, -0.740217,
		0.964212, 0.020724, 0.264323,
		0.185893, -0.763695, -0.618234,
		32.270374, 32.342022, 43.593021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659893, 33.111736, 43.541927>,  <32.140251, 32.876606, 44.025787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659893, 33.111736, 43.541927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.545830, 32.764736, 43.378891>,  <32.477394, 32.556538, 43.281067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.545830, 32.764736, 43.378891>,  <32.659893, 33.111736, 43.541927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545830, 32.764736, 43.378891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135656, 0.384443, -0.913127,
		0.948833, -0.315674, 0.008056,
		-0.285153, -0.867498, -0.407596,
		32.460285, 32.504486, 43.256611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248634, 32.917362, 43.081291>,  <32.659893, 33.111736, 43.541927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248634, 32.917362, 43.081291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.925198, 32.724426, 42.946514>,  <32.731136, 32.608665, 42.865646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.925198, 32.724426, 42.946514>,  <33.248634, 32.917362, 43.081291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925198, 32.724426, 42.946514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018590, 0.593327, -0.804747,
		0.588056, -0.644460, -0.488735,
		-0.808607, -0.482321, -0.336930,
		32.682621, 32.579723, 42.845432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305756, 32.824001, 42.262947>,  <33.248634, 32.917362, 43.081291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305756, 32.824001, 42.262947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917339, 32.774529, 42.344711>,  <32.684288, 32.744846, 42.393768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917339, 32.774529, 42.344711>,  <33.305756, 32.824001, 42.262947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917339, 32.774529, 42.344711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238320, 0.441207, -0.865182,
		0.016816, -0.888842, -0.457905,
		-0.971041, -0.123677, 0.204410,
		32.626026, 32.737427, 42.406033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923481, 32.389481, 41.691547>,  <33.305756, 32.824001, 42.262947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923481, 32.389481, 41.691547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.652775, 32.616741, 41.878822>,  <32.490353, 32.753098, 41.991188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.652775, 32.616741, 41.878822>,  <32.923481, 32.389481, 41.691547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652775, 32.616741, 41.878822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367027, 0.290905, -0.883553,
		-0.638189, -0.769792, 0.011653,
		-0.676762, 0.568151, 0.468186,
		32.449745, 32.787186, 42.019279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438522, 32.390614, 41.191189>,  <32.923481, 32.389481, 41.691547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438522, 32.390614, 41.191189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353920, 32.694210, 41.437504>,  <32.303158, 32.876369, 41.585293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353920, 32.694210, 41.437504>,  <32.438522, 32.390614, 41.191189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353920, 32.694210, 41.437504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280652, 0.556344, -0.782123,
		-0.936216, -0.338243, 0.095345,
		-0.211503, 0.758995, 0.615787,
		32.290470, 32.921909, 41.622238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648962, 32.675453, 40.985859>,  <32.438522, 32.390614, 41.191189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648962, 32.675453, 40.985859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.847826, 32.960499, 41.183853>,  <31.967144, 33.131527, 41.302650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.847826, 32.960499, 41.183853>,  <31.648962, 32.675453, 40.985859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847826, 32.960499, 41.183853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419261, 0.696771, -0.582005,
		-0.759639, 0.081820, 0.645178,
		0.497161, 0.712612, 0.494990,
		31.996975, 33.174282, 41.332352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147091, 33.151722, 40.917259>,  <31.648962, 32.675453, 40.985859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147091, 33.151722, 40.917259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.480453, 33.359390, 40.993046>,  <31.680471, 33.483990, 41.038517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.480453, 33.359390, 40.993046>,  <31.147091, 33.151722, 40.917259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480453, 33.359390, 40.993046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313682, 0.726621, -0.611250,
		-0.455013, 0.449986, 0.768424,
		0.833407, 0.519167, 0.189469,
		31.730476, 33.515141, 41.049885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916710, 33.933601, 40.982559>,  <31.147091, 33.151722, 40.917259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916710, 33.933601, 40.982559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.307985, 33.977947, 40.912300>,  <31.542751, 34.004555, 40.870144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.307985, 33.977947, 40.912300>,  <30.916710, 33.933601, 40.982559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307985, 33.977947, 40.912300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196844, 0.764761, -0.613509,
		0.066312, 0.634704, 0.769905,
		0.978190, 0.110868, -0.175651,
		31.601442, 34.011208, 40.859604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071730, 34.653614, 41.006302>,  <30.916710, 33.933601, 40.982559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071730, 34.653614, 41.006302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.363300, 34.469761, 40.803360>,  <31.538242, 34.359451, 40.681595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.363300, 34.469761, 40.803360>,  <31.071730, 34.653614, 41.006302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363300, 34.469761, 40.803360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034188, 0.715738, -0.697532,
		0.683737, 0.525795, 0.506007,
		0.728927, -0.459629, -0.507353,
		31.581978, 34.331871, 40.651154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574940, 35.205952, 40.707077>,  <31.071730, 34.653614, 41.006302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574940, 35.205952, 40.707077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613873, 34.869747, 40.493885>,  <31.637232, 34.668026, 40.365971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613873, 34.869747, 40.493885>,  <31.574940, 35.205952, 40.707077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613873, 34.869747, 40.493885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003111, 0.535778, -0.844353,
		0.995247, 0.080524, 0.054763,
		0.097331, -0.840510, -0.532981,
		31.643072, 34.617596, 40.333992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285805, 35.377522, 40.801464>,  <31.574940, 35.205952, 40.707077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285805, 35.377522, 40.801464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498013, 35.701031, 40.903000>,  <32.625336, 35.895138, 40.963921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498013, 35.701031, 40.903000>,  <32.285805, 35.377522, 40.801464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498013, 35.701031, 40.903000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152017, -0.385369, 0.910155,
		0.833931, -0.444267, -0.327393,
		0.530519, 0.808775, 0.253835,
		32.657169, 35.943665, 40.979149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932751, 35.122181, 41.061398>,  <32.285805, 35.377522, 40.801464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932751, 35.122181, 41.061398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905289, 35.505997, 41.170624>,  <32.888809, 35.736286, 41.236160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905289, 35.505997, 41.170624>,  <32.932751, 35.122181, 41.061398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905289, 35.505997, 41.170624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194899, -0.255537, 0.946951,
		0.978417, 0.118235, -0.169469,
		-0.068657, 0.959542, 0.273065,
		32.884693, 35.793858, 41.252544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484818, 35.240334, 41.459526>,  <32.932751, 35.122181, 41.061398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484818, 35.240334, 41.459526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217190, 35.510666, 41.583202>,  <33.056614, 35.672867, 41.657410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217190, 35.510666, 41.583202>,  <33.484818, 35.240334, 41.459526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217190, 35.510666, 41.583202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216824, -0.220426, 0.950999,
		0.710868, 0.703325, 0.000943,
		-0.669069, 0.675831, 0.309192,
		33.016468, 35.713413, 41.675961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727356, 35.471180, 42.098381>,  <33.484818, 35.240334, 41.459526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727356, 35.471180, 42.098381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.365849, 35.629246, 42.164158>,  <33.148945, 35.724087, 42.203625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.365849, 35.629246, 42.164158>,  <33.727356, 35.471180, 42.098381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365849, 35.629246, 42.164158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139041, -0.092301, 0.985976,
		0.404802, 0.913961, 0.028475,
		-0.903772, 0.395166, 0.164442,
		33.094719, 35.747795, 42.213490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761765, 35.813122, 42.853195>,  <33.727356, 35.471180, 42.098381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761765, 35.813122, 42.853195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375225, 35.752338, 42.770164>,  <33.143303, 35.715870, 42.720345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375225, 35.752338, 42.770164>,  <33.761765, 35.813122, 42.853195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375225, 35.752338, 42.770164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196109, -0.087076, 0.976708,
		-0.166493, 0.984544, 0.054345,
		-0.966344, -0.151957, -0.207576,
		33.085323, 35.706753, 42.707893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288944, 36.207928, 43.313873>,  <33.761765, 35.813122, 42.853195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288944, 36.207928, 43.313873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077644, 35.890694, 43.192562>,  <32.950867, 35.700356, 43.119774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077644, 35.890694, 43.192562>,  <33.288944, 36.207928, 43.313873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077644, 35.890694, 43.192562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008692, -0.362216, 0.932054,
		-0.849047, 0.489717, 0.198233,
		-0.528245, -0.793081, -0.303282,
		32.919170, 35.652771, 43.101578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731956, 36.137482, 43.794197>,  <33.288944, 36.207928, 43.313873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731956, 36.137482, 43.794197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782581, 35.787216, 43.607780>,  <32.812954, 35.577057, 43.495930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782581, 35.787216, 43.607780>,  <32.731956, 36.137482, 43.794197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782581, 35.787216, 43.607780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016688, -0.471634, 0.881637,
		-0.991819, -0.103801, -0.074302,
		0.126558, -0.875664, -0.466043,
		32.820549, 35.524517, 43.467968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322758, 35.748035, 44.197899>,  <32.731956, 36.137482, 43.794197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322758, 35.748035, 44.197899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.541264, 35.477859, 43.999756>,  <32.672367, 35.315754, 43.880871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.541264, 35.477859, 43.999756>,  <32.322758, 35.748035, 44.197899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541264, 35.477859, 43.999756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050066, -0.616660, 0.785636,
		-0.836115, -0.404365, -0.370675,
		0.546264, -0.675441, -0.495354,
		32.705143, 35.275227, 43.851151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914618, 35.085224, 44.257370>,  <32.322758, 35.748035, 44.197899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914618, 35.085224, 44.257370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291668, 34.995319, 44.158630>,  <32.517899, 34.941376, 44.099384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291668, 34.995319, 44.158630>,  <31.914618, 35.085224, 44.257370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291668, 34.995319, 44.158630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051662, -0.632301, 0.772998,
		-0.329827, -0.741401, -0.584412,
		0.942627, -0.224764, -0.246853,
		32.574455, 34.927891, 44.084576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936354, 34.374447, 44.358456>,  <31.914618, 35.085224, 44.257370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936354, 34.374447, 44.358456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306385, 34.525955, 44.369484>,  <32.528404, 34.616859, 44.376102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306385, 34.525955, 44.369484>,  <31.936354, 34.374447, 44.358456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306385, 34.525955, 44.369484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180580, -0.502572, 0.845465,
		0.334097, -0.777143, -0.533318,
		0.925078, 0.378774, 0.027571,
		32.583908, 34.639587, 44.377754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304409, 33.860451, 44.602314>,  <31.936354, 34.374447, 44.358456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304409, 33.860451, 44.602314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563770, 34.157970, 44.667233>,  <32.719387, 34.336483, 44.706184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563770, 34.157970, 44.667233>,  <32.304409, 33.860451, 44.602314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563770, 34.157970, 44.667233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209262, -0.379108, 0.901380,
		0.731975, -0.550491, -0.401462,
		0.648399, 0.743800, 0.162300,
		32.758289, 34.381111, 44.715923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883923, 33.482056, 44.816189>,  <32.304409, 33.860451, 44.602314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883923, 33.482056, 44.816189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947666, 33.855343, 44.945007>,  <32.985912, 34.079315, 45.022297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947666, 33.855343, 44.945007>,  <32.883923, 33.482056, 44.816189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947666, 33.855343, 44.945007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361485, -0.358717, 0.860611,
		0.918658, -0.020735, -0.394509,
		0.159361, 0.933216, 0.322043,
		32.995476, 34.135307, 45.041618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559311, 33.420795, 45.035892>,  <32.883923, 33.482056, 44.816189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559311, 33.420795, 45.035892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361904, 33.732048, 45.191303>,  <33.243458, 33.918800, 45.284550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361904, 33.732048, 45.191303>,  <33.559311, 33.420795, 45.035892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361904, 33.732048, 45.191303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144778, -0.366984, 0.918892,
		0.857600, 0.509741, 0.068457,
		-0.493519, 0.778131, 0.388525,
		33.213848, 33.965488, 45.307861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001328, 33.729870, 45.544579>,  <33.559311, 33.420795, 45.035892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001328, 33.729870, 45.544579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.620106, 33.814888, 45.630840>,  <33.391373, 33.865898, 45.682598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.620106, 33.814888, 45.630840>,  <34.001328, 33.729870, 45.544579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620106, 33.814888, 45.630840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136812, -0.333097, 0.932914,
		0.270125, 0.918623, 0.288381,
		-0.953056, 0.212549, 0.215657,
		33.334190, 33.878654, 45.695538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276287, 34.380692, 45.787518>,  <34.001328, 33.729870, 45.544579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276287, 34.380692, 45.787518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597984, 34.593079, 45.894306>,  <34.791000, 34.720509, 45.958378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597984, 34.593079, 45.894306>,  <34.276287, 34.380692, 45.787518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597984, 34.593079, 45.894306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042872, 0.396211, -0.917158,
		-0.592754, 0.749062, 0.295886,
		0.804241, 0.530964, 0.266969,
		34.839256, 34.752369, 45.974396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129276, 35.018902, 45.561134>,  <34.276287, 34.380692, 45.787518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129276, 35.018902, 45.561134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523796, 35.054493, 45.616707>,  <34.760506, 35.075848, 45.650051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.523796, 35.054493, 45.616707>,  <34.129276, 35.018902, 45.561134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523796, 35.054493, 45.616707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081863, 0.467182, -0.880363,
		-0.143235, 0.879673, 0.453497,
		0.986297, 0.088974, 0.138930,
		34.819687, 35.081184, 45.658386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307983, 35.700729, 45.380966>,  <34.129276, 35.018902, 45.561134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307983, 35.700729, 45.380966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.670677, 35.532215, 45.373455>,  <34.888294, 35.431107, 45.368950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.670677, 35.532215, 45.373455>,  <34.307983, 35.700729, 45.380966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670677, 35.532215, 45.373455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235062, 0.541887, -0.806910,
		0.350113, 0.727240, 0.590375,
		0.906734, -0.421285, -0.018775,
		34.942696, 35.405830, 45.367821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778946, 36.221504, 45.369438>,  <34.307983, 35.700729, 45.380966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778946, 36.221504, 45.369438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934193, 35.892361, 45.203415>,  <35.027340, 35.694874, 45.103802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934193, 35.892361, 45.203415>,  <34.778946, 36.221504, 45.369438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934193, 35.892361, 45.203415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122459, 0.492409, -0.861706,
		0.913439, 0.283614, 0.291879,
		0.388116, -0.822858, -0.415055,
		35.050629, 35.645504, 45.078899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330868, 36.474033, 45.169266>,  <34.778946, 36.221504, 45.369438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330868, 36.474033, 45.169266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.271187, 36.155079, 44.935371>,  <35.235378, 35.963707, 44.795033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.271187, 36.155079, 44.935371>,  <35.330868, 36.474033, 45.169266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271187, 36.155079, 44.935371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252659, 0.540983, -0.802185,
		0.955983, -0.267423, 0.120753,
		-0.149198, -0.797384, -0.584738,
		35.226429, 35.915863, 44.759949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879261, 36.545090, 44.634327>,  <35.330868, 36.474033, 45.169266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879261, 36.545090, 44.634327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679314, 36.233200, 44.483505>,  <35.559345, 36.046066, 44.393013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679314, 36.233200, 44.483505>,  <35.879261, 36.545090, 44.634327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679314, 36.233200, 44.483505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179731, 0.332481, -0.925826,
		0.847249, -0.530556, -0.026055,
		-0.499865, -0.779722, -0.377052,
		35.529354, 35.999283, 44.370388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310459, 36.265018, 44.121609>,  <35.879261, 36.545090, 44.634327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310459, 36.265018, 44.121609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936703, 36.163082, 44.022026>,  <35.712448, 36.101921, 43.962276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936703, 36.163082, 44.022026>,  <36.310459, 36.265018, 44.121609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936703, 36.163082, 44.022026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165788, 0.307487, -0.936998,
		0.315367, -0.916784, -0.245054,
		-0.934375, -0.254872, -0.248963,
		35.656387, 36.086632, 43.947338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293594, 35.905884, 43.433376>,  <36.310459, 36.265018, 44.121609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293594, 35.905884, 43.433376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.914127, 36.027935, 43.466652>,  <35.686447, 36.101166, 43.486618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.914127, 36.027935, 43.466652>,  <36.293594, 35.905884, 43.433376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914127, 36.027935, 43.466652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055375, 0.419214, -0.906197,
		-0.311383, -0.855075, -0.414593,
		-0.948670, 0.305132, 0.083186,
		35.629528, 36.119476, 43.491608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908562, 35.726955, 42.795559>,  <36.293594, 35.905884, 43.433376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908562, 35.726955, 42.795559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.681732, 36.001869, 42.977135>,  <35.545635, 36.166817, 43.086079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.681732, 36.001869, 42.977135>,  <35.908562, 35.726955, 42.795559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681732, 36.001869, 42.977135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300630, 0.340392, -0.890929,
		-0.766842, -0.641692, 0.013592,
		-0.567076, 0.687288, 0.453939,
		35.511608, 36.208057, 43.113316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102573, 35.731777, 42.613586>,  <35.908562, 35.726955, 42.795559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102573, 35.731777, 42.613586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209602, 36.101295, 42.723141>,  <35.273819, 36.323006, 42.788872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209602, 36.101295, 42.723141>,  <35.102573, 35.731777, 42.613586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209602, 36.101295, 42.723141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299969, 0.349990, -0.887426,
		-0.915655, 0.155293, 0.370757,
		0.267572, 0.923792, 0.273887,
		35.289875, 36.378433, 42.805305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608635, 36.129627, 42.292648>,  <35.102573, 35.731777, 42.613586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608635, 36.129627, 42.292648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881256, 36.407997, 42.383133>,  <35.044830, 36.575020, 42.437424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881256, 36.407997, 42.383133>,  <34.608635, 36.129627, 42.292648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881256, 36.407997, 42.383133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167892, 0.449595, -0.877312,
		-0.712246, 0.559958, 0.423265,
		0.681556, 0.695925, 0.226210,
		35.085724, 36.616776, 42.450996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414314, 36.810715, 42.014648>,  <34.608635, 36.129627, 42.292648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414314, 36.810715, 42.014648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.809402, 36.841095, 42.069252>,  <35.046455, 36.859322, 42.102013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.809402, 36.841095, 42.069252>,  <34.414314, 36.810715, 42.014648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809402, 36.841095, 42.069252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078210, 0.516019, -0.853000,
		-0.135222, 0.853204, 0.503744,
		0.987724, 0.075947, 0.136506,
		35.105721, 36.863880, 42.110203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564548, 37.413929, 41.686802>,  <34.414314, 36.810715, 42.014648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564548, 37.413929, 41.686802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.925808, 37.248707, 41.733624>,  <35.142563, 37.149574, 41.761719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.925808, 37.248707, 41.733624>,  <34.564548, 37.413929, 41.686802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925808, 37.248707, 41.733624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282688, 0.366947, -0.886249,
		0.323117, 0.833508, 0.448175,
		0.903152, -0.413055, 0.117056,
		35.196754, 37.124790, 41.768742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144848, 37.951534, 41.540634>,  <34.564548, 37.413929, 41.686802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144848, 37.951534, 41.540634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278835, 37.587456, 41.443195>,  <35.359226, 37.369007, 41.384731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278835, 37.587456, 41.443195>,  <35.144848, 37.951534, 41.540634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278835, 37.587456, 41.443195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427472, 0.377196, -0.821578,
		0.839682, 0.171069, 0.515431,
		0.334965, -0.910197, -0.243598,
		35.379326, 37.314396, 41.370117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.481890, 41.632072, 28.867315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.468626, 41.413120, 28.532825>,  <27.460669, 41.281750, 28.332132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.468626, 41.413120, 28.532825>,  <27.481890, 41.632072, 28.867315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468626, 41.413120, 28.532825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663422, -0.613720, 0.428041,
		-0.747510, 0.568963, -0.342797,
		-0.033157, -0.547384, -0.836224,
		27.458679, 41.248905, 28.281958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772205, 41.475666, 28.741713>,  <27.481890, 41.632072, 28.867315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772205, 41.475666, 28.741713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.993046, 41.207047, 28.544043>,  <27.125549, 41.045876, 28.425442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.993046, 41.207047, 28.544043>,  <26.772205, 41.475666, 28.741713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993046, 41.207047, 28.544043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584964, -0.734324, 0.344363,
		-0.594139, 0.098950, -0.798253,
		0.552101, -0.671549, -0.494173,
		27.158676, 41.005581, 28.395790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325207, 41.037525, 28.357544>,  <26.772205, 41.475666, 28.741713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325207, 41.037525, 28.357544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.655188, 40.814400, 28.393988>,  <26.853176, 40.680523, 28.415854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.655188, 40.814400, 28.393988>,  <26.325207, 41.037525, 28.357544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655188, 40.814400, 28.393988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538946, -0.727774, 0.424126,
		-0.170274, -0.398987, -0.901008,
		0.824951, -0.557812, 0.091111,
		26.902674, 40.647057, 28.421322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083891, 40.422447, 28.208441>,  <26.325207, 41.037525, 28.357544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083891, 40.422447, 28.208441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.427374, 40.351170, 28.400637>,  <26.633463, 40.308403, 28.515953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.427374, 40.351170, 28.400637>,  <26.083891, 40.422447, 28.208441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427374, 40.351170, 28.400637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363218, -0.873057, 0.325338,
		0.361520, -0.453892, -0.814423,
		0.858706, -0.178197, 0.480489,
		26.684986, 40.297710, 28.544783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116188, 39.723202, 28.188154>,  <26.083891, 40.422447, 28.208441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116188, 39.723202, 28.188154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.421804, 39.811882, 28.430506>,  <26.605173, 39.865089, 28.575916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.421804, 39.811882, 28.430506>,  <26.116188, 39.723202, 28.188154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421804, 39.811882, 28.430506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169278, -0.837316, 0.519853,
		0.622566, -0.499750, -0.602214,
		0.764040, 0.221701, 0.605881,
		26.651016, 39.878391, 28.612270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562857, 39.160564, 28.184254>,  <26.116188, 39.723202, 28.188154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562857, 39.160564, 28.184254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.604946, 39.372425, 28.520920>,  <26.630199, 39.499542, 28.722919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.604946, 39.372425, 28.520920>,  <26.562857, 39.160564, 28.184254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604946, 39.372425, 28.520920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136791, -0.830608, 0.539795,
		0.984995, -0.171932, -0.014949,
		0.105225, 0.529650, 0.841664,
		26.636513, 39.531319, 28.773418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040060, 38.730797, 28.688286>,  <26.562857, 39.160564, 28.184254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040060, 38.730797, 28.688286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856728, 38.995377, 28.925747>,  <26.746729, 39.154125, 29.068224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856728, 38.995377, 28.925747>,  <27.040060, 38.730797, 28.688286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856728, 38.995377, 28.925747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142726, -0.714045, 0.685397,
		0.877247, 0.229409, 0.421674,
		-0.458331, 0.661446, 0.593652,
		26.719229, 39.193810, 29.103842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209276, 38.511356, 29.319458>,  <27.040060, 38.730797, 28.688286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209276, 38.511356, 29.319458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.898827, 38.742157, 29.421200>,  <26.712557, 38.880638, 29.482244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.898827, 38.742157, 29.421200>,  <27.209276, 38.511356, 29.319458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898827, 38.742157, 29.421200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215650, -0.621918, 0.752803,
		0.592560, 0.529417, 0.607116,
		-0.776124, 0.577006, 0.254355,
		26.665989, 38.915260, 29.497507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269199, 38.476501, 30.076157>,  <27.209276, 38.511356, 29.319458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269199, 38.476501, 30.076157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.901518, 38.576103, 29.954132>,  <26.680910, 38.635864, 29.880917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.901518, 38.576103, 29.954132>,  <27.269199, 38.476501, 30.076157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901518, 38.576103, 29.954132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392667, -0.521266, 0.757690,
		0.029652, 0.816258, 0.576926,
		-0.919203, 0.249007, -0.305061,
		26.625757, 38.650806, 29.862614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945133, 38.488575, 30.676731>,  <27.269199, 38.476501, 30.076157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945133, 38.488575, 30.676731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.645418, 38.460609, 30.413313>,  <26.465590, 38.443829, 30.255262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.645418, 38.460609, 30.413313>,  <26.945133, 38.488575, 30.676731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645418, 38.460609, 30.413313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450676, -0.674794, 0.584417,
		-0.485242, 0.734686, 0.474105,
		-0.749287, -0.069916, -0.658545,
		26.420631, 38.439636, 30.215750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245916, 38.580929, 31.049919>,  <26.945133, 38.488575, 30.676731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245916, 38.580929, 31.049919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.149878, 38.376884, 30.719553>,  <26.092255, 38.254456, 30.521334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.149878, 38.376884, 30.719553>,  <26.245916, 38.580929, 31.049919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149878, 38.376884, 30.719553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482581, -0.675503, 0.557505,
		-0.842299, 0.532428, -0.083984,
		-0.240099, -0.510115, -0.825915,
		26.077848, 38.223850, 30.471779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541773, 38.414402, 31.062613>,  <26.245916, 38.580929, 31.049919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541773, 38.414402, 31.062613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.672977, 38.121284, 30.824144>,  <25.751699, 37.945415, 30.681063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.672977, 38.121284, 30.824144>,  <25.541773, 38.414402, 31.062613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672977, 38.121284, 30.824144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455247, -0.675591, 0.579937,
		-0.827743, 0.081180, -0.555204,
		0.328011, -0.732794, -0.596173,
		25.771381, 37.901447, 30.645292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.980387, 37.979507, 30.974316>,  <25.541773, 38.414402, 31.062613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.980387, 37.979507, 30.974316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.303564, 37.761993, 30.883514>,  <25.497471, 37.631485, 30.829033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.303564, 37.761993, 30.883514>,  <24.980387, 37.979507, 30.974316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303564, 37.761993, 30.883514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346861, -0.750300, 0.562794,
		-0.476358, -0.375967, -0.794816,
		0.807943, -0.543782, -0.227003,
		25.545946, 37.598858, 30.815414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.661570, 37.373611, 30.857073>,  <24.980387, 37.979507, 30.974316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.661570, 37.373611, 30.857073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.047522, 37.296146, 30.928068>,  <25.279093, 37.249668, 30.970665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.047522, 37.296146, 30.928068>,  <24.661570, 37.373611, 30.857073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047522, 37.296146, 30.928068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262442, -0.739938, 0.619367,
		0.011382, -0.644195, -0.764777,
		0.964881, -0.193660, 0.177486,
		25.336987, 37.238049, 30.981314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.680519, 36.705597, 30.813337>,  <24.661570, 37.373611, 30.857073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.680519, 36.705597, 30.813337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.006737, 36.805984, 31.021915>,  <25.202467, 36.866219, 31.147062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.006737, 36.805984, 31.021915>,  <24.680519, 36.705597, 30.813337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006737, 36.805984, 31.021915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213151, -0.707444, 0.673862,
		0.538011, -0.660710, -0.523457,
		0.815543, 0.250970, 0.521444,
		25.251400, 36.881275, 31.178349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930887, 36.103230, 31.096670>,  <24.680519, 36.705597, 30.813337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930887, 36.103230, 31.096670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.114222, 36.363289, 31.339073>,  <25.224222, 36.519325, 31.484514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.114222, 36.363289, 31.339073>,  <24.930887, 36.103230, 31.096670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114222, 36.363289, 31.339073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127261, -0.626808, 0.768711,
		0.879622, -0.429448, -0.204549,
		0.458334, 0.650144, 0.606006,
		25.251722, 36.558331, 31.520874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431931, 35.749771, 31.552082>,  <24.930887, 36.103230, 31.096670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431931, 35.749771, 31.552082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.415213, 36.105320, 31.734581>,  <25.405182, 36.318649, 31.844080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.415213, 36.105320, 31.734581>,  <25.431931, 35.749771, 31.552082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415213, 36.105320, 31.734581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038992, -0.457750, 0.888225,
		0.998365, 0.019334, 0.053791,
		-0.041796, 0.888871, 0.456248,
		25.402674, 36.371983, 31.871456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944277, 35.746265, 32.163425>,  <25.431931, 35.749771, 31.552082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944277, 35.746265, 32.163425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.674170, 36.032009, 32.236851>,  <25.512106, 36.203457, 32.280907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.674170, 36.032009, 32.236851>,  <25.944277, 35.746265, 32.163425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674170, 36.032009, 32.236851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180685, -0.401513, 0.897853,
		0.715098, 0.573124, 0.400204,
		-0.675268, 0.714364, 0.183567,
		25.471588, 36.246319, 32.291920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250946, 36.104069, 32.680729>,  <25.944277, 35.746265, 32.163425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250946, 36.104069, 32.680729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.854273, 36.150467, 32.703041>,  <25.616270, 36.178307, 32.716431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.854273, 36.150467, 32.703041>,  <26.250946, 36.104069, 32.680729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854273, 36.150467, 32.703041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016626, -0.314324, 0.949170,
		0.127634, 0.942202, 0.309781,
		-0.991682, 0.115996, 0.055783,
		25.556768, 36.185265, 32.719776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792719, 35.458454, 32.509861>,  <26.250946, 36.104069, 32.680729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792719, 35.458454, 32.509861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.036337, 35.535316, 32.817665>,  <27.182508, 35.581436, 33.002346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.036337, 35.535316, 32.817665>,  <26.792719, 35.458454, 32.509861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036337, 35.535316, 32.817665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595624, 0.529847, -0.603733,
		-0.523733, 0.826037, 0.208246,
		0.609044, 0.192159, 0.769506,
		27.219049, 35.592964, 33.048515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953375, 36.126637, 32.488083>,  <26.792719, 35.458454, 32.509861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953375, 36.126637, 32.488083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.255583, 36.011585, 32.723526>,  <27.436907, 35.942554, 32.864792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.255583, 36.011585, 32.723526>,  <26.953375, 36.126637, 32.488083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255583, 36.011585, 32.723526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639881, 0.516679, -0.568854,
		-0.140507, 0.806421, 0.574407,
		0.755520, -0.287624, 0.588610,
		27.482239, 35.925297, 32.900108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344690, 36.711632, 32.558262>,  <26.953375, 36.126637, 32.488083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344690, 36.711632, 32.558262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.590059, 36.411755, 32.657597>,  <27.737280, 36.231827, 32.717197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.590059, 36.411755, 32.657597>,  <27.344690, 36.711632, 32.558262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590059, 36.411755, 32.657597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738908, 0.433809, -0.515583,
		0.278799, 0.499767, 0.820063,
		0.613422, -0.749695, 0.248336,
		27.774086, 36.186848, 32.732098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990301, 37.089855, 32.846786>,  <27.344690, 36.711632, 32.558262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990301, 37.089855, 32.846786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065500, 36.729149, 32.691113>,  <28.110620, 36.512726, 32.597706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065500, 36.729149, 32.691113>,  <27.990301, 37.089855, 32.846786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065500, 36.729149, 32.691113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623828, 0.415696, -0.661842,
		0.758613, -0.118361, 0.640700,
		0.188000, -0.901769, -0.389189,
		28.121901, 36.458618, 32.574356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799299, 37.003864, 32.799080>,  <27.990301, 37.089855, 32.846786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799299, 37.003864, 32.799080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623724, 36.754581, 32.540176>,  <28.518379, 36.605011, 32.384834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623724, 36.754581, 32.540176>,  <28.799299, 37.003864, 32.799080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623724, 36.754581, 32.540176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571794, 0.361935, -0.736244,
		0.693099, -0.693265, 0.197479,
		-0.438937, -0.623207, -0.647261,
		28.492043, 36.567619, 32.345997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238146, 36.921299, 32.240025>,  <28.799299, 37.003864, 32.799080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238146, 36.921299, 32.240025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938597, 36.739986, 32.046646>,  <28.758867, 36.631199, 31.930618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938597, 36.739986, 32.046646>,  <29.238146, 36.921299, 32.240025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938597, 36.739986, 32.046646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438999, 0.207182, -0.874274,
		0.496456, -0.866955, 0.043837,
		-0.748874, -0.453283, -0.483449,
		28.713934, 36.604000, 31.901611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602942, 36.511192, 31.757286>,  <29.238146, 36.921299, 32.240025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602942, 36.511192, 31.757286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224710, 36.543423, 31.631180>,  <28.997772, 36.562759, 31.555517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224710, 36.543423, 31.631180>,  <29.602942, 36.511192, 31.757286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224710, 36.543423, 31.631180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325384, 0.242831, -0.913870,
		0.002921, -0.966716, -0.255833,
		-0.945578, 0.080574, -0.315263,
		28.941036, 36.567596, 31.536600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620701, 36.226021, 31.043545>,  <29.602942, 36.511192, 31.757286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620701, 36.226021, 31.043545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304688, 36.468990, 31.076715>,  <29.115080, 36.614773, 31.096619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304688, 36.468990, 31.076715>,  <29.620701, 36.226021, 31.043545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304688, 36.468990, 31.076715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259628, 0.454040, -0.852315,
		-0.555373, -0.651827, -0.516412,
		-0.790034, 0.607428, 0.082929,
		29.067677, 36.651218, 31.101595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396584, 36.358158, 30.350412>,  <29.620701, 36.226021, 31.043545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396584, 36.358158, 30.350412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227556, 36.657711, 30.554615>,  <29.126141, 36.837440, 30.677137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227556, 36.657711, 30.554615>,  <29.396584, 36.358158, 30.350412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227556, 36.657711, 30.554615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184982, 0.622674, -0.760302,
		-0.887253, -0.226844, -0.401651,
		-0.422568, 0.748878, 0.510507,
		29.100786, 36.882374, 30.707767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045744, 36.637257, 29.855639>,  <29.396584, 36.358158, 30.350412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045744, 36.637257, 29.855639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043482, 36.920425, 30.138147>,  <29.042126, 37.090324, 30.307652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043482, 36.920425, 30.138147>,  <29.045744, 36.637257, 29.855639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043482, 36.920425, 30.138147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420845, 0.642373, -0.640505,
		-0.907115, 0.293609, -0.301556,
		-0.005654, 0.707920, 0.706270,
		29.041786, 37.132801, 30.350029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642216, 37.193474, 29.689968>,  <29.045744, 36.637257, 29.855639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642216, 37.193474, 29.689968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908487, 37.340504, 29.949741>,  <29.068251, 37.428722, 30.105606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908487, 37.340504, 29.949741>,  <28.642216, 37.193474, 29.689968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908487, 37.340504, 29.949741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240610, 0.718074, -0.653052,
		-0.706386, 0.590982, 0.389563,
		0.665677, 0.367575, 0.649433,
		29.108191, 37.450775, 30.144571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507915, 37.880577, 29.620388>,  <28.642216, 37.193474, 29.689968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507915, 37.880577, 29.620388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.862715, 37.858994, 29.803833>,  <29.075594, 37.846043, 29.913900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.862715, 37.858994, 29.803833>,  <28.507915, 37.880577, 29.620388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862715, 37.858994, 29.803833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278321, 0.854953, -0.437713,
		-0.368473, 0.515891, 0.773359,
		0.886998, -0.053957, 0.458610,
		29.128815, 37.842808, 29.941416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603575, 38.441803, 30.020979>,  <28.507915, 37.880577, 29.620388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603575, 38.441803, 30.020979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988247, 38.343407, 29.972544>,  <29.219049, 38.284370, 29.943483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988247, 38.343407, 29.972544>,  <28.603575, 38.441803, 30.020979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988247, 38.343407, 29.972544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215792, 0.951518, -0.219197,
		0.169136, 0.184668, 0.968138,
		0.961679, -0.245990, -0.121086,
		29.276751, 38.269611, 29.936218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981178, 38.917805, 30.341734>,  <28.603575, 38.441803, 30.020979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981178, 38.917805, 30.341734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.236013, 38.752598, 30.081417>,  <29.388914, 38.653473, 29.925226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.236013, 38.752598, 30.081417>,  <28.981178, 38.917805, 30.341734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236013, 38.752598, 30.081417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304433, 0.910506, -0.279818,
		0.708122, -0.019854, 0.705811,
		0.637090, -0.413018, -0.650794,
		29.427141, 38.628693, 29.886179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694090, 39.287937, 30.401497>,  <28.981178, 38.917805, 30.341734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694090, 39.287937, 30.401497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672985, 39.110577, 30.043589>,  <29.660322, 39.004162, 29.828844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672985, 39.110577, 30.043589>,  <29.694090, 39.287937, 30.401497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672985, 39.110577, 30.043589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479670, 0.774629, -0.412151,
		0.875861, -0.450939, 0.171816,
		-0.052762, -0.443401, -0.894769,
		29.657156, 38.977558, 29.775158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311981, 39.408520, 30.174870>,  <29.694090, 39.287937, 30.401497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311981, 39.408520, 30.174870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.148724, 39.304173, 29.824928>,  <30.050770, 39.241566, 29.614964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.148724, 39.304173, 29.824928>,  <30.311981, 39.408520, 30.174870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148724, 39.304173, 29.824928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626629, 0.616845, -0.476275,
		0.663894, -0.742596, -0.088293,
		-0.408144, -0.260869, -0.874852,
		30.026279, 39.225910, 29.562473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859549, 39.546249, 29.703918>,  <30.311981, 39.408520, 30.174870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859549, 39.546249, 29.703918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.526218, 39.529552, 29.483437>,  <30.326221, 39.519535, 29.351147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.526218, 39.529552, 29.483437>,  <30.859549, 39.546249, 29.703918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526218, 39.529552, 29.483437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277729, 0.830544, -0.482766,
		0.477952, -0.555386, -0.680520,
		-0.833324, -0.041739, -0.551207,
		30.276220, 39.517033, 29.318075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115543, 39.721355, 29.069082>,  <30.859549, 39.546249, 29.703918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115543, 39.721355, 29.069082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722485, 39.787701, 29.035868>,  <30.486649, 39.827507, 29.015940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722485, 39.787701, 29.035868>,  <31.115543, 39.721355, 29.069082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722485, 39.787701, 29.035868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184833, 0.913111, -0.363407,
		0.015546, -0.372449, -0.927922,
		-0.982647, 0.165861, -0.083036,
		30.427691, 39.837460, 29.010958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967442, 40.093758, 28.389681>,  <31.115543, 39.721355, 29.069082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967442, 40.093758, 28.389681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.666183, 40.192368, 28.633646>,  <30.485428, 40.251534, 28.780025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.666183, 40.192368, 28.633646>,  <30.967442, 40.093758, 28.389681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666183, 40.192368, 28.633646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033590, 0.911506, -0.409913,
		-0.656994, -0.329212, -0.678217,
		-0.753147, 0.246529, 0.609912,
		30.440239, 40.266327, 28.816620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563196, 40.532047, 27.949224>,  <30.967442, 40.093758, 28.389681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563196, 40.532047, 27.949224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.444929, 40.607712, 28.323774>,  <30.373970, 40.653111, 28.548504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.444929, 40.607712, 28.323774>,  <30.563196, 40.532047, 27.949224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444929, 40.607712, 28.323774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237301, 0.934931, -0.263803,
		-0.925349, -0.300200, -0.231537,
		-0.295665, 0.189165, 0.936375,
		30.356230, 40.664463, 28.604687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953632, 40.972569, 27.890175>,  <30.563196, 40.532047, 27.949224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953632, 40.972569, 27.890175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027143, 41.017406, 28.280798>,  <30.071251, 41.044308, 28.515171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027143, 41.017406, 28.280798>,  <29.953632, 40.972569, 27.890175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027143, 41.017406, 28.280798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289774, 0.955505, -0.055142,
		-0.939285, -0.272847, 0.208082,
		0.183779, 0.112091, 0.976556,
		30.082277, 41.051033, 28.573765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363071, 41.311745, 28.108652>,  <29.953632, 40.972569, 27.890175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363071, 41.311745, 28.108652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662786, 41.374157, 28.366093>,  <29.842615, 41.411606, 28.520557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662786, 41.374157, 28.366093>,  <29.363071, 41.311745, 28.108652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662786, 41.374157, 28.366093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311901, 0.940458, 0.135116,
		-0.584197, -0.301981, 0.753340,
		0.749288, 0.156033, 0.643600,
		29.887573, 41.420967, 28.559174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053848, 41.626690, 28.581909>,  <29.363071, 41.311745, 28.108652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053848, 41.626690, 28.581909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.434607, 41.737480, 28.634336>,  <29.663061, 41.803955, 28.665792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.434607, 41.737480, 28.634336>,  <29.053848, 41.626690, 28.581909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434607, 41.737480, 28.634336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301043, 0.925108, 0.231403,
		-0.057157, -0.259728, 0.963989,
		0.951896, 0.276976, 0.131066,
		29.720175, 41.820572, 28.673656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.651302, 34.290710, 45.455730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290501, 34.130688, 45.520649>,  <38.074020, 34.034676, 45.559601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290501, 34.130688, 45.520649>,  <38.651302, 34.290710, 45.455730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290501, 34.130688, 45.520649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259258, -0.201334, 0.944590,
		-0.345213, 0.894102, 0.285322,
		-0.902005, -0.400057, 0.162300,
		38.019897, 34.010670, 45.569340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491333, 34.523327, 46.083481>,  <38.651302, 34.290710, 45.455730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491333, 34.523327, 46.083481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290398, 34.182014, 46.027538>,  <38.169838, 33.977226, 45.993973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290398, 34.182014, 46.027538>,  <38.491333, 34.523327, 46.083481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290398, 34.182014, 46.027538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178689, -0.260697, 0.948740,
		-0.846005, 0.451599, 0.283431,
		-0.502340, -0.853285, -0.139855,
		38.139694, 33.926029, 45.985580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092037, 34.451691, 46.655361>,  <38.491333, 34.523327, 46.083481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092037, 34.451691, 46.655361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107491, 34.086510, 46.492870>,  <38.116764, 33.867401, 46.395374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.107491, 34.086510, 46.492870>,  <38.092037, 34.451691, 46.655361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107491, 34.086510, 46.492870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207921, -0.390290, 0.896907,
		-0.977382, -0.119117, 0.174743,
		0.038636, -0.912954, -0.406230,
		38.119080, 33.812622, 46.371002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674519, 34.018421, 47.009945>,  <38.092037, 34.451691, 46.655361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674519, 34.018421, 47.009945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.933575, 33.761948, 46.845287>,  <38.089008, 33.608063, 46.746490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.933575, 33.761948, 46.845287>,  <37.674519, 34.018421, 47.009945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933575, 33.761948, 46.845287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156910, -0.416444, 0.895519,
		-0.745617, -0.644563, -0.169097,
		0.647637, -0.641181, -0.411646,
		38.127865, 33.569592, 46.721794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649620, 33.476261, 47.482220>,  <37.674519, 34.018421, 47.009945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649620, 33.476261, 47.482220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.978535, 33.373791, 47.278961>,  <38.175884, 33.312309, 47.157005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.978535, 33.373791, 47.278961>,  <37.649620, 33.476261, 47.482220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978535, 33.373791, 47.278961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317506, -0.534499, 0.783263,
		-0.472260, -0.805408, -0.358173,
		0.822290, -0.256182, -0.508144,
		38.225224, 33.296936, 47.126518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767937, 32.747921, 47.424488>,  <37.649620, 33.476261, 47.482220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767937, 32.747921, 47.424488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.141155, 32.873425, 47.354080>,  <38.365086, 32.948727, 47.311836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.141155, 32.873425, 47.354080>,  <37.767937, 32.747921, 47.424488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141155, 32.873425, 47.354080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322496, -0.512588, 0.795770,
		0.159455, -0.799254, -0.579453,
		0.933043, 0.313761, -0.176021,
		38.421070, 32.967552, 47.301273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142838, 32.166225, 47.500427>,  <37.767937, 32.747921, 47.424488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142838, 32.166225, 47.500427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407867, 32.464909, 47.523861>,  <38.566883, 32.644119, 47.537922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407867, 32.464909, 47.523861>,  <38.142838, 32.166225, 47.500427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407867, 32.464909, 47.523861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479267, -0.482769, 0.732965,
		0.575588, -0.457567, -0.677740,
		0.662572, 0.746704, 0.058580,
		38.606640, 32.688919, 47.541435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912750, 31.936052, 47.513123>,  <38.142838, 32.166225, 47.500427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912750, 31.936052, 47.513123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903088, 32.292130, 47.695103>,  <38.897289, 32.505775, 47.804291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903088, 32.292130, 47.695103>,  <38.912750, 31.936052, 47.513123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903088, 32.292130, 47.695103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466301, -0.392509, 0.792780,
		0.884296, 0.231292, -0.405616,
		-0.024155, 0.890191, 0.454946,
		38.895840, 32.559185, 47.831585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558796, 32.045105, 47.881435>,  <38.912750, 31.936052, 47.513123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558796, 32.045105, 47.881435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.271065, 32.255470, 48.062977>,  <39.098427, 32.381691, 48.171902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.271065, 32.255470, 48.062977>,  <39.558796, 32.045105, 47.881435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271065, 32.255470, 48.062977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271316, -0.388746, 0.880491,
		0.639494, 0.756500, 0.136948,
		-0.719330, 0.525912, 0.453851,
		39.055267, 32.413242, 48.199131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738331, 31.881302, 48.624226>,  <39.558796, 32.045105, 47.881435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738331, 31.881302, 48.624226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.395386, 32.086533, 48.640667>,  <39.189621, 32.209671, 48.650532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.395386, 32.086533, 48.640667>,  <39.738331, 31.881302, 48.624226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395386, 32.086533, 48.640667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093060, -0.233052, 0.968001,
		0.506236, 0.826100, 0.247556,
		-0.857359, 0.513075, 0.041102,
		39.138180, 32.240456, 48.652996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783939, 32.470943, 49.130604>,  <39.738331, 31.881302, 48.624226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783939, 32.470943, 49.130604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.406452, 32.348301, 49.080982>,  <39.179958, 32.274715, 49.051208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.406452, 32.348301, 49.080982>,  <39.783939, 32.470943, 49.130604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406452, 32.348301, 49.080982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064321, -0.197793, 0.978131,
		-0.324435, 0.931060, 0.166940,
		-0.943719, -0.306602, -0.124057,
		39.123337, 32.256321, 49.043766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363121, 32.725513, 49.645954>,  <39.783939, 32.470943, 49.130604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363121, 32.725513, 49.645954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.115013, 32.431133, 49.537403>,  <38.966148, 32.254505, 49.472271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.115013, 32.431133, 49.537403>,  <39.363121, 32.725513, 49.645954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115013, 32.431133, 49.537403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082823, -0.282594, 0.955657,
		-0.780007, 0.615238, 0.114329,
		-0.620265, -0.735951, -0.271381,
		38.928932, 32.210346, 49.455990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826591, 32.567055, 50.229897>,  <39.363121, 32.725513, 49.645954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826591, 32.567055, 50.229897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881401, 32.219906, 50.038887>,  <38.914288, 32.011616, 49.924282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881401, 32.219906, 50.038887>,  <38.826591, 32.567055, 50.229897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881401, 32.219906, 50.038887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020064, -0.484401, 0.874616,
		-0.990365, -0.110262, -0.083787,
		0.137023, -0.867870, -0.477522,
		38.922508, 31.959545, 49.895630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236534, 32.817238, 50.558540>,  <38.826591, 32.567055, 50.229897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236534, 32.817238, 50.558540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.889175, 32.651920, 50.668140>,  <37.680759, 32.552731, 50.733902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.889175, 32.651920, 50.668140>,  <38.236534, 32.817238, 50.558540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889175, 32.651920, 50.668140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488656, 0.619354, -0.614504,
		0.084265, -0.667526, -0.739803,
		-0.868398, -0.413290, 0.274001,
		37.628654, 32.527935, 50.750340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887535, 32.716049, 49.959324>,  <38.236534, 32.817238, 50.558540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887535, 32.716049, 49.959324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.629471, 32.754311, 50.262539>,  <37.474632, 32.777267, 50.444466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.629471, 32.754311, 50.262539>,  <37.887535, 32.716049, 49.959324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629471, 32.754311, 50.262539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611564, 0.530064, -0.587386,
		-0.457992, -0.842545, -0.283479,
		-0.645161, 0.095653, 0.758036,
		37.435921, 32.783005, 50.489948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180374, 32.400833, 49.734039>,  <37.887535, 32.716049, 49.959324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180374, 32.400833, 49.734039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121994, 32.679565, 50.014931>,  <37.086967, 32.846806, 50.183464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121994, 32.679565, 50.014931>,  <37.180374, 32.400833, 49.734039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121994, 32.679565, 50.014931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719506, 0.412409, -0.558776,
		-0.678978, -0.586810, 0.441183,
		-0.145948, 0.696831, 0.702230,
		37.078209, 32.888615, 50.225601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532482, 32.551266, 49.678116>,  <37.180374, 32.400833, 49.734039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532482, 32.551266, 49.678116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647614, 32.860313, 49.904465>,  <36.716690, 33.045742, 50.040276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647614, 32.860313, 49.904465>,  <36.532482, 32.551266, 49.678116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647614, 32.860313, 49.904465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650618, 0.591341, -0.476458,
		-0.702746, -0.231033, 0.672883,
		0.287826, 0.772619, 0.565877,
		36.733963, 33.092098, 50.074226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904854, 32.661476, 49.972824>,  <36.532482, 32.551266, 49.678116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904854, 32.661476, 49.972824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108547, 32.997131, 50.049282>,  <36.230762, 33.198524, 50.095158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108547, 32.997131, 50.049282>,  <35.904854, 32.661476, 49.972824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108547, 32.997131, 50.049282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657570, 0.522649, -0.542624,
		-0.555236, 0.150630, 0.817939,
		0.509230, 0.839136, 0.191144,
		36.261314, 33.248871, 50.106625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478024, 33.223816, 50.059917>,  <35.904854, 32.661476, 49.972824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478024, 33.223816, 50.059917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806534, 33.418221, 49.940388>,  <36.003639, 33.534863, 49.868668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806534, 33.418221, 49.940388>,  <35.478024, 33.223816, 50.059917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806534, 33.418221, 49.940388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538053, 0.485596, -0.688981,
		-0.189744, 0.726629, 0.660309,
		0.821277, 0.486012, -0.298826,
		36.052917, 33.564026, 49.850739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233028, 33.901859, 49.862736>,  <35.478024, 33.223816, 50.059917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233028, 33.901859, 49.862736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598499, 33.892479, 49.700432>,  <35.817783, 33.886852, 49.603050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598499, 33.892479, 49.700432>,  <35.233028, 33.901859, 49.862736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598499, 33.892479, 49.700432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363224, 0.400862, -0.841058,
		0.182376, 0.915838, 0.357742,
		0.913678, -0.023448, -0.405762,
		35.872604, 33.885445, 49.578705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301685, 34.563007, 49.584984>,  <35.233028, 33.901859, 49.862736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301685, 34.563007, 49.584984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540768, 34.295586, 49.407997>,  <35.684216, 34.135132, 49.301804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540768, 34.295586, 49.407997>,  <35.301685, 34.563007, 49.584984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540768, 34.295586, 49.407997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283440, 0.340046, -0.896677,
		0.749941, 0.661362, 0.013751,
		0.597704, -0.668558, -0.442471,
		35.720078, 34.095016, 49.275257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705570, 34.955578, 49.078133>,  <35.301685, 34.563007, 49.584984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705570, 34.955578, 49.078133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725933, 34.587421, 48.923065>,  <35.738152, 34.366528, 48.830025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725933, 34.587421, 48.923065>,  <35.705570, 34.955578, 49.078133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725933, 34.587421, 48.923065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338040, 0.349381, -0.873878,
		0.939754, 0.175531, -0.293345,
		0.050903, -0.920392, -0.387668,
		35.741203, 34.311302, 48.806767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050644, 35.100117, 48.573830>,  <35.705570, 34.955578, 49.078133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050644, 35.100117, 48.573830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879059, 34.750015, 48.484451>,  <35.776108, 34.539955, 48.430824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879059, 34.750015, 48.484451>,  <36.050644, 35.100117, 48.573830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879059, 34.750015, 48.484451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177291, 0.324122, -0.929254,
		0.885752, -0.359003, -0.294210,
		-0.428965, -0.875250, -0.223443,
		35.750370, 34.487442, 48.417419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392666, 34.904949, 47.959534>,  <36.050644, 35.100117, 48.573830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392666, 34.904949, 47.959534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.040466, 34.715702, 47.971420>,  <35.829147, 34.602154, 47.978554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.040466, 34.715702, 47.971420>,  <36.392666, 34.904949, 47.959534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040466, 34.715702, 47.971420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192468, 0.299502, -0.934481,
		0.433219, -0.828528, -0.354771,
		-0.880498, -0.473117, 0.029716,
		35.776318, 34.573769, 47.980335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429932, 34.613449, 47.385990>,  <36.392666, 34.904949, 47.959534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429932, 34.613449, 47.385990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042812, 34.590195, 47.483967>,  <35.810543, 34.576241, 47.542751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042812, 34.590195, 47.483967>,  <36.429932, 34.613449, 47.385990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042812, 34.590195, 47.483967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251698, 0.204748, -0.945900,
		0.004839, -0.977087, -0.212787,
		-0.967793, -0.058135, 0.244940,
		35.752476, 34.572754, 47.557449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107327, 34.118454, 46.953487>,  <36.429932, 34.613449, 47.385990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107327, 34.118454, 46.953487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.796265, 34.334866, 47.081570>,  <35.609627, 34.464714, 47.158421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.796265, 34.334866, 47.081570>,  <36.107327, 34.118454, 46.953487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796265, 34.334866, 47.081570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263825, 0.181472, -0.947346,
		-0.570652, -0.821191, 0.001614,
		-0.777659, 0.541030, 0.320208,
		35.562965, 34.497173, 47.177631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493061, 33.850220, 46.568569>,  <36.107327, 34.118454, 46.953487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493061, 33.850220, 46.568569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400990, 34.213207, 46.709156>,  <35.345745, 34.431000, 46.793507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400990, 34.213207, 46.709156>,  <35.493061, 33.850220, 46.568569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400990, 34.213207, 46.709156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323065, 0.269422, -0.907216,
		-0.917958, -0.322368, 0.231154,
		-0.230179, 0.907464, 0.351463,
		35.331936, 34.485447, 46.814594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723614, 33.940788, 46.407547>,  <35.493061, 33.850220, 46.568569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723614, 33.940788, 46.407547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899921, 34.297607, 46.447491>,  <35.005707, 34.511700, 46.471458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899921, 34.297607, 46.447491>,  <34.723614, 33.940788, 46.407547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899921, 34.297607, 46.447491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277559, 0.241246, -0.929925,
		-0.853627, 0.382170, 0.353930,
		0.440774, 0.892046, 0.099860,
		35.032154, 34.565220, 46.477448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967216, 34.155815, 46.449028>,  <34.723614, 33.940788, 46.407547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967216, 34.155815, 46.449028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585209, 34.140697, 46.331383>,  <33.356003, 34.131626, 46.260796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585209, 34.140697, 46.331383>,  <33.967216, 34.155815, 46.449028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585209, 34.140697, 46.331383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235866, -0.504324, 0.830677,
		-0.179722, 0.862687, 0.472727,
		-0.955022, -0.037790, -0.294117,
		33.298702, 34.129360, 46.243149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572243, 34.448143, 47.009537>,  <33.967216, 34.155815, 46.449028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572243, 34.448143, 47.009537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371933, 34.185623, 46.783794>,  <33.251747, 34.028111, 46.648350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371933, 34.185623, 46.783794>,  <33.572243, 34.448143, 47.009537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371933, 34.185623, 46.783794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065697, -0.621295, 0.780818,
		-0.863082, 0.428088, 0.268011,
		-0.500772, -0.656303, -0.564353,
		33.221703, 33.988731, 46.614487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910038, 34.416386, 47.305237>,  <33.572243, 34.448143, 47.009537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910038, 34.416386, 47.305237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942268, 34.079247, 47.092403>,  <32.961605, 33.876965, 46.964703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942268, 34.079247, 47.092403>,  <32.910038, 34.416386, 47.305237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942268, 34.079247, 47.092403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198195, -0.536711, 0.820158,
		-0.976845, 0.039374, -0.210293,
		0.080574, -0.842847, -0.532087,
		32.966442, 33.826393, 46.932777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403385, 33.959965, 47.573959>,  <32.910038, 34.416386, 47.305237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403385, 33.959965, 47.573959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.623295, 33.692005, 47.374367>,  <32.755241, 33.531231, 47.254612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.623295, 33.692005, 47.374367>,  <32.403385, 33.959965, 47.573959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623295, 33.692005, 47.374367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105586, -0.648300, 0.754028,
		-0.828610, -0.361863, -0.427153,
		0.549778, -0.669897, -0.498980,
		32.788227, 33.491035, 47.224674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063450, 33.388985, 47.577682>,  <32.403385, 33.959965, 47.573959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063450, 33.388985, 47.577682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447651, 33.287525, 47.531902>,  <32.678169, 33.226650, 47.504436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447651, 33.287525, 47.531902>,  <32.063450, 33.388985, 47.577682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447651, 33.287525, 47.531902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065618, -0.606123, 0.792660,
		-0.270430, -0.753840, -0.598826,
		0.960501, -0.253653, -0.114448,
		32.735802, 33.211430, 47.497566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113567, 32.654957, 47.689148>,  <32.063450, 33.388985, 47.577682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113567, 32.654957, 47.689148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492733, 32.760155, 47.761036>,  <32.720230, 32.823273, 47.804169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492733, 32.760155, 47.761036>,  <32.113567, 32.654957, 47.689148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492733, 32.760155, 47.761036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019402, -0.610817, 0.791534,
		0.317946, -0.746816, -0.584103,
		0.947910, 0.262998, 0.179717,
		32.777107, 32.839054, 47.814949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502918, 31.971487, 47.795227>,  <32.113567, 32.654957, 47.689148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502918, 31.971487, 47.795227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755466, 32.234180, 47.960182>,  <32.906998, 32.391796, 48.059155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755466, 32.234180, 47.960182>,  <32.502918, 31.971487, 47.795227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755466, 32.234180, 47.960182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189190, -0.646167, 0.739375,
		0.752047, -0.388801, -0.532221,
		0.631374, 0.656735, 0.412390,
		32.944878, 32.431202, 48.083900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954086, 31.401628, 47.595348>,  <32.502918, 31.971487, 47.795227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954086, 31.401628, 47.595348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826305, 31.036736, 47.492756>,  <32.749638, 30.817801, 47.431202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826305, 31.036736, 47.492756>,  <32.954086, 31.401628, 47.595348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826305, 31.036736, 47.492756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161777, 0.214183, -0.963304,
		0.933690, -0.349223, 0.079157,
		-0.319454, -0.912233, -0.256477,
		32.730469, 30.763065, 47.415813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333191, 31.283108, 47.074940>,  <32.954086, 31.401628, 47.595348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333191, 31.283108, 47.074940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064800, 30.992630, 47.015041>,  <32.903767, 30.818342, 46.979103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064800, 30.992630, 47.015041>,  <33.333191, 31.283108, 47.074940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064800, 30.992630, 47.015041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008108, 0.209136, -0.977853,
		0.741432, -0.654905, -0.146214,
		-0.670979, -0.726197, -0.149750,
		32.863506, 30.774771, 46.970116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663944, 30.899376, 46.561226>,  <33.333191, 31.283108, 47.074940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663944, 30.899376, 46.561226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273289, 30.813667, 46.554642>,  <33.038895, 30.762241, 46.550690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273289, 30.813667, 46.554642>,  <33.663944, 30.899376, 46.561226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273289, 30.813667, 46.554642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014928, 0.008771, -0.999850,
		0.214384, -0.976735, -0.005367,
		-0.976636, -0.214271, -0.016461,
		32.980297, 30.749386, 46.549702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510872, 30.504141, 46.011837>,  <33.663944, 30.899376, 46.561226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510872, 30.504141, 46.011837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145134, 30.661533, 46.050106>,  <32.925694, 30.755968, 46.073067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145134, 30.661533, 46.050106>,  <33.510872, 30.504141, 46.011837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145134, 30.661533, 46.050106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042085, 0.142644, -0.988879,
		-0.402753, -0.908199, -0.113866,
		-0.914341, 0.393482, 0.095672,
		32.870831, 30.779577, 46.078808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133514, 30.251938, 45.378670>,  <33.510872, 30.504141, 46.011837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133514, 30.251938, 45.378670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907177, 30.555908, 45.506630>,  <32.771374, 30.738291, 45.583405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907177, 30.555908, 45.506630>,  <33.133514, 30.251938, 45.378670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907177, 30.555908, 45.506630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209126, 0.243024, -0.947209,
		-0.797552, -0.602870, 0.021406,
		-0.565842, 0.759925, 0.319900,
		32.737423, 30.783886, 45.602600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709469, 30.324665, 44.871338>,  <33.133514, 30.251938, 45.378670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709469, 30.324665, 44.871338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666496, 30.694307, 45.018032>,  <32.640713, 30.916092, 45.106049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666496, 30.694307, 45.018032>,  <32.709469, 30.324665, 44.871338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666496, 30.694307, 45.018032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261609, 0.329594, -0.907154,
		-0.959177, -0.193394, 0.206346,
		-0.107427, 0.924103, 0.366732,
		32.634270, 30.971539, 45.128052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086224, 30.510056, 44.555832>,  <32.709469, 30.324665, 44.871338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086224, 30.510056, 44.555832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282719, 30.836475, 44.677650>,  <32.400616, 31.032328, 44.750740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282719, 30.836475, 44.677650>,  <32.086224, 30.510056, 44.555832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282719, 30.836475, 44.677650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157467, 0.427082, -0.890396,
		-0.856674, 0.389440, 0.338299,
		0.491237, 0.816050, 0.304546,
		32.430088, 31.081291, 44.769012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.950951, 28.422737, 48.720913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.942039, 28.791239, 48.876244>,  <37.936691, 29.012341, 48.969440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.942039, 28.791239, 48.876244>,  <37.950951, 28.422737, 48.720913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942039, 28.791239, 48.876244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407571, 0.346307, -0.844960,
		-0.912902, -0.177096, 0.367761,
		-0.022280, 0.921254, 0.388323,
		37.935356, 29.067616, 48.992741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302364, 28.701557, 48.623894>,  <37.950951, 28.422737, 48.720913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302364, 28.701557, 48.623894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.545959, 29.013062, 48.684105>,  <37.692116, 29.199965, 48.720230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.545959, 29.013062, 48.684105>,  <37.302364, 28.701557, 48.623894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545959, 29.013062, 48.684105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385289, 0.456330, -0.802070,
		-0.693312, 0.430457, 0.577949,
		0.608992, 0.778762, 0.150529,
		37.728657, 29.246691, 48.729263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834320, 29.289225, 48.555481>,  <37.302364, 28.701557, 48.623894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834320, 29.289225, 48.555481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.203777, 29.438053, 48.518719>,  <37.425453, 29.527351, 48.496662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.203777, 29.438053, 48.518719>,  <36.834320, 29.289225, 48.555481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203777, 29.438053, 48.518719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315536, 0.602136, -0.733396,
		-0.217537, 0.706395, 0.673560,
		0.923642, 0.372073, -0.091906,
		37.480869, 29.549675, 48.491146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837452, 30.131342, 48.524254>,  <36.834320, 29.289225, 48.555481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837452, 30.131342, 48.524254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.171329, 29.994596, 48.351551>,  <37.371655, 29.912548, 48.247929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.171329, 29.994596, 48.351551>,  <36.837452, 30.131342, 48.524254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171329, 29.994596, 48.351551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183681, 0.566285, -0.803481,
		0.519181, 0.749966, 0.409880,
		0.834693, -0.341865, -0.431759,
		37.421738, 29.892036, 48.222023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061527, 30.634703, 48.121792>,  <36.837452, 30.131342, 48.524254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061527, 30.634703, 48.121792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.259750, 30.336594, 47.943359>,  <37.378685, 30.157728, 47.836300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.259750, 30.336594, 47.943359>,  <37.061527, 30.634703, 48.121792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259750, 30.336594, 47.943359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060891, 0.482509, -0.873772,
		0.866440, 0.460164, 0.193729,
		0.495554, -0.745275, -0.446085,
		37.408417, 30.113010, 47.809532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452789, 31.048056, 47.665188>,  <37.061527, 30.634703, 48.121792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452789, 31.048056, 47.665188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.465630, 30.670017, 47.535103>,  <37.473335, 30.443193, 47.457054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.465630, 30.670017, 47.535103>,  <37.452789, 31.048056, 47.665188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465630, 30.670017, 47.535103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019934, 0.325917, -0.945188,
		0.999286, 0.023863, 0.029303,
		0.032105, -0.945097, -0.325209,
		37.475262, 30.386488, 47.437542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852245, 31.169794, 47.114388>,  <37.452789, 31.048056, 47.665188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852245, 31.169794, 47.114388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.707115, 30.802244, 47.052387>,  <37.620037, 30.581715, 47.015186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.707115, 30.802244, 47.052387>,  <37.852245, 31.169794, 47.114388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707115, 30.802244, 47.052387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028700, 0.177272, -0.983743,
		0.931414, -0.352482, -0.090691,
		-0.362829, -0.918875, -0.154997,
		37.598267, 30.526581, 47.005890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220486, 30.928499, 46.596111>,  <37.852245, 31.169794, 47.114388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220486, 30.928499, 46.596111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.887691, 30.706978, 46.609344>,  <37.688015, 30.574064, 46.617287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.887691, 30.706978, 46.609344>,  <38.220486, 30.928499, 46.596111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887691, 30.706978, 46.609344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033176, -0.009865, -0.999401,
		0.553799, -0.832588, -0.010165,
		-0.831989, -0.553805, 0.033085,
		37.638096, 30.540836, 46.619270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302105, 30.488615, 46.050632>,  <38.220486, 30.928499, 46.596111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302105, 30.488615, 46.050632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.907825, 30.467249, 46.114574>,  <37.671257, 30.454430, 46.152939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.907825, 30.467249, 46.114574>,  <38.302105, 30.488615, 46.050632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907825, 30.467249, 46.114574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158605, -0.026811, -0.986978,
		0.057010, -0.998212, 0.017955,
		-0.985695, -0.053420, 0.159850,
		37.612118, 30.451223, 46.162529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081703, 29.913210, 45.780624>,  <38.302105, 30.488615, 46.050632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081703, 29.913210, 45.780624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.764069, 30.154423, 45.811028>,  <37.573486, 30.299150, 45.829269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.764069, 30.154423, 45.811028>,  <38.081703, 29.913210, 45.780624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764069, 30.154423, 45.811028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071387, 0.031655, -0.996946,
		-0.603598, -0.797087, 0.017912,
		-0.794086, 0.603034, 0.076008,
		37.525841, 30.335333, 45.833832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632690, 29.602911, 45.212273>,  <38.081703, 29.913210, 45.780624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632690, 29.602911, 45.212273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.505684, 29.971613, 45.301311>,  <37.429482, 30.192835, 45.354736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.505684, 29.971613, 45.301311>,  <37.632690, 29.602911, 45.212273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505684, 29.971613, 45.301311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236030, 0.150533, -0.960016,
		-0.918408, -0.357360, 0.169765,
		-0.317516, 0.921756, 0.222598,
		37.410427, 30.248140, 45.368092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902565, 29.679316, 44.916000>,  <37.632690, 29.602911, 45.212273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902565, 29.679316, 44.916000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.056553, 30.048004, 44.934879>,  <37.148945, 30.269217, 44.946205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.056553, 30.048004, 44.934879>,  <36.902565, 29.679316, 44.916000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056553, 30.048004, 44.934879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454867, 0.233983, -0.859272,
		-0.803052, 0.309327, 0.509337,
		0.384972, 0.921721, 0.047198,
		37.172043, 30.324520, 44.949039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218983, 29.583054, 45.272778>,  <36.902565, 29.679316, 44.916000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218983, 29.583054, 45.272778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.856972, 29.419628, 45.225449>,  <35.639763, 29.321573, 45.197052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.856972, 29.419628, 45.225449>,  <36.218983, 29.583054, 45.272778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856972, 29.419628, 45.225449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016619, -0.311919, 0.949963,
		-0.425025, 0.857778, 0.289086,
		-0.905029, -0.408562, -0.118318,
		35.585464, 29.297060, 45.189953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853664, 29.842724, 45.836651>,  <36.218983, 29.583054, 45.272778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853664, 29.842724, 45.836651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.688393, 29.499580, 45.714432>,  <35.589230, 29.293694, 45.641098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.688393, 29.499580, 45.714432>,  <35.853664, 29.842724, 45.836651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688393, 29.499580, 45.714432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136973, -0.390257, 0.910460,
		-0.900291, 0.334329, 0.278749,
		-0.413177, -0.857860, -0.305551,
		35.564438, 29.242222, 45.622768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446190, 29.688999, 46.315769>,  <35.853664, 29.842724, 45.836651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446190, 29.688999, 46.315769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.439392, 29.331625, 46.136223>,  <35.435314, 29.117201, 46.028496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.439392, 29.331625, 46.136223>,  <35.446190, 29.688999, 46.315769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439392, 29.331625, 46.136223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068110, -0.448927, 0.890969,
		-0.997533, -0.015428, 0.068483,
		-0.016998, -0.893435, -0.448870,
		35.434292, 29.063595, 46.001560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847485, 29.320921, 46.649548>,  <35.446190, 29.688999, 46.315769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847485, 29.320921, 46.649548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.117222, 29.063313, 46.505051>,  <35.279064, 28.908747, 46.418354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.117222, 29.063313, 46.505051>,  <34.847485, 29.320921, 46.649548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117222, 29.063313, 46.505051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079312, -0.423206, 0.902555,
		-0.734145, -0.637284, -0.234308,
		0.674344, -0.644023, -0.361239,
		35.319527, 28.870106, 46.396679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588993, 28.645094, 46.766510>,  <34.847485, 29.320921, 46.649548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588993, 28.645094, 46.766510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.979065, 28.596792, 46.692272>,  <35.213108, 28.567810, 46.647728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.979065, 28.596792, 46.692272>,  <34.588993, 28.645094, 46.766510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979065, 28.596792, 46.692272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073386, -0.614566, 0.785445,
		-0.208909, -0.779569, -0.590449,
		0.975178, -0.120756, -0.185597,
		35.271618, 28.560566, 46.636593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626656, 27.952307, 46.655315>,  <34.588993, 28.645094, 46.766510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626656, 27.952307, 46.655315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.991749, 28.081985, 46.754768>,  <35.210804, 28.159794, 46.814442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.991749, 28.081985, 46.754768>,  <34.626656, 27.952307, 46.655315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991749, 28.081985, 46.754768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083376, -0.743554, 0.663458,
		0.399968, -0.584827, -0.705694,
		0.912729, 0.324199, 0.248637,
		35.265568, 28.179245, 46.829361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018623, 27.350126, 46.827579>,  <34.626656, 27.952307, 46.655315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018623, 27.350126, 46.827579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.216873, 27.653839, 46.996269>,  <35.335823, 27.836067, 47.097485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.216873, 27.653839, 46.996269>,  <35.018623, 27.350126, 46.827579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216873, 27.653839, 46.996269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025714, -0.498169, 0.866698,
		0.868159, -0.418709, -0.266427,
		0.495620, 0.759283, 0.421724,
		35.365559, 27.881624, 47.122787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469193, 27.071833, 47.372398>,  <35.018623, 27.350126, 46.827579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469193, 27.071833, 47.372398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433575, 27.461664, 47.454632>,  <35.412205, 27.695562, 47.503971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433575, 27.461664, 47.454632>,  <35.469193, 27.071833, 47.372398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433575, 27.461664, 47.454632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012006, -0.207442, 0.978174,
		0.995955, 0.084636, 0.030173,
		-0.089048, 0.974579, 0.205586,
		35.406860, 27.754038, 47.516308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841026, 27.176331, 47.918163>,  <35.469193, 27.071833, 47.372398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841026, 27.176331, 47.918163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615997, 27.505239, 47.952538>,  <35.480980, 27.702585, 47.973164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615997, 27.505239, 47.952538>,  <35.841026, 27.176331, 47.918163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615997, 27.505239, 47.952538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023155, -0.119572, 0.992555,
		0.826425, 0.556393, 0.086308,
		-0.562571, 0.822271, 0.085934,
		35.447227, 27.751921, 47.978317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053246, 27.580910, 48.599888>,  <35.841026, 27.176331, 47.918163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053246, 27.580910, 48.599888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696735, 27.734097, 48.502754>,  <35.482830, 27.826010, 48.444473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696735, 27.734097, 48.502754>,  <36.053246, 27.580910, 48.599888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696735, 27.734097, 48.502754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276092, -0.033483, 0.960548,
		0.359729, 0.923154, 0.135577,
		-0.891273, 0.382969, -0.242831,
		35.429352, 27.848988, 48.429905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988834, 28.148983, 49.072987>,  <36.053246, 27.580910, 48.599888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988834, 28.148983, 49.072987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624641, 28.028933, 48.959179>,  <35.406128, 27.956903, 48.890896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624641, 28.028933, 48.959179>,  <35.988834, 28.148983, 49.072987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624641, 28.028933, 48.959179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288471, -0.032064, 0.956952,
		-0.296327, 0.953361, -0.057383,
		-0.910481, -0.300124, -0.284518,
		35.351498, 27.938896, 48.873825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420254, 28.659052, 49.266968>,  <35.988834, 28.148983, 49.072987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420254, 28.659052, 49.266968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.210606, 28.324936, 49.200531>,  <35.084816, 28.124466, 49.160667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.210606, 28.324936, 49.200531>,  <35.420254, 28.659052, 49.266968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210606, 28.324936, 49.200531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292943, -0.006303, 0.956109,
		-0.799675, 0.549774, -0.241389,
		-0.524122, -0.835290, -0.166092,
		35.053368, 28.074348, 49.150703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806545, 28.806623, 49.559113>,  <35.420254, 28.659052, 49.266968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806545, 28.806623, 49.559113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.808334, 28.406866, 49.545292>,  <34.809406, 28.167011, 49.536999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.808334, 28.406866, 49.545292>,  <34.806545, 28.806623, 49.559113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808334, 28.406866, 49.545292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295451, -0.034328, 0.954741,
		-0.955347, 0.005938, -0.295426,
		0.004473, -0.999393, -0.034550,
		34.809677, 28.107048, 49.534927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191021, 28.625814, 49.721691>,  <34.806545, 28.806623, 49.559113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191021, 28.625814, 49.721691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.407757, 28.305386, 49.823429>,  <34.537800, 28.113129, 49.884472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.407757, 28.305386, 49.823429>,  <34.191021, 28.625814, 49.721691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407757, 28.305386, 49.823429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411782, 0.010785, 0.911219,
		-0.732695, -0.598470, -0.324024,
		0.541843, -0.801073, 0.254341,
		34.570309, 28.065063, 49.899731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439987, 28.520590, 49.480671>,  <34.191021, 28.625814, 49.721691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439987, 28.520590, 49.480671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.149830, 28.771564, 49.593903>,  <32.975735, 28.922150, 49.661842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.149830, 28.771564, 49.593903>,  <33.439987, 28.520590, 49.480671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149830, 28.771564, 49.593903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078823, 0.332821, -0.939690,
		-0.683811, -0.703954, -0.191968,
		-0.725389, 0.627439, 0.283075,
		32.932213, 28.959797, 49.678825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156490, 28.564577, 48.896267>,  <33.439987, 28.520590, 49.480671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156490, 28.564577, 48.896267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.022701, 28.870811, 49.116085>,  <32.942429, 29.054552, 49.247978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.022701, 28.870811, 49.116085>,  <33.156490, 28.564577, 48.896267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022701, 28.870811, 49.116085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054778, 0.566355, -0.822339,
		-0.940813, -0.305151, -0.147492,
		-0.334470, 0.765588, 0.549549,
		32.922359, 29.100489, 49.280949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507950, 28.758553, 48.624657>,  <33.156490, 28.564577, 48.896267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507950, 28.758553, 48.624657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.685562, 29.054420, 48.826935>,  <32.792130, 29.231941, 48.948303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.685562, 29.054420, 48.826935>,  <32.507950, 28.758553, 48.624657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685562, 29.054420, 48.826935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206093, 0.633561, -0.745739,
		-0.871990, 0.226907, 0.433759,
		0.444026, 0.739671, 0.505695,
		32.818771, 29.276321, 48.978642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929529, 29.330318, 48.691677>,  <32.507950, 28.758553, 48.624657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929529, 29.330318, 48.691677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304455, 29.469688, 48.694279>,  <32.529411, 29.553310, 48.695839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304455, 29.469688, 48.694279>,  <31.929529, 29.330318, 48.691677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304455, 29.469688, 48.694279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239150, 0.656710, -0.715220,
		-0.253474, 0.668830, 0.698869,
		0.937315, 0.348424, 0.006508,
		32.585648, 29.574215, 48.696232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843151, 29.995312, 48.306026>,  <31.929529, 29.330318, 48.691677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843151, 29.995312, 48.306026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.238743, 29.936300, 48.311008>,  <32.476097, 29.900894, 48.313995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.238743, 29.936300, 48.311008>,  <31.843151, 29.995312, 48.306026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238743, 29.936300, 48.311008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107150, 0.655180, -0.747835,
		0.102170, 0.740928, 0.663768,
		0.988979, -0.147529, 0.012451,
		32.535439, 29.892042, 48.314743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076885, 30.666899, 48.419209>,  <31.843151, 29.995312, 48.306026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076885, 30.666899, 48.419209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.363068, 30.441540, 48.253941>,  <32.534775, 30.306324, 48.154778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.363068, 30.441540, 48.253941>,  <32.076885, 30.666899, 48.419209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363068, 30.441540, 48.253941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032344, 0.617454, -0.785942,
		0.697913, 0.548940, 0.459981,
		0.715452, -0.563397, -0.413174,
		32.577702, 30.272520, 48.129990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460503, 31.174574, 48.081306>,  <32.076885, 30.666899, 48.419209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460503, 31.174574, 48.081306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.535290, 30.831944, 47.888924>,  <32.580162, 30.626366, 47.773495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.535290, 30.831944, 47.888924>,  <32.460503, 31.174574, 48.081306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535290, 30.831944, 47.888924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131384, 0.506997, -0.851876,
		0.973541, 0.096083, 0.207332,
		0.186967, -0.856575, -0.480959,
		32.591381, 30.574970, 47.744637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858494, 31.627350, 48.314079>,  <32.460503, 31.174574, 48.081306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858494, 31.627350, 48.314079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.013248, 31.989353, 48.384815>,  <33.106102, 32.206554, 48.427258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.013248, 31.989353, 48.384815>,  <32.858494, 31.627350, 48.314079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013248, 31.989353, 48.384815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437746, -0.349043, 0.828581,
		0.811600, -0.243156, -0.531206,
		0.386889, 0.905010, 0.176843,
		33.129314, 32.260857, 48.437866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682419, 31.644093, 48.258072>,  <32.858494, 31.627350, 48.314079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682419, 31.644093, 48.258072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564281, 31.929903, 48.511757>,  <33.493397, 32.101391, 48.663967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564281, 31.929903, 48.511757>,  <33.682419, 31.644093, 48.258072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564281, 31.929903, 48.511757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696108, -0.293728, 0.655101,
		0.654372, 0.634960, -0.410637,
		-0.295348, 0.714527, 0.634209,
		33.475677, 32.144260, 48.702019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273384, 31.993235, 48.669781>,  <33.682419, 31.644093, 48.258072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273384, 31.993235, 48.669781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.985146, 32.142471, 48.903549>,  <33.812202, 32.232014, 49.043808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.985146, 32.142471, 48.903549>,  <34.273384, 31.993235, 48.669781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985146, 32.142471, 48.903549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595433, -0.098869, 0.797298,
		0.355246, 0.922511, -0.150907,
		-0.720597, 0.373092, 0.584417,
		33.768967, 32.254398, 49.078873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635990, 32.197472, 49.179489>,  <34.273384, 31.993235, 48.669781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635990, 32.197472, 49.179489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.274948, 32.253952, 49.342148>,  <34.058323, 32.287842, 49.439743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.274948, 32.253952, 49.342148>,  <34.635990, 32.197472, 49.179489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274948, 32.253952, 49.342148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399173, -0.079028, 0.913464,
		0.161117, 0.986822, 0.014968,
		-0.902609, 0.141200, 0.406645,
		34.004166, 32.296310, 49.464142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703789, 32.768562, 49.679165>,  <34.635990, 32.197472, 49.179489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703789, 32.768562, 49.679165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419006, 32.498905, 49.757809>,  <34.248138, 32.337112, 49.804996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419006, 32.498905, 49.757809>,  <34.703789, 32.768562, 49.679165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419006, 32.498905, 49.757809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382121, -0.137019, 0.913898,
		-0.589157, 0.725782, 0.355155,
		-0.711954, -0.674141, 0.196610,
		34.205421, 32.296661, 49.816792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580582, 32.867741, 50.339657>,  <34.703789, 32.768562, 49.679165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580582, 32.867741, 50.339657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.411282, 32.512463, 50.268147>,  <34.309700, 32.299294, 50.225239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.411282, 32.512463, 50.268147>,  <34.580582, 32.867741, 50.339657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411282, 32.512463, 50.268147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317259, -0.330128, 0.889023,
		-0.848648, 0.319564, 0.421517,
		-0.423254, -0.888197, -0.178778,
		34.284306, 32.246002, 50.214512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320541, 32.673058, 51.058079>,  <34.580582, 32.867741, 50.339657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320541, 32.673058, 51.058079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.349777, 32.349560, 50.824638>,  <34.367317, 32.155460, 50.684574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.349777, 32.349560, 50.824638>,  <34.320541, 32.673058, 51.058079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349777, 32.349560, 50.824638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253491, -0.550885, 0.795153,
		-0.964572, -0.206056, 0.164745,
		0.073090, -0.808744, -0.583602,
		34.371704, 32.106937, 50.649559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198486, 32.129532, 51.599854>,  <34.320541, 32.673058, 51.058079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198486, 32.129532, 51.599854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371330, 31.947376, 51.288494>,  <34.475037, 31.838081, 51.101681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371330, 31.947376, 51.288494>,  <34.198486, 32.129532, 51.599854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371330, 31.947376, 51.288494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470445, -0.622562, 0.625378,
		-0.769393, -0.636423, -0.054777,
		0.432107, -0.455392, -0.778397,
		34.500961, 31.810759, 51.054974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008892, 31.284838, 51.621643>,  <34.198486, 32.129532, 51.599854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008892, 31.284838, 51.621643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.344246, 31.402515, 51.438095>,  <34.545460, 31.473122, 51.327965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.344246, 31.402515, 51.438095>,  <34.008892, 31.284838, 51.621643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344246, 31.402515, 51.438095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537885, -0.582848, 0.609071,
		-0.088266, -0.757455, -0.646893,
		0.838384, 0.294194, -0.458870,
		34.595760, 31.490774, 51.300434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.023254, 37.080612, 36.369015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368404, 36.883945, 36.415833>,  <33.575497, 36.765945, 36.443924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368404, 36.883945, 36.415833>,  <33.023254, 37.080612, 36.369015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368404, 36.883945, 36.415833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261869, -0.236850, 0.935589,
		-0.432279, -0.837951, -0.333126,
		0.862878, -0.491671, 0.117048,
		33.627270, 36.736446, 36.450947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926235, 36.461014, 36.635681>,  <33.023254, 37.080612, 36.369015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926235, 36.461014, 36.635681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314655, 36.509617, 36.717949>,  <33.547707, 36.538780, 36.767307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314655, 36.509617, 36.717949>,  <32.926235, 36.461014, 36.635681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314655, 36.509617, 36.717949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183925, -0.169076, 0.968290,
		0.152432, -0.978084, -0.141832,
		0.971049, 0.121512, 0.205667,
		33.605968, 36.546070, 36.779648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154469, 35.845520, 36.928543>,  <32.926235, 36.461014, 36.635681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154469, 35.845520, 36.928543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421509, 36.120644, 37.042545>,  <33.581734, 36.285717, 37.110947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421509, 36.120644, 37.042545>,  <33.154469, 35.845520, 36.928543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421509, 36.120644, 37.042545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009998, -0.374484, 0.927179,
		0.744454, -0.621833, -0.243128,
		0.667598, 0.687812, 0.285004,
		33.621788, 36.326988, 37.128048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812279, 35.533836, 37.297909>,  <33.154469, 35.845520, 36.928543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812279, 35.533836, 37.297909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737637, 35.910763, 37.409061>,  <33.692852, 36.136917, 37.475754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737637, 35.910763, 37.409061>,  <33.812279, 35.533836, 37.297909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737637, 35.910763, 37.409061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114499, -0.260065, 0.958778,
		0.975739, 0.210735, -0.059363,
		-0.186610, 0.942315, 0.277885,
		33.681652, 36.193459, 37.492428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223530, 35.579075, 37.813305>,  <33.812279, 35.533836, 37.297909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223530, 35.579075, 37.813305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006931, 35.912582, 37.856407>,  <33.876972, 36.112686, 37.882271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006931, 35.912582, 37.856407>,  <34.223530, 35.579075, 37.813305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006931, 35.912582, 37.856407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003547, -0.125911, 0.992035,
		0.840698, 0.537562, 0.065223,
		-0.541493, 0.833771, 0.107760,
		33.844482, 36.162712, 37.888737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449562, 35.825310, 38.551067>,  <34.223530, 35.579075, 37.813305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449562, 35.825310, 38.551067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110432, 36.018604, 38.463726>,  <33.906956, 36.134583, 38.411320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110432, 36.018604, 38.463726>,  <34.449562, 35.825310, 38.551067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110432, 36.018604, 38.463726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204995, 0.081083, 0.975399,
		0.489054, 0.871726, 0.030317,
		-0.847822, 0.483238, -0.218353,
		33.856087, 36.163574, 38.398220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325764, 36.532806, 39.061657>,  <34.449562, 35.825310, 38.551067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325764, 36.532806, 39.061657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968700, 36.465866, 38.894249>,  <33.754463, 36.425701, 38.793804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968700, 36.465866, 38.894249>,  <34.325764, 36.532806, 39.061657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968700, 36.465866, 38.894249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440698, 0.129146, 0.888317,
		-0.094614, 0.977401, -0.189036,
		-0.892655, -0.167355, -0.418520,
		33.700905, 36.415661, 38.768692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811306, 37.130104, 39.093941>,  <34.325764, 36.532806, 39.061657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811306, 37.130104, 39.093941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574501, 36.809971, 39.056042>,  <33.432419, 36.617889, 39.033302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574501, 36.809971, 39.056042>,  <33.811306, 37.130104, 39.093941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574501, 36.809971, 39.056042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516150, 0.286238, 0.807253,
		-0.618955, 0.526810, -0.582552,
		-0.592017, -0.800337, -0.094745,
		33.396896, 36.569870, 39.027618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168549, 37.257450, 39.406349>,  <33.811306, 37.130104, 39.093941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168549, 37.257450, 39.406349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173885, 36.857773, 39.421471>,  <33.177086, 36.617966, 39.430542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173885, 36.857773, 39.421471>,  <33.168549, 37.257450, 39.406349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173885, 36.857773, 39.421471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354819, 0.030613, 0.934434,
		-0.934840, -0.025878, -0.354125,
		0.013341, -0.999196, 0.037800,
		33.177887, 36.558014, 39.432812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437565, 37.118050, 39.762093>,  <33.168549, 37.257450, 39.406349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437565, 37.118050, 39.762093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649136, 36.779819, 39.791023>,  <32.776077, 36.576881, 39.808384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649136, 36.779819, 39.791023>,  <32.437565, 37.118050, 39.762093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649136, 36.779819, 39.791023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430959, -0.194196, 0.881228,
		-0.731102, -0.497276, -0.467126,
		0.528928, -0.845579, 0.072329,
		32.807816, 36.526146, 39.812721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936453, 36.453510, 39.916389>,  <32.437565, 37.118050, 39.762093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936453, 36.453510, 39.916389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310478, 36.395653, 40.045837>,  <32.534893, 36.360939, 40.123505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310478, 36.395653, 40.045837>,  <31.936453, 36.453510, 39.916389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310478, 36.395653, 40.045837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353207, -0.303022, 0.885112,
		-0.029965, -0.941942, -0.334435,
		0.935065, -0.144647, 0.323621,
		32.591000, 36.352257, 40.142925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910257, 35.971695, 40.505962>,  <31.936453, 36.453510, 39.916389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910257, 35.971695, 40.505962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297119, 36.061478, 40.553684>,  <32.529236, 36.115349, 40.582317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297119, 36.061478, 40.553684>,  <31.910257, 35.971695, 40.505962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297119, 36.061478, 40.553684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052510, -0.282807, 0.957739,
		0.248715, -0.932544, -0.261731,
		0.967152, 0.224460, 0.119306,
		32.587265, 36.128815, 40.589478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979334, 35.439949, 40.112404>,  <31.910257, 35.971695, 40.505962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979334, 35.439949, 40.112404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828007, 35.093517, 39.981693>,  <31.737209, 34.885658, 39.903267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828007, 35.093517, 39.981693>,  <31.979334, 35.439949, 40.112404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828007, 35.093517, 39.981693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008122, 0.349892, -0.936755,
		0.925640, -0.357046, -0.125336,
		-0.378318, -0.866080, -0.326774,
		31.714512, 34.833694, 39.883659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248226, 35.409134, 39.543709>,  <31.979334, 35.439949, 40.112404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248226, 35.409134, 39.543709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949919, 35.146126, 39.500813>,  <31.770935, 34.988323, 39.475075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949919, 35.146126, 39.500813>,  <32.248226, 35.409134, 39.543709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949919, 35.146126, 39.500813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016769, 0.179443, -0.983625,
		0.665995, -0.731758, -0.144849,
		-0.745768, -0.657518, -0.107237,
		31.726189, 34.948872, 39.468643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489246, 34.915543, 39.059574>,  <32.248226, 35.409134, 39.543709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489246, 34.915543, 39.059574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095234, 34.846634, 39.057037>,  <31.858828, 34.805290, 39.055515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095234, 34.846634, 39.057037>,  <32.489246, 34.915543, 39.059574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095234, 34.846634, 39.057037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023562, -0.098119, -0.994896,
		0.170771, -0.980150, 0.100710,
		-0.985029, -0.172273, -0.006338,
		31.799725, 34.794952, 39.055138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335411, 34.385727, 38.591110>,  <32.489246, 34.915543, 39.059574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335411, 34.385727, 38.591110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994150, 34.592667, 38.617886>,  <31.789392, 34.716831, 38.633953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994150, 34.592667, 38.617886>,  <32.335411, 34.385727, 38.591110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994150, 34.592667, 38.617886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121185, -0.071740, -0.990034,
		-0.507387, -0.852764, 0.123900,
		-0.853155, 0.517345, 0.066943,
		31.738203, 34.747871, 38.637970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907087, 34.021523, 38.137646>,  <32.335411, 34.385727, 38.591110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907087, 34.021523, 38.137646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738178, 34.380592, 38.188038>,  <31.636833, 34.596035, 38.218273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738178, 34.380592, 38.188038>,  <31.907087, 34.021523, 38.137646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738178, 34.380592, 38.188038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285448, 0.000229, -0.958394,
		-0.860353, -0.440663, 0.256143,
		-0.422270, 0.897673, 0.125983,
		31.611498, 34.649895, 38.225834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218563, 34.021317, 37.927402>,  <31.907087, 34.021523, 38.137646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218563, 34.021317, 37.927402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310873, 34.409222, 37.895664>,  <31.366259, 34.641964, 37.876621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310873, 34.409222, 37.895664>,  <31.218563, 34.021317, 37.927402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310873, 34.409222, 37.895664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409475, 0.022825, -0.912036,
		-0.882651, 0.242964, 0.402363,
		0.230776, 0.969767, -0.079342,
		31.380106, 34.700153, 37.871861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605724, 34.274223, 37.617455>,  <31.218563, 34.021317, 37.927402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605724, 34.274223, 37.617455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891047, 34.553844, 37.597351>,  <31.062239, 34.721615, 37.585289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891047, 34.553844, 37.597351>,  <30.605724, 34.274223, 37.617455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891047, 34.553844, 37.597351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299910, 0.239642, -0.923377,
		-0.633444, 0.673721, 0.380590,
		0.713304, 0.699051, -0.050256,
		31.105038, 34.763561, 37.582275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295422, 34.788471, 37.299904>,  <30.605724, 34.274223, 37.617455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295422, 34.788471, 37.299904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687641, 34.826088, 37.230995>,  <30.922974, 34.848656, 37.189651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687641, 34.826088, 37.230995>,  <30.295422, 34.788471, 37.299904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687641, 34.826088, 37.230995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175696, 0.029417, -0.984005,
		-0.087467, 0.995134, 0.045367,
		0.980551, 0.094039, -0.172268,
		30.981806, 34.854298, 37.179314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257004, 35.278717, 36.839130>,  <30.295422, 34.788471, 37.299904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257004, 35.278717, 36.839130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628162, 35.133560, 36.804920>,  <30.850857, 35.046467, 36.784393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628162, 35.133560, 36.804920>,  <30.257004, 35.278717, 36.839130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628162, 35.133560, 36.804920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113239, -0.055753, -0.992002,
		0.355224, 0.930161, -0.092827,
		0.927897, -0.362894, -0.085526,
		30.906532, 35.024693, 36.779263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578077, 35.639996, 36.278278>,  <30.257004, 35.278717, 36.839130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578077, 35.639996, 36.278278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767452, 35.288345, 36.300194>,  <30.881077, 35.077354, 36.313343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767452, 35.288345, 36.300194>,  <30.578077, 35.639996, 36.278278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767452, 35.288345, 36.300194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080266, -0.105003, -0.991227,
		0.877163, 0.464885, -0.120276,
		0.473436, -0.879122, 0.054790,
		30.909483, 35.024609, 36.316631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140436, 35.612949, 35.701832>,  <30.578077, 35.639996, 36.278278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140436, 35.612949, 35.701832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092394, 35.230137, 35.807415>,  <31.063568, 35.000450, 35.870766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092394, 35.230137, 35.807415>,  <31.140436, 35.612949, 35.701832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092394, 35.230137, 35.807415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094682, -0.253627, -0.962657,
		0.988236, -0.140612, -0.060151,
		-0.120105, -0.957028, 0.263957,
		31.056362, 34.943027, 35.886600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573339, 35.078842, 35.259548>,  <31.140436, 35.612949, 35.701832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573339, 35.078842, 35.259548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278923, 34.855354, 35.412430>,  <31.102274, 34.721260, 35.504158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278923, 34.855354, 35.412430>,  <31.573339, 35.078842, 35.259548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278923, 34.855354, 35.412430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176248, -0.386963, -0.905095,
		0.653592, -0.733548, 0.186347,
		-0.736040, -0.558719, 0.382202,
		31.058111, 34.687740, 35.527092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731596, 34.319500, 35.060059>,  <31.573339, 35.078842, 35.259548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731596, 34.319500, 35.060059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341791, 34.320007, 35.149796>,  <31.107908, 34.320312, 35.203636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341791, 34.320007, 35.149796>,  <31.731596, 34.319500, 35.060059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341791, 34.320007, 35.149796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176690, -0.620519, -0.764027,
		0.138238, -0.784190, 0.604926,
		-0.974510, 0.001267, 0.224338,
		31.049438, 34.320389, 35.217098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545214, 33.640102, 35.094986>,  <31.731596, 34.319500, 35.060059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545214, 33.640102, 35.094986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190294, 33.821995, 35.064213>,  <30.977343, 33.931129, 35.045750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190294, 33.821995, 35.064213>,  <31.545214, 33.640102, 35.094986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190294, 33.821995, 35.064213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218167, -0.560819, -0.798677,
		-0.406331, -0.691881, 0.596822,
		-0.887298, 0.454735, -0.076932,
		30.924105, 33.958416, 35.041134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089966, 33.469112, 35.605099>,  <31.545214, 33.640102, 35.094986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089966, 33.469112, 35.605099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275639, 33.117485, 35.561676>,  <32.387043, 32.906509, 35.535622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275639, 33.117485, 35.561676>,  <32.089966, 33.469112, 35.605099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275639, 33.117485, 35.561676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485500, -0.355016, 0.798908,
		-0.740829, -0.318134, -0.591577,
		0.464178, -0.879065, -0.108552,
		32.414890, 32.853767, 35.529110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592283, 32.797001, 35.573952>,  <32.089966, 33.469112, 35.605099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592283, 32.797001, 35.573952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948917, 32.660629, 35.693172>,  <32.162899, 32.578804, 35.764706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948917, 32.660629, 35.693172>,  <31.592283, 32.797001, 35.573952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948917, 32.660629, 35.693172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438005, -0.482101, 0.758769,
		-0.114997, -0.807058, -0.579166,
		0.891587, -0.340934, 0.298056,
		32.216393, 32.558350, 35.782589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467365, 32.218880, 36.014339>,  <31.592283, 32.797001, 35.573952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467365, 32.218880, 36.014339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864000, 32.250950, 36.054981>,  <32.101982, 32.270191, 36.079369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864000, 32.250950, 36.054981>,  <31.467365, 32.218880, 36.014339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864000, 32.250950, 36.054981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040426, -0.553916, 0.831591,
		0.122957, -0.828703, -0.546015,
		0.991588, 0.080176, 0.101609,
		32.161476, 32.275002, 36.085464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655561, 31.546001, 36.166527>,  <31.467365, 32.218880, 36.014339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655561, 31.546001, 36.166527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966923, 31.783173, 36.249016>,  <32.153740, 31.925474, 36.298512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966923, 31.783173, 36.249016>,  <31.655561, 31.546001, 36.166527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966923, 31.783173, 36.249016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321815, -0.658948, 0.679870,
		0.539006, -0.462844, -0.703738,
		0.778401, 0.592927, 0.206227,
		32.200443, 31.961050, 36.310883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276691, 31.165043, 36.069397>,  <31.655561, 31.546001, 36.166527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276691, 31.165043, 36.069397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340828, 31.460348, 36.331470>,  <32.379311, 31.637531, 36.488712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340828, 31.460348, 36.331470>,  <32.276691, 31.165043, 36.069397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340828, 31.460348, 36.331470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268662, -0.671348, 0.690734,
		0.949796, 0.065272, -0.305985,
		0.160337, 0.738263, 0.655179,
		32.388927, 31.681828, 36.528023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815929, 30.796988, 36.476799>,  <32.276691, 31.165043, 36.069397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815929, 30.796988, 36.476799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667904, 31.114075, 36.670559>,  <32.579086, 31.304327, 36.786816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667904, 31.114075, 36.670559>,  <32.815929, 30.796988, 36.476799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667904, 31.114075, 36.670559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087454, -0.489380, 0.867674,
		0.924879, 0.363461, 0.111778,
		-0.370068, 0.792719, 0.484404,
		32.556885, 31.351891, 36.815880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415924, 31.139160, 36.799572>,  <32.815929, 30.796988, 36.476799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415924, 31.139160, 36.799572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095078, 31.260811, 37.005142>,  <32.902569, 31.333801, 37.128483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095078, 31.260811, 37.005142>,  <33.415924, 31.139160, 36.799572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095078, 31.260811, 37.005142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350132, -0.457641, 0.817295,
		0.483755, 0.835506, 0.260596,
		-0.802115, 0.304128, 0.513924,
		32.854443, 31.352049, 37.159321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596107, 31.674137, 37.400440>,  <33.415924, 31.139160, 36.799572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596107, 31.674137, 37.400440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268181, 31.463762, 37.491032>,  <33.071426, 31.337538, 37.545387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268181, 31.463762, 37.491032>,  <33.596107, 31.674137, 37.400440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268181, 31.463762, 37.491032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412394, -0.267882, 0.870729,
		-0.397278, 0.807237, 0.436507,
		-0.819818, -0.525935, 0.226476,
		33.022236, 31.305983, 37.558975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614883, 31.622654, 38.190403>,  <33.596107, 31.674137, 37.400440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614883, 31.622654, 38.190403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296417, 31.393692, 38.111942>,  <33.105339, 31.256315, 38.064865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296417, 31.393692, 38.111942>,  <33.614883, 31.622654, 38.190403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296417, 31.393692, 38.111942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159694, -0.511458, 0.844339,
		-0.583629, 0.640907, 0.498613,
		-0.796163, -0.572406, -0.196153,
		33.057568, 31.221970, 38.053097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296417, 31.496338, 38.856312>,  <33.614883, 31.622654, 38.190403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296417, 31.496338, 38.856312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158844, 31.197058, 38.629364>,  <33.076298, 31.017490, 38.493195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158844, 31.197058, 38.629364>,  <33.296417, 31.496338, 38.856312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158844, 31.197058, 38.629364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047343, -0.617279, 0.785318,
		-0.937799, 0.243237, 0.247726,
		-0.343935, -0.748199, -0.567368,
		33.055664, 30.972597, 38.459152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738636, 31.189528, 39.174992>,  <33.296417, 31.496338, 38.856312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738636, 31.189528, 39.174992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829212, 30.888948, 38.927105>,  <32.883556, 30.708601, 38.778374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829212, 30.888948, 38.927105>,  <32.738636, 31.189528, 39.174992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829212, 30.888948, 38.927105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044485, -0.643562, 0.764100,
		-0.973009, -0.145453, -0.179155,
		0.226438, -0.751446, -0.619721,
		32.897144, 30.663515, 38.741188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220341, 30.711245, 39.310074>,  <32.738636, 31.189528, 39.174992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220341, 30.711245, 39.310074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541931, 30.530954, 39.154915>,  <32.734886, 30.422779, 39.061821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541931, 30.530954, 39.154915>,  <32.220341, 30.711245, 39.310074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541931, 30.530954, 39.154915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055998, -0.592015, 0.803979,
		-0.592015, -0.668104, -0.450728,
		-0.803979, 0.450728, 0.387894,
		32.783123, 30.395737, 39.038548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136883, 30.079493, 39.603897>,  <32.220341, 30.711245, 39.310074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136883, 30.079493, 39.603897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514420, 30.053883, 39.474239>,  <32.740940, 30.038517, 39.396442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514420, 30.053883, 39.474239>,  <32.136883, 30.079493, 39.603897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514420, 30.053883, 39.474239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235491, -0.557801, 0.795865,
		-0.231763, -0.827502, -0.511397,
		0.943838, -0.064023, -0.324147,
		32.797569, 30.034676, 39.376995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399918, 29.353233, 39.610241>,  <32.136883, 30.079493, 39.603897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399918, 29.353233, 39.610241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717052, 29.593590, 39.650913>,  <32.907333, 29.737803, 39.675316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717052, 29.593590, 39.650913>,  <32.399918, 29.353233, 39.610241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717052, 29.593590, 39.650913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263315, -0.488228, 0.832045,
		0.549611, -0.632903, -0.545309,
		0.792838, 0.600889, 0.101682,
		32.954903, 29.773857, 39.681419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973953, 28.882046, 39.797791>,  <32.399918, 29.353233, 39.610241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973953, 28.882046, 39.797791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109898, 29.253885, 39.854832>,  <33.191463, 29.476990, 39.889057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109898, 29.253885, 39.854832>,  <32.973953, 28.882046, 39.797791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109898, 29.253885, 39.854832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434087, -0.289568, 0.853064,
		0.834303, -0.228020, -0.501940,
		0.339862, 0.929600, 0.142607,
		33.211857, 29.532766, 39.897614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684204, 28.769302, 40.021286>,  <32.973953, 28.882046, 39.797791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684204, 28.769302, 40.021286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560780, 29.118862, 40.171535>,  <33.486725, 29.328598, 40.261684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560780, 29.118862, 40.171535>,  <33.684204, 28.769302, 40.021286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560780, 29.118862, 40.171535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574703, -0.143393, 0.805702,
		0.757963, 0.464478, -0.457987,
		-0.308558, 0.873899, 0.375623,
		33.468212, 29.381031, 40.284222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247162, 28.872797, 40.387207>,  <33.684204, 28.769302, 40.021286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247162, 28.872797, 40.387207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957275, 29.107742, 40.531311>,  <33.783344, 29.248711, 40.617775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957275, 29.107742, 40.531311>,  <34.247162, 28.872797, 40.387207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957275, 29.107742, 40.531311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397609, -0.070528, 0.914840,
		0.562754, 0.806243, -0.182429,
		-0.724717, 0.587365, 0.360260,
		33.739861, 29.283953, 40.639389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619934, 29.451929, 40.742809>,  <34.247162, 28.872797, 40.387207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619934, 29.451929, 40.742809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247002, 29.443256, 40.887188>,  <34.023243, 29.438053, 40.973816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247002, 29.443256, 40.887188>,  <34.619934, 29.451929, 40.742809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247002, 29.443256, 40.887188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359878, 0.041540, 0.932074,
		-0.035202, 0.998902, -0.030927,
		-0.932335, -0.021681, 0.360945,
		33.967300, 29.436752, 40.995472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673466, 30.023792, 41.140141>,  <34.619934, 29.451929, 40.742809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673466, 30.023792, 41.140141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384396, 29.776690, 41.264156>,  <34.210953, 29.628428, 41.338566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384396, 29.776690, 41.264156>,  <34.673466, 30.023792, 41.140141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384396, 29.776690, 41.264156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412827, -0.026014, 0.910438,
		-0.554364, 0.785938, 0.273827,
		-0.722671, -0.617758, 0.310035,
		34.167595, 29.591362, 41.357166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767616, 30.249187, 41.809242>,  <34.673466, 30.023792, 41.140141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767616, 30.249187, 41.809242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539501, 29.921021, 41.792839>,  <34.402634, 29.724119, 41.782997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539501, 29.921021, 41.792839>,  <34.767616, 30.249187, 41.809242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539501, 29.921021, 41.792839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197792, -0.185604, 0.962512,
		-0.797276, 0.540798, 0.268120,
		-0.570289, -0.820419, -0.041012,
		34.368416, 29.674894, 41.780537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213142, 30.364672, 42.227306>,  <34.767616, 30.249187, 41.809242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213142, 30.364672, 42.227306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285267, 29.972183, 42.199913>,  <34.328541, 29.736691, 42.183479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285267, 29.972183, 42.199913>,  <34.213142, 30.364672, 42.227306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285267, 29.972183, 42.199913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024340, -0.065150, 0.997578,
		-0.983309, -0.181539, 0.012136,
		0.180308, -0.981223, -0.068481,
		34.339359, 29.677816, 42.179367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799332, 30.018375, 42.781124>,  <34.213142, 30.364672, 42.227306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799332, 30.018375, 42.781124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080204, 29.756588, 42.668972>,  <34.248726, 29.599516, 42.601681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080204, 29.756588, 42.668972>,  <33.799332, 30.018375, 42.781124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080204, 29.756588, 42.668972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046066, -0.351208, 0.935163,
		-0.710509, -0.669568, -0.216462,
		0.702179, -0.654470, -0.280381,
		34.290859, 29.560247, 42.584858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699024, 29.464417, 43.238796>,  <33.799332, 30.018375, 42.781124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699024, 29.464417, 43.238796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068096, 29.384211, 43.107067>,  <34.289539, 29.336086, 43.028030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068096, 29.384211, 43.107067>,  <33.699024, 29.464417, 43.238796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068096, 29.384211, 43.107067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271716, -0.267833, 0.924357,
		-0.273582, -0.942362, -0.192630,
		0.922672, -0.200547, -0.329329,
		34.344902, 29.324055, 43.008270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004978, 28.806534, 43.608112>,  <33.699024, 29.464417, 43.238796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004978, 28.806534, 43.608112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298607, 29.050316, 43.488312>,  <34.474785, 29.196585, 43.416431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298607, 29.050316, 43.488312>,  <34.004978, 28.806534, 43.608112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298607, 29.050316, 43.488312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507963, -0.200116, 0.837811,
		0.450673, -0.767151, -0.456480,
		0.734076, 0.609453, -0.299497,
		34.518829, 29.233152, 43.398464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603775, 28.424925, 43.592983>,  <34.004978, 28.806534, 43.608112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603775, 28.424925, 43.592983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728157, 28.803030, 43.632553>,  <34.802788, 29.029892, 43.656296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728157, 28.803030, 43.632553>,  <34.603775, 28.424925, 43.592983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728157, 28.803030, 43.632553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466265, -0.242423, 0.850781,
		0.828192, -0.218433, -0.516125,
		0.310959, 0.945261, 0.098925,
		34.821445, 29.086609, 43.662231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292107, 28.438259, 43.913563>,  <34.603775, 28.424925, 43.592983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292107, 28.438259, 43.913563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194294, 28.825584, 43.933876>,  <35.135609, 29.057980, 43.946064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194294, 28.825584, 43.933876>,  <35.292107, 28.438259, 43.913563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194294, 28.825584, 43.933876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467866, 0.071957, 0.880865,
		0.849298, 0.239156, -0.470635,
		-0.244530, 0.968311, 0.050781,
		35.120934, 29.116077, 43.949112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923481, 28.815973, 44.205570>,  <35.292107, 28.438259, 43.913563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923481, 28.815973, 44.205570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601685, 29.036633, 44.293648>,  <35.408607, 29.169029, 44.346493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601685, 29.036633, 44.293648>,  <35.923481, 28.815973, 44.205570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601685, 29.036633, 44.293648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286335, 0.035395, 0.957476,
		0.520398, 0.833324, -0.186431,
		-0.804486, 0.551650, 0.220190,
		35.360340, 29.202127, 44.359703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204765, 29.282915, 44.616879>,  <35.923481, 28.815973, 44.205570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204765, 29.282915, 44.616879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816071, 29.302156, 44.709328>,  <35.582855, 29.313702, 44.764797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816071, 29.302156, 44.709328>,  <36.204765, 29.282915, 44.616879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816071, 29.302156, 44.709328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220930, -0.159768, 0.962114,
		0.083209, 0.985982, 0.144624,
		-0.971734, 0.048105, 0.231127,
		35.524551, 29.316587, 44.778667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236317, 30.091572, 44.787838>,  <36.204765, 29.282915, 44.616879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236317, 30.091572, 44.787838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536304, 30.352968, 44.746857>,  <36.716297, 30.509806, 44.722267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536304, 30.352968, 44.746857>,  <36.236317, 30.091572, 44.787838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536304, 30.352968, 44.746857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466210, 0.412319, -0.782714,
		-0.469252, 0.634777, 0.613890,
		0.749967, 0.653492, -0.102458,
		36.761295, 30.549015, 44.716118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977890, 30.742390, 44.494080>,  <36.236317, 30.091572, 44.787838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977890, 30.742390, 44.494080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363316, 30.763365, 44.389168>,  <36.594570, 30.775949, 44.326221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363316, 30.763365, 44.389168>,  <35.977890, 30.742390, 44.494080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363316, 30.763365, 44.389168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264487, 0.332834, -0.905134,
		0.039833, 0.941526, 0.334577,
		0.963566, 0.052437, -0.262279,
		36.652386, 30.779097, 44.310486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129261, 31.368444, 44.270157>,  <35.977890, 30.742390, 44.494080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129261, 31.368444, 44.270157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390884, 31.130484, 44.083267>,  <36.547859, 30.987707, 43.971134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390884, 31.130484, 44.083267>,  <36.129261, 31.368444, 44.270157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390884, 31.130484, 44.083267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254995, 0.408113, -0.876596,
		0.712168, 0.692487, 0.115234,
		0.654060, -0.594900, -0.467226,
		36.587101, 30.952013, 43.943100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485462, 31.826302, 43.782387>,  <36.129261, 31.368444, 44.270157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485462, 31.826302, 43.782387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559864, 31.449097, 43.672024>,  <36.604504, 31.222773, 43.605804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559864, 31.449097, 43.672024>,  <36.485462, 31.826302, 43.782387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559864, 31.449097, 43.672024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096392, 0.261943, -0.960257,
		0.977809, 0.205208, -0.042176,
		0.186005, -0.943014, -0.275911,
		36.615665, 31.166193, 43.589249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907936, 31.843172, 43.177334>,  <36.485462, 31.826302, 43.782387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907936, 31.843172, 43.177334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740974, 31.479809, 43.186859>,  <36.640797, 31.261791, 43.192574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740974, 31.479809, 43.186859>,  <36.907936, 31.843172, 43.177334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740974, 31.479809, 43.186859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246501, 0.087961, -0.965142,
		0.874648, -0.408727, -0.260639,
		-0.417406, -0.908408, 0.023817,
		36.615753, 31.207287, 43.194004>
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
