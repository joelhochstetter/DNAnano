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
	<24.004845, 35.258766, 35.144024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357021, 35.271748, 34.954807>,  <24.568327, 35.279537, 34.841278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357021, 35.271748, 34.954807>,  <24.004845, 35.258766, 35.144024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357021, 35.271748, 34.954807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275835, 0.776409, 0.566661,
		0.385666, -0.629393, 0.674630,
		0.880441, 0.032455, -0.473043,
		24.621153, 35.281483, 34.812893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.450022, 35.267506, 35.634342>,  <24.004845, 35.258766, 35.144024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.450022, 35.267506, 35.634342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.658920, 35.429581, 35.334187>,  <24.784260, 35.526825, 35.154095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.658920, 35.429581, 35.334187>,  <24.450022, 35.267506, 35.634342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.658920, 35.429581, 35.334187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326076, 0.718175, 0.614735,
		0.787994, -0.565725, 0.242941,
		0.522245, 0.405190, -0.750387,
		24.815594, 35.551136, 35.109070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202091, 35.297062, 35.794708>,  <24.450022, 35.267506, 35.634342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202091, 35.297062, 35.794708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105343, 35.605820, 35.559532>,  <25.047293, 35.791073, 35.418427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105343, 35.605820, 35.559532>,  <25.202091, 35.297062, 35.794708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105343, 35.605820, 35.559532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499894, 0.618462, 0.606310,
		0.831627, -0.147260, -0.535454,
		-0.241873, 0.771894, -0.587944,
		25.032782, 35.837387, 35.383148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784887, 35.755924, 35.802357>,  <25.202091, 35.297062, 35.794708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784887, 35.755924, 35.802357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448269, 35.959995, 35.731346>,  <25.246298, 36.082439, 35.688740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448269, 35.959995, 35.731346>,  <25.784887, 35.755924, 35.802357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448269, 35.959995, 35.731346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333176, 0.748902, 0.572835,
		0.425198, 0.422920, -0.800216,
		-0.841546, 0.510181, -0.177525,
		25.195805, 36.113049, 35.678089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951200, 36.435123, 35.617111>,  <25.784887, 35.755924, 35.802357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951200, 36.435123, 35.617111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600111, 36.397961, 35.805141>,  <25.389458, 36.375664, 35.917957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600111, 36.397961, 35.805141>,  <25.951200, 36.435123, 35.617111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600111, 36.397961, 35.805141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306668, 0.644864, 0.700075,
		-0.368177, 0.758629, -0.537520,
		-0.877725, -0.092911, 0.470071,
		25.336794, 36.370087, 35.946163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651348, 36.318703, 35.455063>,  <25.951200, 36.435123, 35.617111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651348, 36.318703, 35.455063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951641, 36.215794, 35.698444>,  <27.131817, 36.154049, 35.844475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951641, 36.215794, 35.698444>,  <26.651348, 36.318703, 35.455063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951641, 36.215794, 35.698444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245406, 0.963749, 0.104709,
		-0.613335, 0.070709, 0.786651,
		0.750730, -0.257271, 0.608453,
		27.176861, 36.138611, 35.880981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799570, 36.932674, 35.811558>,  <26.651348, 36.318703, 35.455063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799570, 36.932674, 35.811558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134109, 36.725903, 35.884560>,  <27.334833, 36.601841, 35.928360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134109, 36.725903, 35.884560>,  <26.799570, 36.932674, 35.811558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134109, 36.725903, 35.884560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534855, 0.842450, -0.064872,
		-0.120215, 0.151868, 0.981063,
		0.836348, -0.516928, 0.182503,
		27.385014, 36.570824, 35.939312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138771, 37.389053, 36.257366>,  <26.799570, 36.932674, 35.811558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138771, 37.389053, 36.257366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418856, 37.128582, 36.140289>,  <27.586906, 36.972298, 36.070042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418856, 37.128582, 36.140289>,  <27.138771, 37.389053, 36.257366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418856, 37.128582, 36.140289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636714, 0.755035, -0.156579,
		0.322953, -0.076723, 0.943300,
		0.700212, -0.651180, -0.292692,
		27.628920, 36.933228, 36.052483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621893, 37.523891, 36.723923>,  <27.138771, 37.389053, 36.257366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621893, 37.523891, 36.723923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792248, 37.355206, 36.403728>,  <27.894461, 37.253994, 36.211613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792248, 37.355206, 36.403728>,  <27.621893, 37.523891, 36.723923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792248, 37.355206, 36.403728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575314, 0.809060, -0.120148,
		0.698308, -0.409360, 0.587189,
		0.425887, -0.421719, -0.800483,
		27.920013, 37.228691, 36.163582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372858, 37.676071, 36.843155>,  <27.621893, 37.523891, 36.723923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372858, 37.676071, 36.843155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319458, 37.586861, 36.456905>,  <28.287418, 37.533333, 36.225155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319458, 37.586861, 36.456905>,  <28.372858, 37.676071, 36.843155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319458, 37.586861, 36.456905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728663, 0.638327, -0.248172,
		0.671735, -0.736748, 0.077294,
		-0.133501, -0.223027, -0.965628,
		28.279408, 37.519951, 36.167217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107397, 37.592377, 36.554955>,  <28.372858, 37.676071, 36.843155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107397, 37.592377, 36.554955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857691, 37.668716, 36.251938>,  <28.707867, 37.714520, 36.070129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857691, 37.668716, 36.251938>,  <29.107397, 37.592377, 36.554955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857691, 37.668716, 36.251938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703909, 0.557996, -0.439490,
		0.338830, -0.807600, -0.482677,
		-0.624264, 0.190848, -0.757543,
		28.670412, 37.725971, 36.024673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529659, 37.470322, 36.016884>,  <29.107397, 37.592377, 36.554955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529659, 37.470322, 36.016884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232021, 37.698223, 35.877338>,  <29.053438, 37.834965, 35.793613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232021, 37.698223, 35.877338>,  <29.529659, 37.470322, 36.016884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232021, 37.698223, 35.877338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661034, 0.552290, -0.507947,
		-0.096732, -0.608570, -0.787582,
		-0.744095, 0.569753, -0.348861,
		29.008793, 37.869148, 35.772678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756882, 37.626881, 35.330070>,  <29.529659, 37.470322, 36.016884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756882, 37.626881, 35.330070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443972, 37.871841, 35.375702>,  <29.256226, 38.018818, 35.403080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443972, 37.871841, 35.375702>,  <29.756882, 37.626881, 35.330070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443972, 37.871841, 35.375702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535125, 0.754389, -0.380184,
		-0.318887, -0.236359, -0.917848,
		-0.782274, 0.612399, 0.114083,
		29.209290, 38.055561, 35.409927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744759, 38.036175, 34.723022>,  <29.756882, 37.626881, 35.330070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744759, 38.036175, 34.723022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529181, 38.256893, 34.977600>,  <29.399834, 38.389324, 35.130348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529181, 38.256893, 34.977600>,  <29.744759, 38.036175, 34.723022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529181, 38.256893, 34.977600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388076, 0.833258, -0.393800,
		-0.747621, 0.034754, -0.663216,
		-0.538943, 0.551791, 0.636448,
		29.367498, 38.422432, 35.168533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392004, 38.564632, 34.365814>,  <29.744759, 38.036175, 34.723022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392004, 38.564632, 34.365814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397860, 38.723465, 34.732883>,  <29.401373, 38.818764, 34.953125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397860, 38.723465, 34.732883>,  <29.392004, 38.564632, 34.365814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397860, 38.723465, 34.732883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512670, 0.784970, -0.347838,
		-0.858461, 0.475553, -0.192078,
		0.014640, 0.397077, 0.917668,
		29.402252, 38.842587, 35.008183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386663, 39.308449, 34.249786>,  <29.392004, 38.564632, 34.365814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386663, 39.308449, 34.249786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535307, 39.274265, 34.619564>,  <29.624493, 39.253757, 34.841431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535307, 39.274265, 34.619564>,  <29.386663, 39.308449, 34.249786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535307, 39.274265, 34.619564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576007, 0.802149, -0.157393,
		-0.728095, 0.590977, 0.347309,
		0.371610, -0.085455, 0.924448,
		29.646790, 39.248631, 34.896900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358217, 39.980946, 34.508953>,  <29.386663, 39.308449, 34.249786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358217, 39.980946, 34.508953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623827, 39.778252, 34.728878>,  <29.783194, 39.656635, 34.860832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623827, 39.778252, 34.728878>,  <29.358217, 39.980946, 34.508953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623827, 39.778252, 34.728878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678679, 0.717066, -0.158782,
		-0.313794, 0.478583, 0.820056,
		0.664024, -0.506730, 0.549815,
		29.823034, 39.626232, 34.893822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590965, 40.435936, 35.089306>,  <29.358217, 39.980946, 34.508953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590965, 40.435936, 35.089306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879545, 40.164925, 35.032078>,  <30.052694, 40.002319, 34.997742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879545, 40.164925, 35.032078>,  <29.590965, 40.435936, 35.089306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879545, 40.164925, 35.032078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672715, 0.734745, -0.087207,
		0.164202, -0.033326, 0.985864,
		0.721452, -0.677525, -0.143065,
		30.095982, 39.961666, 34.989159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221014, 40.657867, 35.536449>,  <29.590965, 40.435936, 35.089306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221014, 40.657867, 35.536449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339668, 40.410912, 35.245018>,  <30.410860, 40.262737, 35.070160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339668, 40.410912, 35.245018>,  <30.221014, 40.657867, 35.536449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339668, 40.410912, 35.245018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772329, 0.603827, -0.197230,
		0.561706, -0.504200, 0.655948,
		0.296636, -0.617394, -0.728582,
		30.428659, 40.225693, 35.026443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889042, 40.407234, 35.577755>,  <30.221014, 40.657867, 35.536449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889042, 40.407234, 35.577755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818386, 40.371151, 35.185703>,  <30.775993, 40.349503, 34.950470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818386, 40.371151, 35.185703>,  <30.889042, 40.407234, 35.577755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818386, 40.371151, 35.185703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815745, 0.543808, -0.197063,
		0.550781, -0.834347, -0.022469,
		-0.176638, -0.090209, -0.980133,
		30.765394, 40.344090, 34.891663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466347, 40.178562, 35.328411>,  <30.889042, 40.407234, 35.577755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466347, 40.178562, 35.328411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280930, 40.306957, 34.998055>,  <31.169680, 40.383995, 34.799839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280930, 40.306957, 34.998055>,  <31.466347, 40.178562, 35.328411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280930, 40.306957, 34.998055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824585, 0.497436, -0.269475,
		0.324329, -0.805929, -0.495267,
		-0.463541, 0.320991, -0.825890,
		31.141867, 40.403255, 34.750286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938986, 40.099178, 34.737324>,  <31.466347, 40.178562, 35.328411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938986, 40.099178, 34.737324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681387, 40.382473, 34.621624>,  <31.526827, 40.552452, 34.552204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681387, 40.382473, 34.621624>,  <31.938986, 40.099178, 34.737324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681387, 40.382473, 34.621624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761776, 0.558833, -0.327724,
		-0.070466, -0.431395, -0.899407,
		-0.643997, 0.708240, -0.289248,
		31.488188, 40.594944, 34.534851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344891, 40.328793, 34.142689>,  <31.938986, 40.099178, 34.737324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344891, 40.328793, 34.142689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041218, 40.580887, 34.207729>,  <31.859013, 40.732143, 34.246754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041218, 40.580887, 34.207729>,  <32.344891, 40.328793, 34.142689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041218, 40.580887, 34.207729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552952, 0.756299, -0.349651,
		-0.343339, -0.175539, -0.922661,
		-0.759185, 0.630236, 0.162602,
		31.813461, 40.769958, 34.256512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238808, 40.688061, 33.453266>,  <32.344891, 40.328793, 34.142689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238808, 40.688061, 33.453266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126602, 40.873272, 33.789577>,  <32.059280, 40.984398, 33.991364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126602, 40.873272, 33.789577>,  <32.238808, 40.688061, 33.453266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126602, 40.873272, 33.789577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569346, 0.785480, -0.242623,
		-0.772759, 0.410636, -0.483964,
		-0.280515, 0.463032, 0.840781,
		32.042446, 41.012180, 34.041813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926586, 41.378883, 33.315998>,  <32.238808, 40.688061, 33.453266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926586, 41.378883, 33.315998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042084, 41.417015, 33.697056>,  <32.111382, 41.439896, 33.925690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042084, 41.417015, 33.697056>,  <31.926586, 41.378883, 33.315998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042084, 41.417015, 33.697056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546272, 0.800761, -0.245702,
		-0.786266, 0.591350, 0.179138,
		0.288743, 0.095329, 0.952649,
		32.128708, 41.445614, 33.982849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719383, 42.014267, 32.876106>,  <31.926586, 41.378883, 33.315998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719383, 42.014267, 32.876106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610922, 42.399277, 32.874325>,  <31.545845, 42.630283, 32.873257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610922, 42.399277, 32.874325>,  <31.719383, 42.014267, 32.876106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610922, 42.399277, 32.874325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884444, -0.250981, -0.393405,
		-0.379781, -0.102732, 0.919354,
		-0.271155, 0.962525, -0.004457,
		31.529575, 42.688034, 32.872990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985216, 42.433823, 33.381077>,  <31.719383, 42.014267, 32.876106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985216, 42.433823, 33.381077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878485, 42.372261, 33.761627>,  <31.814445, 42.335323, 33.989956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878485, 42.372261, 33.761627>,  <31.985216, 42.433823, 33.381077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878485, 42.372261, 33.761627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953658, -0.184609, 0.237602,
		0.139066, 0.970687, 0.196027,
		-0.266826, -0.153901, 0.951377,
		31.798437, 42.326092, 34.047039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155720, 42.897221, 32.880733>,  <31.985216, 42.433823, 33.381077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155720, 42.897221, 32.880733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493664, 42.942207, 32.671524>,  <32.696430, 42.969200, 32.545998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493664, 42.942207, 32.671524>,  <32.155720, 42.897221, 32.880733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493664, 42.942207, 32.671524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397345, -0.522717, -0.754244,
		-0.358223, 0.845055, -0.396936,
		0.844863, 0.112467, -0.523028,
		32.747124, 42.975948, 32.514614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969955, 42.926567, 32.109795>,  <32.155720, 42.897221, 32.880733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969955, 42.926567, 32.109795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352894, 42.811882, 32.124153>,  <32.582657, 42.743073, 32.132771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352894, 42.811882, 32.124153>,  <31.969955, 42.926567, 32.109795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352894, 42.811882, 32.124153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134205, -0.551227, -0.823491,
		0.255893, 0.783547, -0.566192,
		0.957344, -0.286711, 0.035899,
		32.640099, 42.725868, 32.134922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190590, 43.035210, 31.529268>,  <31.969955, 42.926567, 32.109795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190590, 43.035210, 31.529268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422150, 42.728886, 31.641275>,  <32.561085, 42.545090, 31.708479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422150, 42.728886, 31.641275>,  <32.190590, 43.035210, 31.529268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422150, 42.728886, 31.641275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201645, -0.467200, -0.860850,
		0.790071, 0.441884, -0.424885,
		0.578902, -0.765808, 0.280017,
		32.595821, 42.499142, 31.725281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590366, 42.771015, 30.975559>,  <32.190590, 43.035210, 31.529268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590366, 42.771015, 30.975559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544849, 42.474415, 31.240051>,  <32.517540, 42.296455, 31.398746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544849, 42.474415, 31.240051>,  <32.590366, 42.771015, 30.975559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544849, 42.474415, 31.240051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397331, -0.576043, -0.714355,
		0.910593, -0.344014, -0.229074,
		-0.113792, -0.741505, 0.661228,
		32.510712, 42.251965, 31.438419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887306, 42.173199, 30.684568>,  <32.590366, 42.771015, 30.975559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887306, 42.173199, 30.684568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607895, 42.028744, 30.931677>,  <32.440250, 41.942070, 31.079943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607895, 42.028744, 30.931677>,  <32.887306, 42.173199, 30.684568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607895, 42.028744, 30.931677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293873, -0.642377, -0.707807,
		0.652457, -0.675968, 0.342589,
		-0.698526, -0.361136, 0.617772,
		32.398338, 41.920403, 31.117008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008907, 41.489616, 30.702522>,  <32.887306, 42.173199, 30.684568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008907, 41.489616, 30.702522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622967, 41.574425, 30.764629>,  <32.391403, 41.625309, 30.801893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622967, 41.574425, 30.764629>,  <33.008907, 41.489616, 30.702522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622967, 41.574425, 30.764629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257351, -0.642655, -0.721640,
		-0.053223, -0.736234, 0.674631,
		-0.964851, 0.212025, 0.155267,
		32.333511, 41.638031, 30.811209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558807, 40.857105, 30.965855>,  <33.008907, 41.489616, 30.702522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558807, 40.857105, 30.965855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354740, 41.134350, 30.762159>,  <32.232300, 41.300697, 30.639942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354740, 41.134350, 30.762159>,  <32.558807, 40.857105, 30.965855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354740, 41.134350, 30.762159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196779, -0.670444, -0.715390,
		-0.837260, -0.264764, 0.478430,
		-0.510170, 0.693113, -0.509236,
		32.201691, 41.342285, 30.609388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537979, 40.272419, 30.612734>,  <32.558807, 40.857105, 30.965855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537979, 40.272419, 30.612734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927197, 40.364349, 30.620422>,  <33.160728, 40.419506, 30.625034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927197, 40.364349, 30.620422>,  <32.537979, 40.272419, 30.612734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927197, 40.364349, 30.620422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174427, -0.787898, 0.590586,
		0.150873, -0.571313, -0.806746,
		0.973043, 0.229821, 0.019221,
		33.219109, 40.433296, 30.626188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011673, 39.635803, 30.454195>,  <32.537979, 40.272419, 30.612734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011673, 39.635803, 30.454195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120956, 39.920624, 30.712912>,  <33.186527, 40.091518, 30.868141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120956, 39.920624, 30.712912>,  <33.011673, 39.635803, 30.454195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120956, 39.920624, 30.712912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035534, -0.664442, 0.746495,
		0.961299, -0.226930, -0.156228,
		0.273206, 0.712053, 0.646791,
		33.202919, 40.134239, 30.906948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490246, 39.352455, 30.929379>,  <33.011673, 39.635803, 30.454195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490246, 39.352455, 30.929379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402699, 39.687916, 31.128880>,  <33.350170, 39.889194, 31.248581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402699, 39.687916, 31.128880>,  <33.490246, 39.352455, 30.929379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402699, 39.687916, 31.128880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114453, -0.529683, 0.840438,
		0.969018, 0.126866, 0.211919,
		-0.218873, 0.838654, 0.498752,
		33.337036, 39.939510, 31.278505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015614, 39.391239, 31.528482>,  <33.490246, 39.352455, 30.929379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015614, 39.391239, 31.528482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667500, 39.579914, 31.585203>,  <33.458630, 39.693119, 31.619236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667500, 39.579914, 31.585203>,  <34.015614, 39.391239, 31.528482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667500, 39.579914, 31.585203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171330, -0.559830, 0.810701,
		0.461785, 0.681248, 0.568028,
		-0.870288, 0.471690, 0.141803,
		33.406414, 39.721420, 31.627745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111675, 39.690289, 32.091938>,  <34.015614, 39.391239, 31.528482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111675, 39.690289, 32.091938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713406, 39.700577, 32.056225>,  <33.474445, 39.706749, 32.034798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713406, 39.700577, 32.056225>,  <34.111675, 39.690289, 32.091938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713406, 39.700577, 32.056225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091069, -0.460500, 0.882976,
		-0.018404, 0.887287, 0.460851,
		-0.995675, 0.025719, -0.089279,
		33.414703, 39.708294, 32.029442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890289, 39.902805, 32.791634>,  <34.111675, 39.690289, 32.091938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890289, 39.902805, 32.791634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619045, 39.701416, 32.577465>,  <33.456299, 39.580582, 32.448963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619045, 39.701416, 32.577465>,  <33.890289, 39.902805, 32.791634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619045, 39.701416, 32.577465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190505, -0.583202, 0.789673,
		-0.709837, 0.637489, 0.299564,
		-0.678115, -0.503471, -0.535423,
		33.415611, 39.550373, 32.416840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400993, 39.766479, 33.387943>,  <33.890289, 39.902805, 32.791634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400993, 39.766479, 33.387943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255596, 39.529007, 33.100773>,  <33.168358, 39.386524, 32.928471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255596, 39.529007, 33.100773>,  <33.400993, 39.766479, 33.387943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255596, 39.529007, 33.100773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417967, -0.584796, 0.695211,
		-0.832571, 0.552775, -0.035566,
		-0.363496, -0.593678, -0.717926,
		33.146549, 39.350903, 32.885395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716221, 39.600529, 33.611584>,  <33.400993, 39.766479, 33.387943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716221, 39.600529, 33.611584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817371, 39.316162, 33.349087>,  <32.878063, 39.145542, 33.191589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817371, 39.316162, 33.349087>,  <32.716221, 39.600529, 33.611584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817371, 39.316162, 33.349087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363251, -0.698430, 0.616640,
		-0.896717, 0.082445, -0.434859,
		0.252880, -0.710914, -0.656242,
		32.893234, 39.102886, 33.152214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179523, 39.232410, 33.527443>,  <32.716221, 39.600529, 33.611584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179523, 39.232410, 33.527443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462429, 38.986485, 33.387856>,  <32.632172, 38.838928, 33.304104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462429, 38.986485, 33.387856>,  <32.179523, 39.232410, 33.527443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462429, 38.986485, 33.387856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518201, -0.786641, 0.335653,
		-0.480880, -0.056557, -0.874960,
		0.707264, -0.614814, -0.348972,
		32.674606, 38.802040, 33.283165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796392, 38.592300, 33.307602>,  <32.179523, 39.232410, 33.527443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796392, 38.592300, 33.307602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171154, 38.519150, 33.426777>,  <32.396011, 38.475258, 33.498280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171154, 38.519150, 33.426777>,  <31.796392, 38.592300, 33.307602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171154, 38.519150, 33.426777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320261, -0.790689, 0.521769,
		0.140151, -0.584264, -0.799370,
		0.936905, -0.182881, 0.297933,
		32.452225, 38.464287, 33.516155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875479, 37.847775, 33.236225>,  <31.796392, 38.592300, 33.307602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875479, 37.847775, 33.236225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160446, 37.954460, 33.495865>,  <32.331425, 38.018471, 33.651649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160446, 37.954460, 33.495865>,  <31.875479, 37.847775, 33.236225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160446, 37.954460, 33.495865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166358, -0.834406, 0.525444,
		0.681752, -0.482318, -0.550075,
		0.712417, 0.266714, 0.649096,
		32.374172, 38.034473, 33.690594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098312, 37.283504, 33.403065>,  <31.875479, 37.847775, 33.236225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098312, 37.283504, 33.403065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239876, 37.515648, 33.696442>,  <32.324814, 37.654934, 33.872467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239876, 37.515648, 33.696442>,  <32.098312, 37.283504, 33.403065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239876, 37.515648, 33.696442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243413, -0.700018, 0.671361,
		0.903051, -0.416128, -0.106474,
		0.353906, 0.580356, 0.733443,
		32.346046, 37.689754, 33.916473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523647, 36.863243, 33.843201>,  <32.098312, 37.283504, 33.403065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523647, 36.863243, 33.843201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420467, 37.157684, 34.093517>,  <32.358559, 37.334347, 34.243710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420467, 37.157684, 34.093517>,  <32.523647, 36.863243, 33.843201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420467, 37.157684, 34.093517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139937, -0.669348, 0.729651,
		0.955971, 0.100641, 0.275665,
		-0.257948, 0.736101, 0.625794,
		32.343082, 37.378513, 34.281254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753120, 36.583729, 34.458351>,  <32.523647, 36.863243, 33.843201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753120, 36.583729, 34.458351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491993, 36.863914, 34.573711>,  <32.335316, 37.032024, 34.642929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491993, 36.863914, 34.573711>,  <32.753120, 36.583729, 34.458351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491993, 36.863914, 34.573711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265176, -0.567955, 0.779172,
		0.709580, 0.432183, 0.556519,
		-0.652823, 0.700461, 0.288405,
		32.296146, 37.074051, 34.660233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674435, 36.498482, 35.220055>,  <32.753120, 36.583729, 34.458351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674435, 36.498482, 35.220055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352119, 36.717270, 35.129253>,  <32.158730, 36.848541, 35.074772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352119, 36.717270, 35.129253>,  <32.674435, 36.498482, 35.220055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352119, 36.717270, 35.129253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535460, -0.509187, 0.673803,
		0.252963, 0.664493, 0.703177,
		-0.805786, 0.546971, -0.227003,
		32.110382, 36.881363, 35.061153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402756, 36.886208, 35.834511>,  <32.674435, 36.498482, 35.220055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402756, 36.886208, 35.834511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094341, 36.871532, 35.580219>,  <31.909292, 36.862728, 35.427643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094341, 36.871532, 35.580219>,  <32.402756, 36.886208, 35.834511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094341, 36.871532, 35.580219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578634, -0.376450, 0.723511,
		-0.265862, 0.925711, 0.269030,
		-0.771038, -0.036684, -0.635731,
		31.863029, 36.860527, 35.389500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706118, 37.222500, 36.205723>,  <32.402756, 36.886208, 35.834511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706118, 37.222500, 36.205723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632677, 36.968296, 35.905743>,  <31.588612, 36.815773, 35.725754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632677, 36.968296, 35.905743>,  <31.706118, 37.222500, 36.205723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632677, 36.968296, 35.905743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476138, -0.609951, 0.633444,
		-0.859990, 0.473380, -0.190601,
		-0.183602, -0.635508, -0.749946,
		31.577597, 36.777645, 35.680759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061102, 37.085629, 36.249924>,  <31.706118, 37.222500, 36.205723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061102, 37.085629, 36.249924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166714, 36.769997, 36.028061>,  <31.230082, 36.580620, 35.894943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166714, 36.769997, 36.028061>,  <31.061102, 37.085629, 36.249924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166714, 36.769997, 36.028061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671432, -0.563216, 0.481630,
		-0.692436, 0.245252, -0.678516,
		0.264030, -0.789075, -0.554661,
		31.245922, 36.533276, 35.861664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376930, 36.949718, 36.045078>,  <31.061102, 37.085629, 36.249924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376930, 36.949718, 36.045078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594120, 36.627499, 35.950195>,  <30.724434, 36.434166, 35.893265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594120, 36.627499, 35.950195>,  <30.376930, 36.949718, 36.045078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594120, 36.627499, 35.950195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750803, -0.592215, 0.292533,
		-0.376126, 0.019255, -0.926369,
		0.542977, -0.805550, -0.237204,
		30.757013, 36.385834, 35.879032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927124, 36.535202, 35.720692>,  <30.376930, 36.949718, 36.045078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927124, 36.535202, 35.720692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231350, 36.293564, 35.815861>,  <30.413885, 36.148582, 35.872963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231350, 36.293564, 35.815861>,  <29.927124, 36.535202, 35.720692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231350, 36.293564, 35.815861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648959, -0.718520, 0.250164,
		0.019832, -0.344670, -0.938515,
		0.760565, -0.604096, 0.237926,
		30.459520, 36.112335, 35.887238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861671, 35.896641, 35.255749>,  <29.927124, 36.535202, 35.720692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861671, 35.896641, 35.255749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070511, 35.831165, 35.590561>,  <30.195814, 35.791878, 35.791447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070511, 35.831165, 35.590561>,  <29.861671, 35.896641, 35.255749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070511, 35.831165, 35.590561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559569, -0.806396, 0.191331,
		0.643659, -0.568270, -0.512613,
		0.522096, -0.163691, 0.837031,
		30.227140, 35.782059, 35.841671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058231, 35.175255, 35.183674>,  <29.861671, 35.896641, 35.255749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058231, 35.175255, 35.183674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064638, 35.282986, 35.568840>,  <30.068481, 35.347626, 35.799938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064638, 35.282986, 35.568840>,  <30.058231, 35.175255, 35.183674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064638, 35.282986, 35.568840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549311, -0.802318, 0.233544,
		0.835464, -0.532681, 0.135095,
		0.016015, 0.269327, 0.962916,
		30.069443, 35.363785, 35.857716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099510, 34.638634, 35.510338>,  <30.058231, 35.175255, 35.183674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099510, 34.638634, 35.510338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968958, 34.855690, 35.819923>,  <29.890627, 34.985924, 36.005672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968958, 34.855690, 35.819923>,  <30.099510, 34.638634, 35.510338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968958, 34.855690, 35.819923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616993, -0.742611, 0.260477,
		0.716098, -0.392515, 0.577179,
		-0.326378, 0.542642, 0.773962,
		29.871044, 35.018482, 36.052113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177635, 34.245647, 36.206909>,  <30.099510, 34.638634, 35.510338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177635, 34.245647, 36.206909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422228, 33.942348, 36.116444>,  <30.568983, 33.760368, 36.062164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422228, 33.942348, 36.116444>,  <30.177635, 34.245647, 36.206909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422228, 33.942348, 36.116444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670040, 0.344164, 0.657721,
		-0.420878, -0.553723, 0.718506,
		0.611480, -0.758249, -0.226166,
		30.605673, 33.714874, 36.048595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419611, 33.963566, 36.911850>,  <30.177635, 34.245647, 36.206909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419611, 33.963566, 36.911850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671442, 33.858395, 36.619411>,  <30.822540, 33.795292, 36.443947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671442, 33.858395, 36.619411>,  <30.419611, 33.963566, 36.911850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671442, 33.858395, 36.619411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776441, 0.179344, 0.604131,
		-0.027725, -0.948000, 0.317059,
		0.629579, -0.262927, -0.731095,
		30.860315, 33.779518, 36.400082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841654, 33.406822, 37.114819>,  <30.419611, 33.963566, 36.911850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841654, 33.406822, 37.114819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010529, 33.635532, 36.833443>,  <31.111853, 33.772758, 36.664616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010529, 33.635532, 36.833443>,  <30.841654, 33.406822, 37.114819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010529, 33.635532, 36.833443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757218, 0.204187, 0.620426,
		0.498378, -0.794595, -0.346754,
		0.422185, 0.571775, -0.703444,
		31.137184, 33.807064, 36.622410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516188, 33.182381, 37.097237>,  <30.841654, 33.406822, 37.114819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516188, 33.182381, 37.097237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429594, 33.567890, 37.034924>,  <31.377638, 33.799198, 36.997536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429594, 33.567890, 37.034924>,  <31.516188, 33.182381, 37.097237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429594, 33.567890, 37.034924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596379, 0.256882, 0.760489,
		0.772959, 0.071730, -0.630388,
		-0.216485, 0.963777, -0.155781,
		31.364649, 33.857025, 36.988190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090649, 33.601727, 37.049919>,  <31.516188, 33.182381, 37.097237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090649, 33.601727, 37.049919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763193, 33.764542, 37.211987>,  <31.566721, 33.862228, 37.309227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763193, 33.764542, 37.211987>,  <32.090649, 33.601727, 37.049919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763193, 33.764542, 37.211987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492602, 0.134949, 0.859728,
		0.295261, 0.903390, -0.310979,
		-0.818635, 0.407033, 0.405167,
		31.517603, 33.886650, 37.333538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312050, 34.161526, 37.414818>,  <32.090649, 33.601727, 37.049919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312050, 34.161526, 37.414818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959291, 34.056576, 37.571491>,  <31.747637, 33.993607, 37.665497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959291, 34.056576, 37.571491>,  <32.312050, 34.161526, 37.414818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959291, 34.056576, 37.571491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334034, 0.238535, 0.911878,
		-0.332684, 0.935019, -0.122722,
		-0.881897, -0.262374, 0.391685,
		31.694723, 33.977863, 37.688995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060120, 34.601311, 37.949249>,  <32.312050, 34.161526, 37.414818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060120, 34.601311, 37.949249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905855, 34.237541, 38.011497>,  <31.813297, 34.019279, 38.048847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905855, 34.237541, 38.011497>,  <32.060120, 34.601311, 37.949249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905855, 34.237541, 38.011497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269278, 0.050382, 0.961744,
		-0.882471, 0.412813, 0.225457,
		-0.385661, -0.909421, 0.155622,
		31.790157, 33.964714, 38.058186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710964, 34.586254, 38.609550>,  <32.060120, 34.601311, 37.949249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710964, 34.586254, 38.609550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857893, 34.223484, 38.527023>,  <31.946051, 34.005821, 38.477509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857893, 34.223484, 38.527023>,  <31.710964, 34.586254, 38.609550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857893, 34.223484, 38.527023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340788, -0.075163, 0.937131,
		-0.865412, -0.414538, 0.281460,
		0.367321, -0.906923, -0.206316,
		31.968090, 33.951408, 38.465130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407400, 34.170029, 39.116428>,  <31.710964, 34.586254, 38.609550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407400, 34.170029, 39.116428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770672, 34.055202, 38.994576>,  <31.988636, 33.986309, 38.921463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770672, 34.055202, 38.994576>,  <31.407400, 34.170029, 39.116428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770672, 34.055202, 38.994576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299890, -0.061500, 0.951989,
		-0.292016, -0.955935, 0.030234,
		0.908181, -0.287063, -0.304635,
		32.043125, 33.969086, 38.903187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635740, 33.870411, 39.663216>,  <31.407400, 34.170029, 39.116428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635740, 33.870411, 39.663216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976025, 33.911991, 39.457115>,  <32.180195, 33.936939, 39.333454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976025, 33.911991, 39.457115>,  <31.635740, 33.870411, 39.663216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976025, 33.911991, 39.457115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516890, 0.012592, 0.855959,
		0.095461, -0.994503, -0.043016,
		0.850713, 0.103945, -0.515251,
		32.231239, 33.943176, 39.302540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060993, 33.545036, 40.031784>,  <31.635740, 33.870411, 39.663216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060993, 33.545036, 40.031784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322754, 33.762264, 39.821320>,  <32.479809, 33.892601, 39.695042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322754, 33.762264, 39.821320>,  <32.060993, 33.545036, 40.031784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322754, 33.762264, 39.821320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647522, -0.043131, 0.760825,
		0.390485, -0.838582, -0.379872,
		0.654398, 0.543066, -0.526158,
		32.519073, 33.925182, 39.663471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708572, 33.260296, 40.071186>,  <32.060993, 33.545036, 40.031784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708572, 33.260296, 40.071186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764606, 33.647961, 39.990089>,  <32.798225, 33.880558, 39.941429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764606, 33.647961, 39.990089>,  <32.708572, 33.260296, 40.071186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764606, 33.647961, 39.990089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505181, 0.106151, 0.856460,
		0.851569, -0.222397, -0.474731,
		0.140081, 0.969160, -0.202746,
		32.806629, 33.938709, 39.929264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433815, 33.398746, 40.147202>,  <32.708572, 33.260296, 40.071186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433815, 33.398746, 40.147202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300022, 33.775707, 40.146587>,  <33.219746, 34.001884, 40.146221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300022, 33.775707, 40.146587>,  <33.433815, 33.398746, 40.147202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300022, 33.775707, 40.146587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529793, 0.189381, 0.826713,
		0.779385, 0.275711, -0.562622,
		-0.334483, 0.942400, -0.001531,
		33.199677, 34.058426, 40.146130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049740, 33.777023, 40.275040>,  <33.433815, 33.398746, 40.147202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049740, 33.777023, 40.275040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746349, 34.011517, 40.388912>,  <33.564316, 34.152214, 40.457237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746349, 34.011517, 40.388912>,  <34.049740, 33.777023, 40.275040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746349, 34.011517, 40.388912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573462, 0.392844, 0.718898,
		0.309607, 0.708521, -0.634146,
		-0.758476, 0.586234, 0.284683,
		33.518806, 34.187386, 40.474316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390633, 34.447330, 40.431877>,  <34.049740, 33.777023, 40.275040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390633, 34.447330, 40.431877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046482, 34.429893, 40.634991>,  <33.839993, 34.419430, 40.756859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046482, 34.429893, 40.634991>,  <34.390633, 34.447330, 40.431877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046482, 34.429893, 40.634991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497886, 0.140974, 0.855708,
		-0.108887, 0.989053, -0.099587,
		-0.860380, -0.043593, 0.507786,
		33.788368, 34.416817, 40.787327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382183, 34.910709, 40.964806>,  <34.390633, 34.447330, 40.431877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382183, 34.910709, 40.964806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098095, 34.648979, 41.068684>,  <33.927643, 34.491940, 41.131012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098095, 34.648979, 41.068684>,  <34.382183, 34.910709, 40.964806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098095, 34.648979, 41.068684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431741, -0.113467, 0.894832,
		-0.556045, 0.747652, 0.363086,
		-0.710221, -0.654326, 0.259699,
		33.885029, 34.452682, 41.146595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246258, 35.265961, 41.580521>,  <34.382183, 34.910709, 40.964806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246258, 35.265961, 41.580521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042706, 34.923660, 41.617878>,  <33.920574, 34.718281, 41.640293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042706, 34.923660, 41.617878>,  <34.246258, 35.265961, 41.580521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042706, 34.923660, 41.617878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053793, 0.076670, 0.995604,
		-0.859152, 0.511672, 0.007017,
		-0.508885, -0.855753, 0.093396,
		33.890041, 34.666935, 41.645897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608940, 35.425640, 41.994141>,  <34.246258, 35.265961, 41.580521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608940, 35.425640, 41.994141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709583, 35.040127, 42.029514>,  <33.769970, 34.808819, 42.050739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709583, 35.040127, 42.029514>,  <33.608940, 35.425640, 41.994141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709583, 35.040127, 42.029514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060391, 0.106829, 0.992442,
		-0.965945, -0.244361, 0.085082,
		0.251604, -0.963782, 0.088434,
		33.785065, 34.750992, 42.056046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285011, 35.227787, 42.491257>,  <33.608940, 35.425640, 41.994141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285011, 35.227787, 42.491257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571274, 34.948620, 42.480343>,  <33.743031, 34.781120, 42.473797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571274, 34.948620, 42.480343>,  <33.285011, 35.227787, 42.491257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571274, 34.948620, 42.480343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042050, 0.004065, 0.999107,
		-0.697181, -0.716169, 0.032257,
		0.715661, -0.697915, -0.027281,
		33.785973, 34.739246, 42.472160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960514, 34.568684, 42.631187>,  <33.285011, 35.227787, 42.491257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960514, 34.568684, 42.631187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348270, 34.514454, 42.713074>,  <33.580925, 34.481915, 42.762203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348270, 34.514454, 42.713074>,  <32.960514, 34.568684, 42.631187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348270, 34.514454, 42.713074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244864, -0.472186, 0.846807,
		-0.018143, -0.871011, -0.490928,
		0.969388, -0.135574, 0.204712,
		33.639088, 34.473782, 42.774487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350567, 34.126297, 43.196518>,  <32.960514, 34.568684, 42.631187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350567, 34.126297, 43.196518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738258, 34.119255, 43.294724>,  <33.970875, 34.115028, 43.353645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738258, 34.119255, 43.294724>,  <33.350567, 34.126297, 43.196518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738258, 34.119255, 43.294724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200905, -0.632880, 0.747730,
		0.142216, -0.774049, -0.616946,
		0.969233, -0.017608, 0.245516,
		34.029030, 34.113972, 43.368378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591946, 33.466698, 43.125149>,  <33.350567, 34.126297, 43.196518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591946, 33.466698, 43.125149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784164, 33.658108, 43.419113>,  <33.899494, 33.772953, 43.595493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784164, 33.658108, 43.419113>,  <33.591946, 33.466698, 43.125149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784164, 33.658108, 43.419113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237453, -0.735708, 0.634310,
		0.844213, -0.479320, -0.239912,
		0.480543, 0.478525, 0.734910,
		33.928326, 33.801666, 43.639587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861790, 32.949554, 43.430908>,  <33.591946, 33.466698, 43.125149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861790, 32.949554, 43.430908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895206, 33.257858, 43.683559>,  <33.915257, 33.442841, 43.835148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895206, 33.257858, 43.683559>,  <33.861790, 32.949554, 43.430908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895206, 33.257858, 43.683559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103170, -0.623744, 0.774790,
		0.991149, -0.129892, 0.027411,
		0.083542, 0.770760, 0.631624,
		33.920269, 33.489086, 43.873047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388245, 32.810432, 43.847042>,  <33.861790, 32.949554, 43.430908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388245, 32.810432, 43.847042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195831, 33.082027, 44.068886>,  <34.080383, 33.244984, 44.201992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195831, 33.082027, 44.068886>,  <34.388245, 32.810432, 43.847042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195831, 33.082027, 44.068886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103036, -0.584437, 0.804871,
		0.870627, 0.444313, 0.211173,
		-0.481032, 0.678984, 0.554607,
		34.051521, 33.285721, 44.235268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769455, 32.948841, 44.399136>,  <34.388245, 32.810432, 43.847042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769455, 32.948841, 44.399136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413280, 33.082359, 44.522877>,  <34.199574, 33.162472, 44.597122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413280, 33.082359, 44.522877>,  <34.769455, 32.948841, 44.399136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413280, 33.082359, 44.522877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091851, -0.533952, 0.840511,
		0.445740, 0.776838, 0.444791,
		-0.890438, 0.333795, 0.309357,
		34.146149, 33.182499, 44.615685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851654, 33.012867, 45.047489>,  <34.769455, 32.948841, 44.399136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851654, 33.012867, 45.047489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452984, 33.042858, 45.034695>,  <34.213783, 33.060852, 45.027020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452984, 33.042858, 45.034695>,  <34.851654, 33.012867, 45.047489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452984, 33.042858, 45.034695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062068, -0.443690, 0.894028,
		0.052846, 0.893038, 0.446867,
		-0.996672, 0.074982, -0.031982,
		34.153984, 33.065353, 45.025101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737450, 33.267929, 45.631809>,  <34.851654, 33.012867, 45.047489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737450, 33.267929, 45.631809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397285, 33.097298, 45.508633>,  <34.193188, 32.994919, 45.434727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397285, 33.097298, 45.508633>,  <34.737450, 33.267929, 45.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397285, 33.097298, 45.508633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170283, -0.330633, 0.928270,
		-0.497798, 0.841850, 0.208535,
		-0.850412, -0.426581, -0.307941,
		34.142162, 32.969322, 45.416252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213646, 33.559910, 46.156273>,  <34.737450, 33.267929, 45.631809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213646, 33.559910, 46.156273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071953, 33.234459, 45.971870>,  <33.986938, 33.039188, 45.861229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071953, 33.234459, 45.971870>,  <34.213646, 33.559910, 46.156273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071953, 33.234459, 45.971870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216385, -0.408278, 0.886841,
		-0.909779, 0.413902, -0.031432,
		-0.354233, -0.813630, -0.461004,
		33.965683, 32.990372, 45.833569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680882, 33.247429, 46.627518>,  <34.213646, 33.559910, 46.156273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680882, 33.247429, 46.627518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731911, 32.924084, 46.397640>,  <33.762527, 32.730076, 46.259712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731911, 32.924084, 46.397640>,  <33.680882, 33.247429, 46.627518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731911, 32.924084, 46.397640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231124, -0.587708, 0.775359,
		-0.964524, 0.033912, -0.261807,
		0.127572, -0.808362, -0.574696,
		33.770184, 32.681576, 46.225231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290794, 32.737469, 46.753929>,  <33.680882, 33.247429, 46.627518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290794, 32.737469, 46.753929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545971, 32.496536, 46.562000>,  <33.699078, 32.351974, 46.446842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545971, 32.496536, 46.562000>,  <33.290794, 32.737469, 46.753929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545971, 32.496536, 46.562000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084943, -0.674309, 0.733548,
		-0.765391, -0.427199, -0.481330,
		0.637935, -0.602336, -0.479822,
		33.737350, 32.315834, 46.418053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012997, 32.077408, 46.736397>,  <33.290794, 32.737469, 46.753929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012997, 32.077408, 46.736397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402058, 32.016418, 46.666321>,  <33.635494, 31.979824, 46.624275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402058, 32.016418, 46.666321>,  <33.012997, 32.077408, 46.736397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402058, 32.016418, 46.666321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048287, -0.605079, 0.794700,
		-0.227180, -0.781428, -0.581171,
		0.972655, -0.152477, -0.175195,
		33.693855, 31.970675, 46.613762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065666, 31.359293, 46.836159>,  <33.012997, 32.077408, 46.736397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065666, 31.359293, 46.836159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436367, 31.502155, 46.882763>,  <33.658787, 31.587873, 46.910725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436367, 31.502155, 46.882763>,  <33.065666, 31.359293, 46.836159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436367, 31.502155, 46.882763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133539, -0.603065, 0.786435,
		0.351146, -0.713269, -0.606584,
		0.926749, 0.357156, 0.116514,
		33.714394, 31.609303, 46.917717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427212, 30.751131, 47.095642>,  <33.065666, 31.359293, 46.836159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427212, 30.751131, 47.095642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645260, 31.070541, 47.197781>,  <33.776089, 31.262188, 47.259064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645260, 31.070541, 47.197781>,  <33.427212, 30.751131, 47.095642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645260, 31.070541, 47.197781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311113, -0.475512, 0.822859,
		0.778497, -0.369111, -0.507641,
		0.545116, 0.798527, 0.255349,
		33.808796, 31.310099, 47.274384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903755, 30.462933, 47.516777>,  <33.427212, 30.751131, 47.095642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903755, 30.462933, 47.516777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891548, 30.855152, 47.594337>,  <33.884224, 31.090483, 47.640873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891548, 30.855152, 47.594337>,  <33.903755, 30.462933, 47.516777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891548, 30.855152, 47.594337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326412, -0.173579, 0.929153,
		0.944735, 0.091647, -0.314765,
		-0.030517, 0.980546, 0.193900,
		33.882393, 31.149317, 47.652508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645027, 30.740744, 47.686920>,  <33.903755, 30.462933, 47.516777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645027, 30.740744, 47.686920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351135, 30.941652, 47.869305>,  <34.174801, 31.062197, 47.978737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351135, 30.941652, 47.869305>,  <34.645027, 30.740744, 47.686920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351135, 30.941652, 47.869305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428256, -0.177837, 0.885986,
		0.526090, 0.846226, -0.084438,
		-0.734728, 0.502270, 0.455960,
		34.130718, 31.092333, 48.006092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899052, 30.950216, 48.363693>,  <34.645027, 30.740744, 47.686920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899052, 30.950216, 48.363693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501526, 30.971893, 48.402454>,  <34.263008, 30.984900, 48.425713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501526, 30.971893, 48.402454>,  <34.899052, 30.950216, 48.363693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501526, 30.971893, 48.402454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069399, -0.378077, 0.923169,
		0.086667, 0.924187, 0.371978,
		-0.993817, 0.054193, 0.096905,
		34.203381, 30.988152, 48.431526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779846, 31.285709, 48.976940>,  <34.899052, 30.950216, 48.363693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779846, 31.285709, 48.976940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464497, 31.049383, 48.908352>,  <34.275288, 30.907587, 48.867199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464497, 31.049383, 48.908352>,  <34.779846, 31.285709, 48.976940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464497, 31.049383, 48.908352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016002, -0.298320, 0.954332,
		-0.614986, 0.749628, 0.244642,
		-0.788376, -0.590815, -0.171467,
		34.227985, 30.872139, 48.856911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546288, 31.226099, 49.581268>,  <34.779846, 31.285709, 48.976940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546288, 31.226099, 49.581268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349686, 30.935295, 49.389488>,  <34.231724, 30.760813, 49.274418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349686, 30.935295, 49.389488>,  <34.546288, 31.226099, 49.581268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349686, 30.935295, 49.389488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211972, -0.434116, 0.875563,
		-0.844683, 0.531975, 0.059265,
		-0.491506, -0.727011, -0.479454,
		34.202232, 30.717192, 49.245651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768093, 31.136835, 49.874691>,  <34.546288, 31.226099, 49.581268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768093, 31.136835, 49.874691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877880, 30.796833, 49.694843>,  <33.943752, 30.592831, 49.586937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877880, 30.796833, 49.694843>,  <33.768093, 31.136835, 49.874691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877880, 30.796833, 49.694843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132309, -0.496509, 0.857889,
		-0.952450, -0.175976, -0.248740,
		0.274470, -0.850007, -0.449616,
		33.960220, 30.541832, 49.559959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366341, 30.644306, 50.200760>,  <33.768093, 31.136835, 49.874691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366341, 30.644306, 50.200760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661060, 30.430370, 50.035320>,  <33.837894, 30.302008, 49.936058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661060, 30.430370, 50.035320>,  <33.366341, 30.644306, 50.200760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661060, 30.430370, 50.035320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132538, -0.714126, 0.687355,
		-0.662987, -0.451629, -0.597059,
		0.736806, -0.534840, -0.413598,
		33.882103, 30.269918, 49.911240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104218, 29.926182, 50.006500>,  <33.366341, 30.644306, 50.200760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104218, 29.926182, 50.006500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499500, 29.926397, 50.067760>,  <33.736668, 29.926527, 50.104515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499500, 29.926397, 50.067760>,  <33.104218, 29.926182, 50.006500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499500, 29.926397, 50.067760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110120, -0.692486, 0.712978,
		0.106439, -0.721431, -0.684257,
		0.988202, 0.000538, 0.153152,
		33.795959, 29.926559, 50.113705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273872, 29.258371, 50.031834>,  <33.104218, 29.926182, 50.006500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273872, 29.258371, 50.031834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600819, 29.415377, 50.200523>,  <33.796986, 29.509581, 50.301739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600819, 29.415377, 50.200523>,  <33.273872, 29.258371, 50.031834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600819, 29.415377, 50.200523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109208, -0.824291, 0.555533,
		0.565681, -0.408015, -0.716610,
		0.817361, 0.392514, 0.421727,
		33.846027, 29.533131, 50.327042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864098, 28.734131, 50.004280>,  <33.273872, 29.258371, 50.031834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864098, 28.734131, 50.004280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935806, 28.999353, 50.294994>,  <33.978832, 29.158487, 50.469421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935806, 28.999353, 50.294994>,  <33.864098, 28.734131, 50.004280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935806, 28.999353, 50.294994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034938, -0.733996, 0.678255,
		0.983179, -0.146984, -0.108418,
		0.179271, 0.663058, 0.726785,
		33.989586, 29.198271, 50.513031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309948, 28.437664, 50.396446>,  <33.864098, 28.734131, 50.004280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309948, 28.437664, 50.396446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150589, 28.701614, 50.651268>,  <34.054974, 28.859983, 50.804161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150589, 28.701614, 50.651268>,  <34.309948, 28.437664, 50.396446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150589, 28.701614, 50.651268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071775, -0.714859, 0.695575,
		0.914399, 0.231393, 0.332162,
		-0.398400, 0.659874, 0.637058,
		34.031071, 28.899576, 50.842384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657982, 28.319056, 50.942554>,  <34.309948, 28.437664, 50.396446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657982, 28.319056, 50.942554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354351, 28.539715, 51.080818>,  <34.172173, 28.672112, 51.163776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354351, 28.539715, 51.080818>,  <34.657982, 28.319056, 50.942554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354351, 28.539715, 51.080818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089790, -0.614613, 0.783702,
		0.644774, 0.563857, 0.516074,
		-0.759081, 0.551649, 0.345657,
		34.126625, 28.705210, 51.184517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811508, 28.334433, 51.699574>,  <34.657982, 28.319056, 50.942554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811508, 28.334433, 51.699574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419128, 28.411114, 51.687031>,  <34.183701, 28.457123, 51.679504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419128, 28.411114, 51.687031>,  <34.811508, 28.334433, 51.699574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419128, 28.411114, 51.687031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135816, -0.561471, 0.816274,
		0.138879, 0.804984, 0.576813,
		-0.980952, 0.191704, -0.031353,
		34.124844, 28.468624, 51.677624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674938, 28.321842, 52.380943>,  <34.811508, 28.334433, 51.699574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674938, 28.321842, 52.380943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327286, 28.275324, 52.188656>,  <34.118694, 28.247414, 52.073284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327286, 28.275324, 52.188656>,  <34.674938, 28.321842, 52.380943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327286, 28.275324, 52.188656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245111, -0.742928, 0.622880,
		-0.429579, 0.659192, 0.617193,
		-0.869127, -0.116295, -0.480721,
		34.066547, 28.240435, 52.044441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134911, 28.157295, 52.927635>,  <34.674938, 28.321842, 52.380943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134911, 28.157295, 52.927635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967842, 28.037802, 52.584400>,  <33.867603, 27.966106, 52.378460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967842, 28.037802, 52.584400>,  <34.134911, 28.157295, 52.927635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967842, 28.037802, 52.584400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375573, -0.803183, 0.462430,
		-0.827343, 0.515417, 0.223268,
		-0.417669, -0.298734, -0.858085,
		33.842541, 27.948181, 52.326973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329842, 28.256281, 52.928711>,  <34.134911, 28.157295, 52.927635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329842, 28.256281, 52.928711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496510, 27.950066, 52.732613>,  <33.596508, 27.766336, 52.614956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496510, 27.950066, 52.732613>,  <33.329842, 28.256281, 52.928711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496510, 27.950066, 52.732613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358608, -0.633970, 0.685188,
		-0.835337, -0.109690, -0.538683,
		0.416667, -0.765540, -0.490243,
		33.621510, 27.720404, 52.585541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020805, 27.824492, 53.217293>,  <33.329842, 28.256281, 52.928711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020805, 27.824492, 53.217293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296505, 27.601171, 53.032581>,  <33.461926, 27.467180, 52.921753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296505, 27.601171, 53.032581>,  <33.020805, 27.824492, 53.217293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296505, 27.601171, 53.032581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134751, -0.725014, 0.675424,
		-0.711879, -0.403314, -0.574949,
		0.689254, -0.558294, -0.461775,
		33.503281, 27.433681, 52.894047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661144, 27.248444, 53.141998>,  <33.020805, 27.824492, 53.217293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661144, 27.248444, 53.141998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054531, 27.186457, 53.179482>,  <33.290562, 27.149265, 53.201973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054531, 27.186457, 53.179482>,  <32.661144, 27.248444, 53.141998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054531, 27.186457, 53.179482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168997, -0.599368, 0.782431,
		-0.065085, -0.785330, -0.615647,
		0.983466, -0.154967, 0.093709,
		33.349571, 27.139967, 53.207596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731419, 26.523199, 53.366241>,  <32.661144, 27.248444, 53.141998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731419, 26.523199, 53.366241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046741, 26.730793, 53.498440>,  <33.235935, 26.855349, 53.577759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046741, 26.730793, 53.498440>,  <32.731419, 26.523199, 53.366241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046741, 26.730793, 53.498440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195498, -0.298033, 0.934321,
		0.583396, -0.801144, -0.133481,
		0.788308, 0.518984, 0.330494,
		33.283234, 26.886488, 53.597588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087990, 26.096722, 53.858242>,  <32.731419, 26.523199, 53.366241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087990, 26.096722, 53.858242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165951, 26.479612, 53.943783>,  <33.212727, 26.709347, 53.995110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165951, 26.479612, 53.943783>,  <33.087990, 26.096722, 53.858242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165951, 26.479612, 53.943783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134700, -0.189849, 0.972529,
		0.971529, -0.218353, 0.091936,
		0.194901, 0.957225, 0.213856,
		33.224422, 26.766779, 54.007938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996746, 25.853802, 53.250015>,  <33.087990, 26.096722, 53.858242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996746, 25.853802, 53.250015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367580, 25.705629, 53.227055>,  <33.590080, 25.616726, 53.213276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367580, 25.705629, 53.227055>,  <32.996746, 25.853802, 53.250015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367580, 25.705629, 53.227055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227595, 0.677925, -0.699012,
		0.297852, 0.634977, 0.712802,
		0.927084, -0.370433, -0.057404,
		33.645706, 25.594500, 53.209835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370461, 26.382822, 52.899799>,  <32.996746, 25.853802, 53.250015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370461, 26.382822, 52.899799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627697, 26.076706, 52.888798>,  <33.782040, 25.893036, 52.882198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627697, 26.076706, 52.888798>,  <33.370461, 26.382822, 52.899799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627697, 26.076706, 52.888798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412004, 0.376045, -0.829966,
		0.645508, 0.522416, 0.557136,
		0.643095, -0.765292, -0.027502,
		33.820625, 25.847118, 52.880547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090733, 26.588413, 52.638222>,  <33.370461, 26.382822, 52.899799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090733, 26.588413, 52.638222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044769, 26.199818, 52.555275>,  <34.017193, 25.966660, 52.505505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044769, 26.199818, 52.555275>,  <34.090733, 26.588413, 52.638222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044769, 26.199818, 52.555275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516192, 0.119963, -0.848030,
		0.848730, -0.204484, 0.487692,
		-0.114904, -0.971491, -0.207370,
		34.010300, 25.908371, 52.493065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713707, 26.183060, 52.803211>,  <34.090733, 26.588413, 52.638222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713707, 26.183060, 52.803211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491253, 26.049236, 52.498898>,  <34.357780, 25.968943, 52.316311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491253, 26.049236, 52.498898>,  <34.713707, 26.183060, 52.803211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491253, 26.049236, 52.498898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791770, 0.064969, -0.607355,
		0.252623, -0.940133, 0.228762,
		-0.556132, -0.334558, -0.760781,
		34.324413, 25.948870, 52.270664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054893, 25.599266, 52.449738>,  <34.713707, 26.183060, 52.803211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054893, 25.599266, 52.449738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799725, 25.784592, 52.203682>,  <34.646626, 25.895786, 52.056049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799725, 25.784592, 52.203682>,  <35.054893, 25.599266, 52.449738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799725, 25.784592, 52.203682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709801, 0.043882, -0.703034,
		-0.298731, -0.885108, -0.356853,
		-0.637920, 0.463313, -0.615142,
		34.608349, 25.923586, 52.019138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251072, 25.375252, 51.826088>,  <35.054893, 25.599266, 52.449738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251072, 25.375252, 51.826088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025585, 25.694435, 51.740776>,  <34.890293, 25.885944, 51.689590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025585, 25.694435, 51.740776>,  <35.251072, 25.375252, 51.826088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025585, 25.694435, 51.740776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554061, 0.173813, -0.814128,
		-0.612569, -0.577107, -0.540099,
		-0.563715, 0.797958, -0.213280,
		34.856472, 25.933823, 51.676792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386059, 25.443939, 51.219398>,  <35.251072, 25.375252, 51.826088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386059, 25.443939, 51.219398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207153, 25.790154, 51.309555>,  <35.099812, 25.997883, 51.363647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207153, 25.790154, 51.309555>,  <35.386059, 25.443939, 51.219398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207153, 25.790154, 51.309555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432637, 0.429925, -0.792458,
		-0.782804, -0.256923, -0.566753,
		-0.447262, 0.865537, 0.225392,
		35.072975, 26.049814, 51.377174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080482, 25.701002, 50.510139>,  <35.386059, 25.443939, 51.219398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080482, 25.701002, 50.510139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103760, 26.037619, 50.724960>,  <35.117725, 26.239588, 50.853851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103760, 26.037619, 50.724960>,  <35.080482, 25.701002, 50.510139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103760, 26.037619, 50.724960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164161, 0.522572, -0.836642,
		-0.984716, 0.136848, -0.107740,
		0.058191, 0.841541, 0.537050,
		35.121216, 26.290081, 50.886074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739750, 26.218008, 50.106464>,  <35.080482, 25.701002, 50.510139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739750, 26.218008, 50.106464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904285, 26.467010, 50.372784>,  <35.003006, 26.616411, 50.532574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904285, 26.467010, 50.372784>,  <34.739750, 26.218008, 50.106464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904285, 26.467010, 50.372784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064189, 0.708858, -0.702424,
		-0.909218, 0.331673, 0.251625,
		0.411341, 0.622506, 0.665797,
		35.027687, 26.653763, 50.572521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377766, 26.832060, 50.158379>,  <34.739750, 26.218008, 50.106464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377766, 26.832060, 50.158379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767006, 26.901159, 50.219345>,  <35.000549, 26.942619, 50.255924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767006, 26.901159, 50.219345>,  <34.377766, 26.832060, 50.158379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767006, 26.901159, 50.219345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027863, 0.744999, -0.666483,
		-0.228683, 0.644309, 0.729774,
		0.973102, 0.172747, 0.152416,
		35.058937, 26.952984, 50.265068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464146, 27.594740, 50.219093>,  <34.377766, 26.832060, 50.158379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464146, 27.594740, 50.219093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819874, 27.439175, 50.122875>,  <35.033310, 27.345835, 50.065144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819874, 27.439175, 50.122875>,  <34.464146, 27.594740, 50.219093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819874, 27.439175, 50.122875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100698, 0.679658, -0.726584,
		0.446067, 0.621941, 0.643594,
		0.889317, -0.388914, -0.240545,
		35.086670, 27.322500, 50.050713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793564, 28.088346, 49.851196>,  <34.464146, 27.594740, 50.219093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793564, 28.088346, 49.851196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060925, 27.805931, 49.757599>,  <35.221340, 27.636482, 49.701439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060925, 27.805931, 49.757599>,  <34.793564, 28.088346, 49.851196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060925, 27.805931, 49.757599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130720, 0.421197, -0.897499,
		0.732226, 0.569300, 0.373821,
		0.668398, -0.706039, -0.233993,
		35.261444, 27.594120, 49.687401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439667, 28.442522, 49.624683>,  <34.793564, 28.088346, 49.851196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439667, 28.442522, 49.624683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406708, 28.074505, 49.471462>,  <35.386932, 27.853695, 49.379528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406708, 28.074505, 49.471462>,  <35.439667, 28.442522, 49.624683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406708, 28.074505, 49.471462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283921, 0.346764, -0.893948,
		0.955301, -0.182420, 0.232646,
		-0.082401, -0.920042, -0.383057,
		35.381989, 27.798492, 49.356544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211761, 28.354141, 49.375706>,  <35.439667, 28.442522, 49.624683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211761, 28.354141, 49.375706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999294, 28.090435, 49.162830>,  <35.871815, 27.932211, 49.035107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999294, 28.090435, 49.162830>,  <36.211761, 28.354141, 49.375706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999294, 28.090435, 49.162830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179333, 0.526412, -0.831101,
		0.828069, -0.536896, -0.161386,
		-0.531170, -0.659267, -0.532189,
		35.839943, 27.892654, 49.003174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622406, 28.208529, 48.789360>,  <36.211761, 28.354141, 49.375706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622406, 28.208529, 48.789360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247334, 28.111841, 48.689499>,  <36.022289, 28.053829, 48.629581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247334, 28.111841, 48.689499>,  <36.622406, 28.208529, 48.789360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247334, 28.111841, 48.689499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125563, 0.434207, -0.892019,
		0.324018, -0.867777, -0.376796,
		-0.937681, -0.241718, -0.249651,
		35.966030, 28.039326, 48.614605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652756, 27.976246, 48.076817>,  <36.622406, 28.208529, 48.789360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652756, 27.976246, 48.076817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267662, 28.068647, 48.133068>,  <36.036606, 28.124088, 48.166821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267662, 28.068647, 48.133068>,  <36.652756, 27.976246, 48.076817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267662, 28.068647, 48.133068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042546, 0.384158, -0.922287,
		-0.267075, -0.893902, -0.360014,
		-0.962736, 0.231002, 0.140631,
		35.978840, 28.137947, 48.175259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327576, 27.728426, 47.488739>,  <36.652756, 27.976246, 48.076817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327576, 27.728426, 47.488739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072807, 28.000994, 47.632965>,  <35.919949, 28.164534, 47.719501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072807, 28.000994, 47.632965>,  <36.327576, 27.728426, 47.488739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072807, 28.000994, 47.632965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151108, 0.348282, -0.925130,
		-0.755978, -0.643716, -0.118859,
		-0.636918, 0.681417, 0.360564,
		35.881733, 28.205420, 47.741135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717342, 27.599243, 47.060303>,  <36.327576, 27.728426, 47.488739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717342, 27.599243, 47.060303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652554, 27.956852, 47.227390>,  <35.613682, 28.171417, 47.327641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652554, 27.956852, 47.227390>,  <35.717342, 27.599243, 47.060303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652554, 27.956852, 47.227390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302383, 0.357976, -0.883413,
		-0.939324, -0.269397, 0.212356,
		-0.161971, 0.894024, 0.417716,
		35.603962, 28.225060, 47.352707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060574, 27.940802, 46.779659>,  <35.717342, 27.599243, 47.060303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060574, 27.940802, 46.779659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259918, 28.251541, 46.933617>,  <35.379524, 28.437984, 47.025990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259918, 28.251541, 46.933617>,  <35.060574, 27.940802, 46.779659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259918, 28.251541, 46.933617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349058, 0.586171, -0.731137,
		-0.793597, 0.230019, 0.563289,
		0.498359, 0.776849, 0.384894,
		35.409428, 28.484596, 47.049084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596779, 28.432869, 46.839909>,  <35.060574, 27.940802, 46.779659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596779, 28.432869, 46.839909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940056, 28.638046, 46.847908>,  <35.146023, 28.761152, 46.852707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940056, 28.638046, 46.847908>,  <34.596779, 28.432869, 46.839909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940056, 28.638046, 46.847908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342536, 0.601231, -0.721935,
		-0.382336, 0.612707, 0.691671,
		0.858189, 0.512944, 0.019998,
		35.197514, 28.791929, 46.853909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398956, 29.147388, 46.793507>,  <34.596779, 28.432869, 46.839909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398956, 29.147388, 46.793507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774689, 29.115519, 46.660057>,  <35.000130, 29.096395, 46.579987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774689, 29.115519, 46.660057>,  <34.398956, 29.147388, 46.793507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774689, 29.115519, 46.660057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212104, 0.629467, -0.747518,
		0.269564, 0.772931, 0.574380,
		0.939333, -0.079676, -0.333623,
		35.056488, 29.091616, 46.559971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356632, 29.781607, 46.330837>,  <34.398956, 29.147388, 46.793507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356632, 29.781607, 46.330837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722340, 29.634373, 46.263153>,  <34.941765, 29.546032, 46.222542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722340, 29.634373, 46.263153>,  <34.356632, 29.781607, 46.330837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722340, 29.634373, 46.263153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057535, 0.531421, -0.845152,
		0.401010, 0.762957, 0.507038,
		0.914265, -0.368087, -0.169209,
		34.996620, 29.523947, 46.212391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819160, 30.338623, 46.115501>,  <34.356632, 29.781607, 46.330837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819160, 30.338623, 46.115501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950977, 29.996004, 45.956638>,  <35.030067, 29.790434, 45.861320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950977, 29.996004, 45.956638>,  <34.819160, 30.338623, 46.115501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950977, 29.996004, 45.956638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336888, 0.499641, -0.798039,
		0.881992, 0.129189, 0.453212,
		0.329541, -0.856545, -0.397157,
		35.049839, 29.739040, 45.837490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361710, 30.558119, 45.765011>,  <34.819160, 30.338623, 46.115501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361710, 30.558119, 45.765011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321735, 30.198938, 45.593571>,  <35.297752, 29.983431, 45.490707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321735, 30.198938, 45.593571>,  <35.361710, 30.558119, 45.765011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321735, 30.198938, 45.593571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328609, 0.376801, -0.866046,
		0.939164, -0.227391, 0.257419,
		-0.099936, -0.897950, -0.428601,
		35.291756, 29.929554, 45.464989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954269, 30.379250, 45.450642>,  <35.361710, 30.558119, 45.765011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954269, 30.379250, 45.450642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658218, 30.187984, 45.261509>,  <35.480587, 30.073225, 45.148029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658218, 30.187984, 45.261509>,  <35.954269, 30.379250, 45.450642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658218, 30.187984, 45.261509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262849, 0.441486, -0.857904,
		0.618967, -0.759243, -0.201072,
		-0.740129, -0.478163, -0.472832,
		35.436180, 30.044535, 45.119659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247608, 30.198195, 44.835922>,  <35.954269, 30.379250, 45.450642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247608, 30.198195, 44.835922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852715, 30.171803, 44.777946>,  <35.615776, 30.155968, 44.743160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852715, 30.171803, 44.777946>,  <36.247608, 30.198195, 44.835922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852715, 30.171803, 44.777946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114474, 0.338705, -0.933903,
		0.110708, -0.938576, -0.326830,
		-0.987238, -0.065977, -0.144940,
		35.556541, 30.152010, 44.734463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062065, 29.932989, 44.014023>,  <36.247608, 30.198195, 44.835922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062065, 29.932989, 44.014023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736588, 30.120407, 44.151642>,  <35.541302, 30.232857, 44.234215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736588, 30.120407, 44.151642>,  <36.062065, 29.932989, 44.014023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736588, 30.120407, 44.151642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148409, 0.404810, -0.902277,
		-0.562031, -0.785236, -0.259855,
		-0.813693, 0.468543, 0.344052,
		35.492481, 30.260969, 44.254856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655998, 29.875811, 43.506596>,  <36.062065, 29.932989, 44.014023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655998, 29.875811, 43.506596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503220, 30.174631, 43.724232>,  <35.411552, 30.353924, 43.854813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503220, 30.174631, 43.724232>,  <35.655998, 29.875811, 43.506596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503220, 30.174631, 43.724232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150154, 0.530739, -0.834128,
		-0.911905, -0.400290, -0.090542,
		-0.381947, 0.747050, 0.544089,
		35.388634, 30.398746, 43.887459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004169, 30.032379, 43.126114>,  <35.655998, 29.875811, 43.506596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004169, 30.032379, 43.126114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086895, 30.350027, 43.354710>,  <35.136532, 30.540615, 43.491867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086895, 30.350027, 43.354710>,  <35.004169, 30.032379, 43.126114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086895, 30.350027, 43.354710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137508, 0.601916, -0.786631,
		-0.968669, 0.084100, 0.233681,
		0.206812, 0.794118, 0.571493,
		35.148937, 30.588263, 43.526157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481155, 30.601404, 42.974506>,  <35.004169, 30.032379, 43.126114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481155, 30.601404, 42.974506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796726, 30.791313, 43.130547>,  <34.986069, 30.905258, 43.224171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796726, 30.791313, 43.130547>,  <34.481155, 30.601404, 42.974506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796726, 30.791313, 43.130547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018509, 0.652920, -0.757201,
		-0.614206, 0.590157, 0.523895,
		0.788929, 0.474774, 0.390104,
		35.033405, 30.933744, 43.247578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268929, 31.265396, 43.006992>,  <34.481155, 30.601404, 42.974506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268929, 31.265396, 43.006992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668781, 31.259478, 42.997929>,  <34.908695, 31.255926, 42.992489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668781, 31.259478, 42.997929>,  <34.268929, 31.265396, 43.006992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668781, 31.259478, 42.997929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005129, 0.718614, -0.695390,
		0.026576, 0.695251, 0.718275,
		0.999634, -0.014796, -0.022664,
		34.968670, 31.255039, 42.991131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495945, 32.043701, 43.041206>,  <34.268929, 31.265396, 43.006992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495945, 32.043701, 43.041206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761200, 31.794212, 42.875690>,  <34.920353, 31.644518, 42.776382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761200, 31.794212, 42.875690>,  <34.495945, 32.043701, 43.041206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761200, 31.794212, 42.875690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021134, 0.568204, -0.822617,
		0.748203, 0.536759, 0.389977,
		0.663133, -0.623726, -0.413788,
		34.960140, 31.607094, 42.751553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949112, 32.490837, 42.851734>,  <34.495945, 32.043701, 43.041206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949112, 32.490837, 42.851734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028442, 32.167423, 42.630127>,  <35.076042, 31.973375, 42.497162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028442, 32.167423, 42.630127>,  <34.949112, 32.490837, 42.851734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028442, 32.167423, 42.630127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126294, 0.581617, -0.803599,
		0.971965, 0.089407, 0.217464,
		0.198328, -0.808534, -0.554020,
		35.087940, 31.924864, 42.463921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449089, 32.780045, 42.299721>,  <34.949112, 32.490837, 42.851734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449089, 32.780045, 42.299721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407379, 32.398979, 42.185493>,  <35.382355, 32.170338, 42.116955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407379, 32.398979, 42.185493>,  <35.449089, 32.780045, 42.299721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407379, 32.398979, 42.185493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279593, 0.247476, -0.927676,
		0.954440, -0.176576, 0.240554,
		-0.104274, -0.952668, -0.285571,
		35.376099, 32.113178, 42.099823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065830, 32.580845, 41.880169>,  <35.449089, 32.780045, 42.299721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065830, 32.580845, 41.880169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764400, 32.336861, 41.782127>,  <35.583542, 32.190472, 41.723301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764400, 32.336861, 41.782127>,  <36.065830, 32.580845, 41.880169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764400, 32.336861, 41.782127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161003, 0.190250, -0.968444,
		0.637342, -0.769257, -0.045162,
		-0.753574, -0.609959, -0.245107,
		35.538330, 32.153873, 41.708595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305363, 32.203907, 41.274120>,  <36.065830, 32.580845, 41.880169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305363, 32.203907, 41.274120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906075, 32.180077, 41.273472>,  <35.666500, 32.165779, 41.273083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906075, 32.180077, 41.273472>,  <36.305363, 32.203907, 41.274120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906075, 32.180077, 41.273472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014248, 0.264996, -0.964144,
		0.057866, -0.962408, -0.265374,
		-0.998223, -0.059572, -0.001622,
		35.606609, 32.162205, 41.272984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203541, 32.056664, 40.622066>,  <36.305363, 32.203907, 41.274120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203541, 32.056664, 40.622066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838165, 32.171768, 40.737186>,  <35.618942, 32.240829, 40.806259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838165, 32.171768, 40.737186>,  <36.203541, 32.056664, 40.622066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838165, 32.171768, 40.737186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216004, 0.256560, -0.942082,
		-0.344935, -0.922697, -0.172193,
		-0.913434, 0.287763, 0.287802,
		35.564137, 32.258099, 40.823528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740669, 31.771610, 40.134270>,  <36.203541, 32.056664, 40.622066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740669, 31.771610, 40.134270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513012, 32.066788, 40.279331>,  <35.376415, 32.243893, 40.366367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513012, 32.066788, 40.279331>,  <35.740669, 31.771610, 40.134270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513012, 32.066788, 40.279331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200142, 0.303453, -0.931590,
		-0.797506, -0.602792, -0.025015,
		-0.569146, 0.737942, 0.362650,
		35.342270, 32.288170, 40.388126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123215, 31.824881, 39.599968>,  <35.740669, 31.771610, 40.134270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123215, 31.824881, 39.599968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122917, 32.160343, 39.817833>,  <35.122738, 32.361622, 39.948551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122917, 32.160343, 39.817833>,  <35.123215, 31.824881, 39.599968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122917, 32.160343, 39.817833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305232, 0.518475, -0.798760,
		-0.952278, -0.166843, 0.255598,
		-0.000746, 0.838658, 0.544658,
		35.122692, 32.411942, 39.981232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466629, 32.185734, 39.444862>,  <35.123215, 31.824881, 39.599968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466629, 32.185734, 39.444862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747505, 32.437057, 39.578819>,  <34.916031, 32.587852, 39.659191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747505, 32.437057, 39.578819>,  <34.466629, 32.185734, 39.444862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747505, 32.437057, 39.578819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014220, 0.457889, -0.888896,
		-0.711847, 0.628937, 0.312591,
		0.702191, 0.628312, 0.334890,
		34.958164, 32.625549, 39.679287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347382, 32.829029, 39.060375>,  <34.466629, 32.185734, 39.444862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347382, 32.829029, 39.060375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727257, 32.858189, 39.182217>,  <34.955181, 32.875687, 39.255322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727257, 32.858189, 39.182217>,  <34.347382, 32.829029, 39.060375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727257, 32.858189, 39.182217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256534, 0.376919, -0.890013,
		-0.179697, 0.923373, 0.339251,
		0.949684, 0.072903, 0.304608,
		35.012161, 32.880058, 39.273598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588753, 33.527138, 38.765549>,  <34.347382, 32.829029, 39.060375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588753, 33.527138, 38.765549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931320, 33.337280, 38.846794>,  <35.136860, 33.223366, 38.895542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931320, 33.337280, 38.846794>,  <34.588753, 33.527138, 38.765549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931320, 33.337280, 38.846794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449649, 0.492433, -0.745201,
		0.253688, 0.729535, 0.635154,
		0.856422, -0.474645, 0.203111,
		35.188248, 33.194885, 38.907726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045288, 34.014233, 38.522923>,  <34.588753, 33.527138, 38.765549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045288, 34.014233, 38.522923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303318, 33.722958, 38.615547>,  <35.458138, 33.548191, 38.671124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303318, 33.722958, 38.615547>,  <35.045288, 34.014233, 38.522923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303318, 33.722958, 38.615547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649763, 0.363269, -0.667715,
		0.402101, 0.581187, 0.707485,
		0.645075, -0.728187, 0.231563,
		35.496841, 33.504501, 38.685017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685570, 34.309994, 38.815765>,  <35.045288, 34.014233, 38.522923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685570, 34.309994, 38.815765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807171, 33.950237, 38.690109>,  <35.880131, 33.734383, 38.614716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807171, 33.950237, 38.690109>,  <35.685570, 34.309994, 38.815765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807171, 33.950237, 38.690109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697807, 0.434712, -0.569290,
		0.648574, -0.046147, 0.759751,
		0.304002, -0.899387, -0.314144,
		35.898373, 33.680420, 38.595867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388947, 34.253258, 38.971405>,  <35.685570, 34.309994, 38.815765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388947, 34.253258, 38.971405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298775, 34.010906, 38.666225>,  <36.244671, 33.865494, 38.483116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298775, 34.010906, 38.666225>,  <36.388947, 34.253258, 38.971405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298775, 34.010906, 38.666225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591787, 0.536926, -0.601247,
		0.773930, -0.587044, 0.237510,
		-0.225433, -0.605879, -0.762949,
		36.231144, 33.829144, 38.437340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631039, 33.422394, 38.825695>,  <36.388947, 34.253258, 38.971405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631039, 33.422394, 38.825695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992142, 33.536240, 38.696690>,  <37.208805, 33.604546, 38.619286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992142, 33.536240, 38.696690>,  <36.631039, 33.422394, 38.825695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992142, 33.536240, 38.696690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425706, -0.483778, 0.764678,
		0.061613, -0.827619, -0.557899,
		0.902761, 0.284615, -0.322515,
		37.262970, 33.621624, 38.599934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078735, 32.820992, 38.674763>,  <36.631039, 33.422394, 38.825695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078735, 32.820992, 38.674763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279545, 33.149700, 38.782589>,  <37.400032, 33.346924, 38.847286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279545, 33.149700, 38.782589>,  <37.078735, 32.820992, 38.674763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279545, 33.149700, 38.782589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401623, -0.497559, 0.768852,
		0.765946, -0.277717, -0.579828,
		0.502022, 0.821771, 0.269566,
		37.430153, 33.396233, 38.863461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798187, 32.654743, 38.666904>,  <37.078735, 32.820992, 38.674763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798187, 32.654743, 38.666904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801716, 32.972168, 38.910275>,  <37.803833, 33.162624, 39.056297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801716, 32.972168, 38.910275>,  <37.798187, 32.654743, 38.666904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801716, 32.972168, 38.910275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549224, -0.512303, 0.660227,
		0.835629, 0.328338, -0.440362,
		0.008821, 0.793561, 0.608426,
		37.804363, 33.210236, 39.092804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537327, 32.681343, 38.970428>,  <37.798187, 32.654743, 38.666904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537327, 32.681343, 38.970428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309357, 32.887489, 39.226425>,  <38.172573, 33.011177, 39.380024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309357, 32.887489, 39.226425>,  <38.537327, 32.681343, 38.970428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309357, 32.887489, 39.226425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512343, -0.386044, 0.767121,
		0.642410, 0.765095, -0.044026,
		-0.569925, 0.515363, 0.639990,
		38.138378, 33.042099, 39.418423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939869, 32.917267, 39.440659>,  <38.537327, 32.681343, 38.970428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939869, 32.917267, 39.440659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610844, 32.937466, 39.667229>,  <38.413429, 32.949585, 39.803169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610844, 32.937466, 39.667229>,  <38.939869, 32.917267, 39.440659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610844, 32.937466, 39.667229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553665, -0.156193, 0.817960,
		0.129773, 0.986435, 0.100523,
		-0.822565, 0.050493, 0.566424,
		38.364075, 32.952614, 39.837154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208248, 33.125347, 40.026417>,  <38.939869, 32.917267, 39.440659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208248, 33.125347, 40.026417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843136, 33.019180, 40.150600>,  <38.624069, 32.955479, 40.225109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843136, 33.019180, 40.150600>,  <39.208248, 33.125347, 40.026417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843136, 33.019180, 40.150600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376858, -0.254165, 0.890718,
		-0.157504, 0.930029, 0.332021,
		-0.912782, -0.265417, 0.310457,
		38.569302, 32.939556, 40.243736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113113, 33.452820, 40.675270>,  <39.208248, 33.125347, 40.026417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113113, 33.452820, 40.675270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879604, 33.128178, 40.666271>,  <38.739498, 32.933392, 40.660873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879604, 33.128178, 40.666271>,  <39.113113, 33.452820, 40.675270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879604, 33.128178, 40.666271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277724, -0.225645, 0.933785,
		-0.762942, 0.538869, 0.357128,
		-0.583772, -0.811606, -0.022498,
		38.704472, 32.884697, 40.659523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882698, 33.348846, 41.410679>,  <39.113113, 33.452820, 40.675270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882698, 33.348846, 41.410679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760078, 32.994034, 41.272575>,  <38.686504, 32.781147, 41.189713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760078, 32.994034, 41.272575>,  <38.882698, 33.348846, 41.410679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760078, 32.994034, 41.272575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257860, -0.426552, 0.866927,
		-0.916260, 0.176730, 0.359491,
		-0.306554, -0.887029, -0.345260,
		38.668114, 32.727924, 41.168999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337597, 33.088768, 41.804489>,  <38.882698, 33.348846, 41.410679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337597, 33.088768, 41.804489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524815, 32.774818, 41.642056>,  <38.637146, 32.586449, 41.544598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524815, 32.774818, 41.642056>,  <38.337597, 33.088768, 41.804489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524815, 32.774818, 41.642056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077881, -0.421099, 0.903665,
		-0.880264, -0.454585, -0.135968,
		0.468049, -0.784874, -0.406082,
		38.665230, 32.539356, 41.520229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039276, 32.540829, 42.137848>,  <38.337597, 33.088768, 41.804489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039276, 32.540829, 42.137848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362350, 32.378494, 41.966759>,  <38.556194, 32.281094, 41.864105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362350, 32.378494, 41.966759>,  <38.039276, 32.540829, 42.137848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362350, 32.378494, 41.966759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091960, -0.629834, 0.771267,
		-0.582398, -0.662274, -0.471387,
		0.807686, -0.405835, -0.427717,
		38.604656, 32.256744, 41.838444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895264, 31.842779, 42.203117>,  <38.039276, 32.540829, 42.137848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895264, 31.842779, 42.203117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285336, 31.896042, 42.132355>,  <38.519379, 31.927999, 42.089897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285336, 31.896042, 42.132355>,  <37.895264, 31.842779, 42.203117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285336, 31.896042, 42.132355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200628, -0.869386, 0.451570,
		-0.093668, -0.475854, -0.874523,
		0.975179, 0.133156, -0.176903,
		38.577888, 31.935989, 42.079285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050095, 31.264921, 41.982643>,  <37.895264, 31.842779, 42.203117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050095, 31.264921, 41.982643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379303, 31.441170, 42.126022>,  <38.576828, 31.546919, 42.212048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379303, 31.441170, 42.126022>,  <38.050095, 31.264921, 41.982643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379303, 31.441170, 42.126022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122605, -0.753994, 0.645338,
		0.554615, -0.487182, -0.674579,
		0.823025, 0.440620, 0.358445,
		38.626209, 31.573357, 42.233555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468327, 30.731365, 42.053661>,  <38.050095, 31.264921, 41.982643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468327, 30.731365, 42.053661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598488, 31.017277, 42.301273>,  <38.676586, 31.188824, 42.449841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598488, 31.017277, 42.301273>,  <38.468327, 30.731365, 42.053661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598488, 31.017277, 42.301273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026882, -0.647404, 0.761673,
		0.945193, -0.264492, -0.191453,
		0.325404, 0.714781, 0.619032,
		38.696110, 31.231710, 42.486984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907936, 30.390852, 42.536144>,  <38.468327, 30.731365, 42.053661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907936, 30.390852, 42.536144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811783, 30.740091, 42.705807>,  <38.754089, 30.949635, 42.807606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811783, 30.740091, 42.705807>,  <38.907936, 30.390852, 42.536144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811783, 30.740091, 42.705807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048096, -0.425723, 0.903575,
		0.969485, 0.237606, 0.060345,
		-0.240385, 0.873100, 0.424160,
		38.739666, 31.002022, 42.833054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448051, 30.485319, 43.111664>,  <38.907936, 30.390852, 42.536144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448051, 30.485319, 43.111664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110176, 30.692871, 43.164215>,  <38.907452, 30.817402, 43.195747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110176, 30.692871, 43.164215>,  <39.448051, 30.485319, 43.111664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110176, 30.692871, 43.164215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027813, -0.202574, 0.978872,
		0.534530, 0.830499, 0.156681,
		-0.844692, 0.518878, 0.131381,
		38.856770, 30.848536, 43.203629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608643, 30.756971, 43.759644>,  <39.448051, 30.485319, 43.111664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608643, 30.756971, 43.759644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216652, 30.836481, 43.755108>,  <38.981457, 30.884186, 43.752388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216652, 30.836481, 43.755108>,  <39.608643, 30.756971, 43.759644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216652, 30.836481, 43.755108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068727, -0.284290, 0.956272,
		0.186858, 0.937906, 0.292260,
		-0.979980, 0.198773, -0.011338,
		38.922657, 30.896112, 43.751705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491905, 31.109249, 44.388264>,  <39.608643, 30.756971, 43.759644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491905, 31.109249, 44.388264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130142, 30.993380, 44.262955>,  <38.913086, 30.923859, 44.187767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130142, 30.993380, 44.262955>,  <39.491905, 31.109249, 44.388264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130142, 30.993380, 44.262955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156283, -0.458302, 0.874949,
		-0.397025, 0.840267, 0.369219,
		-0.904404, -0.289674, -0.313276,
		38.858822, 30.906477, 44.168972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935326, 31.338732, 44.860676>,  <39.491905, 31.109249, 44.388264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935326, 31.338732, 44.860676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755192, 31.024220, 44.691460>,  <38.647110, 30.835512, 44.589931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755192, 31.024220, 44.691460>,  <38.935326, 31.338732, 44.860676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755192, 31.024220, 44.691460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246277, -0.346034, 0.905322,
		-0.858223, 0.511883, -0.037812,
		-0.450335, -0.786280, -0.423039,
		38.620090, 30.788336, 44.564548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367035, 31.271242, 45.260139>,  <38.935326, 31.338732, 44.860676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367035, 31.271242, 45.260139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384937, 30.909918, 45.089481>,  <38.395679, 30.693123, 44.987087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384937, 30.909918, 45.089481>,  <38.367035, 31.271242, 45.260139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384937, 30.909918, 45.089481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335856, -0.415824, 0.845158,
		-0.940849, 0.105465, -0.321993,
		0.044758, -0.903309, -0.426649,
		38.398365, 30.638926, 44.961487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800022, 30.872152, 45.502792>,  <38.367035, 31.271242, 45.260139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800022, 30.872152, 45.502792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072803, 30.608845, 45.375278>,  <38.236473, 30.450861, 45.298771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072803, 30.608845, 45.375278>,  <37.800022, 30.872152, 45.502792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072803, 30.608845, 45.375278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275363, -0.634863, 0.721889,
		-0.677581, -0.404513, -0.614210,
		0.681953, -0.658269, -0.318783,
		38.277390, 30.411364, 45.279644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450504, 30.276112, 45.509506>,  <37.800022, 30.872152, 45.502792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450504, 30.276112, 45.509506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835014, 30.165882, 45.510521>,  <38.065720, 30.099745, 45.511127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835014, 30.165882, 45.510521>,  <37.450504, 30.276112, 45.509506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835014, 30.165882, 45.510521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179114, -0.617759, 0.765697,
		-0.209438, -0.736501, -0.643196,
		0.961277, -0.275572, 0.002535,
		38.123398, 30.083210, 45.511280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397358, 29.557388, 45.650002>,  <37.450504, 30.276112, 45.509506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397358, 29.557388, 45.650002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762230, 29.660156, 45.777699>,  <37.981155, 29.721817, 45.854317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762230, 29.660156, 45.777699>,  <37.397358, 29.557388, 45.650002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762230, 29.660156, 45.777699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170389, -0.470714, 0.865676,
		0.372683, -0.844050, -0.385600,
		0.912181, 0.256920, 0.319244,
		38.035885, 29.737232, 45.873470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780487, 28.936487, 45.882713>,  <37.397358, 29.557388, 45.650002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780487, 28.936487, 45.882713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955109, 29.246500, 46.065468>,  <38.059883, 29.432508, 46.175121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955109, 29.246500, 46.065468>,  <37.780487, 28.936487, 45.882713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955109, 29.246500, 46.065468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165416, -0.568323, 0.806006,
		0.884341, -0.276288, -0.376306,
		0.436553, 0.775032, 0.456888,
		38.086075, 29.479010, 46.202534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143482, 28.659405, 46.353489>,  <37.780487, 28.936487, 45.882713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143482, 28.659405, 46.353489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156979, 29.033413, 46.494682>,  <38.165077, 29.257818, 46.579399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156979, 29.033413, 46.494682>,  <38.143482, 28.659405, 46.353489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156979, 29.033413, 46.494682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022766, -0.353808, 0.935041,
		0.999171, -0.023511, -0.033224,
		0.033739, 0.935022, 0.352980,
		38.167099, 29.313919, 46.600574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510006, 28.618959, 47.119846>,  <38.143482, 28.659405, 46.353489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510006, 28.618959, 47.119846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311367, 28.964985, 47.091400>,  <38.192184, 29.172600, 47.074333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311367, 28.964985, 47.091400>,  <38.510006, 28.618959, 47.119846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311367, 28.964985, 47.091400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141146, 0.000360, 0.989989,
		0.856427, 0.501665, 0.121921,
		-0.496598, 0.865062, -0.071116,
		38.162388, 29.224504, 47.070065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792198, 29.164440, 47.586121>,  <38.510006, 28.618959, 47.119846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792198, 29.164440, 47.586121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411720, 29.270773, 47.523426>,  <38.183434, 29.334572, 47.485809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411720, 29.270773, 47.523426>,  <38.792198, 29.164440, 47.586121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411720, 29.270773, 47.523426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152219, 0.037655, 0.987629,
		0.268446, 0.963283, 0.004648,
		-0.951192, 0.265832, -0.156738,
		38.126362, 29.350523, 47.476406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653992, 29.691080, 47.978462>,  <38.792198, 29.164440, 47.586121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653992, 29.691080, 47.978462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277771, 29.568897, 47.919048>,  <38.052040, 29.495586, 47.883400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277771, 29.568897, 47.919048>,  <38.653992, 29.691080, 47.978462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277771, 29.568897, 47.919048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217999, 0.207518, 0.953631,
		-0.260470, 0.929318, -0.261770,
		-0.940549, -0.305458, -0.148538,
		37.995605, 29.477261, 47.874489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282337, 30.196922, 48.270073>,  <38.653992, 29.691080, 47.978462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282337, 30.196922, 48.270073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046051, 29.875025, 48.246593>,  <37.904278, 29.681887, 48.232506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046051, 29.875025, 48.246593>,  <38.282337, 30.196922, 48.270073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046051, 29.875025, 48.246593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353550, 0.192760, 0.915339,
		-0.725298, 0.561457, -0.398383,
		-0.590716, -0.804742, -0.058695,
		37.868835, 29.633602, 48.228985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610748, 30.403107, 48.545452>,  <38.282337, 30.196922, 48.270073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610748, 30.403107, 48.545452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641479, 30.004877, 48.567093>,  <37.659916, 29.765940, 48.580078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641479, 30.004877, 48.567093>,  <37.610748, 30.403107, 48.545452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641479, 30.004877, 48.567093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139057, 0.043032, 0.989349,
		-0.987300, -0.083528, -0.135136,
		0.076824, -0.995576, 0.054100,
		37.664528, 29.706203, 48.583324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031616, 30.269596, 49.043831>,  <37.610748, 30.403107, 48.545452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031616, 30.269596, 49.043831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259888, 29.941893, 49.021393>,  <37.396851, 29.745270, 49.007931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259888, 29.941893, 49.021393>,  <37.031616, 30.269596, 49.043831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259888, 29.941893, 49.021393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176579, -0.189138, 0.965943,
		-0.801967, -0.541334, -0.252600,
		0.570674, -0.819259, -0.056094,
		37.431091, 29.696115, 49.004566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691181, 29.764996, 49.341297>,  <37.031616, 30.269596, 49.043831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691181, 29.764996, 49.341297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068806, 29.633638, 49.353397>,  <37.295380, 29.554825, 49.360657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068806, 29.633638, 49.353397>,  <36.691181, 29.764996, 49.341297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068806, 29.633638, 49.353397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143323, -0.325947, 0.934461,
		-0.297000, -0.886523, -0.354778,
		0.944060, -0.328383, 0.030253,
		37.352024, 29.535120, 49.362473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630539, 29.266001, 49.809029>,  <36.691181, 29.764996, 49.341297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630539, 29.266001, 49.809029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028698, 29.302538, 49.797375>,  <37.267593, 29.324461, 49.790382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028698, 29.302538, 49.797375>,  <36.630539, 29.266001, 49.809029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028698, 29.302538, 49.797375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071600, -0.506135, 0.859477,
		0.063764, -0.857603, -0.510344,
		0.995393, 0.091345, -0.029131,
		37.327316, 29.329941, 49.788635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963799, 28.620790, 50.045380>,  <36.630539, 29.266001, 49.809029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963799, 28.620790, 50.045380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224308, 28.917320, 50.110214>,  <37.380615, 29.095238, 50.149113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224308, 28.917320, 50.110214>,  <36.963799, 28.620790, 50.045380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224308, 28.917320, 50.110214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052873, -0.168745, 0.984241,
		0.756995, -0.649584, -0.070704,
		0.651278, 0.741327, 0.162085,
		37.419693, 29.139719, 50.158840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537495, 28.366352, 50.442394>,  <36.963799, 28.620790, 50.045380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537495, 28.366352, 50.442394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522499, 28.762899, 50.492653>,  <37.513500, 29.000828, 50.522808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522499, 28.762899, 50.492653>,  <37.537495, 28.366352, 50.442394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522499, 28.762899, 50.492653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131999, -0.129549, 0.982748,
		0.990541, 0.020256, 0.135716,
		-0.037488, 0.991366, 0.125649,
		37.511253, 29.060308, 50.530346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999786, 28.487671, 51.151146>,  <37.537495, 28.366352, 50.442394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999786, 28.487671, 51.151146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786366, 28.816223, 51.070484>,  <37.658314, 29.013353, 51.022087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786366, 28.816223, 51.070484>,  <37.999786, 28.487671, 51.151146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786366, 28.816223, 51.070484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235208, 0.084921, 0.968228,
		0.812406, 0.564027, 0.147885,
		-0.533548, 0.821378, -0.201654,
		37.626301, 29.062637, 51.009987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245911, 28.923147, 51.628307>,  <37.999786, 28.487671, 51.151146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245911, 28.923147, 51.628307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889820, 29.047295, 51.494938>,  <37.676167, 29.121782, 51.414917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889820, 29.047295, 51.494938>,  <38.245911, 28.923147, 51.628307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889820, 29.047295, 51.494938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304364, 0.139300, 0.942315,
		0.338910, 0.940354, -0.029544,
		-0.890226, 0.310368, -0.333420,
		37.622753, 29.140406, 51.394913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020908, 29.462849, 52.134613>,  <38.245911, 28.923147, 51.628307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020908, 29.462849, 52.134613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671852, 29.379532, 51.957928>,  <37.462418, 29.329542, 51.851917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671852, 29.379532, 51.957928>,  <38.020908, 29.462849, 52.134613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671852, 29.379532, 51.957928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425244, -0.120664, 0.896999,
		-0.240137, 0.970595, 0.016721,
		-0.872640, -0.208293, -0.441716,
		37.410061, 29.317043, 51.825413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544048, 29.825392, 52.545311>,  <38.020908, 29.462849, 52.134613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544048, 29.825392, 52.545311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308327, 29.550964, 52.374649>,  <37.166893, 29.386309, 52.272251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308327, 29.550964, 52.374649>,  <37.544048, 29.825392, 52.545311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308327, 29.550964, 52.374649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244327, -0.352033, 0.903536,
		-0.770083, 0.636699, 0.039829,
		-0.589301, -0.686067, -0.426658,
		37.131535, 29.345144, 52.246651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064590, 30.037771, 53.005283>,  <37.544048, 29.825392, 52.545311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064590, 30.037771, 53.005283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419979, 30.102846, 53.176933>,  <38.633213, 30.141891, 53.279922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419979, 30.102846, 53.176933>,  <38.064590, 30.037771, 53.005283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419979, 30.102846, 53.176933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393902, 0.209478, -0.894964,
		-0.235492, 0.964184, 0.122032,
		0.888473, 0.162689, 0.429124,
		38.686520, 30.151653, 53.305672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272911, 30.683376, 52.755638>,  <38.064590, 30.037771, 53.005283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272911, 30.683376, 52.755638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587128, 30.469845, 52.880821>,  <38.775658, 30.341726, 52.955933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587128, 30.469845, 52.880821>,  <38.272911, 30.683376, 52.755638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587128, 30.469845, 52.880821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519925, 0.295136, -0.801606,
		0.335556, 0.792414, 0.509394,
		0.785545, -0.533830, 0.312961,
		38.822792, 30.309696, 52.974709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780754, 31.050032, 52.676582>,  <38.272911, 30.683376, 52.755638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780754, 31.050032, 52.676582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938457, 30.682438, 52.678806>,  <39.033081, 30.461882, 52.680141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938457, 30.682438, 52.678806>,  <38.780754, 31.050032, 52.676582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938457, 30.682438, 52.678806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573115, 0.241142, -0.783192,
		0.718400, 0.311965, 0.621755,
		0.394260, -0.918982, 0.005556,
		39.056736, 30.406744, 52.680473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422935, 31.201824, 52.547234>,  <38.780754, 31.050032, 52.676582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422935, 31.201824, 52.547234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404301, 30.817638, 52.437447>,  <39.393120, 30.587126, 52.371574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404301, 30.817638, 52.437447>,  <39.422935, 31.201824, 52.547234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404301, 30.817638, 52.437447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514344, 0.212481, -0.830844,
		0.856318, -0.179877, 0.484112,
		-0.046586, -0.960467, -0.274470,
		39.390324, 30.529499, 52.355106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073238, 31.037373, 52.320782>,  <39.422935, 31.201824, 52.547234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073238, 31.037373, 52.320782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808300, 30.798351, 52.140018>,  <39.649338, 30.654938, 52.031559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808300, 30.798351, 52.140018>,  <40.073238, 31.037373, 52.320782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808300, 30.798351, 52.140018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433354, 0.186475, -0.881721,
		0.611145, -0.779845, 0.135441,
		-0.662349, -0.597553, -0.451912,
		39.609596, 30.619085, 52.004444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422379, 30.811216, 51.861580>,  <40.073238, 31.037373, 52.320782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422379, 30.811216, 51.861580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071274, 30.684652, 51.717682>,  <39.860611, 30.608713, 51.631344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071274, 30.684652, 51.717682>,  <40.422379, 30.811216, 51.861580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071274, 30.684652, 51.717682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309923, 0.197612, -0.929998,
		0.365353, -0.927811, -0.075393,
		-0.877761, -0.316412, -0.359748,
		39.807945, 30.589729, 51.609756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636387, 30.466867, 51.273209>,  <40.422379, 30.811216, 51.861580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636387, 30.466867, 51.273209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241570, 30.495197, 51.215630>,  <40.004677, 30.512196, 51.181084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241570, 30.495197, 51.215630>,  <40.636387, 30.466867, 51.273209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241570, 30.495197, 51.215630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158680, 0.299024, -0.940960,
		-0.023599, -0.951614, -0.306389,
		-0.987048, 0.070823, -0.143946,
		39.945454, 30.516445, 51.172447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575581, 29.978754, 50.701641>,  <40.636387, 30.466867, 51.273209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575581, 29.978754, 50.701641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277367, 30.244114, 50.727211>,  <40.098438, 30.403330, 50.742554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277367, 30.244114, 50.727211>,  <40.575581, 29.978754, 50.701641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277367, 30.244114, 50.727211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069036, 0.172262, -0.982629,
		-0.662886, -0.728168, -0.174225,
		-0.745531, 0.663399, 0.063920,
		40.053707, 30.443134, 50.746387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071301, 29.844671, 50.197956>,  <40.575581, 29.978754, 50.701641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071301, 29.844671, 50.197956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988670, 30.230780, 50.261929>,  <39.939095, 30.462444, 50.300312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988670, 30.230780, 50.261929>,  <40.071301, 29.844671, 50.197956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988670, 30.230780, 50.261929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033447, 0.170325, -0.984820,
		-0.977860, -0.198086, -0.067470,
		-0.206571, 0.965273, 0.159928,
		39.926701, 30.520361, 50.309906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443439, 30.026754, 49.821060>,  <40.071301, 29.844671, 50.197956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443439, 30.026754, 49.821060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683884, 30.345274, 49.848122>,  <39.828148, 30.536386, 49.864357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683884, 30.345274, 49.848122>,  <39.443439, 30.026754, 49.821060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683884, 30.345274, 49.848122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031896, 0.108489, -0.993586,
		-0.798531, 0.595094, 0.090613,
		0.601108, 0.796300, 0.067651,
		39.864216, 30.584164, 49.868416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285309, 30.487881, 49.234749>,  <39.443439, 30.026754, 49.821060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285309, 30.487881, 49.234749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602348, 30.692791, 49.367023>,  <39.792572, 30.815737, 49.446388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602348, 30.692791, 49.367023>,  <39.285309, 30.487881, 49.234749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602348, 30.692791, 49.367023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176187, 0.326787, -0.928530,
		-0.583729, 0.794218, 0.168756,
		0.792602, 0.512278, 0.330686,
		39.840130, 30.846474, 49.466228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168835, 31.212421, 48.977161>,  <39.285309, 30.487881, 49.234749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168835, 31.212421, 48.977161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556267, 31.147655, 49.052666>,  <39.788727, 31.108797, 49.097969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556267, 31.147655, 49.052666>,  <39.168835, 31.212421, 48.977161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556267, 31.147655, 49.052666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239164, 0.398429, -0.885469,
		0.068162, 0.902795, 0.424636,
		0.968584, -0.161913, 0.188758,
		39.846844, 31.099081, 49.109295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535946, 31.797075, 48.876175>,  <39.168835, 31.212421, 48.977161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535946, 31.797075, 48.876175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784855, 31.494785, 48.794525>,  <39.934200, 31.313412, 48.745537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784855, 31.494785, 48.794525>,  <39.535946, 31.797075, 48.876175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784855, 31.494785, 48.794525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304654, 0.473997, -0.826143,
		0.721089, 0.451896, 0.525187,
		0.622268, -0.755723, -0.204122,
		39.971535, 31.268068, 48.733288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133930, 32.075527, 48.700794>,  <39.535946, 31.797075, 48.876175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133930, 32.075527, 48.700794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145603, 31.713659, 48.530750>,  <40.152607, 31.496538, 48.428726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145603, 31.713659, 48.530750>,  <40.133930, 32.075527, 48.700794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145603, 31.713659, 48.530750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296188, 0.414013, -0.860736,
		0.954684, -0.100794, 0.280034,
		0.029181, -0.904673, -0.425105,
		40.154358, 31.442257, 48.403217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624363, 32.183926, 48.148422>,  <40.133930, 32.075527, 48.700794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624363, 32.183926, 48.148422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473373, 31.827522, 48.047531>,  <40.382778, 31.613682, 47.986996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473373, 31.827522, 48.047531>,  <40.624363, 32.183926, 48.148422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473373, 31.827522, 48.047531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360908, 0.109288, -0.926176,
		0.852794, -0.440641, 0.280318,
		-0.377476, -0.891006, -0.252231,
		40.360130, 31.560221, 47.971863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942921, 31.997936, 47.572983>,  <40.624363, 32.183926, 48.148422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942921, 31.997936, 47.572983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639248, 31.737621, 47.568665>,  <40.457043, 31.581432, 47.566074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639248, 31.737621, 47.568665>,  <40.942921, 31.997936, 47.572983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639248, 31.737621, 47.568665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189935, -0.205645, -0.960018,
		0.622547, -0.730881, 0.279730,
		-0.759184, -0.650787, -0.010796,
		40.411491, 31.542385, 47.565426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237797, 31.431858, 47.203354>,  <40.942921, 31.997936, 47.572983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237797, 31.431858, 47.203354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840965, 31.446255, 47.155205>,  <40.602867, 31.454893, 47.126316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840965, 31.446255, 47.155205>,  <41.237797, 31.431858, 47.203354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840965, 31.446255, 47.155205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122888, 0.078740, -0.989292,
		-0.026126, -0.996245, -0.082538,
		-0.992076, 0.035990, -0.120370,
		40.543343, 31.457052, 47.119095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081284, 30.985697, 46.699986>,  <41.237797, 31.431858, 47.203354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081284, 30.985697, 46.699986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754517, 31.216122, 46.711292>,  <40.558456, 31.354376, 46.718075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754517, 31.216122, 46.711292>,  <41.081284, 30.985697, 46.699986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754517, 31.216122, 46.711292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024051, 0.082985, -0.996260,
		-0.576254, -0.813182, -0.081647,
		-0.816917, 0.576063, 0.028263,
		40.509441, 31.388941, 46.719772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615826, 30.749245, 46.198456>,  <41.081284, 30.985697, 46.699986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615826, 30.749245, 46.198456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527401, 31.137144, 46.239872>,  <40.474346, 31.369884, 46.264721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527401, 31.137144, 46.239872>,  <40.615826, 30.749245, 46.198456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527401, 31.137144, 46.239872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000397, 0.106073, -0.994358,
		-0.975260, -0.219853, -0.023063,
		-0.221059, 0.969749, 0.103536,
		40.461082, 31.428068, 46.270931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077469, 30.858496, 45.712387>,  <40.615826, 30.749245, 46.198456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077469, 30.858496, 45.712387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218765, 31.226147, 45.782154>,  <40.303543, 31.446737, 45.824013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218765, 31.226147, 45.782154>,  <40.077469, 30.858496, 45.712387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218765, 31.226147, 45.782154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060899, 0.163448, -0.984671,
		-0.933547, 0.358451, 0.001763,
		0.353245, 0.919129, 0.174415,
		40.324738, 31.501884, 45.834480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707195, 31.287069, 45.275036>,  <40.077469, 30.858496, 45.712387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707195, 31.287069, 45.275036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017834, 31.526978, 45.352154>,  <40.204216, 31.670923, 45.398422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017834, 31.526978, 45.352154>,  <39.707195, 31.287069, 45.275036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017834, 31.526978, 45.352154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064583, 0.228618, -0.971372,
		-0.626676, 0.766818, 0.138809,
		0.776599, 0.599770, 0.192793,
		40.250813, 31.706909, 45.409992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496933, 31.984398, 45.042461>,  <39.707195, 31.287069, 45.275036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496933, 31.984398, 45.042461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895844, 32.011463, 45.054150>,  <40.135189, 32.027702, 45.061165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895844, 32.011463, 45.054150>,  <39.496933, 31.984398, 45.042461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895844, 32.011463, 45.054150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008081, 0.494487, -0.869148,
		-0.073261, 0.866548, 0.493689,
		0.997280, 0.067664, 0.029224,
		40.195026, 32.031761, 45.062916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603416, 32.653328, 44.807812>,  <39.496933, 31.984398, 45.042461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603416, 32.653328, 44.807812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964943, 32.486145, 44.771111>,  <40.181858, 32.385834, 44.749088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964943, 32.486145, 44.771111>,  <39.603416, 32.653328, 44.807812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964943, 32.486145, 44.771111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167888, 0.543582, -0.822394,
		0.393604, 0.727891, 0.561471,
		0.903819, -0.417962, -0.091752,
		40.236088, 32.360756, 44.743584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034821, 33.198490, 44.617268>,  <39.603416, 32.653328, 44.807812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034821, 33.198490, 44.617268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260094, 32.881538, 44.523495>,  <40.395260, 32.691368, 44.467232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260094, 32.881538, 44.523495>,  <40.034821, 33.198490, 44.617268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260094, 32.881538, 44.523495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188616, 0.399487, -0.897125,
		0.804516, 0.461030, 0.374441,
		0.563186, -0.792377, -0.234436,
		40.429050, 32.643826, 44.453163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716694, 33.412754, 44.478508>,  <40.034821, 33.198490, 44.617268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716694, 33.412754, 44.478508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663136, 33.052528, 44.313072>,  <40.631001, 32.836391, 44.213810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663136, 33.052528, 44.313072>,  <40.716694, 33.412754, 44.478508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663136, 33.052528, 44.313072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312714, 0.357625, -0.879951,
		0.940363, -0.247154, 0.233736,
		-0.133894, -0.900566, -0.413585,
		40.622967, 32.782360, 44.188995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270523, 33.274563, 44.098007>,  <40.716694, 33.412754, 44.478508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270523, 33.274563, 44.098007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006638, 33.020565, 43.937229>,  <40.848309, 32.868164, 43.840763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006638, 33.020565, 43.937229>,  <41.270523, 33.274563, 44.098007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006638, 33.020565, 43.937229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192400, 0.374313, -0.907123,
		0.726475, -0.675772, -0.124764,
		-0.659709, -0.634997, -0.401948,
		40.808723, 32.830067, 43.816647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580299, 33.022640, 43.555054>,  <41.270523, 33.274563, 44.098007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580299, 33.022640, 43.555054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197937, 32.941246, 43.470356>,  <40.968517, 32.892410, 43.419537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197937, 32.941246, 43.470356>,  <41.580299, 33.022640, 43.555054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197937, 32.941246, 43.470356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143656, 0.304858, -0.941501,
		0.256128, -0.930407, -0.262185,
		-0.955909, -0.203481, -0.211741,
		40.911163, 32.880199, 43.406834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689175, 32.580086, 42.974182>,  <41.580299, 33.022640, 43.555054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689175, 32.580086, 42.974182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318134, 32.729393, 42.980251>,  <41.095512, 32.818977, 42.983894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318134, 32.729393, 42.980251>,  <41.689175, 32.580086, 42.974182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318134, 32.729393, 42.980251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056267, 0.179751, -0.982102,
		-0.369316, -0.910143, -0.187740,
		-0.927599, 0.373269, 0.015174,
		41.039856, 32.841373, 42.984802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333675, 32.345741, 42.393646>,  <41.689175, 32.580086, 42.974182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333675, 32.345741, 42.393646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170509, 32.692089, 42.509495>,  <41.072609, 32.899899, 42.579002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170509, 32.692089, 42.509495>,  <41.333675, 32.345741, 42.393646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170509, 32.692089, 42.509495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061530, 0.342556, -0.937480,
		-0.910946, -0.364589, -0.193010,
		-0.407912, 0.865870, 0.289617,
		41.048138, 32.951851, 42.596378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854485, 32.481285, 41.908669>,  <41.333675, 32.345741, 42.393646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854485, 32.481285, 41.908669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917912, 32.838600, 42.076904>,  <40.955967, 33.052990, 42.177845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917912, 32.838600, 42.076904>,  <40.854485, 32.481285, 41.908669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917912, 32.838600, 42.076904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051994, 0.432939, -0.899922,
		-0.985979, 0.120828, 0.115094,
		0.158565, 0.893289, 0.420587,
		40.965481, 33.106586, 42.203079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528896, 32.940617, 41.508472>,  <40.854485, 32.481285, 41.908669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528896, 32.940617, 41.508472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780460, 33.175400, 41.712418>,  <40.931396, 33.316269, 41.834785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780460, 33.175400, 41.712418>,  <40.528896, 32.940617, 41.508472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780460, 33.175400, 41.712418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148688, 0.552887, -0.819883,
		-0.763131, 0.591440, 0.260441,
		0.628906, 0.586954, 0.509865,
		40.969131, 33.351486, 41.865376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324139, 33.628815, 41.398651>,  <40.528896, 32.940617, 41.508472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324139, 33.628815, 41.398651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699825, 33.698620, 41.516918>,  <40.925236, 33.740501, 41.587879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699825, 33.698620, 41.516918>,  <40.324139, 33.628815, 41.398651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699825, 33.698620, 41.516918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100428, 0.683865, -0.722664,
		-0.328308, 0.708431, 0.624771,
		0.939217, 0.174512, 0.295664,
		40.981590, 33.750973, 41.605618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377350, 34.327976, 41.518200>,  <40.324139, 33.628815, 41.398651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377350, 34.327976, 41.518200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755939, 34.211323, 41.462875>,  <40.983093, 34.141331, 41.429680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755939, 34.211323, 41.462875>,  <40.377350, 34.327976, 41.518200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755939, 34.211323, 41.462875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094085, 0.659176, -0.746080,
		0.308753, 0.693135, 0.651333,
		0.946478, -0.291635, -0.138309,
		41.039883, 34.123833, 41.421383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705730, 34.905331, 41.544930>,  <40.377350, 34.327976, 41.518200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705730, 34.905331, 41.544930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933353, 34.648933, 41.338898>,  <41.069927, 34.495094, 41.215279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933353, 34.648933, 41.338898>,  <40.705730, 34.905331, 41.544930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933353, 34.648933, 41.338898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205726, 0.717449, -0.665541,
		0.796150, 0.272762, 0.540135,
		0.569053, -0.640990, -0.515083,
		41.104069, 34.456635, 41.184372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398315, 35.176155, 41.548176>,  <40.705730, 34.905331, 41.544930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398315, 35.176155, 41.548176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392914, 34.920151, 41.240875>,  <41.389671, 34.766548, 41.056496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392914, 34.920151, 41.240875>,  <41.398315, 35.176155, 41.548176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392914, 34.920151, 41.240875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283372, 0.734372, -0.616764,
		0.958915, -0.226028, 0.171444,
		-0.013502, -0.640007, -0.768250,
		41.388863, 34.728149, 41.010399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844002, 35.470554, 41.033310>,  <41.398315, 35.176155, 41.548176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844002, 35.470554, 41.033310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623337, 35.212349, 40.822033>,  <41.490940, 35.057426, 40.695267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623337, 35.212349, 40.822033>,  <41.844002, 35.470554, 41.033310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623337, 35.212349, 40.822033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164170, 0.536846, -0.827553,
		0.817754, -0.543239, -0.190182,
		-0.551658, -0.645513, -0.528192,
		41.457840, 35.018696, 40.663574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240803, 35.381413, 40.432999>,  <41.844002, 35.470554, 41.033310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240803, 35.381413, 40.432999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873714, 35.251339, 40.341751>,  <41.653461, 35.173294, 40.287003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873714, 35.251339, 40.341751>,  <42.240803, 35.381413, 40.432999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873714, 35.251339, 40.341751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007829, 0.588988, -0.808104,
		0.397143, -0.739830, -0.543073,
		-0.917723, -0.325185, -0.228120,
		41.598396, 35.153782, 40.273315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285458, 35.108463, 39.771336>,  <42.240803, 35.381413, 40.432999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285458, 35.108463, 39.771336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889957, 35.152420, 39.811920>,  <41.652657, 35.178795, 39.836273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889957, 35.152420, 39.811920>,  <42.285458, 35.108463, 39.771336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889957, 35.152420, 39.811920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054878, 0.364527, -0.929574,
		-0.139135, -0.924686, -0.354397,
		-0.988752, 0.109888, 0.101463,
		41.593330, 35.185387, 39.842358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904087, 34.728432, 39.281269>,  <42.285458, 35.108463, 39.771336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904087, 34.728432, 39.281269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647903, 35.012375, 39.398518>,  <41.494194, 35.182739, 39.468864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647903, 35.012375, 39.398518>,  <41.904087, 34.728432, 39.281269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647903, 35.012375, 39.398518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108646, 0.294082, -0.949585,
		-0.760269, -0.640016, -0.111224,
		-0.640458, 0.709856, 0.293117,
		41.455765, 35.225330, 39.486454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494705, 34.812187, 38.633953>,  <41.904087, 34.728432, 39.281269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494705, 34.812187, 38.633953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462601, 35.122044, 38.884869>,  <41.443336, 35.307957, 39.035419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462601, 35.122044, 38.884869>,  <41.494705, 34.812187, 38.633953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462601, 35.122044, 38.884869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173224, 0.608902, -0.774101,
		-0.981606, -0.170795, 0.085312,
		-0.080266, 0.774641, 0.627288,
		41.438522, 35.354435, 39.073055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529919, 34.119373, 38.725479>,  <41.494705, 34.812187, 38.633953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529919, 34.119373, 38.725479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138100, 34.191242, 38.689240>,  <40.903008, 34.234364, 38.667496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138100, 34.191242, 38.689240>,  <41.529919, 34.119373, 38.725479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138100, 34.191242, 38.689240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186409, -0.640697, 0.744822,
		0.075777, 0.746476, 0.661084,
		-0.979546, 0.179673, -0.090600,
		40.844234, 34.245144, 38.662060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890938, 34.184147, 38.020298>,  <41.529919, 34.119373, 38.725479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890938, 34.184147, 38.020298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123543, 33.870945, 37.931984>,  <42.263107, 33.683025, 37.878994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123543, 33.870945, 37.931984>,  <41.890938, 34.184147, 38.020298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123543, 33.870945, 37.931984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317186, 0.031698, -0.947834,
		0.749156, 0.621208, -0.229925,
		0.581514, -0.783004, -0.220785,
		42.297997, 33.636044, 37.865749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366848, 34.247673, 37.388687>,  <41.890938, 34.184147, 38.020298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366848, 34.247673, 37.388687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267586, 33.864769, 37.448109>,  <42.208027, 33.635025, 37.483761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267586, 33.864769, 37.448109>,  <42.366848, 34.247673, 37.388687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267586, 33.864769, 37.448109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227703, -0.091412, -0.969431,
		0.941578, -0.274397, -0.195287,
		-0.248158, -0.957262, 0.148553,
		42.193138, 33.577591, 37.492676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709366, 33.713837, 36.929939>,  <42.366848, 34.247673, 37.388687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709366, 33.713837, 36.929939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340164, 33.587193, 37.017410>,  <42.118645, 33.511204, 37.069893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340164, 33.587193, 37.017410>,  <42.709366, 33.713837, 36.929939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340164, 33.587193, 37.017410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261126, 0.097961, -0.960322,
		0.282632, -0.943482, -0.173094,
		-0.923002, -0.316616, 0.218680,
		42.063263, 33.492207, 37.083015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141327, 33.188107, 36.661274>,  <42.709366, 33.713837, 36.929939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141327, 33.188107, 36.661274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115025, 32.874744, 36.414066>,  <43.099243, 32.686726, 36.265739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115025, 32.874744, 36.414066>,  <43.141327, 33.188107, 36.661274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115025, 32.874744, 36.414066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463675, 0.572422, -0.676268,
		0.883562, 0.242090, -0.400887,
		-0.065759, -0.783406, -0.618022,
		43.095299, 32.639721, 36.228661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479420, 33.296673, 36.044796>,  <43.141327, 33.188107, 36.661274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479420, 33.296673, 36.044796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178951, 33.038349, 35.990128>,  <42.998669, 32.883354, 35.957329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178951, 33.038349, 35.990128>,  <43.479420, 33.296673, 36.044796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178951, 33.038349, 35.990128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450796, 0.653111, -0.608464,
		0.482208, -0.395451, -0.781725,
		-0.751171, -0.645805, -0.136668,
		42.953602, 32.844608, 35.949127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190102, 33.563286, 35.566158>,  <43.479420, 33.296673, 36.044796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190102, 33.563286, 35.566158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531822, 33.730610, 35.442757>,  <43.736855, 33.831005, 35.368713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531822, 33.730610, 35.442757>,  <43.190102, 33.563286, 35.566158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531822, 33.730610, 35.442757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396624, 0.141033, -0.907083,
		-0.335935, 0.897287, 0.286398,
		0.854305, 0.418313, -0.308507,
		43.788113, 33.856102, 35.350204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030544, 34.135178, 35.191750>,  <43.190102, 33.563286, 35.566158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030544, 34.135178, 35.191750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374256, 33.999607, 35.038509>,  <43.580482, 33.918266, 34.946564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374256, 33.999607, 35.038509>,  <43.030544, 34.135178, 35.191750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374256, 33.999607, 35.038509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342516, 0.174996, -0.923070,
		0.379892, 0.924395, 0.034284,
		0.859282, -0.338924, -0.383100,
		43.632042, 33.897930, 34.923580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097466, 34.568760, 34.668945>,  <43.030544, 34.135178, 35.191750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097466, 34.568760, 34.668945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336052, 34.256371, 34.594856>,  <43.479202, 34.068935, 34.550404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336052, 34.256371, 34.594856>,  <43.097466, 34.568760, 34.668945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336052, 34.256371, 34.594856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317071, -0.017271, -0.948245,
		0.737357, 0.624322, -0.257926,
		0.596465, -0.780976, -0.185220,
		43.514992, 34.022079, 34.539291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554211, 34.750378, 34.201736>,  <43.097466, 34.568760, 34.668945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554211, 34.750378, 34.201736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531204, 34.351109, 34.194244>,  <43.517399, 34.111549, 34.189751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.531204, 34.351109, 34.194244>,  <43.554211, 34.750378, 34.201736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531204, 34.351109, 34.194244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390465, 0.039757, -0.919759,
		0.918820, -0.045586, -0.392036,
		-0.057514, -0.998169, -0.018730,
		43.513950, 34.051659, 34.188625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837944, 34.541130, 33.528786>,  <43.554211, 34.750378, 34.201736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837944, 34.541130, 33.528786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608795, 34.229031, 33.629204>,  <43.471306, 34.041771, 33.689453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.608795, 34.229031, 33.629204>,  <43.837944, 34.541130, 33.528786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608795, 34.229031, 33.629204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323943, -0.065815, -0.943785,
		0.752910, -0.621996, -0.215053,
		-0.572876, -0.780250, 0.251044,
		43.436932, 33.994957, 33.704517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983990, 34.161179, 32.935337>,  <43.837944, 34.541130, 33.528786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983990, 34.161179, 32.935337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677017, 33.994144, 33.129932>,  <43.492832, 33.893925, 33.246689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677017, 33.994144, 33.129932>,  <43.983990, 34.161179, 32.935337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677017, 33.994144, 33.129932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506739, -0.069772, -0.859271,
		0.392759, -0.905957, -0.158060,
		-0.767434, -0.417582, 0.486487,
		43.446789, 33.868870, 33.275879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864582, 33.551651, 32.615971>,  <43.983990, 34.161179, 32.935337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864582, 33.551651, 32.615971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519958, 33.641548, 32.798054>,  <43.313187, 33.695488, 32.907303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519958, 33.641548, 32.798054>,  <43.864582, 33.551651, 32.615971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519958, 33.641548, 32.798054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409190, 0.223292, -0.884706,
		-0.300478, -0.948488, -0.100414,
		-0.861555, 0.224746, 0.455206,
		43.261494, 33.708973, 32.934616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338966, 33.279610, 32.221832>,  <43.864582, 33.551651, 32.615971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338966, 33.279610, 32.221832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162590, 33.548771, 32.459412>,  <43.056763, 33.710266, 32.601959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162590, 33.548771, 32.459412>,  <43.338966, 33.279610, 32.221832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162590, 33.548771, 32.459412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623814, 0.246018, -0.741843,
		-0.645310, -0.697621, 0.311287,
		-0.440944, 0.672904, 0.593944,
		43.030308, 33.750641, 32.637596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621155, 33.196323, 32.055992>,  <43.338966, 33.279610, 32.221832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621155, 33.196323, 32.055992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641197, 33.557682, 32.226337>,  <42.653221, 33.774498, 32.328545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641197, 33.557682, 32.226337>,  <42.621155, 33.196323, 32.055992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641197, 33.557682, 32.226337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611069, 0.365005, -0.702400,
		-0.789990, -0.225041, 0.570326,
		0.050103, 0.903398, 0.425866,
		42.656227, 33.828701, 32.354095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970760, 33.375580, 32.347157>,  <42.621155, 33.196323, 32.055992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970760, 33.375580, 32.347157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181362, 33.707237, 32.271988>,  <42.307724, 33.906231, 32.226887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181362, 33.707237, 32.271988>,  <41.970760, 33.375580, 32.347157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181362, 33.707237, 32.271988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475457, 0.103918, -0.873580,
		-0.704794, 0.549293, 0.448935,
		0.526504, 0.829143, -0.187924,
		42.339314, 33.955978, 32.215611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400452, 33.914898, 32.319080>,  <41.970760, 33.375580, 32.347157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400452, 33.914898, 32.319080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741875, 34.021835, 32.140209>,  <41.946728, 34.085999, 32.032887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741875, 34.021835, 32.140209>,  <41.400452, 33.914898, 32.319080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741875, 34.021835, 32.140209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506772, 0.226798, -0.831712,
		-0.120936, 0.936530, 0.329068,
		0.853555, 0.267346, -0.447179,
		41.997940, 34.102039, 32.006054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206306, 34.586388, 31.984217>,  <41.400452, 33.914898, 32.319080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206306, 34.586388, 31.984217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534012, 34.448502, 31.800926>,  <41.730637, 34.365768, 31.690952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534012, 34.448502, 31.800926>,  <41.206306, 34.586388, 31.984217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534012, 34.448502, 31.800926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393605, 0.243040, -0.886570,
		0.416985, 0.906698, 0.063431,
		0.819267, -0.344719, -0.458224,
		41.779793, 34.345085, 31.663460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440994, 35.112526, 31.406734>,  <41.206306, 34.586388, 31.984217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440994, 35.112526, 31.406734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610516, 34.763268, 31.310396>,  <41.712227, 34.553711, 31.252592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610516, 34.763268, 31.310396>,  <41.440994, 35.112526, 31.406734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610516, 34.763268, 31.310396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222825, 0.157229, -0.962095,
		0.877918, 0.461407, -0.127925,
		0.423804, -0.873146, -0.240847,
		41.737656, 34.501324, 31.238142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808842, 35.261208, 30.762213>,  <41.440994, 35.112526, 31.406734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808842, 35.261208, 30.762213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745083, 34.867500, 30.792719>,  <41.706825, 34.631275, 30.811022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745083, 34.867500, 30.792719>,  <41.808842, 35.261208, 30.762213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745083, 34.867500, 30.792719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370558, -0.011951, -0.928732,
		0.915029, -0.176301, -0.362822,
		-0.159401, -0.984264, 0.076265,
		41.697262, 34.572220, 30.815598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240055, 34.904243, 30.262154>,  <41.808842, 35.261208, 30.762213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240055, 34.904243, 30.262154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930431, 34.663471, 30.340651>,  <41.744656, 34.519009, 30.387749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930431, 34.663471, 30.340651>,  <42.240055, 34.904243, 30.262154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930431, 34.663471, 30.340651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266705, 0.028906, -0.963345,
		0.574192, -0.798027, -0.182912,
		-0.774062, -0.601929, 0.196240,
		41.698212, 34.482891, 30.399523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249454, 34.502983, 29.724989>,  <42.240055, 34.904243, 30.262154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249454, 34.502983, 29.724989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882053, 34.483906, 29.882000>,  <41.661613, 34.472458, 29.976206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882053, 34.483906, 29.882000>,  <42.249454, 34.502983, 29.724989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882053, 34.483906, 29.882000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390735, -0.042808, -0.919507,
		0.060665, -0.997944, 0.020681,
		-0.918502, -0.047702, 0.392528,
		41.606503, 34.469597, 29.999758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865967, 34.124607, 29.259811>,  <42.249454, 34.502983, 29.724989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865967, 34.124607, 29.259811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587299, 34.310028, 29.478815>,  <41.420097, 34.421280, 29.610216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587299, 34.310028, 29.478815>,  <41.865967, 34.124607, 29.259811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587299, 34.310028, 29.478815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510124, 0.216502, -0.832407,
		-0.504404, -0.859210, 0.085641,
		-0.696671, 0.463557, 0.547508,
		41.378300, 34.449097, 29.643068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195095, 33.956879, 28.971991>,  <41.865967, 34.124607, 29.259811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195095, 33.956879, 28.971991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084930, 34.281391, 29.178282>,  <41.018833, 34.476097, 29.302057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084930, 34.281391, 29.178282>,  <41.195095, 33.956879, 28.971991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084930, 34.281391, 29.178282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631049, 0.252136, -0.733624,
		-0.725208, -0.527498, 0.442516,
		-0.275411, 0.811279, 0.515728,
		41.002308, 34.524776, 29.333000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434887, 34.062984, 28.965628>,  <41.195095, 33.956879, 28.971991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434887, 34.062984, 28.965628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560646, 34.418087, 29.100119>,  <40.636101, 34.631149, 29.180813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560646, 34.418087, 29.100119>,  <40.434887, 34.062984, 28.965628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560646, 34.418087, 29.100119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683111, 0.457521, -0.569240,
		-0.659174, -0.050709, 0.750279,
		0.314402, 0.887752, 0.336226,
		40.654968, 34.684414, 29.200987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897587, 34.403763, 28.879196>,  <40.434887, 34.062984, 28.965628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897587, 34.403763, 28.879196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161427, 34.696373, 28.948238>,  <40.319733, 34.871941, 28.989664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161427, 34.696373, 28.948238>,  <39.897587, 34.403763, 28.879196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161427, 34.696373, 28.948238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583495, 0.643134, -0.495895,
		-0.473769, 0.226380, 0.851055,
		0.659603, 0.731527, 0.172605,
		40.359306, 34.915833, 29.000019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498398, 34.969540, 29.161205>,  <39.897587, 34.403763, 28.879196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498398, 34.969540, 29.161205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834679, 35.083817, 28.977205>,  <40.036446, 35.152382, 28.866804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834679, 35.083817, 28.977205>,  <39.498398, 34.969540, 29.161205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834679, 35.083817, 28.977205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536761, 0.551816, -0.638268,
		0.071487, 0.783504, 0.617261,
		0.840700, 0.285694, -0.460002,
		40.086887, 35.169525, 28.839205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449951, 35.604218, 29.026937>,  <39.498398, 34.969540, 29.161205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449951, 35.604218, 29.026937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711597, 35.464493, 28.758575>,  <39.868584, 35.380657, 28.597557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711597, 35.464493, 28.758575>,  <39.449951, 35.604218, 29.026937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711597, 35.464493, 28.758575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507021, 0.455721, -0.731606,
		0.561304, 0.818719, 0.120987,
		0.654116, -0.349311, -0.670906,
		39.907833, 35.359699, 28.557304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655640, 36.149380, 28.546227>,  <39.449951, 35.604218, 29.026937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655640, 36.149380, 28.546227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680820, 35.828384, 28.308893>,  <39.695927, 35.635788, 28.166492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680820, 35.828384, 28.308893>,  <39.655640, 36.149380, 28.546227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680820, 35.828384, 28.308893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303900, 0.550868, -0.777296,
		0.950622, 0.229243, -0.209201,
		0.062948, -0.802491, -0.593334,
		39.699703, 35.587639, 28.130894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087662, 36.295418, 27.889729>,  <39.655640, 36.149380, 28.546227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087662, 36.295418, 27.889729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814098, 36.015671, 27.806639>,  <39.649960, 35.847820, 27.756784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814098, 36.015671, 27.806639>,  <40.087662, 36.295418, 27.889729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814098, 36.015671, 27.806639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251697, 0.493423, -0.832575,
		0.684775, -0.517122, -0.513486,
		-0.683909, -0.699370, -0.207726,
		39.608925, 35.805859, 27.744322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031593, 36.569813, 27.283504>,  <40.087662, 36.295418, 27.889729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031593, 36.569813, 27.283504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733154, 36.324074, 27.386208>,  <39.554092, 36.176632, 27.447830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733154, 36.324074, 27.386208>,  <40.031593, 36.569813, 27.283504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733154, 36.324074, 27.386208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665432, 0.674447, -0.319877,
		0.023345, -0.409513, -0.912006,
		-0.746093, -0.614345, 0.256758,
		39.509327, 36.139771, 27.463236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589474, 36.627029, 26.783501>,  <40.031593, 36.569813, 27.283504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589474, 36.627029, 26.783501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661469, 36.301193, 26.562937>,  <40.704666, 36.105694, 26.430597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661469, 36.301193, 26.562937>,  <40.589474, 36.627029, 26.783501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661469, 36.301193, 26.562937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641991, -0.327442, 0.693274,
		-0.745287, -0.478781, 0.464022,
		0.179987, -0.814586, -0.551411,
		40.715466, 36.056816, 26.397512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399857, 35.910812, 26.992287>,  <40.589474, 36.627029, 26.783501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399857, 35.910812, 26.992287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731918, 35.906628, 26.769310>,  <40.931156, 35.904118, 26.635525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731918, 35.906628, 26.769310>,  <40.399857, 35.910812, 26.992287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731918, 35.906628, 26.769310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521612, -0.338525, 0.783149,
		-0.196900, -0.940899, -0.275570,
		0.830151, -0.010462, -0.557440,
		40.980965, 35.903488, 26.602077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056660, 35.871502, 27.185059>,  <40.399857, 35.910812, 26.992287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056660, 35.871502, 27.185059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954151, 35.485184, 27.200928>,  <40.892647, 35.253395, 27.210449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954151, 35.485184, 27.200928>,  <41.056660, 35.871502, 27.185059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954151, 35.485184, 27.200928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786539, -0.232208, -0.572220,
		0.561857, -0.115438, 0.819140,
		-0.256267, -0.965792, 0.039671,
		40.877270, 35.195446, 27.212830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834469, 35.758003, 27.127195>,  <41.056660, 35.871502, 27.185059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834469, 35.758003, 27.127195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725647, 36.057346, 26.885220>,  <41.660355, 36.236950, 26.740034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725647, 36.057346, 26.885220>,  <41.834469, 35.758003, 27.127195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725647, 36.057346, 26.885220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486890, 0.649293, 0.584257,
		0.830014, -0.135588, -0.541011,
		-0.272056, 0.748355, -0.604939,
		41.644032, 36.281853, 26.703737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377010, 36.166832, 26.830359>,  <41.834469, 35.758003, 27.127195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377010, 36.166832, 26.830359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033897, 36.360268, 26.900049>,  <41.828030, 36.476330, 26.941864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033897, 36.360268, 26.900049>,  <42.377010, 36.166832, 26.830359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033897, 36.360268, 26.900049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446395, 0.532798, 0.718928,
		0.254835, 0.694458, -0.672894,
		-0.857782, 0.483585, 0.174227,
		41.776562, 36.505344, 26.952318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118782, 36.268337, 26.870403>,  <42.377010, 36.166832, 26.830359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118782, 36.268337, 26.870403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125084, 36.519650, 26.559273>,  <43.128864, 36.670437, 26.372595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125084, 36.519650, 26.559273>,  <43.118782, 36.268337, 26.870403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125084, 36.519650, 26.559273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996117, -0.077247, -0.042225,
		-0.086614, -0.774142, -0.627058,
		0.015750, 0.628281, -0.777827,
		43.129810, 36.708134, 26.325924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790043, 36.619297, 26.563665>,  <43.118782, 36.268337, 26.870403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790043, 36.619297, 26.563665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562786, 36.769356, 26.856646>,  <43.426434, 36.859390, 27.032434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562786, 36.769356, 26.856646>,  <43.790043, 36.619297, 26.563665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562786, 36.769356, 26.856646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571500, -0.460551, 0.679176,
		0.592121, 0.804462, 0.047262,
		-0.568138, 0.375144, 0.732452,
		43.392345, 36.881901, 27.076382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258484, 36.642868, 26.961651>,  <43.790043, 36.619297, 26.563665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258484, 36.642868, 26.961651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920662, 36.616951, 27.174267>,  <43.717968, 36.601398, 27.301836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920662, 36.616951, 27.174267>,  <44.258484, 36.642868, 26.961651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920662, 36.616951, 27.174267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528201, -0.263844, 0.807087,
		0.087948, 0.962386, 0.257056,
		-0.844553, -0.064796, 0.531538,
		43.667297, 36.597511, 27.333729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368263, 36.892479, 27.621679>,  <44.258484, 36.642868, 26.961651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368263, 36.892479, 27.621679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031258, 36.690811, 27.697565>,  <43.829056, 36.569813, 27.743097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031258, 36.690811, 27.697565>,  <44.368263, 36.892479, 27.621679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031258, 36.690811, 27.697565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441140, -0.443632, 0.780119,
		-0.309144, 0.740951, 0.596173,
		-0.842511, -0.504165, 0.189717,
		43.778503, 36.539562, 27.754480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137753, 36.923546, 28.409986>,  <44.368263, 36.892479, 27.621679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137753, 36.923546, 28.409986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976414, 36.597374, 28.243910>,  <43.879612, 36.401672, 28.144264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976414, 36.597374, 28.243910>,  <44.137753, 36.923546, 28.409986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976414, 36.597374, 28.243910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188932, -0.518177, 0.834145,
		-0.895330, 0.258005, 0.363066,
		-0.403346, -0.815430, -0.415194,
		43.855412, 36.352745, 28.119352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779526, 36.630737, 29.011030>,  <44.137753, 36.923546, 28.409986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779526, 36.630737, 29.011030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834019, 36.363518, 28.718412>,  <43.866714, 36.203186, 28.542843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834019, 36.363518, 28.718412>,  <43.779526, 36.630737, 29.011030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834019, 36.363518, 28.718412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518325, -0.581231, 0.627304,
		-0.844264, -0.464634, 0.267085,
		0.136229, -0.668047, -0.731543,
		43.874886, 36.163105, 28.498949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483402, 36.058231, 29.305666>,  <43.779526, 36.630737, 29.011030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483402, 36.058231, 29.305666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736092, 35.909081, 29.033815>,  <43.887703, 35.819592, 28.870705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736092, 35.909081, 29.033815>,  <43.483402, 36.058231, 29.305666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736092, 35.909081, 29.033815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310967, -0.681190, 0.662781,
		-0.710093, -0.630033, -0.314367,
		0.631718, -0.372878, -0.679628,
		43.925606, 35.797218, 28.829927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454865, 35.355495, 29.432144>,  <43.483402, 36.058231, 29.305666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454865, 35.355495, 29.432144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770790, 35.379345, 29.187967>,  <43.960346, 35.393654, 29.041462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770790, 35.379345, 29.187967>,  <43.454865, 35.355495, 29.432144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770790, 35.379345, 29.187967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344216, -0.866840, 0.360700,
		-0.507651, -0.495009, -0.705164,
		0.789814, 0.059619, -0.610442,
		44.007736, 35.397232, 29.004835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653824, 34.753441, 29.243582>,  <43.454865, 35.355495, 29.432144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653824, 34.753441, 29.243582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996151, 34.946121, 29.168161>,  <44.201546, 35.061729, 29.122910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996151, 34.946121, 29.168161>,  <43.653824, 34.753441, 29.243582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996151, 34.946121, 29.168161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491060, -0.641945, 0.588869,
		0.162617, -0.596552, -0.785927,
		0.855813, 0.481697, -0.188552,
		44.252895, 35.090630, 29.111595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142345, 34.287212, 29.157635>,  <43.653824, 34.753441, 29.243582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142345, 34.287212, 29.157635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343185, 34.618721, 29.256453>,  <44.463688, 34.817627, 29.315742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343185, 34.618721, 29.256453>,  <44.142345, 34.287212, 29.157635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343185, 34.618721, 29.256453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417125, -0.482325, 0.770305,
		0.757563, -0.283723, -0.587877,
		0.502101, 0.828773, 0.247043,
		44.493816, 34.867352, 29.330566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.843121, 34.104744, 29.322758>,  <44.142345, 34.287212, 29.157635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.843121, 34.104744, 29.322758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811707, 34.449760, 29.522696>,  <44.792858, 34.656773, 29.642658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811707, 34.449760, 29.522696>,  <44.843121, 34.104744, 29.322758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811707, 34.449760, 29.522696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693924, -0.312688, 0.648610,
		0.715752, 0.397795, -0.573984,
		-0.078536, 0.862546, 0.499847,
		44.788147, 34.708523, 29.672649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512714, 34.324184, 29.619839>,  <44.843121, 34.104744, 29.322758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512714, 34.324184, 29.619839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241028, 34.505230, 29.850941>,  <45.078014, 34.613857, 29.989603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241028, 34.505230, 29.850941>,  <45.512714, 34.324184, 29.619839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241028, 34.505230, 29.850941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439934, -0.379028, 0.814122,
		0.587472, 0.807141, 0.058321,
		-0.679217, 0.452616, 0.577757,
		45.037262, 34.641014, 30.024267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881390, 34.625244, 30.024506>,  <45.512714, 34.324184, 29.619839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881390, 34.625244, 30.024506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543941, 34.633095, 30.239140>,  <45.341473, 34.637806, 30.367920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543941, 34.633095, 30.239140>,  <45.881390, 34.625244, 30.024506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543941, 34.633095, 30.239140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523354, -0.193356, 0.829888,
		0.120042, 0.980932, 0.152845,
		-0.843618, 0.019629, 0.536586,
		45.290855, 34.638985, 30.400116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024616, 34.896557, 30.797461>,  <45.881390, 34.625244, 30.024506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.024616, 34.896557, 30.797461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647945, 34.763828, 30.819838>,  <45.421944, 34.684189, 30.833263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647945, 34.763828, 30.819838>,  <46.024616, 34.896557, 30.797461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647945, 34.763828, 30.819838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112494, -0.153745, 0.981686,
		-0.317145, 0.930729, 0.182107,
		-0.941681, -0.331823, 0.055942,
		45.365440, 34.664280, 30.836620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658920, 35.286667, 31.347881>,  <46.024616, 34.896557, 30.797461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658920, 35.286667, 31.347881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460991, 34.944664, 31.285772>,  <45.342232, 34.739464, 31.248507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460991, 34.944664, 31.285772>,  <45.658920, 35.286667, 31.347881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460991, 34.944664, 31.285772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142886, -0.256303, 0.955977,
		-0.857165, 0.450854, 0.248994,
		-0.494824, -0.855008, -0.155273,
		45.312542, 34.688160, 31.239191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244606, 35.145008, 31.975700>,  <45.658920, 35.286667, 31.347881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244606, 35.145008, 31.975700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299496, 34.794094, 31.791723>,  <45.332428, 34.583546, 31.681337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299496, 34.794094, 31.791723>,  <45.244606, 35.145008, 31.975700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299496, 34.794094, 31.791723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031405, -0.460249, 0.887234,
		-0.990042, -0.136193, -0.035605,
		0.137222, -0.877281, -0.459943,
		45.340664, 34.530910, 31.653740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865589, 34.680355, 32.374771>,  <45.244606, 35.145008, 31.975700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865589, 34.680355, 32.374771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083019, 34.414143, 32.170185>,  <45.213478, 34.254417, 32.047436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083019, 34.414143, 32.170185>,  <44.865589, 34.680355, 32.374771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083019, 34.414143, 32.170185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127454, -0.536835, 0.834005,
		-0.829624, -0.518536, -0.206989,
		0.543580, -0.665530, -0.511460,
		45.246094, 34.214485, 32.016747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607582, 33.989063, 32.559769>,  <44.865589, 34.680355, 32.374771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607582, 33.989063, 32.559769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978691, 33.928452, 32.423370>,  <45.201355, 33.892086, 32.341530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978691, 33.928452, 32.423370>,  <44.607582, 33.989063, 32.559769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978691, 33.928452, 32.423370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219488, -0.517418, 0.827105,
		-0.301767, -0.842210, -0.446788,
		0.927772, -0.151528, -0.340995,
		45.257023, 33.882992, 32.321072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759079, 33.375648, 32.867840>,  <44.607582, 33.989063, 32.559769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759079, 33.375648, 32.867840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110065, 33.521141, 32.742775>,  <45.320656, 33.608437, 32.667736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110065, 33.521141, 32.742775>,  <44.759079, 33.375648, 32.867840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110065, 33.521141, 32.742775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428402, -0.301184, 0.851916,
		0.215697, -0.881471, -0.420100,
		0.877466, 0.363727, -0.312659,
		45.373306, 33.630260, 32.648979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258095, 32.819798, 32.938278>,  <44.759079, 33.375648, 32.867840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258095, 32.819798, 32.938278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462177, 33.163620, 32.950024>,  <45.584625, 33.369911, 32.957069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462177, 33.163620, 32.950024>,  <45.258095, 32.819798, 32.938278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462177, 33.163620, 32.950024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334495, -0.229770, 0.913958,
		0.792341, -0.456483, -0.404745,
		0.510205, 0.859552, 0.029365,
		45.615238, 33.421486, 32.958832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886600, 32.651100, 33.261414>,  <45.258095, 32.819798, 32.938278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886600, 32.651100, 33.261414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920036, 33.047649, 33.301788>,  <45.940098, 33.285580, 33.326015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920036, 33.047649, 33.301788>,  <45.886600, 32.651100, 33.261414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920036, 33.047649, 33.301788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232745, -0.117914, 0.965363,
		0.968939, -0.057198, -0.240594,
		0.083586, 0.991375, 0.100939,
		45.945114, 33.345062, 33.332069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556789, 32.801083, 33.581455>,  <45.886600, 32.651100, 33.261414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556789, 32.801083, 33.581455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314728, 33.109879, 33.659245>,  <46.169491, 33.295158, 33.705917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314728, 33.109879, 33.659245>,  <46.556789, 32.801083, 33.581455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314728, 33.109879, 33.659245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299484, -0.005588, 0.954085,
		0.737633, 0.635608, -0.227818,
		-0.605151, 0.771992, 0.194476,
		46.133183, 33.341476, 33.717587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.943192, 33.239578, 33.947514>,  <46.556789, 32.801083, 33.581455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.943192, 33.239578, 33.947514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566502, 33.347210, 34.028255>,  <46.340488, 33.411789, 34.076702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566502, 33.347210, 34.028255>,  <46.943192, 33.239578, 33.947514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566502, 33.347210, 34.028255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240985, 0.121031, 0.962953,
		0.234684, 0.955482, -0.178823,
		-0.941727, 0.269083, 0.201853,
		46.283985, 33.427937, 34.088810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.654144, 33.583309, 34.521378>,  <46.943192, 33.239578, 33.947514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.654144, 33.583309, 34.521378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.884094, 33.573051, 34.848515>,  <47.022064, 33.566895, 35.044796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.884094, 33.573051, 34.848515>,  <46.654144, 33.583309, 34.521378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.884094, 33.573051, 34.848515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348422, 0.912038, -0.216309,
		-0.740353, 0.409303, 0.533243,
		0.574874, -0.025649, 0.817840,
		47.056557, 33.565357, 35.093868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.568043, 34.223026, 34.934456>,  <46.654144, 33.583309, 34.521378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.568043, 34.223026, 34.934456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942314, 34.092564, 34.988316>,  <47.166878, 34.014286, 35.020634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942314, 34.092564, 34.988316>,  <46.568043, 34.223026, 34.934456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942314, 34.092564, 34.988316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350701, 0.901717, -0.252814,
		-0.038961, 0.283775, 0.958099,
		0.935677, -0.326157, 0.134652,
		47.223019, 33.994717, 35.028709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.885361, 34.838615, 35.169815>,  <46.568043, 34.223026, 34.934456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.885361, 34.838615, 35.169815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.182209, 34.630932, 35.000263>,  <47.360317, 34.506321, 34.898533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.182209, 34.630932, 35.000263>,  <46.885361, 34.838615, 35.169815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.182209, 34.630932, 35.000263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401309, 0.850721, -0.339449,
		0.536848, 0.081806, 0.839703,
		0.742122, -0.519213, -0.423878,
		47.404846, 34.475166, 34.873100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.636948, 35.029797, 35.385475>,  <46.885361, 34.838615, 35.169815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.636948, 35.029797, 35.385475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650429, 34.903057, 35.006325>,  <47.658516, 34.827011, 34.778835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650429, 34.903057, 35.006325>,  <47.636948, 35.029797, 35.385475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.650429, 34.903057, 35.006325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497196, 0.828043, -0.259115,
		0.866984, -0.462547, 0.185444,
		0.033702, -0.316850, -0.947876,
		47.660538, 34.808002, 34.721962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.912815, 33.865349, 47.394081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.560223, 33.730362, 47.261951>,  <36.348667, 33.649372, 47.182674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.560223, 33.730362, 47.261951>,  <36.912815, 33.865349, 47.394081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560223, 33.730362, 47.261951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147455, 0.467832, -0.871430,
		0.448609, -0.816856, -0.362624,
		-0.881480, -0.337461, -0.330323,
		36.295780, 33.629124, 47.162853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062569, 33.769604, 46.698715>,  <36.912815, 33.865349, 47.394081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062569, 33.769604, 46.698715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663013, 33.751308, 46.703255>,  <36.423279, 33.740334, 46.705978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663013, 33.751308, 46.703255>,  <37.062569, 33.769604, 46.698715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663013, 33.751308, 46.703255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032062, 0.483079, -0.874990,
		0.034535, -0.874381, -0.484009,
		-0.998889, -0.045736, 0.011351,
		36.363346, 33.737587, 46.706661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830791, 33.483692, 46.106514>,  <37.062569, 33.769604, 46.698715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830791, 33.483692, 46.106514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497677, 33.674660, 46.218609>,  <36.297806, 33.789238, 46.285866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497677, 33.674660, 46.218609>,  <36.830791, 33.483692, 46.106514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497677, 33.674660, 46.218609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013386, 0.488708, -0.872345,
		-0.553427, -0.730231, -0.400601,
		-0.832790, 0.477416, 0.280239,
		36.247841, 33.817886, 46.302681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258137, 33.320911, 45.587196>,  <36.830791, 33.483692, 46.106514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258137, 33.320911, 45.587196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108963, 33.648552, 45.761547>,  <36.019459, 33.845139, 45.866158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108963, 33.648552, 45.761547>,  <36.258137, 33.320911, 45.587196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108963, 33.648552, 45.761547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104940, 0.429521, -0.896939,
		-0.921905, -0.380239, -0.074226,
		-0.372933, 0.819103, 0.435880,
		35.997082, 33.894283, 45.892311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771873, 33.540318, 45.102356>,  <36.258137, 33.320911, 45.587196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771873, 33.540318, 45.102356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861752, 33.852867, 45.335239>,  <35.915680, 34.040398, 45.474972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861752, 33.852867, 45.335239>,  <35.771873, 33.540318, 45.102356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861752, 33.852867, 45.335239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059433, 0.607369, -0.792194,
		-0.972614, 0.143401, 0.182914,
		0.224698, 0.781370, 0.582213,
		35.929161, 34.087276, 45.509903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177383, 34.031780, 44.950832>,  <35.771873, 33.540318, 45.102356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177383, 34.031780, 44.950832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.488239, 34.222839, 45.114735>,  <35.674755, 34.337475, 45.213078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.488239, 34.222839, 45.114735>,  <35.177383, 34.031780, 44.950832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488239, 34.222839, 45.114735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184146, 0.450019, -0.873827,
		-0.601780, 0.754544, 0.261773,
		0.777143, 0.477647, 0.409759,
		35.721382, 34.366135, 45.237663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112686, 34.726536, 44.741245>,  <35.177383, 34.031780, 44.950832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112686, 34.726536, 44.741245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.495987, 34.660820, 44.834854>,  <35.725967, 34.621391, 44.891018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.495987, 34.660820, 44.834854>,  <35.112686, 34.726536, 44.741245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495987, 34.660820, 44.834854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281925, 0.406324, -0.869148,
		0.047703, 0.898838, 0.435677,
		0.958250, -0.164289, 0.234022,
		35.783463, 34.611534, 44.905060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442848, 35.405594, 44.584503>,  <35.112686, 34.726536, 44.741245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442848, 35.405594, 44.584503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742397, 35.140511, 44.583927>,  <35.922127, 34.981461, 44.583580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742397, 35.140511, 44.583927>,  <35.442848, 35.405594, 44.584503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742397, 35.140511, 44.583927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335253, 0.380722, -0.861775,
		0.571655, 0.644879, 0.507289,
		0.748876, -0.662708, -0.001444,
		35.967060, 34.941696, 44.583492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063515, 35.829689, 44.280857>,  <35.442848, 35.405594, 44.584503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063515, 35.829689, 44.280857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.162888, 35.442852, 44.258884>,  <36.222511, 35.210751, 44.245701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.162888, 35.442852, 44.258884>,  <36.063515, 35.829689, 44.280857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162888, 35.442852, 44.258884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358382, 0.144452, -0.922332,
		0.899913, 0.209451, 0.382474,
		0.248432, -0.967091, -0.054931,
		36.237415, 35.152725, 44.242405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744709, 35.742405, 43.947678>,  <36.063515, 35.829689, 44.280857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744709, 35.742405, 43.947678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552177, 35.396645, 43.889526>,  <36.436661, 35.189190, 43.854633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552177, 35.396645, 43.889526>,  <36.744709, 35.742405, 43.947678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552177, 35.396645, 43.889526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292860, -0.002262, -0.956153,
		0.826171, -0.502797, 0.254238,
		-0.481326, -0.864402, -0.145380,
		36.407780, 35.137325, 43.845913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251007, 35.114185, 43.697819>,  <36.744709, 35.742405, 43.947678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251007, 35.114185, 43.697819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882214, 35.017773, 43.576595>,  <36.660938, 34.959927, 43.503860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882214, 35.017773, 43.576595>,  <37.251007, 35.114185, 43.697819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882214, 35.017773, 43.576595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331232, -0.085524, -0.939665,
		0.200568, -0.966742, 0.158688,
		-0.921986, -0.241029, -0.303063,
		36.605618, 34.945465, 43.485676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335922, 34.547653, 43.276157>,  <37.251007, 35.114185, 43.697819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335922, 34.547653, 43.276157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975567, 34.669483, 43.152462>,  <36.759354, 34.742580, 43.078243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975567, 34.669483, 43.152462>,  <37.335922, 34.547653, 43.276157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975567, 34.669483, 43.152462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326756, 0.006951, -0.945083,
		-0.285698, -0.952463, -0.105784,
		-0.900892, 0.304574, -0.309238,
		36.705299, 34.760857, 43.059692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157864, 34.048119, 42.668137>,  <37.335922, 34.547653, 43.276157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157864, 34.048119, 42.668137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898186, 34.348625, 42.620564>,  <36.742378, 34.528927, 42.592018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898186, 34.348625, 42.620564>,  <37.157864, 34.048119, 42.668137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898186, 34.348625, 42.620564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286043, 0.096247, -0.953371,
		-0.704785, -0.652948, -0.277377,
		-0.649198, 0.751263, -0.118937,
		36.703426, 34.574005, 42.584881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620129, 33.935459, 42.072281>,  <37.157864, 34.048119, 42.668137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620129, 33.935459, 42.072281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673122, 34.326664, 42.136711>,  <36.704918, 34.561386, 42.175369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673122, 34.326664, 42.136711>,  <36.620129, 33.935459, 42.072281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673122, 34.326664, 42.136711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202388, 0.132389, -0.970316,
		-0.970302, 0.161152, -0.180398,
		0.132486, 0.978010, 0.161073,
		36.712868, 34.620068, 42.185032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606522, 34.229271, 41.444698>,  <36.620129, 33.935459, 42.072281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606522, 34.229271, 41.444698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702168, 34.562531, 41.644173>,  <36.759556, 34.762486, 41.763859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702168, 34.562531, 41.644173>,  <36.606522, 34.229271, 41.444698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702168, 34.562531, 41.644173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159777, 0.472821, -0.866551,
		-0.957754, 0.286887, -0.020057,
		0.239119, 0.833148, 0.498685,
		36.773903, 34.812473, 41.793777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178478, 34.774841, 41.278740>,  <36.606522, 34.229271, 41.444698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178478, 34.774841, 41.278740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.528217, 34.917393, 41.410496>,  <36.738060, 35.002926, 41.489552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.528217, 34.917393, 41.410496>,  <36.178478, 34.774841, 41.278740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528217, 34.917393, 41.410496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112784, 0.510944, -0.852183,
		-0.472005, 0.782258, 0.406551,
		0.874352, 0.356383, 0.329394,
		36.790524, 35.024307, 41.509315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289322, 35.285633, 40.745216>,  <36.178478, 34.774841, 41.278740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289322, 35.285633, 40.745216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632156, 35.342770, 40.943207>,  <36.837856, 35.377052, 41.062000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632156, 35.342770, 40.943207>,  <36.289322, 35.285633, 40.745216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632156, 35.342770, 40.943207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308705, 0.626786, -0.715431,
		-0.412436, 0.765987, 0.493113,
		0.857086, 0.142843, 0.494973,
		36.889282, 35.385624, 41.091698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331215, 35.992496, 40.753120>,  <36.289322, 35.285633, 40.745216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331215, 35.992496, 40.753120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699913, 35.843746, 40.797119>,  <36.921131, 35.754498, 40.823517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699913, 35.843746, 40.797119>,  <36.331215, 35.992496, 40.753120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699913, 35.843746, 40.797119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367026, 0.744939, -0.557096,
		0.125230, 0.553871, 0.823131,
		0.921742, -0.371876, 0.109997,
		36.976437, 35.732182, 40.830120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756077, 36.456181, 40.892029>,  <36.331215, 35.992496, 40.753120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756077, 36.456181, 40.892029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016270, 36.194042, 40.738461>,  <37.172386, 36.036758, 40.646320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016270, 36.194042, 40.738461>,  <36.756077, 36.456181, 40.892029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016270, 36.194042, 40.738461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203941, 0.637619, -0.742866,
		0.731628, 0.404926, 0.548413,
		0.650484, -0.655345, -0.383919,
		37.211414, 35.997440, 40.623283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301483, 36.849628, 40.760971>,  <36.756077, 36.456181, 40.892029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301483, 36.849628, 40.760971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366554, 36.528522, 40.531502>,  <37.405598, 36.335857, 40.393822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366554, 36.528522, 40.531502>,  <37.301483, 36.849628, 40.760971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366554, 36.528522, 40.531502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281847, 0.595000, -0.752687,
		0.945568, -0.039243, 0.323050,
		0.162677, -0.802767, -0.573674,
		37.415356, 36.287693, 40.359398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001301, 36.880348, 40.431385>,  <37.301483, 36.849628, 40.760971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001301, 36.880348, 40.431385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798851, 36.621456, 40.203377>,  <37.677380, 36.466122, 40.066570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798851, 36.621456, 40.203377>,  <38.001301, 36.880348, 40.431385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798851, 36.621456, 40.203377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302950, 0.485396, -0.820129,
		0.807503, -0.587775, -0.049591,
		-0.506123, -0.647233, -0.570025,
		37.647015, 36.427284, 40.032368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436050, 36.676498, 39.954422>,  <38.001301, 36.880348, 40.431385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436050, 36.676498, 39.954422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077049, 36.626339, 39.785297>,  <37.861649, 36.596245, 39.683823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077049, 36.626339, 39.785297>,  <38.436050, 36.676498, 39.954422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077049, 36.626339, 39.785297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245332, 0.654719, -0.714951,
		0.366474, -0.745398, -0.556847,
		-0.897501, -0.125399, -0.422807,
		37.807800, 36.588718, 39.658455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994568, 36.557987, 40.376282>,  <38.436050, 36.676498, 39.954422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994568, 36.557987, 40.376282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.303379, 36.808945, 40.335598>,  <39.488667, 36.959518, 40.311188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.303379, 36.808945, 40.335598>,  <38.994568, 36.557987, 40.376282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303379, 36.808945, 40.335598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196866, -0.083895, 0.976834,
		0.604327, -0.774170, -0.188282,
		0.772032, 0.627394, -0.101708,
		39.534988, 36.997162, 40.305084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635647, 36.188385, 40.625538>,  <38.994568, 36.557987, 40.376282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635647, 36.188385, 40.625538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.677113, 36.585915, 40.641418>,  <39.701992, 36.824432, 40.650948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.677113, 36.585915, 40.641418>,  <39.635647, 36.188385, 40.625538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677113, 36.585915, 40.641418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115450, -0.051673, 0.991968,
		0.987889, -0.098245, -0.120093,
		0.103662, 0.993820, 0.039705,
		39.708210, 36.884060, 40.653332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131126, 36.250492, 41.101288>,  <39.635647, 36.188385, 40.625538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131126, 36.250492, 41.101288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.972176, 36.617550, 41.103271>,  <39.876804, 36.837784, 41.104462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.972176, 36.617550, 41.103271>,  <40.131126, 36.250492, 41.101288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972176, 36.617550, 41.103271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176172, 0.070980, 0.981797,
		0.900585, 0.391020, -0.189869,
		-0.397379, 0.917641, 0.004963,
		39.852962, 36.892841, 41.104759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650173, 36.730423, 41.353199>,  <40.131126, 36.250492, 41.101288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650173, 36.730423, 41.353199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.312847, 36.914604, 41.464050>,  <40.110451, 37.025112, 41.530563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.312847, 36.914604, 41.464050>,  <40.650173, 36.730423, 41.353199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312847, 36.914604, 41.464050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339422, 0.056536, 0.938934,
		0.416663, 0.885884, -0.203965,
		-0.843317, 0.460449, 0.277132,
		40.059853, 37.052738, 41.547192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851936, 37.328144, 41.772430>,  <40.650173, 36.730423, 41.353199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851936, 37.328144, 41.772430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.474777, 37.229389, 41.861862>,  <40.248482, 37.170135, 41.915520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.474777, 37.229389, 41.861862>,  <40.851936, 37.328144, 41.772430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474777, 37.229389, 41.861862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258000, -0.116822, 0.959056,
		-0.210664, 0.961976, 0.173849,
		-0.942898, -0.246892, 0.223580,
		40.191906, 37.155323, 41.928936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913452, 37.410995, 42.547634>,  <40.851936, 37.328144, 41.772430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913452, 37.410995, 42.547634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550549, 37.259407, 42.474678>,  <40.332806, 37.168453, 42.430904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550549, 37.259407, 42.474678>,  <40.913452, 37.410995, 42.547634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550549, 37.259407, 42.474678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154278, -0.103556, 0.982586,
		-0.391258, 0.919597, 0.035485,
		-0.907257, -0.378969, -0.182391,
		40.278370, 37.145718, 42.419960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436756, 37.728062, 42.999908>,  <40.913452, 37.410995, 42.547634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436756, 37.728062, 42.999908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.308865, 37.365582, 42.889221>,  <40.232128, 37.148094, 42.822811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.308865, 37.365582, 42.889221>,  <40.436756, 37.728062, 42.999908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308865, 37.365582, 42.889221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089442, -0.261875, 0.960948,
		-0.943277, 0.331996, 0.002677,
		-0.319732, -0.906201, -0.276715,
		40.212944, 37.093719, 42.806206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270374, 37.430992, 43.659271>,  <40.436756, 37.728062, 42.999908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270374, 37.430992, 43.659271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167500, 37.138451, 43.406612>,  <40.105774, 36.962925, 43.255016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167500, 37.138451, 43.406612>,  <40.270374, 37.430992, 43.659271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167500, 37.138451, 43.406612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219992, -0.592162, 0.775208,
		-0.940988, 0.338330, -0.008596,
		-0.257186, -0.731352, -0.631648,
		40.090343, 36.919044, 43.217117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511864, 37.226768, 43.710609>,  <40.270374, 37.430992, 43.659271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511864, 37.226768, 43.710609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763714, 36.940670, 43.589283>,  <39.914825, 36.769012, 43.516487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763714, 36.940670, 43.589283>,  <39.511864, 37.226768, 43.710609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763714, 36.940670, 43.589283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318737, -0.593861, 0.738740,
		-0.708506, -0.368450, -0.601883,
		0.629623, -0.715244, -0.303316,
		39.952602, 36.726097, 43.498287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076111, 36.578480, 43.556072>,  <39.511864, 37.226768, 43.710609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076111, 36.578480, 43.556072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.445152, 36.438557, 43.621120>,  <39.666576, 36.354603, 43.660149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.445152, 36.438557, 43.621120>,  <39.076111, 36.578480, 43.556072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445152, 36.438557, 43.621120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340113, -0.538712, 0.770787,
		-0.182024, -0.766436, -0.615990,
		0.922600, -0.349808, 0.162616,
		39.721931, 36.333614, 43.669907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965366, 35.771301, 43.576405>,  <39.076111, 36.578480, 43.556072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965366, 35.771301, 43.576405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293236, 35.902184, 43.764473>,  <39.489960, 35.980713, 43.877316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293236, 35.902184, 43.764473>,  <38.965366, 35.771301, 43.576405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293236, 35.902184, 43.764473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238981, -0.550617, 0.799818,
		0.520594, -0.767955, -0.373131,
		0.819677, 0.327209, 0.470174,
		39.539139, 36.000347, 43.905525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225826, 35.204826, 43.790390>,  <38.965366, 35.771301, 43.576405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225826, 35.204826, 43.790390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.372604, 35.490219, 44.029152>,  <39.460670, 35.661457, 44.172409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.372604, 35.490219, 44.029152>,  <39.225826, 35.204826, 43.790390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372604, 35.490219, 44.029152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236124, -0.549209, 0.801633,
		0.899776, -0.435097, -0.033058,
		0.366944, 0.713484, 0.596902,
		39.482689, 35.704266, 44.208221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610043, 34.824577, 44.273811>,  <39.225826, 35.204826, 43.790390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610043, 34.824577, 44.273811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.608002, 35.184616, 44.448071>,  <39.606777, 35.400639, 44.552628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.608002, 35.184616, 44.448071>,  <39.610043, 34.824577, 44.273811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608002, 35.184616, 44.448071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026469, -0.435383, 0.899856,
		0.999637, 0.016122, -0.021603,
		-0.005102, 0.900101, 0.435651,
		39.606472, 35.454647, 44.578766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243107, 34.921005, 44.733753>,  <39.610043, 34.824577, 44.273811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243107, 34.921005, 44.733753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.949863, 35.158543, 44.866356>,  <39.773918, 35.301067, 44.945919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.949863, 35.158543, 44.866356>,  <40.243107, 34.921005, 44.733753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949863, 35.158543, 44.866356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046199, -0.442826, 0.895417,
		0.678543, 0.671751, 0.297203,
		-0.733106, 0.593848, 0.331511,
		39.729931, 35.336697, 44.965809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381924, 34.955837, 45.455067>,  <40.243107, 34.921005, 44.733753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381924, 34.955837, 45.455067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.013359, 35.108414, 45.425400>,  <39.792221, 35.199959, 45.407600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.013359, 35.108414, 45.425400>,  <40.381924, 34.955837, 45.455067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013359, 35.108414, 45.425400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268410, -0.486735, 0.831291,
		0.280985, 0.785871, 0.550867,
		-0.921414, 0.381439, -0.074170,
		39.736935, 35.222847, 45.403149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207386, 35.254829, 46.078362>,  <40.381924, 34.955837, 45.455067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207386, 35.254829, 46.078362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.861301, 35.177273, 45.893406>,  <39.653648, 35.130737, 45.782433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.861301, 35.177273, 45.893406>,  <40.207386, 35.254829, 46.078362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861301, 35.177273, 45.893406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319606, -0.497294, 0.806567,
		-0.386334, 0.845638, 0.368297,
		-0.865216, -0.193894, -0.462393,
		39.601738, 35.119106, 45.754688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754734, 35.518284, 46.508892>,  <40.207386, 35.254829, 46.078362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754734, 35.518284, 46.508892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.535873, 35.273815, 46.280125>,  <39.404556, 35.127132, 46.142864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.535873, 35.273815, 46.280125>,  <39.754734, 35.518284, 46.508892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535873, 35.273815, 46.280125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464840, -0.346357, 0.814837,
		-0.696097, 0.711689, -0.094590,
		-0.547149, -0.611175, -0.571920,
		39.371727, 35.090462, 46.108547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205093, 35.467403, 46.842247>,  <39.754734, 35.518284, 46.508892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205093, 35.467403, 46.842247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162895, 35.128262, 46.634396>,  <39.137577, 34.924778, 46.509686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162895, 35.128262, 46.634396>,  <39.205093, 35.467403, 46.842247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162895, 35.128262, 46.634396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563101, -0.379764, 0.733959,
		-0.819627, 0.370034, -0.437363,
		-0.105495, -0.847852, -0.519632,
		39.131248, 34.873905, 46.478508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.477573, 35.138279, 46.982281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673996, 34.832268, 46.815624>,  <38.791851, 34.648659, 46.715630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673996, 34.832268, 46.815624>,  <38.477573, 35.138279, 46.982281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673996, 34.832268, 46.815624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452244, -0.632661, 0.628661,
		-0.744539, -0.120284, -0.656653,
		0.491057, -0.765031, -0.416643,
		38.821312, 34.602760, 46.690632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965591, 34.691624, 46.916668>,  <38.477573, 35.138279, 46.982281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965591, 34.691624, 46.916668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303654, 34.478493, 46.899677>,  <38.506493, 34.350613, 46.889481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303654, 34.478493, 46.899677>,  <37.965591, 34.691624, 46.916668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303654, 34.478493, 46.899677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370369, -0.641055, 0.672216,
		-0.385410, -0.552393, -0.739135,
		0.845155, -0.532832, -0.042480,
		38.557201, 34.318642, 46.886932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756920, 34.049450, 46.915154>,  <37.965591, 34.691624, 46.916668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756920, 34.049450, 46.915154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135086, 34.027023, 47.043556>,  <38.361988, 34.013569, 47.120598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135086, 34.027023, 47.043556>,  <37.756920, 34.049450, 46.915154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135086, 34.027023, 47.043556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304420, -0.503399, 0.808652,
		0.116254, -0.862233, -0.492990,
		0.945417, -0.056067, 0.321003,
		38.418713, 34.010204, 47.139858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871613, 33.374039, 47.061047>,  <37.756920, 34.049450, 46.915154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871613, 33.374039, 47.061047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154060, 33.562607, 47.272388>,  <38.323528, 33.675747, 47.399193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154060, 33.562607, 47.272388>,  <37.871613, 33.374039, 47.061047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154060, 33.562607, 47.272388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220028, -0.563150, 0.796523,
		0.673043, -0.678691, -0.293924,
		0.706117, 0.471423, 0.528355,
		38.365894, 33.704033, 47.430897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098202, 32.850655, 47.494507>,  <37.871613, 33.374039, 47.061047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098202, 32.850655, 47.494507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.194145, 33.200493, 47.663055>,  <38.251713, 33.410397, 47.764183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.194145, 33.200493, 47.663055>,  <38.098202, 32.850655, 47.494507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194145, 33.200493, 47.663055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247970, -0.364450, 0.897601,
		0.938604, -0.319787, 0.129456,
		0.239861, 0.874593, 0.421372,
		38.266102, 33.462872, 47.789467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540535, 32.605545, 48.119720>,  <38.098202, 32.850655, 47.494507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540535, 32.605545, 48.119720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414455, 32.979424, 48.185429>,  <38.338806, 33.203751, 48.224854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414455, 32.979424, 48.185429>,  <38.540535, 32.605545, 48.119720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414455, 32.979424, 48.185429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051913, -0.189821, 0.980446,
		0.947604, 0.300510, 0.108355,
		-0.315201, 0.934699, 0.164274,
		38.319897, 33.259834, 48.234711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043064, 32.883057, 48.603279>,  <38.540535, 32.605545, 48.119720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043064, 32.883057, 48.603279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.697380, 33.082405, 48.630928>,  <38.489971, 33.202015, 48.647518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.697380, 33.082405, 48.630928>,  <39.043064, 32.883057, 48.603279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697380, 33.082405, 48.630928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014391, -0.161817, 0.986716,
		0.502932, 0.851731, 0.147016,
		-0.864206, 0.498367, 0.069126,
		38.438118, 33.231915, 48.651665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140213, 33.235325, 49.246075>,  <39.043064, 32.883057, 48.603279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140213, 33.235325, 49.246075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744961, 33.269852, 49.195240>,  <38.507809, 33.290569, 49.164742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744961, 33.269852, 49.195240>,  <39.140213, 33.235325, 49.246075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744961, 33.269852, 49.195240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125721, 0.021081, 0.991842,
		0.088297, 0.996044, -0.009978,
		-0.988129, 0.086322, -0.127085,
		38.448521, 33.295750, 49.157116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810806, 33.839756, 49.667519>,  <39.140213, 33.235325, 49.246075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810806, 33.839756, 49.667519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516598, 33.580589, 49.588318>,  <38.340073, 33.425087, 49.540798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516598, 33.580589, 49.588318>,  <38.810806, 33.839756, 49.667519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516598, 33.580589, 49.588318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215437, -0.053402, 0.975056,
		-0.642332, 0.759834, -0.100308,
		-0.735524, -0.647920, -0.197998,
		38.295940, 33.386211, 49.528919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416851, 33.928375, 50.186581>,  <38.810806, 33.839756, 49.667519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416851, 33.928375, 50.186581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236649, 33.604412, 50.036331>,  <38.128529, 33.410034, 49.946182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236649, 33.604412, 50.036331>,  <38.416851, 33.928375, 50.186581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236649, 33.604412, 50.036331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291039, -0.264526, 0.919414,
		-0.844002, 0.523525, -0.116543,
		-0.450508, -0.809906, -0.375626,
		38.101498, 33.361439, 49.923645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755520, 33.943096, 50.477516>,  <38.416851, 33.928375, 50.186581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755520, 33.943096, 50.477516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.845505, 33.569187, 50.367542>,  <37.899498, 33.344841, 50.301556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.845505, 33.569187, 50.367542>,  <37.755520, 33.943096, 50.477516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845505, 33.569187, 50.367542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303436, -0.335351, 0.891889,
		-0.925914, -0.117219, -0.359086,
		0.224966, -0.934772, -0.274938,
		37.912994, 33.288757, 50.285061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230232, 33.534630, 50.624294>,  <37.755520, 33.943096, 50.477516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230232, 33.534630, 50.624294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530212, 33.270977, 50.601971>,  <37.710201, 33.112785, 50.588577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530212, 33.270977, 50.601971>,  <37.230232, 33.534630, 50.624294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530212, 33.270977, 50.601971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346316, -0.463104, 0.815843,
		-0.563594, -0.592516, -0.575574,
		0.749951, -0.659135, -0.055805,
		37.755199, 33.073238, 50.585228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005371, 32.817947, 50.919209>,  <37.230232, 33.534630, 50.624294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005371, 32.817947, 50.919209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404423, 32.809322, 50.945335>,  <37.643856, 32.804150, 50.961014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404423, 32.809322, 50.945335>,  <37.005371, 32.817947, 50.919209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404423, 32.809322, 50.945335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068475, -0.401464, 0.913312,
		0.006534, -0.915621, -0.401989,
		0.997632, -0.021559, 0.065320,
		37.703712, 32.802856, 50.964931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091461, 32.295341, 51.280743>,  <37.005371, 32.817947, 50.919209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091461, 32.295341, 51.280743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454350, 32.463345, 51.290089>,  <37.672081, 32.564144, 51.295696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454350, 32.463345, 51.290089>,  <37.091461, 32.295341, 51.280743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454350, 32.463345, 51.290089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049587, -0.161945, 0.985553,
		0.417722, -0.892956, -0.167746,
		0.907221, 0.420005, 0.023369,
		37.726517, 32.589344, 51.297100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490864, 31.735889, 51.527641>,  <37.091461, 32.295341, 51.280743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490864, 31.735889, 51.527641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.688583, 32.078053, 51.589535>,  <37.807217, 32.283352, 51.626671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.688583, 32.078053, 51.589535>,  <37.490864, 31.735889, 51.527641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688583, 32.078053, 51.589535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184061, -0.276958, 0.943089,
		0.849581, -0.437689, -0.294347,
		0.494301, 0.855408, 0.154737,
		37.836872, 32.334675, 51.635956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183872, 31.538036, 51.824795>,  <37.490864, 31.735889, 51.527641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183872, 31.538036, 51.824795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108402, 31.913542, 51.940117>,  <38.063122, 32.138847, 52.009312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108402, 31.913542, 51.940117>,  <38.183872, 31.538036, 51.824795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108402, 31.913542, 51.940117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050614, -0.283895, 0.957519,
		0.980735, 0.195249, 0.006049,
		-0.188672, 0.938766, 0.288308,
		38.051800, 32.195171, 52.026608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561340, 31.611097, 52.311264>,  <38.183872, 31.538036, 51.824795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561340, 31.611097, 52.311264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283989, 31.895840, 52.355949>,  <38.117577, 32.066685, 52.382763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283989, 31.895840, 52.355949>,  <38.561340, 31.611097, 52.311264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283989, 31.895840, 52.355949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048050, -0.200373, 0.978541,
		0.718965, 0.673135, 0.173140,
		-0.693383, 0.711856, 0.111717,
		38.075974, 32.109398, 52.389465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725868, 31.832565, 52.906353>,  <38.561340, 31.611097, 52.311264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725868, 31.832565, 52.906353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369682, 32.007957, 52.857689>,  <38.155972, 32.113194, 52.828491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369682, 32.007957, 52.857689>,  <38.725868, 31.832565, 52.906353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369682, 32.007957, 52.857689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222365, -0.186043, 0.957049,
		0.397013, 0.879275, 0.263168,
		-0.890469, 0.438480, -0.121658,
		38.102543, 32.139500, 52.821190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641556, 32.228451, 53.490078>,  <38.725868, 31.832565, 52.906353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641556, 32.228451, 53.490078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271965, 32.154549, 53.356136>,  <38.050209, 32.110207, 53.275772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271965, 32.154549, 53.356136>,  <38.641556, 32.228451, 53.490078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271965, 32.154549, 53.356136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264979, -0.322069, 0.908877,
		-0.275761, 0.928514, 0.248630,
		-0.923982, -0.184751, -0.334851,
		37.994770, 32.099125, 53.255680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259846, 32.510918, 53.997654>,  <38.641556, 32.228451, 53.490078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259846, 32.510918, 53.997654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021881, 32.253891, 53.804497>,  <37.879101, 32.099674, 53.688602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021881, 32.253891, 53.804497>,  <38.259846, 32.510918, 53.997654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021881, 32.253891, 53.804497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356264, -0.327736, 0.875023,
		-0.720523, 0.692599, -0.033950,
		-0.594914, -0.642570, -0.482889,
		37.843407, 32.061119, 53.659630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500160, 32.558529, 54.229740>,  <38.259846, 32.510918, 53.997654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500160, 32.558529, 54.229740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546730, 32.191071, 54.078728>,  <37.574673, 31.970594, 53.988121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546730, 32.191071, 54.078728>,  <37.500160, 32.558529, 54.229740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546730, 32.191071, 54.078728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350372, -0.393666, 0.849863,
		-0.929347, 0.033335, -0.367700,
		0.116421, -0.918649, -0.377532,
		37.581657, 31.915476, 53.965469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838760, 32.298218, 54.277458>,  <37.500160, 32.558529, 54.229740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838760, 32.298218, 54.277458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112747, 32.006840, 54.272026>,  <37.277138, 31.832012, 54.268764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112747, 32.006840, 54.272026>,  <36.838760, 32.298218, 54.277458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112747, 32.006840, 54.272026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427881, -0.417288, 0.801741,
		-0.589697, -0.543351, -0.597518,
		0.684964, -0.728450, -0.013584,
		37.318237, 31.788305, 54.267952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516182, 31.637026, 54.231785>,  <36.838760, 32.298218, 54.277458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516182, 31.637026, 54.231785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879063, 31.604265, 54.396843>,  <37.096790, 31.584608, 54.495876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879063, 31.604265, 54.396843>,  <36.516182, 31.637026, 54.231785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879063, 31.604265, 54.396843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388268, -0.540610, 0.746317,
		0.161953, -0.837277, -0.522244,
		0.907204, -0.081902, 0.412641,
		37.151222, 31.579695, 54.520634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699936, 30.829376, 54.481609>,  <36.516182, 31.637026, 54.231785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699936, 30.829376, 54.481609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889072, 31.124704, 54.673985>,  <37.002556, 31.301901, 54.789410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889072, 31.124704, 54.673985>,  <36.699936, 30.829376, 54.481609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889072, 31.124704, 54.673985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149687, -0.470574, 0.869571,
		0.868339, -0.483162, -0.111991,
		0.472844, 0.738319, 0.480940,
		37.030926, 31.346199, 54.818268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626850, 30.092224, 54.228233>,  <36.699936, 30.829376, 54.481609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626850, 30.092224, 54.228233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227795, 30.100918, 54.202194>,  <35.988361, 30.106134, 54.186569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227795, 30.100918, 54.202194>,  <36.626850, 30.092224, 54.228233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227795, 30.100918, 54.202194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066954, 0.099826, -0.992750,
		-0.015080, -0.994767, -0.101046,
		-0.997642, 0.021736, -0.065098,
		35.928501, 30.107439, 54.182663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383190, 29.734335, 53.566017>,  <36.626850, 30.092224, 54.228233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383190, 29.734335, 53.566017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.068172, 29.954573, 53.676743>,  <35.879162, 30.086716, 53.743176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.068172, 29.954573, 53.676743>,  <36.383190, 29.734335, 53.566017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068172, 29.954573, 53.676743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265093, 0.102821, -0.958725,
		-0.556330, -0.828416, 0.064983,
		-0.787541, 0.550594, 0.276810,
		35.831909, 30.119751, 53.759785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804367, 29.472643, 53.263496>,  <36.383190, 29.734335, 53.566017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804367, 29.472643, 53.263496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682877, 29.841259, 53.360252>,  <35.609982, 30.062429, 53.418304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682877, 29.841259, 53.360252>,  <35.804367, 29.472643, 53.263496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682877, 29.841259, 53.360252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071430, 0.231146, -0.970293,
		-0.950079, -0.311980, -0.004379,
		-0.303724, 0.921542, 0.241891,
		35.591759, 30.117722, 53.432819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391834, 29.633747, 52.750381>,  <35.804367, 29.472643, 53.263496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391834, 29.633747, 52.750381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430920, 29.991554, 52.924870>,  <35.454372, 30.206238, 53.029564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430920, 29.991554, 52.924870>,  <35.391834, 29.633747, 52.750381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430920, 29.991554, 52.924870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195280, 0.447032, -0.872942,
		-0.975867, 0.000117, 0.218365,
		0.097718, 0.894518, 0.436221,
		35.460236, 30.259909, 53.055737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849358, 30.022919, 52.588196>,  <35.391834, 29.633747, 52.750381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849358, 30.022919, 52.588196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.116798, 30.300303, 52.695591>,  <35.277264, 30.466734, 52.760029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.116798, 30.300303, 52.695591>,  <34.849358, 30.022919, 52.588196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116798, 30.300303, 52.695591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083712, 0.428949, -0.899441,
		-0.738896, 0.578890, 0.344846,
		0.668599, 0.693462, 0.268489,
		35.317379, 30.508341, 52.776138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582302, 30.752134, 52.510242>,  <34.849358, 30.022919, 52.588196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582302, 30.752134, 52.510242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.980770, 30.748625, 52.475449>,  <35.219852, 30.746519, 52.454571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.980770, 30.748625, 52.475449>,  <34.582302, 30.752134, 52.510242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980770, 30.748625, 52.475449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075751, 0.410167, -0.908859,
		0.043654, 0.911968, 0.407932,
		0.996171, -0.008774, -0.086988,
		35.279621, 30.745993, 52.449352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766689, 31.456480, 52.337936>,  <34.582302, 30.752134, 52.510242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766689, 31.456480, 52.337936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.062000, 31.218039, 52.211697>,  <35.239189, 31.074974, 52.135952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.062000, 31.218039, 52.211697>,  <34.766689, 31.456480, 52.337936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062000, 31.218039, 52.211697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093036, 0.553429, -0.827684,
		0.668048, 0.581700, 0.464045,
		0.738279, -0.596105, -0.315598,
		35.283485, 31.039207, 52.117016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136513, 31.897440, 51.948284>,  <34.766689, 31.456480, 52.337936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136513, 31.897440, 51.948284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286713, 31.539402, 51.852116>,  <35.376835, 31.324579, 51.794415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286713, 31.539402, 51.852116>,  <35.136513, 31.897440, 51.948284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286713, 31.539402, 51.852116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244627, 0.345927, -0.905810,
		0.893955, 0.281320, 0.348861,
		0.375503, -0.895094, -0.240424,
		35.399364, 31.270874, 51.779987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738319, 32.104538, 51.696316>,  <35.136513, 31.897440, 51.948284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738319, 32.104538, 51.696316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.676216, 31.736139, 51.553398>,  <35.638954, 31.515100, 51.467648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.676216, 31.736139, 51.553398>,  <35.738319, 32.104538, 51.696316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676216, 31.736139, 51.553398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148258, 0.335857, -0.930172,
		0.976686, -0.197387, 0.084401,
		-0.155257, -0.920999, -0.357291,
		35.629639, 31.459839, 51.446213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333809, 31.996017, 51.407825>,  <35.738319, 32.104538, 51.696316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333809, 31.996017, 51.407825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073608, 31.755978, 51.221607>,  <35.917488, 31.611954, 51.109875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073608, 31.755978, 51.221607>,  <36.333809, 31.996017, 51.407825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073608, 31.755978, 51.221607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320894, 0.338412, -0.884593,
		0.688390, -0.724817, -0.027568,
		-0.650497, -0.600098, -0.465549,
		35.878460, 31.575949, 51.081944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735100, 31.808739, 50.821217>,  <36.333809, 31.996017, 51.407825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735100, 31.808739, 50.821217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353607, 31.699020, 50.771976>,  <36.124710, 31.633190, 50.742432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353607, 31.699020, 50.771976>,  <36.735100, 31.808739, 50.821217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353607, 31.699020, 50.771976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001770, 0.414557, -0.910022,
		0.300645, -0.867701, -0.395863,
		-0.953735, -0.274294, -0.123098,
		36.067486, 31.616732, 50.735046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720535, 31.598028, 50.186920>,  <36.735100, 31.808739, 50.821217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720535, 31.598028, 50.186920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328674, 31.652052, 50.246311>,  <36.093559, 31.684467, 50.281948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328674, 31.652052, 50.246311>,  <36.720535, 31.598028, 50.186920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328674, 31.652052, 50.246311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064706, 0.487751, -0.870581,
		-0.190004, -0.862472, -0.469085,
		-0.979649, 0.135061, 0.148482,
		36.034779, 31.692570, 50.290855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364216, 31.385756, 49.541821>,  <36.720535, 31.598028, 50.186920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364216, 31.385756, 49.541821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.119617, 31.628899, 49.744434>,  <35.972858, 31.774784, 49.866001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.119617, 31.628899, 49.744434>,  <36.364216, 31.385756, 49.541821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119617, 31.628899, 49.744434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194163, 0.505325, -0.840802,
		-0.767054, -0.612498, -0.190981,
		-0.611497, 0.607859, 0.506536,
		35.936169, 31.811256, 49.896397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829529, 31.388243, 49.115833>,  <36.364216, 31.385756, 49.541821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829529, 31.388243, 49.115833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812180, 31.716442, 49.343834>,  <35.801769, 31.913363, 49.480633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812180, 31.716442, 49.343834>,  <35.829529, 31.388243, 49.115833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812180, 31.716442, 49.343834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132218, 0.560805, -0.817323,
		-0.990271, -0.110815, 0.084160,
		-0.043375, 0.820499, 0.570000,
		35.799168, 31.962591, 49.514835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341759, 31.680857, 48.778866>,  <35.829529, 31.388243, 49.115833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341759, 31.680857, 48.778866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466473, 31.983097, 49.009296>,  <35.541302, 32.164440, 49.147552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466473, 31.983097, 49.009296>,  <35.341759, 31.680857, 48.778866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466473, 31.983097, 49.009296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128720, 0.634295, -0.762300,
		-0.941393, 0.163522, 0.295024,
		0.311785, 0.755599, 0.576073,
		35.560009, 32.209778, 49.182117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801174, 32.291782, 48.750813>,  <35.341759, 31.680857, 48.778866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801174, 32.291782, 48.750813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165180, 32.421513, 48.854107>,  <35.383583, 32.499352, 48.916084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165180, 32.421513, 48.854107>,  <34.801174, 32.291782, 48.750813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165180, 32.421513, 48.854107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032138, 0.676197, -0.736019,
		-0.413329, 0.661489, 0.625772,
		0.910014, 0.324330, 0.258233,
		35.438183, 32.518810, 48.931576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804356, 33.032516, 48.657810>,  <34.801174, 32.291782, 48.750813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804356, 33.032516, 48.657810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.190983, 32.929974, 48.659985>,  <35.422958, 32.868446, 48.661289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.190983, 32.929974, 48.659985>,  <34.804356, 33.032516, 48.657810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190983, 32.929974, 48.659985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164972, 0.605490, -0.778567,
		0.196298, 0.753434, 0.627538,
		0.966567, -0.256357, 0.005440,
		35.480953, 32.853065, 48.661617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134197, 33.684036, 48.587570>,  <34.804356, 33.032516, 48.657810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134197, 33.684036, 48.587570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410542, 33.421783, 48.465683>,  <35.576347, 33.264431, 48.392551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410542, 33.421783, 48.465683>,  <35.134197, 33.684036, 48.587570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410542, 33.421783, 48.465683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212994, 0.587337, -0.780813,
		0.690899, 0.474532, 0.545415,
		0.690863, -0.655633, -0.304718,
		35.617802, 33.225094, 48.374268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872112, 34.071091, 48.395157>,  <35.134197, 33.684036, 48.587570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872112, 34.071091, 48.395157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868488, 33.719105, 48.205173>,  <35.866314, 33.507915, 48.091183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868488, 33.719105, 48.205173>,  <35.872112, 34.071091, 48.395157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868488, 33.719105, 48.205173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252249, 0.457602, -0.852626,
		0.967620, -0.127534, 0.217823,
		-0.009062, -0.879963, -0.474955,
		35.865768, 33.455116, 48.062687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475880, 34.061802, 47.999992>,  <35.872112, 34.071091, 48.395157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475880, 34.061802, 47.999992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.271786, 33.779900, 47.802818>,  <36.149330, 33.610760, 47.684513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.271786, 33.779900, 47.802818>,  <36.475880, 34.061802, 47.999992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271786, 33.779900, 47.802818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435680, 0.282362, -0.854667,
		0.741517, -0.650839, 0.162978,
		-0.510232, -0.704756, -0.492933,
		36.118717, 33.568474, 47.654938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.811653, 35.157997, 27.808498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551937, 35.326984, 28.061460>,  <40.396107, 35.428379, 28.213238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551937, 35.326984, 28.061460>,  <40.811653, 35.157997, 27.808498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551937, 35.326984, 28.061460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637122, -0.151939, 0.755639,
		0.415322, 0.893551, -0.170512,
		-0.649295, 0.422470, 0.632405,
		40.357147, 35.453724, 28.251183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173256, 35.584827, 28.189455>,  <40.811653, 35.157997, 27.808498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173256, 35.584827, 28.189455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.848263, 35.469414, 28.392084>,  <40.653267, 35.400166, 28.513662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.848263, 35.469414, 28.392084>,  <41.173256, 35.584827, 28.189455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848263, 35.469414, 28.392084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564628, -0.173131, 0.806982,
		-0.145140, 0.941686, 0.303582,
		-0.812483, -0.288536, 0.506574,
		40.604519, 35.382854, 28.544056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297592, 35.780647, 28.875193>,  <41.173256, 35.584827, 28.189455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297592, 35.780647, 28.875193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.023918, 35.493374, 28.925945>,  <40.859715, 35.321011, 28.956398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.023918, 35.493374, 28.925945>,  <41.297592, 35.780647, 28.875193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023918, 35.493374, 28.925945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548580, -0.392150, 0.738430,
		-0.480572, 0.574830, 0.662285,
		-0.684186, -0.718185, 0.126884,
		40.818661, 35.277920, 28.964010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146709, 35.821892, 29.623634>,  <41.297592, 35.780647, 28.875193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146709, 35.821892, 29.623634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.971756, 35.481609, 29.507025>,  <40.866783, 35.277439, 29.437059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.971756, 35.481609, 29.507025>,  <41.146709, 35.821892, 29.623634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971756, 35.481609, 29.507025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318365, -0.449667, 0.834532,
		-0.841034, 0.272201, 0.467514,
		-0.437386, -0.850709, -0.291526,
		40.840542, 35.226395, 29.419567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682571, 35.569317, 30.177397>,  <41.146709, 35.821892, 29.623634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682571, 35.569317, 30.177397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.808968, 35.272797, 29.940544>,  <40.884804, 35.094883, 29.798431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.808968, 35.272797, 29.940544>,  <40.682571, 35.569317, 30.177397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808968, 35.272797, 29.940544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289711, -0.518912, 0.804237,
		-0.903449, -0.425676, 0.050794,
		0.315987, -0.741303, -0.592133,
		40.903763, 35.050407, 29.762903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403942, 34.917564, 30.426199>,  <40.682571, 35.569317, 30.177397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403942, 34.917564, 30.426199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.699474, 34.792374, 30.187475>,  <40.876793, 34.717258, 30.044241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.699474, 34.792374, 30.187475>,  <40.403942, 34.917564, 30.426199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699474, 34.792374, 30.187475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411982, -0.491072, 0.767541,
		-0.533299, -0.812954, -0.233876,
		0.738826, -0.312976, -0.596810,
		40.921124, 34.698483, 30.008432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537128, 34.181801, 30.680117>,  <40.403942, 34.917564, 30.426199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537128, 34.181801, 30.680117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854465, 34.246796, 30.445440>,  <41.044868, 34.285793, 30.304634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854465, 34.246796, 30.445440>,  <40.537128, 34.181801, 30.680117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854465, 34.246796, 30.445440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594925, -0.411335, 0.690557,
		-0.129120, -0.896885, -0.422996,
		0.793343, 0.162486, -0.586690,
		41.092468, 34.295540, 30.269434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866234, 33.649345, 30.805952>,  <40.537128, 34.181801, 30.680117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866234, 33.649345, 30.805952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138382, 33.906734, 30.665648>,  <41.301670, 34.061169, 30.581465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138382, 33.906734, 30.665648>,  <40.866234, 33.649345, 30.805952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138382, 33.906734, 30.665648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649171, -0.307054, 0.695913,
		0.340098, -0.701186, -0.626635,
		0.680375, 0.643472, -0.350761,
		41.342495, 34.099777, 30.560419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485100, 33.322933, 30.815226>,  <40.866234, 33.649345, 30.805952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485100, 33.322933, 30.815226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.551262, 33.716873, 30.836084>,  <41.590958, 33.953236, 30.848600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.551262, 33.716873, 30.836084>,  <41.485100, 33.322933, 30.815226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551262, 33.716873, 30.836084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647520, -0.148330, 0.747473,
		0.743881, -0.089867, -0.662242,
		0.165404, 0.984846, 0.052149,
		41.600883, 34.012325, 30.851728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265537, 33.371555, 30.877321>,  <41.485100, 33.322933, 30.815226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265537, 33.371555, 30.877321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.113052, 33.726360, 30.981539>,  <42.021561, 33.939243, 31.044069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.113052, 33.726360, 30.981539>,  <42.265537, 33.371555, 30.877321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113052, 33.726360, 30.981539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595481, 0.020020, 0.803120,
		0.707163, 0.461307, -0.535832,
		-0.381213, 0.887014, 0.260542,
		41.998688, 33.992466, 31.059702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842495, 33.897320, 31.010920>,  <42.265537, 33.371555, 30.877321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842495, 33.897320, 31.010920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.513084, 34.018509, 31.202757>,  <42.315437, 34.091221, 31.317860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.513084, 34.018509, 31.202757>,  <42.842495, 33.897320, 31.010920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513084, 34.018509, 31.202757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542438, 0.173139, 0.822061,
		0.166024, 0.937140, -0.306928,
		-0.823527, 0.302971, 0.479595,
		42.266026, 34.109402, 31.346636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069561, 34.506378, 31.462002>,  <42.842495, 33.897320, 31.010920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069561, 34.506378, 31.462002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.719215, 34.405952, 31.626844>,  <42.509007, 34.345699, 31.725750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.719215, 34.405952, 31.626844>,  <43.069561, 34.506378, 31.462002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719215, 34.405952, 31.626844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323799, 0.327431, 0.887661,
		-0.357794, 0.910910, -0.205492,
		-0.875864, -0.251061, 0.412105,
		42.456455, 34.330635, 31.750477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833477, 35.079567, 31.962639>,  <43.069561, 34.506378, 31.462002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833477, 35.079567, 31.962639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.700092, 34.715656, 32.061516>,  <42.620064, 34.497311, 32.120842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.700092, 34.715656, 32.061516>,  <42.833477, 35.079567, 31.962639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700092, 34.715656, 32.061516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255262, 0.165277, 0.952641,
		-0.907550, 0.380766, 0.177120,
		-0.333459, -0.909781, 0.247192,
		42.600056, 34.442722, 32.135674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734711, 35.083973, 32.682816>,  <42.833477, 35.079567, 31.962639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734711, 35.083973, 32.682816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708996, 34.695957, 32.589108>,  <42.693565, 34.463146, 32.532883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708996, 34.695957, 32.589108>,  <42.734711, 35.083973, 32.682816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708996, 34.695957, 32.589108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294385, -0.242747, 0.924344,
		-0.953522, -0.009543, 0.301172,
		-0.064288, -0.970043, -0.234274,
		42.689709, 34.404945, 32.518826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447578, 34.704735, 33.292328>,  <42.734711, 35.083973, 32.682816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447578, 34.704735, 33.292328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.638420, 34.425846, 33.078320>,  <42.752926, 34.258511, 32.949917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.638420, 34.425846, 33.078320>,  <42.447578, 34.704735, 33.292328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638420, 34.425846, 33.078320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376088, -0.388236, 0.841327,
		-0.794308, -0.602617, 0.076988,
		0.477108, -0.697226, -0.535016,
		42.781551, 34.216679, 32.917816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144310, 34.013493, 33.476040>,  <42.447578, 34.704735, 33.292328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144310, 34.013493, 33.476040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514332, 33.961926, 33.333122>,  <42.736343, 33.930984, 33.247372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514332, 33.961926, 33.333122>,  <42.144310, 34.013493, 33.476040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514332, 33.961926, 33.333122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248276, -0.506668, 0.825619,
		-0.287468, -0.852448, -0.436687,
		0.925052, -0.128920, -0.357294,
		42.791847, 33.923248, 33.225933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397747, 33.300682, 33.840485>,  <42.144310, 34.013493, 33.476040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397747, 33.300682, 33.840485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721870, 33.474506, 33.683228>,  <42.916344, 33.578800, 33.588871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721870, 33.474506, 33.683228>,  <42.397747, 33.300682, 33.840485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721870, 33.474506, 33.683228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501782, -0.167991, 0.848525,
		0.302691, -0.884836, -0.354179,
		0.810304, 0.434561, -0.393145,
		42.964962, 33.604874, 33.565285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924568, 32.905910, 34.055424>,  <42.397747, 33.300682, 33.840485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924568, 32.905910, 34.055424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.111492, 33.241108, 33.942722>,  <43.223648, 33.442226, 33.875099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.111492, 33.241108, 33.942722>,  <42.924568, 32.905910, 34.055424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111492, 33.241108, 33.942722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720991, -0.176788, 0.670013,
		0.511655, -0.516249, -0.686801,
		0.467312, 0.837993, -0.281757,
		43.251686, 33.492504, 33.858196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603565, 32.846851, 34.009296>,  <42.924568, 32.905910, 34.055424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603565, 32.846851, 34.009296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.600185, 33.246616, 34.022545>,  <43.598160, 33.486477, 34.030495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.600185, 33.246616, 34.022545>,  <43.603565, 32.846851, 34.009296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600185, 33.246616, 34.022545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744362, -0.015835, 0.667589,
		0.667723, 0.030295, -0.743793,
		-0.008447, 0.999416, 0.033124,
		43.597652, 33.546440, 34.032482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369148, 33.061821, 34.112297>,  <43.603565, 32.846851, 34.009296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369148, 33.061821, 34.112297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126911, 33.346275, 34.255146>,  <43.981571, 33.516949, 34.340855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126911, 33.346275, 34.255146>,  <44.369148, 33.061821, 34.112297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126911, 33.346275, 34.255146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414388, -0.101318, 0.904443,
		0.679369, 0.695711, -0.233330,
		-0.605591, 0.711140, 0.357126,
		43.945232, 33.559616, 34.362286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745178, 33.325809, 34.562977>,  <44.369148, 33.061821, 34.112297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745178, 33.325809, 34.562977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390415, 33.486572, 34.654072>,  <44.177559, 33.583031, 34.708729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390415, 33.486572, 34.654072>,  <44.745178, 33.325809, 34.562977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390415, 33.486572, 34.654072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326627, 0.196981, 0.924399,
		0.326662, 0.894242, -0.305977,
		-0.886908, 0.401907, 0.227737,
		44.124344, 33.607143, 34.722393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062099, 33.807022, 34.181873>,  <44.745178, 33.325809, 34.562977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062099, 33.807022, 34.181873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.452930, 33.723980, 34.163048>,  <45.687431, 33.674156, 34.151752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.452930, 33.723980, 34.163048>,  <45.062099, 33.807022, 34.181873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452930, 33.723980, 34.163048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007263, 0.188452, -0.982055,
		0.212750, 0.959888, 0.182625,
		0.977080, -0.207606, -0.047065,
		45.746056, 33.661697, 34.148930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306160, 34.315609, 33.815639>,  <45.062099, 33.807022, 34.181873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306160, 34.315609, 33.815639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.581837, 34.025917, 33.806683>,  <45.747242, 33.852100, 33.801308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.581837, 34.025917, 33.806683>,  <45.306160, 34.315609, 33.815639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581837, 34.025917, 33.806683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201406, 0.221168, -0.954212,
		0.696025, 0.653124, 0.298292,
		0.689192, -0.724233, -0.022396,
		45.788593, 33.808647, 33.799965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984711, 34.668289, 33.543327>,  <45.306160, 34.315609, 33.815639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984711, 34.668289, 33.543327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.958809, 34.275486, 33.472363>,  <45.943268, 34.039806, 33.429783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.958809, 34.275486, 33.472363>,  <45.984711, 34.668289, 33.543327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958809, 34.275486, 33.472363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203091, 0.187037, -0.961130,
		0.977016, -0.026206, -0.211548,
		-0.064755, -0.982003, -0.177416,
		45.939381, 33.980885, 33.419136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344944, 34.513458, 32.910259>,  <45.984711, 34.668289, 33.543327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344944, 34.513458, 32.910259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.116257, 34.186813, 32.941967>,  <45.979042, 33.990826, 32.960991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.116257, 34.186813, 32.941967>,  <46.344944, 34.513458, 32.910259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.116257, 34.186813, 32.941967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149609, 0.008773, -0.988706,
		0.806692, -0.577124, -0.127188,
		-0.571722, -0.816610, 0.079266,
		45.944740, 33.941830, 32.965748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612507, 34.103191, 32.548615>,  <46.344944, 34.513458, 32.910259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612507, 34.103191, 32.548615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.230652, 33.984726, 32.560970>,  <46.001537, 33.913647, 32.568382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.230652, 33.984726, 32.560970>,  <46.612507, 34.103191, 32.548615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.230652, 33.984726, 32.560970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064857, 0.105570, -0.992294,
		0.290620, -0.949285, -0.119989,
		-0.954638, -0.296163, 0.030888,
		45.944260, 33.895878, 32.570236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.535694, 33.911148, 31.961767>,  <46.612507, 34.103191, 32.548615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.535694, 33.911148, 31.961767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.149269, 33.892300, 32.063362>,  <45.917416, 33.880993, 32.124321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.149269, 33.892300, 32.063362>,  <46.535694, 33.911148, 31.961767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.149269, 33.892300, 32.063362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255163, 0.327335, -0.909804,
		-0.040272, -0.943733, -0.328248,
		-0.966059, -0.047117, 0.253988,
		45.859451, 33.878166, 32.139557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085152, 33.439960, 31.446108>,  <46.535694, 33.911148, 31.961767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085152, 33.439960, 31.446108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.841003, 33.696880, 31.631535>,  <45.694515, 33.851032, 31.742790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.841003, 33.696880, 31.631535>,  <46.085152, 33.439960, 31.446108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841003, 33.696880, 31.631535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349420, 0.306887, -0.885283,
		-0.710883, -0.702330, 0.037119,
		-0.610370, 0.642302, 0.463569,
		45.657894, 33.889572, 31.770605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401611, 33.358067, 31.151527>,  <46.085152, 33.439960, 31.446108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401611, 33.358067, 31.151527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388184, 33.730045, 31.297989>,  <45.380127, 33.953232, 31.385866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388184, 33.730045, 31.297989>,  <45.401611, 33.358067, 31.151527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388184, 33.730045, 31.297989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545072, 0.290044, -0.786620,
		-0.837717, -0.225986, 0.497152,
		-0.033569, 0.929949, 0.366153,
		45.378113, 34.009029, 31.407835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697037, 33.562702, 31.022892>,  <45.401611, 33.358067, 31.151527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697037, 33.562702, 31.022892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.892666, 33.904095, 31.094862>,  <45.010044, 34.108929, 31.138044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.892666, 33.904095, 31.094862>,  <44.697037, 33.562702, 31.022892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892666, 33.904095, 31.094862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366702, 0.388356, -0.845405,
		-0.791414, 0.347487, 0.502909,
		0.489074, 0.853483, 0.179926,
		45.039387, 34.160141, 31.148840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235111, 34.033825, 30.940145>,  <44.697037, 33.562702, 31.022892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235111, 34.033825, 30.940145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592472, 34.209797, 30.903688>,  <44.806889, 34.315380, 30.881815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592472, 34.209797, 30.903688>,  <44.235111, 34.033825, 30.940145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592472, 34.209797, 30.903688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342284, 0.535099, -0.772341,
		-0.291004, 0.721203, 0.628636,
		0.893397, 0.439926, -0.091140,
		44.860493, 34.341774, 30.876347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080517, 34.692909, 30.719349>,  <44.235111, 34.033825, 30.940145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080517, 34.692909, 30.719349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475426, 34.684765, 30.656265>,  <44.712372, 34.679878, 30.618414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475426, 34.684765, 30.656265>,  <44.080517, 34.692909, 30.719349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475426, 34.684765, 30.656265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124698, 0.516300, -0.847281,
		0.098680, 0.856165, 0.507191,
		0.987275, -0.020364, -0.157710,
		44.771606, 34.678654, 30.608952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187775, 35.348751, 30.635227>,  <44.080517, 34.692909, 30.719349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187775, 35.348751, 30.635227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468224, 35.123646, 30.460083>,  <44.636494, 34.988583, 30.354996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468224, 35.123646, 30.460083>,  <44.187775, 35.348751, 30.635227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468224, 35.123646, 30.460083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164594, 0.469758, -0.867316,
		0.693785, 0.680163, 0.236730,
		0.701122, -0.562766, -0.437862,
		44.678558, 34.954815, 30.328724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623222, 35.844887, 30.260710>,  <44.187775, 35.348751, 30.635227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623222, 35.844887, 30.260710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661663, 35.483448, 30.093725>,  <44.684727, 35.266586, 29.993534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661663, 35.483448, 30.093725>,  <44.623222, 35.844887, 30.260710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661663, 35.483448, 30.093725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259846, 0.382086, -0.886843,
		0.960856, 0.193705, -0.198076,
		0.096104, -0.903598, -0.417464,
		44.690495, 35.212368, 29.968487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076115, 35.940548, 29.695032>,  <44.623222, 35.844887, 30.260710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076115, 35.940548, 29.695032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.884968, 35.604530, 29.592300>,  <44.770279, 35.402920, 29.530661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.884968, 35.604530, 29.592300>,  <45.076115, 35.940548, 29.695032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884968, 35.604530, 29.592300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347478, 0.449297, -0.823038,
		0.806783, -0.304063, -0.506603,
		-0.477871, -0.840047, -0.256830,
		44.741608, 35.352516, 29.515251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277969, 35.846718, 29.052042>,  <45.076115, 35.940548, 29.695032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277969, 35.846718, 29.052042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954937, 35.610973, 29.060696>,  <44.761116, 35.469528, 29.065887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954937, 35.610973, 29.060696>,  <45.277969, 35.846718, 29.052042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954937, 35.610973, 29.060696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358618, 0.461617, -0.811359,
		0.468235, -0.662967, -0.584149,
		-0.807557, -0.589393, 0.021607,
		44.712662, 35.434166, 29.067184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.140400, 35.606754, 28.307985>,  <45.277969, 35.846718, 29.052042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.140400, 35.606754, 28.307985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.807095, 35.566292, 28.525404>,  <44.607113, 35.542015, 28.655855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.807095, 35.566292, 28.525404>,  <45.140400, 35.606754, 28.307985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807095, 35.566292, 28.525404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542712, 0.337312, -0.769210,
		-0.105533, -0.935942, -0.335968,
		-0.833262, -0.101157, 0.543545,
		44.557117, 35.535946, 28.688467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542717, 35.338043, 27.844210>,  <45.140400, 35.606754, 28.307985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542717, 35.338043, 27.844210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.361855, 35.498062, 28.163086>,  <44.253338, 35.594074, 28.354412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.361855, 35.498062, 28.163086>,  <44.542717, 35.338043, 27.844210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361855, 35.498062, 28.163086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641270, 0.475412, -0.602293,
		-0.619941, -0.783546, 0.041578,
		-0.452157, 0.400049, 0.797192,
		44.226208, 35.618076, 28.402243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926731, 35.145107, 27.734100>,  <44.542717, 35.338043, 27.844210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926731, 35.145107, 27.734100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932556, 35.472729, 27.963512>,  <43.936050, 35.669300, 28.101160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932556, 35.472729, 27.963512>,  <43.926731, 35.145107, 27.734100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932556, 35.472729, 27.963512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631833, 0.452103, -0.629595,
		-0.774968, -0.353205, 0.524091,
		0.014567, 0.819054, 0.573532,
		43.936928, 35.718445, 28.135572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289116, 35.257553, 27.766994>,  <43.926731, 35.145107, 27.734100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289116, 35.257553, 27.766994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.462868, 35.604652, 27.863602>,  <43.567120, 35.812912, 27.921566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.462868, 35.604652, 27.863602>,  <43.289116, 35.257553, 27.766994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462868, 35.604652, 27.863602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694992, 0.493459, -0.522958,
		-0.572974, 0.059311, 0.817425,
		0.434382, 0.867745, 0.241518,
		43.593182, 35.864975, 27.936058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753605, 35.752693, 27.806200>,  <43.289116, 35.257553, 27.766994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753605, 35.752693, 27.806200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085976, 35.974857, 27.793079>,  <43.285397, 36.108158, 27.785208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085976, 35.974857, 27.793079>,  <42.753605, 35.752693, 27.806200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085976, 35.974857, 27.793079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444521, 0.627258, -0.639491,
		-0.334609, 0.545950, 0.768098,
		0.830926, 0.555415, -0.032800,
		43.335255, 36.141483, 27.783239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548916, 36.402176, 27.950657>,  <42.753605, 35.752693, 27.806200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548916, 36.402176, 27.950657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898182, 36.443420, 27.760101>,  <43.107742, 36.468166, 27.645769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898182, 36.443420, 27.760101>,  <42.548916, 36.402176, 27.950657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898182, 36.443420, 27.760101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460313, 0.495836, -0.736382,
		0.160278, 0.862272, 0.480413,
		0.873168, 0.103115, -0.476387,
		43.160133, 36.474354, 27.617186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.128418, 36.673447, 44.775173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965946, 36.348499, 44.607807>,  <39.868462, 36.153530, 44.507389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965946, 36.348499, 44.607807>,  <40.128418, 36.673447, 44.775173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965946, 36.348499, 44.607807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379348, 0.266664, -0.885994,
		0.831333, -0.518597, 0.199858,
		-0.406179, -0.812371, -0.418415,
		39.844093, 36.104790, 44.482281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698421, 36.239819, 44.410957>,  <40.128418, 36.673447, 44.775173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698421, 36.239819, 44.410957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343727, 36.143131, 44.253338>,  <40.130909, 36.085117, 44.158768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343727, 36.143131, 44.253338>,  <40.698421, 36.239819, 44.410957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343727, 36.143131, 44.253338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320342, 0.293260, -0.900766,
		0.333291, -0.924970, -0.182611,
		-0.886735, -0.241720, -0.394048,
		40.077705, 36.070618, 44.135124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842541, 35.731445, 43.816219>,  <40.698421, 36.239819, 44.410957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842541, 35.731445, 43.816219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505116, 35.942104, 43.774174>,  <40.302662, 36.068501, 43.748947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505116, 35.942104, 43.774174>,  <40.842541, 35.731445, 43.816219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505116, 35.942104, 43.774174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282483, 0.268662, -0.920882,
		-0.456741, -0.806512, -0.375402,
		-0.843559, 0.526649, -0.105117,
		40.252048, 36.100098, 43.742638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721905, 35.706821, 43.049999>,  <40.842541, 35.731445, 43.816219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721905, 35.706821, 43.049999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482613, 35.992641, 43.195076>,  <40.339039, 36.164131, 43.282120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482613, 35.992641, 43.195076>,  <40.721905, 35.706821, 43.049999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482613, 35.992641, 43.195076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144074, 0.541148, -0.828493,
		-0.788265, -0.443376, -0.426679,
		-0.598231, 0.714546, 0.362689,
		40.303143, 36.207005, 43.303883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358963, 35.926003, 42.485920>,  <40.721905, 35.706821, 43.049999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358963, 35.926003, 42.485920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205505, 36.210297, 42.721775>,  <40.113430, 36.380871, 42.863289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205505, 36.210297, 42.721775>,  <40.358963, 35.926003, 42.485920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205505, 36.210297, 42.721775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161543, 0.577004, -0.800606,
		-0.909243, -0.402399, -0.106549,
		-0.383643, 0.710733, 0.589642,
		40.090412, 36.423515, 42.898666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640640, 35.978176, 42.413845>,  <40.358963, 35.926003, 42.485920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640640, 35.978176, 42.413845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779007, 36.326752, 42.552952>,  <39.862026, 36.535896, 42.636417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779007, 36.326752, 42.552952>,  <39.640640, 35.978176, 42.413845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779007, 36.326752, 42.552952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145659, 0.416032, -0.897608,
		-0.926891, 0.259840, 0.270844,
		0.345915, 0.871436, 0.347768,
		39.882782, 36.588181, 42.657284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065258, 36.536255, 42.416973>,  <39.640640, 35.978176, 42.413845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065258, 36.536255, 42.416973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445290, 36.649910, 42.365417>,  <39.673309, 36.718102, 42.334484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445290, 36.649910, 42.365417>,  <39.065258, 36.536255, 42.416973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445290, 36.649910, 42.365417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244110, 0.419661, -0.874240,
		-0.194312, 0.862062, 0.468072,
		0.950081, 0.284136, -0.128893,
		39.730312, 36.735149, 42.326748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966415, 37.152718, 42.265301>,  <39.065258, 36.536255, 42.416973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966415, 37.152718, 42.265301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347549, 37.110363, 42.151535>,  <39.576229, 37.084949, 42.083275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347549, 37.110363, 42.151535>,  <38.966415, 37.152718, 42.265301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347549, 37.110363, 42.151535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190467, 0.520982, -0.832046,
		0.236280, 0.846974, 0.476242,
		0.952835, -0.105887, -0.284418,
		39.633400, 37.078598, 42.066208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030277, 37.763405, 41.858597>,  <38.966415, 37.152718, 42.265301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030277, 37.763405, 41.858597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336388, 37.529476, 41.751019>,  <39.520054, 37.389118, 41.686470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336388, 37.529476, 41.751019>,  <39.030277, 37.763405, 41.858597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336388, 37.529476, 41.751019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076882, 0.331783, -0.940218,
		0.639094, 0.740204, 0.208943,
		0.765277, -0.584823, -0.268949,
		39.565971, 37.354031, 41.670334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368382, 38.135460, 41.305271>,  <39.030277, 37.763405, 41.858597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368382, 38.135460, 41.305271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511528, 37.768345, 41.236454>,  <39.597416, 37.548077, 41.195164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511528, 37.768345, 41.236454>,  <39.368382, 38.135460, 41.305271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511528, 37.768345, 41.236454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187457, 0.251110, -0.949633,
		0.914762, 0.307593, 0.261910,
		0.357868, -0.917786, -0.172045,
		39.618889, 37.493008, 41.184841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813446, 38.206589, 40.702671>,  <39.368382, 38.135460, 41.305271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813446, 38.206589, 40.702671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748150, 37.812160, 40.689911>,  <39.708973, 37.575504, 40.682255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748150, 37.812160, 40.689911>,  <39.813446, 38.206589, 40.702671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748150, 37.812160, 40.689911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087736, 0.017701, -0.995987,
		0.982677, -0.165387, 0.083625,
		-0.163243, -0.986070, -0.031905,
		39.699177, 37.516338, 40.680340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314304, 38.007790, 40.226395>,  <39.813446, 38.206589, 40.702671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314304, 38.007790, 40.226395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045151, 37.713818, 40.260094>,  <39.883659, 37.537434, 40.280312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045151, 37.713818, 40.260094>,  <40.314304, 38.007790, 40.226395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045151, 37.713818, 40.260094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103254, -0.019464, -0.994465,
		0.732506, -0.677859, -0.062788,
		-0.672884, -0.734935, 0.084249,
		39.843285, 37.493336, 40.285370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475266, 37.513775, 39.617802>,  <40.314304, 38.007790, 40.226395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475266, 37.513775, 39.617802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104549, 37.434921, 39.745678>,  <39.882122, 37.387608, 39.822403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104549, 37.434921, 39.745678>,  <40.475266, 37.513775, 39.617802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104549, 37.434921, 39.745678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308069, -0.087916, -0.947293,
		0.214853, -0.976426, 0.020747,
		-0.926786, -0.197137, 0.319695,
		39.826515, 37.375782, 39.841587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772282, 36.846195, 39.695621>,  <40.475266, 37.513775, 39.617802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772282, 36.846195, 39.695621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073101, 37.105927, 39.650375>,  <41.253593, 37.261765, 39.623226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073101, 37.105927, 39.650375>,  <40.772282, 36.846195, 39.695621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073101, 37.105927, 39.650375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658304, 0.731508, -0.177570,
		-0.032554, 0.208009, 0.977585,
		0.752048, 0.649329, -0.113120,
		41.298714, 37.300724, 39.616440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317833, 36.280178, 39.889660>,  <40.772282, 36.846195, 39.695621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317833, 36.280178, 39.889660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179314, 36.055439, 39.589153>,  <41.096203, 35.920597, 39.408848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179314, 36.055439, 39.589153>,  <41.317833, 36.280178, 39.889660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179314, 36.055439, 39.589153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073020, -0.814534, 0.575502,
		-0.935278, 0.144437, 0.323098,
		-0.346298, -0.561847, -0.751269,
		41.075424, 35.886887, 39.363773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583218, 36.091579, 39.930447>,  <41.317833, 36.280178, 39.889660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583218, 36.091579, 39.930447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865364, 35.841690, 39.796471>,  <41.034653, 35.691757, 39.716084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865364, 35.841690, 39.796471>,  <40.583218, 36.091579, 39.930447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865364, 35.841690, 39.796471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163163, -0.602921, 0.780939,
		-0.689811, -0.496197, -0.527210,
		0.705364, -0.624721, -0.334941,
		41.076973, 35.654274, 39.695988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324398, 35.441124, 39.990261>,  <40.583218, 36.091579, 39.930447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324398, 35.441124, 39.990261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712482, 35.353691, 39.948475>,  <40.945332, 35.301231, 39.923405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712482, 35.353691, 39.948475>,  <40.324398, 35.441124, 39.990261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712482, 35.353691, 39.948475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074076, -0.678225, 0.731111,
		-0.230657, -0.701594, -0.674213,
		0.970212, -0.218579, -0.104466,
		41.003548, 35.288116, 39.917133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369713, 34.800945, 40.009621>,  <40.324398, 35.441124, 39.990261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369713, 34.800945, 40.009621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747272, 34.905228, 40.090694>,  <40.973808, 34.967796, 40.139339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747272, 34.905228, 40.090694>,  <40.369713, 34.800945, 40.009621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747272, 34.905228, 40.090694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047285, -0.714153, 0.698391,
		0.326818, -0.649630, -0.686419,
		0.943904, 0.260704, 0.202681,
		41.030445, 34.983440, 40.151497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824493, 34.135025, 39.963238>,  <40.369713, 34.800945, 40.009621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824493, 34.135025, 39.963238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043072, 34.396694, 40.172409>,  <41.174217, 34.553696, 40.297913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043072, 34.396694, 40.172409>,  <40.824493, 34.135025, 39.963238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043072, 34.396694, 40.172409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325078, -0.741116, 0.587428,
		0.771829, -0.151007, -0.617638,
		0.546447, 0.654175, 0.522926,
		41.207005, 34.592945, 40.329288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463379, 33.904655, 40.045460>,  <40.824493, 34.135025, 39.963238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463379, 33.904655, 40.045460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433010, 34.158413, 40.353168>,  <41.414787, 34.310669, 40.537792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433010, 34.158413, 40.353168>,  <41.463379, 33.904655, 40.045460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433010, 34.158413, 40.353168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265047, -0.730901, 0.628915,
		0.961242, 0.251643, -0.112651,
		-0.075925, 0.634397, 0.769269,
		41.410233, 34.348732, 40.583950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961147, 33.594093, 40.479759>,  <41.463379, 33.904655, 40.045460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961147, 33.594093, 40.479759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717846, 33.832748, 40.689156>,  <41.571865, 33.975941, 40.814793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717846, 33.832748, 40.689156>,  <41.961147, 33.594093, 40.479759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717846, 33.832748, 40.689156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139759, -0.568721, 0.810570,
		0.781339, 0.566199, 0.262543,
		-0.608258, 0.596637, 0.523495,
		41.535370, 34.011738, 40.846203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292927, 33.809776, 41.123306>,  <41.961147, 33.594093, 40.479759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292927, 33.809776, 41.123306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908981, 33.877041, 41.213097>,  <41.678616, 33.917400, 41.266972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908981, 33.877041, 41.213097>,  <42.292927, 33.809776, 41.123306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908981, 33.877041, 41.213097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128328, -0.448332, 0.884607,
		0.249396, 0.877907, 0.408757,
		-0.959861, 0.168162, 0.224472,
		41.621021, 33.927490, 41.280437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291111, 33.769302, 41.860859>,  <42.292927, 33.809776, 41.123306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291111, 33.769302, 41.860859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900101, 33.758675, 41.777199>,  <41.665497, 33.752300, 41.727005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900101, 33.758675, 41.777199>,  <42.291111, 33.769302, 41.860859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900101, 33.758675, 41.777199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188424, -0.334940, 0.923207,
		-0.094577, 0.941865, 0.322407,
		-0.977523, -0.026565, -0.209147,
		41.606842, 33.750706, 41.714455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830700, 34.145039, 42.449894>,  <42.291111, 33.769302, 41.860859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830700, 34.145039, 42.449894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581306, 33.898209, 42.257858>,  <41.431671, 33.750111, 42.142635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581306, 33.898209, 42.257858>,  <41.830700, 34.145039, 42.449894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581306, 33.898209, 42.257858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284245, -0.393127, 0.874446,
		-0.728338, 0.681663, 0.069706,
		-0.623481, -0.617078, -0.480089,
		41.394260, 33.713085, 42.113831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203564, 34.260590, 42.808865>,  <41.830700, 34.145039, 42.449894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203564, 34.260590, 42.808865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131458, 33.909355, 42.631569>,  <41.088196, 33.698612, 42.525192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131458, 33.909355, 42.631569>,  <41.203564, 34.260590, 42.808865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131458, 33.909355, 42.631569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504373, -0.304355, 0.808069,
		-0.844459, 0.369228, -0.388019,
		-0.180266, -0.878088, -0.443244,
		41.077377, 33.645927, 42.498596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511337, 34.060345, 43.004906>,  <41.203564, 34.260590, 42.808865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511337, 34.060345, 43.004906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659382, 33.712261, 42.874825>,  <40.748211, 33.503410, 42.796776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659382, 33.712261, 42.874825>,  <40.511337, 34.060345, 43.004906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659382, 33.712261, 42.874825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393622, -0.463988, 0.793585,
		-0.841474, -0.165708, -0.514259,
		0.370113, -0.870205, -0.325208,
		40.770416, 33.451199, 42.777264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952503, 33.550091, 42.987091>,  <40.511337, 34.060345, 43.004906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952503, 33.550091, 42.987091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283928, 33.326164, 42.990795>,  <40.482784, 33.191807, 42.993019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283928, 33.326164, 42.990795>,  <39.952503, 33.550091, 42.987091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283928, 33.326164, 42.990795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329288, -0.473855, 0.816719,
		-0.452819, -0.679759, -0.576961,
		0.828568, -0.559812, 0.009266,
		40.532497, 33.158218, 42.993572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737923, 32.809555, 42.929764>,  <39.952503, 33.550091, 42.987091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737923, 32.809555, 42.929764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106617, 32.808285, 43.084885>,  <40.327835, 32.807522, 43.177956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106617, 32.808285, 43.084885>,  <39.737923, 32.809555, 42.929764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106617, 32.808285, 43.084885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325465, -0.550084, 0.769078,
		0.210881, -0.835103, -0.508066,
		0.921738, -0.003174, 0.387799,
		40.383137, 32.807331, 43.201225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691441, 32.115948, 42.788788>,  <39.737923, 32.809555, 42.929764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691441, 32.115948, 42.788788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367783, 31.966084, 42.607719>,  <39.173588, 31.876165, 42.499077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367783, 31.966084, 42.607719>,  <39.691441, 32.115948, 42.788788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367783, 31.966084, 42.607719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220384, 0.520635, -0.824846,
		0.544715, -0.767182, -0.338700,
		-0.809146, -0.374662, -0.452672,
		39.125038, 31.853685, 42.471916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853737, 32.004333, 42.092247>,  <39.691441, 32.115948, 42.788788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853737, 32.004333, 42.092247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454483, 31.988621, 42.073536>,  <39.214931, 31.979195, 42.062309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454483, 31.988621, 42.073536>,  <39.853737, 32.004333, 42.092247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454483, 31.988621, 42.073536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024081, 0.450733, -0.892334,
		0.056133, -0.891795, -0.448945,
		-0.998133, -0.039278, -0.046776,
		39.155045, 31.976837, 42.059502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657494, 31.730022, 41.423023>,  <39.853737, 32.004333, 42.092247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657494, 31.730022, 41.423023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304394, 31.872124, 41.546021>,  <39.092533, 31.957384, 41.619820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304394, 31.872124, 41.546021>,  <39.657494, 31.730022, 41.423023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304394, 31.872124, 41.546021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198024, 0.312177, -0.929157,
		-0.426079, -0.881101, -0.205224,
		-0.882747, 0.355255, 0.307492,
		39.039570, 31.978701, 41.638268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166901, 31.580830, 40.867199>,  <39.657494, 31.730022, 41.423023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166901, 31.580830, 40.867199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005352, 31.875221, 41.084534>,  <38.908421, 32.051857, 41.214935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005352, 31.875221, 41.084534>,  <39.166901, 31.580830, 40.867199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005352, 31.875221, 41.084534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394397, 0.395821, -0.829323,
		-0.825430, -0.549235, 0.130406,
		-0.403876, 0.735980, 0.543339,
		38.884190, 32.096016, 41.247536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518475, 31.662350, 40.482834>,  <39.166901, 31.580830, 40.867199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518475, 31.662350, 40.482834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535072, 31.988205, 40.714230>,  <38.545033, 32.183720, 40.853065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535072, 31.988205, 40.714230>,  <38.518475, 31.662350, 40.482834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535072, 31.988205, 40.714230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491339, 0.520775, -0.698125,
		-0.869979, -0.255263, 0.421873,
		0.041495, 0.814637, 0.578485,
		38.547520, 32.232597, 40.887775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849838, 31.930153, 40.551491>,  <38.518475, 31.662350, 40.482834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849838, 31.930153, 40.551491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104458, 32.230560, 40.621662>,  <38.257229, 32.410805, 40.663765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104458, 32.230560, 40.621662>,  <37.849838, 31.930153, 40.551491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104458, 32.230560, 40.621662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416370, 0.526115, -0.741511,
		-0.649181, 0.398970, 0.647601,
		0.636553, 0.751016, 0.175425,
		38.295425, 32.455864, 40.674290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432827, 32.426834, 40.615437>,  <37.849838, 31.930153, 40.551491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432827, 32.426834, 40.615437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776985, 32.594452, 40.499424>,  <37.983479, 32.695023, 40.429817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776985, 32.594452, 40.499424>,  <37.432827, 32.426834, 40.615437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776985, 32.594452, 40.499424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497009, 0.564100, -0.659373,
		-0.112704, 0.711469, 0.693621,
		0.860395, 0.419049, -0.290030,
		38.035103, 32.720165, 40.412415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403389, 33.156231, 40.664078>,  <37.432827, 32.426834, 40.615437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403389, 33.156231, 40.664078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689461, 33.082233, 40.394470>,  <37.861103, 33.037834, 40.232704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689461, 33.082233, 40.394470>,  <37.403389, 33.156231, 40.664078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689461, 33.082233, 40.394470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505511, 0.529058, -0.681583,
		0.482681, 0.828176, 0.284855,
		0.715176, -0.184990, -0.674019,
		37.904015, 33.026737, 40.192265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405579, 33.741871, 40.264221>,  <37.403389, 33.156231, 40.664078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405579, 33.741871, 40.264221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633095, 33.529030, 40.013351>,  <37.769604, 33.401325, 39.862827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633095, 33.529030, 40.013351>,  <37.405579, 33.741871, 40.264221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633095, 33.529030, 40.013351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299020, 0.576581, -0.760357,
		0.766204, 0.620019, 0.168843,
		0.568787, -0.532101, -0.627176,
		37.803730, 33.369400, 39.825199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709511, 34.255173, 39.819584>,  <37.405579, 33.741871, 40.264221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709511, 34.255173, 39.819584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746330, 33.921459, 39.602146>,  <37.768421, 33.721230, 39.471684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746330, 33.921459, 39.602146>,  <37.709511, 34.255173, 39.819584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746330, 33.921459, 39.602146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371856, 0.477618, -0.795993,
		0.923715, 0.275411, -0.266268,
		0.092051, -0.834284, -0.543596,
		37.773945, 33.671173, 39.439068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085442, 34.498013, 39.193710>,  <37.709511, 34.255173, 39.819584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085442, 34.498013, 39.193710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863197, 34.172592, 39.125092>,  <37.729851, 33.977341, 39.083920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863197, 34.172592, 39.125092>,  <38.085442, 34.498013, 39.193710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863197, 34.172592, 39.125092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267112, 0.370041, -0.889787,
		0.787369, -0.448551, -0.422908,
		-0.555608, -0.813555, -0.171546,
		37.696514, 33.928524, 39.073627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230968, 34.317238, 38.460064>,  <38.085442, 34.498013, 39.193710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230968, 34.317238, 38.460064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871452, 34.221828, 38.607182>,  <37.655743, 34.164581, 38.695454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871452, 34.221828, 38.607182>,  <38.230968, 34.317238, 38.460064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871452, 34.221828, 38.607182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436202, 0.569960, -0.696329,
		-0.043537, -0.786290, -0.616322,
		-0.898795, -0.238525, 0.367796,
		37.601814, 34.150272, 38.717522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.370937, 29.818573, 45.566490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.976154, 29.882496, 45.558716>,  <38.739285, 29.920849, 45.554050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.976154, 29.882496, 45.558716>,  <39.370937, 29.818573, 45.566490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976154, 29.882496, 45.558716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098509, 0.504050, -0.858038,
		-0.127327, -0.848761, -0.513218,
		-0.986957, 0.159808, -0.019432,
		38.680069, 29.930439, 45.552887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135777, 29.454277, 44.892582>,  <39.370937, 29.818573, 45.566490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135777, 29.454277, 44.892582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.880005, 29.736889, 45.013874>,  <38.726543, 29.906456, 45.086651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.880005, 29.736889, 45.013874>,  <39.135777, 29.454277, 44.892582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880005, 29.736889, 45.013874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114666, 0.302354, -0.946274,
		-0.760254, -0.639842, -0.112318,
		-0.639425, 0.706530, 0.303234,
		38.688179, 29.948849, 45.104843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619251, 29.459097, 44.391499>,  <39.135777, 29.454277, 44.892582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619251, 29.459097, 44.391499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531555, 29.811995, 44.558151>,  <38.478939, 30.023733, 44.658142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.531555, 29.811995, 44.558151>,  <38.619251, 29.459097, 44.391499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531555, 29.811995, 44.558151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193247, 0.379298, -0.904869,
		-0.956342, -0.278894, 0.087334,
		-0.219237, 0.882242, 0.416634,
		38.465786, 30.076668, 44.683140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274876, 29.720234, 43.933407>,  <38.619251, 29.459097, 44.391499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274876, 29.720234, 43.933407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371628, 30.059166, 44.122524>,  <38.429680, 30.262526, 44.235992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371628, 30.059166, 44.122524>,  <38.274876, 29.720234, 43.933407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371628, 30.059166, 44.122524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035483, 0.479207, -0.876984,
		-0.969658, 0.228897, 0.085843,
		0.241876, 0.847329, 0.472789,
		38.444191, 30.313364, 44.264362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699566, 30.328796, 43.751274>,  <38.274876, 29.720234, 43.933407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699566, 30.328796, 43.751274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.044521, 30.498020, 43.862495>,  <38.251495, 30.599554, 43.929230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.044521, 30.498020, 43.862495>,  <37.699566, 30.328796, 43.751274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044521, 30.498020, 43.862495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010084, 0.534776, -0.844934,
		-0.506153, 0.731462, 0.456916,
		0.862385, 0.423058, 0.278054,
		38.303238, 30.624937, 43.945911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643944, 31.046484, 43.660465>,  <37.699566, 30.328796, 43.751274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643944, 31.046484, 43.660465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.039570, 30.990240, 43.678272>,  <38.276947, 30.956493, 43.688957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.039570, 30.990240, 43.678272>,  <37.643944, 31.046484, 43.660465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039570, 30.990240, 43.678272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123009, 0.619886, -0.774990,
		0.081374, 0.771991, 0.630403,
		0.989064, -0.140609, 0.044520,
		38.336288, 30.948057, 43.691628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959442, 31.706726, 43.524017>,  <37.643944, 31.046484, 43.660465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959442, 31.706726, 43.524017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240162, 31.441147, 43.420753>,  <38.408596, 31.281799, 43.358795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240162, 31.441147, 43.420753>,  <37.959442, 31.706726, 43.524017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240162, 31.441147, 43.420753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380488, 0.655733, -0.652106,
		0.602246, 0.359425, 0.712821,
		0.701804, -0.663948, -0.258156,
		38.450703, 31.241962, 43.343307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505409, 32.000748, 43.601070>,  <37.959442, 31.706726, 43.524017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505409, 32.000748, 43.601070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576580, 31.705177, 43.341125>,  <38.619282, 31.527834, 43.185158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576580, 31.705177, 43.341125>,  <38.505409, 32.000748, 43.601070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576580, 31.705177, 43.341125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288091, 0.670582, -0.683611,
		0.940927, -0.065584, 0.332197,
		0.177932, -0.738931, -0.649863,
		38.629959, 31.483498, 43.146168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149220, 32.174801, 43.241226>,  <38.505409, 32.000748, 43.601070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149220, 32.174801, 43.241226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.024414, 31.881248, 42.999874>,  <38.949532, 31.705116, 42.855064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.024414, 31.881248, 42.999874>,  <39.149220, 32.174801, 43.241226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024414, 31.881248, 42.999874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232475, 0.556802, -0.797450,
		0.921196, -0.389086, -0.003121,
		-0.312014, -0.733883, -0.603377,
		38.930809, 31.661083, 42.818863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835632, 32.065475, 43.495369>,  <39.149220, 32.174801, 43.241226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835632, 32.065475, 43.495369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.158943, 32.287800, 43.573093>,  <40.352932, 32.421196, 43.619728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.158943, 32.287800, 43.573093>,  <39.835632, 32.065475, 43.495369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158943, 32.287800, 43.573093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092467, -0.445742, 0.890373,
		0.581493, -0.701702, -0.411678,
		0.808279, 0.555812, 0.194312,
		40.401428, 32.454544, 43.631386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433891, 31.590425, 43.618626>,  <39.835632, 32.065475, 43.495369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433891, 31.590425, 43.618626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.495159, 31.951252, 43.780025>,  <40.531918, 32.167747, 43.876865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.495159, 31.951252, 43.780025>,  <40.433891, 31.590425, 43.618626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495159, 31.951252, 43.780025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012234, -0.410021, 0.911994,
		0.988124, -0.134751, -0.073837,
		0.153167, 0.902067, 0.403503,
		40.541111, 32.221870, 43.901077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037960, 31.575558, 44.048325>,  <40.433891, 31.590425, 43.618626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037960, 31.575558, 44.048325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.850761, 31.910088, 44.162544>,  <40.738441, 32.110806, 44.231075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.850761, 31.910088, 44.162544>,  <41.037960, 31.575558, 44.048325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850761, 31.910088, 44.162544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084725, -0.279171, 0.956496,
		0.879660, 0.471829, 0.059794,
		-0.467995, 0.836326, 0.285551,
		40.710361, 32.160984, 44.248211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442322, 31.808290, 44.614777>,  <41.037960, 31.575558, 44.048325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442322, 31.808290, 44.614777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.085571, 31.983643, 44.659298>,  <40.871521, 32.088852, 44.686012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.085571, 31.983643, 44.659298>,  <41.442322, 31.808290, 44.614777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085571, 31.983643, 44.659298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052965, -0.143165, 0.988281,
		0.449176, 0.887315, 0.104466,
		-0.891872, 0.438379, 0.111303,
		40.818008, 32.115154, 44.692688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482311, 32.101357, 45.234688>,  <41.442322, 31.808290, 44.614777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482311, 32.101357, 45.234688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.085110, 32.091297, 45.188526>,  <40.846790, 32.085262, 45.160831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.085110, 32.091297, 45.188526>,  <41.482311, 32.101357, 45.234688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085110, 32.091297, 45.188526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112599, -0.093374, 0.989243,
		-0.035655, 0.995313, 0.089888,
		-0.993001, -0.025150, -0.115400,
		40.787209, 32.083752, 45.153908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273792, 32.487255, 45.702679>,  <41.482311, 32.101357, 45.234688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273792, 32.487255, 45.702679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969906, 32.238949, 45.625237>,  <40.787575, 32.089966, 45.578773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969906, 32.238949, 45.625237>,  <41.273792, 32.487255, 45.702679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969906, 32.238949, 45.625237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179172, -0.086366, 0.980020,
		-0.625085, 0.779224, -0.045610,
		-0.759715, -0.620767, -0.193601,
		40.741993, 32.052719, 45.567158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755623, 32.655190, 46.081734>,  <41.273792, 32.487255, 45.702679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755623, 32.655190, 46.081734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.603500, 32.294422, 45.999855>,  <40.512226, 32.077961, 45.950729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.603500, 32.294422, 45.999855>,  <40.755623, 32.655190, 46.081734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603500, 32.294422, 45.999855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413895, -0.031946, 0.909764,
		-0.827076, 0.430714, -0.361152,
		-0.380311, -0.901923, -0.204692,
		40.489407, 32.023846, 45.938446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148727, 32.678078, 46.452915>,  <40.755623, 32.655190, 46.081734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148727, 32.678078, 46.452915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.229069, 32.291718, 46.387562>,  <40.277275, 32.059902, 46.348351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.229069, 32.291718, 46.387562>,  <40.148727, 32.678078, 46.452915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229069, 32.291718, 46.387562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230502, -0.208703, 0.950427,
		-0.952116, -0.153238, -0.264561,
		0.200856, -0.965899, -0.163388,
		40.289326, 32.001949, 46.338547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594463, 32.258511, 46.800610>,  <40.148727, 32.678078, 46.452915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594463, 32.258511, 46.800610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886925, 31.986826, 46.775070>,  <40.062401, 31.823814, 46.759747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886925, 31.986826, 46.775070>,  <39.594463, 32.258511, 46.800610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886925, 31.986826, 46.775070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181476, -0.283858, 0.941537,
		-0.657628, -0.676825, -0.330806,
		0.731158, -0.679214, -0.063845,
		40.106274, 31.783062, 46.755917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251408, 31.656166, 47.011562>,  <39.594463, 32.258511, 46.800610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251408, 31.656166, 47.011562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.643349, 31.576876, 47.021366>,  <39.878513, 31.529303, 47.027248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.643349, 31.576876, 47.021366>,  <39.251408, 31.656166, 47.011562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643349, 31.576876, 47.021366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092763, -0.342959, 0.934759,
		-0.176886, -0.918198, -0.354436,
		0.979850, -0.198224, 0.024510,
		39.937305, 31.517408, 47.028721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300713, 30.975773, 47.229691>,  <39.251408, 31.656166, 47.011562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300713, 30.975773, 47.229691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.639164, 31.148254, 47.354992>,  <39.842236, 31.251743, 47.430172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.639164, 31.148254, 47.354992>,  <39.300713, 30.975773, 47.229691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639164, 31.148254, 47.354992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155989, -0.361656, 0.919170,
		0.509638, -0.826601, -0.238745,
		0.846130, 0.431203, 0.313254,
		39.893002, 31.277615, 47.448967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636787, 30.483015, 47.753479>,  <39.300713, 30.975773, 47.229691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636787, 30.483015, 47.753479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.878445, 30.796898, 47.808971>,  <40.023438, 30.985228, 47.842266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.878445, 30.796898, 47.808971>,  <39.636787, 30.483015, 47.753479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878445, 30.796898, 47.808971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188492, -0.309873, 0.931906,
		0.774262, -0.536856, -0.335119,
		0.604144, 0.784707, 0.138730,
		40.059689, 31.032310, 47.850590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335644, 30.188486, 48.021996>,  <39.636787, 30.483015, 47.753479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335644, 30.188486, 48.021996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.265297, 30.565239, 48.136490>,  <40.223091, 30.791290, 48.205185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.265297, 30.565239, 48.136490>,  <40.335644, 30.188486, 48.021996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265297, 30.565239, 48.136490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237062, -0.241687, 0.940951,
		0.955444, 0.233333, -0.180781,
		-0.175863, 0.941883, 0.286233,
		40.212540, 30.847803, 48.222359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777931, 30.264435, 48.601620>,  <40.335644, 30.188486, 48.021996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777931, 30.264435, 48.601620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528870, 30.575180, 48.639107>,  <40.379433, 30.761627, 48.661598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528870, 30.575180, 48.639107>,  <40.777931, 30.264435, 48.601620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528870, 30.575180, 48.639107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092908, -0.045520, 0.994634,
		0.776958, 0.628024, -0.043833,
		-0.622659, 0.776861, 0.093715,
		40.342072, 30.808239, 48.667221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.942207, 32.436493, 47.917980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.005653, 32.050350, 47.835102>,  <34.043720, 31.818665, 47.785374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.005653, 32.050350, 47.835102>,  <33.942207, 32.436493, 47.917980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005653, 32.050350, 47.835102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174155, 0.179209, -0.968274,
		0.971859, 0.189669, -0.139695,
		0.158617, -0.965355, -0.207198,
		34.053238, 31.760744, 47.772942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493782, 32.378090, 47.585403>,  <33.942207, 32.436493, 47.917980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493782, 32.378090, 47.585403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.303673, 32.043785, 47.475410>,  <34.189606, 31.843203, 47.409412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.303673, 32.043785, 47.475410>,  <34.493782, 32.378090, 47.585403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303673, 32.043785, 47.475410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150587, 0.230661, -0.961311,
		0.866856, -0.498295, 0.016228,
		-0.475273, -0.835761, -0.274987,
		34.161091, 31.793056, 47.392914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929211, 31.918745, 47.124542>,  <34.493782, 32.378090, 47.585403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929211, 31.918745, 47.124542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.542225, 31.845093, 47.055138>,  <34.310032, 31.800901, 47.013496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.542225, 31.845093, 47.055138>,  <34.929211, 31.918745, 47.124542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542225, 31.845093, 47.055138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110855, 0.307948, -0.944923,
		0.227417, -0.933416, -0.277519,
		-0.967467, -0.184127, -0.173506,
		34.251984, 31.789854, 47.003086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958332, 31.878710, 46.420792>,  <34.929211, 31.918745, 47.124542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958332, 31.878710, 46.420792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568768, 31.912752, 46.504929>,  <34.335030, 31.933178, 46.555412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568768, 31.912752, 46.504929>,  <34.958332, 31.878710, 46.420792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568768, 31.912752, 46.504929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165657, 0.366832, -0.915419,
		-0.155069, -0.926386, -0.343165,
		-0.973915, 0.085106, 0.210347,
		34.276592, 31.938284, 46.568031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807560, 31.902996, 45.820484>,  <34.958332, 31.878710, 46.420792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807560, 31.902996, 45.820484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.471554, 32.007549, 46.010662>,  <34.269951, 32.070282, 46.124767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.471554, 32.007549, 46.010662>,  <34.807560, 31.902996, 45.820484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471554, 32.007549, 46.010662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330044, 0.449348, -0.830155,
		-0.430629, -0.854263, -0.291193,
		-0.840018, 0.261382, 0.475447,
		34.219547, 32.085964, 46.153297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228050, 31.743208, 45.429790>,  <34.807560, 31.902996, 45.820484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228050, 31.743208, 45.429790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.089016, 32.036098, 45.664066>,  <34.005596, 32.211834, 45.804630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.089016, 32.036098, 45.664066>,  <34.228050, 31.743208, 45.429790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089016, 32.036098, 45.664066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193137, 0.555330, -0.808892,
		-0.917542, -0.394277, -0.051605,
		-0.347586, 0.732226, 0.585688,
		33.984741, 32.255768, 45.839771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479351, 31.888599, 45.277893>,  <34.228050, 31.743208, 45.429790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479351, 31.888599, 45.277893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.658863, 32.216785, 45.419559>,  <33.766571, 32.413696, 45.504559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.658863, 32.216785, 45.419559>,  <33.479351, 31.888599, 45.277893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658863, 32.216785, 45.419559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235624, 0.490936, -0.838727,
		-0.862020, 0.292952, 0.413643,
		0.448779, 0.820464, 0.354170,
		33.793495, 32.462925, 45.525810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012592, 32.359241, 45.108540>,  <33.479351, 31.888599, 45.277893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012592, 32.359241, 45.108540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.341743, 32.568233, 45.197872>,  <33.539234, 32.693630, 45.251472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.341743, 32.568233, 45.197872>,  <33.012592, 32.359241, 45.108540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341743, 32.568233, 45.197872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113898, 0.536740, -0.836025,
		-0.556682, 0.662511, 0.501183,
		0.822881, 0.522483, 0.223334,
		33.588608, 32.724979, 45.264874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844456, 33.093410, 44.955391>,  <33.012592, 32.359241, 45.108540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844456, 33.093410, 44.955391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.242462, 33.107826, 44.992588>,  <33.481266, 33.116474, 45.014908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.242462, 33.107826, 44.992588>,  <32.844456, 33.093410, 44.955391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242462, 33.107826, 44.992588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063873, 0.485846, -0.871707,
		-0.076594, 0.873301, 0.481122,
		0.995014, 0.036037, 0.092993,
		33.540966, 33.118637, 45.020485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074631, 33.841415, 45.010380>,  <32.844456, 33.093410, 44.955391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074631, 33.841415, 45.010380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372234, 33.607723, 44.880680>,  <33.550797, 33.467510, 44.802860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372234, 33.607723, 44.880680>,  <33.074631, 33.841415, 45.010380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372234, 33.607723, 44.880680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217986, 0.670952, -0.708735,
		0.631616, 0.456621, 0.626545,
		0.744005, -0.584226, -0.324247,
		33.595436, 33.432457, 44.783405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534489, 34.330681, 44.826168>,  <33.074631, 33.841415, 45.010380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534489, 34.330681, 44.826168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687386, 33.995346, 44.670692>,  <33.779121, 33.794144, 44.577408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687386, 33.995346, 44.670692>,  <33.534489, 34.330681, 44.826168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687386, 33.995346, 44.670692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345938, 0.519867, -0.781067,
		0.856866, 0.164092, 0.488727,
		0.382240, -0.838339, -0.388691,
		33.802059, 33.743843, 44.554085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183422, 34.450424, 44.691875>,  <33.534489, 34.330681, 44.826168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183422, 34.450424, 44.691875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075108, 34.166077, 44.432232>,  <34.010117, 33.995468, 44.276447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.075108, 34.166077, 44.432232>,  <34.183422, 34.450424, 44.691875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075108, 34.166077, 44.432232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350661, 0.555132, -0.754232,
		0.896499, -0.431855, 0.098950,
		-0.270788, -0.710866, -0.649110,
		33.993870, 33.952816, 44.237499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801495, 34.193176, 44.364628>,  <34.183422, 34.450424, 44.691875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801495, 34.193176, 44.364628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479992, 34.144981, 44.131577>,  <34.287090, 34.116066, 43.991745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479992, 34.144981, 44.131577>,  <34.801495, 34.193176, 44.364628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479992, 34.144981, 44.131577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440287, 0.538182, -0.718685,
		0.400150, -0.834173, -0.379521,
		-0.803758, -0.120483, -0.582629,
		34.238865, 34.108837, 43.956787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232639, 34.015381, 43.836147>,  <34.801495, 34.193176, 44.364628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232639, 34.015381, 43.836147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.865578, 34.041725, 43.679394>,  <34.645340, 34.057533, 43.585342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.865578, 34.041725, 43.679394>,  <35.232639, 34.015381, 43.836147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865578, 34.041725, 43.679394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333897, 0.662497, -0.670530,
		0.215459, -0.746164, -0.629934,
		-0.917655, 0.065861, -0.391883,
		34.590282, 34.061485, 43.561829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964603, 33.927906, 43.666733>,  <35.232639, 34.015381, 43.836147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964603, 33.927906, 43.666733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.142056, 34.279736, 43.735477>,  <36.248528, 34.490833, 43.776722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.142056, 34.279736, 43.735477>,  <35.964603, 33.927906, 43.666733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142056, 34.279736, 43.735477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151753, -0.115266, 0.981675,
		0.883267, -0.461584, 0.082342,
		0.443634, 0.879576, 0.171857,
		36.275146, 34.543610, 43.787033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474483, 33.892654, 44.119373>,  <35.964603, 33.927906, 43.666733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474483, 33.892654, 44.119373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.418301, 34.287437, 44.150829>,  <36.384590, 34.524307, 44.169704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.418301, 34.287437, 44.150829>,  <36.474483, 33.892654, 44.119373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418301, 34.287437, 44.150829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101607, -0.093378, 0.990433,
		0.984860, 0.131119, 0.113397,
		-0.140454, 0.986959, 0.078641,
		36.376163, 34.583527, 44.174423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014099, 34.211575, 44.535995>,  <36.474483, 33.892654, 44.119373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014099, 34.211575, 44.535995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684990, 34.437046, 44.565151>,  <36.487526, 34.572330, 44.582645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684990, 34.437046, 44.565151>,  <37.014099, 34.211575, 44.535995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684990, 34.437046, 44.565151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029418, -0.170301, 0.984953,
		0.567609, 0.808248, 0.156701,
		-0.822772, 0.563678, 0.072887,
		36.438160, 34.606148, 44.587017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034798, 34.504101, 45.229462>,  <37.014099, 34.211575, 44.535995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034798, 34.504101, 45.229462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.651119, 34.568005, 45.136154>,  <36.420910, 34.606346, 45.080170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.651119, 34.568005, 45.136154>,  <37.034798, 34.504101, 45.229462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651119, 34.568005, 45.136154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250952, -0.101068, 0.962709,
		0.130230, 0.981968, 0.137037,
		-0.959199, 0.159764, -0.233265,
		36.363361, 34.615932, 45.066174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718937, 35.046230, 45.683861>,  <37.034798, 34.504101, 45.229462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718937, 35.046230, 45.683861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421387, 34.818790, 45.543385>,  <36.242855, 34.682327, 45.459099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421387, 34.818790, 45.543385>,  <36.718937, 35.046230, 45.683861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421387, 34.818790, 45.543385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279675, -0.212413, 0.936303,
		-0.606983, 0.794714, -0.001015,
		-0.743877, -0.568604, -0.351193,
		36.198223, 34.648209, 45.438026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152843, 35.240128, 46.109310>,  <36.718937, 35.046230, 45.683861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152843, 35.240128, 46.109310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075752, 34.881966, 45.948757>,  <36.029499, 34.667068, 45.852425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075752, 34.881966, 45.948757>,  <36.152843, 35.240128, 46.109310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075752, 34.881966, 45.948757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201842, -0.364127, 0.909215,
		-0.960269, 0.256245, -0.110553,
		-0.192726, -0.895405, -0.401381,
		36.017933, 34.613342, 45.828342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713596, 34.966789, 46.548252>,  <36.152843, 35.240128, 46.109310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713596, 34.966789, 46.548252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803890, 34.645100, 46.328335>,  <35.858067, 34.452087, 46.196384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803890, 34.645100, 46.328335>,  <35.713596, 34.966789, 46.548252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803890, 34.645100, 46.328335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120224, -0.583044, 0.803496,
		-0.966741, -0.115282, -0.228302,
		0.225739, -0.804220, -0.549792,
		35.871613, 34.403835, 46.163399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283916, 34.480534, 46.735119>,  <35.713596, 34.966789, 46.548252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283916, 34.480534, 46.735119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596142, 34.281731, 46.583481>,  <35.783478, 34.162449, 46.492500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.596142, 34.281731, 46.583481>,  <35.283916, 34.480534, 46.735119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596142, 34.281731, 46.583481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074043, -0.675715, 0.733435,
		-0.620676, -0.544424, -0.564238,
		0.780563, -0.497003, -0.379090,
		35.830311, 34.132629, 46.469753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051598, 33.773014, 46.737110>,  <35.283916, 34.480534, 46.735119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051598, 33.773014, 46.737110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.449444, 33.736969, 46.716644>,  <35.688152, 33.715343, 46.704365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.449444, 33.736969, 46.716644>,  <35.051598, 33.773014, 46.737110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449444, 33.736969, 46.716644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028237, -0.710748, 0.702879,
		-0.099703, -0.697651, -0.709467,
		0.994616, -0.090112, -0.051164,
		35.747829, 33.709934, 46.701294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141167, 33.154484, 46.813450>,  <35.051598, 33.773014, 46.737110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141167, 33.154484, 46.813450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.499340, 33.301662, 46.913704>,  <35.714245, 33.389969, 46.973858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.499340, 33.301662, 46.913704>,  <35.141167, 33.154484, 46.813450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499340, 33.301662, 46.913704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008643, -0.577240, 0.816529,
		0.445115, -0.728980, -0.520059,
		0.895432, 0.367944, 0.250638,
		35.767971, 33.412045, 46.988895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449257, 32.584724, 47.158123>,  <35.141167, 33.154484, 46.813450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449257, 32.584724, 47.158123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.643253, 32.909004, 47.289299>,  <35.759651, 33.103573, 47.368004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.643253, 32.909004, 47.289299>,  <35.449257, 32.584724, 47.158123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643253, 32.909004, 47.289299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013828, -0.382059, 0.924034,
		0.874409, -0.443615, -0.196506,
		0.484992, 0.810702, 0.327942,
		35.788750, 33.152214, 47.387680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880333, 32.279919, 47.596142>,  <35.449257, 32.584724, 47.158123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880333, 32.279919, 47.596142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893948, 32.658714, 47.723923>,  <35.902115, 32.885994, 47.800591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893948, 32.658714, 47.723923>,  <35.880333, 32.279919, 47.596142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893948, 32.658714, 47.723923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186177, -0.320045, 0.928929,
		0.981927, 0.027859, -0.187201,
		0.034034, 0.946993, 0.319448,
		35.904160, 32.942814, 47.819756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509907, 32.359547, 47.976067>,  <35.880333, 32.279919, 47.596142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509907, 32.359547, 47.976067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249561, 32.631977, 48.110245>,  <36.093353, 32.795433, 48.190750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249561, 32.631977, 48.110245>,  <36.509907, 32.359547, 47.976067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249561, 32.631977, 48.110245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086991, -0.372029, 0.924136,
		0.754198, 0.630663, 0.182891,
		-0.650859, 0.681072, 0.335445,
		36.054302, 32.836300, 48.210876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746346, 32.570541, 48.626522>,  <36.509907, 32.359547, 47.976067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746346, 32.570541, 48.626522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356079, 32.657318, 48.639210>,  <36.121918, 32.709385, 48.646820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356079, 32.657318, 48.639210>,  <36.746346, 32.570541, 48.626522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356079, 32.657318, 48.639210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015150, -0.211021, 0.977364,
		0.218726, 0.953103, 0.209174,
		-0.975669, 0.216944, 0.031716,
		36.063377, 32.722401, 48.648724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200184, 33.270496, 48.854530>,  <36.746346, 32.570541, 48.626522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200184, 33.270496, 48.854530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583851, 33.310448, 48.960384>,  <37.814049, 33.334419, 49.023895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583851, 33.310448, 48.960384>,  <37.200184, 33.270496, 48.854530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583851, 33.310448, 48.960384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221458, 0.316854, -0.922258,
		-0.175962, 0.943201, 0.281797,
		0.959163, 0.099877, 0.264634,
		37.871601, 33.340412, 49.039776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411301, 34.004601, 48.752266>,  <37.200184, 33.270496, 48.854530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411301, 34.004601, 48.752266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.727451, 33.759575, 48.748787>,  <37.917141, 33.612560, 48.746700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.727451, 33.759575, 48.748787>,  <37.411301, 34.004601, 48.752266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727451, 33.759575, 48.748787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301964, 0.401896, -0.864464,
		0.533032, 0.680625, 0.502620,
		0.790376, -0.612560, -0.008699,
		37.964565, 33.575806, 48.746178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872223, 34.460064, 48.454395>,  <37.411301, 34.004601, 48.752266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872223, 34.460064, 48.454395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028816, 34.094463, 48.411789>,  <38.122772, 33.875103, 48.386223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028816, 34.094463, 48.411789>,  <37.872223, 34.460064, 48.454395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028816, 34.094463, 48.411789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569444, 0.331564, -0.752196,
		0.722825, 0.233814, 0.650273,
		0.391481, -0.914000, -0.106519,
		38.146259, 33.820263, 48.379833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523209, 34.625881, 48.275513>,  <37.872223, 34.460064, 48.454395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523209, 34.625881, 48.275513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475018, 34.251236, 48.143917>,  <38.446102, 34.026447, 48.064960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475018, 34.251236, 48.143917>,  <38.523209, 34.625881, 48.275513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475018, 34.251236, 48.143917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563612, 0.208282, -0.799350,
		0.817207, -0.281725, 0.502795,
		-0.120474, -0.936616, -0.328993,
		38.438877, 33.970253, 48.045219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154934, 34.365250, 48.131977>,  <38.523209, 34.625881, 48.275513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154934, 34.365250, 48.131977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.919983, 34.141521, 47.898003>,  <38.779011, 34.007286, 47.757618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.919983, 34.141521, 47.898003>,  <39.154934, 34.365250, 48.131977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919983, 34.141521, 47.898003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534949, 0.274035, -0.799209,
		0.607304, -0.782349, 0.138244,
		-0.587377, -0.559316, -0.584939,
		38.743771, 33.973728, 47.722523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643684, 34.045635, 47.502682>,  <39.154934, 34.365250, 48.131977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643684, 34.045635, 47.502682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.261425, 34.006947, 47.391415>,  <39.032070, 33.983734, 47.324654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.261425, 34.006947, 47.391415>,  <39.643684, 34.045635, 47.502682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261425, 34.006947, 47.391415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237818, 0.303691, -0.922613,
		0.173713, -0.947848, -0.267221,
		-0.955649, -0.096720, -0.278171,
		38.974731, 33.977932, 47.307964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664978, 33.552513, 46.917271>,  <39.643684, 34.045635, 47.502682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664978, 33.552513, 46.917271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.337368, 33.781010, 46.895809>,  <39.140800, 33.918106, 46.882935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.337368, 33.781010, 46.895809>,  <39.664978, 33.552513, 46.917271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337368, 33.781010, 46.895809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273477, 0.306473, -0.911748,
		-0.504383, -0.761421, -0.407231,
		-0.819029, 0.571238, -0.053651,
		39.091660, 33.952381, 46.879715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407299, 33.529797, 46.258530>,  <39.664978, 33.552513, 46.917271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407299, 33.529797, 46.258530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.234390, 33.867065, 46.386402>,  <39.130646, 34.069427, 46.463127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.234390, 33.867065, 46.386402>,  <39.407299, 33.529797, 46.258530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234390, 33.867065, 46.386402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162367, 0.421505, -0.892172,
		-0.887003, -0.333757, -0.319110,
		-0.432275, 0.843172, 0.319685,
		39.104710, 34.120018, 46.482307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173992, 33.815815, 45.613552>,  <39.407299, 33.529797, 46.258530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173992, 33.815815, 45.613552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.114796, 34.130260, 45.853592>,  <39.079277, 34.318928, 45.997616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.114796, 34.130260, 45.853592>,  <39.173992, 33.815815, 45.613552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114796, 34.130260, 45.853592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233574, 0.617397, -0.751175,
		-0.961011, 0.029000, -0.274986,
		-0.147991, 0.786117, 0.600099,
		39.070400, 34.366096, 46.033623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777313, 34.280609, 45.305679>,  <39.173992, 33.815815, 45.613552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777313, 34.280609, 45.305679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.945244, 34.523468, 45.575531>,  <39.046001, 34.669182, 45.737442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.945244, 34.523468, 45.575531>,  <38.777313, 34.280609, 45.305679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945244, 34.523468, 45.575531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113797, 0.702227, -0.702800,
		-0.900444, 0.371822, 0.225719,
		0.419822, 0.607146, 0.674628,
		39.071190, 34.705612, 45.777920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495384, 34.953564, 45.141979>,  <38.777313, 34.280609, 45.305679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495384, 34.953564, 45.141979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832367, 35.018978, 45.347321>,  <39.034557, 35.058228, 45.470524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832367, 35.018978, 45.347321>,  <38.495384, 34.953564, 45.141979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832367, 35.018978, 45.347321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231488, 0.750518, -0.618980,
		-0.486505, 0.640296, 0.594419,
		0.842452, 0.163536, 0.513352,
		39.085102, 35.068039, 45.501328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478638, 35.675480, 45.264977>,  <38.495384, 34.953564, 45.141979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478638, 35.675480, 45.264977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851891, 35.532135, 45.276646>,  <39.075840, 35.446129, 45.283649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851891, 35.532135, 45.276646>,  <38.478638, 35.675480, 45.264977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851891, 35.532135, 45.276646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268488, 0.640540, -0.719460,
		0.239138, 0.679181, 0.693921,
		0.933128, -0.358360, 0.029175,
		39.131828, 35.424625, 45.285397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842682, 36.254482, 45.268879>,  <38.478638, 35.675480, 45.264977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842682, 36.254482, 45.268879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.109703, 35.970200, 45.180096>,  <39.269917, 35.799629, 45.126827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.109703, 35.970200, 45.180096>,  <38.842682, 36.254482, 45.268879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109703, 35.970200, 45.180096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355859, 0.566400, -0.743340,
		0.654016, 0.417234, 0.631015,
		0.667553, -0.710709, -0.221958,
		39.309971, 35.756989, 45.113506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504902, 36.570545, 45.194294>,  <38.842682, 36.254482, 45.268879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504902, 36.570545, 45.194294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533268, 36.224491, 44.995697>,  <39.550285, 36.016857, 44.876537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533268, 36.224491, 44.995697>,  <39.504902, 36.570545, 45.194294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533268, 36.224491, 44.995697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309799, 0.492232, -0.813469,
		0.948154, -0.096129, 0.302924,
		0.070911, -0.865140, -0.496493,
		39.554543, 35.964951, 44.846748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.214981, 41.552773, 35.275772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200420, 41.529140, 34.876736>,  <32.191685, 41.514961, 34.637314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200420, 41.529140, 34.876736>,  <32.214981, 41.552773, 35.275772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200420, 41.529140, 34.876736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901495, -0.428846, 0.058292,
		-0.431256, 0.901444, -0.037650,
		-0.036401, -0.059081, -0.997589,
		32.189499, 41.511417, 34.577457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495161, 41.815857, 35.008274>,  <32.214981, 41.552773, 35.275772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495161, 41.815857, 35.008274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.638742, 41.585999, 34.714081>,  <31.724892, 41.448082, 34.537567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.638742, 41.585999, 34.714081>,  <31.495161, 41.815857, 35.008274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638742, 41.585999, 34.714081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844114, -0.536119, 0.006911,
		-0.398275, 0.618348, -0.677512,
		0.358954, -0.574650, -0.735479,
		31.746429, 41.413605, 34.493439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951420, 41.718330, 34.544552>,  <31.495161, 41.815857, 35.008274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951420, 41.718330, 34.544552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.196081, 41.418762, 34.442570>,  <31.342878, 41.239021, 34.381382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.196081, 41.418762, 34.442570>,  <30.951420, 41.718330, 34.544552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196081, 41.418762, 34.442570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771363, -0.636138, 0.018085,
		-0.175731, 0.185601, -0.966784,
		0.611652, -0.748919, -0.254954,
		31.379578, 41.194088, 34.366085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653187, 41.398529, 33.990845>,  <30.951420, 41.718330, 34.544552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653187, 41.398529, 33.990845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.901463, 41.142235, 34.171600>,  <31.050428, 40.988461, 34.280052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.901463, 41.142235, 34.171600>,  <30.653187, 41.398529, 33.990845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901463, 41.142235, 34.171600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722632, -0.691118, 0.012634,
		0.304213, -0.334391, -0.891985,
		0.620691, -0.640733, 0.451889,
		31.087669, 40.950016, 34.307167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669588, 40.803570, 33.620636>,  <30.653187, 41.398529, 33.990845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669588, 40.803570, 33.620636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.797646, 40.683262, 33.979980>,  <30.874479, 40.611076, 34.195587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.797646, 40.683262, 33.979980>,  <30.669588, 40.803570, 33.620636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797646, 40.683262, 33.979980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656819, -0.753826, -0.018313,
		0.682714, -0.584196, -0.438882,
		0.320142, -0.300768, 0.898358,
		30.893688, 40.593033, 34.249489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808281, 40.003128, 33.620079>,  <30.669588, 40.803570, 33.620636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808281, 40.003128, 33.620079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.777966, 40.130112, 33.998173>,  <30.759777, 40.206303, 34.225029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.777966, 40.130112, 33.998173>,  <30.808281, 40.003128, 33.620079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777966, 40.130112, 33.998173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563901, -0.795460, 0.221943,
		0.822358, -0.516200, 0.239302,
		-0.075789, 0.317459, 0.945238,
		30.755230, 40.225349, 34.281746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825264, 39.419209, 34.063923>,  <30.808281, 40.003128, 33.620079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825264, 39.419209, 34.063923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.711676, 39.653194, 34.367809>,  <30.643522, 39.793587, 34.550140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.711676, 39.653194, 34.367809>,  <30.825264, 39.419209, 34.063923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711676, 39.653194, 34.367809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570015, -0.740116, 0.356808,
		0.771001, -0.331728, 0.543612,
		-0.283973, 0.584966, 0.759720,
		30.626484, 39.828686, 34.595726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969002, 38.997204, 34.657772>,  <30.825264, 39.419209, 34.063923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969002, 38.997204, 34.657772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.711514, 39.274582, 34.787239>,  <30.557020, 39.441010, 34.864918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.711514, 39.274582, 34.787239>,  <30.969002, 38.997204, 34.657772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711514, 39.274582, 34.787239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498343, -0.700830, 0.510384,
		0.580758, 0.167247, 0.796711,
		-0.643719, 0.693445, 0.323666,
		30.518398, 39.482616, 34.884338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842445, 38.875229, 35.424366>,  <30.969002, 38.997204, 34.657772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842445, 38.875229, 35.424366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.540684, 39.098595, 35.286350>,  <30.359627, 39.232613, 35.203541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.540684, 39.098595, 35.286350>,  <30.842445, 38.875229, 35.424366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540684, 39.098595, 35.286350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654692, -0.602046, 0.457077,
		0.047507, 0.570716, 0.819772,
		-0.754402, 0.558412, -0.345042,
		30.314363, 39.266117, 35.182838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257900, 38.967129, 35.977028>,  <30.842445, 38.875229, 35.424366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257900, 38.967129, 35.977028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.044777, 39.063583, 35.652569>,  <29.916903, 39.121456, 35.457893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.044777, 39.063583, 35.652569>,  <30.257900, 38.967129, 35.977028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044777, 39.063583, 35.652569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747702, -0.583046, 0.317802,
		-0.396305, 0.775828, 0.490952,
		-0.532808, 0.241139, -0.811152,
		29.884935, 39.135925, 35.409222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598907, 39.355541, 36.156300>,  <30.257900, 38.967129, 35.977028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598907, 39.355541, 36.156300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.529442, 39.180771, 35.803268>,  <29.487762, 39.075909, 35.591450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.529442, 39.180771, 35.803268>,  <29.598907, 39.355541, 36.156300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529442, 39.180771, 35.803268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663249, -0.610577, 0.432779,
		-0.727971, 0.660523, -0.183757,
		-0.173662, -0.436928, -0.882573,
		29.477343, 39.049694, 35.538498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861532, 39.245766, 36.038364>,  <29.598907, 39.355541, 36.156300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861532, 39.245766, 36.038364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996748, 38.980587, 35.771160>,  <29.077877, 38.821480, 35.610840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996748, 38.980587, 35.771160>,  <28.861532, 39.245766, 36.038364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996748, 38.980587, 35.771160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725665, -0.635575, 0.263542,
		-0.599282, 0.395661, -0.695926,
		0.338040, -0.662946, -0.668006,
		29.098160, 38.781704, 35.570759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250780, 38.930511, 35.748138>,  <28.861532, 39.245766, 36.038364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250780, 38.930511, 35.748138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539810, 38.678005, 35.635433>,  <28.713228, 38.526501, 35.567810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539810, 38.678005, 35.635433>,  <28.250780, 38.930511, 35.748138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539810, 38.678005, 35.635433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586084, -0.775557, 0.234556,
		-0.366590, -0.004347, -0.930372,
		0.722576, -0.631263, -0.281764,
		28.756582, 38.488625, 35.550903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046865, 38.518169, 35.294407>,  <28.250780, 38.930511, 35.748138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046865, 38.518169, 35.294407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349213, 38.307579, 35.450092>,  <28.530621, 38.181225, 35.543503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349213, 38.307579, 35.450092>,  <28.046865, 38.518169, 35.294407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349213, 38.307579, 35.450092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621431, -0.764052, 0.173343,
		0.206119, -0.372894, -0.904690,
		0.755869, -0.526473, 0.389214,
		28.575974, 38.149635, 35.566856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816433, 37.892757, 35.048294>,  <28.046865, 38.518169, 35.294407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816433, 37.892757, 35.048294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.091431, 37.832779, 35.332512>,  <28.256430, 37.796791, 35.503040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.091431, 37.832779, 35.332512>,  <27.816433, 37.892757, 35.048294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091431, 37.832779, 35.332512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417557, -0.882149, 0.217851,
		0.594137, -0.446463, -0.669083,
		0.687494, -0.149947, 0.710541,
		28.297678, 37.787796, 35.545673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989058, 37.230194, 34.882729>,  <27.816433, 37.892757, 35.048294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989058, 37.230194, 34.882729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100060, 37.311630, 35.258289>,  <28.166660, 37.360493, 35.483627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100060, 37.311630, 35.258289>,  <27.989058, 37.230194, 34.882729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100060, 37.311630, 35.258289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385715, -0.871456, 0.302965,
		0.879894, -0.446225, -0.163309,
		0.277507, 0.203586, 0.938905,
		28.183311, 37.372707, 35.539959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447229, 36.658737, 35.127609>,  <27.989058, 37.230194, 34.882729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447229, 36.658737, 35.127609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284725, 36.830051, 35.450478>,  <28.187222, 36.932838, 35.644199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.284725, 36.830051, 35.450478>,  <28.447229, 36.658737, 35.127609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284725, 36.830051, 35.450478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352394, -0.888456, 0.294047,
		0.843071, -0.164982, 0.511871,
		-0.406263, 0.428283, 0.807171,
		28.162846, 36.958538, 35.692627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626905, 36.223259, 35.627563>,  <28.447229, 36.658737, 35.127609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626905, 36.223259, 35.627563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322407, 36.440399, 35.769444>,  <28.139708, 36.570686, 35.854572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322407, 36.440399, 35.769444>,  <28.626905, 36.223259, 35.627563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322407, 36.440399, 35.769444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416165, -0.828464, 0.374772,
		0.497302, 0.137682, 0.856583,
		-0.761247, 0.542855, 0.354698,
		28.094032, 36.603256, 35.875854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420500, 35.881310, 36.250290>,  <28.626905, 36.223259, 35.627563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420500, 35.881310, 36.250290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.106483, 36.112572, 36.161346>,  <27.918074, 36.251331, 36.107979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.106483, 36.112572, 36.161346>,  <28.420500, 35.881310, 36.250290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106483, 36.112572, 36.161346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616350, -0.693232, 0.373553,
		0.061825, 0.430306, 0.900564,
		-0.785041, 0.578158, -0.222360,
		27.870972, 36.286018, 36.094639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876766, 35.597942, 36.954742>,  <28.420500, 35.881310, 36.250290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876766, 35.597942, 36.954742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541702, 35.503506, 37.151752>,  <28.340664, 35.446842, 37.269958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541702, 35.503506, 37.151752>,  <28.876766, 35.597942, 36.954742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541702, 35.503506, 37.151752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151536, -0.765891, -0.624858,
		0.524747, -0.598055, 0.605781,
		-0.837662, -0.236094, 0.492526,
		28.290403, 35.432678, 37.299511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595140, 35.814007, 37.136196>,  <28.876766, 35.597942, 36.954742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595140, 35.814007, 37.136196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.660210, 35.588791, 36.812092>,  <29.699251, 35.453663, 36.617630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.660210, 35.588791, 36.812092>,  <29.595140, 35.814007, 37.136196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660210, 35.588791, 36.812092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940530, 0.336698, -0.045139,
		0.298230, -0.754735, 0.584324,
		0.162672, -0.563036, -0.810264,
		29.709011, 35.419880, 36.569012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303141, 35.713463, 37.132187>,  <29.595140, 35.814007, 37.136196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303141, 35.713463, 37.132187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.213869, 35.593697, 36.761124>,  <30.160307, 35.521839, 36.538486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.213869, 35.593697, 36.761124>,  <30.303141, 35.713463, 37.132187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213869, 35.593697, 36.761124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849037, 0.407815, -0.335892,
		0.478882, -0.862577, 0.163197,
		-0.223178, -0.299412, -0.927655,
		30.146915, 35.503872, 36.482826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905149, 35.428848, 36.873158>,  <30.303141, 35.713463, 37.132187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905149, 35.428848, 36.873158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.686914, 35.541504, 36.557434>,  <30.555973, 35.609097, 36.368000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.686914, 35.541504, 36.557434>,  <30.905149, 35.428848, 36.873158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686914, 35.541504, 36.557434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777188, 0.522414, -0.350803,
		0.313549, -0.804838, -0.503908,
		-0.545588, 0.281637, -0.789313,
		30.523237, 35.625996, 36.320641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303232, 35.263741, 36.344334>,  <30.905149, 35.428848, 36.873158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303232, 35.263741, 36.344334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.052290, 35.535862, 36.192749>,  <30.901724, 35.699135, 36.101799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.052290, 35.535862, 36.192749>,  <31.303232, 35.263741, 36.344334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052290, 35.535862, 36.192749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766308, 0.452735, -0.455854,
		-0.138553, -0.576380, -0.805350,
		-0.627356, 0.680306, -0.378957,
		30.864082, 35.739952, 36.079063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501137, 35.317608, 35.684883>,  <31.303232, 35.263741, 36.344334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501137, 35.317608, 35.684883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.271667, 35.643318, 35.720318>,  <31.133986, 35.838745, 35.741577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.271667, 35.643318, 35.720318>,  <31.501137, 35.317608, 35.684883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271667, 35.643318, 35.720318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677252, 0.532383, -0.507837,
		-0.460683, -0.231338, -0.856887,
		-0.573673, 0.814280, 0.088586,
		31.099566, 35.887604, 35.746895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434488, 35.600204, 35.017479>,  <31.501137, 35.317608, 35.684883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434488, 35.600204, 35.017479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.378502, 35.894569, 35.282459>,  <31.344910, 36.071190, 35.441448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.378502, 35.894569, 35.282459>,  <31.434488, 35.600204, 35.017479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378502, 35.894569, 35.282459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444917, 0.644435, -0.621895,
		-0.884567, 0.207692, -0.417619,
		-0.139965, 0.735913, 0.662451,
		31.336512, 36.115345, 35.481194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065296, 36.133869, 34.678459>,  <31.434488, 35.600204, 35.017479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065296, 36.133869, 34.678459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.242054, 36.316551, 34.987301>,  <31.348108, 36.426159, 35.172607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.242054, 36.316551, 34.987301>,  <31.065296, 36.133869, 34.678459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242054, 36.316551, 34.987301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296464, 0.737992, -0.606199,
		-0.846663, 0.496778, 0.190718,
		0.441895, 0.456705, 0.772107,
		31.374622, 36.453564, 35.218933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840622, 36.881992, 34.637535>,  <31.065296, 36.133869, 34.678459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840622, 36.881992, 34.637535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.181255, 36.847115, 34.844303>,  <31.385635, 36.826187, 34.968365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.181255, 36.847115, 34.844303>,  <30.840622, 36.881992, 34.637535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181255, 36.847115, 34.844303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356675, 0.819013, -0.449444,
		-0.384174, 0.567111, 0.728557,
		0.851583, -0.087194, 0.516918,
		31.436729, 36.820957, 34.999378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041080, 37.546478, 34.664639>,  <30.840622, 36.881992, 34.637535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041080, 37.546478, 34.664639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.372974, 37.358624, 34.785290>,  <31.572111, 37.245911, 34.857681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.372974, 37.358624, 34.785290>,  <31.041080, 37.546478, 34.664639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372974, 37.358624, 34.785290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553706, 0.760682, -0.338780,
		-0.070344, 0.448113, 0.891205,
		0.829736, -0.469634, 0.301633,
		31.621895, 37.217731, 34.875778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440523, 37.986515, 35.022797>,  <31.041080, 37.546478, 34.664639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440523, 37.986515, 35.022797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.707354, 37.714478, 34.901157>,  <31.867453, 37.551254, 34.828175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.707354, 37.714478, 34.901157>,  <31.440523, 37.986515, 35.022797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707354, 37.714478, 34.901157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538754, 0.722318, -0.433590,
		0.514541, 0.125402, 0.848246,
		0.667076, -0.680096, -0.304102,
		31.907476, 37.510448, 34.809925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087933, 38.364227, 35.096123>,  <31.440523, 37.986515, 35.022797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087933, 38.364227, 35.096123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.168140, 38.066185, 34.841686>,  <32.216267, 37.887360, 34.689026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.168140, 38.066185, 34.841686>,  <32.087933, 38.364227, 35.096123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168140, 38.066185, 34.841686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325250, 0.663085, -0.674188,
		0.924122, -0.071698, 0.375309,
		0.200524, -0.745102, -0.636092,
		32.228298, 37.842655, 34.650860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877201, 38.347275, 34.900406>,  <32.087933, 38.364227, 35.096123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877201, 38.347275, 34.900406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.680412, 38.171829, 34.599583>,  <32.562340, 38.066563, 34.419090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.680412, 38.171829, 34.599583>,  <32.877201, 38.347275, 34.900406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680412, 38.171829, 34.599583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504179, 0.560699, -0.656826,
		0.709767, -0.702308, -0.054709,
		-0.491969, -0.438611, -0.752055,
		32.532822, 38.040245, 34.373966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368958, 38.438835, 34.431683>,  <32.877201, 38.347275, 34.900406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368958, 38.438835, 34.431683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.050621, 38.318542, 34.221466>,  <32.859619, 38.246368, 34.095337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.050621, 38.318542, 34.221466>,  <33.368958, 38.438835, 34.431683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050621, 38.318542, 34.221466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281914, 0.584107, -0.761146,
		0.535874, -0.753910, -0.380077,
		-0.795842, -0.300729, -0.525545,
		32.811871, 38.228325, 34.063801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725754, 38.093060, 33.900318>,  <33.368958, 38.438835, 34.431683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725754, 38.093060, 33.900318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.362106, 38.216965, 33.788921>,  <33.143917, 38.291309, 33.722084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.362106, 38.216965, 33.788921>,  <33.725754, 38.093060, 33.900318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362106, 38.216965, 33.788921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412933, 0.582363, -0.700243,
		-0.054730, -0.751598, -0.657347,
		-0.909115, 0.309764, -0.278487,
		33.089371, 38.309895, 33.705376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702366, 38.064976, 33.135864>,  <33.725754, 38.093060, 33.900318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702366, 38.064976, 33.135864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.377785, 38.293282, 33.186108>,  <33.183037, 38.430264, 33.216255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.377785, 38.293282, 33.186108>,  <33.702366, 38.064976, 33.135864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377785, 38.293282, 33.186108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095491, 0.341527, -0.935009,
		-0.576567, -0.746719, -0.331635,
		-0.811450, 0.570763, 0.125608,
		33.134350, 38.464512, 33.223789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276314, 38.175133, 32.380905>,  <33.702366, 38.064976, 33.135864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276314, 38.175133, 32.380905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.112972, 38.459923, 32.609409>,  <33.014969, 38.630798, 32.746513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.112972, 38.459923, 32.609409>,  <33.276314, 38.175133, 32.380905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112972, 38.459923, 32.609409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005244, 0.623975, -0.781427,
		-0.912810, -0.322092, -0.251067,
		-0.408351, 0.711977, 0.571260,
		32.990467, 38.673515, 32.780788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728863, 38.471996, 31.953512>,  <33.276314, 38.175133, 32.380905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728863, 38.471996, 31.953512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849133, 38.763870, 32.199165>,  <32.921295, 38.938995, 32.346558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849133, 38.763870, 32.199165>,  <32.728863, 38.471996, 31.953512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849133, 38.763870, 32.199165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048574, 0.631377, -0.773953,
		-0.952490, 0.262537, 0.154394,
		0.300672, 0.729683, 0.614133,
		32.939335, 38.982777, 32.383404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385647, 39.121231, 31.815701>,  <32.728863, 38.471996, 31.953512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385647, 39.121231, 31.815701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.692459, 39.273968, 32.021950>,  <32.876545, 39.365608, 32.145699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.692459, 39.273968, 32.021950>,  <32.385647, 39.121231, 31.815701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692459, 39.273968, 32.021950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042599, 0.832167, -0.552886,
		-0.640196, 0.402115, 0.654562,
		0.767029, 0.381839, 0.515621,
		32.922569, 39.388519, 32.176636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147747, 39.862888, 32.108978>,  <32.385647, 39.121231, 31.815701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147747, 39.862888, 32.108978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.543415, 39.814045, 32.076401>,  <32.780815, 39.784740, 32.056854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.543415, 39.814045, 32.076401>,  <32.147747, 39.862888, 32.108978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543415, 39.814045, 32.076401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029846, 0.710646, -0.702916,
		0.143710, 0.692873, 0.706594,
		0.989170, -0.122105, -0.081448,
		32.840164, 39.777412, 32.051968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275391, 40.497406, 31.888010>,  <32.147747, 39.862888, 32.108978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275391, 40.497406, 31.888010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.598827, 40.269798, 31.828157>,  <32.792889, 40.133232, 31.792246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.598827, 40.269798, 31.828157>,  <32.275391, 40.497406, 31.888010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598827, 40.269798, 31.828157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325176, 0.644145, -0.692342,
		0.490341, 0.511168, 0.705884,
		0.808595, -0.569020, -0.149631,
		32.841408, 40.099091, 31.783268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816055, 40.825649, 32.011963>,  <32.275391, 40.497406, 31.888010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816055, 40.825649, 32.011963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.970089, 40.546364, 31.770561>,  <33.062511, 40.378792, 31.625721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.970089, 40.546364, 31.770561>,  <32.816055, 40.825649, 32.011963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970089, 40.546364, 31.770561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333309, 0.715013, -0.614542,
		0.860589, 0.035500, 0.508061,
		0.385087, -0.698209, -0.603500,
		33.085613, 40.336903, 31.589512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540432, 40.972027, 31.847301>,  <32.816055, 40.825649, 32.011963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540432, 40.972027, 31.847301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.417522, 40.734352, 31.549973>,  <33.343777, 40.591747, 31.371574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.417522, 40.734352, 31.549973>,  <33.540432, 40.972027, 31.847301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417522, 40.734352, 31.549973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335029, 0.663557, -0.668916,
		0.890696, -0.454573, -0.004823,
		-0.307272, -0.594185, -0.743323,
		33.325340, 40.556095, 31.326975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.112984, 30.825535, 49.270866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.725338, 30.910694, 49.221096>,  <40.492748, 30.961790, 49.191235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.725338, 30.910694, 49.221096>,  <41.112984, 30.825535, 49.270866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725338, 30.910694, 49.221096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123004, 0.019988, 0.992205,
		0.213728, 0.976869, 0.006817,
		-0.969118, 0.212901, -0.124431,
		40.434601, 30.974564, 49.183765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022377, 31.308638, 49.735611>,  <41.112984, 30.825535, 49.270866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022377, 31.308638, 49.735611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.646584, 31.187166, 49.672180>,  <40.421108, 31.114283, 49.634121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.646584, 31.187166, 49.672180>,  <41.022377, 31.308638, 49.735611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646584, 31.187166, 49.672180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161677, -0.015079, 0.986728,
		-0.302041, 0.952655, -0.034931,
		-0.939485, -0.303680, -0.158577,
		40.364738, 31.096062, 49.624607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426792, 31.698549, 50.177055>,  <41.022377, 31.308638, 49.735611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426792, 31.698549, 50.177055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.260494, 31.347534, 50.081486>,  <40.160717, 31.136925, 50.024143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.260494, 31.347534, 50.081486>,  <40.426792, 31.698549, 50.177055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260494, 31.347534, 50.081486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300557, -0.115374, 0.946760,
		-0.858385, 0.465416, -0.215785,
		-0.415742, -0.877540, -0.238919,
		40.135773, 31.084272, 50.009811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767532, 31.815861, 50.492664>,  <40.426792, 31.698549, 50.177055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767532, 31.815861, 50.492664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.801895, 31.423004, 50.425709>,  <39.822514, 31.187290, 50.385536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.801895, 31.423004, 50.425709>,  <39.767532, 31.815861, 50.492664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801895, 31.423004, 50.425709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471897, -0.188077, 0.861359,
		-0.877458, 0.004990, -0.479627,
		0.085909, -0.982142, -0.167384,
		39.827667, 31.128361, 50.375492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197048, 31.398420, 50.911823>,  <39.767532, 31.815861, 50.492664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197048, 31.398420, 50.911823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397144, 31.063282, 50.824398>,  <39.517204, 30.862200, 50.771942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397144, 31.063282, 50.824398>,  <39.197048, 31.398420, 50.911823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397144, 31.063282, 50.824398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353558, -0.428061, 0.831721,
		-0.790414, -0.338788, -0.510362,
		0.500243, -0.837847, -0.218564,
		39.547218, 30.811928, 50.758827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686405, 30.769722, 50.964161>,  <39.197048, 31.398420, 50.911823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686405, 30.769722, 50.964161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.074280, 30.705410, 51.037773>,  <39.307003, 30.666822, 51.081940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.074280, 30.705410, 51.037773>,  <38.686405, 30.769722, 50.964161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074280, 30.705410, 51.037773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221011, -0.255703, 0.941154,
		-0.104261, -0.953292, -0.283484,
		0.969683, -0.160779, 0.184028,
		39.365185, 30.657177, 51.092983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687893, 30.155819, 51.223808>,  <38.686405, 30.769722, 50.964161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687893, 30.155819, 51.223808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.030659, 30.316584, 51.352909>,  <39.236317, 30.413042, 51.430370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.030659, 30.316584, 51.352909>,  <38.687893, 30.155819, 51.223808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030659, 30.316584, 51.352909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198185, -0.321130, 0.926066,
		0.475845, -0.857520, -0.195527,
		0.856910, 0.401913, 0.322756,
		39.287731, 30.437157, 51.449738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031525, 29.635637, 51.481056>,  <38.687893, 30.155819, 51.223808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031525, 29.635637, 51.481056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.203613, 29.942722, 51.671017>,  <39.306866, 30.126972, 51.784992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.203613, 29.942722, 51.671017>,  <39.031525, 29.635637, 51.481056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203613, 29.942722, 51.671017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005595, -0.523794, 0.851826,
		0.902706, -0.369132, -0.221053,
		0.430222, 0.767712, 0.474897,
		39.332680, 30.173037, 51.813484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385143, 29.251768, 52.050800>,  <39.031525, 29.635637, 51.481056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385143, 29.251768, 52.050800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.375828, 29.643623, 52.130562>,  <39.370239, 29.878736, 52.178421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.375828, 29.643623, 52.130562>,  <39.385143, 29.251768, 52.050800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375828, 29.643623, 52.130562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163801, -0.200504, 0.965902,
		0.986218, -0.010172, 0.165135,
		-0.023285, 0.979640, 0.199407,
		39.368843, 29.937515, 52.190384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482307, 29.220318, 52.750660>,  <39.385143, 29.251768, 52.050800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482307, 29.220318, 52.750660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.375587, 29.605467, 52.734207>,  <39.311558, 29.836557, 52.724335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.375587, 29.605467, 52.734207>,  <39.482307, 29.220318, 52.750660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375587, 29.605467, 52.734207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268976, -0.033408, 0.962567,
		0.925458, 0.267874, 0.267903,
		-0.266797, 0.962875, -0.041134,
		39.295547, 29.894329, 52.721867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837215, 29.546221, 53.300640>,  <39.482307, 29.220318, 52.750660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837215, 29.546221, 53.300640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.547710, 29.801432, 53.195503>,  <39.374008, 29.954557, 53.132420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.547710, 29.801432, 53.195503>,  <39.837215, 29.546221, 53.300640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547710, 29.801432, 53.195503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283368, 0.072502, 0.956267,
		0.629180, 0.766593, 0.128322,
		-0.723764, 0.638026, -0.262845,
		39.330582, 29.992840, 53.116650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915031, 30.179201, 53.773415>,  <39.837215, 29.546221, 53.300640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915031, 30.179201, 53.773415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.537445, 30.164669, 53.642197>,  <39.310894, 30.155951, 53.563465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.537445, 30.164669, 53.642197>,  <39.915031, 30.179201, 53.773415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537445, 30.164669, 53.642197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329350, 0.039001, 0.943402,
		-0.021479, 0.998579, -0.048780,
		-0.943964, -0.036329, -0.328044,
		39.254257, 30.153770, 53.543785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556629, 30.680233, 54.130379>,  <39.915031, 30.179201, 53.773415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556629, 30.680233, 54.130379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.284058, 30.391384, 54.082710>,  <39.120514, 30.218075, 54.054111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.284058, 30.391384, 54.082710>,  <39.556629, 30.680233, 54.130379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284058, 30.391384, 54.082710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196107, 0.023282, 0.980306,
		-0.705126, 0.691374, -0.157478,
		-0.681424, -0.722122, -0.119166,
		39.079632, 30.174747, 54.046959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741116, 30.645041, 54.382011>,  <39.556629, 30.680233, 54.130379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741116, 30.645041, 54.382011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.986794, 30.330103, 54.403408>,  <39.134201, 30.141140, 54.416248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.986794, 30.330103, 54.403408>,  <38.741116, 30.645041, 54.382011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986794, 30.330103, 54.403408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234793, 0.247032, 0.940132,
		-0.753420, -0.564860, 0.336587,
		0.614191, -0.787342, 0.053494,
		39.171051, 30.093901, 54.419456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117336, 30.803732, 53.954437>,  <38.741116, 30.645041, 54.382011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117336, 30.803732, 53.954437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863926, 31.094055, 54.061657>,  <37.711880, 31.268250, 54.125988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863926, 31.094055, 54.061657>,  <38.117336, 30.803732, 53.954437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863926, 31.094055, 54.061657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120473, 0.434749, -0.892457,
		-0.764288, -0.533099, -0.362864,
		-0.633522, 0.725809, 0.268049,
		37.673870, 31.311798, 54.142071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729534, 30.872787, 53.232132>,  <38.117336, 30.803732, 53.954437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729534, 30.872787, 53.232132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651306, 31.193621, 53.457844>,  <37.604370, 31.386120, 53.593273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651306, 31.193621, 53.457844>,  <37.729534, 30.872787, 53.232132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651306, 31.193621, 53.457844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045636, 0.567328, -0.822226,
		-0.979627, -0.186556, -0.074350,
		-0.195572, 0.802082, 0.564283,
		37.592636, 31.434246, 53.627129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049717, 31.136982, 53.059311>,  <37.729534, 30.872787, 53.232132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049717, 31.136982, 53.059311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292435, 31.415297, 53.213028>,  <37.438065, 31.582285, 53.305256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292435, 31.415297, 53.213028>,  <37.049717, 31.136982, 53.059311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292435, 31.415297, 53.213028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104909, 0.549348, -0.828982,
		-0.787902, 0.462709, 0.406338,
		0.606798, 0.695785, 0.384290,
		37.474476, 31.624033, 53.328316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803883, 31.739323, 52.781487>,  <37.049717, 31.136982, 53.059311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803883, 31.739323, 52.781487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.163074, 31.848282, 52.919720>,  <37.378590, 31.913658, 53.002659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.163074, 31.848282, 52.919720>,  <36.803883, 31.739323, 52.781487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163074, 31.848282, 52.919720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158387, 0.532630, -0.831396,
		-0.410538, 0.801314, 0.435148,
		0.897982, 0.272398, 0.345583,
		37.432468, 31.930000, 53.023396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848293, 32.477814, 52.648422>,  <36.803883, 31.739323, 52.781487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848293, 32.477814, 52.648422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232761, 32.372108, 52.680233>,  <37.463440, 32.308685, 52.699322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232761, 32.372108, 52.680233>,  <36.848293, 32.477814, 52.648422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232761, 32.372108, 52.680233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221912, 0.568784, -0.791984,
		0.164053, 0.778878, 0.605339,
		0.961167, -0.264259, 0.079531,
		37.521111, 32.292831, 52.704094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244389, 33.076679, 52.554123>,  <36.848293, 32.477814, 52.648422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244389, 33.076679, 52.554123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524132, 32.793663, 52.513561>,  <37.691978, 32.623852, 52.489223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524132, 32.793663, 52.513561>,  <37.244389, 33.076679, 52.554123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524132, 32.793663, 52.513561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476069, 0.566913, -0.672286,
		0.533157, 0.421894, 0.733314,
		0.699359, -0.707542, -0.101404,
		37.733940, 32.581402, 52.483139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843143, 33.447056, 52.312138>,  <37.244389, 33.076679, 52.554123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843143, 33.447056, 52.312138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924896, 33.060684, 52.248619>,  <37.973949, 32.828861, 52.210506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924896, 33.060684, 52.248619>,  <37.843143, 33.447056, 52.312138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924896, 33.060684, 52.248619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367275, 0.226040, -0.902228,
		0.907378, 0.126080, 0.400959,
		0.204386, -0.965924, -0.158798,
		37.986214, 32.770908, 52.200981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440159, 33.492538, 51.924934>,  <37.843143, 33.447056, 52.312138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440159, 33.492538, 51.924934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.275120, 33.137493, 51.843056>,  <38.176098, 32.924465, 51.793926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.275120, 33.137493, 51.843056>,  <38.440159, 33.492538, 51.924934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275120, 33.137493, 51.843056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005089, 0.222469, -0.974927,
		0.910899, -0.403294, -0.087272,
		-0.412597, -0.887616, -0.204699,
		38.151340, 32.871208, 51.781647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883881, 33.194374, 51.525879>,  <38.440159, 33.492538, 51.924934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883881, 33.194374, 51.525879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.528568, 33.028584, 51.446720>,  <38.315380, 32.929108, 51.399223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.528568, 33.028584, 51.446720>,  <38.883881, 33.194374, 51.525879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528568, 33.028584, 51.446720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171374, 0.100666, -0.980050,
		0.426133, -0.904474, -0.018388,
		-0.888280, -0.414480, -0.197900,
		38.262085, 32.904240, 51.387352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019836, 32.730499, 50.971355>,  <38.883881, 33.194374, 51.525879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019836, 32.730499, 50.971355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.621517, 32.766834, 50.966606>,  <38.382526, 32.788635, 50.963757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.621517, 32.766834, 50.966606>,  <39.019836, 32.730499, 50.971355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621517, 32.766834, 50.966606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010673, -0.013655, -0.999850,
		-0.090991, -0.995772, 0.012628,
		-0.995794, 0.090843, -0.011871,
		38.322781, 32.794086, 50.963043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847191, 32.335873, 50.488022>,  <39.019836, 32.730499, 50.971355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847191, 32.335873, 50.488022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.518234, 32.558224, 50.536469>,  <38.320858, 32.691635, 50.565536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.518234, 32.558224, 50.536469>,  <38.847191, 32.335873, 50.488022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518234, 32.558224, 50.536469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176069, -0.046242, -0.983291,
		-0.540989, -0.829977, 0.135902,
		-0.822393, 0.555877, 0.121117,
		38.271515, 32.724987, 50.572803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258026, 31.999456, 50.067307>,  <38.847191, 32.335873, 50.488022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258026, 31.999456, 50.067307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175770, 32.387413, 50.119495>,  <38.126415, 32.620186, 50.150810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175770, 32.387413, 50.119495>,  <38.258026, 31.999456, 50.067307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175770, 32.387413, 50.119495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225988, 0.082658, -0.970617,
		-0.952178, -0.229082, 0.202186,
		-0.205639, 0.969891, 0.130475,
		38.114079, 32.678379, 50.158638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631855, 32.219955, 49.712109>,  <38.258026, 31.999456, 50.067307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631855, 32.219955, 49.712109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.813412, 32.574276, 49.750759>,  <37.922344, 32.786869, 49.773949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.813412, 32.574276, 49.750759>,  <37.631855, 32.219955, 49.712109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813412, 32.574276, 49.750759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182557, 0.198586, -0.962931,
		-0.872157, 0.419423, 0.251845,
		0.453888, 0.885803, 0.096630,
		37.949577, 32.840015, 49.779747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353001, 32.646816, 49.176334>,  <37.631855, 32.219955, 49.712109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353001, 32.646816, 49.176334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664169, 32.867863, 49.295971>,  <37.850872, 33.000488, 49.367752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664169, 32.867863, 49.295971>,  <37.353001, 32.646816, 49.176334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664169, 32.867863, 49.295971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021821, 0.451942, -0.891781,
		-0.627980, 0.700263, 0.339518,
		0.777923, 0.552612, 0.299091,
		37.897545, 33.033646, 49.385696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717457, 32.844036, 49.334534>,  <37.353001, 32.646816, 49.176334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717457, 32.844036, 49.334534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.349266, 32.753014, 49.207447>,  <36.128353, 32.698399, 49.131195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.349266, 32.753014, 49.207447>,  <36.717457, 32.844036, 49.334534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349266, 32.753014, 49.207447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221827, -0.365104, 0.904153,
		-0.321746, 0.902728, 0.285590,
		-0.920474, -0.227556, -0.317720,
		36.073124, 32.684746, 49.112129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268970, 33.094727, 49.892296>,  <36.717457, 32.844036, 49.334534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268970, 33.094727, 49.892296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066414, 32.822289, 49.680759>,  <35.944878, 32.658825, 49.553837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066414, 32.822289, 49.680759>,  <36.268970, 33.094727, 49.892296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066414, 32.822289, 49.680759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176043, -0.518721, 0.836623,
		-0.844140, 0.516762, 0.142776,
		-0.506396, -0.681092, -0.528845,
		35.914494, 32.617962, 49.522106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671467, 32.997993, 50.370350>,  <36.268970, 33.094727, 49.892296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671467, 32.997993, 50.370350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716763, 32.689068, 50.120323>,  <35.743942, 32.503712, 49.970306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716763, 32.689068, 50.120323>,  <35.671467, 32.997993, 50.370350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716763, 32.689068, 50.120323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012394, -0.630166, 0.776361,
		-0.993490, -0.080170, -0.080934,
		0.113243, -0.772310, -0.625070,
		35.750736, 32.457375, 49.932800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091587, 32.620991, 50.559464>,  <35.671467, 32.997993, 50.370350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091587, 32.620991, 50.559464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348652, 32.385632, 50.363190>,  <35.502892, 32.244415, 50.245426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348652, 32.385632, 50.363190>,  <35.091587, 32.620991, 50.559464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348652, 32.385632, 50.363190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138713, -0.719230, 0.680784,
		-0.753492, -0.369445, -0.543838,
		0.642657, -0.588403, -0.490688,
		35.541451, 32.209110, 50.215984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793762, 32.080341, 50.520878>,  <35.091587, 32.620991, 50.559464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793762, 32.080341, 50.520878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166935, 31.945875, 50.469280>,  <35.390839, 31.865196, 50.438320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166935, 31.945875, 50.469280>,  <34.793762, 32.080341, 50.520878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166935, 31.945875, 50.469280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114753, -0.617166, 0.778420,
		-0.341285, -0.711408, -0.614348,
		0.932929, -0.336161, -0.128993,
		35.446812, 31.845026, 50.430584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782654, 31.327129, 50.592026>,  <34.793762, 32.080341, 50.520878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782654, 31.327129, 50.592026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173729, 31.404905, 50.623806>,  <35.408375, 31.451571, 50.642872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173729, 31.404905, 50.623806>,  <34.782654, 31.327129, 50.592026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173729, 31.404905, 50.623806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110952, -0.799249, 0.590669,
		0.178349, -0.568678, -0.802993,
		0.977692, 0.194439, 0.079449,
		35.467037, 31.463238, 50.647640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141273, 30.645086, 50.632347>,  <34.782654, 31.327129, 50.592026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141273, 30.645086, 50.632347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386456, 30.929092, 50.771004>,  <35.533566, 31.099497, 50.854198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386456, 30.929092, 50.771004>,  <35.141273, 30.645086, 50.632347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386456, 30.929092, 50.771004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152240, -0.536636, 0.829967,
		0.775314, -0.455957, -0.437025,
		0.612953, 0.710018, 0.346646,
		35.570343, 31.142097, 50.874996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091549, 30.101971, 50.185871>,  <35.141273, 30.645086, 50.632347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091549, 30.101971, 50.185871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705753, 29.999836, 50.158855>,  <34.474277, 29.938555, 50.142647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705753, 29.999836, 50.158855>,  <35.091549, 30.101971, 50.185871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705753, 29.999836, 50.158855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018605, 0.320765, -0.946976,
		0.263462, -0.912093, -0.314125,
		-0.964490, -0.255336, -0.067540,
		34.416405, 29.923235, 50.138592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851887, 29.621735, 49.524288>,  <35.091549, 30.101971, 50.185871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851887, 29.621735, 49.524288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535156, 29.844336, 49.624939>,  <34.345119, 29.977896, 49.685329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535156, 29.844336, 49.624939>,  <34.851887, 29.621735, 49.524288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535156, 29.844336, 49.624939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037863, 0.366480, -0.929655,
		-0.609574, -0.745651, -0.269117,
		-0.791824, 0.556505, 0.251629,
		34.297607, 30.011288, 49.700428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380836, 29.511177, 48.962666>,  <34.851887, 29.621735, 49.524288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380836, 29.511177, 48.962666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.240269, 29.827974, 49.162365>,  <34.155930, 30.018053, 49.282185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.240269, 29.827974, 49.162365>,  <34.380836, 29.511177, 48.962666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240269, 29.827974, 49.162365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031003, 0.523125, -0.851692,
		-0.935704, -0.314780, -0.159282,
		-0.351420, 0.791994, 0.499249,
		34.134842, 30.065573, 49.312141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675411, 29.703363, 48.610577>,  <34.380836, 29.511177, 48.962666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675411, 29.703363, 48.610577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.819038, 30.025904, 48.798561>,  <33.905216, 30.219429, 48.911354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.819038, 30.025904, 48.798561>,  <33.675411, 29.703363, 48.610577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819038, 30.025904, 48.798561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294249, 0.575670, -0.762903,
		-0.885712, 0.135649, 0.443974,
		0.359070, 0.806352, 0.469963,
		33.926758, 30.267809, 48.939548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223232, 30.140711, 48.489571>,  <33.675411, 29.703363, 48.610577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223232, 30.140711, 48.489571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530342, 30.370173, 48.603722>,  <33.714607, 30.507851, 48.672211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530342, 30.370173, 48.603722>,  <33.223232, 30.140711, 48.489571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530342, 30.370173, 48.603722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234286, 0.665916, -0.708284,
		-0.596346, 0.476945, 0.645674,
		0.767777, 0.573655, 0.285375,
		33.760674, 30.542269, 48.689335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956314, 30.839922, 48.463215>,  <33.223232, 30.140711, 48.489571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956314, 30.839922, 48.463215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355423, 30.843336, 48.436771>,  <33.594891, 30.845385, 48.420906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355423, 30.843336, 48.436771>,  <32.956314, 30.839922, 48.463215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355423, 30.843336, 48.436771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058582, 0.585432, -0.808602,
		0.031802, 0.810676, 0.584630,
		0.997776, 0.008533, -0.066109,
		33.654755, 30.845896, 48.416939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206707, 31.494120, 48.246090>,  <32.956314, 30.839922, 48.463215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206707, 31.494120, 48.246090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.476601, 31.225695, 48.123184>,  <33.638538, 31.064640, 48.049442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.476601, 31.225695, 48.123184>,  <33.206707, 31.494120, 48.246090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476601, 31.225695, 48.123184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018252, 0.401011, -0.915891,
		0.737835, 0.623591, 0.258328,
		0.674734, -0.671062, -0.307262,
		33.679020, 31.024376, 48.031006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.413960, 28.545605, 51.588764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.630116, 28.826447, 51.774250>,  <36.759808, 28.994951, 51.885540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.630116, 28.826447, 51.774250>,  <36.413960, 28.545605, 51.588764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630116, 28.826447, 51.774250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337831, 0.323696, -0.883793,
		-0.770619, 0.634247, -0.062272,
		0.540386, 0.702105, 0.463715,
		36.792233, 29.037079, 51.913364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386681, 29.098955, 51.023815>,  <36.413960, 28.545605, 51.588764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386681, 29.098955, 51.023815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.687412, 29.149439, 51.282681>,  <36.867851, 29.179729, 51.438000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.687412, 29.149439, 51.282681>,  <36.386681, 29.098955, 51.023815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687412, 29.149439, 51.282681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552985, 0.413870, -0.723132,
		-0.359107, 0.901545, 0.241369,
		0.751831, 0.126208, 0.647164,
		36.912960, 29.187302, 51.476830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558193, 29.763678, 51.057529>,  <36.386681, 29.098955, 51.023815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558193, 29.763678, 51.057529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.883667, 29.555065, 51.160233>,  <37.078953, 29.429897, 51.221855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.883667, 29.555065, 51.160233>,  <36.558193, 29.763678, 51.057529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883667, 29.555065, 51.160233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442741, 0.269770, -0.855105,
		0.376696, 0.809463, 0.450411,
		0.813683, -0.521530, 0.256761,
		37.127773, 29.398605, 51.237263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041821, 30.250547, 50.902786>,  <36.558193, 29.763678, 51.057529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041821, 30.250547, 50.902786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.207417, 29.886837, 50.919888>,  <37.306774, 29.668612, 50.930149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.207417, 29.886837, 50.919888>,  <37.041821, 30.250547, 50.902786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207417, 29.886837, 50.919888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483995, 0.180101, -0.856336,
		0.770947, 0.375208, 0.514646,
		0.413992, -0.909276, 0.042750,
		37.331615, 29.614054, 50.932713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756752, 30.331629, 50.705441>,  <37.041821, 30.250547, 50.902786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756752, 30.331629, 50.705441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.666622, 29.944975, 50.656708>,  <37.612545, 29.712982, 50.627468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.666622, 29.944975, 50.656708>,  <37.756752, 30.331629, 50.705441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666622, 29.944975, 50.656708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474984, 0.000195, -0.879994,
		0.850658, -0.256154, 0.459093,
		-0.225325, -0.966636, -0.121835,
		37.599026, 29.654984, 50.620155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351162, 29.972092, 50.484455>,  <37.756752, 30.331629, 50.705441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351162, 29.972092, 50.484455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.067070, 29.717415, 50.364319>,  <37.896614, 29.564610, 50.292236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.067070, 29.717415, 50.364319>,  <38.351162, 29.972092, 50.484455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067070, 29.717415, 50.364319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362919, 0.034421, -0.931185,
		0.603215, -0.770351, 0.206621,
		-0.710227, -0.636691, -0.300338,
		37.854000, 29.526407, 50.274216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605625, 29.579617, 49.947353>,  <38.351162, 29.972092, 50.484455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605625, 29.579617, 49.947353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.214733, 29.527899, 49.880047>,  <37.980198, 29.496868, 49.839664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.214733, 29.527899, 49.880047>,  <38.605625, 29.579617, 49.947353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214733, 29.527899, 49.880047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169124, 0.004385, -0.985585,
		0.128167, -0.991597, 0.017581,
		-0.977226, -0.129293, -0.168265,
		37.921566, 29.489111, 49.829567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572670, 29.071428, 49.409657>,  <38.605625, 29.579617, 49.947353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572670, 29.071428, 49.409657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.195114, 29.203310, 49.402050>,  <37.968578, 29.282438, 49.397484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.195114, 29.203310, 49.402050>,  <38.572670, 29.071428, 49.409657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195114, 29.203310, 49.402050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005700, -0.041316, -0.999130,
		-0.330203, -0.943180, 0.037119,
		-0.943893, 0.329705, -0.019019,
		37.911945, 29.302221, 49.396343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226097, 28.645844, 48.937325>,  <38.572670, 29.071428, 49.409657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226097, 28.645844, 48.937325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.001965, 28.976816, 48.952198>,  <37.867485, 29.175400, 48.961121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.001965, 28.976816, 48.952198>,  <38.226097, 28.645844, 48.937325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001965, 28.976816, 48.952198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090688, -0.016665, -0.995740,
		-0.823288, -0.561318, 0.084376,
		-0.560333, 0.827432, 0.037185,
		37.833866, 29.225046, 48.963352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650066, 28.375862, 48.599304>,  <38.226097, 28.645844, 48.937325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650066, 28.375862, 48.599304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.660847, 28.775364, 48.616093>,  <37.667313, 29.015064, 48.626167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.660847, 28.775364, 48.616093>,  <37.650066, 28.375862, 48.599304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660847, 28.775364, 48.616093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236316, 0.047166, -0.970531,
		-0.971303, 0.016236, 0.237293,
		0.026949, 0.998755, 0.041976,
		37.668930, 29.074991, 48.628685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093544, 28.550282, 48.209435>,  <37.650066, 28.375862, 48.599304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093544, 28.550282, 48.209435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.354401, 28.853382, 48.200283>,  <37.510914, 29.035242, 48.194794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.354401, 28.853382, 48.200283>,  <37.093544, 28.550282, 48.209435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354401, 28.853382, 48.200283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188226, 0.132612, -0.973132,
		-0.734358, 0.638927, 0.229111,
		0.652143, 0.757751, -0.022878,
		37.550045, 29.080708, 48.193420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768867, 29.128080, 47.812202>,  <37.093544, 28.550282, 48.209435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768867, 29.128080, 47.812202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.157272, 29.223686, 47.813538>,  <37.390316, 29.281050, 47.814339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.157272, 29.223686, 47.813538>,  <36.768867, 29.128080, 47.812202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157272, 29.223686, 47.813538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058369, 0.250632, -0.966321,
		-0.231802, 0.938113, 0.257317,
		0.971010, 0.239015, 0.003341,
		37.448574, 29.295391, 47.814541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167397, 29.510418, 47.560558>,  <36.768867, 29.128080, 47.812202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167397, 29.510418, 47.560558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.960293, 29.211725, 47.393555>,  <35.836029, 29.032509, 47.293350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.960293, 29.211725, 47.393555>,  <36.167397, 29.510418, 47.560558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960293, 29.211725, 47.393555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045809, -0.511516, 0.858052,
		-0.854299, 0.425139, 0.299049,
		-0.517759, -0.746732, -0.417512,
		35.804966, 28.987705, 47.268299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522045, 29.388636, 47.930740>,  <36.167397, 29.510418, 47.560558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522045, 29.388636, 47.930740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.567234, 29.037310, 47.744923>,  <35.594349, 28.826513, 47.633434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.567234, 29.037310, 47.744923>,  <35.522045, 29.388636, 47.930740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567234, 29.037310, 47.744923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295449, -0.476082, 0.828285,
		-0.948656, 0.043675, -0.313281,
		0.112972, -0.878316, -0.464541,
		35.601124, 28.773815, 47.605560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016174, 29.023100, 48.275089>,  <35.522045, 29.388636, 47.930740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016174, 29.023100, 48.275089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.252586, 28.760838, 48.087132>,  <35.394432, 28.603479, 47.974358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.252586, 28.760838, 48.087132>,  <35.016174, 29.023100, 48.275089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252586, 28.760838, 48.087132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153088, -0.663108, 0.732702,
		-0.791990, -0.361114, -0.492290,
		0.591030, -0.655656, -0.469892,
		35.429893, 28.564140, 47.946163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711327, 28.390528, 48.299160>,  <35.016174, 29.023100, 48.275089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711327, 28.390528, 48.299160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.097698, 28.295635, 48.257790>,  <35.329521, 28.238699, 48.232967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.097698, 28.295635, 48.257790>,  <34.711327, 28.390528, 48.299160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097698, 28.295635, 48.257790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075580, -0.640806, 0.763973,
		-0.247514, -0.730129, -0.636905,
		0.965932, -0.237232, -0.103425,
		35.387478, 28.224466, 48.226761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751499, 27.670702, 48.217205>,  <34.711327, 28.390528, 48.299160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751499, 27.670702, 48.217205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.116341, 27.776707, 48.342316>,  <35.335247, 27.840309, 48.417381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.116341, 27.776707, 48.342316>,  <34.751499, 27.670702, 48.217205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116341, 27.776707, 48.342316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058096, -0.671701, 0.738541,
		0.405812, -0.691800, -0.597268,
		0.912108, 0.265010, 0.312775,
		35.389973, 27.856209, 48.436150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098698, 27.041073, 48.338078>,  <34.751499, 27.670702, 48.217205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098698, 27.041073, 48.338078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.302242, 27.309347, 48.553944>,  <35.424370, 27.470312, 48.683464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.302242, 27.309347, 48.553944>,  <35.098698, 27.041073, 48.338078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302242, 27.309347, 48.553944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030766, -0.612334, 0.790000,
		0.860299, -0.418603, -0.290958,
		0.508860, 0.670685, 0.539669,
		35.454899, 27.510553, 48.715843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630325, 26.611614, 48.717606>,  <35.098698, 27.041073, 48.338078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630325, 26.611614, 48.717606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.571369, 26.952837, 48.917831>,  <35.535995, 27.157572, 49.037968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.571369, 26.952837, 48.917831>,  <35.630325, 26.611614, 48.717606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571369, 26.952837, 48.917831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122423, -0.486469, 0.865078,
		0.981473, 0.188785, -0.032734,
		-0.147390, 0.853058, 0.500567,
		35.527153, 27.208754, 49.068001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061855, 26.608150, 49.404480>,  <35.630325, 26.611614, 48.717606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061855, 26.608150, 49.404480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.809174, 26.904917, 49.494377>,  <35.657566, 27.082977, 49.548313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.809174, 26.904917, 49.494377>,  <36.061855, 26.608150, 49.404480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809174, 26.904917, 49.494377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025616, -0.269772, 0.962583,
		0.774786, 0.613825, 0.151412,
		-0.631705, 0.741917, 0.224739,
		35.619663, 27.127493, 49.561798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273888, 26.860792, 49.948330>,  <36.061855, 26.608150, 49.404480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273888, 26.860792, 49.948330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.895485, 26.985010, 49.985512>,  <35.668446, 27.059540, 50.007820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.895485, 26.985010, 49.985512>,  <36.273888, 26.860792, 49.948330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895485, 26.985010, 49.985512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042895, -0.164305, 0.985476,
		0.321305, 0.936251, 0.142112,
		-0.946004, 0.310543, 0.092953,
		35.611683, 27.078173, 50.013397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274502, 27.138466, 50.592403>,  <36.273888, 26.860792, 49.948330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274502, 27.138466, 50.592403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.887379, 27.101009, 50.498955>,  <35.655106, 27.078535, 50.442886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.887379, 27.101009, 50.498955>,  <36.274502, 27.138466, 50.592403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887379, 27.101009, 50.498955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169628, -0.443066, 0.880294,
		-0.185940, 0.891585, 0.412919,
		-0.967808, -0.093639, -0.233622,
		35.597034, 27.072918, 50.428867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839207, 27.413582, 51.202930>,  <36.274502, 27.138466, 50.592403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839207, 27.413582, 51.202930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.579933, 27.176882, 51.011227>,  <35.424370, 27.034863, 50.896202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.579933, 27.176882, 51.011227>,  <35.839207, 27.413582, 51.202930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579933, 27.176882, 51.011227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405033, -0.265046, 0.875042,
		-0.644831, 0.761305, -0.067880,
		-0.648183, -0.591748, -0.479263,
		35.385479, 26.999357, 50.867447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353584, 27.273939, 51.729527>,  <35.839207, 27.413582, 51.202930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353584, 27.273939, 51.729527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.267242, 26.988630, 51.462799>,  <35.215435, 26.817446, 51.302761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.267242, 26.988630, 51.462799>,  <35.353584, 27.273939, 51.729527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267242, 26.988630, 51.462799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664800, -0.392828, 0.635396,
		-0.715155, 0.580457, -0.389388,
		-0.215857, -0.713272, -0.666820,
		35.202484, 26.774649, 51.262753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604046, 27.283812, 51.677017>,  <35.353584, 27.273939, 51.729527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604046, 27.283812, 51.677017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.759007, 26.930731, 51.570614>,  <34.851982, 26.718882, 51.506771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.759007, 26.930731, 51.570614>,  <34.604046, 27.283812, 51.677017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759007, 26.930731, 51.570614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654441, -0.466532, 0.595025,
		-0.649330, -0.056426, -0.758411,
		0.387398, -0.882702, -0.266006,
		34.875225, 26.665920, 51.490810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031200, 26.879725, 51.398243>,  <34.604046, 27.283812, 51.677017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031200, 26.879725, 51.398243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.321552, 26.656830, 51.559528>,  <34.495766, 26.523094, 51.656300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.321552, 26.656830, 51.559528>,  <34.031200, 26.879725, 51.398243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321552, 26.656830, 51.559528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651047, -0.367522, 0.664127,
		-0.221882, -0.744593, -0.629563,
		0.725883, -0.557234, 0.403218,
		34.539318, 26.489660, 51.680492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434078, 27.396271, 51.252384>,  <34.031200, 26.879725, 51.398243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434078, 27.396271, 51.252384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542755, 27.586245, 51.587196>,  <33.607964, 27.700228, 51.788082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542755, 27.586245, 51.587196>,  <33.434078, 27.396271, 51.252384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542755, 27.586245, 51.587196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006351, 0.868844, -0.495046,
		-0.962362, 0.139818, 0.233046,
		0.271697, 0.474934, 0.837030,
		33.624264, 27.728725, 51.838306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952377, 27.971029, 51.406166>,  <33.434078, 27.396271, 51.252384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952377, 27.971029, 51.406166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.289577, 28.076138, 51.593914>,  <33.491898, 28.139202, 51.706562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.289577, 28.076138, 51.593914>,  <32.952377, 27.971029, 51.406166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289577, 28.076138, 51.593914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063337, 0.818014, -0.571701,
		-0.534178, 0.511670, 0.672939,
		0.842996, 0.262768, 0.469373,
		33.542477, 28.154968, 51.734726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859169, 28.703382, 51.559162>,  <32.952377, 27.971029, 51.406166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859169, 28.703382, 51.559162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.249352, 28.615370, 51.562504>,  <33.483459, 28.562563, 51.564510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.249352, 28.615370, 51.562504>,  <32.859169, 28.703382, 51.559162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249352, 28.615370, 51.562504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180135, 0.775606, -0.604968,
		0.126630, 0.591626, 0.796206,
		0.975457, -0.220032, 0.008357,
		33.541988, 28.549360, 51.565010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095795, 29.339869, 51.621170>,  <32.859169, 28.703382, 51.559162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095795, 29.339869, 51.621170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.393841, 29.115881, 51.476261>,  <33.572666, 28.981489, 51.389317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.393841, 29.115881, 51.476261>,  <33.095795, 29.339869, 51.621170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393841, 29.115881, 51.476261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238060, 0.730716, -0.639829,
		0.623004, 0.390501, 0.677772,
		0.745113, -0.559967, -0.362276,
		33.617374, 28.947891, 51.367577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599621, 29.812338, 51.623547>,  <33.095795, 29.339869, 51.621170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599621, 29.812338, 51.623547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.750332, 29.537384, 51.375179>,  <33.840759, 29.372412, 51.226158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.750332, 29.537384, 51.375179>,  <33.599621, 29.812338, 51.623547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750332, 29.537384, 51.375179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230135, 0.718767, -0.656058,
		0.897260, 0.104293, 0.429007,
		0.376779, -0.687384, -0.620919,
		33.863365, 29.331169, 51.188904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262344, 30.115799, 51.397701>,  <33.599621, 29.812338, 51.623547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262344, 30.115799, 51.397701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.182621, 29.819056, 51.141602>,  <34.134785, 29.641010, 50.987942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.182621, 29.819056, 51.141602>,  <34.262344, 30.115799, 51.397701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182621, 29.819056, 51.141602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259160, 0.590194, -0.764531,
		0.945045, -0.318308, 0.074627,
		-0.199311, -0.741857, -0.640253,
		34.122829, 29.596498, 50.949524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838299, 30.039753, 50.944668>,  <34.262344, 30.115799, 51.397701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838299, 30.039753, 50.944668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.520058, 29.881866, 50.760834>,  <34.329113, 29.787134, 50.650532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.520058, 29.881866, 50.760834>,  <34.838299, 30.039753, 50.944668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520058, 29.881866, 50.760834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210813, 0.530823, -0.820844,
		0.567957, -0.749952, -0.339113,
		-0.795602, -0.394715, -0.459584,
		34.281376, 29.763453, 50.622959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596565, 30.240332, 51.015705>,  <34.838299, 30.039753, 50.944668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596565, 30.240332, 51.015705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.606873, 30.621559, 51.136368>,  <35.613056, 30.850296, 51.208763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.606873, 30.621559, 51.136368>,  <35.596565, 30.240332, 51.015705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606873, 30.621559, 51.136368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109896, -0.302626, 0.946753,
		0.993609, 0.008752, -0.112538,
		0.025771, 0.953069, 0.301654,
		35.614605, 30.907480, 51.226864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202446, 30.320389, 51.355770>,  <35.596565, 30.240332, 51.015705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202446, 30.320389, 51.355770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.946854, 30.596586, 51.491367>,  <35.793499, 30.762304, 51.572727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.946854, 30.596586, 51.491367>,  <36.202446, 30.320389, 51.355770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946854, 30.596586, 51.491367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132731, -0.335119, 0.932780,
		0.757683, 0.641026, 0.122485,
		-0.638983, 0.690493, 0.338998,
		35.755157, 30.803734, 51.593067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433521, 30.470144, 51.934475>,  <36.202446, 30.320389, 51.355770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433521, 30.470144, 51.934475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086872, 30.661314, 51.991821>,  <35.878883, 30.776016, 52.026230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086872, 30.661314, 51.991821>,  <36.433521, 30.470144, 51.934475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086872, 30.661314, 51.991821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074926, -0.159415, 0.984364,
		0.493306, 0.863814, 0.102344,
		-0.866623, 0.477925, 0.143363,
		35.826885, 30.804691, 52.034828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570316, 30.965544, 52.500065>,  <36.433521, 30.470144, 51.934475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570316, 30.965544, 52.500065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.177513, 30.894575, 52.474197>,  <35.941830, 30.851994, 52.458679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.177513, 30.894575, 52.474197>,  <36.570316, 30.965544, 52.500065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177513, 30.894575, 52.474197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017029, -0.257850, 0.966035,
		-0.188071, 0.949755, 0.250190,
		-0.982008, -0.177423, -0.064667,
		35.882912, 30.841349, 52.454796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291382, 31.269272, 53.044765>,  <36.570316, 30.965544, 52.500065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291382, 31.269272, 53.044765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.991344, 31.021421, 52.952316>,  <35.811321, 30.872711, 52.896847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.991344, 31.021421, 52.952316>,  <36.291382, 31.269272, 53.044765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991344, 31.021421, 52.952316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125152, -0.210172, 0.969621,
		-0.649376, 0.756237, 0.080102,
		-0.750098, -0.619624, -0.231125,
		35.766315, 30.835535, 52.882980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755501, 31.422354, 53.564007>,  <36.291382, 31.269272, 53.044765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755501, 31.422354, 53.564007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.658176, 31.062414, 53.419193>,  <35.599781, 30.846451, 53.332306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.658176, 31.062414, 53.419193>,  <35.755501, 31.422354, 53.564007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658176, 31.062414, 53.419193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152143, -0.333222, 0.930492,
		-0.957941, 0.281484, -0.055828,
		-0.243315, -0.899850, -0.362033,
		35.585182, 30.792459, 53.310585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012039, 31.248510, 53.710045>,  <35.755501, 31.422354, 53.564007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012039, 31.248510, 53.710045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.184940, 30.894508, 53.640846>,  <35.288681, 30.682108, 53.599327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.184940, 30.894508, 53.640846>,  <35.012039, 31.248510, 53.710045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184940, 30.894508, 53.640846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037835, -0.209479, 0.977081,
		-0.900959, -0.415798, -0.124032,
		0.432251, -0.885003, -0.173000,
		35.314617, 30.629007, 53.588947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746555, 30.839350, 54.159599>,  <35.012039, 31.248510, 53.710045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746555, 30.839350, 54.159599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064098, 30.628426, 54.038448>,  <35.254623, 30.501871, 53.965755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064098, 30.628426, 54.038448>,  <34.746555, 30.839350, 54.159599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064098, 30.628426, 54.038448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139728, -0.642919, 0.753081,
		-0.591834, -0.555518, -0.584066,
		0.793857, -0.527309, -0.302880,
		35.302254, 30.470232, 53.947582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584076, 30.175917, 54.209709>,  <34.746555, 30.839350, 54.159599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584076, 30.175917, 54.209709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.982891, 30.149921, 54.193260>,  <35.222179, 30.134325, 54.183392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.982891, 30.149921, 54.193260>,  <34.584076, 30.175917, 54.209709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982891, 30.149921, 54.193260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007692, -0.616274, 0.787494,
		-0.076515, -0.784846, -0.614949,
		0.997039, -0.064986, -0.041118,
		35.282001, 30.130426, 54.180923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.998989, 36.207870, 38.909779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316868, 36.269581, 39.144608>,  <37.507595, 36.306606, 39.285507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316868, 36.269581, 39.144608>,  <36.998989, 36.207870, 38.909779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316868, 36.269581, 39.144608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342957, -0.683886, 0.643957,
		0.500838, -0.713092, -0.490572,
		0.794696, 0.154273, 0.587076,
		37.555275, 36.315865, 39.320732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195599, 35.535889, 39.236549>,  <36.998989, 36.207870, 38.909779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195599, 35.535889, 39.236549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329052, 35.807503, 39.498116>,  <37.409122, 35.970470, 39.655056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329052, 35.807503, 39.498116>,  <37.195599, 35.535889, 39.236549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329052, 35.807503, 39.498116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142777, -0.649258, 0.747046,
		0.931828, -0.342602, -0.119663,
		0.333632, 0.679034, 0.653913,
		37.429142, 36.011211, 39.694290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427628, 35.140064, 39.761211>,  <37.195599, 35.535889, 39.236549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427628, 35.140064, 39.761211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435360, 35.503529, 39.928043>,  <37.439999, 35.721607, 40.028141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435360, 35.503529, 39.928043>,  <37.427628, 35.140064, 39.761211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435360, 35.503529, 39.928043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084396, -0.417150, 0.904911,
		0.996245, 0.017709, -0.084751,
		0.019329, 0.908665, 0.417078,
		37.441158, 35.776127, 40.053165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895176, 34.999004, 40.239021>,  <37.427628, 35.140064, 39.761211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895176, 34.999004, 40.239021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694130, 35.324944, 40.354538>,  <37.573502, 35.520508, 40.423847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694130, 35.324944, 40.354538>,  <37.895176, 34.999004, 40.239021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694130, 35.324944, 40.354538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171328, -0.421315, 0.890584,
		0.847365, 0.398141, 0.351364,
		-0.502613, 0.814848, 0.288795,
		37.543346, 35.569397, 40.441177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997559, 34.950603, 40.886066>,  <37.895176, 34.999004, 40.239021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997559, 34.950603, 40.886066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700623, 35.217934, 40.866951>,  <37.522461, 35.378330, 40.855484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700623, 35.217934, 40.866951>,  <37.997559, 34.950603, 40.886066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700623, 35.217934, 40.866951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369007, -0.348264, 0.861711,
		0.559258, 0.657313, 0.505144,
		-0.742337, 0.668321, -0.047784,
		37.477921, 35.418430, 40.852615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073933, 35.344440, 41.503326>,  <37.997559, 34.950603, 40.886066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073933, 35.344440, 41.503326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687981, 35.359856, 41.399380>,  <37.456409, 35.369102, 41.337013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687981, 35.359856, 41.399380>,  <38.073933, 35.344440, 41.503326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687981, 35.359856, 41.399380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261025, -0.252432, 0.931743,
		-0.029693, 0.966847, 0.253624,
		-0.964875, 0.038535, -0.259866,
		37.398518, 35.371418, 41.321419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821754, 35.518051, 42.072784>,  <38.073933, 35.344440, 41.503326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821754, 35.518051, 42.072784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495296, 35.399235, 41.874519>,  <37.299423, 35.327946, 41.755562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495296, 35.399235, 41.874519>,  <37.821754, 35.518051, 42.072784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495296, 35.399235, 41.874519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450571, -0.209925, 0.867708,
		-0.361793, 0.931504, 0.037493,
		-0.816144, -0.297038, -0.495658,
		37.250454, 35.310123, 41.725822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355415, 35.779667, 42.496670>,  <37.821754, 35.518051, 42.072784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355415, 35.779667, 42.496670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164272, 35.519539, 42.260456>,  <37.049587, 35.363461, 42.118729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164272, 35.519539, 42.260456>,  <37.355415, 35.779667, 42.496670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164272, 35.519539, 42.260456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668417, -0.167010, 0.724794,
		-0.569973, 0.741075, -0.354878,
		-0.477859, -0.650320, -0.590538,
		37.020916, 35.324444, 42.083294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652531, 35.910385, 42.506592>,  <37.355415, 35.779667, 42.496670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652531, 35.910385, 42.506592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690804, 35.525845, 42.403324>,  <36.713768, 35.295120, 42.341362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690804, 35.525845, 42.403324>,  <36.652531, 35.910385, 42.506592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690804, 35.525845, 42.403324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631202, -0.259144, 0.731046,
		-0.769694, 0.093007, -0.631602,
		0.095684, -0.961350, -0.258168,
		36.719509, 35.237438, 42.325874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921246, 35.649452, 42.464764>,  <36.652531, 35.910385, 42.506592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921246, 35.649452, 42.464764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160530, 35.333096, 42.516342>,  <36.304100, 35.143280, 42.547291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160530, 35.333096, 42.516342>,  <35.921246, 35.649452, 42.464764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160530, 35.333096, 42.516342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562850, -0.300162, 0.770131,
		-0.570387, -0.533282, -0.624716,
		0.598212, -0.790894, 0.128950,
		36.339993, 35.095829, 42.555027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504341, 35.109138, 42.731087>,  <35.921246, 35.649452, 42.464764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504341, 35.109138, 42.731087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876362, 34.995365, 42.824127>,  <36.099575, 34.927101, 42.879951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876362, 34.995365, 42.824127>,  <35.504341, 35.109138, 42.731087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876362, 34.995365, 42.824127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317768, -0.304826, 0.897833,
		-0.184464, -0.908946, -0.373886,
		0.930051, -0.284427, 0.232605,
		36.155376, 34.910034, 42.893909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510395, 34.444344, 42.960667>,  <35.504341, 35.109138, 42.731087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510395, 34.444344, 42.960667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823917, 34.627724, 43.128223>,  <36.012032, 34.737751, 43.228756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823917, 34.627724, 43.128223>,  <35.510395, 34.444344, 42.960667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823917, 34.627724, 43.128223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313656, -0.289919, 0.904194,
		0.535970, -0.840103, -0.083446,
		0.783808, 0.458448, 0.418891,
		36.059059, 34.765259, 43.253891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953609, 34.301807, 42.650200>,  <35.510395, 34.444344, 42.960667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953609, 34.301807, 42.650200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560982, 34.320950, 42.724201>,  <34.325405, 34.332436, 42.768600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560982, 34.320950, 42.724201>,  <34.953609, 34.301807, 42.650200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560982, 34.320950, 42.724201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191032, -0.221400, -0.956289,
		-0.004798, -0.974009, 0.226461,
		-0.981572, 0.047849, 0.185004,
		34.266510, 34.335304, 42.779701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599358, 33.756016, 42.295815>,  <34.953609, 34.301807, 42.650200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599358, 33.756016, 42.295815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328960, 34.043999, 42.358681>,  <34.166721, 34.216789, 42.396400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328960, 34.043999, 42.358681>,  <34.599358, 33.756016, 42.295815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328960, 34.043999, 42.358681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393154, -0.171973, -0.903247,
		-0.623269, -0.672377, 0.399306,
		-0.675992, 0.719955, 0.157162,
		34.126163, 34.259987, 42.405830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006367, 33.407581, 42.186745>,  <34.599358, 33.756016, 42.295815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006367, 33.407581, 42.186745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924332, 33.798439, 42.164398>,  <33.875111, 34.032955, 42.150990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924332, 33.798439, 42.164398>,  <34.006367, 33.407581, 42.186745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924332, 33.798439, 42.164398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529581, -0.158796, -0.833263,
		-0.823093, -0.141305, 0.550046,
		-0.205089, 0.977147, -0.055871,
		33.862804, 34.091583, 42.147636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390625, 33.507278, 41.851139>,  <34.006367, 33.407581, 42.186745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390625, 33.507278, 41.851139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546883, 33.871933, 41.800053>,  <33.640636, 34.090725, 41.769402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546883, 33.871933, 41.800053>,  <33.390625, 33.507278, 41.851139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546883, 33.871933, 41.800053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343234, 0.015507, -0.939122,
		-0.854160, 0.410698, 0.318963,
		0.390642, 0.911639, -0.127720,
		33.664074, 34.145424, 41.761738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851990, 33.864204, 41.667397>,  <33.390625, 33.507278, 41.851139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851990, 33.864204, 41.667397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168957, 34.058289, 41.519535>,  <33.359138, 34.174740, 41.430817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168957, 34.058289, 41.519535>,  <32.851990, 33.864204, 41.667397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168957, 34.058289, 41.519535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442615, 0.040388, -0.895802,
		-0.419720, 0.873466, 0.246765,
		0.792418, 0.485208, -0.369657,
		33.406681, 34.203850, 41.408638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573021, 34.600971, 41.518620>,  <32.851990, 33.864204, 41.667397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573021, 34.600971, 41.518620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914024, 34.536682, 41.319668>,  <33.118626, 34.498108, 41.200294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914024, 34.536682, 41.319668>,  <32.573021, 34.600971, 41.518620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914024, 34.536682, 41.319668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469350, 0.183451, -0.863746,
		0.230071, 0.969801, 0.080958,
		0.852513, -0.160725, -0.497382,
		33.169777, 34.488464, 41.170452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472553, 34.857895, 40.842499>,  <32.573021, 34.600971, 41.518620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472553, 34.857895, 40.842499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813293, 34.673916, 40.742260>,  <33.017738, 34.563530, 40.682117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813293, 34.673916, 40.742260>,  <32.472553, 34.857895, 40.842499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813293, 34.673916, 40.742260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310704, -0.058564, -0.948701,
		0.421673, 0.886015, -0.192794,
		0.851854, -0.459944, -0.250593,
		33.068851, 34.535934, 40.667084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625381, 35.166668, 40.232971>,  <32.472553, 34.857895, 40.842499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625381, 35.166668, 40.232971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849041, 34.836330, 40.203735>,  <32.983238, 34.638130, 40.186195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849041, 34.836330, 40.203735>,  <32.625381, 35.166668, 40.232971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849041, 34.836330, 40.203735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170909, -0.028553, -0.984873,
		0.811260, 0.563181, -0.157109,
		0.559148, -0.825840, -0.073089,
		33.016785, 34.588577, 40.181808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042065, 35.188396, 39.552757>,  <32.625381, 35.166668, 40.232971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042065, 35.188396, 39.552757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980618, 34.809372, 39.664852>,  <32.943748, 34.581959, 39.732109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980618, 34.809372, 39.664852>,  <33.042065, 35.188396, 39.552757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980618, 34.809372, 39.664852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192929, -0.249382, -0.948993,
		0.969113, -0.199848, -0.144503,
		-0.153618, -0.947560, 0.280236,
		32.934532, 34.525105, 39.748924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368824, 34.740398, 39.101616>,  <33.042065, 35.188396, 39.552757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368824, 34.740398, 39.101616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076336, 34.521599, 39.264641>,  <32.900845, 34.390320, 39.362457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076336, 34.521599, 39.264641>,  <33.368824, 34.740398, 39.101616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076336, 34.521599, 39.264641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187962, -0.412776, -0.891227,
		0.655735, -0.728289, 0.199015,
		-0.731219, -0.547002, 0.407562,
		32.856972, 34.357498, 39.386909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298969, 34.253235, 38.656216>,  <33.368824, 34.740398, 39.101616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298969, 34.253235, 38.656216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966091, 34.172195, 38.862671>,  <32.766365, 34.123573, 38.986546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966091, 34.172195, 38.862671>,  <33.298969, 34.253235, 38.656216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966091, 34.172195, 38.862671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437661, -0.331517, -0.835793,
		0.340437, -0.921440, 0.187220,
		-0.832199, -0.202596, 0.516139,
		32.716431, 34.111416, 39.017513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160904, 33.655762, 38.251122>,  <33.298969, 34.253235, 38.656216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160904, 33.655762, 38.251122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836239, 33.783283, 38.446903>,  <32.641438, 33.859795, 38.564373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836239, 33.783283, 38.446903>,  <33.160904, 33.655762, 38.251122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836239, 33.783283, 38.446903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560266, -0.187886, -0.806723,
		-0.165226, -0.929012, 0.331116,
		-0.811667, 0.318804, 0.489450,
		32.592739, 33.878925, 38.593739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178322, 33.974255, 37.610516>,  <33.160904, 33.655762, 38.251122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178322, 33.974255, 37.610516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492958, 34.002354, 37.365128>,  <33.681740, 34.019215, 37.217896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492958, 34.002354, 37.365128>,  <33.178322, 33.974255, 37.610516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492958, 34.002354, 37.365128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585307, 0.231662, 0.777013,
		0.196703, -0.970256, 0.141103,
		0.786590, 0.070252, -0.613466,
		33.728935, 34.023430, 37.181087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859081, 33.624256, 37.877621>,  <33.178322, 33.974255, 37.610516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859081, 33.624256, 37.877621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010086, 33.904377, 37.635277>,  <34.100689, 34.072449, 37.489872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010086, 33.904377, 37.635277>,  <33.859081, 33.624256, 37.877621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010086, 33.904377, 37.635277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746765, 0.156644, 0.646377,
		0.547561, -0.696452, -0.463823,
		0.377516, 0.700298, -0.605859,
		34.123341, 34.114468, 37.453518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649727, 33.593723, 37.705032>,  <33.859081, 33.624256, 37.877621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649727, 33.593723, 37.705032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536762, 33.976723, 37.728519>,  <34.468983, 34.206520, 37.742611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536762, 33.976723, 37.728519>,  <34.649727, 33.593723, 37.705032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536762, 33.976723, 37.728519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635367, 0.140838, 0.759259,
		0.718717, 0.251730, -0.648135,
		-0.282410, 0.957495, 0.058718,
		34.452038, 34.263969, 37.746136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149612, 33.041218, 37.379040>,  <34.649727, 33.593723, 37.705032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149612, 33.041218, 37.379040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073757, 33.284657, 37.070847>,  <35.028244, 33.430717, 36.885929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073757, 33.284657, 37.070847>,  <35.149612, 33.041218, 37.379040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073757, 33.284657, 37.070847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945948, -0.097027, -0.309465,
		-0.263096, -0.787528, -0.557297,
		-0.189640, 0.608593, -0.770488,
		35.016865, 33.467236, 36.839699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825977, 32.887321, 37.531815>,  <35.149612, 33.041218, 37.379040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825977, 32.887321, 37.531815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955521, 33.137119, 37.816101>,  <36.033245, 33.286999, 37.986671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955521, 33.137119, 37.816101>,  <35.825977, 32.887321, 37.531815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955521, 33.137119, 37.816101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463936, -0.549859, 0.694563,
		0.824548, -0.554667, 0.111651,
		0.323858, 0.624500, 0.710715,
		36.052677, 33.324471, 38.029316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128239, 32.439407, 38.005009>,  <35.825977, 32.887321, 37.531815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128239, 32.439407, 38.005009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025570, 32.782879, 38.182449>,  <35.963970, 32.988964, 38.288914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025570, 32.782879, 38.182449>,  <36.128239, 32.439407, 38.005009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025570, 32.782879, 38.182449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499737, -0.510773, 0.699553,
		0.827274, -0.042129, 0.560216,
		-0.256672, 0.858683, 0.443603,
		35.948570, 33.040485, 38.315529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243816, 32.367035, 38.743565>,  <36.128239, 32.439407, 38.005009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243816, 32.367035, 38.743565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007618, 32.688236, 38.711300>,  <35.865898, 32.880959, 38.691940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007618, 32.688236, 38.711300>,  <36.243816, 32.367035, 38.743565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007618, 32.688236, 38.711300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301593, -0.126860, 0.944959,
		0.748572, 0.582318, 0.317090,
		-0.590493, 0.803002, -0.080659,
		35.830471, 32.929138, 38.687103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376865, 32.769260, 39.321659>,  <36.243816, 32.367035, 38.743565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376865, 32.769260, 39.321659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017601, 32.911602, 39.218376>,  <35.802040, 32.997005, 39.156406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017601, 32.911602, 39.218376>,  <36.376865, 32.769260, 39.321659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017601, 32.911602, 39.218376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312163, -0.102580, 0.944474,
		0.309608, 0.928895, 0.203218,
		-0.898163, 0.355854, -0.258207,
		35.748154, 33.018360, 39.140915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190125, 33.136002, 39.811378>,  <36.376865, 32.769260, 39.321659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190125, 33.136002, 39.811378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836086, 33.067207, 39.638390>,  <35.623665, 33.025932, 39.534595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836086, 33.067207, 39.638390>,  <36.190125, 33.136002, 39.811378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836086, 33.067207, 39.638390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376134, -0.282934, 0.882310,
		-0.274104, 0.943594, 0.185734,
		-0.885093, -0.171984, -0.432472,
		35.570557, 33.015614, 39.508648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659096, 33.595570, 40.102722>,  <36.190125, 33.136002, 39.811378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659096, 33.595570, 40.102722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446877, 33.287415, 39.961288>,  <35.319546, 33.102520, 39.876431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446877, 33.287415, 39.961288>,  <35.659096, 33.595570, 40.102722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446877, 33.287415, 39.961288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134643, -0.335240, 0.932462,
		-0.836893, 0.542322, 0.074133,
		-0.530547, -0.770390, -0.353580,
		35.287712, 33.056297, 39.855213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164593, 33.558342, 40.592896>,  <35.659096, 33.595570, 40.102722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164593, 33.558342, 40.592896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127209, 33.207417, 40.404602>,  <35.104778, 32.996861, 40.291626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127209, 33.207417, 40.404602>,  <35.164593, 33.558342, 40.592896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127209, 33.207417, 40.404602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141395, -0.456318, 0.878511,
		-0.985532, 0.148661, -0.081402,
		-0.093455, -0.877311, -0.470736,
		35.099171, 32.944221, 40.263382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686417, 33.252880, 40.919640>,  <35.164593, 33.558342, 40.592896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686417, 33.252880, 40.919640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881027, 32.948673, 40.747635>,  <34.997795, 32.766148, 40.644432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881027, 32.948673, 40.747635>,  <34.686417, 33.252880, 40.919640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881027, 32.948673, 40.747635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049641, -0.515455, 0.855477,
		-0.872255, -0.394865, -0.288535,
		0.486525, -0.760518, -0.430007,
		35.026985, 32.720516, 40.618633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371429, 32.645527, 41.131851>,  <34.686417, 33.252880, 40.919640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371429, 32.645527, 41.131851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739918, 32.519192, 41.040989>,  <34.961010, 32.443390, 40.986473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739918, 32.519192, 41.040989>,  <34.371429, 32.645527, 41.131851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739918, 32.519192, 41.040989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095397, -0.382668, 0.918948,
		-0.377134, -0.868233, -0.322398,
		0.921232, -0.315811, -0.227144,
		35.016285, 32.424442, 40.972843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331673, 32.045937, 41.312122>,  <34.371429, 32.645527, 41.131851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331673, 32.045937, 41.312122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728073, 32.099365, 41.315769>,  <34.965912, 32.131424, 41.317959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728073, 32.099365, 41.315769>,  <34.331673, 32.045937, 41.312122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728073, 32.099365, 41.315769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072956, -0.595880, 0.799753,
		0.112259, -0.791888, -0.600260,
		0.990997, 0.133572, 0.009120,
		35.025372, 32.139439, 41.318504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618782, 31.385105, 41.244534>,  <34.331673, 32.045937, 41.312122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618782, 31.385105, 41.244534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899372, 31.622271, 41.402718>,  <35.067726, 31.764570, 41.497627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899372, 31.622271, 41.402718>,  <34.618782, 31.385105, 41.244534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899372, 31.622271, 41.402718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039954, -0.586722, 0.808802,
		0.711573, -0.551555, -0.435260,
		0.701475, 0.592912, 0.395458,
		35.109814, 31.800144, 41.521355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962250, 30.986387, 41.643089>,  <34.618782, 31.385105, 41.244534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962250, 30.986387, 41.643089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133938, 31.319407, 41.783169>,  <35.236950, 31.519218, 41.867214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133938, 31.319407, 41.783169>,  <34.962250, 30.986387, 41.643089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133938, 31.319407, 41.783169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234817, -0.477252, 0.846813,
		0.872144, -0.281234, -0.400341,
		0.429216, 0.832549, 0.350194,
		35.262703, 31.569172, 41.888226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579098, 30.818007, 41.961224>,  <34.962250, 30.986387, 41.643089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579098, 30.818007, 41.961224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433025, 31.155176, 42.119270>,  <35.345383, 31.357477, 42.214100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433025, 31.155176, 42.119270>,  <35.579098, 30.818007, 41.961224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433025, 31.155176, 42.119270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167757, -0.357899, 0.918567,
		0.915696, 0.401729, -0.010708,
		-0.365183, 0.842925, 0.395120,
		35.323471, 31.408054, 42.237804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076454, 30.985609, 42.454952>,  <35.579098, 30.818007, 41.961224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076454, 30.985609, 42.454952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734379, 31.171850, 42.546043>,  <35.529133, 31.283594, 42.600697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734379, 31.171850, 42.546043>,  <36.076454, 30.985609, 42.454952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734379, 31.171850, 42.546043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113043, -0.261235, 0.958633,
		0.505832, 0.845559, 0.170773,
		-0.855193, 0.465603, 0.227726,
		35.477821, 31.311531, 42.614361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290665, 31.320311, 43.055138>,  <36.076454, 30.985609, 42.454952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290665, 31.320311, 43.055138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891285, 31.310062, 43.035400>,  <35.651657, 31.303913, 43.023560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891285, 31.310062, 43.035400>,  <36.290665, 31.320311, 43.055138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891285, 31.310062, 43.035400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036156, -0.374910, 0.926356,
		-0.042232, 0.926707, 0.373403,
		-0.998453, -0.025621, -0.049339,
		35.591747, 31.302376, 43.020599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987755, 31.671982, 43.662800>,  <36.290665, 31.320311, 43.055138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987755, 31.671982, 43.662800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731583, 31.396376, 43.527088>,  <35.577881, 31.231012, 43.445663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731583, 31.396376, 43.527088>,  <35.987755, 31.671982, 43.662800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731583, 31.396376, 43.527088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112565, -0.352775, 0.928913,
		-0.759725, 0.633092, 0.148368,
		-0.640427, -0.689017, -0.339276,
		35.539455, 31.189671, 43.425304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405079, 31.702744, 44.145016>,  <35.987755, 31.671982, 43.662800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405079, 31.702744, 44.145016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330341, 31.354479, 43.963013>,  <35.285500, 31.145519, 43.853809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330341, 31.354479, 43.963013>,  <35.405079, 31.702744, 44.145016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330341, 31.354479, 43.963013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374307, -0.365134, 0.852392,
		-0.908285, 0.329580, -0.257671,
		-0.186847, -0.870663, -0.455010,
		35.274288, 31.093281, 43.826511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866772, 31.412527, 44.543461>,  <35.405079, 31.702744, 44.145016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866772, 31.412527, 44.543461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020176, 31.100109, 44.346329>,  <35.112221, 30.912659, 44.228050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020176, 31.100109, 44.346329>,  <34.866772, 31.412527, 44.543461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020176, 31.100109, 44.346329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203570, -0.592004, 0.779802,
		-0.900821, -0.198738, -0.386038,
		0.383512, -0.781047, -0.492832,
		35.135231, 30.865795, 44.198479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403801, 30.836489, 44.760857>,  <34.866772, 31.412527, 44.543461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403801, 30.836489, 44.760857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739868, 30.681448, 44.609131>,  <34.941509, 30.588423, 44.518097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739868, 30.681448, 44.609131>,  <34.403801, 30.836489, 44.760857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739868, 30.681448, 44.609131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033712, -0.735397, 0.676797,
		-0.541277, -0.555836, -0.630925,
		0.840168, -0.387604, -0.379315,
		34.991920, 30.565166, 44.495335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224670, 30.118284, 44.595203>,  <34.403801, 30.836489, 44.760857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224670, 30.118284, 44.595203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622452, 30.135128, 44.633747>,  <34.861122, 30.145235, 44.656872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622452, 30.135128, 44.633747>,  <34.224670, 30.118284, 44.595203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622452, 30.135128, 44.633747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050257, -0.614560, 0.787268,
		0.092369, -0.787746, -0.609036,
		0.994456, 0.042110, 0.096356,
		34.920788, 30.147760, 44.662655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372852, 29.442076, 44.657608>,  <34.224670, 30.118284, 44.595203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372852, 29.442076, 44.657608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704327, 29.629839, 44.779552>,  <34.903210, 29.742496, 44.852718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704327, 29.629839, 44.779552>,  <34.372852, 29.442076, 44.657608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704327, 29.629839, 44.779552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126936, -0.688085, 0.714441,
		0.545133, -0.553349, -0.629790,
		0.828683, 0.469409, 0.304858,
		34.952930, 29.770662, 44.871010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918255, 28.921293, 44.858562>,  <34.372852, 29.442076, 44.657608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918255, 28.921293, 44.858562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988861, 29.250174, 45.075020>,  <35.031223, 29.447502, 45.204895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988861, 29.250174, 45.075020>,  <34.918255, 28.921293, 44.858562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988861, 29.250174, 45.075020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082524, -0.560199, 0.824237,
		0.980833, -0.100831, -0.166732,
		0.176512, 0.822199, 0.541141,
		35.041813, 29.496834, 45.237362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452633, 28.673552, 45.224998>,  <34.918255, 28.921293, 44.858562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452633, 28.673552, 45.224998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313641, 28.981518, 45.439098>,  <35.230244, 29.166298, 45.567558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313641, 28.981518, 45.439098>,  <35.452633, 28.673552, 45.224998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313641, 28.981518, 45.439098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238179, -0.479623, 0.844531,
		0.906933, 0.420943, -0.016717,
		-0.347482, 0.769914, 0.535246,
		35.209396, 29.212492, 45.599670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913063, 28.653126, 45.737892>,  <35.452633, 28.673552, 45.224998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913063, 28.653126, 45.737892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668617, 28.927177, 45.896450>,  <35.521950, 29.091608, 45.991585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668617, 28.927177, 45.896450>,  <35.913063, 28.653126, 45.737892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668617, 28.927177, 45.896450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323667, -0.240715, 0.915038,
		0.722338, 0.687499, -0.074648,
		-0.611119, 0.685129, 0.396399,
		35.485283, 29.132715, 46.015369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307564, 29.009228, 46.239773>,  <35.913063, 28.653126, 45.737892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307564, 29.009228, 46.239773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920944, 29.060560, 46.328594>,  <35.688972, 29.091360, 46.381886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920944, 29.060560, 46.328594>,  <36.307564, 29.009228, 46.239773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920944, 29.060560, 46.328594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186813, -0.240903, 0.952400,
		0.175713, 0.962028, 0.208873,
		-0.966554, 0.128329, 0.222049,
		35.630978, 29.099058, 46.395210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292770, 29.482559, 46.817902>,  <36.307564, 29.009228, 46.239773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292770, 29.482559, 46.817902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948780, 29.278666, 46.827801>,  <35.742386, 29.156330, 46.833740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948780, 29.278666, 46.827801>,  <36.292770, 29.482559, 46.817902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948780, 29.278666, 46.827801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293359, -0.454084, 0.841278,
		-0.417591, 0.730739, 0.540036,
		-0.859976, -0.509734, 0.024748,
		35.690788, 29.125746, 46.835224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878738, 29.719824, 47.413509>,  <36.292770, 29.482559, 46.817902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878738, 29.719824, 47.413509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257786, 29.592224, 47.419861>,  <37.485214, 29.515663, 47.423672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257786, 29.592224, 47.419861>,  <36.878738, 29.719824, 47.413509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257786, 29.592224, 47.419861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054387, 0.112166, -0.992200,
		0.314732, 0.941093, 0.123641,
		0.947621, -0.319001, 0.015881,
		37.542072, 29.496523, 47.424625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346886, 30.267185, 47.147026>,  <36.878738, 29.719824, 47.413509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346886, 30.267185, 47.147026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601372, 29.961725, 47.103073>,  <37.754063, 29.778450, 47.076702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601372, 29.961725, 47.103073>,  <37.346886, 30.267185, 47.147026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601372, 29.961725, 47.103073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407687, 0.453676, -0.792445,
		0.655002, 0.459365, 0.599964,
		0.636211, -0.763650, -0.109881,
		37.792236, 29.732630, 47.070110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915905, 30.536472, 46.807941>,  <37.346886, 30.267185, 47.147026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915905, 30.536472, 46.807941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028767, 30.153072, 46.791603>,  <38.096485, 29.923033, 46.781799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028767, 30.153072, 46.791603>,  <37.915905, 30.536472, 46.807941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028767, 30.153072, 46.791603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489839, 0.180538, -0.852915,
		0.824892, 0.220647, 0.520450,
		0.282154, -0.958499, -0.040843,
		38.113411, 29.865522, 46.779350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607723, 30.510876, 46.707047>,  <37.915905, 30.536472, 46.807941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607723, 30.510876, 46.707047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457397, 30.167110, 46.568382>,  <38.367203, 29.960852, 46.485184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457397, 30.167110, 46.568382>,  <38.607723, 30.510876, 46.707047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457397, 30.167110, 46.568382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389193, 0.193120, -0.900685,
		0.841007, -0.473408, 0.261900,
		-0.375813, -0.859412, -0.346662,
		38.344654, 29.909286, 46.464382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153561, 30.292301, 46.256123>,  <38.607723, 30.510876, 46.707047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153561, 30.292301, 46.256123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834927, 30.083416, 46.134308>,  <38.643745, 29.958084, 46.061218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834927, 30.083416, 46.134308>,  <39.153561, 30.292301, 46.256123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834927, 30.083416, 46.134308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107817, 0.372959, -0.921562,
		0.594832, -0.766939, -0.240791,
		-0.796587, -0.522214, -0.304537,
		38.595951, 29.926752, 46.042946>
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
