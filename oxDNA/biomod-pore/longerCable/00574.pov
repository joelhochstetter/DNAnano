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
	<24.314358, 34.921387, 34.731594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348583, 34.829098, 35.119293>,  <24.369118, 34.773724, 35.351913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348583, 34.829098, 35.119293>,  <24.314358, 34.921387, 34.731594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348583, 34.829098, 35.119293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939874, -0.341518, 0.001673,
		0.330630, -0.911116, -0.246071,
		0.085562, -0.230722, 0.969251,
		24.374252, 34.759880, 35.410069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831005, 34.358223, 34.672966>,  <24.314358, 34.921387, 34.731594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831005, 34.358223, 34.672966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096575, 34.077591, 34.776501>,  <25.255917, 33.909214, 34.838623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096575, 34.077591, 34.776501>,  <24.831005, 34.358223, 34.672966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096575, 34.077591, 34.776501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735348, 0.675415, -0.055481,
		-0.135897, 0.227169, 0.964327,
		0.663924, -0.701576, 0.258835,
		25.295752, 33.867119, 34.854153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264277, 34.781300, 34.911064>,  <24.831005, 34.358223, 34.672966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264277, 34.781300, 34.911064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461634, 34.434372, 34.884747>,  <25.580048, 34.226215, 34.868958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461634, 34.434372, 34.884747>,  <25.264277, 34.781300, 34.911064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461634, 34.434372, 34.884747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834330, 0.493293, -0.246082,
		0.245884, 0.066525, 0.967014,
		0.493391, -0.867316, -0.065789,
		25.609652, 34.174179, 34.865009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980549, 34.789253, 35.118855>,  <25.264277, 34.781300, 34.911064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980549, 34.789253, 35.118855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002209, 34.488186, 34.856388>,  <26.015205, 34.307545, 34.698910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002209, 34.488186, 34.856388>,  <25.980549, 34.789253, 35.118855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002209, 34.488186, 34.856388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901455, 0.319483, -0.292078,
		0.429473, -0.575689, 0.695798,
		0.054150, -0.752671, -0.656167,
		26.018454, 34.262386, 34.659538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521971, 34.344814, 35.254192>,  <25.980549, 34.789253, 35.118855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521971, 34.344814, 35.254192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419685, 34.384182, 34.869499>,  <26.358315, 34.407803, 34.638683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419685, 34.384182, 34.869499>,  <26.521971, 34.344814, 35.254192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419685, 34.384182, 34.869499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966335, -0.003227, -0.257268,
		-0.028424, -0.995140, -0.094280,
		-0.255714, 0.098419, -0.961730,
		26.342972, 34.413708, 34.580978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095173, 34.185169, 34.699722>,  <26.521971, 34.344814, 35.254192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095173, 34.185169, 34.699722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879742, 34.434433, 34.472881>,  <26.750483, 34.583992, 34.336777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879742, 34.434433, 34.472881>,  <27.095173, 34.185169, 34.699722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879742, 34.434433, 34.472881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831324, 0.502631, -0.237196,
		0.137235, -0.599198, -0.788751,
		-0.538578, 0.623156, -0.567107,
		26.718168, 34.621380, 34.302750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545044, 34.446186, 34.214455>,  <27.095173, 34.185169, 34.699722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545044, 34.446186, 34.214455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236242, 34.694683, 34.160694>,  <27.050961, 34.843781, 34.128437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236242, 34.694683, 34.160694>,  <27.545044, 34.446186, 34.214455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236242, 34.694683, 34.160694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635557, 0.757329, -0.150064,
		0.008556, -0.201268, -0.979499,
		-0.772006, 0.621244, -0.134398,
		27.004641, 34.881058, 34.120377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750975, 34.912651, 33.714413>,  <27.545044, 34.446186, 34.214455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750975, 34.912651, 33.714413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486605, 35.092102, 33.955048>,  <27.327982, 35.199772, 34.099430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486605, 35.092102, 33.955048>,  <27.750975, 34.912651, 33.714413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486605, 35.092102, 33.955048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512803, 0.855274, -0.074430,
		-0.547916, 0.259305, -0.795329,
		-0.660924, 0.448629, 0.601591,
		27.288328, 35.226692, 34.135525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520844, 35.543442, 33.390057>,  <27.750975, 34.912651, 33.714413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520844, 35.543442, 33.390057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490849, 35.627480, 33.779976>,  <27.472851, 35.677902, 34.013927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490849, 35.627480, 33.779976>,  <27.520844, 35.543442, 33.390057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490849, 35.627480, 33.779976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520433, 0.842104, -0.141459,
		-0.850604, 0.496711, -0.172488,
		-0.074988, 0.210094, 0.974801,
		27.468351, 35.690506, 34.072414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093632, 36.207306, 33.514660>,  <27.520844, 35.543442, 33.390057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093632, 36.207306, 33.514660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360165, 36.143829, 33.806087>,  <27.520084, 36.105743, 33.980946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360165, 36.143829, 33.806087>,  <27.093632, 36.207306, 33.514660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360165, 36.143829, 33.806087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384482, 0.910303, -0.153367,
		-0.638883, 0.382317, 0.667579,
		0.666335, -0.158689, 0.728571,
		27.560064, 36.096222, 34.024658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249416, 36.862186, 33.612652>,  <27.093632, 36.207306, 33.514660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249416, 36.862186, 33.612652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538586, 36.681313, 33.821617>,  <27.712088, 36.572788, 33.946995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538586, 36.681313, 33.821617>,  <27.249416, 36.862186, 33.612652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538586, 36.681313, 33.821617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624200, 0.751609, -0.213209,
		-0.296237, 0.480221, 0.825609,
		0.722923, -0.452185, 0.522409,
		27.755463, 36.545658, 33.978340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700165, 37.347652, 33.941967>,  <27.249416, 36.862186, 33.612652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700165, 37.347652, 33.941967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915636, 37.013634, 33.897221>,  <28.044920, 36.813221, 33.870373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915636, 37.013634, 33.897221>,  <27.700165, 37.347652, 33.941967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915636, 37.013634, 33.897221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656740, 0.499359, -0.565095,
		0.527746, 0.230937, 0.817406,
		0.538680, -0.835050, -0.111870,
		28.077240, 36.763119, 33.863659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259172, 37.183113, 33.480976>,  <27.700165, 37.347652, 33.941967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259172, 37.183113, 33.480976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502100, 37.253014, 33.790977>,  <28.647856, 37.294952, 33.976978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502100, 37.253014, 33.790977>,  <28.259172, 37.183113, 33.480976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502100, 37.253014, 33.790977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321059, -0.838316, 0.440623,
		0.726694, -0.516419, -0.453020,
		0.607320, 0.174752, 0.775000,
		28.684296, 37.305439, 34.023476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514311, 36.501755, 33.546043>,  <28.259172, 37.183113, 33.480976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514311, 36.501755, 33.546043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540930, 36.708229, 33.887600>,  <28.556902, 36.832115, 34.092533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540930, 36.708229, 33.887600>,  <28.514311, 36.501755, 33.546043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540930, 36.708229, 33.887600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510784, -0.717524, 0.473560,
		0.857130, -0.467667, 0.215910,
		0.066548, 0.516185, 0.853888,
		28.560894, 36.863083, 34.143764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952503, 36.075760, 33.923054>,  <28.514311, 36.501755, 33.546043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952503, 36.075760, 33.923054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698881, 36.309612, 34.125511>,  <28.546709, 36.449924, 34.246986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698881, 36.309612, 34.125511>,  <28.952503, 36.075760, 33.923054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698881, 36.309612, 34.125511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465764, -0.811215, 0.353546,
		0.617284, -0.011576, 0.786655,
		-0.634053, 0.584634, 0.506142,
		28.508665, 36.485001, 34.277355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781719, 35.887936, 34.651966>,  <28.952503, 36.075760, 33.923054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781719, 35.887936, 34.651966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472826, 36.087379, 34.494461>,  <28.287489, 36.207047, 34.399960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472826, 36.087379, 34.494461>,  <28.781719, 35.887936, 34.651966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472826, 36.087379, 34.494461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623492, -0.713865, 0.318833,
		-0.122119, 0.491720, 0.862148,
		-0.772234, 0.498606, -0.393759,
		28.241156, 36.236961, 34.376331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191376, 35.923046, 35.117874>,  <28.781719, 35.887936, 34.651966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191376, 35.923046, 35.117874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016005, 35.994743, 34.765591>,  <27.910782, 36.037762, 34.554218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016005, 35.994743, 34.765591>,  <28.191376, 35.923046, 35.117874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016005, 35.994743, 34.765591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725450, -0.649047, 0.229044,
		-0.530568, 0.739331, 0.414593,
		-0.438430, 0.179243, -0.880711,
		27.884476, 36.048515, 34.501377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555443, 35.962471, 35.302700>,  <28.191376, 35.923046, 35.117874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555443, 35.962471, 35.302700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505703, 35.873432, 34.915920>,  <27.475859, 35.820007, 34.683853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505703, 35.873432, 34.915920>,  <27.555443, 35.962471, 35.302700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505703, 35.873432, 34.915920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731863, -0.637463, 0.240868,
		-0.670010, 0.737625, -0.083644,
		-0.124350, -0.222600, -0.966947,
		27.468397, 35.806652, 34.625835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821671, 36.574409, 35.054668>,  <27.555443, 35.962471, 35.302700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821671, 36.574409, 35.054668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130960, 36.460232, 34.828167>,  <28.316534, 36.391724, 34.692265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130960, 36.460232, 34.828167>,  <27.821671, 36.574409, 35.054668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130960, 36.460232, 34.828167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422232, 0.897981, 0.123893,
		0.473125, -0.334890, 0.814863,
		0.773222, -0.285444, -0.566258,
		28.362926, 36.374599, 34.658291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539520, 36.625332, 35.378117>,  <27.821671, 36.574409, 35.054668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539520, 36.625332, 35.378117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554136, 36.677696, 34.981827>,  <28.562906, 36.709114, 34.744053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554136, 36.677696, 34.981827>,  <28.539520, 36.625332, 35.378117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554136, 36.677696, 34.981827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331009, 0.933834, 0.135600,
		0.942920, -0.332892, -0.009210,
		0.036539, 0.130908, -0.990721,
		28.565098, 36.716969, 34.684612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455767, 37.436325, 35.343719>,  <28.539520, 36.625332, 35.378117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455767, 37.436325, 35.343719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478022, 37.267456, 34.981796>,  <28.491375, 37.166134, 34.764641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478022, 37.267456, 34.981796>,  <28.455767, 37.436325, 35.343719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478022, 37.267456, 34.981796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137547, 0.900813, -0.411847,
		0.988931, -0.101539, 0.108187,
		0.055638, -0.422169, -0.904808,
		28.494713, 37.140804, 34.710354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109451, 37.548935, 34.981350>,  <28.455767, 37.436325, 35.343719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109451, 37.548935, 34.981350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816334, 37.504204, 34.712872>,  <28.640463, 37.477364, 34.551785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816334, 37.504204, 34.712872>,  <29.109451, 37.548935, 34.981350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816334, 37.504204, 34.712872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245137, 0.876783, -0.413714,
		0.634763, -0.467703, -0.615086,
		-0.732792, -0.111830, -0.671200,
		28.596497, 37.470654, 34.511513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598770, 37.246609, 34.545189>,  <29.109451, 37.548935, 34.981350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598770, 37.246609, 34.545189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732027, 36.911606, 34.718441>,  <29.811981, 36.710606, 34.822392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732027, 36.911606, 34.718441>,  <29.598770, 37.246609, 34.545189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732027, 36.911606, 34.718441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392710, -0.294382, -0.871274,
		0.857201, 0.460354, 0.230825,
		0.333144, -0.837504, 0.433130,
		29.831970, 36.660355, 34.848381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381607, 37.131878, 34.421307>,  <29.598770, 37.246609, 34.545189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381607, 37.131878, 34.421307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168129, 36.796967, 34.468872>,  <30.040043, 36.596020, 34.497410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168129, 36.796967, 34.468872>,  <30.381607, 37.131878, 34.421307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168129, 36.796967, 34.468872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396102, -0.371726, -0.839597,
		0.747177, -0.400986, 0.530035,
		-0.533694, -0.837276, 0.118914,
		30.008020, 36.545784, 34.504547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675402, 36.505428, 34.557224>,  <30.381607, 37.131878, 34.421307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675402, 36.505428, 34.557224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345863, 36.429123, 34.343723>,  <30.148140, 36.383339, 34.215622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345863, 36.429123, 34.343723>,  <30.675402, 36.505428, 34.557224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345863, 36.429123, 34.343723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553773, -0.471709, -0.686168,
		-0.120880, -0.860872, 0.494254,
		-0.823847, -0.190761, -0.533748,
		30.098709, 36.371895, 34.183598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071722, 36.256958, 35.018871>,  <30.675402, 36.505428, 34.557224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071722, 36.256958, 35.018871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179333, 36.301525, 35.401539>,  <31.243900, 36.328266, 35.631138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179333, 36.301525, 35.401539>,  <31.071722, 36.256958, 35.018871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179333, 36.301525, 35.401539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212218, 0.962016, -0.171720,
		-0.939461, 0.249220, 0.235164,
		0.269028, 0.111418, 0.956666,
		31.260040, 36.334949, 35.688538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326328, 35.867611, 34.415573>,  <31.071722, 36.256958, 35.018871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326328, 35.867611, 34.415573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981953, 35.712189, 34.284233>,  <30.775328, 35.618935, 34.205429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981953, 35.712189, 34.284233>,  <31.326328, 35.867611, 34.415573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981953, 35.712189, 34.284233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233056, 0.272467, -0.933513,
		0.452184, -0.880220, -0.144023,
		-0.860939, -0.388554, -0.328345,
		30.723671, 35.595623, 34.185730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905005, 35.745155, 34.029869>,  <31.326328, 35.867611, 34.415573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905005, 35.745155, 34.029869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228355, 35.748085, 33.794422>,  <32.422367, 35.749844, 33.653152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228355, 35.748085, 33.794422>,  <31.905005, 35.745155, 34.029869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228355, 35.748085, 33.794422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053853, 0.996650, -0.061554,
		0.586194, 0.081458, 0.806066,
		0.808379, 0.007326, -0.588616,
		32.470871, 35.750282, 33.617836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224377, 36.335041, 34.186192>,  <31.905005, 35.745155, 34.029869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224377, 36.335041, 34.186192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394333, 36.209511, 33.846550>,  <32.496307, 36.134193, 33.642765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394333, 36.209511, 33.846550>,  <32.224377, 36.335041, 34.186192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394333, 36.209511, 33.846550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014518, 0.935501, -0.353025,
		0.905129, 0.162324, 0.392928,
		0.424889, -0.313829, -0.849106,
		32.521801, 36.115364, 33.591820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930428, 36.700043, 33.995060>,  <32.224377, 36.335041, 34.186192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930428, 36.700043, 33.995060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730061, 36.613213, 33.659927>,  <32.609840, 36.561115, 33.458847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730061, 36.613213, 33.659927>,  <32.930428, 36.700043, 33.995060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730061, 36.613213, 33.659927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034382, 0.962280, -0.269881,
		0.864811, -0.163995, -0.474561,
		-0.500919, -0.217080, -0.837828,
		32.579784, 36.548088, 33.408577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312412, 37.139492, 33.551380>,  <32.930428, 36.700043, 33.995060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312412, 37.139492, 33.551380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957558, 37.053307, 33.388130>,  <32.744644, 37.001595, 33.290180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957558, 37.053307, 33.388130>,  <33.312412, 37.139492, 33.551380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957558, 37.053307, 33.388130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111206, 0.958069, -0.264076,
		0.447916, -0.188884, -0.873896,
		-0.887133, -0.215467, -0.408129,
		32.691418, 36.988667, 33.265690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268612, 37.322727, 32.781315>,  <33.312412, 37.139492, 33.551380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268612, 37.322727, 32.781315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926815, 37.345306, 32.987869>,  <32.721737, 37.358856, 33.111801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926815, 37.345306, 32.987869>,  <33.268612, 37.322727, 32.781315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926815, 37.345306, 32.987869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025659, 0.997451, -0.066581,
		-0.518829, -0.043643, -0.853763,
		-0.854493, 0.056451, 0.516387,
		32.670467, 37.362240, 33.142784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794090, 37.782810, 32.356903>,  <33.268612, 37.322727, 32.781315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794090, 37.782810, 32.356903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691601, 37.757446, 32.742718>,  <32.630108, 37.742226, 32.974205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691601, 37.757446, 32.742718>,  <32.794090, 37.782810, 32.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691601, 37.757446, 32.742718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065222, 0.994438, 0.082703,
		-0.964414, 0.084099, -0.250664,
		-0.256225, -0.063412, 0.964535,
		32.614735, 37.738422, 33.032078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468376, 38.340202, 32.410664>,  <32.794090, 37.782810, 32.356903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468376, 38.340202, 32.410664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529873, 38.233398, 32.791203>,  <32.566772, 38.169315, 33.019527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529873, 38.233398, 32.791203>,  <32.468376, 38.340202, 32.410664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529873, 38.233398, 32.791203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069184, 0.957526, 0.279923,
		-0.985686, -0.108854, 0.128737,
		0.153740, -0.267010, 0.951351,
		32.575996, 38.153294, 33.076607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809454, 38.444588, 32.809376>,  <32.468376, 38.340202, 32.410664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809454, 38.444588, 32.809376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138500, 38.463028, 33.036068>,  <32.335926, 38.474091, 33.172081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138500, 38.463028, 33.036068>,  <31.809454, 38.444588, 32.809376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138500, 38.463028, 33.036068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158396, 0.975834, 0.150532,
		-0.546091, -0.213597, 0.810037,
		0.822615, 0.046102, 0.566727,
		32.385284, 38.476860, 33.206085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541853, 38.905712, 33.296707>,  <31.809454, 38.444588, 32.809376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541853, 38.905712, 33.296707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940849, 38.881882, 33.281418>,  <32.180248, 38.867584, 33.272243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940849, 38.881882, 33.281418>,  <31.541853, 38.905712, 33.296707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940849, 38.881882, 33.281418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066799, 0.970919, 0.229901,
		0.023411, -0.231877, 0.972463,
		0.997492, -0.059577, -0.038219,
		32.240097, 38.864010, 33.269951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421200, 39.116863, 34.014545>,  <31.541853, 38.905712, 33.296707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421200, 39.116863, 34.014545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807459, 39.027061, 33.962212>,  <32.039215, 38.973179, 33.930813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807459, 39.027061, 33.962212>,  <31.421200, 39.116863, 34.014545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807459, 39.027061, 33.962212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192519, 0.956305, -0.220038,
		0.174518, 0.187292, 0.966677,
		0.965650, -0.224504, -0.130836,
		32.097153, 38.959709, 33.922962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799732, 39.674725, 34.379501>,  <31.421200, 39.116863, 34.014545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799732, 39.674725, 34.379501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088375, 39.512897, 34.154785>,  <32.261562, 39.415802, 34.019955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088375, 39.512897, 34.154785>,  <31.799732, 39.674725, 34.379501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088375, 39.512897, 34.154785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269154, 0.911588, -0.310746,
		0.637837, 0.073030, 0.766701,
		0.721609, -0.404566, -0.561788,
		32.304859, 39.391529, 33.986248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531727, 39.993305, 34.414646>,  <31.799732, 39.674725, 34.379501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531727, 39.993305, 34.414646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443581, 39.828209, 34.061131>,  <32.390694, 39.729149, 33.849022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443581, 39.828209, 34.061131>,  <32.531727, 39.993305, 34.414646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443581, 39.828209, 34.061131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045577, 0.900715, -0.432012,
		0.974351, -0.135482, -0.179678,
		-0.220369, -0.412743, -0.883788,
		32.377468, 39.704388, 33.795994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532906, 40.653721, 34.037567>,  <32.531727, 39.993305, 34.414646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532906, 40.653721, 34.037567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784199, 40.716255, 33.732704>,  <32.934975, 40.753777, 33.549786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784199, 40.716255, 33.732704>,  <32.532906, 40.653721, 34.037567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784199, 40.716255, 33.732704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156852, -0.934038, -0.320889,
		-0.762051, 0.321139, -0.562271,
		0.628232, 0.156340, -0.762156,
		32.972668, 40.763157, 33.504059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285618, 40.585945, 33.294403>,  <32.532906, 40.653721, 34.037567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285618, 40.585945, 33.294403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663639, 40.477989, 33.368191>,  <32.890453, 40.413216, 33.412464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663639, 40.477989, 33.368191>,  <32.285618, 40.585945, 33.294403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663639, 40.477989, 33.368191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222150, -0.944169, -0.243297,
		0.239832, 0.188950, -0.952249,
		0.945055, -0.269893, 0.184467,
		32.947155, 40.397022, 33.423531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656975, 40.102898, 32.720093>,  <32.285618, 40.585945, 33.294403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656975, 40.102898, 32.720093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778034, 40.018475, 33.091869>,  <32.850670, 39.967819, 33.314934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778034, 40.018475, 33.091869>,  <32.656975, 40.102898, 32.720093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778034, 40.018475, 33.091869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220442, -0.964232, -0.147181,
		0.927260, -0.160344, -0.338346,
		0.302645, -0.211061, 0.929441,
		32.868828, 39.955158, 33.370701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750595, 39.338280, 32.764324>,  <32.656975, 40.102898, 32.720093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750595, 39.338280, 32.764324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764877, 39.453491, 33.147106>,  <32.773445, 39.522617, 33.376774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764877, 39.453491, 33.147106>,  <32.750595, 39.338280, 32.764324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764877, 39.453491, 33.147106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163845, -0.942922, 0.289919,
		0.985840, -0.167144, 0.013526,
		0.035705, 0.288030, 0.956956,
		32.775589, 39.539902, 33.434193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168465, 38.881207, 33.134998>,  <32.750595, 39.338280, 32.764324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168465, 38.881207, 33.134998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910378, 39.033348, 33.400036>,  <32.755524, 39.124634, 33.559059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910378, 39.033348, 33.400036>,  <33.168465, 38.881207, 33.134998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910378, 39.033348, 33.400036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233053, -0.923916, 0.303423,
		0.727585, 0.041356, 0.684770,
		-0.645218, 0.380354, 0.662589,
		32.716812, 39.147453, 33.598812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328922, 38.621384, 33.768764>,  <33.168465, 38.881207, 33.134998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328922, 38.621384, 33.768764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941933, 38.722401, 33.774719>,  <32.709740, 38.783009, 33.778290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941933, 38.722401, 33.774719>,  <33.328922, 38.621384, 33.768764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941933, 38.722401, 33.774719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239417, -0.933026, 0.268591,
		0.081718, 0.256291, 0.963139,
		-0.967472, 0.252541, 0.014885,
		32.651691, 38.798164, 33.779186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967369, 38.229904, 34.156334>,  <33.328922, 38.621384, 33.768764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967369, 38.229904, 34.156334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658428, 38.333790, 33.924465>,  <32.473064, 38.396122, 33.785343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658428, 38.333790, 33.924465>,  <32.967369, 38.229904, 34.156334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658428, 38.333790, 33.924465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348777, -0.936110, 0.045304,
		-0.530874, 0.237168, 0.813587,
		-0.772351, 0.259710, -0.579676,
		32.426723, 38.411701, 33.750561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324989, 37.972298, 34.453220>,  <32.967369, 38.229904, 34.156334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324989, 37.972298, 34.453220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296947, 38.032845, 34.058826>,  <32.280121, 38.069172, 33.822189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296947, 38.032845, 34.058826>,  <32.324989, 37.972298, 34.453220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296947, 38.032845, 34.058826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263257, -0.956187, -0.128072,
		-0.962175, 0.250590, 0.106880,
		-0.070104, 0.151365, -0.985989,
		32.275917, 38.078255, 33.763031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788467, 37.717434, 34.167439>,  <32.324989, 37.972298, 34.453220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788467, 37.717434, 34.167439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997339, 37.733582, 33.826687>,  <32.122662, 37.743271, 33.622234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997339, 37.733582, 33.826687>,  <31.788467, 37.717434, 34.167439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997339, 37.733582, 33.826687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289486, -0.931183, -0.221575,
		-0.802202, 0.362310, -0.474557,
		0.522178, 0.040370, -0.851880,
		32.153992, 37.745693, 33.571121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458273, 37.470924, 33.616364>,  <31.788467, 37.717434, 34.167439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458273, 37.470924, 33.616364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836145, 37.411411, 33.499439>,  <32.062870, 37.375706, 33.429287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836145, 37.411411, 33.499439>,  <31.458273, 37.470924, 33.616364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836145, 37.411411, 33.499439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203351, -0.964922, -0.166056,
		-0.257347, 0.216311, -0.941797,
		0.944681, -0.148781, -0.292307,
		32.119549, 37.366776, 33.411747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462708, 37.129753, 32.896996>,  <31.458273, 37.470924, 33.616364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462708, 37.129753, 32.896996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775246, 37.040039, 33.129959>,  <31.962769, 36.986210, 33.269737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775246, 37.040039, 33.129959>,  <31.462708, 37.129753, 32.896996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775246, 37.040039, 33.129959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171346, -0.974427, -0.145370,
		0.600119, 0.013791, -0.799792,
		0.781344, -0.224281, 0.582409,
		32.009647, 36.972755, 33.304680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853710, 36.504208, 32.690105>,  <31.462708, 37.129753, 32.896996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853710, 36.504208, 32.690105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905642, 36.572113, 33.080864>,  <31.936800, 36.612854, 33.315319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905642, 36.572113, 33.080864>,  <31.853710, 36.504208, 32.690105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905642, 36.572113, 33.080864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087450, -0.979435, 0.181824,
		0.987673, -0.109035, -0.112313,
		0.129828, 0.169761, 0.976896,
		31.944590, 36.623043, 33.373932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376980, 36.102062, 32.884308>,  <31.853710, 36.504208, 32.690105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376980, 36.102062, 32.884308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138260, 36.171520, 33.197659>,  <31.995029, 36.213196, 33.385670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138260, 36.171520, 33.197659>,  <32.376980, 36.102062, 32.884308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138260, 36.171520, 33.197659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205213, -0.976864, 0.060196,
		0.775707, -0.124835, 0.618623,
		-0.596796, 0.173644, 0.783379,
		31.959221, 36.223614, 33.432671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916664, 35.492813, 32.817387>,  <32.376980, 36.102062, 32.884308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916664, 35.492813, 32.817387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178551, 35.281281, 33.033417>,  <32.335682, 35.154362, 33.163036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178551, 35.281281, 33.033417>,  <31.916664, 35.492813, 32.817387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178551, 35.281281, 33.033417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703594, -0.687487, 0.179767,
		0.276231, -0.497692, -0.822192,
		0.654715, -0.528832, 0.540078,
		32.374966, 35.122631, 33.195438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120613, 34.835148, 32.495636>,  <31.916664, 35.492813, 32.817387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120613, 34.835148, 32.495636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162724, 34.813599, 32.892830>,  <32.187992, 34.800671, 33.131145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162724, 34.813599, 32.892830>,  <32.120613, 34.835148, 32.495636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162724, 34.813599, 32.892830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675412, -0.736762, 0.031639,
		0.729888, -0.674003, -0.113948,
		0.105278, -0.053869, 0.992983,
		32.194305, 34.797440, 33.190723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966558, 34.125664, 32.584850>,  <32.120613, 34.835148, 32.495636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966558, 34.125664, 32.584850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925060, 34.266102, 32.957081>,  <31.900162, 34.350365, 33.180420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925060, 34.266102, 32.957081>,  <31.966558, 34.125664, 32.584850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925060, 34.266102, 32.957081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450397, -0.850776, 0.270780,
		0.886780, -0.391036, 0.246396,
		-0.103743, 0.351099, 0.930574,
		31.893938, 34.371433, 33.236252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211010, 34.049385, 31.892120>,  <31.966558, 34.125664, 32.584850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211010, 34.049385, 31.892120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011028, 33.989204, 31.550968>,  <31.891039, 33.953094, 31.346277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011028, 33.989204, 31.550968>,  <32.211010, 34.049385, 31.892120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011028, 33.989204, 31.550968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362520, 0.930722, 0.048321,
		0.786526, 0.333345, -0.519863,
		-0.499955, -0.150455, -0.852882,
		31.861042, 33.944069, 31.295103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327785, 34.674938, 31.393185>,  <32.211010, 34.049385, 31.892120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327785, 34.674938, 31.393185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987619, 34.488113, 31.296324>,  <31.783518, 34.376019, 31.238207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987619, 34.488113, 31.296324>,  <32.327785, 34.674938, 31.393185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987619, 34.488113, 31.296324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508899, 0.847041, 0.153439,
		0.133446, 0.253718, -0.958029,
		-0.850420, -0.467064, -0.242151,
		31.732494, 34.347996, 31.223679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006477, 35.186417, 31.098095>,  <32.327785, 34.674938, 31.393185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006477, 35.186417, 31.098095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702122, 34.928200, 31.124388>,  <31.519508, 34.773270, 31.140163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702122, 34.928200, 31.124388>,  <32.006477, 35.186417, 31.098095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702122, 34.928200, 31.124388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644161, 0.739279, -0.196270,
		0.078105, -0.191683, -0.978344,
		-0.760891, -0.645541, 0.065733,
		31.473854, 34.734539, 31.144108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581678, 35.270065, 30.551367>,  <32.006477, 35.186417, 31.098095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581678, 35.270065, 30.551367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334862, 35.124435, 30.830425>,  <31.186771, 35.037056, 30.997860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334862, 35.124435, 30.830425>,  <31.581678, 35.270065, 30.551367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334862, 35.124435, 30.830425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726511, 0.604227, -0.327247,
		-0.302395, -0.708773, -0.637337,
		-0.617040, -0.364075, 0.697647,
		31.149750, 35.015213, 31.039719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954107, 35.042011, 30.192345>,  <31.581678, 35.270065, 30.551367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954107, 35.042011, 30.192345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874628, 35.095451, 30.580709>,  <30.826941, 35.127514, 30.813728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874628, 35.095451, 30.580709>,  <30.954107, 35.042011, 30.192345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874628, 35.095451, 30.580709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620504, 0.749672, -0.230146,
		-0.758613, -0.648184, -0.066059,
		-0.198699, 0.133602, 0.970912,
		30.815018, 35.135532, 30.871983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216509, 34.842354, 30.275785>,  <30.954107, 35.042011, 30.192345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216509, 34.842354, 30.275785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327396, 35.081253, 30.576836>,  <30.393929, 35.224590, 30.757465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327396, 35.081253, 30.576836>,  <30.216509, 34.842354, 30.275785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327396, 35.081253, 30.576836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688195, 0.670055, -0.278234,
		-0.670475, -0.440822, 0.596774,
		0.277219, 0.597246, 0.752627,
		30.410563, 35.260426, 30.802624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607859, 34.773922, 30.702555>,  <30.216509, 34.842354, 30.275785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607859, 34.773922, 30.702555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829824, 35.106514, 30.713263>,  <29.963003, 35.306068, 30.719687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829824, 35.106514, 30.713263>,  <29.607859, 34.773922, 30.702555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829824, 35.106514, 30.713263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740682, 0.508457, -0.439162,
		-0.378763, 0.223871, 0.898009,
		0.554914, 0.831477, 0.026768,
		29.996298, 35.355957, 30.721292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405231, 34.243118, 30.306551>,  <29.607859, 34.773922, 30.702555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405231, 34.243118, 30.306551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472656, 34.141006, 29.925726>,  <29.513111, 34.079739, 29.697231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472656, 34.141006, 29.925726>,  <29.405231, 34.243118, 30.306551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472656, 34.141006, 29.925726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393195, -0.868292, 0.302434,
		-0.903872, -0.425324, -0.045985,
		0.168561, -0.255281, -0.952060,
		29.523224, 34.064423, 29.640108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083006, 33.577831, 30.141920>,  <29.405231, 34.243118, 30.306551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083006, 33.577831, 30.141920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387913, 33.630253, 29.888378>,  <29.570856, 33.661705, 29.736254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387913, 33.630253, 29.888378>,  <29.083006, 33.577831, 30.141920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387913, 33.630253, 29.888378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348915, -0.908020, 0.231859,
		-0.545166, -0.397900, -0.737882,
		0.762268, 0.131056, -0.633855,
		29.616592, 33.669571, 29.698221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108814, 32.955734, 29.783033>,  <29.083006, 33.577831, 30.141920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108814, 32.955734, 29.783033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460752, 33.145744, 29.777006>,  <29.671915, 33.259750, 29.773390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460752, 33.145744, 29.777006>,  <29.108814, 32.955734, 29.783033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460752, 33.145744, 29.777006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462337, -0.848141, 0.258655,
		0.110086, -0.234543, -0.965852,
		0.879844, 0.475023, -0.015069,
		29.724707, 33.288250, 29.772486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465481, 32.248409, 29.466604>,  <29.108814, 32.955734, 29.783033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465481, 32.248409, 29.466604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716106, 32.504555, 29.644304>,  <29.866482, 32.658241, 29.750923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716106, 32.504555, 29.644304>,  <29.465481, 32.248409, 29.466604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716106, 32.504555, 29.644304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597201, -0.760725, 0.254261,
		0.500770, 0.105995, -0.859066,
		0.626563, 0.640361, 0.444248,
		29.904076, 32.696663, 29.777578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219442, 32.159637, 29.723658>,  <29.465481, 32.248409, 29.466604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219442, 32.159637, 29.723658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112604, 31.827015, 29.918463>,  <30.048502, 31.627441, 30.035345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112604, 31.827015, 29.918463>,  <30.219442, 32.159637, 29.723658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112604, 31.827015, 29.918463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002282, -0.505915, -0.862580,
		0.963667, -0.229279, 0.137025,
		-0.267095, -0.831553, 0.487011,
		30.032476, 31.577549, 30.064566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677406, 31.674448, 29.641964>,  <30.219442, 32.159637, 29.723658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677406, 31.674448, 29.641964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316376, 31.505638, 29.676020>,  <30.099756, 31.404352, 29.696453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316376, 31.505638, 29.676020>,  <30.677406, 31.674448, 29.641964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316376, 31.505638, 29.676020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116937, -0.430632, -0.894920,
		0.414342, -0.797778, 0.438029,
		-0.902577, -0.422025, 0.085139,
		30.045603, 31.379030, 29.701561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781775, 31.001118, 29.666649>,  <30.677406, 31.674448, 29.641964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781775, 31.001118, 29.666649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406372, 31.067574, 29.545586>,  <30.181131, 31.107447, 29.472948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406372, 31.067574, 29.545586>,  <30.781775, 31.001118, 29.666649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406372, 31.067574, 29.545586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195828, -0.465820, -0.862939,
		-0.284352, -0.869143, 0.404641,
		-0.938507, 0.166139, -0.302659,
		30.124821, 31.117414, 29.454788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511600, 30.314373, 29.325327>,  <30.781775, 31.001118, 29.666649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511600, 30.314373, 29.325327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270512, 30.608124, 29.200481>,  <30.125858, 30.784374, 29.125574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270512, 30.608124, 29.200481>,  <30.511600, 30.314373, 29.325327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270512, 30.608124, 29.200481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191476, -0.246609, -0.950011,
		-0.774637, -0.632356, 0.008021,
		-0.602723, 0.734377, -0.312114,
		30.089695, 30.828438, 29.106848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141304, 30.006226, 28.742348>,  <30.511600, 30.314373, 29.325327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141304, 30.006226, 28.742348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110279, 30.395147, 28.654158>,  <30.091665, 30.628500, 28.601244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110279, 30.395147, 28.654158>,  <30.141304, 30.006226, 28.742348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110279, 30.395147, 28.654158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055902, -0.216553, -0.974669,
		-0.995419, -0.087920, -0.037558,
		-0.077560, 0.972304, -0.220476,
		30.087011, 30.686838, 28.588015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593460, 30.041830, 28.209177>,  <30.141304, 30.006226, 28.742348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593460, 30.041830, 28.209177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792814, 30.384741, 28.157503>,  <29.912428, 30.590487, 28.126499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792814, 30.384741, 28.157503>,  <29.593460, 30.041830, 28.209177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792814, 30.384741, 28.157503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070184, -0.108625, -0.991602,
		-0.864110, 0.503268, 0.006030,
		0.498386, 0.857276, -0.129185,
		29.942329, 30.641924, 28.118748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331200, 30.208078, 27.556450>,  <29.593460, 30.041830, 28.209177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331200, 30.208078, 27.556450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652035, 30.437185, 27.624083>,  <29.844536, 30.574650, 27.664663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652035, 30.437185, 27.624083>,  <29.331200, 30.208078, 27.556450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652035, 30.437185, 27.624083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030820, 0.243049, -0.969524,
		-0.596409, 0.782856, 0.177294,
		0.802089, 0.572769, 0.169084,
		29.892662, 30.609016, 27.674809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176424, 30.820896, 27.212208>,  <29.331200, 30.208078, 27.556450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176424, 30.820896, 27.212208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574259, 30.780315, 27.221172>,  <29.812960, 30.755966, 27.226551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574259, 30.780315, 27.221172>,  <29.176424, 30.820896, 27.212208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574259, 30.780315, 27.221172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047040, 0.247380, -0.967776,
		0.092640, 0.963593, 0.250813,
		0.994588, -0.101453, 0.022411,
		29.872635, 30.749880, 27.227896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301077, 31.372126, 26.863642>,  <29.176424, 30.820896, 27.212208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301077, 31.372126, 26.863642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629917, 31.144466, 26.857744>,  <29.827221, 31.007872, 26.854206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629917, 31.144466, 26.857744>,  <29.301077, 31.372126, 26.863642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629917, 31.144466, 26.857744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059497, 0.111639, -0.991966,
		0.566222, 0.814620, 0.125641,
		0.822102, -0.569149, -0.014745,
		29.876549, 30.973722, 26.853321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727774, 31.692907, 26.363270>,  <29.301077, 31.372126, 26.863642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727774, 31.692907, 26.363270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912395, 31.340147, 26.401676>,  <30.023169, 31.128490, 26.424721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912395, 31.340147, 26.401676>,  <29.727774, 31.692907, 26.363270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912395, 31.340147, 26.401676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177040, -0.014488, -0.984097,
		0.869265, 0.471215, 0.149444,
		0.461557, -0.881899, 0.096018,
		30.050863, 31.075577, 26.430481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389149, 31.665545, 25.937428>,  <29.727774, 31.692907, 26.363270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389149, 31.665545, 25.937428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281963, 31.285223, 25.999609>,  <30.217653, 31.057030, 26.036919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281963, 31.285223, 25.999609>,  <30.389149, 31.665545, 25.937428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281963, 31.285223, 25.999609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068484, -0.179744, -0.981326,
		0.960992, -0.252311, 0.113280,
		-0.267961, -0.950805, 0.155454,
		30.201574, 30.999981, 26.046246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896200, 31.296144, 25.513277>,  <30.389149, 31.665545, 25.937428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896200, 31.296144, 25.513277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587738, 31.045572, 25.558718>,  <30.402660, 30.895229, 25.585983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587738, 31.045572, 25.558718>,  <30.896200, 31.296144, 25.513277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587738, 31.045572, 25.558718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033126, -0.217679, -0.975458,
		0.635788, -0.748464, 0.188615,
		-0.771153, -0.626432, 0.113604,
		30.356392, 30.857643, 25.592798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139751, 30.587839, 25.278419>,  <30.896200, 31.296144, 25.513277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139751, 30.587839, 25.278419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740692, 30.610739, 25.263353>,  <30.501257, 30.624479, 25.254314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740692, 30.610739, 25.263353>,  <31.139751, 30.587839, 25.278419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740692, 30.610739, 25.263353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007663, -0.452967, -0.891494,
		-0.068097, -0.889687, 0.451464,
		-0.997649, 0.057249, -0.037664,
		30.441397, 30.627914, 25.252054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990913, 29.946676, 25.072742>,  <31.139751, 30.587839, 25.278419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990913, 29.946676, 25.072742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672316, 30.177675, 25.001087>,  <30.481157, 30.316275, 24.958094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672316, 30.177675, 25.001087>,  <30.990913, 29.946676, 25.072742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672316, 30.177675, 25.001087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074650, -0.387922, -0.918664,
		-0.600018, -0.718339, 0.352089,
		-0.796496, 0.577499, -0.179136,
		30.433367, 30.350925, 24.947346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536539, 29.457531, 24.789352>,  <30.990913, 29.946676, 25.072742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536539, 29.457531, 24.789352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398506, 29.820478, 24.693354>,  <30.315687, 30.038248, 24.635756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398506, 29.820478, 24.693354>,  <30.536539, 29.457531, 24.789352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398506, 29.820478, 24.693354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363325, -0.364908, -0.857226,
		-0.865398, -0.208616, 0.455593,
		-0.345080, 0.907371, -0.239995,
		30.294983, 30.092690, 24.621355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737751, 29.398693, 24.666386>,  <30.536539, 29.457531, 24.789352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737751, 29.398693, 24.666386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909250, 29.709990, 24.482857>,  <30.012150, 29.896767, 24.372740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909250, 29.709990, 24.482857>,  <29.737751, 29.398693, 24.666386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909250, 29.709990, 24.482857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485252, -0.230006, -0.843580,
		-0.762039, 0.584328, 0.279028,
		0.428749, 0.778240, -0.458821,
		30.037874, 29.943462, 24.345211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247120, 29.479023, 24.271704>,  <29.737751, 29.398693, 24.666386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247120, 29.479023, 24.271704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548952, 29.700665, 24.131090>,  <29.730051, 29.833649, 24.046722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548952, 29.700665, 24.131090>,  <29.247120, 29.479023, 24.271704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548952, 29.700665, 24.131090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361011, -0.096810, -0.927523,
		-0.547976, 0.826799, 0.126986,
		0.754581, 0.554104, -0.351533,
		29.775326, 29.866896, 24.025631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962717, 29.986225, 23.760164>,  <29.247120, 29.479023, 24.271704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962717, 29.986225, 23.760164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344868, 29.904409, 23.674915>,  <29.574158, 29.855320, 23.623766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344868, 29.904409, 23.674915>,  <28.962717, 29.986225, 23.760164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344868, 29.904409, 23.674915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236178, -0.095581, -0.966998,
		0.177418, 0.974181, -0.139623,
		0.955376, -0.204539, -0.213122,
		29.631481, 29.843048, 23.610979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179401, 30.434948, 23.176821>,  <28.962717, 29.986225, 23.760164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179401, 30.434948, 23.176821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412884, 30.111042, 23.200720>,  <29.552973, 29.916698, 23.215059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412884, 30.111042, 23.200720>,  <29.179401, 30.434948, 23.176821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412884, 30.111042, 23.200720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177591, -0.199123, -0.963749,
		0.792305, 0.551937, -0.260037,
		0.583708, -0.809763, 0.059747,
		29.587996, 29.868113, 23.218643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388161, 30.403725, 22.502636>,  <29.179401, 30.434948, 23.176821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388161, 30.403725, 22.502636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540670, 30.056103, 22.628729>,  <29.632175, 29.847528, 22.704386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540670, 30.056103, 22.628729>,  <29.388161, 30.403725, 22.502636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540670, 30.056103, 22.628729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156674, -0.396802, -0.904434,
		0.911090, 0.295447, -0.287448,
		0.381272, -0.869056, 0.315234,
		29.655052, 29.795385, 22.723299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932072, 30.142565, 21.968529>,  <29.388161, 30.403725, 22.502636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932072, 30.142565, 21.968529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809891, 29.829210, 22.185049>,  <29.736582, 29.641197, 22.314962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809891, 29.829210, 22.185049>,  <29.932072, 30.142565, 21.968529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809891, 29.829210, 22.185049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136484, -0.526582, -0.839097,
		0.942376, -0.330182, 0.053925,
		-0.305451, -0.783384, 0.541303,
		29.718256, 29.594194, 22.347441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461533, 29.666613, 21.794094>,  <29.932072, 30.142565, 21.968529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461533, 29.666613, 21.794094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157953, 29.444447, 21.930040>,  <29.975805, 29.311148, 22.011608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157953, 29.444447, 21.930040>,  <30.461533, 29.666613, 21.794094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157953, 29.444447, 21.930040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096916, -0.419783, -0.902435,
		0.643896, -0.717843, 0.264766,
		-0.758951, -0.555414, 0.339867,
		29.930267, 29.277822, 22.032000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486053, 28.983797, 21.507277>,  <30.461533, 29.666613, 21.794094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486053, 28.983797, 21.507277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111393, 28.969362, 21.646637>,  <29.886597, 28.960701, 21.730253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111393, 28.969362, 21.646637>,  <30.486053, 28.983797, 21.507277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111393, 28.969362, 21.646637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318358, -0.327078, -0.889757,
		0.146062, -0.944308, 0.294870,
		-0.936650, -0.036086, 0.348402,
		29.830399, 28.958536, 21.751158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331884, 28.288321, 21.415047>,  <30.486053, 28.983797, 21.507277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331884, 28.288321, 21.415047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992151, 28.499081, 21.427765>,  <29.788311, 28.625538, 21.435396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992151, 28.499081, 21.427765>,  <30.331884, 28.288321, 21.415047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992151, 28.499081, 21.427765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241477, -0.334274, -0.911016,
		-0.469389, -0.781431, 0.411144,
		-0.849330, 0.526903, 0.031793,
		29.737352, 28.657152, 21.437304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797701, 27.817755, 21.089647>,  <30.331884, 28.288321, 21.415047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797701, 27.817755, 21.089647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651342, 28.189640, 21.072912>,  <29.563528, 28.412771, 21.062870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651342, 28.189640, 21.072912>,  <29.797701, 27.817755, 21.089647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651342, 28.189640, 21.072912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389584, -0.193842, -0.900361,
		-0.845190, -0.313137, 0.433128,
		-0.365895, 0.929715, -0.041840,
		29.541574, 28.468555, 21.060360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082104, 27.758507, 20.851635>,  <29.797701, 27.817755, 21.089647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082104, 27.758507, 20.851635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218630, 28.127331, 20.778635>,  <29.300545, 28.348625, 20.734835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218630, 28.127331, 20.778635>,  <29.082104, 27.758507, 20.851635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218630, 28.127331, 20.778635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183282, -0.125143, -0.975063,
		-0.921906, 0.366253, 0.126284,
		0.341316, 0.922062, -0.182498,
		29.321024, 28.403950, 20.723886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692566, 27.990793, 20.236982>,  <29.082104, 27.758507, 20.851635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692566, 27.990793, 20.236982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989250, 28.258696, 20.251390>,  <29.167261, 28.419437, 20.260035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989250, 28.258696, 20.251390>,  <28.692566, 27.990793, 20.236982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989250, 28.258696, 20.251390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069977, 0.130681, -0.988952,
		-0.667061, 0.730994, 0.143795,
		0.741709, 0.669754, 0.036020,
		29.211763, 28.459621, 20.262196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487532, 28.620466, 19.869034>,  <28.692566, 27.990793, 20.236982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487532, 28.620466, 19.869034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887217, 28.610069, 19.857010>,  <29.127028, 28.603830, 19.849796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887217, 28.610069, 19.857010>,  <28.487532, 28.620466, 19.869034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887217, 28.610069, 19.857010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033320, -0.135881, -0.990165,
		0.021654, 0.990384, -0.136640,
		0.999210, -0.025994, -0.030058,
		29.186979, 28.602272, 19.847992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721790, 29.031059, 19.354267>,  <28.487532, 28.620466, 19.869034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721790, 29.031059, 19.354267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026731, 28.774660, 19.389904>,  <29.209696, 28.620821, 19.411285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026731, 28.774660, 19.389904>,  <28.721790, 29.031059, 19.354267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026731, 28.774660, 19.389904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012383, -0.152089, -0.988289,
		0.647040, 0.752324, -0.123883,
		0.762355, -0.640997, 0.089092,
		29.255438, 28.582361, 19.416632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140238, 29.141930, 18.772110>,  <28.721790, 29.031059, 19.354267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140238, 29.141930, 18.772110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284849, 28.780832, 18.865364>,  <29.371616, 28.564175, 18.921316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284849, 28.780832, 18.865364>,  <29.140238, 29.141930, 18.772110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284849, 28.780832, 18.865364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184804, -0.175703, -0.966942,
		0.913863, 0.392661, 0.103309,
		0.361528, -0.902744, 0.233134,
		29.393307, 28.510010, 18.935305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781811, 29.176315, 18.428869>,  <29.140238, 29.141930, 18.772110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781811, 29.176315, 18.428869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673903, 28.795496, 18.486591>,  <29.609158, 28.567003, 18.521225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673903, 28.795496, 18.486591>,  <29.781811, 29.176315, 18.428869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673903, 28.795496, 18.486591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151029, -0.189841, -0.970129,
		0.951006, -0.239919, 0.195001,
		-0.269772, -0.952050, 0.144305,
		29.592972, 28.509880, 18.529882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235083, 28.820017, 18.109543>,  <29.781811, 29.176315, 18.428869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235083, 28.820017, 18.109543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914091, 28.583645, 18.142603>,  <29.721497, 28.441822, 18.162439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914091, 28.583645, 18.142603>,  <30.235083, 28.820017, 18.109543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914091, 28.583645, 18.142603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055424, -0.211736, -0.975754,
		0.594104, -0.778439, 0.202665,
		-0.802476, -0.590932, 0.082649,
		29.673347, 28.406364, 18.167398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377188, 28.176477, 17.704714>,  <30.235083, 28.820017, 18.109543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377188, 28.176477, 17.704714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979050, 28.181934, 17.742867>,  <29.740166, 28.185209, 17.765759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979050, 28.181934, 17.742867>,  <30.377188, 28.176477, 17.704714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979050, 28.181934, 17.742867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096041, -0.060841, -0.993516,
		-0.007746, -0.998054, 0.061867,
		-0.995348, 0.013638, 0.095383,
		29.680445, 28.186028, 17.771481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166605, 27.607494, 17.250565>,  <30.377188, 28.176477, 17.704714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166605, 27.607494, 17.250565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852007, 27.850800, 17.293346>,  <29.663248, 27.996782, 17.319016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852007, 27.850800, 17.293346>,  <30.166605, 27.607494, 17.250565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852007, 27.850800, 17.293346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173536, -0.051450, -0.983483,
		-0.592715, -0.792065, 0.146021,
		-0.786495, 0.608264, 0.106956,
		29.616058, 28.033279, 17.325434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678314, 27.361521, 16.846262>,  <30.166605, 27.607494, 17.250565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678314, 27.361521, 16.846262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549875, 27.737194, 16.894976>,  <29.472811, 27.962599, 16.924204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549875, 27.737194, 16.894976>,  <29.678314, 27.361521, 16.846262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549875, 27.737194, 16.894976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263916, 0.034760, -0.963919,
		-0.909530, -0.341653, 0.236704,
		-0.321098, 0.939183, 0.121783,
		29.453547, 28.018950, 16.931511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092499, 27.481129, 16.383484>,  <29.678314, 27.361521, 16.846262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092499, 27.481129, 16.383484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186222, 27.856544, 16.484867>,  <29.242456, 28.081795, 16.545696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186222, 27.856544, 16.484867>,  <29.092499, 27.481129, 16.383484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186222, 27.856544, 16.484867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217249, 0.304673, -0.927349,
		-0.947577, 0.162222, 0.275285,
		0.234308, 0.938541, 0.253458,
		29.256516, 28.138107, 16.560904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495298, 27.927189, 16.211645>,  <29.092499, 27.481129, 16.383484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495298, 27.927189, 16.211645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800827, 28.180674, 16.260611>,  <28.984144, 28.332764, 16.289989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800827, 28.180674, 16.260611>,  <28.495298, 27.927189, 16.211645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800827, 28.180674, 16.260611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345606, 0.561758, -0.751655,
		-0.545098, 0.531824, 0.648098,
		0.763822, 0.633712, 0.122412,
		29.029974, 28.370787, 16.297335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243876, 28.649908, 16.321136>,  <28.495298, 27.927189, 16.211645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243876, 28.649908, 16.321136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611549, 28.642092, 16.163797>,  <28.832153, 28.637402, 16.069395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611549, 28.642092, 16.163797>,  <28.243876, 28.649908, 16.321136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611549, 28.642092, 16.163797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342999, 0.451088, -0.823937,
		0.193534, 0.892266, 0.407930,
		0.919183, -0.019540, -0.393347,
		28.887304, 28.636230, 16.045794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201136, 29.245275, 16.019167>,  <28.243876, 28.649908, 16.321136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201136, 29.245275, 16.019167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513845, 29.059193, 15.853080>,  <28.701471, 28.947542, 15.753428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513845, 29.059193, 15.853080>,  <28.201136, 29.245275, 16.019167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513845, 29.059193, 15.853080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092974, 0.571479, -0.815333,
		0.616589, 0.676012, 0.403517,
		0.781776, -0.465208, -0.415219,
		28.748379, 28.919630, 15.728514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704313, 29.776129, 15.801140>,  <28.201136, 29.245275, 16.019167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704313, 29.776129, 15.801140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745159, 29.453125, 15.568762>,  <28.769667, 29.259323, 15.429335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745159, 29.453125, 15.568762>,  <28.704313, 29.776129, 15.801140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745159, 29.453125, 15.568762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024921, 0.585892, -0.810006,
		0.994460, 0.068238, 0.079954,
		0.102117, -0.807511, -0.580946,
		28.775795, 29.210871, 15.394478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961077, 30.060680, 15.241131>,  <28.704313, 29.776129, 15.801140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961077, 30.060680, 15.241131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875984, 29.702604, 15.084475>,  <28.824928, 29.487759, 14.990480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875984, 29.702604, 15.084475>,  <28.961077, 30.060680, 15.241131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875984, 29.702604, 15.084475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058717, 0.411802, -0.909379,
		0.975345, -0.170456, -0.140166,
		-0.212730, -0.895189, -0.391641,
		28.812164, 29.434048, 14.966983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275450, 30.016752, 14.490335>,  <28.961077, 30.060680, 15.241131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275450, 30.016752, 14.490335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015583, 29.712835, 14.480139>,  <28.859663, 29.530485, 14.474021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015583, 29.712835, 14.480139>,  <29.275450, 30.016752, 14.490335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015583, 29.712835, 14.480139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109849, 0.127004, -0.985801,
		0.752241, -0.637642, -0.165973,
		-0.649667, -0.759792, -0.025493,
		28.820683, 29.484898, 14.472491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287861, 29.691233, 13.794825>,  <29.275450, 30.016752, 14.490335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287861, 29.691233, 13.794825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927429, 29.595718, 13.939621>,  <28.711170, 29.538410, 14.026499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927429, 29.595718, 13.939621>,  <29.287861, 29.691233, 13.794825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927429, 29.595718, 13.939621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419141, 0.265423, -0.868258,
		0.111244, -0.934095, -0.339251,
		-0.901080, -0.238783, 0.361991,
		28.657104, 29.524084, 14.048218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904877, 29.379610, 13.190567>,  <29.287861, 29.691233, 13.794825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904877, 29.379610, 13.190567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618727, 29.471117, 13.454659>,  <28.447037, 29.526020, 13.613115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618727, 29.471117, 13.454659>,  <28.904877, 29.379610, 13.190567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618727, 29.471117, 13.454659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614525, 0.243731, -0.750303,
		-0.332564, -0.942476, -0.033776,
		-0.715374, 0.228767, 0.660231,
		28.404114, 29.539747, 13.652729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135424, 29.317181, 12.489029>,  <28.904877, 29.379610, 13.190567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135424, 29.317181, 12.489029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954365, 28.967247, 12.558054>,  <28.845730, 28.757286, 12.599469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954365, 28.967247, 12.558054>,  <29.135424, 29.317181, 12.489029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954365, 28.967247, 12.558054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789098, 0.302871, -0.534410,
		0.415257, -0.378066, -0.827423,
		-0.452644, -0.874835, 0.172562,
		28.818571, 28.704798, 12.609823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989862, 28.985130, 11.872338>,  <29.135424, 29.317181, 12.489029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989862, 28.985130, 11.872338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737848, 28.832233, 12.142729>,  <28.586639, 28.740496, 12.304963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737848, 28.832233, 12.142729>,  <28.989862, 28.985130, 11.872338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737848, 28.832233, 12.142729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776474, 0.296757, -0.555899,
		0.011886, -0.875115, -0.483768,
		-0.630037, -0.382241, 0.675977,
		28.548838, 28.717562, 12.345522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521090, 28.585716, 11.488370>,  <28.989862, 28.985130, 11.872338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521090, 28.585716, 11.488370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370646, 28.717800, 11.834665>,  <28.280378, 28.797050, 12.042442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370646, 28.717800, 11.834665>,  <28.521090, 28.585716, 11.488370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370646, 28.717800, 11.834665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654431, 0.566773, -0.500488,
		-0.655943, -0.754805, 0.002931,
		-0.376110, 0.330210, 0.865739,
		28.257812, 28.816864, 12.094387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752186, 28.589211, 11.465457>,  <28.521090, 28.585716, 11.488370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752186, 28.589211, 11.465457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882496, 28.847178, 11.741993>,  <27.960682, 29.001957, 11.907915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882496, 28.847178, 11.741993>,  <27.752186, 28.589211, 11.465457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882496, 28.847178, 11.741993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484811, 0.741726, -0.463466,
		-0.811683, -0.184183, 0.554299,
		0.325776, 0.644918, 0.691340,
		27.980228, 29.040653, 11.949395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235340, 29.025188, 11.603440>,  <27.752186, 28.589211, 11.465457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235340, 29.025188, 11.603440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564985, 29.229179, 11.702041>,  <27.762772, 29.351574, 11.761201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564985, 29.229179, 11.702041>,  <27.235340, 29.025188, 11.603440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564985, 29.229179, 11.702041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317048, 0.775938, -0.545344,
		-0.469384, 0.371272, 0.801147,
		0.824112, 0.509978, 0.246502,
		27.812220, 29.382174, 11.775991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982832, 29.700035, 11.726240>,  <27.235340, 29.025188, 11.603440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982832, 29.700035, 11.726240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362091, 29.771297, 11.620960>,  <27.589647, 29.814054, 11.557792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362091, 29.771297, 11.620960>,  <26.982832, 29.700035, 11.726240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362091, 29.771297, 11.620960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284201, 0.845975, -0.451172,
		0.142282, 0.502580, 0.852742,
		0.948149, 0.178157, -0.263200,
		27.646536, 29.824745, 11.542000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568888, 29.779449, 12.359118>,  <26.982832, 29.700035, 11.726240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568888, 29.779449, 12.359118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236586, 29.560982, 12.402094>,  <26.037205, 29.429901, 12.427879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236586, 29.560982, 12.402094>,  <26.568888, 29.779449, 12.359118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236586, 29.560982, 12.402094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084594, 0.066896, 0.994167,
		-0.550172, 0.834999, -0.009372,
		-0.830755, -0.546170, 0.107440,
		25.987358, 29.397131, 12.434326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113243, 30.122791, 12.790259>,  <26.568888, 29.779449, 12.359118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113243, 30.122791, 12.790259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042364, 29.732147, 12.838973>,  <25.999838, 29.497761, 12.868201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042364, 29.732147, 12.838973>,  <26.113243, 30.122791, 12.790259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042364, 29.732147, 12.838973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196795, 0.086084, 0.976658,
		-0.964299, 0.197027, 0.176938,
		-0.177196, -0.976611, 0.121785,
		25.989204, 29.439163, 12.875508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535049, 30.012089, 13.314448>,  <26.113243, 30.122791, 12.790259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535049, 30.012089, 13.314448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768660, 29.688290, 13.290366>,  <25.908825, 29.494009, 13.275917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768660, 29.688290, 13.290366>,  <25.535049, 30.012089, 13.314448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768660, 29.688290, 13.290366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234694, 0.097389, 0.967178,
		-0.777068, -0.578986, 0.246863,
		0.584024, -0.809500, -0.060206,
		25.943867, 29.445440, 13.272305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295254, 29.433033, 13.802895>,  <25.535049, 30.012089, 13.314448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295254, 29.433033, 13.802895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690859, 29.461102, 13.750846>,  <25.928221, 29.477942, 13.719617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690859, 29.461102, 13.750846>,  <25.295254, 29.433033, 13.802895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690859, 29.461102, 13.750846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135691, -0.081473, 0.987396,
		0.058685, -0.994202, -0.090099,
		0.989012, 0.070171, -0.130123,
		25.987562, 29.482153, 13.711809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566103, 28.826214, 14.092651>,  <25.295254, 29.433033, 13.802895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566103, 28.826214, 14.092651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882322, 29.070890, 14.080883>,  <26.072054, 29.217697, 14.073822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882322, 29.070890, 14.080883>,  <25.566103, 28.826214, 14.092651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882322, 29.070890, 14.080883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133874, -0.125739, 0.982989,
		0.597589, -0.781039, -0.181292,
		0.790548, 0.611694, -0.029421,
		26.119486, 29.254398, 14.072057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988972, 28.510357, 14.613115>,  <25.566103, 28.826214, 14.092651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988972, 28.510357, 14.613115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115202, 28.887892, 14.573965>,  <26.190941, 29.114412, 14.550475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115202, 28.887892, 14.573965>,  <25.988972, 28.510357, 14.613115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115202, 28.887892, 14.573965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165251, 0.046905, 0.985136,
		0.934400, -0.327060, -0.141168,
		0.315577, 0.943839, -0.097875,
		26.209875, 29.171043, 14.544602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680033, 28.574156, 14.909679>,  <25.988972, 28.510357, 14.613115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680033, 28.574156, 14.909679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564806, 28.957138, 14.916579>,  <26.495670, 29.186928, 14.920719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564806, 28.957138, 14.916579>,  <26.680033, 28.574156, 14.909679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564806, 28.957138, 14.916579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290899, 0.070332, 0.954165,
		0.912357, 0.279882, -0.298783,
		-0.288067, 0.957455, 0.017249,
		26.478386, 29.244375, 14.921754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282631, 28.979971, 15.125513>,  <26.680033, 28.574156, 14.909679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282631, 28.979971, 15.125513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957590, 29.200666, 15.200624>,  <26.762566, 29.333084, 15.245689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957590, 29.200666, 15.200624>,  <27.282631, 28.979971, 15.125513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957590, 29.200666, 15.200624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267333, 0.066563, 0.961303,
		0.517890, 0.831356, -0.201588,
		-0.812602, 0.551740, 0.187776,
		26.713810, 29.366188, 15.256956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532644, 29.254784, 15.713951>,  <27.282631, 28.979971, 15.125513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532644, 29.254784, 15.713951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146521, 29.358644, 15.725000>,  <26.914846, 29.420961, 15.731630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146521, 29.358644, 15.725000>,  <27.532644, 29.254784, 15.713951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146521, 29.358644, 15.725000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027015, -0.005914, 0.999617,
		0.259715, 0.965684, -0.001306,
		-0.965307, 0.259651, 0.027624,
		26.856928, 29.436541, 15.733288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544212, 29.632523, 16.327284>,  <27.532644, 29.254784, 15.713951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544212, 29.632523, 16.327284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156765, 29.556381, 16.263355>,  <26.924297, 29.510696, 16.224998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156765, 29.556381, 16.263355>,  <27.544212, 29.632523, 16.327284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156765, 29.556381, 16.263355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184430, 0.119384, 0.975568,
		-0.166624, 0.974429, -0.150745,
		-0.968619, -0.190354, -0.159822,
		26.866179, 29.499275, 16.215408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180567, 30.232710, 16.522552>,  <27.544212, 29.632523, 16.327284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180567, 30.232710, 16.522552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925835, 29.932270, 16.592175>,  <26.772995, 29.752007, 16.633947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925835, 29.932270, 16.592175>,  <27.180567, 30.232710, 16.522552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925835, 29.932270, 16.592175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139897, 0.334572, 0.931928,
		-0.758204, 0.569133, -0.318142,
		-0.636833, -0.751099, 0.174054,
		26.734785, 29.706940, 16.644390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649883, 30.473322, 16.898100>,  <27.180567, 30.232710, 16.522552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649883, 30.473322, 16.898100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561430, 30.089176, 16.965984>,  <26.508358, 29.858688, 17.006714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561430, 30.089176, 16.965984>,  <26.649883, 30.473322, 16.898100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561430, 30.089176, 16.965984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112356, 0.197946, 0.973752,
		-0.968749, 0.196263, -0.151675,
		-0.221135, -0.960363, 0.169709,
		26.495089, 29.801067, 17.016897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990088, 30.455391, 17.357590>,  <26.649883, 30.473322, 16.898100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990088, 30.455391, 17.357590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214815, 30.129126, 17.412802>,  <26.349651, 29.933367, 17.445929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214815, 30.129126, 17.412802>,  <25.990088, 30.455391, 17.357590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214815, 30.129126, 17.412802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128110, 0.079055, 0.988604,
		-0.817281, -0.573099, -0.060080,
		0.561818, -0.815664, 0.138030,
		26.383360, 29.884426, 17.454210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798191, 30.331043, 17.931126>,  <25.990088, 30.455391, 17.357590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798191, 30.331043, 17.931126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056271, 30.026125, 17.910635>,  <26.211119, 29.843174, 17.898340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056271, 30.026125, 17.910635>,  <25.798191, 30.331043, 17.931126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056271, 30.026125, 17.910635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076483, -0.002266, 0.997068,
		-0.760176, -0.647226, 0.056841,
		0.645200, -0.762295, -0.051224,
		26.249830, 29.797436, 17.895267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690125, 29.848135, 18.454329>,  <25.798191, 30.331043, 17.931126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690125, 29.848135, 18.454329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073967, 29.818125, 18.345867>,  <26.304274, 29.800119, 18.280790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073967, 29.818125, 18.345867>,  <25.690125, 29.848135, 18.454329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073967, 29.818125, 18.345867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271198, -0.009800, 0.962474,
		-0.074868, -0.997133, 0.010943,
		0.959608, -0.075026, -0.271154,
		26.361849, 29.795618, 18.264521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956646, 29.260107, 18.822823>,  <25.690125, 29.848135, 18.454329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956646, 29.260107, 18.822823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270819, 29.491446, 18.734631>,  <26.459322, 29.630249, 18.681715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270819, 29.491446, 18.734631>,  <25.956646, 29.260107, 18.822823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270819, 29.491446, 18.734631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251867, 0.026744, 0.967392,
		0.565386, -0.815351, -0.124662,
		0.785431, 0.578349, -0.220481,
		26.506449, 29.664949, 18.668486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383476, 29.139122, 19.310669>,  <25.956646, 29.260107, 18.822823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383476, 29.139122, 19.310669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550877, 29.480347, 19.185997>,  <26.651316, 29.685081, 19.111195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550877, 29.480347, 19.185997>,  <26.383476, 29.139122, 19.310669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550877, 29.480347, 19.185997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386547, 0.143243, 0.911078,
		0.821852, -0.501764, -0.269802,
		0.418499, 0.853062, -0.311679,
		26.676426, 29.736265, 19.092493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073475, 29.122128, 19.616087>,  <26.383476, 29.139122, 19.310669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073475, 29.122128, 19.616087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996235, 29.502514, 19.519440>,  <26.949890, 29.730745, 19.461451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996235, 29.502514, 19.519440>,  <27.073475, 29.122128, 19.616087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996235, 29.502514, 19.519440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306293, 0.292372, 0.905927,
		0.932147, 0.100928, -0.347730,
		-0.193100, 0.950964, -0.241620,
		26.938305, 29.787804, 19.446953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638777, 29.513624, 19.771955>,  <27.073475, 29.122128, 19.616087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638777, 29.513624, 19.771955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347746, 29.788015, 19.775234>,  <27.173128, 29.952650, 19.777201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347746, 29.788015, 19.775234>,  <27.638777, 29.513624, 19.771955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347746, 29.788015, 19.775234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157679, 0.155587, 0.975156,
		0.667660, 0.710793, -0.221366,
		-0.727577, 0.685977, 0.008197,
		27.129473, 29.993809, 19.777693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921860, 30.055479, 20.136337>,  <27.638777, 29.513624, 19.771955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921860, 30.055479, 20.136337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529453, 30.129219, 20.160423>,  <27.294010, 30.173462, 20.174875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529453, 30.129219, 20.160423>,  <27.921860, 30.055479, 20.136337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529453, 30.129219, 20.160423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109481, 0.270157, 0.956572,
		0.160075, 0.945003, -0.285211,
		-0.981015, 0.184348, 0.060215,
		27.235149, 30.184523, 20.178488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823727, 30.518318, 20.686047>,  <27.921860, 30.055479, 20.136337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823727, 30.518318, 20.686047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438364, 30.425180, 20.632933>,  <27.207146, 30.369297, 20.601065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438364, 30.425180, 20.632933>,  <27.823727, 30.518318, 20.686047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438364, 30.425180, 20.632933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154865, 0.079173, 0.984758,
		-0.218782, 0.969286, -0.112335,
		-0.963406, -0.232844, -0.132787,
		27.149342, 30.355328, 20.593096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388512, 31.002531, 20.968737>,  <27.823727, 30.518318, 20.686047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388512, 31.002531, 20.968737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177700, 30.662628, 20.963823>,  <27.051212, 30.458687, 20.960875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177700, 30.662628, 20.963823>,  <27.388512, 31.002531, 20.968737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177700, 30.662628, 20.963823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162180, 0.086377, 0.982973,
		-0.834228, 0.520050, -0.183337,
		-0.527031, -0.849757, -0.012284,
		27.019590, 30.407701, 20.960138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849037, 31.195107, 21.367676>,  <27.388512, 31.002531, 20.968737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849037, 31.195107, 21.367676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847826, 30.795818, 21.343855>,  <26.847099, 30.556246, 21.329563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847826, 30.795818, 21.343855>,  <26.849037, 31.195107, 21.367676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847826, 30.795818, 21.343855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121762, -0.058741, 0.990820,
		-0.992555, 0.010253, -0.121367,
		-0.003030, -0.998221, -0.059552,
		26.846916, 30.496351, 21.325989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286797, 30.973915, 21.764774>,  <26.849037, 31.195107, 21.367676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286797, 30.973915, 21.764774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548670, 30.671944, 21.780117>,  <26.705793, 30.490761, 21.789322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548670, 30.671944, 21.780117>,  <26.286797, 30.973915, 21.764774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548670, 30.671944, 21.780117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202867, -0.126596, 0.970989,
		-0.728172, -0.643472, -0.236030,
		0.654684, -0.754929, 0.038356,
		26.745075, 30.445465, 21.791624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027870, 30.740307, 22.292938>,  <26.286797, 30.973915, 21.764774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027870, 30.740307, 22.292938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349524, 30.504845, 22.259817>,  <26.542515, 30.363567, 22.239944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349524, 30.504845, 22.259817>,  <26.027870, 30.740307, 22.292938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349524, 30.504845, 22.259817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068730, -0.230425, 0.970660,
		-0.590465, -0.774847, -0.225751,
		0.804131, -0.588657, -0.082803,
		26.590763, 30.328247, 22.234976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846582, 30.018141, 22.525501>,  <26.027870, 30.740307, 22.292938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846582, 30.018141, 22.525501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244614, 30.045750, 22.553951>,  <26.483433, 30.062315, 22.571020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244614, 30.045750, 22.553951>,  <25.846582, 30.018141, 22.525501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244614, 30.045750, 22.553951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054496, -0.218339, 0.974350,
		0.082782, -0.973429, -0.213503,
		0.995076, 0.069024, 0.071123,
		26.543137, 30.066456, 22.575289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050688, 29.453413, 22.892464>,  <25.846582, 30.018141, 22.525501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050688, 29.453413, 22.892464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340305, 29.725393, 22.938820>,  <26.514076, 29.888580, 22.966633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340305, 29.725393, 22.938820>,  <26.050688, 29.453413, 22.892464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340305, 29.725393, 22.938820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003758, -0.164127, 0.986432,
		0.689745, -0.714655, -0.116279,
		0.724043, 0.679949, 0.115891,
		26.557518, 29.929379, 22.973587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453821, 29.179529, 23.464956>,  <26.050688, 29.453413, 22.892464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453821, 29.179529, 23.464956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575081, 29.560698, 23.462376>,  <26.647837, 29.789398, 23.460827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575081, 29.560698, 23.462376>,  <26.453821, 29.179529, 23.464956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575081, 29.560698, 23.462376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287335, -0.084949, 0.954056,
		0.908592, -0.291076, -0.299560,
		0.303150, 0.952921, -0.006452,
		26.666025, 29.846575, 23.460440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143536, 29.150543, 23.800024>,  <26.453821, 29.179529, 23.464956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143536, 29.150543, 23.800024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980452, 29.514772, 23.827238>,  <26.882601, 29.733311, 23.843567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980452, 29.514772, 23.827238>,  <27.143536, 29.150543, 23.800024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980452, 29.514772, 23.827238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266158, 0.047235, 0.962771,
		0.873460, 0.410639, -0.261615,
		-0.407709, 0.910573, 0.068037,
		26.858139, 29.787945, 23.847649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609838, 29.514009, 24.328169>,  <27.143536, 29.150543, 23.800024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609838, 29.514009, 24.328169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256817, 29.700401, 24.302988>,  <27.045004, 29.812237, 24.287880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256817, 29.700401, 24.302988>,  <27.609838, 29.514009, 24.328169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256817, 29.700401, 24.302988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050930, 0.227820, 0.972371,
		0.467448, 0.854962, -0.224796,
		-0.882552, 0.465981, -0.062950,
		26.992052, 29.840197, 24.284103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660730, 30.112762, 24.701036>,  <27.609838, 29.514009, 24.328169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660730, 30.112762, 24.701036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260782, 30.114809, 24.694914>,  <27.020813, 30.116037, 24.691240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260782, 30.114809, 24.694914>,  <27.660730, 30.112762, 24.701036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260782, 30.114809, 24.694914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013179, 0.288344, 0.957436,
		0.009313, 0.957513, -0.288239,
		-0.999870, 0.005118, -0.015305,
		26.960821, 30.116344, 24.690323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528133, 30.781588, 25.029436>,  <27.660730, 30.112762, 24.701036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528133, 30.781588, 25.029436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199203, 30.555241, 25.053356>,  <27.001846, 30.419434, 25.067709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199203, 30.555241, 25.053356>,  <27.528133, 30.781588, 25.029436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199203, 30.555241, 25.053356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184092, 0.364012, 0.913020,
		-0.538415, 0.739791, -0.403507,
		-0.822325, -0.565866, 0.059800,
		26.952505, 30.385481, 25.071297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978395, 31.163422, 25.309250>,  <27.528133, 30.781588, 25.029436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978395, 31.163422, 25.309250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841419, 30.790911, 25.358988>,  <26.759233, 30.567404, 25.388830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841419, 30.790911, 25.358988>,  <26.978395, 31.163422, 25.309250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841419, 30.790911, 25.358988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271096, 0.224655, 0.935969,
		-0.899578, 0.286805, -0.329396,
		-0.342441, -0.931275, 0.124343,
		26.738688, 30.511528, 25.396290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291275, 31.213654, 25.538633>,  <26.978395, 31.163422, 25.309250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291275, 31.213654, 25.538633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368193, 30.837271, 25.650080>,  <26.414343, 30.611441, 25.716948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368193, 30.837271, 25.650080>,  <26.291275, 31.213654, 25.538633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368193, 30.837271, 25.650080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230814, 0.232583, 0.944791,
		-0.953807, -0.245986, -0.172461,
		0.192294, -0.940955, 0.278617,
		26.425880, 30.554985, 25.733665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767052, 31.073919, 26.040720>,  <26.291275, 31.213654, 25.538633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767052, 31.073919, 26.040720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058113, 30.815189, 26.132055>,  <26.232750, 30.659952, 26.186857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058113, 30.815189, 26.132055>,  <25.767052, 31.073919, 26.040720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058113, 30.815189, 26.132055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060303, 0.271272, 0.960612,
		-0.683290, -0.712761, 0.158386,
		0.727652, -0.646825, 0.228339,
		26.276409, 30.621141, 26.200558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610945, 30.722136, 26.691515>,  <25.767052, 31.073919, 26.040720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610945, 30.722136, 26.691515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005455, 30.677025, 26.643272>,  <26.242161, 30.649958, 26.614326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005455, 30.677025, 26.643272>,  <25.610945, 30.722136, 26.691515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005455, 30.677025, 26.643272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148849, 0.291063, 0.945054,
		-0.071476, -0.950033, 0.303854,
		0.986273, -0.112777, -0.120608,
		26.301336, 30.643192, 26.607090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905609, 30.216280, 27.073938>,  <25.610945, 30.722136, 26.691515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905609, 30.216280, 27.073938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197035, 30.484076, 27.016005>,  <26.371891, 30.644753, 26.981245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197035, 30.484076, 27.016005>,  <25.905609, 30.216280, 27.073938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197035, 30.484076, 27.016005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205100, -0.011479, 0.978674,
		0.653549, -0.742733, -0.145675,
		0.728566, 0.669489, -0.144832,
		26.415604, 30.684923, 26.972555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292847, 30.076357, 27.672195>,  <25.905609, 30.216280, 27.073938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292847, 30.076357, 27.672195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465155, 30.414080, 27.544706>,  <26.568541, 30.616713, 27.468214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465155, 30.414080, 27.544706>,  <26.292847, 30.076357, 27.672195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465155, 30.414080, 27.544706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385104, 0.147424, 0.911022,
		0.816168, -0.515183, -0.261640,
		0.430771, 0.844306, -0.318722,
		26.594385, 30.667372, 27.449089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914217, 30.049154, 27.962564>,  <26.292847, 30.076357, 27.672195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914217, 30.049154, 27.962564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875589, 30.436483, 27.870455>,  <26.852413, 30.668880, 27.815189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875589, 30.436483, 27.870455>,  <26.914217, 30.049154, 27.962564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875589, 30.436483, 27.870455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663513, 0.235079, 0.710273,
		0.741906, -0.084199, -0.665196,
		-0.096569, 0.968323, -0.230273,
		26.846619, 30.726980, 27.801373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585463, 30.343494, 28.084339>,  <26.914217, 30.049154, 27.962564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585463, 30.343494, 28.084339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359365, 30.673439, 28.080256>,  <27.223707, 30.871407, 28.077806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359365, 30.673439, 28.080256>,  <27.585463, 30.343494, 28.084339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359365, 30.673439, 28.080256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573529, 0.401848, 0.713851,
		0.592930, 0.397644, -0.700223,
		-0.565242, 0.824862, -0.010207,
		27.189793, 30.920898, 28.077194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101694, 31.033400, 28.011726>,  <27.585463, 30.343494, 28.084339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101694, 31.033400, 28.011726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739403, 31.106150, 28.164867>,  <27.522028, 31.149799, 28.256752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739403, 31.106150, 28.164867>,  <28.101694, 31.033400, 28.011726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739403, 31.106150, 28.164867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423856, 0.387419, 0.818690,
		0.000577, 0.903785, -0.427986,
		-0.905729, 0.181877, 0.382851,
		27.467684, 31.160713, 28.279722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280615, 31.613094, 28.171337>,  <28.101694, 31.033400, 28.011726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280615, 31.613094, 28.171337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945148, 31.532341, 28.373674>,  <27.743868, 31.483889, 28.495077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945148, 31.532341, 28.373674>,  <28.280615, 31.613094, 28.171337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945148, 31.532341, 28.373674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326137, 0.557686, 0.763296,
		-0.436201, 0.805126, -0.401871,
		-0.838668, -0.201885, 0.505845,
		27.693548, 31.471775, 28.525429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079760, 32.153084, 28.426989>,  <28.280615, 31.613094, 28.171337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079760, 32.153084, 28.426989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870726, 31.906300, 28.662363>,  <27.745304, 31.758228, 28.803589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870726, 31.906300, 28.662363>,  <28.079760, 32.153084, 28.426989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870726, 31.906300, 28.662363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231582, 0.561514, 0.794400,
		-0.820533, 0.551414, -0.150561,
		-0.522586, -0.616964, 0.588439,
		27.713949, 31.721210, 28.838894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549137, 32.294640, 27.727238>,  <28.079760, 32.153084, 28.426989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549137, 32.294640, 27.727238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346968, 32.609531, 27.868553>,  <28.225666, 32.798466, 27.953342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346968, 32.609531, 27.868553>,  <28.549137, 32.294640, 27.727238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346968, 32.609531, 27.868553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549481, 0.022042, -0.835216,
		-0.665297, -0.616261, 0.421429,
		-0.505422, 0.787233, 0.353288,
		28.195341, 32.845703, 27.974539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815825, 32.230328, 27.599840>,  <28.549137, 32.294640, 27.727238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815825, 32.230328, 27.599840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885923, 32.623756, 27.617159>,  <27.927982, 32.859814, 27.627550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885923, 32.623756, 27.617159>,  <27.815825, 32.230328, 27.599840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885923, 32.623756, 27.617159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597918, 0.141268, -0.789010,
		-0.782165, 0.112383, 0.612852,
		0.175247, 0.983572, 0.043299,
		27.938498, 32.918827, 27.630148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190933, 32.482391, 27.487774>,  <27.815825, 32.230328, 27.599840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190933, 32.482391, 27.487774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426306, 32.804874, 27.463198>,  <27.567530, 32.998363, 27.448452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426306, 32.804874, 27.463198>,  <27.190933, 32.482391, 27.487774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426306, 32.804874, 27.463198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593705, 0.379240, -0.709712,
		-0.548876, 0.454094, 0.701807,
		0.588429, 0.806210, -0.061442,
		27.602835, 33.046738, 27.444765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729383, 33.010517, 27.358351>,  <27.190933, 32.482391, 27.487774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729383, 33.010517, 27.358351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087004, 33.150337, 27.246284>,  <27.301577, 33.234230, 27.179045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087004, 33.150337, 27.246284>,  <26.729383, 33.010517, 27.358351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087004, 33.150337, 27.246284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418394, 0.428098, -0.801048,
		-0.160066, 0.833396, 0.528989,
		0.894050, 0.349546, -0.280164,
		27.355219, 33.255199, 27.162235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658480, 33.707886, 27.253250>,  <26.729383, 33.010517, 27.358351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658480, 33.707886, 27.253250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983332, 33.578827, 27.058790>,  <27.178244, 33.501392, 26.942114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983332, 33.578827, 27.058790>,  <26.658480, 33.707886, 27.253250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983332, 33.578827, 27.058790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397446, 0.304102, -0.865770,
		0.427177, 0.896338, 0.118736,
		0.812131, -0.322645, -0.486152,
		27.226971, 33.482033, 26.912945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694233, 34.236687, 26.708632>,  <26.658480, 33.707886, 27.253250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694233, 34.236687, 26.708632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933784, 33.937420, 26.594378>,  <27.077515, 33.757858, 26.525826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933784, 33.937420, 26.594378>,  <26.694233, 34.236687, 26.708632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933784, 33.937420, 26.594378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199117, 0.206361, -0.958002,
		0.775693, 0.630600, -0.025388,
		0.598877, -0.748170, -0.285636,
		27.113447, 33.712967, 26.508686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192221, 34.541718, 26.159101>,  <26.694233, 34.236687, 26.708632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192221, 34.541718, 26.159101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184963, 34.146252, 26.099491>,  <27.180609, 33.908970, 26.063725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184963, 34.146252, 26.099491>,  <27.192221, 34.541718, 26.159101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184963, 34.146252, 26.099491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012718, 0.148812, -0.988784,
		0.999755, -0.019834, 0.009875,
		-0.018142, -0.988667, -0.149027,
		27.179522, 33.849651, 26.054783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618420, 34.504745, 25.552896>,  <27.192221, 34.541718, 26.159101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618420, 34.504745, 25.552896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413425, 34.165142, 25.604347>,  <27.290428, 33.961380, 25.635218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413425, 34.165142, 25.604347>,  <27.618420, 34.504745, 25.552896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413425, 34.165142, 25.604347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069239, -0.108448, -0.991688,
		0.855900, -0.517132, -0.003206,
		-0.512486, -0.849008, 0.128626,
		27.259680, 33.910439, 25.642935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850368, 34.022877, 25.050837>,  <27.618420, 34.504745, 25.552896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850368, 34.022877, 25.050837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509535, 33.849209, 25.167763>,  <27.305035, 33.745007, 25.237919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509535, 33.849209, 25.167763>,  <27.850368, 34.022877, 25.050837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509535, 33.849209, 25.167763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032714, -0.601575, -0.798146,
		0.522384, -0.670524, 0.526795,
		-0.852083, -0.434172, 0.292318,
		27.253910, 33.718956, 25.255459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974375, 33.287922, 24.812084>,  <27.850368, 34.022877, 25.050837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974375, 33.287922, 24.812084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597410, 33.417156, 24.846680>,  <27.371231, 33.494698, 24.867437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597410, 33.417156, 24.846680>,  <27.974375, 33.287922, 24.812084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597410, 33.417156, 24.846680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210764, -0.372885, -0.903623,
		-0.259693, -0.869813, 0.419505,
		-0.942411, 0.323081, 0.086490,
		27.314688, 33.514080, 24.872625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676020, 32.830006, 24.403069>,  <27.974375, 33.287922, 24.812084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676020, 32.830006, 24.403069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413685, 33.127361, 24.455603>,  <27.256285, 33.305775, 24.487123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413685, 33.127361, 24.455603>,  <27.676020, 32.830006, 24.403069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413685, 33.127361, 24.455603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428082, -0.222935, -0.875811,
		-0.621792, -0.630610, 0.464441,
		-0.655835, 0.743392, 0.131334,
		27.216934, 33.350380, 24.495003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.911106, 32.587898, 24.579130>,  <27.676020, 32.830006, 24.403069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.911106, 32.587898, 24.579130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907276, 32.943584, 24.396172>,  <26.904978, 33.156994, 24.286396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907276, 32.943584, 24.396172>,  <26.911106, 32.587898, 24.579130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907276, 32.943584, 24.396172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382981, -0.425799, -0.819768,
		-0.923707, 0.167325, 0.344628,
		-0.009575, 0.889212, -0.457396,
		26.904404, 33.210346, 24.258953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194168, 32.776581, 24.236380>,  <26.911106, 32.587898, 24.579130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194168, 32.776581, 24.236380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451956, 33.015934, 24.045971>,  <26.606628, 33.159546, 23.931726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451956, 33.015934, 24.045971>,  <26.194168, 32.776581, 24.236380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451956, 33.015934, 24.045971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308348, -0.366301, -0.877921,
		-0.699699, 0.712575, -0.051561,
		0.644471, 0.598382, -0.476021,
		26.645298, 33.195450, 23.903164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820089, 33.067852, 23.690409>,  <26.194168, 32.776581, 24.236380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820089, 33.067852, 23.690409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191420, 33.133888, 23.557167>,  <26.414217, 33.173512, 23.477222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191420, 33.133888, 23.557167>,  <25.820089, 33.067852, 23.690409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191420, 33.133888, 23.557167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297912, -0.205666, -0.932175,
		-0.222400, 0.964597, -0.141742,
		0.928325, 0.165089, -0.333105,
		26.469917, 33.183414, 23.457235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656473, 33.253399, 23.052092>,  <25.820089, 33.067852, 23.690409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656473, 33.253399, 23.052092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051405, 33.190823, 23.041464>,  <26.288364, 33.153275, 23.035088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051405, 33.190823, 23.041464>,  <25.656473, 33.253399, 23.052092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051405, 33.190823, 23.041464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057905, -0.199311, -0.978224,
		0.147742, 0.967368, -0.205845,
		0.987329, -0.156444, -0.026569,
		26.347603, 33.143890, 23.033493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909788, 33.654625, 22.509426>,  <25.656473, 33.253399, 23.052092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909788, 33.654625, 22.509426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166517, 33.352646, 22.563263>,  <26.320555, 33.171459, 22.595566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166517, 33.352646, 22.563263>,  <25.909788, 33.654625, 22.509426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166517, 33.352646, 22.563263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050613, -0.216834, -0.974895,
		0.765181, 0.618898, -0.177379,
		0.641823, -0.754949, 0.134593,
		26.359064, 33.126160, 22.603642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371113, 33.715755, 22.067829>,  <25.909788, 33.654625, 22.509426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371113, 33.715755, 22.067829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365782, 33.322739, 22.142054>,  <26.362583, 33.086929, 22.186588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365782, 33.322739, 22.142054>,  <26.371113, 33.715755, 22.067829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365782, 33.322739, 22.142054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129305, -0.182327, -0.974698,
		0.991515, -0.036983, -0.124618,
		-0.013327, -0.982542, 0.185562,
		26.361784, 33.027977, 22.197721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010717, 33.526199, 21.714521>,  <26.371113, 33.715755, 22.067829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010717, 33.526199, 21.714521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786409, 33.198662, 21.763569>,  <26.651825, 33.002140, 21.792997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786409, 33.198662, 21.763569>,  <27.010717, 33.526199, 21.714521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786409, 33.198662, 21.763569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066276, -0.192011, -0.979152,
		0.825316, -0.540951, 0.161943,
		-0.560768, -0.818843, 0.122618,
		26.618179, 32.953011, 21.800354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344681, 32.984203, 21.232115>,  <27.010717, 33.526199, 21.714521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344681, 32.984203, 21.232115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974194, 32.852917, 21.306301>,  <26.751902, 32.774147, 21.350813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974194, 32.852917, 21.306301>,  <27.344681, 32.984203, 21.232115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974194, 32.852917, 21.306301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076984, -0.316931, -0.945319,
		0.369046, -0.889849, 0.268280,
		-0.926217, -0.328213, 0.185467,
		26.696329, 32.754452, 21.361940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290375, 32.444435, 20.792908>,  <27.344681, 32.984203, 21.232115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290375, 32.444435, 20.792908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908213, 32.501915, 20.896097>,  <26.678915, 32.536404, 20.958012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908213, 32.501915, 20.896097>,  <27.290375, 32.444435, 20.792908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908213, 32.501915, 20.896097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285773, -0.229853, -0.930323,
		-0.074384, -0.962559, 0.260666,
		-0.955406, 0.143693, 0.257976,
		26.621592, 32.545025, 20.973490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997400, 31.842960, 20.546944>,  <27.290375, 32.444435, 20.792908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997400, 31.842960, 20.546944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722345, 32.129707, 20.592999>,  <26.557312, 32.301754, 20.620632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722345, 32.129707, 20.592999>,  <26.997400, 31.842960, 20.546944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722345, 32.129707, 20.592999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437588, -0.282650, -0.853596,
		-0.579370, -0.637348, 0.508053,
		-0.687639, 0.716866, 0.115137,
		26.516054, 32.344769, 20.627541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335302, 31.574781, 20.338041>,  <26.997400, 31.842960, 20.546944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335302, 31.574781, 20.338041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297150, 31.971853, 20.308414>,  <26.274258, 32.210098, 20.290638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297150, 31.971853, 20.308414>,  <26.335302, 31.574781, 20.338041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297150, 31.971853, 20.308414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236180, -0.094849, -0.967069,
		-0.967017, -0.074748, 0.243498,
		-0.095382, 0.992681, -0.074067,
		26.268536, 32.269657, 20.286194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735361, 31.689209, 19.837629>,  <26.335302, 31.574781, 20.338041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735361, 31.689209, 19.837629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969482, 32.013363, 19.848217>,  <26.109955, 32.207855, 19.854570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969482, 32.013363, 19.848217>,  <25.735361, 31.689209, 19.837629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969482, 32.013363, 19.848217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047954, 0.067185, -0.996587,
		-0.809396, 0.582035, 0.078185,
		0.585302, 0.810383, 0.026469,
		26.145073, 32.256477, 19.856157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388575, 32.277424, 19.435802>,  <25.735361, 31.689209, 19.837629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388575, 32.277424, 19.435802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769524, 32.399139, 19.443781>,  <25.998093, 32.472168, 19.448568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769524, 32.399139, 19.443781>,  <25.388575, 32.277424, 19.435802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769524, 32.399139, 19.443781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002420, 0.057868, -0.998321,
		-0.304929, 0.950822, 0.054375,
		0.952372, 0.304285, 0.019946,
		26.055235, 32.490425, 19.449764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435463, 32.715488, 18.834522>,  <25.388575, 32.277424, 19.435802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.435463, 32.715488, 18.834522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814209, 32.615963, 18.916048>,  <26.041456, 32.556248, 18.964964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814209, 32.615963, 18.916048>,  <25.435463, 32.715488, 18.834522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814209, 32.615963, 18.916048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223913, 0.055025, -0.973055,
		0.230894, 0.966987, 0.107814,
		0.946864, -0.248813, 0.203816,
		26.098269, 32.541321, 18.977192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773294, 33.146572, 18.351654>,  <25.435463, 32.715488, 18.834522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773294, 33.146572, 18.351654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031229, 32.864510, 18.469595>,  <26.185989, 32.695271, 18.540359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031229, 32.864510, 18.469595>,  <25.773294, 33.146572, 18.351654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031229, 32.864510, 18.469595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265369, -0.155221, -0.951570,
		0.716774, 0.691853, 0.087034,
		0.644837, -0.705157, 0.294855,
		26.224680, 32.652962, 18.558052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380659, 33.414242, 18.054049>,  <25.773294, 33.146572, 18.351654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380659, 33.414242, 18.054049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400480, 33.021568, 18.127640>,  <26.412373, 32.785965, 18.171795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400480, 33.021568, 18.127640>,  <26.380659, 33.414242, 18.054049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400480, 33.021568, 18.127640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416182, -0.147158, -0.897294,
		0.907930, 0.121031, 0.401265,
		0.049551, -0.981680, 0.183980,
		26.415346, 32.727066, 18.182835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058237, 33.265320, 17.761377>,  <26.380659, 33.414242, 18.054049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058237, 33.265320, 17.761377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.891348, 32.905766, 17.814938>,  <26.791214, 32.690033, 17.847073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.891348, 32.905766, 17.814938>,  <27.058237, 33.265320, 17.761377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891348, 32.905766, 17.814938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531609, -0.360892, -0.766256,
		0.737100, -0.248517, 0.628428,
		-0.417222, -0.898886, 0.133899,
		26.766182, 32.636101, 17.855108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642157, 32.809547, 17.688068>,  <27.058237, 33.265320, 17.761377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642157, 32.809547, 17.688068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313751, 32.586582, 17.638708>,  <27.116707, 32.452805, 17.609093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313751, 32.586582, 17.638708>,  <27.642157, 32.809547, 17.688068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313751, 32.586582, 17.638708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439532, -0.479202, -0.759722,
		0.364345, -0.677981, 0.638432,
		-0.821015, -0.557412, -0.123399,
		27.067448, 32.419357, 17.601688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862843, 32.103432, 17.794926>,  <27.642157, 32.809547, 17.688068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862843, 32.103432, 17.794926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551788, 32.157631, 17.549349>,  <27.365156, 32.190151, 17.402002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551788, 32.157631, 17.549349>,  <27.862843, 32.103432, 17.794926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551788, 32.157631, 17.549349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496009, -0.467829, -0.731513,
		-0.386337, -0.873370, 0.296593,
		-0.777637, 0.135498, -0.613939,
		27.318497, 32.198280, 17.365168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881281, 31.512478, 17.420528>,  <27.862843, 32.103432, 17.794926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881281, 31.512478, 17.420528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657524, 31.771149, 17.213110>,  <27.523270, 31.926352, 17.088659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657524, 31.771149, 17.213110>,  <27.881281, 31.512478, 17.420528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657524, 31.771149, 17.213110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188775, -0.509750, -0.839356,
		-0.807122, -0.567416, 0.163073,
		-0.559391, 0.646679, -0.518544,
		27.489706, 31.965153, 17.057547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443075, 31.076733, 16.986145>,  <27.881281, 31.512478, 17.420528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443075, 31.076733, 16.986145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455482, 31.436081, 16.810888>,  <27.462927, 31.651690, 16.705734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455482, 31.436081, 16.810888>,  <27.443075, 31.076733, 16.986145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455482, 31.436081, 16.810888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191256, -0.435589, -0.879592,
		-0.981050, -0.056512, -0.185331,
		0.031021, 0.898370, -0.438143,
		27.464788, 31.705591, 16.679445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141853, 30.968533, 16.384571>,  <27.443075, 31.076733, 16.986145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141853, 30.968533, 16.384571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330866, 31.314404, 16.316401>,  <27.444273, 31.521927, 16.275499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330866, 31.314404, 16.316401>,  <27.141853, 30.968533, 16.384571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330866, 31.314404, 16.316401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247509, -0.315794, -0.915977,
		-0.845845, 0.390646, -0.363238,
		0.472531, 0.864679, -0.170424,
		27.472626, 31.573807, 16.265274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873369, 31.220913, 15.777396>,  <27.141853, 30.968533, 16.384571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873369, 31.220913, 15.777396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214014, 31.424480, 15.827613>,  <27.418400, 31.546621, 15.857742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214014, 31.424480, 15.827613>,  <26.873369, 31.220913, 15.777396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214014, 31.424480, 15.827613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251113, -0.185871, -0.949944,
		-0.460111, 0.840507, -0.286086,
		0.851610, 0.508920, 0.125541,
		27.469498, 31.577156, 15.865275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960361, 31.708307, 15.153933>,  <26.873369, 31.220913, 15.777396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960361, 31.708307, 15.153933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333944, 31.646549, 15.282859>,  <27.558094, 31.609495, 15.360214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333944, 31.646549, 15.282859>,  <26.960361, 31.708307, 15.153933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333944, 31.646549, 15.282859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302076, -0.140919, -0.942811,
		0.190985, 0.977908, -0.084973,
		0.933957, -0.154394, 0.322316,
		27.614132, 31.600231, 15.379554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433769, 32.118656, 14.636417>,  <26.960361, 31.708307, 15.153933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433769, 32.118656, 14.636417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694496, 31.876173, 14.818689>,  <27.850933, 31.730682, 14.928052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694496, 31.876173, 14.818689>,  <27.433769, 32.118656, 14.636417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694496, 31.876173, 14.818689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302527, -0.343136, -0.889233,
		0.695421, 0.717473, -0.040267,
		0.651818, -0.606209, 0.455680,
		27.890041, 31.694311, 14.955393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041470, 32.191406, 14.226501>,  <27.433769, 32.118656, 14.636417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041470, 32.191406, 14.226501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097046, 31.851145, 14.429315>,  <28.130392, 31.646988, 14.551003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097046, 31.851145, 14.429315>,  <28.041470, 32.191406, 14.226501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097046, 31.851145, 14.429315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374939, -0.428700, -0.821971,
		0.916579, 0.304311, 0.259380,
		0.138939, -0.850653, 0.507036,
		28.138727, 31.595949, 14.581426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697258, 31.881824, 13.904066>,  <28.041470, 32.191406, 14.226501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697258, 31.881824, 13.904066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461987, 31.610830, 14.080730>,  <28.320824, 31.448235, 14.186729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461987, 31.610830, 14.080730>,  <28.697258, 31.881824, 13.904066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461987, 31.610830, 14.080730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135396, -0.620897, -0.772110,
		0.797318, -0.394339, 0.456926,
		-0.588177, -0.677483, 0.441661,
		28.285534, 31.407585, 14.213228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780891, 32.170925, 13.157408>,  <28.697258, 31.881824, 13.904066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780891, 32.170925, 13.157408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053703, 32.449371, 13.067732>,  <29.217390, 32.616440, 13.013927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053703, 32.449371, 13.067732>,  <28.780891, 32.170925, 13.157408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053703, 32.449371, 13.067732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121750, 0.194198, 0.973377,
		0.721119, -0.691167, 0.047697,
		0.682029, 0.696114, -0.224190,
		29.258312, 32.658207, 13.000475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402025, 32.097420, 13.581637>,  <28.780891, 32.170925, 13.157408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402025, 32.097420, 13.581637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387560, 32.480099, 13.466108>,  <29.378881, 32.709705, 13.396791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387560, 32.480099, 13.466108>,  <29.402025, 32.097420, 13.581637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387560, 32.480099, 13.466108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036705, 0.287545, 0.957064,
		0.998672, 0.045211, 0.024717,
		-0.036162, 0.956700, -0.288822,
		29.376711, 32.767109, 13.379461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855511, 32.450127, 14.050470>,  <29.402025, 32.097420, 13.581637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855511, 32.450127, 14.050470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619556, 32.733788, 13.895993>,  <29.477983, 32.903984, 13.803307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619556, 32.733788, 13.895993>,  <29.855511, 32.450127, 14.050470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619556, 32.733788, 13.895993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075084, 0.428023, 0.900644,
		0.803990, 0.560272, -0.199238,
		-0.589883, 0.709149, -0.386193,
		29.442591, 32.946533, 13.780135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114218, 33.137142, 14.246547>,  <29.855511, 32.450127, 14.050470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114218, 33.137142, 14.246547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734270, 33.224285, 14.156854>,  <29.506302, 33.276573, 14.103038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734270, 33.224285, 14.156854>,  <30.114218, 33.137142, 14.246547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734270, 33.224285, 14.156854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122212, 0.401411, 0.907708,
		0.287764, 0.889610, -0.354663,
		-0.949872, 0.217862, -0.224233,
		29.449308, 33.289642, 14.089583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969524, 33.866425, 14.394897>,  <30.114218, 33.137142, 14.246547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969524, 33.866425, 14.394897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604778, 33.703487, 14.415195>,  <29.385931, 33.605724, 14.427375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604778, 33.703487, 14.415195>,  <29.969524, 33.866425, 14.394897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604778, 33.703487, 14.415195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142745, 0.430567, 0.891199,
		-0.384875, 0.805409, -0.450764,
		-0.911864, -0.407344, 0.050746,
		29.331219, 33.581284, 14.430419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404642, 34.403767, 14.435616>,  <29.969524, 33.866425, 14.394897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404642, 34.403767, 14.435616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263666, 34.058201, 14.579525>,  <29.179081, 33.850861, 14.665871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263666, 34.058201, 14.579525>,  <29.404642, 34.403767, 14.435616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263666, 34.058201, 14.579525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062950, 0.405454, 0.911945,
		-0.933716, 0.298756, -0.197281,
		-0.352438, -0.863917, 0.359772,
		29.157934, 33.799026, 14.687457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919765, 34.610340, 15.001049>,  <29.404642, 34.403767, 14.435616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919765, 34.610340, 15.001049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939100, 34.220173, 15.087049>,  <28.950701, 33.986073, 15.138650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939100, 34.220173, 15.087049>,  <28.919765, 34.610340, 15.001049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939100, 34.220173, 15.087049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189572, 0.202381, 0.960783,
		-0.980677, -0.087197, -0.175129,
		0.048335, -0.975417, 0.215000,
		28.953600, 33.927547, 15.151549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342922, 34.499249, 15.482511>,  <28.919765, 34.610340, 15.001049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342922, 34.499249, 15.482511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607597, 34.202930, 15.528796>,  <28.766403, 34.025139, 15.556568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607597, 34.202930, 15.528796>,  <28.342922, 34.499249, 15.482511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607597, 34.202930, 15.528796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031738, 0.126520, 0.991456,
		-0.749106, -0.659708, 0.060205,
		0.661689, -0.740795, 0.115715,
		28.806105, 33.980694, 15.563511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125904, 34.196995, 15.973652>,  <28.342922, 34.499249, 15.482511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125904, 34.196995, 15.973652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501699, 34.060463, 15.985329>,  <28.727177, 33.978542, 15.992334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501699, 34.060463, 15.985329>,  <28.125904, 34.196995, 15.973652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501699, 34.060463, 15.985329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008704, 0.108968, 0.994007,
		-0.342470, -0.933604, 0.105345,
		0.939488, -0.341335, 0.029192,
		28.783546, 33.958061, 15.994086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067373, 33.838470, 16.585558>,  <28.125904, 34.196995, 15.973652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067373, 33.838470, 16.585558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457100, 33.903591, 16.523331>,  <28.690937, 33.942661, 16.485994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457100, 33.903591, 16.523331>,  <28.067373, 33.838470, 16.585558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457100, 33.903591, 16.523331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164013, -0.039713, 0.985659,
		0.154286, -0.985860, -0.065394,
		0.974318, 0.162799, -0.155566,
		28.749395, 33.952431, 16.476662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390182, 33.267960, 16.974344>,  <28.067373, 33.838470, 16.585558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390182, 33.267960, 16.974344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658123, 33.562675, 16.937603>,  <28.818888, 33.739506, 16.915558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658123, 33.562675, 16.937603>,  <28.390182, 33.267960, 16.974344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658123, 33.562675, 16.937603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049452, 0.079162, 0.995634,
		0.740846, -0.671470, 0.016591,
		0.669852, 0.736792, -0.091853,
		28.859079, 33.783714, 16.910048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057100, 33.065189, 17.353254>,  <28.390182, 33.267960, 16.974344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057100, 33.065189, 17.353254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066521, 33.462498, 17.307898>,  <29.072172, 33.700882, 17.280684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066521, 33.462498, 17.307898>,  <29.057100, 33.065189, 17.353254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066521, 33.462498, 17.307898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106695, 0.110277, 0.988157,
		0.994013, -0.035369, -0.103380,
		0.023550, 0.993271, -0.113391,
		29.073586, 33.760479, 17.273880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497210, 33.274479, 17.863306>,  <29.057100, 33.065189, 17.353254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497210, 33.274479, 17.863306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292871, 33.606182, 17.772650>,  <29.170269, 33.805206, 17.718256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292871, 33.606182, 17.772650>,  <29.497210, 33.274479, 17.863306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292871, 33.606182, 17.772650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104532, 0.321597, 0.941089,
		0.853294, 0.457059, -0.250971,
		-0.510845, 0.829260, -0.226640,
		29.139618, 33.854961, 17.704659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917625, 33.733318, 18.171232>,  <29.497210, 33.274479, 17.863306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917625, 33.733318, 18.171232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573971, 33.928497, 18.109528>,  <29.367779, 34.045605, 18.072504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573971, 33.928497, 18.109528>,  <29.917625, 33.733318, 18.171232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573971, 33.928497, 18.109528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053122, 0.384845, 0.921451,
		0.508985, 0.783456, -0.356554,
		-0.859135, 0.487945, -0.154261,
		29.316231, 34.074883, 18.063250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025227, 34.399101, 18.428467>,  <29.917625, 33.733318, 18.171232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025227, 34.399101, 18.428467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630760, 34.332809, 18.427328>,  <29.394079, 34.293034, 18.426645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630760, 34.332809, 18.427328>,  <30.025227, 34.399101, 18.428467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630760, 34.332809, 18.427328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045738, 0.255572, 0.965708,
		-0.159321, 0.952479, -0.259617,
		-0.986167, -0.165731, -0.002847,
		29.334909, 34.283089, 18.426474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815590, 34.889904, 18.801146>,  <30.025227, 34.399101, 18.428467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815590, 34.889904, 18.801146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513380, 34.628700, 18.822166>,  <29.332054, 34.471977, 18.834780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513380, 34.628700, 18.822166>,  <29.815590, 34.889904, 18.801146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513380, 34.628700, 18.822166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124273, 0.221621, 0.967182,
		-0.643226, 0.724198, -0.248591,
		-0.755524, -0.653009, 0.052554,
		29.286722, 34.432796, 18.837933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160934, 35.246490, 19.058273>,  <29.815590, 34.889904, 18.801146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160934, 35.246490, 19.058273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108820, 34.861595, 19.153875>,  <29.077551, 34.630657, 19.211237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108820, 34.861595, 19.153875>,  <29.160934, 35.246490, 19.058273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108820, 34.861595, 19.153875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234926, 0.264158, 0.935430,
		-0.963242, 0.065726, -0.260472,
		-0.130288, -0.962237, 0.239007,
		29.069735, 34.572926, 19.225578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495668, 35.227909, 19.315409>,  <29.160934, 35.246490, 19.058273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495668, 35.227909, 19.315409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622381, 34.873093, 19.449760>,  <28.698408, 34.660202, 19.530371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622381, 34.873093, 19.449760>,  <28.495668, 35.227909, 19.315409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622381, 34.873093, 19.449760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304901, 0.240087, 0.921625,
		-0.898156, -0.394363, -0.194404,
		0.316781, -0.887038, 0.335877,
		28.717415, 34.606983, 19.550524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026461, 35.010063, 19.767912>,  <28.495668, 35.227909, 19.315409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026461, 35.010063, 19.767912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312422, 34.755478, 19.883722>,  <28.483999, 34.602726, 19.953209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312422, 34.755478, 19.883722>,  <28.026461, 35.010063, 19.767912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312422, 34.755478, 19.883722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342478, 0.042267, 0.938575,
		-0.609607, -0.770147, -0.187759,
		0.714904, -0.636465, 0.289524,
		28.526894, 34.564537, 19.970579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717096, 34.513084, 20.301600>,  <28.026461, 35.010063, 19.767912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717096, 34.513084, 20.301600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109816, 34.466671, 20.361746>,  <28.345448, 34.438824, 20.397835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109816, 34.466671, 20.361746>,  <27.717096, 34.513084, 20.301600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109816, 34.466671, 20.361746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156195, -0.042826, 0.986797,
		-0.108064, -0.992321, -0.060171,
		0.981797, -0.116035, 0.150368,
		28.404354, 34.431862, 20.406857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764406, 33.890583, 20.795347>,  <27.717096, 34.513084, 20.301600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764406, 33.890583, 20.795347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091242, 34.120003, 20.818691>,  <28.287344, 34.257652, 20.832697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091242, 34.120003, 20.818691>,  <27.764406, 33.890583, 20.795347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091242, 34.120003, 20.818691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206868, 0.197204, 0.958288,
		0.538115, -0.795081, 0.279783,
		0.817091, 0.573547, 0.058359,
		28.336369, 34.292068, 20.836199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268755, 33.681946, 21.392130>,  <27.764406, 33.890583, 20.795347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268755, 33.681946, 21.392130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331882, 34.065723, 21.298693>,  <28.369759, 34.295990, 21.242630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331882, 34.065723, 21.298693>,  <28.268755, 33.681946, 21.392130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331882, 34.065723, 21.298693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122503, 0.253751, 0.959481,
		0.979840, -0.122807, 0.157580,
		0.157817, 0.959442, -0.233591,
		28.379229, 34.353558, 21.228615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734573, 33.965961, 21.921139>,  <28.268755, 33.681946, 21.392130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734573, 33.965961, 21.921139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587030, 34.302528, 21.763174>,  <28.498505, 34.504471, 21.668394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587030, 34.302528, 21.763174>,  <28.734573, 33.965961, 21.921139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587030, 34.302528, 21.763174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351703, 0.266937, 0.897245,
		0.860378, 0.469847, 0.197469,
		-0.368856, 0.841421, -0.394913,
		28.476374, 34.554955, 21.644701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923759, 34.484585, 22.417261>,  <28.734573, 33.965961, 21.921139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923759, 34.484585, 22.417261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616518, 34.643906, 22.216711>,  <28.432173, 34.739498, 22.096382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616518, 34.643906, 22.216711>,  <28.923759, 34.484585, 22.417261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616518, 34.643906, 22.216711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340834, 0.408545, 0.846713,
		0.542079, 0.821248, -0.178051,
		-0.768103, 0.398300, -0.501373,
		28.386087, 34.763397, 22.066299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916609, 35.237423, 22.487617>,  <28.923759, 34.484585, 22.417261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916609, 35.237423, 22.487617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540594, 35.143692, 22.388481>,  <28.314985, 35.087456, 22.329000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540594, 35.143692, 22.388481>,  <28.916609, 35.237423, 22.487617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540594, 35.143692, 22.388481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336266, 0.515122, 0.788400,
		-0.057074, 0.824464, -0.563029,
		-0.940036, -0.234324, -0.247839,
		28.258583, 35.073395, 22.314129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617924, 35.922245, 22.290934>,  <28.916609, 35.237423, 22.487617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617924, 35.922245, 22.290934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330805, 35.664227, 22.395756>,  <28.158533, 35.509415, 22.458649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330805, 35.664227, 22.395756>,  <28.617924, 35.922245, 22.290934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330805, 35.664227, 22.395756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374170, 0.674798, 0.636117,
		-0.587163, 0.358550, -0.725728,
		-0.717800, -0.645050, 0.262057,
		28.115465, 35.470711, 22.474373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121469, 36.259010, 22.296665>,  <28.617924, 35.922245, 22.290934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121469, 36.259010, 22.296665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982277, 35.951401, 22.511148>,  <27.898762, 35.766834, 22.639839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982277, 35.951401, 22.511148>,  <28.121469, 36.259010, 22.296665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982277, 35.951401, 22.511148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494239, 0.636499, 0.592111,
		-0.796642, -0.058973, -0.601568,
		-0.347979, -0.769019, 0.536209,
		27.877884, 35.720695, 22.672010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306087, 36.406330, 22.400805>,  <28.121469, 36.259010, 22.296665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306087, 36.406330, 22.400805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452524, 36.154552, 22.674967>,  <27.540386, 36.003487, 22.839464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452524, 36.154552, 22.674967>,  <27.306087, 36.406330, 22.400805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452524, 36.154552, 22.674967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373875, 0.574992, 0.727737,
		-0.852170, -0.522675, -0.024831,
		0.366092, -0.629440, 0.685407,
		27.562351, 35.965721, 22.880589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801817, 36.261349, 22.884161>,  <27.306087, 36.406330, 22.400805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801817, 36.261349, 22.884161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146467, 36.191055, 23.074621>,  <27.353258, 36.148880, 23.188898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146467, 36.191055, 23.074621>,  <26.801817, 36.261349, 22.884161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146467, 36.191055, 23.074621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305710, 0.569178, 0.763268,
		-0.405147, -0.803215, 0.436695,
		0.861625, -0.175734, 0.476151,
		27.404955, 36.138336, 23.217466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611921, 36.308956, 23.572317>,  <26.801817, 36.261349, 22.884161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611921, 36.308956, 23.572317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010624, 36.335941, 23.589848>,  <27.249846, 36.352131, 23.600367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010624, 36.335941, 23.589848>,  <26.611921, 36.308956, 23.572317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010624, 36.335941, 23.589848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070880, 0.478765, 0.875077,
		0.038053, -0.875347, 0.481995,
		0.996759, 0.067464, 0.043826,
		27.309652, 36.356182, 23.602995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712694, 36.115742, 24.190733>,  <26.611921, 36.308956, 23.572317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712694, 36.115742, 24.190733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057375, 36.298557, 24.102568>,  <27.264183, 36.408245, 24.049669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057375, 36.298557, 24.102568>,  <26.712694, 36.115742, 24.190733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057375, 36.298557, 24.102568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056742, 0.344869, 0.936934,
		0.504229, -0.819866, 0.271241,
		0.861704, 0.457039, -0.220413,
		27.315886, 36.435669, 24.036444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146299, 35.995041, 24.756468>,  <26.712694, 36.115742, 24.190733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146299, 35.995041, 24.756468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311378, 36.303734, 24.562925>,  <27.410425, 36.488949, 24.446800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311378, 36.303734, 24.562925>,  <27.146299, 35.995041, 24.756468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311378, 36.303734, 24.562925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170395, 0.456414, 0.873299,
		0.894789, -0.442854, 0.056862,
		0.412697, 0.771730, -0.483854,
		27.435188, 36.535252, 24.417768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776545, 36.161415, 25.094769>,  <27.146299, 35.995041, 24.756468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776545, 36.161415, 25.094769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674294, 36.498672, 24.905552>,  <27.612944, 36.701027, 24.792021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674294, 36.498672, 24.905552>,  <27.776545, 36.161415, 25.094769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674294, 36.498672, 24.905552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184223, 0.522815, 0.832301,
		0.949060, 0.125614, -0.288972,
		-0.255628, 0.843140, -0.473043,
		27.597605, 36.751614, 24.763639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283915, 36.576809, 25.295515>,  <27.776545, 36.161415, 25.094769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283915, 36.576809, 25.295515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012720, 36.834347, 25.153643>,  <27.850004, 36.988869, 25.068520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012720, 36.834347, 25.153643>,  <28.283915, 36.576809, 25.295515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012720, 36.834347, 25.153643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151741, 0.594704, 0.789495,
		0.719242, 0.481447, -0.500899,
		-0.677986, 0.643845, -0.354681,
		27.809324, 37.027500, 25.047239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533373, 37.226143, 25.479996>,  <28.283915, 36.576809, 25.295515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533373, 37.226143, 25.479996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152794, 37.320683, 25.401115>,  <27.924446, 37.377407, 25.353786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152794, 37.320683, 25.401115>,  <28.533373, 37.226143, 25.479996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152794, 37.320683, 25.401115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000816, 0.638720, 0.769439,
		0.307810, 0.732241, -0.607516,
		-0.951448, 0.236345, -0.197202,
		27.867359, 37.391586, 25.341955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469284, 37.973175, 25.366650>,  <28.533373, 37.226143, 25.479996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469284, 37.973175, 25.366650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113457, 37.826550, 25.475681>,  <27.899961, 37.738575, 25.541100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113457, 37.826550, 25.475681>,  <28.469284, 37.973175, 25.366650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113457, 37.826550, 25.475681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041106, 0.658522, 0.751438,
		-0.454952, 0.657250, -0.600867,
		-0.889567, -0.366567, 0.272579,
		27.846586, 37.716579, 25.557455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075750, 38.500103, 25.449270>,  <28.469284, 37.973175, 25.366650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075750, 38.500103, 25.449270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854769, 38.230412, 25.645313>,  <27.722179, 38.068596, 25.762939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854769, 38.230412, 25.645313>,  <28.075750, 38.500103, 25.449270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854769, 38.230412, 25.645313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003780, 0.585949, 0.810339,
		-0.833535, 0.449528, -0.321161,
		-0.552454, -0.674232, 0.490108,
		27.689032, 38.028141, 25.792345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674133, 38.872356, 25.889784>,  <28.075750, 38.500103, 25.449270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674133, 38.872356, 25.889784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647444, 38.506332, 26.048893>,  <27.631430, 38.286720, 26.144358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647444, 38.506332, 26.048893>,  <27.674133, 38.872356, 25.889784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647444, 38.506332, 26.048893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079499, 0.392516, 0.916303,
		-0.994599, 0.092764, 0.046555,
		-0.066726, -0.915055, 0.397770,
		27.627426, 38.231815, 26.168224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994354, 38.889366, 26.368420>,  <27.674133, 38.872356, 25.889784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994354, 38.889366, 26.368420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216496, 38.576294, 26.480843>,  <27.349781, 38.388451, 26.548296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216496, 38.576294, 26.480843>,  <26.994354, 38.889366, 26.368420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216496, 38.576294, 26.480843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108199, 0.267088, 0.957579,
		-0.824545, -0.562205, 0.063643,
		0.555354, -0.782681, 0.281056,
		27.383102, 38.341488, 26.565159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555666, 38.375816, 26.774035>,  <26.994354, 38.889366, 26.368420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555666, 38.375816, 26.774035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943541, 38.381523, 26.871607>,  <27.176266, 38.384945, 26.930149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943541, 38.381523, 26.871607>,  <26.555666, 38.375816, 26.774035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943541, 38.381523, 26.871607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242751, 0.170131, 0.955054,
		-0.027878, -0.985318, 0.168436,
		0.969688, 0.014263, 0.243930,
		27.234447, 38.385803, 26.944786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634970, 37.959221, 27.402058>,  <26.555666, 38.375816, 26.774035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634970, 37.959221, 27.402058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956423, 38.195103, 27.370003>,  <27.149296, 38.336632, 27.350771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956423, 38.195103, 27.370003>,  <26.634970, 37.959221, 27.402058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956423, 38.195103, 27.370003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104028, 0.271777, 0.956721,
		0.585961, -0.760518, 0.279755,
		0.803634, 0.589704, -0.080136,
		27.197514, 38.372013, 27.345963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058672, 37.863972, 27.948948>,  <26.634970, 37.959221, 27.402058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058672, 37.863972, 27.948948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135662, 38.242626, 27.845543>,  <27.181856, 38.469818, 27.783501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135662, 38.242626, 27.845543>,  <27.058672, 37.863972, 27.948948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135662, 38.242626, 27.845543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107961, 0.282265, 0.953242,
		0.975344, -0.155568, 0.156530,
		0.192477, 0.946639, -0.258511,
		27.193405, 38.526619, 27.767990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666294, 38.228127, 28.371117>,  <27.058672, 37.863972, 27.948948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666294, 38.228127, 28.371117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398170, 38.487614, 28.226973>,  <27.237297, 38.643307, 28.140486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398170, 38.487614, 28.226973>,  <27.666294, 38.228127, 28.371117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398170, 38.487614, 28.226973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029656, 0.508633, 0.860473,
		0.741491, 0.566095, -0.360178,
		-0.670307, 0.648714, -0.360359,
		27.197079, 38.682228, 28.118864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040892, 38.758877, 28.464928>,  <27.666294, 38.228127, 28.371117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040892, 38.758877, 28.464928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650078, 38.844070, 28.462534>,  <27.415588, 38.895187, 28.461098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650078, 38.844070, 28.462534>,  <28.040892, 38.758877, 28.464928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650078, 38.844070, 28.462534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063366, 0.317258, 0.946220,
		0.203432, 0.924112, -0.323469,
		-0.977036, 0.212989, -0.005983,
		27.356966, 38.907967, 28.460739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891577, 39.413013, 28.851099>,  <28.040892, 38.758877, 28.464928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891577, 39.413013, 28.851099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556438, 39.194851, 28.841740>,  <27.355356, 39.063953, 28.836124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556438, 39.194851, 28.841740>,  <27.891577, 39.413013, 28.851099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556438, 39.194851, 28.841740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240359, 0.330077, 0.912840,
		-0.490144, 0.770444, -0.407646,
		-0.837846, -0.545404, -0.023398,
		27.305084, 39.031231, 28.834721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968466, 39.582188, 29.593531>,  <27.891577, 39.413013, 28.851099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968466, 39.582188, 29.593531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614880, 39.765938, 29.558722>,  <27.402727, 39.876190, 29.537836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614880, 39.765938, 29.558722>,  <27.968466, 39.582188, 29.593531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614880, 39.765938, 29.558722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370614, -0.574985, 0.729410,
		0.285040, 0.677025, 0.678520,
		-0.883967, 0.459380, -0.087021,
		27.349689, 39.903751, 29.532616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954161, 40.152077, 29.911692>,  <27.968466, 39.582188, 29.593531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954161, 40.152077, 29.911692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270010, 40.363636, 30.036118>,  <28.459518, 40.490574, 30.110773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270010, 40.363636, 30.036118>,  <27.954161, 40.152077, 29.911692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270010, 40.363636, 30.036118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598118, -0.776605, -0.197838,
		0.136938, 0.342271, -0.929569,
		0.789622, 0.528901, 0.311065,
		28.506897, 40.522305, 30.129436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526625, 40.131760, 29.425215>,  <27.954161, 40.152077, 29.911692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526625, 40.131760, 29.425215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636963, 40.154690, 29.809011>,  <28.703167, 40.168449, 30.039289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636963, 40.154690, 29.809011>,  <28.526625, 40.131760, 29.425215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636963, 40.154690, 29.809011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624997, -0.769086, -0.133733,
		0.730265, 0.636569, -0.247977,
		0.275847, 0.057324, 0.959491,
		28.719717, 40.171886, 30.096859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213192, 40.015190, 29.493551>,  <28.526625, 40.131760, 29.425215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213192, 40.015190, 29.493551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079752, 39.932732, 29.861511>,  <28.999689, 39.883255, 30.082287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079752, 39.932732, 29.861511>,  <29.213192, 40.015190, 29.493551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079752, 39.932732, 29.861511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699347, -0.708461, 0.094850,
		0.632160, 0.674970, 0.380511,
		-0.333598, -0.206149, 0.919899,
		28.979671, 39.870888, 30.137482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431334, 39.372200, 29.645077>,  <29.213192, 40.015190, 29.493551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431334, 39.372200, 29.645077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627520, 39.160332, 29.368269>,  <29.745232, 39.033211, 29.202185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627520, 39.160332, 29.368269>,  <29.431334, 39.372200, 29.645077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627520, 39.160332, 29.368269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020309, -0.786929, 0.616709,
		-0.871224, -0.316529, -0.375204,
		0.490466, -0.529671, -0.692020,
		29.774660, 39.001431, 29.160664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063040, 38.782318, 29.480503>,  <29.431334, 39.372200, 29.645077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063040, 38.782318, 29.480503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452610, 38.713558, 29.421286>,  <29.686352, 38.672302, 29.385756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452610, 38.713558, 29.421286>,  <29.063040, 38.782318, 29.480503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452610, 38.713558, 29.421286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017935, -0.708855, 0.705126,
		-0.226154, -0.684086, -0.693456,
		0.973927, -0.171904, -0.148041,
		29.744787, 38.661987, 29.376873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171495, 38.101368, 29.622698>,  <29.063040, 38.782318, 29.480503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171495, 38.101368, 29.622698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536560, 38.257576, 29.670937>,  <29.755600, 38.351299, 29.699881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536560, 38.257576, 29.670937>,  <29.171495, 38.101368, 29.622698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536560, 38.257576, 29.670937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210662, -0.702318, 0.679979,
		0.350240, -0.595186, -0.723246,
		0.912663, 0.390516, 0.120597,
		29.810358, 38.374729, 29.707115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782610, 37.626003, 29.422924>,  <29.171495, 38.101368, 29.622698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782610, 37.626003, 29.422924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873772, 37.884644, 29.714119>,  <29.928469, 38.039829, 29.888836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873772, 37.884644, 29.714119>,  <29.782610, 37.626003, 29.422924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873772, 37.884644, 29.714119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308374, -0.757110, 0.575925,
		0.923561, 0.093237, -0.371943,
		0.227904, 0.646600, 0.727990,
		29.942142, 38.078625, 29.932516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627369, 37.391640, 30.117899>,  <29.782610, 37.626003, 29.422924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627369, 37.391640, 30.117899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930143, 37.352711, 30.376379>,  <30.111809, 37.329353, 30.531467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930143, 37.352711, 30.376379>,  <29.627369, 37.391640, 30.117899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930143, 37.352711, 30.376379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463592, -0.776905, 0.426030,
		0.460575, -0.622051, -0.633184,
		0.756936, -0.097320, 0.646201,
		30.157225, 37.323513, 30.570240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063812, 36.739624, 29.965689>,  <29.627369, 37.391640, 30.117899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063812, 36.739624, 29.965689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033005, 36.879539, 30.339151>,  <30.014521, 36.963490, 30.563229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033005, 36.879539, 30.339151>,  <30.063812, 36.739624, 29.965689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033005, 36.879539, 30.339151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221661, -0.919011, 0.326015,
		0.972077, -0.181846, 0.148315,
		-0.077019, 0.349788, 0.933658,
		30.009899, 36.984474, 30.619249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249842, 36.109764, 30.191755>,  <30.063812, 36.739624, 29.965689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249842, 36.109764, 30.191755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362505, 35.882023, 30.500690>,  <30.430103, 35.745380, 30.686052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362505, 35.882023, 30.500690>,  <30.249842, 36.109764, 30.191755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362505, 35.882023, 30.500690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935531, -0.015890, -0.352886,
		0.213188, 0.821942, 0.528169,
		0.281659, -0.569350, 0.772340,
		30.447002, 35.711216, 30.732393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824211, 36.431366, 30.461248>,  <30.249842, 36.109764, 30.191755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824211, 36.431366, 30.461248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807878, 36.041225, 30.547995>,  <30.798079, 35.807140, 30.600042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807878, 36.041225, 30.547995>,  <30.824211, 36.431366, 30.461248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807878, 36.041225, 30.547995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862854, -0.143861, -0.484547,
		0.503800, 0.167338, 0.847457,
		-0.040832, -0.975347, 0.216866,
		30.795630, 35.748623, 30.613054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472771, 36.122520, 30.867647>,  <30.824211, 36.431366, 30.461248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472771, 36.122520, 30.867647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292418, 35.891773, 30.595198>,  <31.184206, 35.753326, 30.431728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292418, 35.891773, 30.595198>,  <31.472771, 36.122520, 30.867647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292418, 35.891773, 30.595198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873162, -0.126744, -0.470664,
		0.185180, -0.806947, 0.560842,
		-0.450885, -0.576864, -0.681125,
		31.157152, 35.718716, 30.390860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313843, 36.793732, 30.966572>,  <31.472771, 36.122520, 30.867647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313843, 36.793732, 30.966572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094477, 37.006920, 30.708834>,  <30.962856, 37.134834, 30.554192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094477, 37.006920, 30.708834>,  <31.313843, 36.793732, 30.966572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094477, 37.006920, 30.708834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205882, 0.660773, 0.721797,
		0.810464, 0.528504, -0.252648,
		-0.548416, 0.532975, -0.644343,
		30.929953, 37.166813, 30.515532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765909, 36.380524, 31.338764>,  <31.313843, 36.793732, 30.966572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765909, 36.380524, 31.338764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478868, 36.127716, 31.221737>,  <30.306644, 35.976032, 31.151522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478868, 36.127716, 31.221737>,  <30.765909, 36.380524, 31.338764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478868, 36.127716, 31.221737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426335, -0.730815, 0.533055,
		-0.550716, 0.257790, 0.793887,
		-0.717601, -0.632023, -0.292566,
		30.263588, 35.938110, 31.133966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570084, 35.987400, 31.798063>,  <30.765909, 36.380524, 31.338764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570084, 35.987400, 31.798063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472651, 35.718880, 31.518057>,  <30.414190, 35.557770, 31.350052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472651, 35.718880, 31.518057>,  <30.570084, 35.987400, 31.798063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472651, 35.718880, 31.518057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533572, -0.695471, 0.481271,
		-0.809918, -0.256279, 0.527592,
		-0.243585, -0.671298, -0.700018,
		30.399574, 35.517490, 31.308052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365105, 35.274197, 32.109840>,  <30.570084, 35.987400, 31.798063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365105, 35.274197, 32.109840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478937, 35.196804, 31.734272>,  <30.547237, 35.150368, 31.508930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478937, 35.196804, 31.734272>,  <30.365105, 35.274197, 32.109840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478937, 35.196804, 31.734272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545358, -0.772820, 0.324551,
		-0.788415, -0.604410, -0.114413,
		0.284582, -0.193485, -0.938923,
		30.564312, 35.138760, 31.452595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480625, 34.525513, 31.999680>,  <30.365105, 35.274197, 32.109840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480625, 34.525513, 31.999680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673470, 34.660839, 31.676418>,  <30.789177, 34.742035, 31.482462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673470, 34.660839, 31.676418>,  <30.480625, 34.525513, 31.999680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673470, 34.660839, 31.676418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545334, -0.837833, -0.025420,
		-0.685697, -0.428457, -0.588425,
		0.482111, 0.338319, -0.808152,
		30.818102, 34.762333, 31.433973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468134, 34.054794, 31.473127>,  <30.480625, 34.525513, 31.999680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468134, 34.054794, 31.473127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787945, 34.255417, 31.340944>,  <30.979832, 34.375790, 31.261635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787945, 34.255417, 31.340944>,  <30.468134, 34.054794, 31.473127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787945, 34.255417, 31.340944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472863, -0.864860, -0.168574,
		-0.370347, -0.021481, -0.928645,
		0.799527, 0.501553, -0.330455,
		31.027803, 34.405884, 31.241808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685883, 33.715248, 30.802113>,  <30.468134, 34.054794, 31.473127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685883, 33.715248, 30.802113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001303, 33.891727, 30.973475>,  <31.190556, 33.997616, 31.076292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001303, 33.891727, 30.973475>,  <30.685883, 33.715248, 30.802113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001303, 33.891727, 30.973475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526879, -0.843960, -0.100651,
		0.317151, 0.305086, -0.897963,
		0.788552, 0.441196, 0.428406,
		31.237869, 34.024086, 31.101995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380617, 33.623531, 30.383429>,  <30.685883, 33.715248, 30.802113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380617, 33.623531, 30.383429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471975, 33.619110, 30.772831>,  <31.526791, 33.616455, 31.006472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471975, 33.619110, 30.772831>,  <31.380617, 33.623531, 30.383429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471975, 33.619110, 30.772831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395647, -0.912587, -0.103188,
		0.889549, 0.408733, -0.204058,
		0.228397, -0.011056, 0.973505,
		31.540495, 33.615795, 31.064882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108093, 33.400425, 30.328236>,  <31.380617, 33.623531, 30.383429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108093, 33.400425, 30.328236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937866, 33.323082, 30.681847>,  <31.835730, 33.276676, 30.894012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937866, 33.323082, 30.681847>,  <32.108093, 33.400425, 30.328236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937866, 33.323082, 30.681847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208789, -0.971528, -0.111982,
		0.880509, 0.136919, 0.453825,
		-0.425571, -0.193355, 0.884027,
		31.810194, 33.265076, 30.947054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605740, 33.911160, 30.048798>,  <32.108093, 33.400425, 30.328236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605740, 33.911160, 30.048798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889057, 33.810551, 30.312634>,  <33.059048, 33.750183, 30.470936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889057, 33.810551, 30.312634>,  <32.605740, 33.911160, 30.048798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889057, 33.810551, 30.312634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454033, -0.553146, -0.698487,
		0.540537, 0.794207, -0.277587,
		0.708289, -0.251524, 0.659592,
		33.101543, 33.735092, 30.510511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280975, 33.422283, 29.971315>,  <32.605740, 33.911160, 30.048798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280975, 33.422283, 29.971315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592846, 33.312889, 29.745995>,  <33.779968, 33.247253, 29.610802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592846, 33.312889, 29.745995>,  <33.280975, 33.422283, 29.971315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592846, 33.312889, 29.745995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420973, 0.894882, 0.148218,
		0.463552, -0.352696, 0.812850,
		0.779680, -0.273481, -0.563300,
		33.826752, 33.230846, 29.577005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835251, 33.346962, 30.353233>,  <33.280975, 33.422283, 29.971315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835251, 33.346962, 30.353233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964577, 33.437325, 29.985661>,  <34.042171, 33.491543, 29.765118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964577, 33.437325, 29.985661>,  <33.835251, 33.346962, 30.353233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964577, 33.437325, 29.985661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501115, 0.782873, 0.368772,
		0.802715, -0.579719, 0.139909,
		0.323315, 0.225909, -0.918930,
		34.061573, 33.505096, 29.709982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367344, 33.740269, 30.479597>,  <33.835251, 33.346962, 30.353233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367344, 33.740269, 30.479597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325253, 33.809658, 30.087917>,  <34.299995, 33.851292, 29.852909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325253, 33.809658, 30.087917>,  <34.367344, 33.740269, 30.479597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325253, 33.809658, 30.087917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491112, 0.865278, 0.100511,
		0.864717, -0.470321, -0.176249,
		-0.105232, 0.173472, -0.979201,
		34.293682, 33.861698, 29.794157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054546, 33.716702, 30.189148>,  <34.367344, 33.740269, 30.479597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054546, 33.716702, 30.189148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801090, 33.909126, 29.946800>,  <34.649017, 34.024582, 29.801392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801090, 33.909126, 29.946800>,  <35.054546, 33.716702, 30.189148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801090, 33.909126, 29.946800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461634, 0.863560, 0.202874,
		0.620799, -0.151140, -0.769263,
		-0.633642, 0.481062, -0.605868,
		34.610996, 34.053444, 29.765039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317947, 33.973896, 29.549322>,  <35.054546, 33.716702, 30.189148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317947, 33.973896, 29.549322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032303, 34.226635, 29.669861>,  <34.860916, 34.378277, 29.742184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032303, 34.226635, 29.669861>,  <35.317947, 33.973896, 29.549322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032303, 34.226635, 29.669861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699400, 0.625715, 0.345427,
		0.029699, 0.457437, -0.888746,
		-0.714113, 0.631848, 0.301348,
		34.818069, 34.416191, 29.760265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374401, 34.707958, 29.259687>,  <35.317947, 33.973896, 29.549322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374401, 34.707958, 29.259687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206532, 34.718029, 29.622618>,  <35.105808, 34.724072, 29.840376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206532, 34.718029, 29.622618>,  <35.374401, 34.707958, 29.259687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206532, 34.718029, 29.622618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661877, 0.692526, 0.286927,
		-0.621122, 0.720954, -0.307299,
		-0.419674, 0.025177, 0.907326,
		35.080627, 34.725582, 29.894815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275879, 35.410545, 29.408691>,  <35.374401, 34.707958, 29.259687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275879, 35.410545, 29.408691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327797, 35.170223, 29.724207>,  <35.358948, 35.026031, 29.913517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327797, 35.170223, 29.724207>,  <35.275879, 35.410545, 29.408691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327797, 35.170223, 29.724207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789049, 0.544340, 0.284771,
		-0.600461, 0.585430, 0.544718,
		0.129799, -0.600803, 0.788789,
		35.366737, 34.989983, 29.960844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160355, 35.719002, 30.151106>,  <35.275879, 35.410545, 29.408691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160355, 35.719002, 30.151106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443596, 35.442181, 30.095022>,  <35.613541, 35.276089, 30.061373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443596, 35.442181, 30.095022>,  <35.160355, 35.719002, 30.151106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443596, 35.442181, 30.095022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706022, 0.690708, 0.156381,
		-0.011382, -0.209723, 0.977694,
		0.708099, -0.692054, -0.140207,
		35.656025, 35.234566, 30.052959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533741, 35.571110, 30.803341>,  <35.160355, 35.719002, 30.151106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533741, 35.571110, 30.803341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743309, 35.570000, 30.462637>,  <35.869049, 35.569332, 30.258215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743309, 35.570000, 30.462637>,  <35.533741, 35.571110, 30.803341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743309, 35.570000, 30.462637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679595, 0.604195, 0.416052,
		0.513474, -0.796831, 0.318439,
		0.523923, -0.002778, -0.851761,
		35.900486, 35.569168, 30.207109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287281, 35.329651, 30.872709>,  <35.533741, 35.571110, 30.803341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287281, 35.329651, 30.872709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214401, 35.597458, 30.584667>,  <36.170673, 35.758141, 30.411842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214401, 35.597458, 30.584667>,  <36.287281, 35.329651, 30.872709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214401, 35.597458, 30.584667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731897, 0.581408, 0.355376,
		0.656605, -0.462295, -0.595947,
		-0.182200, 0.669514, -0.720107,
		36.159740, 35.798313, 30.368635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985294, 35.690990, 30.934431>,  <36.287281, 35.329651, 30.872709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985294, 35.690990, 30.934431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956486, 36.069752, 30.809093>,  <36.939201, 36.297009, 30.733891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956486, 36.069752, 30.809093>,  <36.985294, 35.690990, 30.934431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956486, 36.069752, 30.809093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923565, 0.181937, 0.337530,
		0.376617, -0.265084, -0.887632,
		-0.072020, 0.946905, -0.313343,
		36.934879, 36.353825, 30.715090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417454, 35.812050, 30.325909>,  <36.985294, 35.690990, 30.934431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417454, 35.812050, 30.325909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384953, 36.143578, 30.547340>,  <37.365452, 36.342495, 30.680199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384953, 36.143578, 30.547340>,  <37.417454, 35.812050, 30.325909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384953, 36.143578, 30.547340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935338, -0.128456, 0.329607,
		0.344297, 0.544564, -0.764794,
		-0.081251, 0.828824, 0.553579,
		37.360577, 36.392223, 30.713413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064789, 35.963249, 30.377516>,  <37.417454, 35.812050, 30.325909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064789, 35.963249, 30.377516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987438, 36.205788, 30.686047>,  <37.941029, 36.351311, 30.871166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987438, 36.205788, 30.686047>,  <38.064789, 35.963249, 30.377516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987438, 36.205788, 30.686047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772063, -0.391067, 0.500985,
		0.605411, 0.692395, -0.392513,
		-0.193381, 0.606347, 0.771328,
		37.929424, 36.387691, 30.917444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684925, 36.251434, 30.591505>,  <38.064789, 35.963249, 30.377516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684925, 36.251434, 30.591505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422848, 36.252903, 30.893684>,  <38.265602, 36.253784, 31.074993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422848, 36.252903, 30.893684>,  <38.684925, 36.251434, 30.591505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422848, 36.252903, 30.893684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679336, -0.434590, 0.591299,
		0.330485, 0.900621, 0.282244,
		-0.655197, 0.003676, 0.755450,
		38.226288, 36.254005, 31.120319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762413, 36.778347, 31.186886>,  <38.684925, 36.251434, 30.591505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762413, 36.778347, 31.186886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580067, 36.448708, 31.321381>,  <38.470657, 36.250923, 31.402077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580067, 36.448708, 31.321381>,  <38.762413, 36.778347, 31.186886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580067, 36.448708, 31.321381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795001, -0.207149, 0.570143,
		-0.400201, 0.527216, 0.749589,
		-0.455865, -0.824095, 0.336236,
		38.443306, 36.201481, 31.422251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627373, 36.683270, 31.909594>,  <38.762413, 36.778347, 31.186886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627373, 36.683270, 31.909594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722015, 36.340534, 31.726358>,  <38.778801, 36.134892, 31.616417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722015, 36.340534, 31.726358>,  <38.627373, 36.683270, 31.909594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722015, 36.340534, 31.726358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664459, -0.201291, 0.719705,
		-0.708880, -0.474668, 0.521708,
		0.236606, -0.856838, -0.458089,
		38.792995, 36.083481, 31.588932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736431, 36.104408, 32.362225>,  <38.627373, 36.683270, 31.909594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736431, 36.104408, 32.362225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921864, 35.975121, 32.032227>,  <39.033123, 35.897549, 31.834227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921864, 35.975121, 32.032227>,  <38.736431, 36.104408, 32.362225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921864, 35.975121, 32.032227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820310, -0.195402, 0.537503,
		-0.334939, -0.925930, 0.174557,
		0.463581, -0.323221, -0.824997,
		39.060940, 35.878155, 31.784727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144958, 35.389576, 32.331589>,  <38.736431, 36.104408, 32.362225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144958, 35.389576, 32.331589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335491, 35.634563, 32.079243>,  <39.449810, 35.781555, 31.927834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335491, 35.634563, 32.079243>,  <39.144958, 35.389576, 32.331589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335491, 35.634563, 32.079243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878601, -0.303612, 0.368618,
		0.034228, -0.729864, -0.682734,
		0.476328, 0.612468, -0.630868,
		39.478390, 35.818302, 31.889982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670013, 34.951046, 32.042629>,  <39.144958, 35.389576, 32.331589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670013, 34.951046, 32.042629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775227, 35.335968, 32.070309>,  <39.838352, 35.566921, 32.086914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775227, 35.335968, 32.070309>,  <39.670013, 34.951046, 32.042629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775227, 35.335968, 32.070309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874200, -0.268060, 0.404868,
		0.408155, -0.046001, -0.911753,
		0.263028, 0.962304, 0.069196,
		39.854134, 35.624660, 32.091068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312489, 34.965580, 31.741419>,  <39.670013, 34.951046, 32.042629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312489, 34.965580, 31.741419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269325, 35.247082, 32.022297>,  <40.243427, 35.415985, 32.190823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269325, 35.247082, 32.022297>,  <40.312489, 34.965580, 31.741419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269325, 35.247082, 32.022297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820681, -0.335593, 0.462450,
		0.561105, 0.626181, -0.541349,
		-0.107904, 0.703758, 0.702197,
		40.236954, 35.458210, 32.232956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945995, 35.346684, 31.787319>,  <40.312489, 34.965580, 31.741419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945995, 35.346684, 31.787319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746357, 35.309013, 32.131886>,  <40.626575, 35.286411, 32.338627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746357, 35.309013, 32.131886>,  <40.945995, 35.346684, 31.787319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746357, 35.309013, 32.131886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854482, -0.218800, 0.471154,
		0.144109, 0.971215, 0.189669,
		-0.499092, -0.094171, 0.861417,
		40.596630, 35.280762, 32.390312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207901, 35.901566, 32.359409>,  <40.945995, 35.346684, 31.787319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207901, 35.901566, 32.359409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039204, 35.561329, 32.485031>,  <40.937984, 35.357189, 32.560406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039204, 35.561329, 32.485031>,  <41.207901, 35.901566, 32.359409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039204, 35.561329, 32.485031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861014, -0.267121, 0.432783,
		-0.284229, 0.452930, 0.845026,
		-0.421744, -0.850589, 0.314055,
		40.912682, 35.306152, 32.579247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204082, 35.810059, 33.094856>,  <41.207901, 35.901566, 32.359409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204082, 35.810059, 33.094856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241070, 35.466900, 32.892681>,  <41.263260, 35.261005, 32.771374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241070, 35.466900, 32.892681>,  <41.204082, 35.810059, 33.094856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241070, 35.466900, 32.892681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849486, -0.196846, 0.489515,
		-0.519445, -0.474628, 0.710567,
		0.092465, -0.857893, -0.505441,
		41.268810, 35.209534, 32.741051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286812, 35.182926, 33.520493>,  <41.204082, 35.810059, 33.094856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286812, 35.182926, 33.520493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477272, 35.146336, 33.170654>,  <41.591549, 35.124382, 32.960751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477272, 35.146336, 33.170654>,  <41.286812, 35.182926, 33.520493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477272, 35.146336, 33.170654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854841, -0.185080, 0.484760,
		-0.206213, -0.978457, -0.009930,
		0.476154, -0.091475, -0.874591,
		41.620117, 35.118893, 32.908276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755547, 34.484241, 33.452744>,  <41.286812, 35.182926, 33.520493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755547, 34.484241, 33.452744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876221, 34.804783, 33.246128>,  <41.948627, 34.997108, 33.122158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876221, 34.804783, 33.246128>,  <41.755547, 34.484241, 33.452744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876221, 34.804783, 33.246128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897901, -0.056649, 0.436538,
		0.320561, -0.595499, -0.736628,
		0.301687, 0.801356, -0.516540,
		41.966728, 35.045189, 33.091167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438972, 34.315289, 33.232983>,  <41.755547, 34.484241, 33.452744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438972, 34.315289, 33.232983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375874, 34.709293, 33.260895>,  <42.338017, 34.945698, 33.277641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375874, 34.709293, 33.260895>,  <42.438972, 34.315289, 33.232983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375874, 34.709293, 33.260895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732366, 0.069296, 0.677376,
		0.662387, 0.157960, -0.732320,
		-0.157745, 0.985011, 0.069784,
		42.328548, 35.004795, 33.281830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018677, 34.768929, 32.998352>,  <42.438972, 34.315289, 33.232983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018677, 34.768929, 32.998352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762096, 34.864552, 33.289940>,  <42.608150, 34.921925, 33.464893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762096, 34.864552, 33.289940>,  <43.018677, 34.768929, 32.998352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762096, 34.864552, 33.289940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700256, -0.205657, 0.683628,
		0.313345, 0.948976, -0.035484,
		-0.641449, 0.239060, 0.728968,
		42.569660, 34.936268, 33.508629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466305, 35.207985, 33.429630>,  <43.018677, 34.768929, 32.998352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466305, 35.207985, 33.429630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170101, 35.025429, 33.626957>,  <42.992378, 34.915897, 33.745354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170101, 35.025429, 33.626957>,  <43.466305, 35.207985, 33.429630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170101, 35.025429, 33.626957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650948, -0.304587, 0.695337,
		-0.167085, 0.836025, 0.522633,
		-0.740506, -0.456387, 0.493317,
		42.947948, 34.888512, 33.774952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393429, 35.458279, 34.121136>,  <43.466305, 35.207985, 33.429630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393429, 35.458279, 34.121136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323002, 35.070354, 34.053638>,  <43.280746, 34.837601, 34.013142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323002, 35.070354, 34.053638>,  <43.393429, 35.458279, 34.121136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323002, 35.070354, 34.053638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876949, -0.232400, 0.420654,
		-0.447169, -0.073914, 0.891390,
		-0.176067, -0.969808, -0.168741,
		43.270184, 34.779411, 34.003017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422726, 34.960564, 34.787178>,  <43.393429, 35.458279, 34.121136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422726, 34.960564, 34.787178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532585, 34.797451, 34.438858>,  <43.598499, 34.699585, 34.229866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532585, 34.797451, 34.438858>,  <43.422726, 34.960564, 34.787178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532585, 34.797451, 34.438858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942001, -0.067559, 0.328740,
		-0.192884, -0.910577, 0.365575,
		0.274645, -0.407781, -0.870795,
		43.614979, 34.675117, 34.177620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749916, 34.278610, 34.908421>,  <43.422726, 34.960564, 34.787178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749916, 34.278610, 34.908421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891972, 34.470375, 34.587410>,  <43.977207, 34.585434, 34.394806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891972, 34.470375, 34.587410>,  <43.749916, 34.278610, 34.908421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891972, 34.470375, 34.587410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934524, -0.203414, 0.292040,
		-0.023238, -0.853693, -0.520259,
		0.355141, 0.479408, -0.802523,
		43.998512, 34.614197, 34.346653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215866, 33.819950, 34.738079>,  <43.749916, 34.278610, 34.908421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215866, 33.819950, 34.738079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306824, 34.173470, 34.574524>,  <44.361397, 34.385582, 34.476391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306824, 34.173470, 34.574524>,  <44.215866, 33.819950, 34.738079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306824, 34.173470, 34.574524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973311, -0.192922, 0.124285,
		0.030959, -0.426238, -0.904081,
		0.227393, 0.883800, -0.408889,
		44.375042, 34.438610, 34.451859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695442, 33.769650, 34.024506>,  <44.215866, 33.819950, 34.738079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695442, 33.769650, 34.024506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778339, 34.096981, 34.238941>,  <44.828075, 34.293381, 34.367603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778339, 34.096981, 34.238941>,  <44.695442, 33.769650, 34.024506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778339, 34.096981, 34.238941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943398, -0.312218, 0.111894,
		0.258943, 0.482558, -0.836712,
		0.207241, 0.818326, 0.536091,
		44.840511, 34.342480, 34.399769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457340, 33.905491, 33.902428>,  <44.695442, 33.769650, 34.024506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457340, 33.905491, 33.902428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299335, 34.066551, 34.232723>,  <45.204533, 34.163185, 34.430901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299335, 34.066551, 34.232723>,  <45.457340, 33.905491, 33.902428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299335, 34.066551, 34.232723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857053, -0.162134, 0.489053,
		0.330797, 0.900881, -0.281046,
		-0.395011, 0.402649, 0.825736,
		45.180832, 34.187347, 34.480446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959007, 34.489532, 34.151840>,  <45.457340, 33.905491, 33.902428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959007, 34.489532, 34.151840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721992, 34.292294, 34.406635>,  <45.579784, 34.173950, 34.559513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721992, 34.292294, 34.406635>,  <45.959007, 34.489532, 34.151840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721992, 34.292294, 34.406635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805448, -0.350725, 0.477750,
		-0.012170, 0.796146, 0.604983,
		-0.592541, -0.493097, 0.636986,
		45.544231, 34.144363, 34.597733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151112, 34.456383, 34.875263>,  <45.959007, 34.489532, 34.151840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151112, 34.456383, 34.875263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422966, 34.574596, 35.143818>,  <46.586079, 34.645523, 35.304951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422966, 34.574596, 35.143818>,  <46.151112, 34.456383, 34.875263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422966, 34.574596, 35.143818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688213, 0.059891, -0.723033,
		-0.253891, 0.953453, -0.162686,
		0.679634, 0.295534, 0.671384,
		46.626858, 34.663258, 35.345234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497082, 34.950417, 34.437286>,  <46.151112, 34.456383, 34.875263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497082, 34.950417, 34.437286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718369, 34.878162, 34.762573>,  <46.851139, 34.834808, 34.957745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718369, 34.878162, 34.762573>,  <46.497082, 34.950417, 34.437286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718369, 34.878162, 34.762573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825684, -0.010514, -0.564035,
		0.110437, 0.983493, 0.143334,
		0.553217, -0.180640, 0.813216,
		46.884335, 34.823971, 35.006538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.191750, 35.160999, 34.372456>,  <46.497082, 34.950417, 34.437286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.191750, 35.160999, 34.372456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234306, 34.921467, 34.689968>,  <47.259838, 34.777748, 34.880474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234306, 34.921467, 34.689968>,  <47.191750, 35.160999, 34.372456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234306, 34.921467, 34.689968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928837, -0.225073, -0.294286,
		0.354885, 0.768598, 0.532272,
		0.106388, -0.598832, 0.793777,
		47.266224, 34.741817, 34.928101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.687504, 35.356182, 34.919468>,  <47.191750, 35.160999, 34.372456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.687504, 35.356182, 34.919468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684280, 34.956318, 34.929394>,  <47.682346, 34.716400, 34.935349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684280, 34.956318, 34.929394>,  <47.687504, 35.356182, 34.919468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.684280, 34.956318, 34.929394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950687, -0.015350, -0.309771,
		0.310047, 0.021092, 0.950487,
		-0.008056, -0.999660, 0.024811,
		47.681862, 34.656422, 34.936836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.875710, 31.501364, 20.314045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699490, 31.147118, 20.372839>,  <32.593758, 30.934570, 20.408115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699490, 31.147118, 20.372839>,  <32.875710, 31.501364, 20.314045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699490, 31.147118, 20.372839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142133, 0.230473, 0.962642,
		-0.886405, 0.403200, -0.227410,
		-0.440549, -0.885614, 0.146984,
		32.567326, 30.881433, 20.416935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237762, 31.686041, 20.575136>,  <32.875710, 31.501364, 20.314045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237762, 31.686041, 20.575136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.298100, 31.306538, 20.686205>,  <32.334301, 31.078835, 20.752846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.298100, 31.306538, 20.686205>,  <32.237762, 31.686041, 20.575136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298100, 31.306538, 20.686205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277384, 0.228981, 0.933073,
		-0.948844, -0.217769, -0.228631,
		0.150842, -0.948760, 0.277673,
		32.343353, 31.021910, 20.769506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626286, 31.496496, 20.882111>,  <32.237762, 31.686041, 20.575136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626286, 31.496496, 20.882111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.906191, 31.235466, 20.998371>,  <32.074135, 31.078848, 21.068129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.906191, 31.235466, 20.998371>,  <31.626286, 31.496496, 20.882111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906191, 31.235466, 20.998371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269988, 0.135100, 0.953339,
		-0.661392, -0.745583, -0.081649,
		0.699763, -0.652575, 0.290653,
		32.116119, 31.039694, 21.085567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325045, 31.066978, 21.266979>,  <31.626286, 31.496496, 20.882111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325045, 31.066978, 21.266979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.694330, 30.963923, 21.381029>,  <31.915901, 30.902088, 21.449459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.694330, 30.963923, 21.381029>,  <31.325045, 31.066978, 21.266979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694330, 30.963923, 21.381029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192212, 0.332893, 0.923167,
		-0.332762, -0.907085, 0.257810,
		0.923214, -0.257640, 0.285127,
		31.971294, 30.886631, 21.466568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266171, 30.552223, 21.819241>,  <31.325045, 31.066978, 21.266979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266171, 30.552223, 21.819241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.619625, 30.736128, 21.854580>,  <31.831697, 30.846470, 21.875784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.619625, 30.736128, 21.854580>,  <31.266171, 30.552223, 21.819241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619625, 30.736128, 21.854580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243715, 0.290605, 0.925285,
		0.399737, -0.839147, 0.368840,
		0.883637, 0.459762, 0.088347,
		31.884716, 30.874056, 21.881084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578028, 30.379467, 22.505842>,  <31.266171, 30.552223, 21.819241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578028, 30.379467, 22.505842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.742977, 30.717766, 22.370394>,  <31.841948, 30.920744, 22.289125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.742977, 30.717766, 22.370394>,  <31.578028, 30.379467, 22.505842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742977, 30.717766, 22.370394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189706, 0.443265, 0.876087,
		0.891044, -0.297037, 0.343234,
		0.412374, 0.845745, -0.338619,
		31.866690, 30.971489, 22.268808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022854, 30.668972, 22.994747>,  <31.578028, 30.379467, 22.505842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022854, 30.668972, 22.994747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.959719, 30.994625, 22.771219>,  <31.921837, 31.190016, 22.637102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.959719, 30.994625, 22.771219>,  <32.022854, 30.668972, 22.994747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959719, 30.994625, 22.771219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271095, 0.508441, 0.817310,
		0.949523, 0.280495, 0.140456,
		-0.157837, 0.814132, -0.558817,
		31.912367, 31.238865, 22.603575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082233, 31.179081, 23.507940>,  <32.022854, 30.668972, 22.994747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082233, 31.179081, 23.507940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.918272, 31.391552, 23.211340>,  <31.819895, 31.519035, 23.033379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.918272, 31.391552, 23.211340>,  <32.082233, 31.179081, 23.507940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918272, 31.391552, 23.211340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339432, 0.665721, 0.664531,
		0.846618, 0.524086, -0.092586,
		-0.409908, 0.531177, -0.741503,
		31.795300, 31.550905, 22.988890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386635, 31.875013, 23.516935>,  <32.082233, 31.179081, 23.507940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386635, 31.875013, 23.516935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.028179, 31.900921, 23.341330>,  <31.813105, 31.916466, 23.235966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.028179, 31.900921, 23.341330>,  <32.386635, 31.875013, 23.516935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028179, 31.900921, 23.341330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328372, 0.568657, 0.754189,
		0.298494, 0.820021, -0.488330,
		-0.896143, 0.064767, -0.439013,
		31.759336, 31.920351, 23.209625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206203, 32.532722, 23.464937>,  <32.386635, 31.875013, 23.516935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206203, 32.532722, 23.464937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.844807, 32.369755, 23.411705>,  <31.627968, 32.271976, 23.379765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.844807, 32.369755, 23.411705>,  <32.206203, 32.532722, 23.464937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844807, 32.369755, 23.411705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390691, 0.655199, 0.646586,
		-0.176234, 0.636181, -0.751143,
		-0.903494, -0.407415, -0.133082,
		31.573759, 32.247532, 23.371780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675667, 33.045738, 23.366049>,  <32.206203, 32.532722, 23.464937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675667, 33.045738, 23.366049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.498411, 32.717503, 23.510412>,  <31.392057, 32.520561, 23.597031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.498411, 32.717503, 23.510412>,  <31.675667, 33.045738, 23.366049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498411, 32.717503, 23.510412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384813, 0.537743, 0.750167,
		-0.809659, 0.193545, -0.554070,
		-0.443138, -0.820592, 0.360910,
		31.365469, 32.471325, 23.618685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954908, 33.261696, 23.413761>,  <31.675667, 33.045738, 23.366049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954908, 33.261696, 23.413761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.039761, 32.953430, 23.654123>,  <31.090672, 32.768471, 23.798340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.039761, 32.953430, 23.654123>,  <30.954908, 33.261696, 23.413761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039761, 32.953430, 23.654123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437322, 0.475029, 0.763608,
		-0.873928, -0.424773, -0.236258,
		0.212131, -0.770659, 0.600903,
		31.103399, 32.722233, 23.834394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286772, 33.146748, 23.832714>,  <30.954908, 33.261696, 23.413761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286772, 33.146748, 23.832714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.561523, 32.963604, 24.058479>,  <30.726376, 32.853718, 24.193937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.561523, 32.963604, 24.058479>,  <30.286772, 33.146748, 23.832714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561523, 32.963604, 24.058479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417518, 0.387066, 0.822106,
		-0.594872, -0.800341, 0.074704,
		0.686881, -0.457858, 0.564412,
		30.767588, 32.826248, 24.227802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881105, 32.777622, 24.379564>,  <30.286772, 33.146748, 23.832714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881105, 32.777622, 24.379564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.261724, 32.778667, 24.502560>,  <30.490095, 32.779297, 24.576357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.261724, 32.778667, 24.502560>,  <29.881105, 32.777622, 24.379564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261724, 32.778667, 24.502560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269081, 0.491079, 0.828515,
		-0.148833, -0.871111, 0.467990,
		0.951548, 0.002617, 0.307488,
		30.547190, 32.779453, 24.594807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864637, 32.571236, 25.115368>,  <29.881105, 32.777622, 24.379564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864637, 32.571236, 25.115368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.207260, 32.771114, 25.063808>,  <30.412834, 32.891041, 25.032873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.207260, 32.771114, 25.063808>,  <29.864637, 32.571236, 25.115368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207260, 32.771114, 25.063808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197420, 0.548069, 0.812801,
		0.476799, -0.670763, 0.568102,
		0.856556, 0.499697, -0.128897,
		30.464228, 32.921024, 25.025139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121393, 32.509106, 25.776991>,  <29.864637, 32.571236, 25.115368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121393, 32.509106, 25.776991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.300692, 32.806881, 25.579046>,  <30.408270, 32.985546, 25.460279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.300692, 32.806881, 25.579046>,  <30.121393, 32.509106, 25.776991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300692, 32.806881, 25.579046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164710, 0.612895, 0.772807,
		0.878606, -0.264897, 0.397342,
		0.448243, 0.744439, -0.494862,
		30.435165, 33.030212, 25.430588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566473, 32.737400, 26.285843>,  <30.121393, 32.509106, 25.776991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566473, 32.737400, 26.285843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.530245, 33.042706, 26.029963>,  <30.508509, 33.225891, 25.876434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.530245, 33.042706, 26.029963>,  <30.566473, 32.737400, 26.285843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530245, 33.042706, 26.029963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008853, 0.641701, 0.766904,
		0.995851, 0.075121, -0.051360,
		-0.090569, 0.763267, -0.639703,
		30.503075, 33.271687, 25.838051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985270, 33.241291, 26.665659>,  <30.566473, 32.737400, 26.285843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985270, 33.241291, 26.665659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.798582, 33.468288, 26.394331>,  <30.686569, 33.604488, 26.231533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.798582, 33.468288, 26.394331>,  <30.985270, 33.241291, 26.665659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798582, 33.468288, 26.394331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274047, 0.822028, 0.499167,
		0.840876, 0.047078, -0.539177,
		-0.466719, 0.567497, -0.678322,
		30.658567, 33.638538, 26.190834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396740, 33.785255, 26.425184>,  <30.985270, 33.241291, 26.665659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396740, 33.785255, 26.425184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.018028, 33.903049, 26.373194>,  <30.790802, 33.973724, 26.341999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.018028, 33.903049, 26.373194>,  <31.396740, 33.785255, 26.425184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018028, 33.903049, 26.373194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160344, 0.781593, 0.602828,
		0.279112, 0.549903, -0.787213,
		-0.946777, 0.294481, -0.129978,
		30.733995, 33.991394, 26.334200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535639, 34.507713, 26.159521>,  <31.396740, 33.785255, 26.425184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535639, 34.507713, 26.159521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.161419, 34.477486, 26.297531>,  <30.936888, 34.459351, 26.380337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.161419, 34.477486, 26.297531>,  <31.535639, 34.507713, 26.159521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161419, 34.477486, 26.297531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182551, 0.732805, 0.655493,
		-0.302367, 0.676229, -0.671780,
		-0.935548, -0.075566, 0.345023,
		30.880754, 34.454815, 26.401037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240450, 35.152431, 26.088305>,  <31.535639, 34.507713, 26.159521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240450, 35.152431, 26.088305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.042036, 34.983818, 26.391951>,  <30.922987, 34.882648, 26.574139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.042036, 34.983818, 26.391951>,  <31.240450, 35.152431, 26.088305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042036, 34.983818, 26.391951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232592, 0.777795, 0.583896,
		-0.836570, 0.466198, -0.287768,
		-0.496036, -0.421537, 0.759114,
		30.893225, 34.857357, 26.619684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819616, 35.621727, 26.417976>,  <31.240450, 35.152431, 26.088305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819616, 35.621727, 26.417976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.922895, 35.384781, 26.723248>,  <30.984863, 35.242615, 26.906410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.922895, 35.384781, 26.723248>,  <30.819616, 35.621727, 26.417976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922895, 35.384781, 26.723248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350939, 0.793511, 0.497174,
		-0.900098, 0.139461, 0.412764,
		0.258196, -0.592361, 0.763180,
		31.000355, 35.207073, 26.952202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868401, 36.169994, 26.913525>,  <30.819616, 35.621727, 26.417976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868401, 36.169994, 26.913525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.742134, 36.510590, 26.746040>,  <30.666374, 36.714947, 26.645550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.742134, 36.510590, 26.746040>,  <30.868401, 36.169994, 26.913525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742134, 36.510590, 26.746040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075692, -0.462465, -0.883401,
		-0.945847, -0.247165, 0.210435,
		-0.315665, 0.851490, -0.418713,
		30.647434, 36.766037, 26.620426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210947, 36.052418, 26.614346>,  <30.868401, 36.169994, 26.913525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210947, 36.052418, 26.614346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.360754, 36.360947, 26.408508>,  <30.450638, 36.546062, 26.285006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.360754, 36.360947, 26.408508>,  <30.210947, 36.052418, 26.614346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360754, 36.360947, 26.408508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192827, -0.478059, -0.856900,
		-0.906948, 0.420150, -0.030309,
		0.374516, 0.771319, -0.514591,
		30.473108, 36.592342, 26.254131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787842, 36.041546, 26.078041>,  <30.210947, 36.052418, 26.614346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787842, 36.041546, 26.078041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.108250, 36.254131, 25.967831>,  <30.300495, 36.381683, 25.901705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.108250, 36.254131, 25.967831>,  <29.787842, 36.041546, 26.078041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108250, 36.254131, 25.967831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009591, -0.471589, -0.881766,
		-0.598562, 0.703669, -0.382849,
		0.801019, 0.531464, -0.275527,
		30.348555, 36.413570, 25.885172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563408, 36.344486, 25.443527>,  <29.787842, 36.041546, 26.078041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563408, 36.344486, 25.443527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.957821, 36.402573, 25.410892>,  <30.194468, 36.437424, 25.391312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.957821, 36.402573, 25.410892>,  <29.563408, 36.344486, 25.443527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957821, 36.402573, 25.410892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033812, -0.305103, -0.951719,
		-0.163096, 0.941183, -0.295931,
		0.986031, 0.145216, -0.081584,
		30.253630, 36.446136, 25.386417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733702, 36.574360, 24.744799>,  <29.563408, 36.344486, 25.443527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733702, 36.574360, 24.744799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.082983, 36.431625, 24.877573>,  <30.292551, 36.345985, 24.957237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.082983, 36.431625, 24.877573>,  <29.733702, 36.574360, 24.744799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082983, 36.431625, 24.877573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098150, -0.538377, -0.836969,
		0.477370, 0.763423, -0.435089,
		0.873204, -0.356840, 0.331935,
		30.344944, 36.324574, 24.977154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186272, 36.613171, 24.108023>,  <29.733702, 36.574360, 24.744799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186272, 36.613171, 24.108023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.399906, 36.366707, 24.339575>,  <30.528086, 36.218830, 24.478506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.399906, 36.366707, 24.339575>,  <30.186272, 36.613171, 24.108023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399906, 36.366707, 24.339575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174165, -0.589842, -0.788513,
		0.827297, 0.521954, -0.207712,
		0.534085, -0.616158, 0.578881,
		30.560131, 36.181858, 24.513239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754490, 36.585419, 23.853121>,  <30.186272, 36.613171, 24.108023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754490, 36.585419, 23.853121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.721851, 36.239815, 24.051847>,  <30.702269, 36.032452, 24.171083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.721851, 36.239815, 24.051847>,  <30.754490, 36.585419, 23.853121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721851, 36.239815, 24.051847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103259, -0.503126, -0.858022,
		0.991302, -0.018709, 0.130269,
		-0.081595, -0.864010, 0.496818,
		30.697372, 35.980610, 24.200893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318312, 36.269436, 23.701048>,  <30.754490, 36.585419, 23.853121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318312, 36.269436, 23.701048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.055603, 35.992027, 23.819492>,  <30.897978, 35.825584, 23.890558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.055603, 35.992027, 23.819492>,  <31.318312, 36.269436, 23.701048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055603, 35.992027, 23.819492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187473, -0.530511, -0.826688,
		0.730413, -0.487434, 0.478441,
		-0.656773, -0.693518, 0.296111,
		30.858570, 35.783974, 23.908325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730204, 35.634514, 23.516283>,  <31.318312, 36.269436, 23.701048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730204, 35.634514, 23.516283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.352673, 35.518421, 23.579464>,  <31.126154, 35.448765, 23.617373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.352673, 35.518421, 23.579464>,  <31.730204, 35.634514, 23.516283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352673, 35.518421, 23.579464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087140, -0.679721, -0.728276,
		0.318736, -0.673604, 0.666832,
		-0.943829, -0.290236, 0.157954,
		31.069523, 35.431351, 23.626850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781492, 34.936802, 23.491331>,  <31.730204, 35.634514, 23.516283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781492, 34.936802, 23.491331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.399809, 35.026489, 23.412128>,  <31.170799, 35.080303, 23.364607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.399809, 35.026489, 23.412128>,  <31.781492, 34.936802, 23.491331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399809, 35.026489, 23.412128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001088, -0.664529, -0.747261,
		-0.299134, -0.712829, 0.634345,
		-0.954211, 0.224222, -0.198008,
		31.113546, 35.093758, 23.352726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293362, 34.356010, 23.574678>,  <31.781492, 34.936802, 23.491331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293362, 34.356010, 23.574678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.110062, 34.606628, 23.322506>,  <31.000082, 34.757000, 23.171202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.110062, 34.606628, 23.322506>,  <31.293362, 34.356010, 23.574678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110062, 34.606628, 23.322506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007706, -0.706460, -0.707711,
		-0.888791, -0.329166, 0.318905,
		-0.458248, 0.626550, -0.630431,
		30.972588, 34.794594, 23.133377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753616, 34.020237, 23.150089>,  <31.293362, 34.356010, 23.574678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753616, 34.020237, 23.150089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.852968, 34.338146, 22.928589>,  <30.912579, 34.528893, 22.795689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.852968, 34.338146, 22.928589>,  <30.753616, 34.020237, 23.150089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852968, 34.338146, 22.928589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087286, -0.587703, -0.804355,
		-0.964722, 0.151450, -0.215346,
		0.248379, 0.794775, -0.553751,
		30.927483, 34.576580, 22.762465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398127, 33.990276, 22.587566>,  <30.753616, 34.020237, 23.150089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398127, 33.990276, 22.587566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.724489, 34.210812, 22.517910>,  <30.920307, 34.343132, 22.476116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.724489, 34.210812, 22.517910>,  <30.398127, 33.990276, 22.587566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724489, 34.210812, 22.517910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064730, -0.386392, -0.920060,
		-0.574547, 0.739413, -0.350948,
		0.815908, 0.551334, -0.174139,
		30.969261, 34.376213, 22.465668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383474, 34.348969, 21.897404>,  <30.398127, 33.990276, 22.587566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383474, 34.348969, 21.897404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.768696, 34.364670, 22.003979>,  <30.999828, 34.374088, 22.067924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.768696, 34.364670, 22.003979>,  <30.383474, 34.348969, 21.897404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768696, 34.364670, 22.003979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268435, -0.060110, -0.961421,
		-0.021720, 0.997420, -0.068425,
		0.963053, 0.039250, 0.266437,
		31.057611, 34.376446, 22.083910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679590, 34.830070, 21.395809>,  <30.383474, 34.348969, 21.897404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679590, 34.830070, 21.395809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.967804, 34.594826, 21.542755>,  <31.140732, 34.453678, 21.630922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.967804, 34.594826, 21.542755>,  <30.679590, 34.830070, 21.395809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967804, 34.594826, 21.542755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416598, -0.056369, -0.907341,
		0.554327, 0.806812, 0.204391,
		0.720533, -0.588113, 0.367363,
		31.183964, 34.418392, 21.652964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241816, 35.177402, 21.168396>,  <30.679590, 34.830070, 21.395809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241816, 35.177402, 21.168396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.353041, 34.804817, 21.262249>,  <31.419777, 34.581264, 21.318562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.353041, 34.804817, 21.262249>,  <31.241816, 35.177402, 21.168396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353041, 34.804817, 21.262249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482687, -0.075690, -0.872516,
		0.830478, 0.355869, 0.428559,
		0.278064, -0.931466, 0.234632,
		31.436460, 34.525379, 21.332638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928997, 35.041576, 20.914211>,  <31.241816, 35.177402, 21.168396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928997, 35.041576, 20.914211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.807196, 34.667084, 20.984354>,  <31.734114, 34.442387, 21.026440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.807196, 34.667084, 20.984354>,  <31.928997, 35.041576, 20.914211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807196, 34.667084, 20.984354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442623, -0.302096, -0.844288,
		0.843422, -0.179473, 0.506387,
		-0.304505, -0.936230, 0.175355,
		31.715845, 34.386215, 21.036961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421055, 34.652229, 20.578474>,  <31.928997, 35.041576, 20.914211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421055, 34.652229, 20.578474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.115669, 34.396927, 20.617987>,  <31.932438, 34.243744, 20.641695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.115669, 34.396927, 20.617987>,  <32.421055, 34.652229, 20.578474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115669, 34.396927, 20.617987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274786, -0.459414, -0.844649,
		0.584483, -0.617712, 0.526128,
		-0.763461, -0.638256, 0.098781,
		31.886631, 34.205452, 20.647621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.676834, 34.073330, 20.251953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284599, 33.998528, 20.275532>,  <32.049259, 33.953648, 20.289679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284599, 33.998528, 20.275532>,  <32.676834, 34.073330, 20.251953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284599, 33.998528, 20.275532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035976, -0.467129, -0.883457,
		0.192746, -0.864187, 0.464790,
		-0.980589, -0.187004, 0.058947,
		31.990423, 33.942425, 20.293217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563480, 33.333347, 20.190994>,  <32.676834, 34.073330, 20.251953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563480, 33.333347, 20.190994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.207542, 33.487106, 20.092682>,  <31.993979, 33.579361, 20.033695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.207542, 33.487106, 20.092682>,  <32.563480, 33.333347, 20.190994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207542, 33.487106, 20.092682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011123, -0.556806, -0.830568,
		-0.456118, -0.736347, 0.499750,
		-0.889850, 0.384396, -0.245779,
		31.940588, 33.602425, 20.018948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118523, 32.720898, 20.189287>,  <32.563480, 33.333347, 20.190994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118523, 32.720898, 20.189287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.977377, 33.013393, 19.955782>,  <31.892689, 33.188889, 19.815680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.977377, 33.013393, 19.955782>,  <32.118523, 32.720898, 20.189287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977377, 33.013393, 19.955782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011008, -0.627095, -0.778865,
		-0.935610, -0.268408, 0.229330,
		-0.352865, 0.731238, -0.583762,
		31.871517, 33.232765, 19.780653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779827, 32.434696, 19.681810>,  <32.118523, 32.720898, 20.189287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779827, 32.434696, 19.681810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762636, 32.797813, 19.514925>,  <31.752321, 33.015682, 19.414795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762636, 32.797813, 19.514925>,  <31.779827, 32.434696, 19.681810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762636, 32.797813, 19.514925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035965, -0.415922, -0.908689,
		-0.998428, -0.054059, -0.014773,
		-0.042978, 0.907792, -0.417212,
		31.749743, 33.070152, 19.389761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291969, 32.334175, 19.164249>,  <31.779827, 32.434696, 19.681810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291969, 32.334175, 19.164249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.539825, 32.637753, 19.084202>,  <31.688540, 32.819901, 19.036173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.539825, 32.637753, 19.084202>,  <31.291969, 32.334175, 19.164249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539825, 32.637753, 19.084202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091380, -0.322989, -0.941981,
		-0.779550, 0.565401, -0.269489,
		0.619639, 0.758947, -0.200120,
		31.725718, 32.865437, 19.024166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988834, 32.635437, 18.622931>,  <31.291969, 32.334175, 19.164249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988834, 32.635437, 18.622931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.376354, 32.733582, 18.608931>,  <31.608866, 32.792469, 18.600531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.376354, 32.733582, 18.608931>,  <30.988834, 32.635437, 18.622931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376354, 32.733582, 18.608931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061512, -0.374831, -0.925050,
		-0.240086, 0.894036, -0.378229,
		0.968801, 0.245357, -0.034998,
		31.666994, 32.807190, 18.598431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209026, 32.883579, 18.015251>,  <30.988834, 32.635437, 18.622931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209026, 32.883579, 18.015251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576006, 32.814144, 18.158447>,  <31.796194, 32.772484, 18.244366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576006, 32.814144, 18.158447>,  <31.209026, 32.883579, 18.015251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576006, 32.814144, 18.158447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339128, -0.129321, -0.931809,
		0.208044, 0.976291, -0.059778,
		0.917448, -0.173585, 0.357992,
		31.851240, 32.762070, 18.265844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613760, 33.381760, 17.828899>,  <31.209026, 32.883579, 18.015251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613760, 33.381760, 17.828899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.895355, 33.105801, 17.896360>,  <32.064312, 32.940224, 17.936836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.895355, 33.105801, 17.896360>,  <31.613760, 33.381760, 17.828899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895355, 33.105801, 17.896360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311666, 0.086718, -0.946226,
		0.638174, 0.718695, 0.276066,
		0.703987, -0.689897, 0.168652,
		32.106552, 32.898830, 17.946957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143883, 33.545452, 17.408794>,  <31.613760, 33.381760, 17.828899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143883, 33.545452, 17.408794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272339, 33.182709, 17.517958>,  <32.349411, 32.965061, 17.583456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272339, 33.182709, 17.517958>,  <32.143883, 33.545452, 17.408794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272339, 33.182709, 17.517958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420459, -0.121684, -0.899115,
		0.848577, 0.403488, 0.342218,
		0.321140, -0.906857, 0.272909,
		32.368679, 32.910652, 17.599831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927803, 33.406528, 17.288469>,  <32.143883, 33.545452, 17.408794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927803, 33.406528, 17.288469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.730213, 33.058876, 17.298269>,  <32.611660, 32.850285, 17.304150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.730213, 33.058876, 17.298269>,  <32.927803, 33.406528, 17.288469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730213, 33.058876, 17.298269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419414, -0.262869, -0.868902,
		0.761628, -0.418944, 0.494377,
		-0.493978, -0.869129, 0.024498,
		32.582020, 32.798138, 17.305618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385452, 32.984837, 16.982943>,  <32.927803, 33.406528, 17.288469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385452, 32.984837, 16.982943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.031094, 32.801872, 16.952076>,  <32.818478, 32.692093, 16.933556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.031094, 32.801872, 16.952076>,  <33.385452, 32.984837, 16.982943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031094, 32.801872, 16.952076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239003, -0.307506, -0.921042,
		0.397569, -0.834393, 0.381742,
		-0.885899, -0.457415, -0.077168,
		32.765324, 32.664646, 16.928926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572060, 32.389427, 16.687983>,  <33.385452, 32.984837, 16.982943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572060, 32.389427, 16.687983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179760, 32.423618, 16.617752>,  <32.944382, 32.444134, 16.575615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179760, 32.423618, 16.617752>,  <33.572060, 32.389427, 16.687983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179760, 32.423618, 16.617752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144793, -0.284966, -0.947539,
		-0.131026, -0.954719, 0.267103,
		-0.980748, 0.085478, -0.175574,
		32.885536, 32.449261, 16.565079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394310, 32.019218, 16.136015>,  <33.572060, 32.389427, 16.687983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394310, 32.019218, 16.136015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066238, 32.248047, 16.133505>,  <32.869396, 32.385345, 16.132000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066238, 32.248047, 16.133505>,  <33.394310, 32.019218, 16.136015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066238, 32.248047, 16.133505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065183, -0.104338, -0.992403,
		-0.568380, -0.813540, 0.122865,
		-0.820179, 0.572071, -0.006274,
		32.820183, 32.419670, 16.131622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868923, 31.593689, 15.862599>,  <33.394310, 32.019218, 16.136015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868923, 31.593689, 15.862599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.775269, 31.980532, 15.822842>,  <32.719074, 32.212639, 15.798987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.775269, 31.980532, 15.822842>,  <32.868923, 31.593689, 15.862599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775269, 31.980532, 15.822842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131549, -0.132811, -0.982373,
		-0.963262, -0.216938, 0.158318,
		-0.234140, 0.967109, -0.099394,
		32.705025, 32.270664, 15.793023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268597, 31.586567, 15.493765>,  <32.868923, 31.593689, 15.862599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268597, 31.586567, 15.493765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395760, 31.958651, 15.420395>,  <32.472057, 32.181900, 15.376373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395760, 31.958651, 15.420395>,  <32.268597, 31.586567, 15.493765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395760, 31.958651, 15.420395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411981, -0.038714, -0.910370,
		-0.853936, 0.364980, 0.370921,
		0.317907, 0.930210, -0.183424,
		32.491131, 32.237713, 15.365368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761511, 31.920462, 15.336021>,  <32.268597, 31.586567, 15.493765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761511, 31.920462, 15.336021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.063713, 32.112457, 15.157662>,  <32.245033, 32.227654, 15.050647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.063713, 32.112457, 15.157662>,  <31.761511, 31.920462, 15.336021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063713, 32.112457, 15.157662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537063, 0.063965, -0.841113,
		-0.375202, 0.874940, 0.306110,
		0.755504, 0.479988, -0.445899,
		32.290363, 32.256454, 15.023892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404230, 32.308529, 14.993754>,  <31.761511, 31.920462, 15.336021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404230, 32.308529, 14.993754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.766394, 32.356327, 14.830805>,  <31.983692, 32.385006, 14.733035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.766394, 32.356327, 14.830805>,  <31.404230, 32.308529, 14.993754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766394, 32.356327, 14.830805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419438, 0.103478, -0.901867,
		-0.065618, 0.987427, 0.143812,
		0.905409, 0.119499, -0.407374,
		32.038017, 32.392178, 14.708592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330727, 32.811436, 14.498990>,  <31.404230, 32.308529, 14.993754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330727, 32.811436, 14.498990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.665119, 32.632271, 14.372174>,  <31.865755, 32.524773, 14.296085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.665119, 32.632271, 14.372174>,  <31.330727, 32.811436, 14.498990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665119, 32.632271, 14.372174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335744, 0.039512, -0.941124,
		0.434064, 0.893206, -0.117351,
		0.835981, -0.447908, -0.317039,
		31.915913, 32.497898, 14.277062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510359, 33.159000, 13.880266>,  <31.330727, 32.811436, 14.498990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510359, 33.159000, 13.880266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717854, 32.817120, 13.872397>,  <31.842350, 32.611992, 13.867676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717854, 32.817120, 13.872397>,  <31.510359, 33.159000, 13.880266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717854, 32.817120, 13.872397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042124, -0.002569, -0.999109,
		0.853894, 0.519106, -0.037336,
		0.518739, -0.854706, -0.019673,
		31.873476, 32.560707, 13.866495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116474, 33.252438, 13.389478>,  <31.510359, 33.159000, 13.880266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116474, 33.252438, 13.389478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.014328, 32.866253, 13.410130>,  <31.953041, 32.634541, 13.422521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.014328, 32.866253, 13.410130>,  <32.116474, 33.252438, 13.389478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014328, 32.866253, 13.410130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123566, -0.020373, -0.992127,
		0.958916, -0.259733, -0.114097,
		-0.255364, -0.965466, 0.051630,
		31.937719, 32.576614, 13.425619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392570, 32.977974, 12.826574>,  <32.116474, 33.252438, 13.389478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392570, 32.977974, 12.826574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159599, 32.666119, 12.918611>,  <32.019817, 32.479008, 12.973832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159599, 32.666119, 12.918611>,  <32.392570, 32.977974, 12.826574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159599, 32.666119, 12.918611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249012, -0.098326, -0.963496,
		0.773800, -0.618466, -0.136871,
		-0.582432, -0.779636, 0.230090,
		31.984869, 32.432228, 12.987638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576839, 32.411072, 12.360249>,  <32.392570, 32.977974, 12.826574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576839, 32.411072, 12.360249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203281, 32.345375, 12.487284>,  <31.979147, 32.305958, 12.563505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203281, 32.345375, 12.487284>,  <32.576839, 32.411072, 12.360249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203281, 32.345375, 12.487284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290989, -0.166995, -0.942039,
		0.207755, -0.972182, 0.108165,
		-0.933897, -0.164239, 0.317588,
		31.923113, 32.296104, 12.582561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266777, 31.631142, 12.261297>,  <32.576839, 32.411072, 12.360249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266777, 31.631142, 12.261297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.966507, 31.894587, 12.240423>,  <31.786346, 32.052654, 12.227899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.966507, 31.894587, 12.240423>,  <32.266777, 31.631142, 12.261297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966507, 31.894587, 12.240423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189560, -0.290375, -0.937949,
		-0.632897, -0.694200, 0.342823,
		-0.750672, 0.658611, -0.052185,
		31.741304, 32.092171, 12.224768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598328, 31.266403, 12.303776>,  <32.266777, 31.631142, 12.261297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598328, 31.266403, 12.303776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.594992, 31.612925, 12.103997>,  <31.592991, 31.820837, 11.984130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.594992, 31.612925, 12.103997>,  <31.598328, 31.266403, 12.303776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594992, 31.612925, 12.103997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240563, -0.486534, -0.839889,
		-0.970598, 0.113144, 0.212458,
		-0.008340, 0.866304, -0.499447,
		31.592489, 31.872816, 11.954164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901865, 31.140104, 12.601681>,  <31.598328, 31.266403, 12.303776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901865, 31.140104, 12.601681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.952875, 30.744480, 12.631347>,  <30.983480, 30.507107, 12.649146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.952875, 30.744480, 12.631347>,  <30.901865, 31.140104, 12.601681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952875, 30.744480, 12.631347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053285, 0.067836, 0.996273,
		-0.990403, -0.131001, -0.044051,
		0.127525, -0.989059, 0.074165,
		30.991133, 30.447763, 12.653596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315893, 30.832613, 12.987879>,  <30.901865, 31.140104, 12.601681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315893, 30.832613, 12.987879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.615395, 30.568804, 13.014413>,  <30.795095, 30.410519, 13.030334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.615395, 30.568804, 13.014413>,  <30.315893, 30.832613, 12.987879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615395, 30.568804, 13.014413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064607, 0.026985, 0.997546,
		-0.659694, -0.751201, -0.022404,
		0.748753, -0.659522, 0.066334,
		30.840021, 30.370947, 13.034313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085644, 30.379492, 13.521076>,  <30.315893, 30.832613, 12.987879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085644, 30.379492, 13.521076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.482790, 30.333256, 13.509353>,  <30.721077, 30.305513, 13.502318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.482790, 30.333256, 13.509353>,  <30.085644, 30.379492, 13.521076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482790, 30.333256, 13.509353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027613, -0.016246, 0.999487,
		-0.116009, -0.993164, -0.012938,
		0.992864, -0.115592, -0.029309,
		30.780649, 30.298578, 13.500560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212746, 29.924791, 14.031084>,  <30.085644, 30.379492, 13.521076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212746, 29.924791, 14.031084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.581852, 30.070810, 13.981702>,  <30.803316, 30.158422, 13.952073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.581852, 30.070810, 13.981702>,  <30.212746, 29.924791, 14.031084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581852, 30.070810, 13.981702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207188, -0.199857, 0.957669,
		0.324921, -0.909284, -0.260055,
		0.922767, 0.365047, -0.123455,
		30.858683, 30.180325, 13.944665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638102, 29.407343, 14.281009>,  <30.212746, 29.924791, 14.031084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638102, 29.407343, 14.281009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.857342, 29.741844, 14.274467>,  <30.988886, 29.942545, 14.270541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.857342, 29.741844, 14.274467>,  <30.638102, 29.407343, 14.281009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857342, 29.741844, 14.274467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280386, -0.165278, 0.945551,
		0.788015, -0.522844, -0.325063,
		0.548102, 0.836252, -0.016356,
		31.021772, 29.992720, 14.269560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288340, 29.227001, 14.471897>,  <30.638102, 29.407343, 14.281009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288340, 29.227001, 14.471897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240780, 29.614815, 14.557566>,  <31.212244, 29.847502, 14.608967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240780, 29.614815, 14.557566>,  <31.288340, 29.227001, 14.471897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240780, 29.614815, 14.557566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148825, -0.195863, 0.969272,
		0.981689, 0.147121, -0.121003,
		-0.118901, 0.969532, 0.214172,
		31.205111, 29.905674, 14.621818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747192, 29.389217, 15.038071>,  <31.288340, 29.227001, 14.471897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747192, 29.389217, 15.038071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.464535, 29.672005, 15.049710>,  <31.294939, 29.841677, 15.056694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.464535, 29.672005, 15.049710>,  <31.747192, 29.389217, 15.038071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464535, 29.672005, 15.049710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057291, 0.016177, 0.998227,
		0.705245, 0.707060, -0.051934,
		-0.706646, 0.706969, 0.029099,
		31.252541, 29.884096, 15.058440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984791, 29.774734, 15.470670>,  <31.747192, 29.389217, 15.038071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984791, 29.774734, 15.470670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602762, 29.893246, 15.467528>,  <31.373545, 29.964354, 15.465644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602762, 29.893246, 15.467528>,  <31.984791, 29.774734, 15.470670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602762, 29.893246, 15.467528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004916, 0.042331, 0.999092,
		0.296342, 0.954163, -0.041885,
		-0.955069, 0.296279, -0.007854,
		31.316242, 29.982130, 15.465172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966846, 30.137959, 16.048471>,  <31.984791, 29.774734, 15.470670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966846, 30.137959, 16.048471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568361, 30.144594, 16.014326>,  <31.329271, 30.148577, 15.993839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568361, 30.144594, 16.014326>,  <31.966846, 30.137959, 16.048471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568361, 30.144594, 16.014326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084150, 0.063581, 0.994422,
		0.021925, 0.997839, -0.061944,
		-0.996212, 0.016590, -0.085363,
		31.269497, 30.149570, 15.988717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785294, 30.734039, 16.240620>,  <31.966846, 30.137959, 16.048471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785294, 30.734039, 16.240620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482187, 30.486750, 16.324135>,  <31.300323, 30.338377, 16.374245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482187, 30.486750, 16.324135>,  <31.785294, 30.734039, 16.240620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482187, 30.486750, 16.324135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129466, 0.171167, 0.976699,
		-0.639555, 0.767139, -0.049666,
		-0.757765, -0.618223, 0.208789,
		31.254858, 30.301283, 16.386772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552187, 31.029856, 16.816206>,  <31.785294, 30.734039, 16.240620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552187, 31.029856, 16.816206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375376, 30.671919, 16.841085>,  <31.269289, 30.457157, 16.856012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375376, 30.671919, 16.841085>,  <31.552187, 31.029856, 16.816206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375376, 30.671919, 16.841085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220829, -0.041354, 0.974435,
		-0.869393, 0.444465, 0.215887,
		-0.442030, -0.894841, 0.062198,
		31.242767, 30.403467, 16.859745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054485, 31.105228, 17.290403>,  <31.552187, 31.029856, 16.816206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054485, 31.105228, 17.290403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.171194, 30.722719, 17.282267>,  <31.241220, 30.493214, 17.277384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.171194, 30.722719, 17.282267>,  <31.054485, 31.105228, 17.290403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171194, 30.722719, 17.282267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241666, 0.053124, 0.968904,
		-0.925454, -0.287617, 0.246598,
		0.291774, -0.956271, -0.020343,
		31.258726, 30.435839, 17.276163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945267, 30.889645, 17.955320>,  <31.054485, 31.105228, 17.290403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945267, 30.889645, 17.955320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.161829, 30.578897, 17.826725>,  <31.291767, 30.392448, 17.749567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.161829, 30.578897, 17.826725>,  <30.945267, 30.889645, 17.955320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161829, 30.578897, 17.826725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455165, -0.050668, 0.888964,
		-0.706898, -0.627620, 0.326172,
		0.541405, -0.776869, -0.321488,
		31.324251, 30.345837, 17.730278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849365, 30.337915, 18.344133>,  <30.945267, 30.889645, 17.955320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849365, 30.337915, 18.344133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.210892, 30.284538, 18.181503>,  <31.427809, 30.252512, 18.083925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.210892, 30.284538, 18.181503>,  <30.849365, 30.337915, 18.344133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210892, 30.284538, 18.181503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416921, 0.060614, 0.906919,
		-0.096381, -0.989201, 0.110421,
		0.903818, -0.133446, -0.406576,
		31.482037, 30.244505, 18.059530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160791, 29.820732, 18.784822>,  <30.849365, 30.337915, 18.344133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160791, 29.820732, 18.784822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.479250, 29.953718, 18.582588>,  <31.670326, 30.033510, 18.461248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.479250, 29.953718, 18.582588>,  <31.160791, 29.820732, 18.784822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479250, 29.953718, 18.582588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532689, 0.011263, 0.846236,
		0.287038, -0.943048, -0.168133,
		0.796148, 0.332465, -0.505584,
		31.718094, 30.053457, 18.430912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797930, 29.521446, 19.135138>,  <31.160791, 29.820732, 18.784822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797930, 29.521446, 19.135138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.930250, 29.818090, 18.901699>,  <32.009644, 29.996077, 18.761637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.930250, 29.818090, 18.901699>,  <31.797930, 29.521446, 19.135138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930250, 29.818090, 18.901699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696755, 0.225150, 0.681058,
		0.636477, -0.631918, -0.442241,
		0.330802, 0.741611, -0.583595,
		32.029491, 30.040573, 18.726620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512459, 29.405113, 18.984585>,  <31.797930, 29.521446, 19.135138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512459, 29.405113, 18.984585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.402504, 29.789392, 19.000050>,  <32.336533, 30.019960, 19.009329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.402504, 29.789392, 19.000050>,  <32.512459, 29.405113, 18.984585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402504, 29.789392, 19.000050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599411, 0.139793, 0.788140,
		0.751760, 0.239824, -0.614281,
		-0.274887, 0.960699, 0.038662,
		32.320038, 30.077602, 19.011648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024971, 29.729717, 19.298950>,  <32.512459, 29.405113, 18.984585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024971, 29.729717, 19.298950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767353, 30.035408, 19.312609>,  <32.612782, 30.218822, 19.320805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767353, 30.035408, 19.312609>,  <33.024971, 29.729717, 19.298950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767353, 30.035408, 19.312609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422189, 0.317865, 0.848951,
		0.637936, 0.561178, -0.527367,
		-0.644045, 0.764226, 0.034146,
		32.574139, 30.264675, 19.322853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382557, 30.314325, 19.728483>,  <33.024971, 29.729717, 19.298950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382557, 30.314325, 19.728483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988609, 30.383564, 19.732059>,  <32.752243, 30.425108, 19.734205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988609, 30.383564, 19.732059>,  <33.382557, 30.314325, 19.728483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988609, 30.383564, 19.732059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068933, 0.343830, 0.936498,
		0.159030, 0.922940, -0.350558,
		-0.984864, 0.173096, 0.008942,
		32.693150, 30.435493, 19.734741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289970, 31.016010, 19.970493>,  <33.382557, 30.314325, 19.728483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289970, 31.016010, 19.970493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928078, 30.847527, 19.995960>,  <32.710941, 30.746437, 20.011240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928078, 30.847527, 19.995960>,  <33.289970, 31.016010, 19.970493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928078, 30.847527, 19.995960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026274, 0.204344, 0.978547,
		-0.425181, 0.883645, -0.195942,
		-0.904727, -0.421207, 0.063667,
		32.656658, 30.721165, 20.015060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.874144, 35.765366, 22.020893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.839050, 35.416409, 22.213238>,  <30.817995, 35.207035, 22.328646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.839050, 35.416409, 22.213238>,  <30.874144, 35.765366, 22.020893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839050, 35.416409, 22.213238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262492, 0.485910, 0.833660,
		-0.960937, -0.053085, -0.271627,
		-0.087732, -0.872395, 0.480864,
		30.812731, 35.154690, 22.357496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315126, 35.737930, 22.531763>,  <30.874144, 35.765366, 22.020893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315126, 35.737930, 22.531763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.506971, 35.423920, 22.688585>,  <30.622078, 35.235512, 22.782679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.506971, 35.423920, 22.688585>,  <30.315126, 35.737930, 22.531763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506971, 35.423920, 22.688585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227245, 0.320434, 0.919610,
		-0.847544, -0.530149, -0.024709,
		0.479613, -0.785025, 0.392056,
		30.650856, 35.188412, 22.806202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837906, 35.484634, 23.022354>,  <30.315126, 35.737930, 22.531763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837906, 35.484634, 23.022354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.203196, 35.354290, 23.120197>,  <30.422369, 35.276085, 23.178904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.203196, 35.354290, 23.120197>,  <29.837906, 35.484634, 23.022354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203196, 35.354290, 23.120197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115848, 0.367901, 0.922620,
		-0.390637, -0.870898, 0.298226,
		0.913226, -0.325861, 0.244608,
		30.477163, 35.256531, 23.193579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779524, 35.201542, 23.708048>,  <29.837906, 35.484634, 23.022354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779524, 35.201542, 23.708048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.175701, 35.252800, 23.687658>,  <30.413408, 35.283554, 23.675425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.175701, 35.252800, 23.687658>,  <29.779524, 35.201542, 23.708048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175701, 35.252800, 23.687658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002021, 0.383057, 0.923723,
		0.137893, -0.914794, 0.379655,
		0.990445, 0.128142, -0.050972,
		30.472836, 35.291245, 23.672367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080864, 34.888649, 24.364338>,  <29.779524, 35.201542, 23.708048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080864, 34.888649, 24.364338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.338596, 35.153656, 24.211548>,  <30.493235, 35.312660, 24.119875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.338596, 35.153656, 24.211548>,  <30.080864, 34.888649, 24.364338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338596, 35.153656, 24.211548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090622, 0.429811, 0.898360,
		0.759360, -0.613455, 0.216901,
		0.644329, 0.662522, -0.381973,
		30.531895, 35.352413, 24.096956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678797, 34.924713, 24.851492>,  <30.080864, 34.888649, 24.364338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678797, 34.924713, 24.851492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.628853, 35.249367, 24.623226>,  <30.598886, 35.444160, 24.486267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.628853, 35.249367, 24.623226>,  <30.678797, 34.924713, 24.851492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628853, 35.249367, 24.623226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230444, 0.583159, 0.778987,
		0.965042, -0.034242, -0.259850,
		-0.124859, 0.811636, -0.570664,
		30.591394, 35.492859, 24.452026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224424, 35.233311, 25.126474>,  <30.678797, 34.924713, 24.851492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224424, 35.233311, 25.126474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.006500, 35.522533, 24.956591>,  <30.875746, 35.696068, 24.854660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.006500, 35.522533, 24.956591>,  <31.224424, 35.233311, 25.126474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006500, 35.522533, 24.956591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219178, 0.611653, 0.760159,
		0.809409, 0.321055, -0.491711,
		-0.544809, 0.723052, -0.424709,
		30.843058, 35.739449, 24.829178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416761, 35.721203, 25.513166>,  <31.224424, 35.233311, 25.126474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416761, 35.721203, 25.513166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.103704, 35.904381, 25.344522>,  <30.915871, 36.014290, 25.243336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.103704, 35.904381, 25.344522>,  <31.416761, 35.721203, 25.513166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103704, 35.904381, 25.344522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013755, 0.689872, 0.723800,
		0.622320, 0.560677, -0.546222,
		-0.782642, 0.457949, -0.421609,
		30.868912, 36.041767, 25.218040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593132, 36.442375, 25.394711>,  <31.416761, 35.721203, 25.513166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593132, 36.442375, 25.394711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.193523, 36.426003, 25.401430>,  <30.953758, 36.416180, 25.405462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.193523, 36.426003, 25.401430>,  <31.593132, 36.442375, 25.394711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193523, 36.426003, 25.401430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016545, 0.697667, 0.716231,
		-0.041038, 0.715252, -0.697661,
		-0.999021, -0.040935, 0.016797,
		30.893818, 36.413723, 25.406469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358162, 37.135990, 25.416618>,  <31.593132, 36.442375, 25.394711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358162, 37.135990, 25.416618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.048470, 36.931606, 25.566008>,  <30.862654, 36.808975, 25.655642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.048470, 36.931606, 25.566008>,  <31.358162, 37.135990, 25.416618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048470, 36.931606, 25.566008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161353, 0.729954, 0.664178,
		-0.611987, 0.453967, -0.647600,
		-0.774233, -0.510960, 0.373474,
		30.816200, 36.778316, 25.678049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831158, 37.605282, 25.575029>,  <31.358162, 37.135990, 25.416618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831158, 37.605282, 25.575029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.728775, 37.286900, 25.794460>,  <30.667345, 37.095871, 25.926119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.728775, 37.286900, 25.794460>,  <30.831158, 37.605282, 25.575029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728775, 37.286900, 25.794460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231390, 0.601428, 0.764685,
		-0.938587, 0.068791, -0.338117,
		-0.255956, -0.795960, 0.548575,
		30.651989, 37.048111, 25.959032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153351, 37.741081, 25.886314>,  <30.831158, 37.605282, 25.575029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153351, 37.741081, 25.886314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.325178, 37.470078, 26.125128>,  <30.428274, 37.307476, 26.268415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.325178, 37.470078, 26.125128>,  <30.153351, 37.741081, 25.886314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325178, 37.470078, 26.125128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186982, 0.580079, 0.792809,
		-0.883465, -0.452198, 0.122500,
		0.429566, -0.677513, 0.597033,
		30.454048, 37.266823, 26.304237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592815, 37.619125, 26.366047>,  <30.153351, 37.741081, 25.886314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592815, 37.619125, 26.366047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.957777, 37.605160, 26.529167>,  <30.176754, 37.596779, 26.627039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.957777, 37.605160, 26.529167>,  <29.592815, 37.619125, 26.366047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957777, 37.605160, 26.529167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251794, 0.737617, 0.626515,
		-0.322677, -0.674316, 0.664212,
		0.912403, -0.034918, 0.407801,
		30.231499, 37.594685, 26.651508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106709, 37.594913, 26.980658>,  <29.592815, 37.619125, 26.366047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106709, 37.594913, 26.980658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.473419, 37.720318, 26.881680>,  <29.693445, 37.795559, 26.822292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.473419, 37.720318, 26.881680>,  <29.106709, 37.594913, 26.980658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473419, 37.720318, 26.881680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231729, -0.087076, -0.968875,
		-0.325300, 0.945584, -0.007179,
		0.916778, 0.313511, -0.247445,
		29.748453, 37.814373, 26.807446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484100, 37.948933, 27.171827>,  <29.106709, 37.594913, 26.980658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484100, 37.948933, 27.171827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.099958, 38.052753, 27.131128>,  <27.869473, 38.115044, 27.106709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.099958, 38.052753, 27.131128>,  <28.484100, 37.948933, 27.171827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099958, 38.052753, 27.131128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009457, -0.334443, -0.942369,
		-0.278616, -0.905972, 0.318730,
		-0.960356, 0.259544, -0.101749,
		27.811852, 38.130619, 27.100603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105602, 37.337685, 27.057898>,  <28.484100, 37.948933, 27.171827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105602, 37.337685, 27.057898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.893902, 37.643635, 26.911007>,  <27.766882, 37.827206, 26.822872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.893902, 37.643635, 26.911007>,  <28.105602, 37.337685, 27.057898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893902, 37.643635, 26.911007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099542, -0.485797, -0.868385,
		-0.842606, -0.423039, 0.333246,
		-0.529251, 0.764878, -0.367226,
		27.735126, 37.873096, 26.800838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802452, 37.003357, 26.564453>,  <28.105602, 37.337685, 27.057898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802452, 37.003357, 26.564453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.719246, 37.384190, 26.474764>,  <27.669323, 37.612690, 26.420950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.719246, 37.384190, 26.474764>,  <27.802452, 37.003357, 26.564453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719246, 37.384190, 26.474764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255926, -0.274231, -0.926984,
		-0.944050, -0.135442, 0.300706,
		-0.208016, 0.952078, -0.224225,
		27.656841, 37.669811, 26.407497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108418, 37.074703, 26.442196>,  <27.802452, 37.003357, 26.564453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108418, 37.074703, 26.442196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.291492, 37.362347, 26.233044>,  <27.401337, 37.534931, 26.107552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.291492, 37.362347, 26.233044>,  <27.108418, 37.074703, 26.442196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291492, 37.362347, 26.233044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346065, -0.397638, -0.849778,
		-0.819000, 0.569884, 0.066864,
		0.457687, 0.719108, -0.522883,
		27.428799, 37.578079, 26.076180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696703, 37.186211, 25.898691>,  <27.108418, 37.074703, 26.442196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696703, 37.186211, 25.898691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.044718, 37.346165, 25.783361>,  <27.253527, 37.442139, 25.714163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.044718, 37.346165, 25.783361>,  <26.696703, 37.186211, 25.898691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044718, 37.346165, 25.783361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139660, -0.360962, -0.922064,
		-0.472794, 0.842495, -0.258202,
		0.870035, 0.399885, -0.288324,
		27.305729, 37.466129, 25.696865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587214, 37.463013, 25.225895>,  <26.696703, 37.186211, 25.898691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587214, 37.463013, 25.225895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.985729, 37.454872, 25.259346>,  <27.224838, 37.449986, 25.279417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.985729, 37.454872, 25.259346>,  <26.587214, 37.463013, 25.225895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985729, 37.454872, 25.259346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070825, -0.358216, -0.930949,
		0.048907, 0.933417, -0.355445,
		0.996289, -0.020356, 0.083629,
		27.284616, 37.448765, 25.284435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841175, 37.733791, 24.586624>,  <26.587214, 37.463013, 25.225895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841175, 37.733791, 24.586624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.148766, 37.530704, 24.742008>,  <27.333319, 37.408852, 24.835239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.148766, 37.530704, 24.742008>,  <26.841175, 37.733791, 24.586624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148766, 37.530704, 24.742008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238914, -0.335383, -0.911284,
		0.592957, 0.793563, -0.136600,
		0.768974, -0.507717, 0.388461,
		27.379457, 37.378391, 24.858547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264477, 37.744396, 23.992758>,  <26.841175, 37.733791, 24.586624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264477, 37.744396, 23.992758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.367138, 37.450447, 24.243862>,  <27.428736, 37.274078, 24.394526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.367138, 37.450447, 24.243862>,  <27.264477, 37.744396, 23.992758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367138, 37.450447, 24.243862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151743, -0.610826, -0.777088,
		0.954517, 0.294702, -0.045259,
		0.256655, -0.734875, 0.627763,
		27.444134, 37.229984, 24.432192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908216, 37.569489, 23.868706>,  <27.264477, 37.744396, 23.992758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908216, 37.569489, 23.868706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.711382, 37.253689, 24.015427>,  <27.593281, 37.064209, 24.103458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.711382, 37.253689, 24.015427>,  <27.908216, 37.569489, 23.868706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711382, 37.253689, 24.015427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191833, -0.509330, -0.838918,
		0.849148, -0.342454, 0.402086,
		-0.492085, -0.789499, 0.366803,
		27.563757, 37.016838, 24.125467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423254, 36.992588, 23.631325>,  <27.908216, 37.569489, 23.868706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423254, 36.992588, 23.631325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.080612, 36.849751, 23.780304>,  <27.875027, 36.764050, 23.869692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.080612, 36.849751, 23.780304>,  <28.423254, 36.992588, 23.631325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080612, 36.849751, 23.780304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048970, -0.662309, -0.747629,
		0.513648, -0.658660, 0.549848,
		-0.856602, -0.357092, 0.372448,
		27.823631, 36.742622, 23.892038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610428, 36.300262, 23.831554>,  <28.423254, 36.992588, 23.631325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610428, 36.300262, 23.831554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.217680, 36.310635, 23.756443>,  <27.982031, 36.316856, 23.711376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.217680, 36.310635, 23.756443>,  <28.610428, 36.300262, 23.831554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217680, 36.310635, 23.756443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042987, -0.934336, -0.353792,
		-0.184624, -0.355449, 0.916281,
		-0.981869, 0.025930, -0.187780,
		27.923119, 36.318413, 23.700109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434744, 35.645061, 23.918901>,  <28.610428, 36.300262, 23.831554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434744, 35.645061, 23.918901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.112808, 35.795849, 23.735542>,  <27.919647, 35.886322, 23.625526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.112808, 35.795849, 23.735542>,  <28.434744, 35.645061, 23.918901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112808, 35.795849, 23.735542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024969, -0.793198, -0.608452,
		-0.592964, -0.478262, 0.647811,
		-0.804842, 0.376965, -0.458396,
		27.871355, 35.908939, 23.598022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069218, 35.066700, 23.694221>,  <28.434744, 35.645061, 23.918901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069218, 35.066700, 23.694221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.888313, 35.343716, 23.469419>,  <27.779772, 35.509926, 23.334539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.888313, 35.343716, 23.469419>,  <28.069218, 35.066700, 23.694221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888313, 35.343716, 23.469419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020624, -0.621840, -0.782872,
		-0.891648, -0.365652, 0.266951,
		-0.452260, 0.692541, -0.562004,
		27.752636, 35.551479, 23.300817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402910, 34.836185, 23.465807>,  <28.069218, 35.066700, 23.694221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402910, 34.836185, 23.465807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.565317, 35.103252, 23.216211>,  <27.662762, 35.263493, 23.066454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.565317, 35.103252, 23.216211>,  <27.402910, 34.836185, 23.465807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565317, 35.103252, 23.216211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259523, -0.738932, -0.621793,
		-0.876240, 0.090519, -0.473296,
		0.406018, 0.667672, -0.623990,
		27.687122, 35.303555, 23.029015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959858, 34.453773, 23.847124>,  <27.402910, 34.836185, 23.465807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959858, 34.453773, 23.847124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.928238, 34.073757, 23.967903>,  <26.909266, 33.845749, 24.040371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.928238, 34.073757, 23.967903>,  <26.959858, 34.453773, 23.847124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928238, 34.073757, 23.967903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023054, 0.301073, 0.953322,
		-0.996604, 0.082320, -0.001897,
		-0.079049, -0.950041, 0.301948,
		26.904524, 33.788746, 24.058487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483765, 34.446381, 24.465076>,  <26.959858, 34.453773, 23.847124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483765, 34.446381, 24.465076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.682873, 34.100044, 24.485262>,  <26.802338, 33.892242, 24.497374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.682873, 34.100044, 24.485262>,  <26.483765, 34.446381, 24.465076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682873, 34.100044, 24.485262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058987, 0.091846, 0.994025,
		-0.865301, -0.491819, 0.096792,
		0.497770, -0.865840, 0.050464,
		26.832203, 33.840294, 24.500401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151716, 34.043972, 24.922195>,  <26.483765, 34.446381, 24.465076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151716, 34.043972, 24.922195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.502686, 33.852283, 24.913458>,  <26.713268, 33.737270, 24.908215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.502686, 33.852283, 24.913458>,  <26.151716, 34.043972, 24.922195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502686, 33.852283, 24.913458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008432, -0.060937, 0.998106,
		-0.479641, -0.875578, -0.057508,
		0.877424, -0.479218, -0.021845,
		26.765913, 33.708519, 24.906904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060555, 33.368820, 25.351822>,  <26.151716, 34.043972, 24.922195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060555, 33.368820, 25.351822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.448782, 33.461723, 25.326347>,  <26.681719, 33.517464, 25.311062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.448782, 33.461723, 25.326347>,  <26.060555, 33.368820, 25.351822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448782, 33.461723, 25.326347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100300, -0.149403, 0.983676,
		0.218953, -0.961111, -0.168302,
		0.970567, 0.232260, -0.063687,
		26.739952, 33.531403, 25.307241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613295, 32.761494, 25.696844>,  <26.060555, 33.368820, 25.351822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613295, 32.761494, 25.696844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.793261, 33.117279, 25.664766>,  <26.901241, 33.330750, 25.645519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.793261, 33.117279, 25.664766>,  <26.613295, 32.761494, 25.696844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793261, 33.117279, 25.664766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452574, -0.149668, 0.879077,
		0.769904, -0.431806, -0.469886,
		0.449917, 0.889463, -0.080194,
		26.928236, 33.384117, 25.640709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186087, 32.563366, 25.889311>,  <26.613295, 32.761494, 25.696844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186087, 32.563366, 25.889311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.190855, 32.959347, 25.945681>,  <27.193716, 33.196934, 25.979502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.190855, 32.959347, 25.945681>,  <27.186087, 32.563366, 25.889311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190855, 32.959347, 25.945681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411444, -0.133306, 0.901634,
		0.911357, 0.047236, -0.408897,
		0.011919, 0.989948, 0.140925,
		27.194431, 33.256332, 25.987959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837133, 32.800922, 26.027876>,  <27.186087, 32.563366, 25.889311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837133, 32.800922, 26.027876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.624210, 33.103001, 26.180885>,  <27.496456, 33.284248, 26.272692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.624210, 33.103001, 26.180885>,  <27.837133, 32.800922, 26.027876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624210, 33.103001, 26.180885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530264, -0.054787, 0.846060,
		0.659901, 0.653202, -0.371292,
		-0.532306, 0.755199, 0.382523,
		27.464518, 33.329559, 26.295643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311453, 33.335236, 26.214540>,  <27.837133, 32.800922, 26.027876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311453, 33.335236, 26.214540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.981247, 33.358158, 26.439127>,  <27.783123, 33.371910, 26.573879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.981247, 33.358158, 26.439127>,  <28.311453, 33.335236, 26.214540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981247, 33.358158, 26.439127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561023, -0.025045, 0.827421,
		0.061478, 0.998043, -0.011475,
		-0.825514, 0.057306, 0.561465,
		27.733593, 33.375351, 26.607567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570452, 33.616402, 26.794769>,  <28.311453, 33.335236, 26.214540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570452, 33.616402, 26.794769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.194643, 33.520309, 26.892414>,  <27.969158, 33.462654, 26.951000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.194643, 33.520309, 26.892414>,  <28.570452, 33.616402, 26.794769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194643, 33.520309, 26.892414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276898, -0.113314, 0.954195,
		-0.201562, 0.964080, 0.172979,
		-0.939521, -0.240227, 0.244112,
		27.912786, 33.448242, 26.965649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389141, 34.073093, 27.348492>,  <28.570452, 33.616402, 26.794769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389141, 34.073093, 27.348492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.134470, 33.764694, 27.354168>,  <27.981667, 33.579655, 27.357574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.134470, 33.764694, 27.354168>,  <28.389141, 34.073093, 27.348492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134470, 33.764694, 27.354168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076490, -0.044829, 0.996062,
		-0.767327, 0.635256, 0.087515,
		-0.636678, -0.770999, 0.014192,
		27.943466, 33.533394, 27.358425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014893, 34.220345, 27.857618>,  <28.389141, 34.073093, 27.348492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014893, 34.220345, 27.857618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.994974, 33.824894, 27.800854>,  <27.983023, 33.587624, 27.766794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.994974, 33.824894, 27.800854>,  <28.014893, 34.220345, 27.857618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994974, 33.824894, 27.800854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312484, -0.150377, 0.937945,
		-0.948617, 0.002363, 0.316418,
		-0.049798, -0.988626, -0.141912,
		27.980034, 33.528305, 27.758280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713394, 34.014271, 28.365517>,  <28.014893, 34.220345, 27.857618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713394, 34.014271, 28.365517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.895216, 33.685249, 28.228825>,  <28.004309, 33.487835, 28.146809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.895216, 33.685249, 28.228825>,  <27.713394, 34.014271, 28.365517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895216, 33.685249, 28.228825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377349, -0.169693, 0.910391,
		-0.806839, -0.542773, 0.233257,
		0.454554, -0.822558, -0.341730,
		28.031582, 33.438480, 28.126307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.645527, 33.364960, 20.673653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872419, 33.035698, 20.663363>,  <26.008554, 32.838139, 20.657188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872419, 33.035698, 20.663363>,  <25.645527, 33.364960, 20.673653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872419, 33.035698, 20.663363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014462, -0.021277, 0.999669,
		-0.823432, -0.567414, -0.000164,
		0.567230, -0.823157, -0.025726,
		26.042589, 32.788750, 20.655645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413025, 32.938492, 21.198788>,  <25.645527, 33.364960, 20.673653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413025, 32.938492, 21.198788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780685, 32.789639, 21.147135>,  <26.001282, 32.700325, 21.116142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780685, 32.789639, 21.147135>,  <25.413025, 32.938492, 21.198788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780685, 32.789639, 21.147135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075234, -0.155942, 0.984897,
		-0.386655, -0.914984, -0.115337,
		0.919151, -0.372138, -0.129133,
		26.056431, 32.677998, 21.108395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510546, 32.317860, 21.670420>,  <25.413025, 32.938492, 21.198788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510546, 32.317860, 21.670420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884226, 32.423069, 21.574011>,  <26.108433, 32.486195, 21.516165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884226, 32.423069, 21.574011>,  <25.510546, 32.317860, 21.670420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884226, 32.423069, 21.574011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246548, 0.012318, 0.969052,
		0.257851, -0.964711, -0.053340,
		0.934198, 0.263022, -0.241023,
		26.164486, 32.501976, 21.501703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990936, 31.831099, 21.988159>,  <25.510546, 32.317860, 21.670420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990936, 31.831099, 21.988159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200478, 32.167080, 21.931517>,  <26.326202, 32.368668, 21.897532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200478, 32.167080, 21.931517>,  <25.990936, 31.831099, 21.988159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200478, 32.167080, 21.931517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250119, 0.007235, 0.968188,
		0.814258, -0.542609, -0.206299,
		0.523855, 0.839954, -0.141608,
		26.357634, 32.419067, 21.889034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655149, 31.807152, 22.353830>,  <25.990936, 31.831099, 21.988159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655149, 31.807152, 22.353830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549215, 32.190357, 22.309881>,  <26.485655, 32.420280, 22.283512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549215, 32.190357, 22.309881>,  <26.655149, 31.807152, 22.353830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549215, 32.190357, 22.309881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359865, 0.203899, 0.910452,
		0.894628, 0.201581, -0.398755,
		-0.264835, 0.958014, -0.109872,
		26.469765, 32.477760, 22.276920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198576, 32.130493, 22.796143>,  <26.655149, 31.807152, 22.353830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198576, 32.130493, 22.796143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950155, 32.438759, 22.739056>,  <26.801104, 32.623718, 22.704803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950155, 32.438759, 22.739056>,  <27.198576, 32.130493, 22.796143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950155, 32.438759, 22.739056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295005, 0.398549, 0.868407,
		0.726132, 0.497223, -0.474870,
		-0.621051, 0.770667, -0.142716,
		26.763840, 32.669960, 22.696241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549730, 32.643250, 23.109903>,  <27.198576, 32.130493, 22.796143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549730, 32.643250, 23.109903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193213, 32.820152, 23.069899>,  <26.979301, 32.926292, 23.045897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193213, 32.820152, 23.069899>,  <27.549730, 32.643250, 23.109903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193213, 32.820152, 23.069899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150292, 0.496254, 0.855070,
		0.427790, 0.747089, -0.508776,
		-0.891295, 0.442256, -0.100011,
		26.925823, 32.952827, 23.039896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702330, 33.384468, 23.143074>,  <27.549730, 32.643250, 23.109903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702330, 33.384468, 23.143074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315521, 33.350098, 23.238983>,  <27.083437, 33.329475, 23.296528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315521, 33.350098, 23.238983>,  <27.702330, 33.384468, 23.143074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315521, 33.350098, 23.238983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162711, 0.515855, 0.841082,
		-0.195956, 0.852356, -0.484861,
		-0.967019, -0.085923, 0.239772,
		27.025415, 33.324322, 23.310915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429739, 34.064617, 23.348341>,  <27.702330, 33.384468, 23.143074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429739, 34.064617, 23.348341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176638, 33.797764, 23.505594>,  <27.024776, 33.637650, 23.599947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176638, 33.797764, 23.505594>,  <27.429739, 34.064617, 23.348341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176638, 33.797764, 23.505594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030106, 0.486115, 0.873376,
		-0.773768, 0.564467, -0.287506,
		-0.632753, -0.667135, 0.393134,
		26.986813, 33.597622, 23.623535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260326, 34.556629, 22.752428>,  <27.429739, 34.064617, 23.348341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260326, 34.556629, 22.752428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504259, 34.858601, 22.655935>,  <27.650620, 35.039783, 22.598040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504259, 34.858601, 22.655935>,  <27.260326, 34.556629, 22.752428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504259, 34.858601, 22.655935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309716, -0.507189, -0.804261,
		-0.729507, 0.415751, -0.543113,
		0.609833, 0.754924, -0.241233,
		27.687208, 35.085079, 22.583565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020172, 34.794979, 21.994118>,  <27.260326, 34.556629, 22.752428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020172, 34.794979, 21.994118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390471, 34.929581, 22.063120>,  <27.612650, 35.010342, 22.104521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390471, 34.929581, 22.063120>,  <27.020172, 34.794979, 21.994118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390471, 34.929581, 22.063120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274333, -0.283672, -0.918843,
		-0.260259, 0.897940, -0.354922,
		0.925746, 0.336504, 0.172507,
		27.668194, 35.030533, 22.114872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350098, 35.271206, 21.394855>,  <27.020172, 34.794979, 21.994118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350098, 35.271206, 21.394855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664431, 35.127945, 21.596525>,  <27.853031, 35.041988, 21.717527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664431, 35.127945, 21.596525>,  <27.350098, 35.271206, 21.394855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664431, 35.127945, 21.596525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450216, -0.227617, -0.863421,
		0.423996, 0.905492, -0.017622,
		0.785832, -0.358154, 0.504176,
		27.900181, 35.020500, 21.747778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921745, 35.567543, 21.099422>,  <27.350098, 35.271206, 21.394855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921745, 35.567543, 21.099422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102526, 35.260723, 21.281578>,  <28.210993, 35.076633, 21.390871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102526, 35.260723, 21.281578>,  <27.921745, 35.567543, 21.099422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102526, 35.260723, 21.281578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442825, -0.250241, -0.860979,
		0.774369, 0.590777, 0.226572,
		0.451949, -0.767047, 0.455390,
		28.238110, 35.030609, 21.418196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624578, 35.582760, 20.900755>,  <27.921745, 35.567543, 21.099422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624578, 35.582760, 20.900755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565353, 35.205673, 21.020325>,  <28.529819, 34.979420, 21.092066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565353, 35.205673, 21.020325>,  <28.624578, 35.582760, 20.900755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565353, 35.205673, 21.020325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491667, -0.332422, -0.804834,
		0.858103, 0.027806, 0.512724,
		-0.148062, -0.942721, 0.298924,
		28.520935, 34.922855, 21.110003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290722, 35.172535, 20.851198>,  <28.624578, 35.582760, 20.900755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290722, 35.172535, 20.851198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010044, 34.887825, 20.863832>,  <28.841639, 34.716999, 20.871412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010044, 34.887825, 20.863832>,  <29.290722, 35.172535, 20.851198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010044, 34.887825, 20.863832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412656, -0.442149, -0.796379,
		0.580811, -0.545780, 0.603973,
		-0.701693, -0.711779, 0.031586,
		28.799536, 34.674290, 20.873308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647482, 34.556065, 20.667294>,  <29.290722, 35.172535, 20.851198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647482, 34.556065, 20.667294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262743, 34.492950, 20.577890>,  <29.031900, 34.455082, 20.524248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262743, 34.492950, 20.577890>,  <29.647482, 34.556065, 20.667294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262743, 34.492950, 20.577890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256381, -0.234673, -0.937655,
		0.095494, -0.959184, 0.266172,
		-0.961847, -0.157782, -0.223506,
		28.974190, 34.445618, 20.510838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537365, 33.859119, 20.326237>,  <29.647482, 34.556065, 20.667294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537365, 33.859119, 20.326237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212391, 34.063595, 20.214071>,  <29.017406, 34.186279, 20.146772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212391, 34.063595, 20.214071>,  <29.537365, 33.859119, 20.326237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212391, 34.063595, 20.214071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182660, -0.233580, -0.955027,
		-0.553702, -0.827117, 0.096395,
		-0.812435, 0.511192, -0.280415,
		28.968660, 34.216953, 20.129948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084932, 33.403778, 19.951422>,  <29.537365, 33.859119, 20.326237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084932, 33.403778, 19.951422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986366, 33.767494, 19.817270>,  <28.927227, 33.985722, 19.736780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986366, 33.767494, 19.817270>,  <29.084932, 33.403778, 19.951422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986366, 33.767494, 19.817270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025092, -0.339948, -0.940110,
		-0.968840, -0.240073, 0.060953,
		-0.246415, 0.909286, -0.335379,
		28.912441, 34.040279, 19.716656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726162, 33.293236, 19.336832>,  <29.084932, 33.403778, 19.951422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726162, 33.293236, 19.336832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835875, 33.676678, 19.306236>,  <28.901703, 33.906742, 19.287878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835875, 33.676678, 19.306236>,  <28.726162, 33.293236, 19.336832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835875, 33.676678, 19.306236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037921, -0.090259, -0.995196,
		-0.960902, 0.270063, -0.061108,
		0.274281, 0.958603, -0.076489,
		28.918159, 33.964260, 19.283289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221144, 33.664162, 18.891802>,  <28.726162, 33.293236, 19.336832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221144, 33.664162, 18.891802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548096, 33.893440, 18.868698>,  <28.744267, 34.031006, 18.854836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548096, 33.893440, 18.868698>,  <28.221144, 33.664162, 18.891802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548096, 33.893440, 18.868698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085702, 0.021843, -0.996081,
		-0.569688, 0.819127, 0.066979,
		0.817380, 0.573196, -0.057757,
		28.793310, 34.065399, 18.851372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021717, 34.066856, 18.397411>,  <28.221144, 33.664162, 18.891802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021717, 34.066856, 18.397411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418520, 34.116314, 18.407450>,  <28.656603, 34.145988, 18.413473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418520, 34.116314, 18.407450>,  <28.021717, 34.066856, 18.397411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418520, 34.116314, 18.407450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002342, 0.180836, -0.983510,
		-0.126147, 0.975710, 0.179102,
		0.992009, 0.123647, 0.025097,
		28.716122, 34.153408, 18.414978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131380, 34.545258, 17.904291>,  <28.021717, 34.066856, 18.397411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131380, 34.545258, 17.904291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507193, 34.415226, 17.947380>,  <28.732679, 34.337208, 17.973234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507193, 34.415226, 17.947380>,  <28.131380, 34.545258, 17.904291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507193, 34.415226, 17.947380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167321, 0.161280, -0.972621,
		0.298809, 0.931832, 0.205921,
		0.939530, -0.325083, 0.107723,
		28.789051, 34.317699, 17.979696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509598, 34.971985, 17.486776>,  <28.131380, 34.545258, 17.904291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509598, 34.971985, 17.486776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708395, 34.628437, 17.536312>,  <28.827673, 34.422306, 17.566034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708395, 34.628437, 17.536312>,  <28.509598, 34.971985, 17.486776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708395, 34.628437, 17.536312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101950, -0.199516, -0.974577,
		0.861746, 0.471731, -0.186719,
		0.496991, -0.858873, 0.123839,
		28.857492, 34.370773, 17.573463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.330383, 27.884865, 19.636091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.998758, 28.095928, 19.562088>,  <29.799782, 28.222567, 19.517685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.998758, 28.095928, 19.562088>,  <30.330383, 27.884865, 19.636091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998758, 28.095928, 19.562088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038683, 0.384209, 0.922435,
		0.557813, 0.757602, -0.338946,
		-0.829065, 0.527658, -0.185010,
		29.750038, 28.254225, 19.506584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463598, 28.513460, 19.930058>,  <30.330383, 27.884865, 19.636091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463598, 28.513460, 19.930058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.064606, 28.506704, 19.902494>,  <29.825211, 28.502651, 19.885956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.064606, 28.506704, 19.902494>,  <30.463598, 28.513460, 19.930058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064606, 28.506704, 19.902494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069070, 0.453263, 0.888697,
		0.016224, 0.891217, -0.453287,
		-0.997480, -0.016890, -0.068910,
		29.765362, 28.501637, 19.881821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288137, 29.132587, 20.121933>,  <30.463598, 28.513460, 19.930058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288137, 29.132587, 20.121933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.948721, 28.925924, 20.167622>,  <29.745071, 28.801926, 20.195034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.948721, 28.925924, 20.167622>,  <30.288137, 29.132587, 20.121933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948721, 28.925924, 20.167622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114149, 0.389518, 0.913918,
		-0.516673, 0.762457, -0.389497,
		-0.848539, -0.516657, 0.114219,
		29.694159, 28.770927, 20.201887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695219, 29.594027, 20.427500>,  <30.288137, 29.132587, 20.121933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695219, 29.594027, 20.427500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.592819, 29.216814, 20.512503>,  <29.531380, 28.990486, 20.563505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.592819, 29.216814, 20.512503>,  <29.695219, 29.594027, 20.427500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592819, 29.216814, 20.512503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136911, 0.252989, 0.957733,
		-0.956932, 0.216084, -0.193877,
		-0.256000, -0.943029, 0.212509,
		29.516020, 28.933905, 20.576256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115963, 29.630461, 20.814962>,  <29.695219, 29.594027, 20.427500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115963, 29.630461, 20.814962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.285091, 29.278481, 20.901596>,  <29.386568, 29.067293, 20.953577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.285091, 29.278481, 20.901596>,  <29.115963, 29.630461, 20.814962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285091, 29.278481, 20.901596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091445, 0.196350, 0.976261,
		-0.901588, -0.432589, 0.002554,
		0.422821, -0.879951, 0.216585,
		29.411938, 29.014496, 20.966572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638021, 29.292416, 21.367987>,  <29.115963, 29.630461, 20.814962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638021, 29.292416, 21.367987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.990139, 29.107546, 21.410837>,  <29.201410, 28.996624, 21.436546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.990139, 29.107546, 21.410837>,  <28.638021, 29.292416, 21.367987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990139, 29.107546, 21.410837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007220, 0.212722, 0.977086,
		-0.474375, -0.860896, 0.183921,
		0.880294, -0.462177, 0.107125,
		29.254227, 28.968893, 21.442974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608740, 29.024353, 22.096087>,  <28.638021, 29.292416, 21.367987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608740, 29.024353, 22.096087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.995056, 28.993900, 21.996927>,  <29.226847, 28.975628, 21.937431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.995056, 28.993900, 21.996927>,  <28.608740, 29.024353, 22.096087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995056, 28.993900, 21.996927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259310, 0.293753, 0.920037,
		0.002776, -0.952845, 0.303446,
		0.965790, -0.076132, -0.247897,
		29.284794, 28.971062, 21.922558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973612, 28.569574, 22.525696>,  <28.608740, 29.024353, 22.096087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973612, 28.569574, 22.525696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.252474, 28.815559, 22.378292>,  <29.419790, 28.963150, 22.289850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.252474, 28.815559, 22.378292>,  <28.973612, 28.569574, 22.525696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252474, 28.815559, 22.378292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322035, 0.190618, 0.927339,
		0.640523, -0.765170, -0.065149,
		0.697154, 0.614963, -0.368507,
		29.461620, 29.000048, 22.267740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544117, 28.437134, 22.969009>,  <28.973612, 28.569574, 22.525696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544117, 28.437134, 22.969009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.589518, 28.789734, 22.785673>,  <29.616758, 29.001293, 22.675671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.589518, 28.789734, 22.785673>,  <29.544117, 28.437134, 22.969009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589518, 28.789734, 22.785673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309771, 0.406928, 0.859332,
		0.944012, -0.239517, -0.226875,
		0.113502, 0.881499, -0.458340,
		29.623568, 29.054184, 22.648170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116539, 28.621984, 23.202223>,  <29.544117, 28.437134, 22.969009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116539, 28.621984, 23.202223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.977551, 28.969788, 23.061813>,  <29.894157, 29.178471, 22.977568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.977551, 28.969788, 23.061813>,  <30.116539, 28.621984, 23.202223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977551, 28.969788, 23.061813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361786, 0.469679, 0.805303,
		0.865086, 0.152827, -0.477777,
		-0.347474, 0.869509, -0.351022,
		29.873308, 29.230640, 22.956507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656446, 29.089743, 23.311144>,  <30.116539, 28.621984, 23.202223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656446, 29.089743, 23.311144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.312769, 29.293280, 23.289715>,  <30.106564, 29.415401, 23.276857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.312769, 29.293280, 23.289715>,  <30.656446, 29.089743, 23.311144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312769, 29.293280, 23.289715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250369, 0.509430, 0.823284,
		0.446212, 0.693946, -0.565096,
		-0.859192, 0.508841, -0.053571,
		30.055012, 29.445932, 23.273643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850109, 29.708263, 23.197783>,  <30.656446, 29.089743, 23.311144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850109, 29.708263, 23.197783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.488533, 29.739412, 23.365988>,  <30.271587, 29.758102, 23.466911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.488533, 29.739412, 23.365988>,  <30.850109, 29.708263, 23.197783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488533, 29.739412, 23.365988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359492, 0.670968, 0.648511,
		-0.231648, 0.737385, -0.634509,
		-0.903938, 0.077874, 0.420513,
		30.217352, 29.762775, 23.492142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825788, 30.416752, 23.404539>,  <30.850109, 29.708263, 23.197783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825788, 30.416752, 23.404539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.499731, 30.287323, 23.596724>,  <30.304096, 30.209665, 23.712034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.499731, 30.287323, 23.596724>,  <30.825788, 30.416752, 23.404539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499731, 30.287323, 23.596724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308135, 0.460136, 0.832663,
		-0.490503, 0.826787, -0.275374,
		-0.815144, -0.323571, 0.480460,
		30.255188, 30.190252, 23.740862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472237, 31.002884, 23.656403>,  <30.825788, 30.416752, 23.404539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472237, 31.002884, 23.656403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.371428, 30.683863, 23.875635>,  <30.310942, 30.492451, 24.007175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.371428, 30.683863, 23.875635>,  <30.472237, 31.002884, 23.656403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371428, 30.683863, 23.875635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234732, 0.499070, 0.834164,
		-0.938821, 0.338883, 0.061433,
		-0.252025, -0.797551, 0.548084,
		30.295820, 30.444597, 24.040060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455843, 31.653002, 23.257147>,  <30.472237, 31.002884, 23.656403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455843, 31.653002, 23.257147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.808937, 31.831453, 23.316133>,  <31.020794, 31.938524, 23.351524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.808937, 31.831453, 23.316133>,  <30.455843, 31.653002, 23.257147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808937, 31.831453, 23.316133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399720, -0.548039, -0.734764,
		-0.246982, 0.707548, -0.662100,
		0.882737, 0.446128, 0.147466,
		31.073757, 31.965292, 23.360373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655979, 31.986183, 22.539900>,  <30.455843, 31.653002, 23.257147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655979, 31.986183, 22.539900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.001766, 31.951937, 22.738039>,  <31.209238, 31.931389, 22.856922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.001766, 31.951937, 22.738039>,  <30.655979, 31.986183, 22.539900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001766, 31.951937, 22.738039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459914, -0.263073, -0.848099,
		0.202925, 0.960970, -0.188040,
		0.864465, -0.085618, 0.495348,
		31.261106, 31.926250, 22.886642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158873, 32.066933, 22.005541>,  <30.655979, 31.986183, 22.539900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158873, 32.066933, 22.005541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.372543, 31.930809, 22.315081>,  <31.500746, 31.849134, 22.500805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.372543, 31.930809, 22.315081>,  <31.158873, 32.066933, 22.005541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372543, 31.930809, 22.315081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651661, -0.417355, -0.633366,
		0.538511, 0.842617, -0.001175,
		0.534175, -0.340309, 0.773852,
		31.532797, 31.828716, 22.547235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847128, 32.315449, 21.926329>,  <31.158873, 32.066933, 22.005541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847128, 32.315449, 21.926329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.837877, 31.983477, 22.149284>,  <31.832327, 31.784294, 22.283058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.837877, 31.983477, 22.149284>,  <31.847128, 32.315449, 21.926329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837877, 31.983477, 22.149284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615741, -0.451064, -0.646068,
		0.787609, 0.328268, 0.521452,
		-0.023125, -0.829928, 0.557390,
		31.830940, 31.734499, 22.316502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484333, 32.015472, 21.784632>,  <31.847128, 32.315449, 21.926329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484333, 32.015472, 21.784632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.291325, 31.703793, 21.944645>,  <32.175518, 31.516785, 22.040653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.291325, 31.703793, 21.944645>,  <32.484333, 32.015472, 21.784632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291325, 31.703793, 21.944645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505483, -0.620715, -0.599333,
		0.715305, -0.086980, 0.693378,
		-0.482520, -0.779197, 0.400034,
		32.146568, 31.470034, 22.064655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050446, 31.459057, 21.927197>,  <32.484333, 32.015472, 21.784632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050446, 31.459057, 21.927197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.690731, 31.284536, 21.915043>,  <32.474903, 31.179825, 21.907751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.690731, 31.284536, 21.915043>,  <33.050446, 31.459057, 21.927197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690731, 31.284536, 21.915043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308408, -0.583356, -0.751386,
		0.310105, -0.685083, 0.659164,
		-0.899288, -0.436300, -0.030383,
		32.420944, 31.153646, 21.905928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205452, 30.826536, 21.777546>,  <33.050446, 31.459057, 21.927197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205452, 30.826536, 21.777546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.816586, 30.847897, 21.686302>,  <32.583263, 30.860714, 21.631556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.816586, 30.847897, 21.686302>,  <33.205452, 30.826536, 21.777546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816586, 30.847897, 21.686302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180535, -0.449768, -0.874709,
		-0.149307, -0.891548, 0.427610,
		-0.972170, 0.053402, -0.228110,
		32.524933, 30.863916, 21.617868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151711, 30.225832, 21.358242>,  <33.205452, 30.826536, 21.777546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151711, 30.225832, 21.358242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.823551, 30.450033, 21.313005>,  <32.626656, 30.584555, 21.285864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.823551, 30.450033, 21.313005>,  <33.151711, 30.225832, 21.358242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823551, 30.450033, 21.313005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171266, -0.429576, -0.886641,
		-0.545548, -0.708026, 0.448416,
		-0.820393, 0.560504, -0.113093,
		32.577435, 30.618183, 21.279078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507702, 29.801285, 21.086494>,  <33.151711, 30.225832, 21.358242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507702, 29.801285, 21.086494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.469231, 30.185619, 20.982538>,  <32.446148, 30.416220, 20.920164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.469231, 30.185619, 20.982538>,  <32.507702, 29.801285, 21.086494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469231, 30.185619, 20.982538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164831, -0.272869, -0.947825,
		-0.981621, -0.048326, 0.184621,
		-0.096182, 0.960837, -0.259888,
		32.440376, 30.473871, 20.904572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991903, 29.760403, 20.616056>,  <32.507702, 29.801285, 21.086494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991903, 29.760403, 20.616056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.146835, 30.122053, 20.543911>,  <32.239796, 30.339043, 20.500624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.146835, 30.122053, 20.543911>,  <31.991903, 29.760403, 20.616056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146835, 30.122053, 20.543911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308527, -0.057238, -0.949492,
		-0.868785, 0.423413, 0.256778,
		0.387330, 0.904127, -0.180362,
		32.263035, 30.393291, 20.489803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521782, 30.102730, 20.274578>,  <31.991903, 29.760403, 20.616056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521782, 30.102730, 20.274578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.857679, 30.304926, 20.195272>,  <32.059219, 30.426243, 20.147688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.857679, 30.304926, 20.195272>,  <31.521782, 30.102730, 20.274578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857679, 30.304926, 20.195272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255356, 0.045408, -0.965780,
		-0.479190, 0.861637, 0.167211,
		0.839744, 0.505491, -0.198265,
		32.109604, 30.456573, 20.135794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407846, 30.685530, 19.779896>,  <31.521782, 30.102730, 20.274578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407846, 30.685530, 19.779896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.797485, 30.601173, 19.747255>,  <32.031269, 30.550560, 19.727671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.797485, 30.601173, 19.747255>,  <31.407846, 30.685530, 19.779896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797485, 30.601173, 19.747255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117434, -0.163399, -0.979546,
		0.193242, 0.963757, -0.183932,
		0.974098, -0.210889, -0.081602,
		32.089714, 30.537907, 19.722775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634975, 31.179031, 19.369129>,  <31.407846, 30.685530, 19.779896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634975, 31.179031, 19.369129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.884640, 30.867416, 19.345388>,  <32.034439, 30.680447, 19.331144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.884640, 30.867416, 19.345388>,  <31.634975, 31.179031, 19.369129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884640, 30.867416, 19.345388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033268, 0.049396, -0.998225,
		0.780589, 0.625026, 0.004914,
		0.624159, -0.779040, -0.059352,
		32.071888, 30.633705, 19.327583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104198, 31.410341, 18.849581>,  <31.634975, 31.179031, 19.369129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104198, 31.410341, 18.849581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.114147, 31.011808, 18.882320>,  <32.120117, 30.772688, 18.901964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.114147, 31.011808, 18.882320>,  <32.104198, 31.410341, 18.849581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114147, 31.011808, 18.882320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176256, -0.084962, -0.980671,
		0.984030, 0.009961, -0.177723,
		0.024868, -0.996334, 0.081850,
		32.121609, 30.712908, 18.906876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672691, 31.842520, 18.579279>,  <32.104198, 31.410341, 18.849581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672691, 31.842520, 18.579279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.544739, 32.144554, 18.350361>,  <32.467968, 32.325775, 18.213011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.544739, 32.144554, 18.350361>,  <32.672691, 31.842520, 18.579279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544739, 32.144554, 18.350361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218667, 0.528888, 0.820038,
		0.921879, 0.387456, -0.004068,
		-0.319881, 0.755087, -0.572294,
		32.448776, 32.371078, 18.178673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987469, 32.476509, 18.815641>,  <32.672691, 31.842520, 18.579279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987469, 32.476509, 18.815641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.644424, 32.551323, 18.624008>,  <32.438599, 32.596210, 18.509027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.644424, 32.551323, 18.624008>,  <32.987469, 32.476509, 18.815641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644424, 32.551323, 18.624008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292646, 0.588546, 0.753639,
		0.422919, 0.786532, -0.450008,
		-0.857611, 0.187035, -0.479083,
		32.387142, 32.607433, 18.480284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005253, 33.248714, 18.710564>,  <32.987469, 32.476509, 18.815641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005253, 33.248714, 18.710564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.628155, 33.120018, 18.675442>,  <32.401894, 33.042801, 18.654369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.628155, 33.120018, 18.675442>,  <33.005253, 33.248714, 18.710564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628155, 33.120018, 18.675442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254549, 0.524071, 0.812745,
		-0.215475, 0.788565, -0.575965,
		-0.942749, -0.321738, -0.087804,
		32.345329, 33.023499, 18.649101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574802, 33.841827, 18.743362>,  <33.005253, 33.248714, 18.710564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574802, 33.841827, 18.743362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.327236, 33.537941, 18.823143>,  <32.178696, 33.355610, 18.871012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.327236, 33.537941, 18.823143>,  <32.574802, 33.841827, 18.743362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327236, 33.537941, 18.823143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422690, 0.536177, 0.730649,
		-0.662024, 0.367904, -0.652971,
		-0.618917, -0.759711, 0.199453,
		32.141560, 33.310028, 18.882978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936684, 34.153522, 18.789070>,  <32.574802, 33.841827, 18.743362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936684, 34.153522, 18.789070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.890875, 33.803108, 18.976454>,  <31.863390, 33.592861, 19.088884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.890875, 33.803108, 18.976454>,  <31.936684, 34.153522, 18.789070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890875, 33.803108, 18.976454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287142, 0.480622, 0.828584,
		-0.951017, -0.039621, -0.306589,
		-0.114524, -0.876032, 0.468457,
		31.856518, 33.540298, 19.116991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286818, 34.182449, 19.114321>,  <31.936684, 34.153522, 18.789070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286818, 34.182449, 19.114321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.478746, 33.893101, 19.312918>,  <31.593904, 33.719490, 19.432076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.478746, 33.893101, 19.312918>,  <31.286818, 34.182449, 19.114321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478746, 33.893101, 19.312918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274870, 0.413463, 0.868041,
		-0.833197, -0.552976, -0.000444,
		0.479823, -0.723371, 0.496492,
		31.622694, 33.676090, 19.461864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829029, 34.102295, 19.708445>,  <31.286818, 34.182449, 19.114321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829029, 34.102295, 19.708445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.169203, 33.930370, 19.829788>,  <31.373306, 33.827217, 19.902594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.169203, 33.930370, 19.829788>,  <30.829029, 34.102295, 19.708445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169203, 33.930370, 19.829788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162341, 0.334088, 0.928456,
		-0.500409, -0.838837, 0.214344,
		0.850433, -0.429811, 0.303358,
		31.424334, 33.801426, 19.920795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700516, 33.727955, 20.269640>,  <30.829029, 34.102295, 19.708445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700516, 33.727955, 20.269640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.098177, 33.756390, 20.302141>,  <31.336775, 33.773449, 20.321642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.098177, 33.756390, 20.302141>,  <30.700516, 33.727955, 20.269640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098177, 33.756390, 20.302141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097352, 0.264984, 0.959326,
		0.046664, -0.961629, 0.270355,
		0.994156, 0.071086, 0.081251,
		31.396423, 33.777714, 20.326517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882568, 33.398033, 20.808470>,  <30.700516, 33.727955, 20.269640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882568, 33.398033, 20.808470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.188591, 33.650551, 20.757624>,  <31.372204, 33.802063, 20.727116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.188591, 33.650551, 20.757624>,  <30.882568, 33.398033, 20.808470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188591, 33.650551, 20.757624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002810, 0.200663, 0.979656,
		0.643960, -0.749133, 0.155292,
		0.765054, 0.631295, -0.127114,
		31.418108, 33.839939, 20.719490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295712, 33.166794, 21.246899>,  <30.882568, 33.398033, 20.808470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295712, 33.166794, 21.246899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.423281, 33.540970, 21.185911>,  <31.499823, 33.765476, 21.149319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.423281, 33.540970, 21.185911>,  <31.295712, 33.166794, 21.246899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423281, 33.540970, 21.185911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010369, 0.164302, 0.986356,
		0.947724, -0.312991, 0.062100,
		0.318924, 0.935437, -0.152468,
		31.518957, 33.821602, 21.140171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864645, 33.288963, 21.708858>,  <31.295712, 33.166794, 21.246899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864645, 33.288963, 21.708858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.731396, 33.649261, 21.597374>,  <31.651445, 33.865440, 21.530483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.731396, 33.649261, 21.597374>,  <31.864645, 33.288963, 21.708858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731396, 33.649261, 21.597374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068343, 0.271749, 0.959938,
		0.940403, 0.338827, -0.028967,
		-0.333125, 0.900749, -0.278710,
		31.631458, 33.919487, 21.513762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169140, 33.772675, 22.115925>,  <31.864645, 33.288963, 21.708858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169140, 33.772675, 22.115925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.854065, 33.981838, 21.985624>,  <31.665020, 34.107338, 21.907444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.854065, 33.981838, 21.985624>,  <32.169140, 33.772675, 22.115925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854065, 33.981838, 21.985624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057948, 0.463522, 0.884189,
		0.613342, 0.715342, -0.334809,
		-0.787689, 0.522909, -0.325750,
		31.617758, 34.138710, 21.887899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291924, 34.470345, 22.402451>,  <32.169140, 33.772675, 22.115925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291924, 34.470345, 22.402451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.904497, 34.426910, 22.312927>,  <31.672041, 34.400848, 22.259212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.904497, 34.426910, 22.312927>,  <32.291924, 34.470345, 22.402451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904497, 34.426910, 22.312927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244926, 0.573595, 0.781665,
		0.043497, 0.811910, -0.582160,
		-0.968566, -0.108586, -0.223808,
		31.613928, 34.394333, 22.245785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064178, 35.130585, 22.291946>,  <32.291924, 34.470345, 22.402451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064178, 35.130585, 22.291946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.755621, 34.891441, 22.379147>,  <31.570488, 34.747955, 22.431467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.755621, 34.891441, 22.379147>,  <32.064178, 35.130585, 22.291946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755621, 34.891441, 22.379147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341682, 0.678124, 0.650694,
		-0.536854, 0.427452, -0.727374,
		-0.771390, -0.597858, 0.218001,
		31.524204, 34.712086, 22.444548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.114073, 35.034004, 17.126743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.104578, 34.638634, 17.186665>,  <29.098881, 34.401409, 17.222618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.104578, 34.638634, 17.186665>,  <29.114073, 35.034004, 17.126743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104578, 34.638634, 17.186665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235666, -0.151155, -0.960007,
		0.971544, 0.012518, 0.236527,
		-0.023735, -0.988431, 0.149804,
		29.097458, 34.342106, 17.231606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701302, 34.728004, 16.777702>,  <29.114073, 35.034004, 17.126743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701302, 34.728004, 16.777702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.426208, 34.440277, 16.816893>,  <29.261152, 34.267639, 16.840406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.426208, 34.440277, 16.816893>,  <29.701302, 34.728004, 16.777702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426208, 34.440277, 16.816893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073216, -0.203000, -0.976438,
		0.722263, -0.664354, 0.192275,
		-0.687732, -0.719322, 0.097978,
		29.219889, 34.224480, 16.846287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952625, 34.267830, 16.257454>,  <29.701302, 34.728004, 16.777702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952625, 34.267830, 16.257454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.581240, 34.139751, 16.332747>,  <29.358408, 34.062904, 16.377922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.581240, 34.139751, 16.332747>,  <29.952625, 34.267830, 16.257454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581240, 34.139751, 16.332747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084609, -0.311127, -0.946595,
		0.361661, -0.894804, 0.261778,
		-0.928463, -0.320198, 0.188231,
		29.302700, 34.043694, 16.389215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997978, 33.526272, 16.059765>,  <29.952625, 34.267830, 16.257454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997978, 33.526272, 16.059765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621864, 33.662243, 16.052637>,  <29.396196, 33.743824, 16.048361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621864, 33.662243, 16.052637>,  <29.997978, 33.526272, 16.059765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621864, 33.662243, 16.052637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107243, -0.345514, -0.932266,
		-0.323045, -0.874687, 0.361336,
		-0.940287, 0.339915, -0.017813,
		29.339779, 33.764221, 16.047293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639626, 33.017292, 15.652386>,  <29.997978, 33.526272, 16.059765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639626, 33.017292, 15.652386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.410089, 33.344570, 15.638126>,  <29.272367, 33.540936, 15.629571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.410089, 33.344570, 15.638126>,  <29.639626, 33.017292, 15.652386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410089, 33.344570, 15.638126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246794, -0.214266, -0.945084,
		-0.780898, -0.533528, 0.324879,
		-0.573839, 0.818192, -0.035649,
		29.237938, 33.590027, 15.627432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979635, 32.727505, 15.541925>,  <29.639626, 33.017292, 15.652386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979635, 32.727505, 15.541925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.972691, 33.106667, 15.414688>,  <28.968523, 33.334164, 15.338346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.972691, 33.106667, 15.414688>,  <28.979635, 32.727505, 15.541925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972691, 33.106667, 15.414688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284285, -0.309691, -0.907344,
		-0.958582, 0.074675, 0.274851,
		-0.017362, 0.947900, -0.318093,
		28.967482, 33.391037, 15.319260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597010, 32.632629, 14.950182>,  <28.979635, 32.727505, 15.541925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597010, 32.632629, 14.950182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.764074, 32.987968, 14.873875>,  <28.864313, 33.201172, 14.828090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.764074, 32.987968, 14.873875>,  <28.597010, 32.632629, 14.950182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764074, 32.987968, 14.873875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091099, -0.167959, -0.981576,
		-0.904023, 0.427347, 0.010777,
		0.417664, 0.888349, -0.190769,
		28.889374, 33.254475, 14.816644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209766, 32.983940, 14.385648>,  <28.597010, 32.632629, 14.950182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209766, 32.983940, 14.385648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.570660, 33.155491, 14.403726>,  <28.787195, 33.258419, 14.414572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.570660, 33.155491, 14.403726>,  <28.209766, 32.983940, 14.385648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570660, 33.155491, 14.403726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043716, 0.013303, -0.998955,
		-0.429027, 0.903266, -0.006746,
		0.902233, 0.428874, 0.045194,
		28.841330, 33.284153, 14.417284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233091, 33.364380, 13.731151>,  <28.209766, 32.983940, 14.385648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233091, 33.364380, 13.731151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.616640, 33.363750, 13.844686>,  <28.846769, 33.363373, 13.912807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.616640, 33.363750, 13.844686>,  <28.233091, 33.364380, 13.731151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616640, 33.363750, 13.844686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283076, -0.068061, -0.956680,
		0.020828, 0.997680, -0.064815,
		0.958871, -0.001578, 0.283837,
		28.904301, 33.363277, 13.929836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661484, 33.833515, 13.296881>,  <28.233091, 33.364380, 13.731151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661484, 33.833515, 13.296881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.909719, 33.560501, 13.451292>,  <29.058661, 33.396694, 13.543939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.909719, 33.560501, 13.451292>,  <28.661484, 33.833515, 13.296881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909719, 33.560501, 13.451292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343619, -0.205798, -0.916282,
		0.704837, 0.701281, 0.106816,
		0.620589, -0.682533, 0.386028,
		29.095896, 33.355740, 13.567101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279802, 33.978821, 12.891580>,  <28.661484, 33.833515, 13.296881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279802, 33.978821, 12.891580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.316568, 33.617290, 13.058742>,  <29.338629, 33.400372, 13.159039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.316568, 33.617290, 13.058742>,  <29.279802, 33.978821, 12.891580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316568, 33.617290, 13.058742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330100, -0.368292, -0.869135,
		0.939460, 0.217839, 0.264502,
		0.091918, -0.903829, 0.417904,
		29.344143, 33.346142, 13.184113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000404, 33.683289, 12.644009>,  <29.279802, 33.978821, 12.891580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000404, 33.683289, 12.644009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.771296, 33.375641, 12.757422>,  <29.633831, 33.191051, 12.825471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.771296, 33.375641, 12.757422>,  <30.000404, 33.683289, 12.644009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771296, 33.375641, 12.757422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104713, -0.411712, -0.905278,
		0.813001, -0.488826, 0.316353,
		-0.572770, -0.769118, 0.283535,
		29.599464, 33.144905, 12.842483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344288, 33.028439, 12.385685>,  <30.000404, 33.683289, 12.644009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344288, 33.028439, 12.385685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.946800, 32.995361, 12.415844>,  <29.708307, 32.975513, 12.433939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.946800, 32.995361, 12.415844>,  <30.344288, 33.028439, 12.385685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946800, 32.995361, 12.415844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041984, -0.349052, -0.936162,
		0.103732, -0.933448, 0.343387,
		-0.993719, -0.082693, 0.075398,
		29.648685, 32.970554, 12.438463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567238, 32.434631, 12.546095>,  <30.344288, 33.028439, 12.385685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567238, 32.434631, 12.546095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.953814, 32.376324, 12.461479>,  <31.185759, 32.341339, 12.410709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.953814, 32.376324, 12.461479>,  <30.567238, 32.434631, 12.546095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953814, 32.376324, 12.461479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151142, -0.343221, 0.927015,
		-0.207734, -0.927875, -0.309670,
		0.966438, -0.145768, -0.211539,
		31.243746, 32.332592, 12.398018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722425, 31.905474, 12.901384>,  <30.567238, 32.434631, 12.546095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722425, 31.905474, 12.901384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.089846, 32.039356, 12.817255>,  <31.310299, 32.119686, 12.766777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.089846, 32.039356, 12.817255>,  <30.722425, 31.905474, 12.901384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089846, 32.039356, 12.817255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329462, -0.354187, 0.875218,
		0.218445, -0.873227, -0.435611,
		0.918551, 0.334704, -0.210324,
		31.365412, 32.139767, 12.754158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116474, 31.608959, 13.382276>,  <30.722425, 31.905474, 12.901384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116474, 31.608959, 13.382276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.408932, 31.857296, 13.269151>,  <31.584406, 32.006298, 13.201276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.408932, 31.857296, 13.269151>,  <31.116474, 31.608959, 13.382276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408932, 31.857296, 13.269151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361317, -0.000755, 0.932443,
		0.578685, -0.783936, -0.224873,
		0.731145, 0.620841, -0.282813,
		31.628275, 32.043549, 13.184307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718340, 31.375999, 13.714318>,  <31.116474, 31.608959, 13.382276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718340, 31.375999, 13.714318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.795677, 31.749760, 13.594641>,  <31.842079, 31.974016, 13.522834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.795677, 31.749760, 13.594641>,  <31.718340, 31.375999, 13.714318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795677, 31.749760, 13.594641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521836, 0.160303, 0.837849,
		0.830847, -0.318120, -0.456610,
		0.193341, 0.934400, -0.299193,
		31.853680, 32.030079, 13.504883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524155, 31.489775, 13.666318>,  <31.718340, 31.375999, 13.714318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524155, 31.489775, 13.666318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.307583, 31.818718, 13.736270>,  <32.177639, 32.016083, 13.778241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.307583, 31.818718, 13.736270>,  <32.524155, 31.489775, 13.666318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307583, 31.818718, 13.736270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537853, 0.178918, 0.823834,
		0.646198, 0.540106, -0.539179,
		-0.541427, 0.822359, 0.174881,
		32.145153, 32.065426, 13.788734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019787, 32.137318, 13.853417>,  <32.524155, 31.489775, 13.666318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019787, 32.137318, 13.853417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.655010, 32.226273, 13.991348>,  <32.436146, 32.279644, 14.074107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.655010, 32.226273, 13.991348>,  <33.019787, 32.137318, 13.853417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655010, 32.226273, 13.991348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400021, 0.294758, 0.867814,
		0.091348, 0.929334, -0.357762,
		-0.911942, 0.222386, 0.344828,
		32.381428, 32.292988, 14.094796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289440, 32.491936, 14.457177>,  <33.019787, 32.137318, 13.853417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289440, 32.491936, 14.457177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896030, 32.457863, 14.520967>,  <32.659985, 32.437420, 14.559240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896030, 32.457863, 14.520967>,  <33.289440, 32.491936, 14.457177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896030, 32.457863, 14.520967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105920, 0.443362, 0.890062,
		-0.146525, 0.892285, -0.427033,
		-0.983520, -0.085185, 0.159474,
		32.600975, 32.432308, 14.568809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138538, 33.136417, 14.734805>,  <33.289440, 32.491936, 14.457177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138538, 33.136417, 14.734805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.854942, 32.867882, 14.821192>,  <32.684784, 32.706760, 14.873024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.854942, 32.867882, 14.821192>,  <33.138538, 33.136417, 14.734805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854942, 32.867882, 14.821192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046332, 0.261236, 0.964162,
		-0.703696, 0.693587, -0.154109,
		-0.708989, -0.671337, 0.215966,
		32.642246, 32.666481, 14.885982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752773, 33.518513, 15.175076>,  <33.138538, 33.136417, 14.734805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752773, 33.518513, 15.175076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642380, 33.138309, 15.232149>,  <32.576141, 32.910187, 15.266393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642380, 33.138309, 15.232149>,  <32.752773, 33.518513, 15.175076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642380, 33.138309, 15.232149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018884, 0.143056, 0.989535,
		-0.960976, 0.275793, -0.021532,
		-0.275987, -0.950512, 0.142681,
		32.559582, 32.853157, 15.274954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286621, 33.493610, 15.678227>,  <32.752773, 33.518513, 15.175076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286621, 33.493610, 15.678227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.419155, 33.116920, 15.701444>,  <32.498676, 32.890907, 15.715373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.419155, 33.116920, 15.701444>,  <32.286621, 33.493610, 15.678227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419155, 33.116920, 15.701444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030414, 0.050823, 0.998244,
		-0.943023, -0.332519, -0.011802,
		0.331335, -0.941726, 0.058041,
		32.518555, 32.834404, 15.718856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776934, 33.154297, 16.101261>,  <32.286621, 33.493610, 15.678227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776934, 33.154297, 16.101261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.108658, 32.931755, 16.122093>,  <32.307693, 32.798229, 16.134592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.108658, 32.931755, 16.122093>,  <31.776934, 33.154297, 16.101261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108658, 32.931755, 16.122093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142753, -0.120831, 0.982355,
		-0.540246, -0.822112, -0.179628,
		0.829310, -0.556356, 0.052080,
		32.357452, 32.764847, 16.137718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580206, 32.633190, 16.527575>,  <31.776934, 33.154297, 16.101261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580206, 32.633190, 16.527575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967939, 32.535336, 16.518265>,  <32.200581, 32.476624, 16.512678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967939, 32.535336, 16.518265>,  <31.580206, 32.633190, 16.527575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967939, 32.535336, 16.518265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031305, -0.216860, 0.975701,
		-0.243755, -0.945049, -0.217868,
		0.969332, -0.244652, -0.023276,
		32.258739, 32.461945, 16.511282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644918, 31.944469, 16.800718>,  <31.580206, 32.633190, 16.527575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644918, 31.944469, 16.800718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980371, 32.158684, 16.840523>,  <32.181644, 32.287212, 16.864405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980371, 32.158684, 16.840523>,  <31.644918, 31.944469, 16.800718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980371, 32.158684, 16.840523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094440, -0.036967, 0.994844,
		0.536451, -0.843704, 0.019574,
		0.838630, 0.535533, 0.099510,
		32.231960, 32.319344, 16.870377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049847, 31.606571, 17.361721>,  <31.644918, 31.944469, 16.800718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049847, 31.606571, 17.361721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190895, 31.980280, 17.340551>,  <32.275524, 32.204506, 17.327850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190895, 31.980280, 17.340551>,  <32.049847, 31.606571, 17.361721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190895, 31.980280, 17.340551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006650, 0.054054, 0.998516,
		0.935744, -0.352446, 0.012847,
		0.352618, 0.934270, -0.052925,
		32.296680, 32.260559, 17.324675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632660, 31.676964, 17.834949>,  <32.049847, 31.606571, 17.361721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632660, 31.676964, 17.834949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.527287, 32.058846, 17.779615>,  <32.464062, 32.287975, 17.746416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.527287, 32.058846, 17.779615>,  <32.632660, 31.676964, 17.834949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527287, 32.058846, 17.779615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177366, 0.093018, 0.979739,
		0.948231, 0.282636, 0.144828,
		-0.263438, 0.954706, -0.138333,
		32.448254, 32.345257, 17.738115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548172, 31.048901, 18.201250>,  <32.632660, 31.676964, 17.834949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548172, 31.048901, 18.201250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353085, 30.738899, 18.362000>,  <32.236034, 30.552898, 18.458448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353085, 30.738899, 18.362000>,  <32.548172, 31.048901, 18.201250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353085, 30.738899, 18.362000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191329, -0.354253, -0.915367,
		0.851778, -0.523330, 0.024494,
		-0.487717, -0.775003, 0.401874,
		32.206768, 30.506399, 18.482561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770107, 30.462347, 17.787170>,  <32.548172, 31.048901, 18.201250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770107, 30.462347, 17.787170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431782, 30.358376, 17.973518>,  <32.228786, 30.295994, 18.085327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431782, 30.358376, 17.973518>,  <32.770107, 30.462347, 17.787170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431782, 30.358376, 17.973518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342513, -0.404925, -0.847774,
		0.409003, -0.876626, 0.253463,
		-0.845814, -0.259928, 0.465871,
		32.178036, 30.280397, 18.113279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551994, 29.857914, 17.484398>,  <32.770107, 30.462347, 17.787170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551994, 29.857914, 17.484398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224575, 30.013830, 17.653179>,  <32.028122, 30.107380, 17.754448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224575, 30.013830, 17.653179>,  <32.551994, 29.857914, 17.484398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224575, 30.013830, 17.653179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483393, -0.070562, -0.872555,
		-0.310341, -0.918196, 0.246181,
		-0.818547, 0.389792, 0.421951,
		31.979012, 30.130768, 17.779764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118130, 29.490555, 17.162336>,  <32.551994, 29.857914, 17.484398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118130, 29.490555, 17.162336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.884480, 29.753378, 17.352945>,  <31.744291, 29.911072, 17.467312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.884480, 29.753378, 17.352945>,  <32.118130, 29.490555, 17.162336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884480, 29.753378, 17.352945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672593, -0.063207, -0.737308,
		-0.454336, -0.751184, 0.478854,
		-0.584121, 0.657060, 0.476524,
		31.709244, 29.950495, 17.495903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439810, 29.119623, 17.244883>,  <32.118130, 29.490555, 17.162336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439810, 29.119623, 17.244883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.368484, 29.511913, 17.276833>,  <31.325689, 29.747288, 17.296003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.368484, 29.511913, 17.276833>,  <31.439810, 29.119623, 17.244883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368484, 29.511913, 17.276833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726152, -0.076378, -0.683278,
		-0.664008, -0.179840, 0.725776,
		-0.178314, 0.980726, 0.079876,
		31.314991, 29.806131, 17.300795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655682, 29.278767, 17.161436>,  <31.439810, 29.119623, 17.244883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655682, 29.278767, 17.161436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838980, 29.612291, 17.038296>,  <30.948957, 29.812407, 16.964411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838980, 29.612291, 17.038296>,  <30.655682, 29.278767, 17.161436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838980, 29.612291, 17.038296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615740, 0.048019, -0.786485,
		-0.640998, 0.549957, 0.535415,
		0.458243, 0.833811, -0.307851,
		30.976452, 29.862434, 16.945940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135374, 29.748453, 16.765699>,  <30.655682, 29.278767, 17.161436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135374, 29.748453, 16.765699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.495716, 29.887434, 16.661596>,  <30.711922, 29.970823, 16.599134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.495716, 29.887434, 16.661596>,  <30.135374, 29.748453, 16.765699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495716, 29.887434, 16.661596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278701, 0.003234, -0.960372,
		-0.332841, 0.937692, 0.099748,
		0.900856, 0.347452, -0.260260,
		30.765972, 29.991669, 16.583519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551224, 29.322586, 16.896925>,  <30.135374, 29.748453, 16.765699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551224, 29.322586, 16.896925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.456276, 28.947430, 16.795721>,  <29.399307, 28.722336, 16.734999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.456276, 28.947430, 16.795721>,  <29.551224, 29.322586, 16.896925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456276, 28.947430, 16.795721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198360, -0.208170, 0.957767,
		-0.950952, 0.277530, -0.136627,
		-0.237368, -0.937893, -0.253010,
		29.385065, 28.666061, 16.719818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937035, 29.251556, 17.103590>,  <29.551224, 29.322586, 16.896925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937035, 29.251556, 17.103590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.110996, 28.893064, 17.068651>,  <29.215374, 28.677969, 17.047688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.110996, 28.893064, 17.068651>,  <28.937035, 29.251556, 17.103590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110996, 28.893064, 17.068651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232361, -0.205408, 0.950693,
		-0.869981, -0.393165, -0.297582,
		0.434905, -0.896230, -0.087345,
		29.241468, 28.624195, 17.042448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570612, 28.801136, 17.537996>,  <28.937035, 29.251556, 17.103590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570612, 28.801136, 17.537996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.888426, 28.569006, 17.466511>,  <29.079113, 28.429728, 17.423620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.888426, 28.569006, 17.466511>,  <28.570612, 28.801136, 17.537996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888426, 28.569006, 17.466511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055226, -0.224033, 0.973015,
		-0.604705, -0.782962, -0.145952,
		0.794532, -0.580327, -0.178714,
		29.126785, 28.394907, 17.412897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413628, 28.132835, 17.826571>,  <28.570612, 28.801136, 17.537996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413628, 28.132835, 17.826571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.811449, 28.171522, 17.811012>,  <29.050142, 28.194735, 17.801678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.811449, 28.171522, 17.811012>,  <28.413628, 28.132835, 17.826571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811449, 28.171522, 17.811012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054752, -0.167115, 0.984416,
		0.088710, -0.981182, -0.171500,
		0.994552, 0.096718, -0.038896,
		29.109814, 28.200537, 17.799343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686964, 27.603312, 18.290829>,  <28.413628, 28.132835, 17.826571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686964, 27.603312, 18.290829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.991125, 27.859818, 18.249718>,  <29.173622, 28.013721, 18.225052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.991125, 27.859818, 18.249718>,  <28.686964, 27.603312, 18.290829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991125, 27.859818, 18.249718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195042, -0.074539, 0.977958,
		0.619470, -0.763690, -0.181754,
		0.760405, 0.641266, -0.102777,
		29.219246, 28.052197, 18.218885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136576, 27.304768, 18.694443>,  <28.686964, 27.603312, 18.290829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136576, 27.304768, 18.694443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.265694, 27.681654, 18.658600>,  <29.343164, 27.907785, 18.637094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.265694, 27.681654, 18.658600>,  <29.136576, 27.304768, 18.694443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265694, 27.681654, 18.658600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154148, 0.041077, 0.987194,
		0.933832, -0.332474, -0.131982,
		0.322795, 0.942217, -0.089609,
		29.362532, 27.964319, 18.631718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762917, 27.315607, 19.159990>,  <29.136576, 27.304768, 18.694443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762917, 27.315607, 19.159990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.631081, 27.687704, 19.095467>,  <29.551979, 27.910961, 19.056753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.631081, 27.687704, 19.095467>,  <29.762917, 27.315607, 19.159990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631081, 27.687704, 19.095467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214527, 0.240176, 0.946728,
		0.919428, 0.277428, -0.278722,
		-0.329591, 0.930242, -0.161309,
		29.532204, 27.966776, 19.047073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.820709, 30.493591, 14.700894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.094217, 30.764088, 14.591237>,  <28.258322, 30.926386, 14.525443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.094217, 30.764088, 14.591237>,  <27.820709, 30.493591, 14.700894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094217, 30.764088, 14.591237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224248, 0.552255, 0.802949,
		0.694383, -0.487559, 0.529262,
		0.683772, 0.676241, -0.274142,
		28.299349, 30.966959, 14.508994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319746, 30.527746, 15.285012>,  <27.820709, 30.493591, 14.700894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319746, 30.527746, 15.285012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305172, 30.857016, 15.058365>,  <28.296427, 31.054577, 14.922377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305172, 30.857016, 15.058365>,  <28.319746, 30.527746, 15.285012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305172, 30.857016, 15.058365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178449, 0.552523, 0.814171,
		0.983274, 0.130778, 0.126762,
		-0.036437, 0.823174, -0.566619,
		28.294241, 31.103968, 14.888379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712681, 30.958780, 15.607330>,  <28.319746, 30.527746, 15.285012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712681, 30.958780, 15.607330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.443106, 31.177324, 15.408414>,  <28.281361, 31.308451, 15.289064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.443106, 31.177324, 15.408414>,  <28.712681, 30.958780, 15.607330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443106, 31.177324, 15.408414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295620, 0.417448, 0.859271,
		0.677064, 0.726104, -0.119819,
		-0.673938, 0.546360, -0.497290,
		28.240925, 31.341232, 15.259227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828398, 31.561256, 15.866697>,  <28.712681, 30.958780, 15.607330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828398, 31.561256, 15.866697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.452299, 31.579136, 15.731676>,  <28.226641, 31.589863, 15.650663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.452299, 31.579136, 15.731676>,  <28.828398, 31.561256, 15.866697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452299, 31.579136, 15.731676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306948, 0.317848, 0.897082,
		0.147387, 0.947088, -0.285135,
		-0.940245, 0.044697, -0.337553,
		28.170225, 31.592545, 15.630410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591707, 32.208965, 15.943073>,  <28.828398, 31.561256, 15.866697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591707, 32.208965, 15.943073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.256338, 31.991283, 15.931161>,  <28.055117, 31.860674, 15.924013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.256338, 31.991283, 15.931161>,  <28.591707, 32.208965, 15.943073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256338, 31.991283, 15.931161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355129, 0.504043, 0.787289,
		-0.413434, 0.670659, -0.615864,
		-0.838425, -0.544203, -0.029782,
		28.004810, 31.828022, 15.922227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019829, 32.673279, 16.019104>,  <28.591707, 32.208965, 15.943073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019829, 32.673279, 16.019104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867245, 32.312527, 16.100197>,  <27.775694, 32.096077, 16.148853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867245, 32.312527, 16.100197>,  <28.019829, 32.673279, 16.019104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867245, 32.312527, 16.100197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504547, 0.386907, 0.771839,
		-0.774544, 0.192139, -0.602631,
		-0.381462, -0.901879, 0.202734,
		27.752806, 32.041962, 16.161016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339361, 32.891083, 16.172283>,  <28.019829, 32.673279, 16.019104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339361, 32.891083, 16.172283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.397976, 32.525555, 16.323792>,  <27.433144, 32.306240, 16.414698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.397976, 32.525555, 16.323792>,  <27.339361, 32.891083, 16.172283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397976, 32.525555, 16.323792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452832, 0.278462, 0.846996,
		-0.879472, -0.295635, -0.373000,
		0.146535, -0.913816, 0.378772,
		27.441936, 32.251411, 16.437424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618921, 32.733749, 16.331625>,  <27.339361, 32.891083, 16.172283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.618921, 32.733749, 16.331625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.879725, 32.511436, 16.537924>,  <27.036207, 32.378048, 16.661703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.879725, 32.511436, 16.537924>,  <26.618921, 32.733749, 16.331625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879725, 32.511436, 16.537924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440890, 0.275484, 0.854239,
		-0.616849, -0.784358, -0.065420,
		0.652008, -0.555779, 0.515748,
		27.075327, 32.344704, 16.692648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228201, 32.336723, 16.642315>,  <26.618921, 32.733749, 16.331625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228201, 32.336723, 16.642315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.556965, 32.301189, 16.867374>,  <26.754223, 32.279869, 17.002411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.556965, 32.301189, 16.867374>,  <26.228201, 32.336723, 16.642315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556965, 32.301189, 16.867374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528269, 0.250598, 0.811254,
		-0.213063, -0.964007, 0.159042,
		0.821910, -0.088831, 0.562648,
		26.803537, 32.274540, 17.036169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988438, 31.855080, 17.159731>,  <26.228201, 32.336723, 16.642315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988438, 31.855080, 17.159731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.319115, 32.020870, 17.311934>,  <26.517521, 32.120346, 17.403255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.319115, 32.020870, 17.311934>,  <25.988438, 31.855080, 17.159731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319115, 32.020870, 17.311934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463409, 0.118022, 0.878250,
		0.319107, -0.902374, 0.289641,
		0.826694, 0.414478, 0.380506,
		26.567123, 32.145214, 17.426085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067200, 31.574547, 17.824928>,  <25.988438, 31.855080, 17.159731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067200, 31.574547, 17.824928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.302094, 31.897448, 17.848602>,  <26.443029, 32.091187, 17.862806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.302094, 31.897448, 17.848602>,  <26.067200, 31.574547, 17.824928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302094, 31.897448, 17.848602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233388, 0.098856, 0.967346,
		0.775041, -0.581869, 0.246455,
		0.587232, 0.807252, 0.059183,
		26.478264, 32.139622, 17.866358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428988, 31.440651, 18.389097>,  <26.067200, 31.574547, 17.824928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428988, 31.440651, 18.389097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.443798, 31.837175, 18.338610>,  <26.452684, 32.075089, 18.308317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.443798, 31.837175, 18.338610>,  <26.428988, 31.440651, 18.389097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443798, 31.837175, 18.338610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369254, 0.130938, 0.920058,
		0.928591, 0.012539, 0.370894,
		0.037027, 0.991311, -0.126218,
		26.454906, 32.134567, 18.300745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917868, 30.867542, 18.515202>,  <26.428988, 31.440651, 18.389097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917868, 30.867542, 18.515202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858574, 30.524109, 18.711510>,  <26.822998, 30.318048, 18.829294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858574, 30.524109, 18.711510>,  <26.917868, 30.867542, 18.515202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858574, 30.524109, 18.711510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110107, -0.478841, -0.870969,
		0.982803, -0.183147, -0.023555,
		-0.148236, -0.858585, 0.490773,
		26.814102, 30.266533, 18.858742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550184, 30.402447, 18.404165>,  <26.917868, 30.867542, 18.515202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550184, 30.402447, 18.404165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.221128, 30.183208, 18.464634>,  <27.023695, 30.051664, 18.500916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.221128, 30.183208, 18.464634>,  <27.550184, 30.402447, 18.404165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221128, 30.183208, 18.464634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056148, -0.342899, -0.937693,
		0.565784, -0.762895, 0.312857,
		-0.822640, -0.548098, 0.151172,
		26.974337, 30.018780, 18.509985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601061, 29.822393, 18.024120>,  <27.550184, 30.402447, 18.404165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601061, 29.822393, 18.024120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.209536, 29.805656, 18.104290>,  <26.974621, 29.795614, 18.152391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.209536, 29.805656, 18.104290>,  <27.601061, 29.822393, 18.024120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209536, 29.805656, 18.104290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177072, -0.318443, -0.931257,
		0.102792, -0.947018, 0.304287,
		-0.978815, -0.041845, 0.200424,
		26.915892, 29.793102, 18.164417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399752, 29.102768, 17.882231>,  <27.601061, 29.822393, 18.024120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399752, 29.102768, 17.882231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068602, 29.326689, 17.868128>,  <26.869911, 29.461042, 17.859667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068602, 29.326689, 17.868128>,  <27.399752, 29.102768, 17.882231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068602, 29.326689, 17.868128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206764, -0.362999, -0.908560,
		-0.521414, -0.744883, 0.416265,
		-0.827874, 0.559805, -0.035258,
		26.820240, 29.494631, 17.857550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792223, 28.710960, 17.771111>,  <27.399752, 29.102768, 17.882231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792223, 28.710960, 17.771111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661598, 29.070726, 17.654894>,  <26.583223, 29.286585, 17.585165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661598, 29.070726, 17.654894>,  <26.792223, 28.710960, 17.771111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661598, 29.070726, 17.654894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191458, -0.363967, -0.911522,
		-0.925581, -0.242043, 0.291058,
		-0.326563, 0.899413, -0.290540,
		26.563629, 29.340549, 17.567732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272560, 28.570612, 17.230932>,  <26.792223, 28.710960, 17.771111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272560, 28.570612, 17.230932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362303, 28.955017, 17.166285>,  <26.416147, 29.185659, 17.127495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362303, 28.955017, 17.166285>,  <26.272560, 28.570612, 17.230932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362303, 28.955017, 17.166285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264327, -0.099619, -0.959274,
		-0.937974, 0.257939, 0.231671,
		0.224356, 0.961012, -0.161621,
		26.429609, 29.243320, 17.117798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995790, 28.679100, 16.671652>,  <26.272560, 28.570612, 17.230932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995790, 28.679100, 16.671652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.180183, 29.033707, 16.655748>,  <26.290819, 29.246471, 16.646206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.180183, 29.033707, 16.655748>,  <25.995790, 28.679100, 16.671652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180183, 29.033707, 16.655748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292773, 0.109641, -0.949875,
		-0.837723, 0.449516, 0.310091,
		0.460982, 0.886518, -0.039758,
		26.318478, 29.299662, 16.643822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611172, 29.089966, 16.263010>,  <25.995790, 28.679100, 16.671652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611172, 29.089966, 16.263010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.966309, 29.271975, 16.235613>,  <26.179390, 29.381180, 16.219175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.966309, 29.271975, 16.235613>,  <25.611172, 29.089966, 16.263010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966309, 29.271975, 16.235613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030243, -0.090824, -0.995408,
		-0.459153, 0.885837, -0.066876,
		0.887843, 0.455021, -0.068493,
		26.232662, 29.408482, 16.215065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528088, 29.532251, 15.768528>,  <25.611172, 29.089966, 16.263010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528088, 29.532251, 15.768528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.927794, 29.518246, 15.774791>,  <26.167618, 29.509842, 15.778548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.927794, 29.518246, 15.774791>,  <25.528088, 29.532251, 15.768528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927794, 29.518246, 15.774791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019224, 0.104016, -0.994390,
		0.033190, 0.993959, 0.104612,
		0.999264, -0.035015, 0.015656,
		26.227573, 29.507742, 15.779488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693768, 30.181635, 15.487819>,  <25.528088, 29.532251, 15.768528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693768, 30.181635, 15.487819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993633, 29.922750, 15.432508>,  <26.173553, 29.767420, 15.399321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993633, 29.922750, 15.432508>,  <25.693768, 30.181635, 15.487819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993633, 29.922750, 15.432508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045912, 0.157576, -0.986439,
		0.660223, 0.745848, 0.088414,
		0.749665, -0.647210, -0.138278,
		26.218533, 29.728588, 15.391024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116001, 30.443590, 14.927500>,  <25.693768, 30.181635, 15.487819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116001, 30.443590, 14.927500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.241800, 30.064039, 14.916745>,  <26.317280, 29.836309, 14.910293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.241800, 30.064039, 14.916745>,  <26.116001, 30.443590, 14.927500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241800, 30.064039, 14.916745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008488, 0.031134, -0.999479,
		0.949221, 0.314105, 0.017845,
		0.314497, -0.948878, -0.026887,
		26.336149, 29.779375, 14.908679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654671, 30.405592, 14.420228>,  <26.116001, 30.443590, 14.927500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654671, 30.405592, 14.420228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.534761, 30.025717, 14.456515>,  <26.462816, 29.797792, 14.478288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.534761, 30.025717, 14.456515>,  <26.654671, 30.405592, 14.420228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534761, 30.025717, 14.456515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133052, -0.135781, -0.981764,
		0.944687, -0.282236, 0.167061,
		-0.299773, -0.949687, 0.090719,
		26.444830, 29.740810, 14.483731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160906, 30.004566, 14.083233>,  <26.654671, 30.405592, 14.420228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160906, 30.004566, 14.083233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833660, 29.774549, 14.084937>,  <26.637314, 29.636539, 14.085959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833660, 29.774549, 14.084937>,  <27.160906, 30.004566, 14.083233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833660, 29.774549, 14.084937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048198, -0.075949, -0.995946,
		0.573034, -0.814591, 0.089850,
		-0.818113, -0.575042, 0.004259,
		26.588226, 29.602037, 14.086215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262697, 29.471409, 13.739429>,  <27.160906, 30.004566, 14.083233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262697, 29.471409, 13.739429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.867319, 29.528482, 13.718977>,  <26.630093, 29.562727, 13.706706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.867319, 29.528482, 13.718977>,  <27.262697, 29.471409, 13.739429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867319, 29.528482, 13.718977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055912, 0.029717, -0.997993,
		-0.140878, -0.989322, -0.037351,
		-0.988447, 0.142684, -0.051129,
		26.570786, 29.571287, 13.703638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457855, 29.119751, 14.319408>,  <27.262697, 29.471409, 13.739429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457855, 29.119751, 14.319408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834625, 29.221262, 14.231435>,  <28.060688, 29.282169, 14.178651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834625, 29.221262, 14.231435>,  <27.457855, 29.119751, 14.319408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834625, 29.221262, 14.231435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296806, -0.322748, 0.898743,
		0.157099, -0.911828, -0.379328,
		0.941927, 0.253779, -0.219933,
		28.117203, 29.297396, 14.165455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868595, 28.636631, 14.571301>,  <27.457855, 29.119751, 14.319408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868595, 28.636631, 14.571301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.153236, 28.914772, 14.531096>,  <28.324022, 29.081657, 14.506973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.153236, 28.914772, 14.531096>,  <27.868595, 28.636631, 14.571301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153236, 28.914772, 14.531096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437419, -0.326527, 0.837881,
		0.549804, -0.640206, -0.536519,
		0.711604, 0.695354, -0.100512,
		28.366718, 29.123379, 14.500942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490705, 28.204573, 14.651557>,  <27.868595, 28.636631, 14.571301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490705, 28.204573, 14.651557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572660, 28.582167, 14.755028>,  <28.621834, 28.808723, 14.817110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572660, 28.582167, 14.755028>,  <28.490705, 28.204573, 14.651557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572660, 28.582167, 14.755028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303966, -0.312582, 0.899943,
		0.930390, -0.105760, -0.350984,
		0.204889, 0.943985, 0.258676,
		28.634127, 28.865362, 14.832630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233658, 28.249537, 14.652538>,  <28.490705, 28.204573, 14.651557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233658, 28.249537, 14.652538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.088432, 28.538574, 14.887839>,  <29.001297, 28.711996, 15.029020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.088432, 28.538574, 14.887839>,  <29.233658, 28.249537, 14.652538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088432, 28.538574, 14.887839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388285, -0.456570, 0.800486,
		0.847005, 0.519038, -0.114807,
		-0.363066, 0.722594, 0.588252,
		28.979513, 28.755352, 15.064315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755924, 28.453936, 15.081758>,  <29.233658, 28.249537, 14.652538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755924, 28.453936, 15.081758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445000, 28.605570, 15.282588>,  <29.258446, 28.696550, 15.403087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445000, 28.605570, 15.282588>,  <29.755924, 28.453936, 15.081758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445000, 28.605570, 15.282588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409418, -0.301128, 0.861219,
		0.477668, 0.874994, 0.078865,
		-0.777310, 0.379088, 0.502077,
		29.211807, 28.719296, 15.433211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108595, 28.762226, 15.589152>,  <29.755924, 28.453936, 15.081758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108595, 28.762226, 15.589152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.732227, 28.722298, 15.718586>,  <29.506407, 28.698339, 15.796246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.732227, 28.722298, 15.718586>,  <30.108595, 28.762226, 15.589152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732227, 28.722298, 15.718586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335267, -0.140258, 0.931624,
		-0.047612, 0.985070, 0.165439,
		-0.940920, -0.099822, 0.323583,
		29.449951, 28.692350, 15.815660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053511, 29.163626, 16.224617>,  <30.108595, 28.762226, 15.589152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053511, 29.163626, 16.224617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.753550, 28.899860, 16.245863>,  <29.573572, 28.741602, 16.258610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.753550, 28.899860, 16.245863>,  <30.053511, 29.163626, 16.224617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753550, 28.899860, 16.245863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390992, -0.377015, 0.839634,
		-0.533639, 0.650412, 0.540550,
		-0.749903, -0.659412, 0.053116,
		29.528578, 28.702038, 16.261797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097204, 29.730003, 15.804077>,  <30.053511, 29.163626, 16.224617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097204, 29.730003, 15.804077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.455467, 29.889111, 15.883654>,  <30.670425, 29.984575, 15.931399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.455467, 29.889111, 15.883654>,  <30.097204, 29.730003, 15.804077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455467, 29.889111, 15.883654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008346, 0.432202, -0.901738,
		-0.444667, 0.809309, 0.383785,
		0.895657, 0.397770, 0.198941,
		30.724165, 30.008442, 15.943336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111336, 30.409388, 15.530791>,  <30.097204, 29.730003, 15.804077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111336, 30.409388, 15.530791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482710, 30.265675, 15.493005>,  <30.705534, 30.179447, 15.470333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482710, 30.265675, 15.493005>,  <30.111336, 30.409388, 15.530791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482710, 30.265675, 15.493005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064948, 0.407354, -0.910958,
		0.365774, 0.839630, 0.401536,
		0.928435, -0.359283, -0.094467,
		30.761240, 30.157890, 15.464664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493635, 30.915768, 15.131239>,  <30.111336, 30.409388, 15.530791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493635, 30.915768, 15.131239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722799, 30.588732, 15.108186>,  <30.860298, 30.392511, 15.094354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722799, 30.588732, 15.108186>,  <30.493635, 30.915768, 15.131239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722799, 30.588732, 15.108186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285798, 0.265182, -0.920868,
		0.768174, 0.511105, 0.385591,
		0.572912, -0.817588, -0.057633,
		30.894672, 30.343456, 15.090896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115040, 31.147264, 14.816501>,  <30.493635, 30.915768, 15.131239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115040, 31.147264, 14.816501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.130293, 30.753525, 14.747677>,  <31.139444, 30.517281, 14.706383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.130293, 30.753525, 14.747677>,  <31.115040, 31.147264, 14.816501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130293, 30.753525, 14.747677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302358, 0.175479, -0.936903,
		0.952431, -0.016295, 0.304318,
		0.038135, -0.984348, -0.172059,
		31.141733, 30.458220, 14.696059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804060, 30.985981, 14.454348>,  <31.115040, 31.147264, 14.816501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804060, 30.985981, 14.454348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544950, 30.691601, 14.375588>,  <31.389484, 30.514973, 14.328333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544950, 30.691601, 14.375588>,  <31.804060, 30.985981, 14.454348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544950, 30.691601, 14.375588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288345, 0.002381, -0.957524,
		0.705158, -0.677032, 0.210665,
		-0.647773, -0.735949, -0.196898,
		31.350618, 30.470816, 14.316519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106308, 30.673714, 13.809351>,  <31.804060, 30.985981, 14.454348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106308, 30.673714, 13.809351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.735689, 30.528568, 13.849018>,  <31.513317, 30.441481, 13.872819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.735689, 30.528568, 13.849018>,  <32.106308, 30.673714, 13.809351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735689, 30.528568, 13.849018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095977, -0.026862, -0.995021,
		0.363723, -0.931454, -0.009938,
		-0.926550, -0.362866, 0.099168,
		31.457724, 30.419708, 13.878769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059685, 30.016254, 13.477712>,  <32.106308, 30.673714, 13.809351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059685, 30.016254, 13.477712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.666143, 30.087730, 13.481655>,  <31.430017, 30.130615, 13.484021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.666143, 30.087730, 13.481655>,  <32.059685, 30.016254, 13.477712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666143, 30.087730, 13.481655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059217, -0.273074, -0.960169,
		-0.168878, -0.945252, 0.279247,
		-0.983857, 0.178687, 0.009859,
		31.370987, 30.141338, 13.484612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739662, 29.487526, 13.192481>,  <32.059685, 30.016254, 13.477712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739662, 29.487526, 13.192481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.476452, 29.781700, 13.127810>,  <31.318525, 29.958204, 13.089006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.476452, 29.781700, 13.127810>,  <31.739662, 29.487526, 13.192481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476452, 29.781700, 13.127810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015539, -0.201406, -0.979385,
		-0.752837, -0.646971, 0.121102,
		-0.658024, 0.735435, -0.161679,
		31.279045, 30.002331, 13.079306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294334, 29.263767, 12.678011>,  <31.739662, 29.487526, 13.192481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294334, 29.263767, 12.678011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.333733, 29.661406, 12.696220>,  <31.357370, 29.899988, 12.707146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.333733, 29.661406, 12.696220>,  <31.294334, 29.263767, 12.678011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333733, 29.661406, 12.696220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294997, 0.014522, -0.955388,
		-0.950408, 0.107529, -0.291825,
		0.098494, 0.994096, 0.045523,
		31.363281, 29.959635, 12.709877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.655127, 34.328777, 27.851414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.690800, 34.623035, 27.582827>,  <30.712204, 34.799591, 27.421675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.690800, 34.623035, 27.582827>,  <30.655127, 34.328777, 27.851414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690800, 34.623035, 27.582827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045795, -0.676471, -0.735044,
		-0.994962, 0.034805, -0.094020,
		0.089185, 0.735646, -0.671469,
		30.717556, 34.843731, 27.381386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107620, 34.274456, 27.397772>,  <30.655127, 34.328777, 27.851414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107620, 34.274456, 27.397772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.352461, 34.472553, 27.151175>,  <30.499365, 34.591412, 27.003216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.352461, 34.472553, 27.151175>,  <30.107620, 34.274456, 27.397772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352461, 34.472553, 27.151175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288211, -0.586264, -0.757119,
		-0.736387, 0.641114, -0.216119,
		0.612102, 0.495245, -0.616493,
		30.536091, 34.621128, 26.966227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643410, 34.325256, 26.786854>,  <30.107620, 34.274456, 27.397772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643410, 34.325256, 26.786854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.025394, 34.375145, 26.679155>,  <30.254585, 34.405079, 26.614536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.025394, 34.375145, 26.679155>,  <29.643410, 34.325256, 26.786854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025394, 34.375145, 26.679155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151358, -0.575708, -0.803524,
		-0.255225, 0.808087, -0.530901,
		0.954961, 0.124724, -0.269246,
		30.311882, 34.412563, 26.598381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579000, 34.480850, 26.086199>,  <29.643410, 34.325256, 26.786854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579000, 34.480850, 26.086199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.934069, 34.316242, 26.168848>,  <30.147110, 34.217476, 26.218437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.934069, 34.316242, 26.168848>,  <29.579000, 34.480850, 26.086199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934069, 34.316242, 26.168848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147626, -0.679344, -0.718817,
		0.436176, 0.607570, -0.663785,
		0.887670, -0.411522, 0.206621,
		30.200369, 34.192787, 26.230835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786383, 34.222393, 25.486393>,  <29.579000, 34.480850, 26.086199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786383, 34.222393, 25.486393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.100204, 34.058128, 25.672224>,  <30.288498, 33.959572, 25.783724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.100204, 34.058128, 25.672224>,  <29.786383, 34.222393, 25.486393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100204, 34.058128, 25.672224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079271, -0.676674, -0.732003,
		0.614972, 0.611124, -0.498334,
		0.784554, -0.410658, 0.464580,
		30.335571, 33.934933, 25.811598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346582, 34.277214, 25.024986>,  <29.786383, 34.222393, 25.486393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346582, 34.277214, 25.024986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.402882, 33.968754, 25.273348>,  <30.436661, 33.783680, 25.422365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.402882, 33.968754, 25.273348>,  <30.346582, 34.277214, 25.024986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402882, 33.968754, 25.273348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225844, -0.585604, -0.778500,
		0.963942, 0.249802, 0.091736,
		0.140750, -0.771147, 0.620904,
		30.445107, 33.737411, 25.459620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959616, 34.094154, 24.876110>,  <30.346582, 34.277214, 25.024986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959616, 34.094154, 24.876110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791349, 33.767727, 25.034637>,  <30.690390, 33.571869, 25.129753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791349, 33.767727, 25.034637>,  <30.959616, 34.094154, 24.876110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791349, 33.767727, 25.034637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372883, -0.553776, -0.744507,
		0.827042, -0.165409, 0.537254,
		-0.420666, -0.816071, 0.396318,
		30.665150, 33.522907, 25.153532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531839, 33.629627, 25.010677>,  <30.959616, 34.094154, 24.876110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531839, 33.629627, 25.010677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190195, 33.425365, 24.971222>,  <30.985209, 33.302811, 24.947550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190195, 33.425365, 24.971222>,  <31.531839, 33.629627, 25.010677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190195, 33.425365, 24.971222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478892, -0.698201, -0.532144,
		0.202873, -0.501746, 0.840889,
		-0.854111, -0.510653, -0.098636,
		30.933962, 33.272171, 24.941631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775955, 33.002098, 25.017231>,  <31.531839, 33.629627, 25.010677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775955, 33.002098, 25.017231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.402822, 32.934105, 24.890150>,  <31.178944, 32.893311, 24.813902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.402822, 32.934105, 24.890150>,  <31.775955, 33.002098, 25.017231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402822, 32.934105, 24.890150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341306, -0.699462, -0.627903,
		-0.115489, -0.694161, 0.710495,
		-0.932830, -0.169980, -0.317702,
		31.122972, 32.883110, 24.794840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720808, 32.336025, 24.864708>,  <31.775955, 33.002098, 25.017231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720808, 32.336025, 24.864708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400597, 32.456470, 24.657446>,  <31.208469, 32.528740, 24.533089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400597, 32.456470, 24.657446>,  <31.720808, 32.336025, 24.864708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400597, 32.456470, 24.657446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256067, -0.609843, -0.750014,
		-0.541834, -0.733090, 0.411091,
		-0.800528, 0.301116, -0.518154,
		31.160439, 32.546806, 24.501999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373888, 31.701433, 24.585163>,  <31.720808, 32.336025, 24.864708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373888, 31.701433, 24.585163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.254644, 32.012142, 24.363260>,  <31.183098, 32.198566, 24.230118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.254644, 32.012142, 24.363260>,  <31.373888, 31.701433, 24.585163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254644, 32.012142, 24.363260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053617, -0.566640, -0.822219,
		-0.953024, -0.274856, 0.127273,
		-0.298110, 0.776771, -0.554759,
		31.165211, 32.245174, 24.196833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827885, 31.461679, 24.212303>,  <31.373888, 31.701433, 24.585163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827885, 31.461679, 24.212303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.983576, 31.775677, 24.019520>,  <31.076990, 31.964075, 23.903849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.983576, 31.775677, 24.019520>,  <30.827885, 31.461679, 24.212303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983576, 31.775677, 24.019520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105394, -0.557736, -0.823300,
		-0.915093, 0.269654, -0.299819,
		0.389226, 0.784995, -0.481960,
		31.100344, 32.011177, 23.874931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047638, 31.341272, 24.283195>,  <30.827885, 31.461679, 24.212303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047638, 31.341272, 24.283195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.110973, 30.954155, 24.361485>,  <30.148973, 30.721886, 24.408459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.110973, 30.954155, 24.361485>,  <30.047638, 31.341272, 24.283195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110973, 30.954155, 24.361485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099245, 0.181622, 0.978347,
		-0.982385, -0.174333, -0.067291,
		0.158336, -0.967792, 0.195724,
		30.158474, 30.663816, 24.420202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429184, 31.090910, 24.683250>,  <30.047638, 31.341272, 24.283195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429184, 31.090910, 24.683250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754927, 30.879114, 24.778299>,  <29.950373, 30.752037, 24.835329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754927, 30.879114, 24.778299>,  <29.429184, 31.090910, 24.683250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754927, 30.879114, 24.778299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350774, -0.122865, 0.928365,
		-0.462364, -0.839372, -0.285787,
		0.814357, -0.529490, 0.237621,
		29.999233, 30.720268, 24.849586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157965, 30.529543, 25.212616>,  <29.429184, 31.090910, 24.683250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157965, 30.529543, 25.212616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.556829, 30.524565, 25.242310>,  <29.796148, 30.521578, 25.260126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.556829, 30.524565, 25.242310>,  <29.157965, 30.529543, 25.212616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556829, 30.524565, 25.242310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072558, 0.103475, 0.991982,
		-0.020026, -0.994554, 0.102278,
		0.997163, -0.012445, 0.074235,
		29.855978, 30.520832, 25.264580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306751, 30.120295, 25.735298>,  <29.157965, 30.529543, 25.212616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306751, 30.120295, 25.735298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.614882, 30.371408, 25.690598>,  <29.799759, 30.522076, 25.663776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.614882, 30.371408, 25.690598>,  <29.306751, 30.120295, 25.735298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614882, 30.371408, 25.690598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121010, 0.028146, 0.992252,
		0.626065, -0.777879, -0.054286,
		0.770325, 0.627783, -0.111752,
		29.845980, 30.559744, 25.657072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761675, 29.828028, 26.255171>,  <29.306751, 30.120295, 25.735298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761675, 29.828028, 26.255171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.897141, 30.194532, 26.169596>,  <29.978420, 30.414436, 26.118250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.897141, 30.194532, 26.169596>,  <29.761675, 29.828028, 26.255171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897141, 30.194532, 26.169596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178243, 0.160782, 0.970762,
		0.923871, -0.366894, -0.108867,
		0.338662, 0.916263, -0.213939,
		29.998739, 30.469412, 26.105413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467249, 29.845619, 26.484043>,  <29.761675, 29.828028, 26.255171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467249, 29.845619, 26.484043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.319082, 30.216904, 26.470112>,  <30.230183, 30.439674, 26.461752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.319082, 30.216904, 26.470112>,  <30.467249, 29.845619, 26.484043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319082, 30.216904, 26.470112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055324, 0.059477, 0.996695,
		0.927217, 0.367265, -0.073383,
		-0.370416, 0.928213, -0.034830,
		30.207958, 30.495367, 26.459663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005806, 30.268240, 26.758469>,  <30.467249, 29.845619, 26.484043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005806, 30.268240, 26.758469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.651253, 30.449959, 26.794117>,  <30.438520, 30.558990, 26.815506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.651253, 30.449959, 26.794117>,  <31.005806, 30.268240, 26.758469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651253, 30.449959, 26.794117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152980, 0.105725, 0.982557,
		0.436948, 0.884555, -0.163211,
		-0.886382, 0.454295, 0.089123,
		30.385338, 30.586246, 26.820854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128496, 30.624336, 27.347620>,  <31.005806, 30.268240, 26.758469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128496, 30.624336, 27.347620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.735165, 30.684765, 27.307138>,  <30.499166, 30.721022, 27.282850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.735165, 30.684765, 27.307138>,  <31.128496, 30.624336, 27.347620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735165, 30.684765, 27.307138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056550, 0.274897, 0.959809,
		0.172821, 0.949531, -0.261770,
		-0.983329, 0.151072, -0.101204,
		30.440166, 30.730087, 27.276777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002960, 31.359921, 27.707523>,  <31.128496, 30.624336, 27.347620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002960, 31.359921, 27.707523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.656593, 31.159996, 27.715286>,  <30.448772, 31.040041, 27.719944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.656593, 31.159996, 27.715286>,  <31.002960, 31.359921, 27.707523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656593, 31.159996, 27.715286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097730, 0.207118, 0.973422,
		-0.490548, 0.841006, -0.228193,
		-0.865917, -0.499811, 0.019409,
		30.396818, 31.010052, 27.721109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465548, 31.818640, 27.950857>,  <31.002960, 31.359921, 27.707523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465548, 31.818640, 27.950857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339184, 31.446041, 28.022987>,  <30.263367, 31.222483, 28.066265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339184, 31.446041, 28.022987>,  <30.465548, 31.818640, 27.950857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339184, 31.446041, 28.022987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298443, 0.277969, 0.913053,
		-0.900630, 0.234624, -0.365811,
		-0.315908, -0.931496, 0.180325,
		30.244411, 31.166592, 28.077085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814795, 31.932465, 28.264639>,  <30.465548, 31.818640, 27.950857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814795, 31.932465, 28.264639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.894333, 31.551737, 28.358021>,  <29.942057, 31.323299, 28.414049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.894333, 31.551737, 28.358021>,  <29.814795, 31.932465, 28.264639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894333, 31.551737, 28.358021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585404, 0.075686, 0.807201,
		-0.785978, -0.297175, -0.542149,
		0.198846, -0.951818, 0.233455,
		29.953987, 31.266191, 28.428057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246191, 31.682741, 28.609026>,  <29.814795, 31.932465, 28.264639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246191, 31.682741, 28.609026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517796, 31.424725, 28.749235>,  <29.680759, 31.269915, 28.833361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517796, 31.424725, 28.749235>,  <29.246191, 31.682741, 28.609026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517796, 31.424725, 28.749235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331895, 0.156162, 0.930301,
		-0.654819, -0.748022, -0.108049,
		0.679012, -0.645040, 0.350522,
		29.721498, 31.231213, 28.854391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859537, 31.260508, 29.069206>,  <29.246191, 31.682741, 28.609026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859537, 31.260508, 29.069206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.244677, 31.226633, 29.171774>,  <29.475760, 31.206308, 29.233315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.244677, 31.226633, 29.171774>,  <28.859537, 31.260508, 29.069206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244677, 31.226633, 29.171774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230577, 0.236432, 0.943893,
		-0.140562, -0.967950, 0.208121,
		0.962848, -0.084688, 0.256420,
		29.533531, 31.201227, 29.248699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828064, 30.878559, 29.736151>,  <28.859537, 31.260508, 29.069206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828064, 30.878559, 29.736151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.196131, 31.034233, 29.719072>,  <29.416971, 31.127638, 29.708826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.196131, 31.034233, 29.719072>,  <28.828064, 30.878559, 29.736151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196131, 31.034233, 29.719072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022948, 0.162474, 0.986446,
		0.390848, -0.906717, 0.158434,
		0.920169, 0.389187, -0.042695,
		29.472181, 31.150990, 29.706264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301048, 31.349236, 29.691648>,  <28.828064, 30.878559, 29.736151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301048, 31.349236, 29.691648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.978674, 31.577162, 29.755871>,  <27.785250, 31.713917, 29.794405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.978674, 31.577162, 29.755871>,  <28.301048, 31.349236, 29.691648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978674, 31.577162, 29.755871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423858, -0.366062, -0.828458,
		-0.413299, -0.735734, 0.536544,
		-0.805933, 0.569819, 0.160554,
		27.736893, 31.748106, 29.804037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644974, 30.862270, 29.830782>,  <28.301048, 31.349236, 29.691648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644974, 30.862270, 29.830782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.633635, 31.221233, 29.654665>,  <27.626831, 31.436611, 29.548996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.633635, 31.221233, 29.654665>,  <27.644974, 30.862270, 29.830782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633635, 31.221233, 29.654665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436307, -0.407403, -0.802284,
		-0.899352, 0.169358, 0.403094,
		-0.028349, 0.897408, -0.440290,
		27.625130, 31.490456, 29.522577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034050, 30.920666, 29.643005>,  <27.644974, 30.862270, 29.830782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034050, 30.920666, 29.643005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.244921, 31.163475, 29.405146>,  <27.371443, 31.309160, 29.262430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.244921, 31.163475, 29.405146>,  <27.034050, 30.920666, 29.643005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244921, 31.163475, 29.405146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352196, -0.480767, -0.803007,
		-0.773331, 0.632761, -0.039659,
		0.527179, 0.607023, -0.594648,
		27.403074, 31.345581, 29.226751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526115, 31.060686, 29.051714>,  <27.034050, 30.920666, 29.643005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526115, 31.060686, 29.051714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.876215, 31.193436, 28.910975>,  <27.086275, 31.273087, 28.826530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.876215, 31.193436, 28.910975>,  <26.526115, 31.060686, 29.051714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876215, 31.193436, 28.910975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327513, -0.128632, -0.936050,
		-0.355910, 0.934512, -0.003892,
		0.875250, 0.331875, -0.351846,
		27.138790, 31.292997, 28.805420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319212, 31.519814, 28.599339>,  <26.526115, 31.060686, 29.051714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319212, 31.519814, 28.599339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.687313, 31.392960, 28.507633>,  <26.908175, 31.316847, 28.452610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.687313, 31.392960, 28.507633>,  <26.319212, 31.519814, 28.599339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687313, 31.392960, 28.507633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292559, -0.168463, -0.941291,
		0.259894, 0.933298, -0.247809,
		0.920252, -0.317135, -0.229262,
		26.963388, 31.297819, 28.438854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434170, 31.934160, 28.031900>,  <26.319212, 31.519814, 28.599339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434170, 31.934160, 28.031900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.682882, 31.620888, 28.033075>,  <26.832109, 31.432924, 28.033781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.682882, 31.620888, 28.033075>,  <26.434170, 31.934160, 28.031900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682882, 31.620888, 28.033075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325648, -0.261948, -0.908480,
		0.712277, 0.563921, -0.417917,
		0.621784, -0.783183, 0.002940,
		26.869417, 31.385933, 28.033957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683624, 31.947264, 27.437569>,  <26.434170, 31.934160, 28.031900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683624, 31.947264, 27.437569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.767513, 31.575981, 27.560499>,  <26.817846, 31.353212, 27.634258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.767513, 31.575981, 27.560499>,  <26.683624, 31.947264, 27.437569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767513, 31.575981, 27.560499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203380, -0.348856, -0.914842,
		0.956375, 0.129360, -0.261942,
		0.209724, -0.928205, 0.307328,
		26.830431, 31.297520, 27.652699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263075, 31.686844, 26.979904>,  <26.683624, 31.947264, 27.437569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263075, 31.686844, 26.979904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.041502, 31.383989, 27.118414>,  <26.908558, 31.202276, 27.201519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.041502, 31.383989, 27.118414>,  <27.263075, 31.686844, 26.979904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041502, 31.383989, 27.118414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086527, -0.361306, -0.928424,
		0.828052, -0.544247, 0.134627,
		-0.553933, -0.757135, 0.346272,
		26.875322, 31.156849, 27.222296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496269, 31.162363, 26.520742>,  <27.263075, 31.686844, 26.979904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496269, 31.162363, 26.520742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.175728, 31.010593, 26.705729>,  <26.983404, 30.919531, 26.816721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.175728, 31.010593, 26.705729>,  <27.496269, 31.162363, 26.520742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175728, 31.010593, 26.705729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296225, -0.419954, -0.857840,
		0.519700, -0.824424, 0.224136,
		-0.801351, -0.379425, 0.462465,
		26.935322, 30.896767, 26.844467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546259, 30.462404, 26.603424>,  <27.496269, 31.162363, 26.520742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546259, 30.462404, 26.603424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.158909, 30.560637, 26.585796>,  <26.926498, 30.619576, 26.575220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.158909, 30.560637, 26.585796>,  <27.546259, 30.462404, 26.603424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158909, 30.560637, 26.585796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105241, -0.562189, -0.820285,
		-0.226219, -0.789705, 0.570255,
		-0.968374, 0.245579, -0.044068,
		26.868397, 30.634310, 26.572577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223900, 29.759085, 26.379057>,  <27.546259, 30.462404, 26.603424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223900, 29.759085, 26.379057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.938984, 30.035683, 26.330927>,  <26.768034, 30.201641, 26.302050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.938984, 30.035683, 26.330927>,  <27.223900, 29.759085, 26.379057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938984, 30.035683, 26.330927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104147, -0.273658, -0.956172,
		-0.694117, -0.668539, 0.266941,
		-0.712288, 0.691496, -0.120325,
		26.725298, 30.243132, 26.294830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686966, 29.331318, 26.195324>,  <27.223900, 29.759085, 26.379057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686966, 29.331318, 26.195324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.624479, 29.700602, 26.054880>,  <26.586987, 29.922173, 25.970613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.624479, 29.700602, 26.054880>,  <26.686966, 29.331318, 26.195324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624479, 29.700602, 26.054880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040709, -0.361191, -0.931603,
		-0.986883, -0.131240, 0.094008,
		-0.156218, 0.923210, -0.351110,
		26.577614, 29.977564, 25.949547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459232, 29.266222, 25.552881>,  <26.686966, 29.331318, 26.195324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459232, 29.266222, 25.552881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.521408, 29.658751, 25.507549>,  <26.558714, 29.894268, 25.480350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.521408, 29.658751, 25.507549>,  <26.459232, 29.266222, 25.552881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521408, 29.658751, 25.507549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043076, -0.107882, -0.993230,
		-0.986906, 0.159268, 0.025502,
		0.155439, 0.981323, -0.113330,
		26.568039, 29.953148, 25.473551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849394, 29.454023, 25.098898>,  <26.459232, 29.266222, 25.552881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849394, 29.454023, 25.098898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.149210, 29.718660, 25.090057>,  <26.329100, 29.877441, 25.084753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.149210, 29.718660, 25.090057>,  <25.849394, 29.454023, 25.098898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149210, 29.718660, 25.090057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024766, -0.061390, -0.997807,
		-0.661496, 0.747348, -0.062399,
		0.749540, 0.661590, -0.022101,
		26.374071, 29.917137, 25.083427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708473, 29.863705, 24.496841>,  <25.849394, 29.454023, 25.098898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708473, 29.863705, 24.496841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.090157, 29.948759, 24.581009>,  <26.319166, 29.999792, 24.631510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.090157, 29.948759, 24.581009>,  <25.708473, 29.863705, 24.496841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090157, 29.948759, 24.581009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177925, 0.162047, -0.970610,
		-0.240482, 0.963601, 0.116794,
		0.954207, 0.212634, 0.210418,
		26.376419, 30.012548, 24.644135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851263, 30.483952, 24.243675>,  <25.708473, 29.863705, 24.496841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851263, 30.483952, 24.243675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.208698, 30.304424, 24.240437>,  <26.423159, 30.196709, 24.238493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.208698, 30.304424, 24.240437>,  <25.851263, 30.483952, 24.243675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208698, 30.304424, 24.240437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096488, 0.209656, -0.973003,
		0.438397, 0.868682, 0.230651,
		0.893587, -0.448816, -0.008095,
		26.476774, 30.169779, 24.238008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312601, 30.957720, 23.789284>,  <25.851263, 30.483952, 24.243675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312601, 30.957720, 23.789284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.477257, 30.594370, 23.818693>,  <26.576050, 30.376360, 23.836340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.477257, 30.594370, 23.818693>,  <26.312601, 30.957720, 23.789284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477257, 30.594370, 23.818693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179124, 0.001540, -0.983825,
		0.893570, 0.418151, 0.163346,
		0.411639, -0.908376, 0.073525,
		26.600748, 30.321857, 23.840750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989510, 31.058914, 23.511314>,  <26.312601, 30.957720, 23.789284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989510, 31.058914, 23.511314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.914133, 30.667044, 23.483828>,  <26.868908, 30.431921, 23.467335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.914133, 30.667044, 23.483828>,  <26.989510, 31.058914, 23.511314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914133, 30.667044, 23.483828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318789, 0.005164, -0.947811,
		0.928905, -0.200512, 0.311338,
		-0.188440, -0.979678, -0.068718,
		26.857601, 30.373140, 23.463213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589102, 30.689829, 23.155121>,  <26.989510, 31.058914, 23.511314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589102, 30.689829, 23.155121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.283493, 30.437956, 23.098877>,  <27.100128, 30.286833, 23.065130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.283493, 30.437956, 23.098877>,  <27.589102, 30.689829, 23.155121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283493, 30.437956, 23.098877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213464, -0.041043, -0.976088,
		0.608855, -0.775767, 0.165772,
		-0.764021, -0.629683, -0.140609,
		27.054287, 30.249050, 23.056694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814100, 30.224855, 22.744034>,  <27.589102, 30.689829, 23.155121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814100, 30.224855, 22.744034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.423075, 30.164019, 22.685740>,  <27.188459, 30.127518, 22.650763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.423075, 30.164019, 22.685740>,  <27.814100, 30.224855, 22.744034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423075, 30.164019, 22.685740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151943, -0.029969, -0.987935,
		0.145890, -0.987912, 0.052406,
		-0.977563, -0.152092, -0.145734,
		27.129807, 30.118391, 22.642019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796339, 29.790302, 22.221649>,  <27.814100, 30.224855, 22.744034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796339, 29.790302, 22.221649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.428192, 29.946598, 22.215315>,  <27.207304, 30.040375, 22.211514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.428192, 29.946598, 22.215315>,  <27.796339, 29.790302, 22.221649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428192, 29.946598, 22.215315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014793, -0.005684, -0.999874,
		-0.390780, -0.920484, -0.000549,
		-0.920365, 0.390739, -0.015838,
		27.152082, 30.063820, 22.210564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468279, 29.431807, 21.702631>,  <27.796339, 29.790302, 22.221649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468279, 29.431807, 21.702631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.204390, 29.729740, 21.742615>,  <27.046057, 29.908501, 21.766605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.204390, 29.729740, 21.742615>,  <27.468279, 29.431807, 21.702631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204390, 29.729740, 21.742615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205556, -0.050910, -0.977320,
		-0.722851, -0.665306, 0.186691,
		-0.659722, 0.744833, 0.099957,
		27.006474, 29.953190, 21.772602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883133, 29.188524, 21.321690>,  <27.468279, 29.431807, 21.702631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883133, 29.188524, 21.321690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.869141, 29.588202, 21.329578>,  <26.860744, 29.828009, 21.334312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.869141, 29.588202, 21.329578>,  <26.883133, 29.188524, 21.321690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.869141, 29.588202, 21.329578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084527, 0.016707, -0.996281,
		-0.995807, -0.036520, 0.083874,
		-0.034983, 0.999193, 0.019724,
		26.858646, 29.887960, 21.335495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298275, 29.368549, 20.985163>,  <26.883133, 29.188524, 21.321690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298275, 29.368549, 20.985163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.524563, 29.697832, 20.966019>,  <26.660336, 29.895401, 20.954533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.524563, 29.697832, 20.966019>,  <26.298275, 29.368549, 20.985163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524563, 29.697832, 20.966019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173487, 0.062080, -0.982877,
		-0.806140, 0.564337, 0.177936,
		0.565721, 0.823207, -0.047860,
		26.694279, 29.944794, 20.951660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002914, 29.805492, 20.515285>,  <26.298275, 29.368549, 20.985163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002914, 29.805492, 20.515285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.373768, 29.951645, 20.548555>,  <26.596279, 30.039337, 20.568518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.373768, 29.951645, 20.548555>,  <26.002914, 29.805492, 20.515285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373768, 29.951645, 20.548555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000335, 0.221147, -0.975240,
		-0.374730, 0.904207, 0.204910,
		0.927134, 0.365383, 0.083173,
		26.651909, 30.061260, 20.573507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965996, 30.299097, 20.119833>,  <26.002914, 29.805492, 20.515285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965996, 30.299097, 20.119833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.362091, 30.246576, 20.138523>,  <26.599749, 30.215063, 20.149738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.362091, 30.246576, 20.138523>,  <25.965996, 30.299097, 20.119833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362091, 30.246576, 20.138523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042955, -0.031406, -0.998583,
		0.132584, 0.990845, -0.025459,
		0.990241, -0.131302, 0.046726,
		26.659163, 30.207186, 20.152540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244934, 30.898397, 19.771591>,  <25.965996, 30.299097, 20.119833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244934, 30.898397, 19.771591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.509399, 30.598619, 19.785423>,  <26.668079, 30.418753, 19.793722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.509399, 30.598619, 19.785423>,  <26.244934, 30.898397, 19.771591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509399, 30.598619, 19.785423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046375, -0.005181, -0.998911,
		0.748806, 0.662048, 0.031330,
		0.661164, -0.749444, 0.034582,
		26.707748, 30.373787, 19.795797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596529, 31.023920, 19.171894>,  <26.244934, 30.898397, 19.771591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596529, 31.023920, 19.171894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.712250, 30.650717, 19.257500>,  <26.781681, 30.426794, 19.308863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.712250, 30.650717, 19.257500>,  <26.596529, 31.023920, 19.171894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712250, 30.650717, 19.257500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043809, -0.236246, -0.970705,
		0.956235, 0.271450, -0.109220,
		0.289300, -0.933008, 0.214015,
		26.799040, 30.370815, 19.321705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983027, 31.657358, 18.938044>,  <26.596529, 31.023920, 19.171894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983027, 31.657358, 18.938044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.761730, 31.970976, 18.825478>,  <26.628952, 32.159145, 18.757938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.761730, 31.970976, 18.825478>,  <26.983027, 31.657358, 18.938044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761730, 31.970976, 18.825478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076249, 0.288746, 0.954365,
		0.829523, 0.549453, -0.099964,
		-0.553243, 0.784045, -0.281416,
		26.595757, 32.206188, 18.741053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297480, 32.192238, 19.326700>,  <26.983027, 31.657358, 18.938044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297480, 32.192238, 19.326700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.935244, 32.312157, 19.206680>,  <26.717903, 32.384109, 19.134668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.935244, 32.312157, 19.206680>,  <27.297480, 32.192238, 19.326700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935244, 32.312157, 19.206680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219027, 0.275259, 0.936087,
		0.363229, 0.913429, -0.183607,
		-0.905589, 0.299799, -0.300048,
		26.663567, 32.402096, 19.116667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309891, 32.913059, 19.487764>,  <27.297480, 32.192238, 19.326700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309891, 32.913059, 19.487764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.929152, 32.791164, 19.474388>,  <26.700708, 32.718025, 19.466362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.929152, 32.791164, 19.474388>,  <27.309891, 32.913059, 19.487764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929152, 32.791164, 19.474388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122401, 0.277755, 0.952822,
		-0.281074, 0.911036, -0.301681,
		-0.951848, -0.304740, -0.033442,
		26.643597, 32.699741, 19.464355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958275, 33.283298, 19.919044>,  <27.309891, 32.913059, 19.487764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958275, 33.283298, 19.919044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.688591, 32.990288, 19.881411>,  <26.526781, 32.814484, 19.858829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.688591, 32.990288, 19.881411>,  <26.958275, 33.283298, 19.919044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688591, 32.990288, 19.881411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178793, 0.038285, 0.983142,
		-0.716572, 0.679664, -0.156782,
		-0.674209, -0.732524, -0.094085,
		26.486328, 32.770531, 19.853186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253178, 33.583313, 20.137011>,  <26.958275, 33.283298, 19.919044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253178, 33.583313, 20.137011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.269873, 33.186501, 20.184568>,  <26.279890, 32.948414, 20.213104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.269873, 33.186501, 20.184568>,  <26.253178, 33.583313, 20.137011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269873, 33.186501, 20.184568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074526, 0.115577, 0.990499,
		-0.996345, -0.050203, -0.069108,
		0.041739, -0.992029, 0.118896,
		26.282394, 32.888893, 20.220238>
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
